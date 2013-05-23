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
import com.google.zxing.integration.android.IntentIntegrator;
import com.google.zxing.integration.android.IntentResult;
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
import java.util.Locale;

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

    }

    @Override
    protected void onDestroy() {
        // TODO Auto-generated method stub
        super.onDestroy();
        datasource.close();
        diarySource.close();
    }

    /**
     * Starts the Barcode Scanner App to Scan a Product
     */
    private void scanProduct() {
        //we used the scandit library previously
      //  startActivityForResult(new Intent(LookupActivity.this,
     //           ScanditSDKSampleBarcodeActivity.class), SCAN_REQUEST_CODE);
        //invoke the barcode scanner app to scan a barcode
        IntentIntegrator integrator = new IntentIntegrator(this);
        integrator.initiateScan();

    }

    @Override
    public Object onRetainCustomNonConfigurationInstance() {
        final ArrayList<Item> data = (ArrayList<Item>) searchResults.clone();
        return data;
    }

    /**
     * Search for an product by its name or a barcode number
     * @param text the product name or barcode
     */
    protected void search(CharSequence text) {
        //adds the searched name to the database for an autocompletion list
        datasource.createPreviouslySearched(text.toString());
        previouslySearched = new ArrayList<String>(
                datasource.getAllPreviouslySearched());
        previouslyAdapter.notifyDataSetChanged();
        //Executes a new backgroud worker
        new DownloadWebPageTask(this).execute(text.toString());
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent intent) {
        IntentResult scanResult = IntentIntegrator.parseActivityResult(requestCode, resultCode, intent);

        if (scanResult != null) {//intent result from the barcode scanner app
            // handle scan result
            search(scanResult.getContents());
        }
        else if (requestCode == SCAN_REQUEST_CODE) {//intent result from the scandit app
            if (resultCode == RESULT_OK) {
                String ean = intent.getStringExtra("EAN");
                search(ean);
                Log.d("kieslich", ean);
                // use 'myValue' return value here
            }
        }
    }

    /**
     * An AsyncTask to communicate with the FDDB Api
     */
    private class DownloadWebPageTask extends AsyncTask<String, Void, String> {
        /**
         * Context of the invoked Activity
         */
        private Context context;
        /**
         * Dialog which indicates an ongoing progress
         */
        private ProgressDialog dialog;

        /**
         * Instantiate a new DownloadWebPageTaskt
         * @param _context the context of the Activity
         */
        public DownloadWebPageTask(Context _context) {
            context = _context;
            dialog = new ProgressDialog(_context, ProgressDialog.STYLE_SPINNER);
        }

        @Override
        protected String doInBackground(String... searchs) {
            for (String search : searchs) {
                DefaultHttpClient client = new DefaultHttpClient();
                //receives the current language of the user
                String language=Locale.getDefault().getLanguage();
                String service="";
                if(language.equalsIgnoreCase("de")){
                    service = String
                            .format("http://fddb.info/api/v8/search/item.xml?apikey=%s&lang=de&q=%s",
                                    getString(R.string.api_key), search);
                }
                else{
                    service = String
                            .format("http://fddb.info/api/v8/search/item.xml?apikey=%s&lang=en&q=%s",
                                    getString(R.string.api_key), search);
                }

                Log.d("kieslich", service);

                URL url;
                try {
                    url = new URL(service);
                    //Opens a http connection to the fddb server
                    HttpURLConnection urlConnection = (HttpURLConnection) url
                            .openConnection();
                    urlConnection.setConnectTimeout(5000);
                    InputStream in = new BufferedInputStream(
                            urlConnection.getInputStream());
                    BufferedReader reader = new BufferedReader(
                            new InputStreamReader(in, "iso-8859-1"));
                    StringBuilder total = new StringBuilder();
                    String line;
                    //receive the respons
                    while ((line = reader.readLine()) != null) {
                        total.append(line);
                    }
                    urlConnection.disconnect();
                    return total.toString();
                } catch (MalformedURLException e1) {

                    e1.printStackTrace();
                } catch (IOException e) {

                    e.printStackTrace();
                }

            }
            //return an empty string if the request had an error
            return "";
        }

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            //Show a dialog which indicates the progress
            dialog.setTitle("Searching");
            dialog.setMessage("Searching food database");
            dialog.show();
        }

        @Override
        protected void onPostExecute(String result) {
            //invoke the handler to process the xml
            handleXMLModel(result);
            dialog.dismiss();
        }
    }

    /**
     *
     * @param xml
     */
    private void handleXMLModel(String xml) {
        //show an alert dialog if the response is empty
        if (xml.isEmpty()) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage(getString(R.string.no_product_found))
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
        /*Store the response as an textfile for debugging

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
        }*/

        //Deserialize the XML
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
        //Show the details view if only one product has been found
        if (result.getItems().size() == 1) {
            Item item = result.getItems().get(0);
            Intent intent = new Intent(getApplicationContext(),
                    SearchDetailActivity.class);
            intent.putExtra("item", item);
            startActivityForResult(intent, 0);
            return;
        }
        //Clear previously searched items
        if (result != null) {
            searchResults.clear();
            searchResults.addAll(result.getItems());
            adapter.notifyDataSetChanged();
        }

    }

}
