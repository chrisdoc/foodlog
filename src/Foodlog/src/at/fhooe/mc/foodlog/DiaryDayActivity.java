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

public class DiaryDayActivity extends FragmentActivity {
    DiaryGroup diaryGroup;
    private SimpleDateFormat dateFormat = new SimpleDateFormat(
            "dd.MM.yyyy", Locale.getDefault());
    private SimpleDateFormat timeFormat = new SimpleDateFormat(
            "HH:mm", Locale.getDefault());
    int kcal = 0;
    int kcal_breakfast = 0;
    int kcal_lunch = 0;
    int kcal_diner = 0;
    ListView itemListView;
    InformationAdapter informationAdapter;
    DiaryItemAdapter diaryItemAdapter;
    String colors[] = new String[]{"#7EA629", "#D93030", "#54BF83", "#1763A6", "#74002B", "#419CA6", "#F29A2E", "#04BFAD", "#FF3D7F", "#DAD8A7", "#FF9E9D"};


    @Override
    protected void onCreate(Bundle savedInstance) {
        // TODO Auto-generated method stub
        super.onCreate(savedInstance);
        setContentView(R.layout.diary_day_activity);
        diaryGroup = (DiaryGroup) getIntent().getSerializableExtra("diarygroup");


        if (diaryGroup != null) {
            TextView dateView = (TextView) findViewById(R.id.diary_day_date);
            dateView.setText(dateFormat.format(diaryGroup.getDate()));
            TextView kcalView = (TextView) findViewById(R.id.diary_day_kcal);
            TextView consumedView = (TextView) findViewById(R.id.diary_day_percent);
            int temp_kcal = 0;
            for (Diary d : diaryGroup.getDiaries()) {
                temp_kcal = d.getItem().getData().getKcal()
                        * d.getAmount()
                        / d.getItem().getData().getAmount();
                kcal += temp_kcal;
                switch (d.getMealtime()) {
                    case 0:
                        kcal_breakfast += temp_kcal;
                        break;
                    case 1:
                        kcal_lunch += temp_kcal;
                        break;
                    case 2:
                        kcal_diner += temp_kcal;
                        break;
                }

            }
            SharedPreferences pref = getSharedPreferences(getString(R.string.shared_pref), MODE_PRIVATE);
            int kcal_all = pref.getInt(getString(R.string.daily_kcal_pref_key), 2000);
            int consumed = (int) (kcal * 100.0 / kcal_all);
            consumedView.setText(consumed + getString(R.string.consumed_string));
            if (consumed >= 100) {
                consumedView.setTextColor(Color.RED);
            }

            kcalView.setText(kcal + " kcal");
        }

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

        ArrayList<Information> information = new ArrayList<Information>();
        Information info = new Information();
        info.setTilte(getString(R.string.breakfast));
        info.setSubtitle(String.format("%d kcal", kcal_breakfast));
        info.setColor(Color.parseColor(getString(R.color.color_breakfast)));
        information.add(info);
        info = new Information();
        info.setTilte(getString(R.string.lunch));
        info.setSubtitle(String.format("%d kcal", kcal_lunch));
        info.setColor(Color.parseColor(getString(R.color.color_lunch)));
        information.add(info);
        info = new Information();
        info.setTilte(getString(R.string.diner));
        info.setSubtitle(String.format("%d kcal", kcal_diner));
        info.setColor(Color.parseColor(getString(R.color.color_diner)));
        information.add(info);
        //informationAdapter = new InformationAdapter(this, R.layout.information_row, information);
        //ListView informationView = (ListView) findViewById(R.id.diary_dayList);
        //informationView.setAdapter(informationAdapter);

        diaryItemAdapter = new DiaryItemAdapter(this, R.layout.diary_item_row, diaryGroup.getDiaries());
        itemListView = (ListView) findViewById(R.id.diary_item_list);
        itemListView.setAdapter(diaryItemAdapter);
    }

