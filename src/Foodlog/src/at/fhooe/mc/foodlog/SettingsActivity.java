package at.fhooe.mc.foodlog;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Bundle;
import android.preference.*;
import android.text.InputFilter;
import android.util.Log;
import com.lukehorvat.NumberPickerDialogPreference;

public class SettingsActivity extends PreferenceActivity implements
        OnSharedPreferenceChangeListener {

    EditTextPreference age;
    EditTextPreference height;
    EditTextPreference weight;
    ListPreference gender;
    EditTextPreference daily;
    EditTextPreference meal;
    NumberPickerDialogPreference agePicker;
    NumberPickerDialogPreference heightPicker;
    NumberPickerDialogPreference weightPicker;
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getActionBar().setHomeButtonEnabled(false);
        addPreferencesFromResource(R.xml.preferences);

        getPreferenceScreen().getSharedPreferences()
                .registerOnSharedPreferenceChangeListener(this);

        //age = (EditTextPreference) findPreference(getString(R.string.age_pref_key));
        //height = (EditTextPreference) findPreference(getString(R.string.height_pref_key));
        //weight = (EditTextPreference) findPreference(getString(R.string.weight_pref_key));
        gender = (ListPreference) findPreference(getString(R.string.gender_pref_key));
        daily = (EditTextPreference) findPreference(getString(R.string.daily_kcal_pref_key));
        meal = (EditTextPreference) findPreference(getString(R.string.meal_kcal_pref_key));
        agePicker=(NumberPickerDialogPreference)findPreference(getString(R.string.age_pref_key));
        heightPicker=(NumberPickerDialogPreference)findPreference(getString(R.string.height_pref_key));
        weightPicker=(NumberPickerDialogPreference)findPreference(getString(R.string.weight_pref_key));


        Preference.OnPreferenceChangeListener op = new Preference.OnPreferenceChangeListener() {
            @Override
            public boolean onPreferenceChange(Preference preference, Object o) {
                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        updateText();
                        updateText();
                    }
                });

                return true;
            }
        };
        agePicker.setOnPreferenceChangeListener(op);
        heightPicker.setOnPreferenceChangeListener(op);
        weightPicker.setOnPreferenceChangeListener(op);
       // age.getEditText().setFilters(new InputFilter[]{new InputFilterMinMax(1, 30)});

    }

    @Override
    protected void onResume() {
        super.onResume();
        getPreferenceScreen().getSharedPreferences()
                .registerOnSharedPreferenceChangeListener(this);
        updateText();
    }

    @Override
    protected void onPause() {
        super.onPause();
        getPreferenceScreen().getSharedPreferences()
                .unregisterOnSharedPreferenceChangeListener(this);
    }

    private void updateText() {
        //age.setSummary(getString(R.string.age_pref_summary) + " (" + age.getText() + " years)");
        //height.setSummary(getString(R.string.height_pref_summary) + " (" + height.getText() + " cm)");
        //weight.setSummary(getString(R.string.weight_pref_summary) + " (" + weight.getText() + " kg)");


        int age =agePicker.getValue();//getSharedPreferences(getString(R.string.shared_pref),MODE_PRIVATE).getInt(getString(R.string.age_pref_key), 20);
        int height =heightPicker.getValue();//getSharedPreferences(getString(R.string.shared_pref),MODE_PRIVATE).getInt(getString(R.string.height_pref_key), 180);
        int weight =weightPicker.getValue();//getSharedPreferences(getString(R.string.shared_pref),MODE_PRIVATE).getInt(getString(R.string.weight_pref_key), 80);


          //  int age = Integer.parseInt(sharedPreferences.getString(getString(R.string.age_pref_key), "20"));
        //int height = Integer.parseInt(sharedPreferences.getString(getString(R.string.height_pref_key), "180"));
        //int weight = Integer.parseInt(sharedPreferences.getString(getString(R.string.weight_pref_key), "80"));
        String genderS = getSharedPreferences(getString(R.string.shared_pref),MODE_PRIVATE).getString(getString(R.string.gender_pref_key), "male");
        int kcal = 0;
        if (genderS.equalsIgnoreCase("male")) {
            kcal = (int) (10 * weight + 6.25 * height - 5 * age + 5);
        } else if (genderS.equalsIgnoreCase("female")) {
            kcal = (int) (10 * weight + 6.25 * height - 5 * age - 161);
        }

        Editor editor = getSharedPreferences(getString(R.string.shared_pref),MODE_PRIVATE).edit();
        editor.putInt(getString(R.string.kcal_pref_key), kcal);
        editor.putString(getString(R.string.daily_kcal_pref_key), String.valueOf(kcal));
        editor.apply();
        //Log.d("kieslich", "saved kcal +" + editor.commit());
        daily.setText(String.valueOf(kcal));



        agePicker.setSummary(getString(R.string.age_pref_summary) + " (" + agePicker.getValue() + " years)");
        heightPicker.setSummary(getString(R.string.height_pref_summary) + " (" + heightPicker.getValue() + " cm)");
        weightPicker.setSummary(getString(R.string.weight_pref_summary) + " (" + weightPicker.getValue() + " kg)");

        gender.setSummary(getString(R.string.gender_pref_summary) + " (" + gender.getValue() + ")");
        daily.setSummary(getString(R.string.daily_kcal_pref_summary) + " (" + daily.getText() + " kCal)");
        meal.setSummary(getString(R.string.meal_kcal_pref_summary) + " (" + meal.getText() + " kCal)");


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

/*
        int age = Integer.parseInt(sharedPreferences.getString(getString(R.string.age_pref_key), "20"));
        int height = Integer.parseInt(sharedPreferences.getString(getString(R.string.height_pref_key), "180"));
        int weight = Integer.parseInt(sharedPreferences.getString(getString(R.string.weight_pref_key), "80"));
        String gender = sharedPreferences.getString(getString(R.string.gender_pref_key), "male");
        int kcal = 0;
        if (gender.equalsIgnoreCase("male")) {
            kcal = (int) (10 * weight + 6.25 * height - 5 * age + 5);
        } else if (gender.equalsIgnoreCase("female")) {
            kcal = (int) (10 * weight + 6.25 * height - 5 * age - 161);
        }

        Editor editor = sharedPreferences.edit();
        editor.putInt(getString(R.string.kcal_pref_key), kcal);
        editor.putString(getString(R.string.daily_kcal_pref_key), String.valueOf(kcal));
        editor.apply();
        //Log.d("kieslich", "saved kcal +" + editor.commit());
        daily.setText(String.valueOf(kcal));
        updateText();*/

    }
}