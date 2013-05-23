package at.fhooe.mc.foodlog.model;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/**
 * A helper class to receive previously searched entries form the database
 */
public class PreviouslySearchedHelper extends SQLiteOpenHelper {
    /**
     * Database verions
     */
    private static final int DATABASE_VERSION = 2;
    /**
     * the name of the database
     */
    private static final String DATABASE_NAME = "previouslysearched";
    /**
     * the table for searched entries
     */
    public static final String SEARCHED_TABLE_NAME = "searched";
    /**
     * date column
     */
    public static final String KEY_DATE = "date";
    /**
     * searched column
     */
    public static final String KEY_SEARCHED = "searched";
    /**
     * id column
     */
    public static final String KEY_ID = "_id";
    /**
     * table create statement
     */
    private static final String DICTIONARY_TABLE_CREATE = "CREATE TABLE "
            + SEARCHED_TABLE_NAME + " (" + KEY_ID
            + " integer primary key autoincrement," + KEY_DATE + " DATETIME, "
            + KEY_SEARCHED
            + " TEXT); CREATE UNIQUE INDEX idx_something ON "
            + SEARCHED_TABLE_NAME + "(" + KEY_SEARCHED + ");";

    /**
     * Constructor to instantiate a new PreviouslySearchedHelper
     * @param context the context of the invoked activity
     */
    public PreviouslySearchedHelper(Context context) {

        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL(DICTIONARY_TABLE_CREATE);
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        // TODO Auto-generated method stub
    }
}
