package at.fhooe.mc.foodlog;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class FoodLog extends Activity implements OnClickListener {

    private Button btnHistory;
    private Button btnLookup;
    private Button btnHelp;
    private Button btnSettings;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_food_log);
        btnHistory = (Button) findViewById(R.id.btn_history);
        btnLookup = (Button) findViewById(R.id.btn_lookup);
        btnHelp = (Button) findViewById(R.id.btn_help);
        btnSettings = (Button) findViewById(R.id.btn_settings);

        btnHistory.setOnClickListener(this);
        btnLookup.setOnClickListener(this);
         btnHelp.setOnClickListener(this);
        btnSettings.setOnClickListener(this);


        SharedPreferences pref = getSharedPreferences(getString(R.string.shared_pref), MODE_PRIVATE);

        if (pref.getBoolean("first_start", true)) {
            Intent myIntent = new Intent(this, SettingsActivity.class);
            startActivityForResult(myIntent, 0);
            pref.edit().putBoolean("first_start", false).commit();
        }


    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.food_log, menu);
        return true;
    }


    @Override
    public void onClick(View v) {
        // TODO Auto-generated method stub
        if (v.equals(btnHistory)) {
            Intent myIntent = new Intent(v.getContext(), HistoryActivity.class);
            startActivityForResult(myIntent, 0);
        } else if (v.equals(btnLookup)) {

            Intent myIntent = new Intent(v.getContext(), LookupActivity.class);
            startActivityForResult(myIntent, 0);
        } else if (v.equals(btnHelp)) {

            Intent myIntent = new Intent(v.getContext(),HelpScreen.class);
            startActivityForResult(myIntent, 0);
        } else if (v.equals(btnSettings)) {
            //Toast.makeText(this, "settings", 2000).show();
            Intent myIntent = new Intent(v.getContext(), SettingsActivity.class);
            startActivityForResult(myIntent, 0);
        }

    }

}
