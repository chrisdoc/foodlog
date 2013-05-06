package at.fhooe.mc.foodlog;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
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
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RadioGroup;
import android.widget.TextView;
import at.fhooe.mc.foodlog.model.DiaryDataSource;
import at.fhooe.mc.foodlog.model.Item;
import at.fhooe.mc.foodlog.model.MealTime;

import com.fedorvlasov.lazylist.ImageLoader;

public class SearchDetailActivity extends FragmentActivity {
	ImageLoader imageLoader;
	Item item;
	NutritionAdapter adapter;
	ArrayList<Nutrition> nutritions;
	DiaryDataSource diarySource;

	@SuppressLint("SetJavaScriptEnabled")
	@Override
	protected void onCreate(Bundle savedInstance) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstance);

		diarySource = new DiaryDataSource(this);
		diarySource.open();

		setContentView(R.layout.search_details_view);
		item = (Item) getIntent().getSerializableExtra("item");
		TextView title = (TextView) findViewById(R.id.search_detail_title);
		TextView subtitle = (TextView) findViewById(R.id.search_detail_subtitle);
		TextView calories = (TextView) findViewById(R.id.search_detail_calorie);
		ImageView image = (ImageView) findViewById(R.id.search_detail_image);
		imageLoader = new ImageLoader(getApplicationContext());

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

		pie.loadUrl("file:///android_asset/pie.html");

		pie.setWebChromeClient(new WebChromeClient() {
			public void onConsoleMessage(String message, int lineNumber,
					String sourceID) {
				Log.d("MyApplication", message + " -- From line " + lineNumber
						+ " of " + sourceID);
			}
		});

		nutritions = new ArrayList<Nutrition>();
		adapter = new NutritionAdapter(this, R.layout.nutrition_row, nutritions);

		ListView nutritionView = (ListView) findViewById(R.id.nutrutionList);
		nutritionView.setAdapter(adapter);

		if (item != null) {
			title.setText(item.getDescription().getName());
			subtitle.setText(item.getDescription().getGroup());

			calories.setText(String.format("%d %s has %d kCal", item.getData()
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

	private void addToDiary() {

		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		// Get the layout inflater
		LayoutInflater inflater = getLayoutInflater();

		// Inflate and set the layout for the dialog
		// Pass null as the parent view because its going in the dialog layout

		View v = inflater.inflate(R.layout.add_diary_alert, null);
		final TextView unit = (TextView) v.findViewById(R.id.amount_unit);
		unit.setText(item.getUnit());
		final EditText amountView = (EditText) v
				.findViewById(R.id.amount_textfield);
		
		amountView.setText(String.valueOf(item.getData().getAmount()),TextView.BufferType.EDITABLE);
		final RadioGroup radioMealtime = (RadioGroup) v
				.findViewById(R.id.radioGroup_mealtime);

		Calendar calendar = new GregorianCalendar();
		int hours = calendar.get(Calendar.HOUR_OF_DAY);
		if (hours > 0 && hours < 10) {
			
		} else if (hours >= 10 && hours < 15) {

		} else if (hours >= 15 && hours <= 24) {

		}
		builder.setView(v)
				.setPositiveButton("Add",
						new DialogInterface.OnClickListener() {
							@Override
							public void onClick(DialogInterface dialog, int id) {
								int amount = Integer.parseInt(amountView
										.getText().toString());
								int radioID = 0;
								switch(radioMealtime
										.getCheckedRadioButtonId()){
								case R.id.radio_breakfast:
									radioID=MealTime.BREAKFAST.ordinal();
									break;
								case R.id.radio_lunch:
									radioID=MealTime.LUNCH.ordinal();
									break;
								case R.id.radio_diner:
									radioID=MealTime.DINER.ordinal();
									break;
								}
								diarySource.createDiaryEntry(item, radioID, amount);
								Log.d("kieslich", "amount " + amount + " id "
										+ radioID);
							}
						})
				.setNegativeButton("Cancel",
						new DialogInterface.OnClickListener() {
							public void onClick(DialogInterface dialog, int id) {

							}
						});
		builder.create().show();
		/*
		 * AlertDialog.Builder builder = new AlertDialog.Builder(this);
		 * builder.setTitle(R.string.pick_mealtime) .setItems(R.array.mealtime,
		 * new DialogInterface.OnClickListener() { public void
		 * onClick(DialogInterface dialog, int which) {
		 * 
		 * diarySource.createDiaryEntry(item,which); } });
		 * builder.create().show();
		 */
	}

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

		} catch (JSONException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		JSONObject protein = new JSONObject();
		try {
			protein.put("value", item.getData().getProtein_gram());
			protein.put("color", "#A9DC3A");
			protein.put("label", "protein");
			protein.put("labelColor", "#444");
			protein.put("labelFontSize", "1.2em");

		} catch (JSONException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		JSONObject sugar = new JSONObject();
		try {
			sugar.put("value", item.getData().getSugar_gram());
			sugar.put("color", "#2FCAD8");
			sugar.put("label", "sugar");
			sugar.put("labelColor", "#444");
			sugar.put("labelFontSize", "1.2em");

		} catch (JSONException e1) {
			// TODO Auto-generated catch block
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

		} catch (JSONException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		JSONObject carb = new JSONObject();
		try {
			carb.put("value", item.getData().getKh_gram());
			carb.put("color", "#3E454C");
			carb.put("label", "carb");
			carb.put("labelColor", "#444");
			carb.put("labelFontSize", "1.2em");

		} catch (JSONException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		array.put(fat);
		array.put(protein);
		array.put(sugar);
		array.put(df);
		array.put(carb);
		Log.d("kieslich", array.toString());
		return array.toString();

	}

	public class Nutrition {
		public Nutrition(String name, double value, int color) {
			super();
			this.name = name;
			this.color = color;
			this.value = value;
		}

		String name;
		int color;
		double value;

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public int getColor() {
			return color;
		}

		public void setColor(int color) {
			this.color = color;
		}

		public double getValue() {
			return value;
		}

		public void setValue(double value) {
			this.value = value;
		}

	}

	public class NutritionAdapter extends ArrayAdapter<Nutrition> {

		private Context context;
		private int layoutResourceId;
		private ArrayList<Nutrition> data;
		private LayoutInflater inflater = null;

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
			// LayoutInflater inflater = ((Activity)
			// context).getLayoutInflater();
			if (convertView == null)
				vi = inflater.inflate(R.layout.nutrition_row, null);

			TextView name = (TextView) vi.findViewById(R.id.nutrition_name); // title
			TextView value = (TextView) vi.findViewById(R.id.nutrition_value); // artist
																				// name
			View view = (View) vi.findViewById(R.id.nutrition_row_color); // thumb
																			// image

			Nutrition item = data.get(position);
			// Setting all values in listview
			name.setText(item.name);
			value.setText(String.format("%.2f gram", item.value));

			view.setBackgroundColor(item.color);
			return vi;

		}

	}
}
