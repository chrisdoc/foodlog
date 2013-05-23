package at.fhooe.mc.foodlog;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.TimePickerDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.*;
import at.fhooe.mc.foodlog.model.Diary;
import at.fhooe.mc.foodlog.model.DiaryDataSource;
import at.fhooe.mc.foodlog.model.DiaryGroup;
import at.fhooe.mc.foodlog.model.Item;
import com.fedorvlasov.lazylist.ImageLoader;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

/**
 * This Activity is used to show details about a searched product
 */
public class SearchDetailActivity extends FragmentActivity {
    /**
     * ImageLoader to load images in the background
     */
    private ImageLoader imageLoader;
    /**
     * The searched item
     */
    private Item item;
    /**
     * An Adapter to display nutrition information
     */
    private NutritionAdapter adapter;
    /**
     * An ArrayList which holds nutrition information
     */
    private ArrayList<Nutrition> nutritions;
    /**
     * Is used to connect to the SQLite database
     */
    private DiaryDataSource diarySource;

    @SuppressLint("SetJavaScriptEnabled")
    @Override
    protected void onCreate(Bundle savedInstance) {
        super.onCreate(savedInstance);
        //opens a new database connection
        diarySource = new DiaryDataSource(this);
        diarySource.open();
        //sets the layout of the Activity
        setContentView(R.layout.search_details_view);
        //receives the searched item from the intent
        item = (Item) getIntent().getSerializableExtra("item");
        //gets all vies
        TextView title = (TextView) findViewById(R.id.search_detail_title);
        TextView subtitle = (TextView) findViewById(R.id.search_detail_subtitle);
        TextView calories = (TextView) findViewById(R.id.search_detail_calorie);
        ImageView image = (ImageView) findViewById(R.id.search_detail_image);
        imageLoader = new ImageLoader(getApplicationContext());

        //pie chart which is used to show nutrition information
        WebView pie = (WebView) findViewById(R.id.pieWebView);
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
        //url of the piechart html file
        pie.loadUrl("file:///android_asset/pie.html");
        //logging
        pie.setWebChromeClient(new WebChromeClient() {
            public void onConsoleMessage(String message, int lineNumber,
                                         String sourceID) {
                Log.d("MyApplication", message + " -- From line " + lineNumber
                        + " of " + sourceID);
            }
        });
        //instantiate the nutrition adapter
        nutritions = new ArrayList<Nutrition>();
        adapter = new NutritionAdapter(this, R.layout.nutrition_row, nutritions);
        //instantiate the nutrition listview
        ListView nutritionView = (ListView) findViewById(R.id.nutrutionList);
        nutritionView.setAdapter(adapter);

        if (item != null) {//checks if item is available
            //Sets the content of the views
            title.setText(item.getDescription().getName());
            subtitle.setText(item.getDescription().getGroup());

            calories.setText(String.format(getString(R.string.detial_has_kcal), item.getData()
                    .getAmount(), item.getUnit(), item.getData().getKcal()));
            imageLoader.DisplayImage(item.getThumbsrc(), image);
            Nutrition fat = new Nutrition("Fat", item.getData().getFat_gram(),
                    Color.parseColor(getString(R.color.color_fat)));
            Nutrition protein = new Nutrition("Protein", item.getData()
                    .getProtein_gram(),
                    Color.parseColor(getString(R.color.color_protein)));
            Nutrition sugar = new Nutrition("Sugar", item.getData()
                    .getSugar_gram(),
                    Color.parseColor(getString(R.color.color_sugar)));
            Nutrition df = new Nutrition("Dietary fiber", item.getData()
                    .getDf_gram(),
                    Color.parseColor(getString(R.color.color_df)));
            Nutrition carb = new Nutrition("Carbohydrates", item.getData()
                    .getKh_gram(),
                    Color.parseColor(getString(R.color.color_carb)));
            nutritions.add(fat);
            nutritions.add(protein);
            nutritions.add(sugar);
            nutritions.add(df);
            nutritions.add(carb);
            adapter.notifyDataSetChanged();

        }
        //adds a listener for the add button
        Button add_diary = (Button) findViewById(R.id.add_diary_button);
        add_diary.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                addToDiary();
            }
        });

        // Log.d("kieslich",getNutriveValue());
    }

    @Override
    protected void onDestroy() {
        // TODO Auto-generated method stub
        super.onDestroy();
        diarySource.close();
    }


    /**
     * Adds the item to the food diary
     */
    private void addToDiary() {


        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        // Get the layout inflater
        LayoutInflater inflater = getLayoutInflater();

        // Inflate and set the layout for the dialog
        // Pass null as the parent view because its going in the dialog layout
        View v = inflater.inflate(R.layout.add_diary_alert, null);
        //gets the views from the dialog
        final TextView unit = (TextView) v.findViewById(R.id.amount_unit);
        unit.setText(item.getUnit());
        final EditText amountView = (EditText) v
                .findViewById(R.id.amount_textfield);

        amountView.setText(String.valueOf(item.getData().getAmount()), TextView.BufferType.EDITABLE);
        //current data and time
        final Calendar dateAndTime = Calendar.getInstance();
        final EditText time = (EditText) v.findViewById(R.id.time_textfield);
        time.setText(dateAndTime.get(Calendar.HOUR_OF_DAY) + ":" + dateAndTime.get(Calendar.MINUTE), TextView.BufferType.EDITABLE);
        final Button time_change = (Button) v.findViewById(R.id.time_change_button);
        //adds a button listener to change the time
        time_change.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                //shows a TimePicker to set the time
                TimePickerDialog.OnTimeSetListener t = new TimePickerDialog.OnTimeSetListener() {
                    public void onTimeSet(TimePicker view, int hourOfDay,
                                          int minute) {
                        dateAndTime.set(Calendar.HOUR_OF_DAY, hourOfDay);
                        dateAndTime.set(Calendar.MINUTE, minute);
                        //format the time
                        String t = hourOfDay + ":" + (minute < 10 ? "0" : "") + minute;
                        time.setText(t, TextView.BufferType.EDITABLE);
                    }
                };
                new TimePickerDialog(SearchDetailActivity.this,
                        t,
                        dateAndTime.get(Calendar.HOUR_OF_DAY),
                        dateAndTime.get(Calendar.MINUTE),
                        true).show();
            }
        });

        //Builds the dialog actions
        builder.setView(v)
                .setPositiveButton("Add",
                        new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int id) {
                                //old code
                              /*  int amount = Integer.parseInt(amountView
                                        .getText().toString());


                                int radioID = 0;
                                diarySource.createDiaryEntry(item, radioID, amount);
                                diarySource.createDiaryEntry(item, dateAndTime, amount);
                                Log.d("kieslich", "amount " + amount + " id "
                                        + radioID);
                                        */
                            }
                        })
                .setNegativeButton("Cancel",
                        new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface dialog, int id) {

                            }
                        });
        //creates the dialog
        final AlertDialog d = builder.create();

        d.setOnShowListener(new DialogInterface.OnShowListener() {

            @Override
            public void onShow(DialogInterface dialog) {

                Button b = d.getButton(AlertDialog.BUTTON_POSITIVE);
                //changes the positive button handler
                b.setOnClickListener(new View.OnClickListener() {

                    @Override
                    public void onClick(View view) {
                        //check calories

                        final int amount = Integer.parseInt(amountView
                                .getText().toString());

                        int kCal = item.getData().getKcal()
                                * amount
                                / item.getData().getAmount();
                        //load the shared preferences from the user
                        SharedPreferences userDetails = getSharedPreferences(getString(R.string.shared_pref), MODE_PRIVATE);
                        //receive the limits
                        int maxMealKCal = userDetails.getInt(getString(R.string.meal_kcal_pref_key), 500);
                        int maxDailyKCal = userDetails.getInt(getString(R.string.daily_kcal_pref_key), 2500);
                        Date now = new Date();
                        SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMdd");
                        int kCalForToday = 0;
                        for (DiaryGroup d : diarySource.getDiaryGroup()) {

                            if (fmt.format(d.getDate()).equals(fmt.format(now))) {
                                for (Diary diary : d.getDiaries()) {
                                    kCalForToday += diary.getItem().getData().getKcal() * diary.getAmount() / diary.getItem().getData().getAmount();
                                }
                            }


                        }
                        String message = "";
                        //checks if the user will exceed his limits
                        if (kCal > maxMealKCal) {
                            //Exceed meal limit
                            message = getString(R.string.exceed_meal_limit);
                        } else if ((kCal + kCalForToday) > maxDailyKCal) {
                            //Exceed daily limit
                            message = getString(R.string.daily_meal_limit);

                        } else {
                            diarySource.createDiaryEntry(item, dateAndTime, amount);
                            d.dismiss();
                            return;

                        }
                        //Create a dialog which asks the user if he want to add the food when he exceeded his limits
                        DialogInterface.OnClickListener dialogClickListener = new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                switch (which) {
                                    case DialogInterface.BUTTON_POSITIVE:
                                        //adds the food to the diary
                                        diarySource.createDiaryEntry(item, dateAndTime, amount);
                                        Log.d("kieslich", "amount " + amount + " id "
                                                + 0);
                                        d.dismiss();
                                        break;

                                    case DialogInterface.BUTTON_NEGATIVE:
                                        d.dismiss();
                                        break;
                                }
                            }
                        };

                        AlertDialog.Builder b = new AlertDialog.Builder(SearchDetailActivity.this);
                        b.setMessage(message).setPositiveButton("Yes", dialogClickListener)
                                .setNegativeButton("No", dialogClickListener).show();

                    }
                });
            }
        });
        d.show();
    }

    /**
     * Returns a JSON String wiht nutrition information which is used by the pie chart
     *
     * @return a JSON String with nutrition information
     */
    public String getJSON() {
        JSONArray array = new JSONArray();

        // fat
        JSONObject fat = new JSONObject();
        try {
            fat.put("value", item.getData().getFat_gram());
            fat.put("color", "#D45354");
            fat.put("label", "fat");
            fat.put("labelColor", "#444");
            fat.put("labelFontSize", "1.2em");
            array.put(fat);
        } catch (JSONException e1) {
            e1.printStackTrace();
        }
        //protein
        JSONObject protein = new JSONObject();
        try {
            protein.put("value", item.getData().getProtein_gram());
            protein.put("color", "#A9DC3A");
            protein.put("label", "protein");
            protein.put("labelColor", "#444");
            protein.put("labelFontSize", "1.2em");
            array.put(protein);

        } catch (JSONException e1) {
            e1.printStackTrace();
        }

        JSONObject sugar = new JSONObject();
        try {
            sugar.put("value", item.getData().getSugar_gram());
            sugar.put("color", "#2FCAD8");
            sugar.put("label", "sugar");
            sugar.put("labelColor", "#444");
            sugar.put("labelFontSize", "1.2em");
            array.put(sugar);
        } catch (JSONException e1) {
            e1.printStackTrace();
        }
        // dietary fiber
        JSONObject df = new JSONObject();
        try {
            df.put("value", item.getData().getDf_gram());
            df.put("color", "#E80C7A");
            df.put("label", "df");
            df.put("labelColor", "#444");
            df.put("labelFontSize", "1.2em");
            array.put(df);

        } catch (JSONException e1) {
            e1.printStackTrace();
        }
        JSONObject carb = new JSONObject();
        try {
            carb.put("value", item.getData().getKh_gram());
            carb.put("color", "#3E454C");
            carb.put("label", "carb");
            carb.put("labelColor", "#444");
            carb.put("labelFontSize", "1.2em");
            array.put(carb);

        } catch (JSONException e1) {
            e1.printStackTrace();
        }
        /*
        array.put(fat);
        array.put(protein);
        array.put(sugar);
        array.put(df);
        array.put(carb);
        */
        Log.d("kieslich", array.toString());
        return array.toString();

    }

    /**
     * Container class for nutrition
     */
    public class Nutrition {
        /**
         * Name of the nutrition
         */
        String name;
        /**
         * Color code to be displayed
         */
        int color;
        /**
         * Value of the Nutrition in grams
         */
        double value;

        /**
         * Constructor to instantiate a new Nutrition object
         *
         * @param name  name of the nutrition
         * @param value value of the nutrition in grams
         * @param color color code of the displayed element
         */
        public Nutrition(String name, double value, int color) {
            super();
            this.name = name;
            this.color = color;
            this.value = value;
        }


        /**
         * gets the name
         *
         * @return name
         */
        public String getName() {
            return name;
        }

        /**
         * sets the name
         *
         * @param name the new name
         */
        public void setName(String name) {
            this.name = name;
        }

        /**
         * gets the color code
         *
         * @return the color code
         */
        public int getColor() {
            return color;
        }

        /**
         * sets the color code
         *
         * @param color the new color code
         */
        public void setColor(int color) {
            this.color = color;
        }

        /**
         * gets the nutrition value in grams
         *
         * @return the nutrition value in grams
         */
        public double getValue() {
            return value;
        }

        /**
         * sets the nutrition value
         *
         * @param value the new nutrition value
         */
        public void setValue(double value) {
            this.value = value;
        }

    }

    /**
     * A adapter which is responsible for nutritions
     */
    public class NutritionAdapter extends ArrayAdapter<Nutrition> {
        /**
         * The context of the invoked activity
         */
        private Context context;
        /**
         * the layout resource id of the used layout
         */
        private int layoutResourceId;
        /**
         * An ArrayList with nutritions, datastore
         */
        private ArrayList<Nutrition> data;
        /**
         * A layoutinflater to instantiate the layout
         */
        private LayoutInflater inflater = null;

        /**
         * Constructor to instantiate a new nutrition adapter
         *
         * @param context          the context of the invoked activity
         * @param layoutResourceId the resource id of the used id
         * @param nutritions       the nutritions which should be displayed
         */
        public NutritionAdapter(Context context, int layoutResourceId,
                                ArrayList<Nutrition> nutritions) {
            super(context, layoutResourceId, nutritions);
            this.layoutResourceId = layoutResourceId;
            this.context = context;
            this.data = nutritions;

            inflater = (LayoutInflater) context
                    .getSystemService(Context.LAYOUT_INFLATER_SERVICE);

        }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {

            View vi = convertView;
            //instantiate a new view if it hasn't been instantiated previously
            if (convertView == null)
                vi = inflater.inflate(R.layout.nutrition_row, null);

            //get views from the layout
            TextView name = (TextView) vi.findViewById(R.id.nutrition_name);
            TextView value = (TextView) vi.findViewById(R.id.nutrition_value);
            View view = (View) vi.findViewById(R.id.nutrition_row_color);


            Nutrition item = data.get(position);
            // Setting all values in listview
            name.setText(item.name);
            value.setText(String.format("%.2f gram", item.value));

            view.setBackgroundColor(item.color);
            return vi;

        }

    }
}
