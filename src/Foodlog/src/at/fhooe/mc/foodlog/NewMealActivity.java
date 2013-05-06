package at.fhooe.mc.foodlog;

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;

public class NewMealActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_new_meal);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.new_meal, menu);
		return true;
	}

}
