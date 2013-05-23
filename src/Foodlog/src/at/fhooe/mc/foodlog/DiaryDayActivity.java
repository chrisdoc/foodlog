package at.fhooe.mc.foodlog;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.*;
import android.widget.LinearLayout.LayoutParams;
import at.fhooe.mc.foodlog.model.Diary;
import at.fhooe.mc.foodlog.model.DiaryGroup;
import com.fedorvlasov.lazylist.ImageLoader;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;

/**
 * This Activity is used to display information for one day in the dairy. The user can see how many calories he spent on which meal. This information is additionally visualized in a PIE chart
 */
public class DiaryDayActivity extends FragmentActivity {
    /**
     * the DiaryGroup for this Day, holds all the meals for one day
     */
    private DiaryGroup diaryGroup;
    /**
     * A dateformatter to covert a Date into the following representation dd.MM.yyyy, 12.06.2013
     */
    private SimpleDateFormat dateFormat = new SimpleDateFormat(
            "dd.MM.yyyy", Locale.getDefault());
    /**
     * A dateformatter to covert a Date into the following representation HH:mm, 23:59
     */
    private SimpleDateFormat timeFormat = new SimpleDateFormat(
            "HH:mm", Locale.getDefault());
    /**
     * used to count all the calories for one day
     */
    private int kcal = 0;
    /**
     * A ListView witch is used to display all the meal for one day
     */
    private ListView itemListView;
    /**
     * An Adapter for the itemListView, manages the items of the itemListView
     */
    private DiaryItemAdapter diaryItemAdapter;
    /**
     * An array with colors for the pie chart
     */
    private String colors[] = new String[]{"#7EA629", "#D93030", "#54BF83", "#1763A6", "#74002B", "#419CA6", "#F29A2E", "#04BFAD", "#FF3D7F", "#DAD8A7", "#FF9E9D"};


    @Override
    protected void onCreate(Bundle savedInstance) {
        // TODO Auto-generated method stub
        super.onCreate(savedInstance);
        //sets the layout
        setContentView(R.layout.diary_day_activity);
        //load the diarygroup from the intent
        diaryGroup = (DiaryGroup) getIntent().getSerializableExtra("diarygroup");

        //checks if diarygroup is valid
        if (diaryGroup != null) {
            //loads the views from the layout
            TextView dateView = (TextView) findViewById(R.id.diary_day_date);
            dateView.setText(dateFormat.format(diaryGroup.getDate()));
            TextView kcalView = (TextView) findViewById(R.id.diary_day_kcal);
            TextView consumedView = (TextView) findViewById(R.id.diary_day_percent);
            int temp_kcal = 0;
            //calculates the overall calories of all meals
            for (Diary d : diaryGroup.getDiaries()) {
                temp_kcal = d.getItem().getData().getKcal()
                        * d.getAmount()
                        / d.getItem().getData().getAmount();
                kcal += temp_kcal;


            }
            //gets the user daily meal limit
            SharedPreferences pref = getSharedPreferences(getString(R.string.shared_pref), MODE_PRIVATE);
            int kcal_all = pref.getInt(getString(R.string.daily_kcal_pref_key), 2000);
            //calculates how many calories the user has consumed
            int consumed = (int) (kcal * 100.0 / kcal_all);
            consumedView.setText(consumed + getString(R.string.consumed_string));
            if (consumed >= 100) {
                consumedView.setTextColor(Color.RED);
            }

            kcalView.setText(kcal + " kcal");
        }

        //creates a pie chart which displays all the meals
        WebView pie = (WebView) findViewById(R.id.diary_day_pie);
        pie.setBackgroundColor(0x00000000);
        pie.getSettings().setUseWideViewPort(false);
        pie.setScrollBarStyle(WebView.SCROLLBARS_OUTSIDE_OVERLAY);
        pie.setVerticalScrollBarEnabled(false);
        pie.setHorizontalScrollBarEnabled(false);
        pie.setScrollbarFadingEnabled(true);

        pie.addJavascriptInterface(this, "dataloader");
        pie.setOnTouchListener(new View.OnTouchListener() {

            public boolean onTouch(View v, MotionEvent event) {
                return (event.getAction() == MotionEvent.ACTION_MOVE);
            }
        });
        pie.getSettings().setJavaScriptEnabled(true);

        pie.loadUrl("file:///android_asset/pie.html");

        pie.setWebChromeClient(new WebChromeClient() {
            public void onConsoleMessage(String message, int lineNumber,
                                         String sourceID) {
                Log.d("MyApplication", message + " -- From line " + lineNumber
                        + " of " + sourceID);
            }
        });
        SharedPreferences pref = PreferenceManager.getDefaultSharedPreferences(this);
        int kcal_all = pref.getInt(getString(R.string.kcal_pref_key), 2000);
        float consumed = (float) kcal / kcal_all;
        View calories_consumed = findViewById(R.id.calories_consumed);
        //tv.setLayoutParams(new TableLayout.LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT, 1f));
        LayoutParams param = new LinearLayout.LayoutParams(
                0,
                40, consumed);
        calories_consumed.setLayoutParams(param);
        View calories_left = findViewById(R.id.calories_left);
        param = new LinearLayout.LayoutParams(
                0,
                40, 1 - consumed);
        calories_left.setLayoutParams(param);


        //creates the diaryItemAdapter, sets the layout of the listView and the listView items
        diaryItemAdapter = new DiaryItemAdapter(this, R.layout.diary_item_row, diaryGroup.getDiaries());
        itemListView = (ListView) findViewById(R.id.diary_item_list);
        //sets the adapter for the listview
        itemListView.setAdapter(diaryItemAdapter);
    }

