package at.fhooe.mc.foodlog;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Bundle;
import android.preference.PreferenceActivity;
import android.util.Log;

public class SettingsActivity extends PreferenceActivity implements
		OnSharedPreferenceChangeListener {
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		getActionBar().setHomeButtonEnabled(false);
		addPreferencesFromResource(R.xml.preferences);
		
		getPreferenceScreen().getSharedPreferences()
				.registerOnSharedPreferenceChangeListener(this);

	}

	@Override
	public void onSharedPreferenceChanged(SharedPreferences sharedPreferences,
			String key) {
		//calculate grundumsatz
//		Men
//		10 x weight (kg) + 6.25 x height (cm) - 5 x age (y) + 5
//
//		Women
//		10 x weight (kg) + 6.25 x height (cm) - 5 x age (y) - 161.
		
		int age=Integer.parseInt(sharedPreferences.getString(getString(R.string.age_pref_key),"20"));
		int height=Integer.parseInt(sharedPreferences.getString(getString(R.string.height_pref_key),"180"));
		int weight=Integer.parseInt(sharedPreferences.getString(getString(R.string.weight_pref_key),"80"));
		String gender =sharedPreferences.getString(getString(R.string.gender_pref_key), "male");
		int kcal=0;
		if(gender.equalsIgnoreCase("male")){
			kcal=(int) (10*weight+6.25*height-5*age+5);
		}
		else if(gender.equalsIgnoreCase("female")){
			kcal=(int) (10*weight+6.25*height-5*age-161);
		}
		Editor editor = sharedPreferences.edit();
		editor.putInt(getString(R.string.kcal_pref_key), kcal);
		Log.d("kieslich","saved kcal +"+editor.commit());

	}
}