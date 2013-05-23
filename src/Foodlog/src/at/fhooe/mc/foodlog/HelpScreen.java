package at.fhooe.mc.foodlog;

import android.app.Activity;
import android.os.Bundle;

/**
 * A HelpScreen to explain all the functionalities of the App
 */
public class HelpScreen extends Activity {
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //Set the layout for the Activity
        setContentView(R.layout.help_screen);
    }
}