    /**
     * Generates a JSON String which is used by the Webview to display the pie chart
     *
     * @return a JSON String with all the meal information
     */
    public String getJSON() {
        JSONArray array = new JSONArray();
        JSONObject obj = null;
        int temp_kcal = 0;

        int i = 0;
        //builds the JSON Array
        for (Diary d : diaryGroup.getDiaries()) {
            obj = new JSONObject();
            temp_kcal = d.getItem().getData().getKcal()
                    * d.getAmount()
                    / d.getItem().getData().getAmount();
            try {
                if (i >= colors.length) {
                    i = 0;
                }
                obj.put("value", temp_kcal);
                obj.put("color", colors[i]);
                obj.put("label", d.getItem().getDescription().getName());
                obj.put("labelColor", "#444");
                obj.put("labelFontSize", "1.2em");
                i++;
                array.put(obj);
            } catch (JSONException e1) {
                // TODO Auto-generated catch block
                e1.printStackTrace();
            }
        }
        Log.d("kieslich", array.toString());
        return array.toString();
    }

    /**
     * An adapter for the ListView which handles the ListView items and sets its appearance
     */
    public class DiaryItemAdapter extends ArrayAdapter<Diary> {
        /**
         * the context of the activity
         */
        private Context context;
        /**
         * the resourcedid of the layout which is used
         */
        private int layoutResourceId;
        /**
         * An ArrayList with all the diary items
         */
        private ArrayList<Diary> diary;
        /**
         * a LayoutInflater which is used to instantiate the Layout
         */
        private LayoutInflater inflater;

        /**
         * Constructor to instantiate a new DiaryItemAdapter
         *
         * @param context          the context of the Actiivty
         * @param layoutResourceId the id of the used Layout
         * @param diary            An ArrayList with diary items
         */
        public DiaryItemAdapter(Context context, int layoutResourceId, ArrayList<Diary> diary) {
            super(context, layoutResourceId, diary);
            this.context = context;
            this.layoutResourceId = layoutResourceId;
            this.diary = diary;
            inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            View vi = convertView;

            //loads the view if it is not already set
            if (convertView == null)
                vi = inflater.inflate(layoutResourceId, null);
            //gets the Views from the Layout
            TextView name = (TextView) vi.findViewById(R.id.diary_item_name);
            TextView kcal = (TextView) vi.findViewById(R.id.diary_item_kcal);
            TextView date = (TextView) vi.findViewById(R.id.diary_item_date);
            ImageView img = (ImageView) vi.findViewById(R.id.diary_item_image);
            View color = (View) vi.findViewById(R.id.diary_row_color);
            color.setBackgroundColor(Color.parseColor(colors[position % colors.length]));
            ImageLoader imageLoader = new ImageLoader(context);


            Diary item = diary.get(position);

            imageLoader.DisplayImage(item.getItem().getThumbsrc(), img);
            //calculates the calories for one meal
            int temp_kcal = item.getItem().getData().getKcal()
                    * item.getAmount()
                    / item.getItem().getData().getAmount();

            //sets the text of the items
            name.setText(item.getItem().getDescription().getName());
            date.setText(timeFormat.format(item.getDate()));

            //alternating background color
            if (position % 2 == 0) {
                vi.setBackgroundColor(context.getResources().getColor(R.color.color_bg));
            } else {
                vi.setBackgroundColor(Color.WHITE);
            }

            kcal.setText(item.getAmount()+" "+item.getItem().getUnit()+", "+temp_kcal + " kCal");

            return vi;
        }
    }

}

