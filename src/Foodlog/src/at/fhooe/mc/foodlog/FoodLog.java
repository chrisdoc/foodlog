package at.fhooe.mc.foodlog;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.Toast;

public class FoodLog extends Activity implements OnClickListener {

	private Button btnHistory;
	private Button btnLookup;
	private Button btnNewMeal;
	private Button btnSettings;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_food_log);
        btnHistory = (Button) findViewById(R.id.btn_history);
        btnLookup = (Button) findViewById(R.id.btn_lookup);
        btnNewMeal = (Button) findViewById(R.id.btn_new_meal);
        btnSettings = (Button) findViewById(R.id.btn_settings);
        
        btnHistory.setOnClickListener(this);
		btnLookup.setOnClickListener(this);
        btnNewMeal.setOnClickListener(this);
        btnSettings.setOnClickListener(this);
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
		if(v.equals(btnHistory)){
			Intent myIntent = new Intent(v.getContext(), HistoryActivity.class);
            startActivityForResult(myIntent, 0);
		}
		else if(v.equals(btnLookup)){
		
			Intent myIntent = new Intent(v.getContext(), LookupActivity.class);
            startActivityForResult(myIntent, 0);
		}
		else if(v.equals(btnNewMeal)){
			Intent myIntent = new Intent(v.getContext(), NewMealActivity.class);
            startActivityForResult(myIntent, 0);
		}
		else if(v.equals(btnSettings)){
			//Toast.makeText(this, "settings", 2000).show();
			Intent myIntent = new Intent(v.getContext(), SettingsActivity.class);
            startActivityForResult(myIntent, 0);
		}
		
	}
    
}
