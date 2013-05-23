package at.fhooe.mc.foodlog;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.*;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.LinearLayout.LayoutParams;
import at.fhooe.mc.foodlog.model.Diary;
import at.fhooe.mc.foodlog.model.DiaryDataSource;
import at.fhooe.mc.foodlog.model.DiaryGroup;
import com.fedorvlasov.lazylist.ImageLoader;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;

/**
 * This Activity display the food diary, each day is one list item.
 * The user can click on one item and will receive further information.
 */
public class HistoryActivity extends FragmentActivity {
    /**
     * The DiaryDataSource is a wrapper to the SQLite database which stores all the information
     */
    private DiaryDataSource diarySource;
    /**
     * An adapter which is responsible for the listview
     */
    private DiaryGroupAdapter diaryGroupAdapter;
    /**
     * An ArrayList which hold all the food diary groups
     */
    private ArrayList<DiaryGroup> diaryGroups;

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        //sets the layout of the activity
        setContentView(R.layout.activity_history);
        //create a new DiaryDataSource for this Activity
        diarySource = new DiaryDataSource(this);
        diarySource.open();
        //loads the data from the database

        diaryGroups = diarySource.getDiaryGroup();

        diaryGroupAdapter = new DiaryGroupAdapter(this,
                R.layout.dairy_group_row, diaryGroups);
        ListView historyList = (ListView) findViewById(R.id.history_list);
        //sets the adapter of the listView
        historyList.setAdapter(diaryGroupAdapter);
        /**
         * OnClickListener which handles clicks on the listview
         * Opens the DiaryDayActivity for the specified day
         */
        historyList.setOnItemClickListener(new OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view,
                                    int position, long id) {
                if (parent.getAdapter().equals(diaryGroupAdapter)) {
                    DiaryGroup d = diaryGroupAdapter.getItem(position);
                    Intent intent = new Intent(getApplicationContext(),
                            DiaryDayActivity.class);
                    //pass the actual diarygroup to the new intent
                    intent.putExtra("diarygroup", d);
                    //start activity
                    startActivityForResult(intent, 0);

                }
            }
        });

    }

    @Override
    protected void onDestroy() {
        // TODO Auto-generated method stub
        super.onDestroy();
        diarySource.close();
    }

    public class DiaryGroupAdapter extends ArrayAdapter<DiaryGroup> {
        private Context context;
        private int layoutResourceId;
        private ArrayList<DiaryGroup> data;
        private LayoutInflater inflater = null;
        public ImageLoader imageLoader;
        private SimpleDateFormat dateFormat = new SimpleDateFormat(
                "dd.MM.yyyy", Locale.getDefault());

        public DiaryGroupAdapter(Context context, int layoutResourceId,
                                 ArrayList<DiaryGroup> diary) {
            super(context, layoutResourceId, diary);
            this.layoutResourceId = layoutResourceId;
            this.context = context;
            this.data = diary;

            inflater = (LayoutInflater) context
                    .getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            imageLoader = new ImageLoader(context.getApplicationContext());

        }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {

            View vi = convertView;
            // LayoutInflater inflater = ((Activity)
            // context).getLayoutInflater();
            if (convertView == null)
                vi = inflater.inflate(layoutResourceId, null);

            TextView dateView = (TextView) vi
                    .findViewById(R.id.diarygroup_date); // title
            TextView kcalView = (TextView) vi
                    .findViewById(R.id.diarygroup_kcal);

            TextView consumedView = (TextView) vi
                    .findViewById(R.id.diarygroup_consumed);

            DiaryGroup item = data.get(position);

            if (item != null) {
                int kcal = 0;
                int tempKcal = 0;
                for (Diary diary : item.getDiaries()) {
                    tempKcal = diary.getItem().getData().getKcal()
                            * diary.getAmount()
                            / diary.getItem().getData().getAmount();

                    kcal += tempKcal;

                }
                kcalView.setText(kcal + " kcal");
                dateView.setText(dateFormat.format(item.getDate()));

                SharedPreferences pref = getSharedPreferences(getString(R.string.shared_pref), MODE_PRIVATE);
                int kcal_all = pref.getInt(getString(R.string.daily_kcal_pref_key), 2000);
                int consumed = (int) (kcal * 100.0 / kcal_all);

                consumedView.setText(consumed + getString(R.string.consumed_string));
                if (consumed >= 100) {
                    consumedView.setTextColor(Color.RED);
                } else {
                    consumedView.setTextColor(Color.BLACK);
                }


            }
            //alternating background color
            if (position % 2 == 0) {
                vi.setBackgroundColor(context.getResources().getColor(R.color.color_bg));
            } else {
                vi.setBackgroundColor(Color.WHITE);
            }
            return vi;

        }

    }

}
