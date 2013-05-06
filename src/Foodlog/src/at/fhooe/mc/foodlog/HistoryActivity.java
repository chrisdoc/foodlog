package at.fhooe.mc.foodlog;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TableRow;
import android.widget.TextView;
import at.fhooe.mc.foodlog.model.Diary;
import at.fhooe.mc.foodlog.model.DiaryDataSource;
import at.fhooe.mc.foodlog.model.DiaryGroup;

import com.fedorvlasov.lazylist.ImageLoader;

public class HistoryActivity extends FragmentActivity {
	private ArrayList<Diary> history;
	private DiaryDataSource diarySource;
	private HistoryAdapter adapter;
	private DiaryGroupAdapter diaryGroupAdapter;
	private ArrayList<DiaryGroup> diaryGroups;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub

		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_history);
		diarySource = new DiaryDataSource(this);
		diarySource.open();
		history = diarySource.getHistory();
		diaryGroups = diarySource.getDiaryGroup();
		adapter = new HistoryAdapter(this, R.layout.diary_row, history);
		diaryGroupAdapter = new DiaryGroupAdapter(this,
				R.layout.dairy_group_row, diaryGroups);
		ListView historyList = (ListView) findViewById(R.id.history_list);
		historyList.setAdapter(diaryGroupAdapter);
		historyList.setOnItemClickListener(new OnItemClickListener() {
			@Override
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				if (parent.getAdapter().equals(diaryGroupAdapter)) {
					DiaryGroup d = diaryGroupAdapter.getItem(position);
					Intent intent = new Intent(getApplicationContext(),
							DiaryDayActivity.class);

					intent.putExtra("diarygroup", d);
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
				"EEE dd.MM.yyyy", Locale.getDefault());

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
					.findViewById(R.id.diarygroup_kcal); // artist
															// name
			
			
			View breakfastView= vi.findViewById(R.id.diarygroup_view_breakfast);
			View lunchView= vi.findViewById(R.id.diarygroup_view_lunch);
			View dinerView= vi.findViewById(R.id.diarygroup_view_diner);

			DiaryGroup item = data.get(position);
			int kcalBreakfast = 0;
			int kcalLunch = 0;
			int kcalDiner = 0;
			if (item != null) {
				int kcal = 0;
				int tempKcal = 0;
				for (Diary diary : item.getDiaries()) {
					tempKcal = diary.getItem().getData().getKcal()
							* diary.getAmount()
							/ diary.getItem().getData().getAmount();
					switch (diary.getMealtime()) {
					case 0:
						kcalBreakfast += tempKcal;
						break;
					case 1:
						kcalLunch += tempKcal;
						break;
					case 2:
						kcalDiner += tempKcal;
						break;
					}

					kcal += tempKcal;

				}
				kcalView.setText(kcal + " kcal");
				dateView.setText(dateFormat.format(item.getDate()));
				
				LayoutParams params = new TableRow.LayoutParams(0, 40, (float)(kcalBreakfast)/(float)(kcal));
				breakfastView.setLayoutParams(params);
				
				params = new TableRow.LayoutParams(0,40, (float)(kcalLunch)/(float)(kcal));
				lunchView.setLayoutParams(params);
				
				params = new TableRow.LayoutParams(0, 40, (float)(kcalDiner)/(float)(kcal));
				dinerView.setLayoutParams(params);
				
			}
			return vi;

		}

	}

	public class HistoryAdapter extends ArrayAdapter<Diary> {

		private Context context;
		private int layoutResourceId;
		private ArrayList<Diary> data;
		private LayoutInflater inflater = null;
		public ImageLoader imageLoader;

		public HistoryAdapter(Context context, int layoutResourceId,
				ArrayList<Diary> diary) {
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

			TextView name = (TextView) vi.findViewById(R.id.diary_row_title); // title
			TextView date = (TextView) vi.findViewById(R.id.diary_row_subtitle); // artist
																					// name
			ImageView image = (ImageView) vi.findViewById(R.id.diary_row_image); // thumb
			// image

			Diary item = data.get(position);
			if (item != null) {
				try {
					name.setText(item.getItem().getDescription().getName());
					date.setText(item.getDate().toGMTString());
				} catch (Exception e) {
					Log.e("kieslich", e.toString());
				}
				imageLoader.DisplayImage(item.getItem().getThumbsrc(), image);
				// vi.setBackgroundResource(resid)
				int color = 0;
				switch (item.getMealtime()) {
				case 0:
					color = Color
							.parseColor(getString(R.color.color_breakfast));
					break;
				case 1:

					color = Color.parseColor(getString(R.color.color_lunch));
					break;
				case 2:

					color = Color.parseColor(getString(R.color.color_diner));
					break;
				default:

					color = Color.parseColor(getString(R.color.color_df));
					break;
				}
				// Setting all values in listview
				vi.setBackgroundColor(color);
			}
			return vi;

		}

	}
}