    public String getJSON() {
        JSONArray array = new JSONArray();
        // fat

        JSONObject breakfast = new JSONObject();

        try {
            breakfast.put("value", kcal_breakfast);
            breakfast.put("color", "#D45354");
            breakfast.put("label", getString(R.string.breakfast));
            breakfast.put("labelColor", "#444");
            breakfast.put("labelFontSize", "1.2em");

        } catch (JSONException e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();
        }

        JSONObject lunch = new JSONObject();
        try {
            lunch.put("value", kcal_lunch);
            lunch.put("color", "#A9DC3A");
            lunch.put("label", getString(R.string.lunch));
            lunch.put("labelColor", "#444");
            lunch.put("labelFontSize", "1.2em");

        } catch (JSONException e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();
        }

        JSONObject diner = new JSONObject();
        try {
            diner.put("value", kcal_diner);
            diner.put("color", "#2FCAD8");
            diner.put("label", getString(R.string.diner));
            diner.put("labelColor", "#444");
            diner.put("labelFontSize", "1.2em");

        } catch (JSONException e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();
        }
        // array.put(breakfast);
        //array.put(lunch);
        //array.put(diner);
        JSONObject obj = null;
        int temp_kcal = 0;

        // String colors[]=new String[]{"#7EA629","#D93030","#54BF83","#1763A6","#74002B","#419CA6","#F29A2E","#04BFAD","#FF3D7F","#DAD8A7","#FF9E9D"};
        int i = 0;
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


    public class Information {
        String tilte;
        String subtitle;
        int color;

        public String getTilte() {
            return tilte;
        }

        public void setTilte(String tilte) {
            this.tilte = tilte;
        }

        public String getSubtitle() {
            return subtitle;
        }

        public void setSubtitle(String subtitle) {
            this.subtitle = subtitle;
        }

        public int getColor() {
            return color;
        }

        public void setColor(int color) {
            this.color = color;
        }
    }

    public class DiaryItemAdapter extends ArrayAdapter<Diary> {
        private Context context;
        private int layoutResourceId;
        private ArrayList<Diary> diary;
        private LayoutInflater inflater;

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

            // LayoutInflater inflater = ((Activity)
            // context).getLayoutInflater();
            if (convertView == null)
                vi = inflater.inflate(layoutResourceId, null);

            TextView name = (TextView) vi.findViewById(R.id.diary_item_name);
            TextView kcal = (TextView) vi.findViewById(R.id.diary_item_kcal);
            TextView date = (TextView) vi.findViewById(R.id.diary_item_date);
            ImageView img = (ImageView) vi.findViewById(R.id.diary_item_image);
            View color = (View) vi.findViewById(R.id.diary_row_color);
            color.setBackgroundColor(Color.parseColor(colors[position % colors.length]));
            ImageLoader imageLoader = new ImageLoader(context);


            Diary item = diary.get(position);

            imageLoader.DisplayImage(item.getItem().getThumbsrc(), img);

            int temp_kcal = item.getItem().getData().getKcal()
                    * item.getAmount()
                    / item.getItem().getData().getAmount();

            name.setText(item.getItem().getDescription().getName());
            date.setText(timeFormat.format(item.getDate()));


            if (position % 2 == 0) {
                vi.setBackgroundColor(context.getResources().getColor(R.color.color_bg));
            } else {
                vi.setBackgroundColor(Color.WHITE);
            }

            kcal.setText(temp_kcal + " kCal");

            return vi;
        }
    }

    public class InformationAdapter extends ArrayAdapter<Information> {

        private Context context;
        private int layoutResourceId;
        private ArrayList<Information> data;
        private LayoutInflater inflater = null;

        public InformationAdapter(Context context, int layoutResourceId,
                                  ArrayList<Information> nutritions) {
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

            // LayoutInflater inflater = ((Activity)
            // context).getLayoutInflater();
            if (convertView == null)
                vi = inflater.inflate(layoutResourceId, null);

            TextView name = (TextView) vi.findViewById(R.id.information_title); // title
            TextView value = (TextView) vi.findViewById(R.id.information_subtitle); // artist
            // name
            View view = (View) vi.findViewById(R.id.information_row_color); // thumb
            // image

            Information item = data.get(position);
            // Setting all values in listview
            name.setText(item.getTilte());
            value.setText(item.getSubtitle());

            if (position % 2 == 0) {
                vi.setBackgroundColor(context.getResources().getColor(R.color.color_bg));
            } else {
                vi.setBackgroundColor(Color.WHITE);
            }

            view.setBackgroundColor(item.getColor());
            return vi;

        }

    }
}
