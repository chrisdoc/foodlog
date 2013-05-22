package at.fhooe.mc.foodlog;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Environment;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.*;
import android.widget.TextView.OnEditorActionListener;
import at.fhooe.mc.foodlog.model.DiaryDataSource;
import at.fhooe.mc.foodlog.model.Item;
import at.fhooe.mc.foodlog.model.PreviouslySearchedDataSource;
import at.fhooe.mc.foodlog.model.SearchResult;
import com.mirasense.demos.ScanditSDKSampleBarcodeActivity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.simpleframework.xml.Serializer;
import org.simpleframework.xml.core.Persister;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

public class LookupActivity extends FragmentActivity {
    private static final int SCAN_REQUEST_CODE = 1337;
    ListView list;
    ResultAdapter adapter;
    ArrayList<Item> searchResults;
    List<String> previouslySearched;
    private PreviouslySearchedDataSource datasource;
    private DiaryDataSource diarySource;
    private ArrayAdapter<String> previouslyAdapter;

    @SuppressWarnings("unchecked")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_lookup);

        datasource = new PreviouslySearchedDataSource(this);
        datasource.open();
        diarySource = new DiaryDataSource(this);
        diarySource.open();
        // datasource.deleteAll();
        previouslySearched = new ArrayList<String>(
                datasource.getAllPreviouslySearched());
        previouslyAdapter = new ArrayAdapter<String>(this,
                android.R.layout.simple_dropdown_item_1line, previouslySearched);
        AutoCompleteTextView searchField = (AutoCompleteTextView) findViewById(R.id.searchField);

        searchField.setAdapter(previouslyAdapter);

        searchResults = new ArrayList<Item>();

        final ArrayList<Item> data = (ArrayList<Item>) getLastCustomNonConfigurationInstance();
        if (data != null) {
            searchResults = (ArrayList<Item>) data.clone();
        }

        searchField.setOnEditorActionListener(new OnEditorActionListener() {

            @Override
            public boolean onEditorAction(TextView v, int actionId,
                                          KeyEvent event) {
                // TODO Auto-generated method stub

                if (actionId == EditorInfo.IME_ACTION_SEARCH) {
                    InputMethodManager imm = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
                    imm.hideSoftInputFromWindow(v.getWindowToken(), 0);
                    search(v.getText());

                    return true;
                }
                return true;
            }
        });

        list = (ListView) findViewById(R.id.searchResults);
        // Getting adapter by passing xml data ArrayList
        adapter = new ResultAdapter(this, R.layout.result_row, searchResults);
        list.setAdapter(adapter);

        list.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view,
                                    int position, long id) {
                Item item = (Item) list.getItemAtPosition(position);
                Intent intent = new Intent(getApplicationContext(),
                        SearchDetailActivity.class);
                intent.putExtra("item", item);
                startActivityForResult(intent, 0);

            }
        });

        ImageButton scanButton = (ImageButton) findViewById(R.id.scanButton);
        scanButton.setOnClickListener(new OnClickListener() {

            @Override
            public void onClick(View v) {
                scanProduct();
            }
        });

        search("apfel");
    }

    @Override
    protected void onDestroy() {
        // TODO Auto-generated method stub
        super.onDestroy();
        datasource.close();
        diarySource.close();
    }

    private void scanProduct() {
        startActivityForResult(new Intent(LookupActivity.this,
                ScanditSDKSampleBarcodeActivity.class), SCAN_REQUEST_CODE);

    }

    @Override
    public Object onRetainCustomNonConfigurationInstance() {
        final ArrayList<Item> data = (ArrayList<Item>) searchResults.clone();
        return data;
    }

    protected void search(CharSequence text) {
        datasource.createPreviouslySearched(text.toString());
        previouslySearched = new ArrayList<String>(
                datasource.getAllPreviouslySearched());
        previouslyAdapter.notifyDataSetChanged();
        new DownloadWebPageTask(this).execute(text.toString());
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == SCAN_REQUEST_CODE) {
            if (resultCode == RESULT_OK) {
                String ean = data.getStringExtra("EAN");
                search(ean);
                Log.d("kieslich", ean);
                // use 'myValue' return value here
            }
        }
    }

    private class DownloadWebPageTask extends AsyncTask<String, Void, String> {
        private Context context;
        private ProgressDialog dialog;

        public DownloadWebPageTask(Context _context) {
            context = _context;
            dialog = new ProgressDialog(_context, ProgressDialog.STYLE_SPINNER);
        }

        @Override
        protected String doInBackground(String... searchs) {
            for (String search : searchs) {
                DefaultHttpClient client = new DefaultHttpClient();
                String service = String
                        .format("http://fddb.info/api/v8/search/item.xml?apikey=%s&lang=de&q=%s",
                                getString(R.string.api_key), search);
                // Log.d("kieslich", service);

                URL url;
                try {
                    url = new URL(service);
                    HttpURLConnection urlConnection = (HttpURLConnection) url
                            .openConnection();
                    urlConnection.setConnectTimeout(5000);
                    InputStream in = new BufferedInputStream(
                            urlConnection.getInputStream());
                    BufferedReader reader = new BufferedReader(
                            new InputStreamReader(in, "iso-8859-1"));
                    StringBuilder total = new StringBuilder();
                    String line;
                    while ((line = reader.readLine()) != null) {
                        total.append(line);
                    }
                    urlConnection.disconnect();
                    return total.toString();
                } catch (MalformedURLException e1) {
                    // TODO Auto-generated catch block
                    e1.printStackTrace();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }
            return "";
        }

        @Override
        protected void onPreExecute() {
            // TODO Auto-generated method stub
            super.onPreExecute();
            dialog.setTitle("Searching");
            dialog.setMessage("Searching food database");
            dialog.show();
        }

        @Override
        protected void onPostExecute(String result) {
            handleXMLModel(result);
            dialog.dismiss();
        }
    }

    private void handleXMLModel(String xml) {

        if (xml.isEmpty()) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage("Es wurde kein Produkt gefunden")
                    .setPositiveButton("OK",
                            new DialogInterface.OnClickListener() {
                                public void onClick(DialogInterface dialog,
                                                    int id) {
                                    // FIRE ZE MISSILES!
                                }
                            });
            builder.show();
            return;
        }

        String filename = "filename.txt";
        File file = new File(Environment.getExternalStorageDirectory(),
                filename);
        FileOutputStream fos;
        byte[] data = xml.getBytes();
        try {
            fos = new FileOutputStream(file);
            fos.write(data);
            fos.flush();
            fos.close();
        } catch (FileNotFoundException e) {
            // handle exception
        } catch (IOException e) {
            // handle exception
        }

        Serializer serializer = new Persister();

        SearchResult result = null;
        try {
            result = serializer.read(SearchResult.class, xml);
            // Log.d("kieslich", result.toString());
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            Log.e("kieslich", e.toString());
        }
        for (Item item : result.getItems()) {
            diarySource.createFoodEntry(item);
        }
        if (result.getItems().size() == 1) {
            Item item = result.getItems().get(0);
            Intent intent = new Intent(getApplicationContext(),
                    SearchDetailActivity.class);
            intent.putExtra("item", item);
            startActivityForResult(intent, 0);
            return;
        }
        if (result != null) {
            searchResults.clear();
            searchResults.addAll(result.getItems());
            adapter.notifyDataSetChanged();
        }

    }

}
