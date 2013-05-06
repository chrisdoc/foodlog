package at.fhooe.mc.foodlog.model;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class PreviouslySearchedHelper extends SQLiteOpenHelper {
	private static final int DATABASE_VERSION = 2;
	private static final String DATABASE_NAME = "previouslysearched";
	public static final String SEARCHED_TABLE_NAME = "searched";
	public static final String KEY_DATE = "date";
	public static final String KEY_SEARCHED = "searched";
	public static final String KEY_ID = "_id";
	private static final String DICTIONARY_TABLE_CREATE = "CREATE TABLE "
			+ SEARCHED_TABLE_NAME + " (" + KEY_ID
			+ " integer primary key autoincrement," + KEY_DATE + " DATETIME, "
			+ KEY_SEARCHED
			+ " TEXT); CREATE UNIQUE INDEX idx_something ON "
			+ SEARCHED_TABLE_NAME + "(" + KEY_SEARCHED + ");";

	PreviouslySearchedHelper(Context context) {

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
