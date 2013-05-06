package at.fhooe.mc.foodlog;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

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
import android.widget.ArrayAdapter;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import at.fhooe.mc.foodlog.model.Diary;
import at.fhooe.mc.foodlog.model.DiaryGroup;

public class DiaryDayActivity extends FragmentActivity {
	DiaryGroup diaryGroup;
	private SimpleDateFormat dateFormat = new SimpleDateFormat(
			"EEE dd.MM.yyyy", Locale.getDefault());
	int kcal=0;
	int kcal_breakfast=0;
	int kcal_lunch=0;
	int kcal_diner=0;
	
	InformationAdapter informationAdapter;
	@Override
	protected void onCreate(Bundle savedInstance) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstance);
		setContentView(R.layout.diary_day_activity);
		diaryGroup=(DiaryGroup) getIntent().getSerializableExtra("diarygroup");
		
		
		
		if(diaryGroup!=null){
			TextView dateView =(TextView) findViewById(R.id.diary_day_date);
			dateView.setText(dateFormat.format(diaryGroup.getDate()));
			TextView kcalView=(TextView)findViewById(R.id.diary_day_kcal);
			
			int temp_kcal=0;
			for(Diary d : diaryGroup.getDiaries()){
				temp_kcal= d.getItem().getData().getKcal()
						* d.getAmount()
						/ d.getItem().getData().getAmount();
				kcal+=temp_kcal;
				switch(d.getMealtime()){
				case 0:
					kcal_breakfast+=temp_kcal;
					break;
				case 1:
					kcal_lunch+=temp_kcal;
					break;
				case 2:
					kcal_diner+=temp_kcal;
					break;
				}
				
			}
			kcalView.setText(kcal+" kcal");
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
		SharedPreferences pref= PreferenceManager.getDefaultSharedPreferences(this);
		int kcal_all=pref.getInt(getString(R.string.kcal_pref_key), 2000);
		float consumed=(float)kcal/kcal_all;
		View calories_consumed=findViewById(R.id.calories_consumed);
		//tv.setLayoutParams(new TableLayout.LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT, 1f));
		LayoutParams param = new LinearLayout.LayoutParams(
                0,
                40,consumed);
		calories_consumed.setLayoutParams(param);
		View calories_left=findViewById(R.id.calories_left);
		param = new LinearLayout.LayoutParams(
                0,
               40,1-consumed);
		calories_left.setLayoutParams(param);
		
		ArrayList<Information> information= new ArrayList<Information>();
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
		informationAdapter= new InformationAdapter(this, R.layout.information_row, information);
		ListView informationView = (ListView) findViewById(R.id.diary_dayList);
		informationView.setAdapter(informationAdapter);
	}
	public String getJSON(){
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
		array.put(breakfast);
		array.put(lunch);
		array.put(diner);
	
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

			view.setBackgroundColor(item.getColor());
			return vi;

		}

	}
}
