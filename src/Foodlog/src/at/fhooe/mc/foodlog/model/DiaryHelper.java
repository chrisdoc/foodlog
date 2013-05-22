package at.fhooe.mc.foodlog.model;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class DiaryHelper extends SQLiteOpenHelper {

    private static final int DATABASE_VERSION = 2;
    private static final String DATABASE_NAME = "diary";
    public static final String DIARY_TABLE_NAME = "diary";
    public static final String FOOD_TABLE_NAME = "food";
    public static final String KEY_DATE = "date";
    public static final String KEY_FOOD = "foodid";
    public static final String KEY_MEAL = "meal";
    public static final String KEY_AMOUNT = "amount";
    public static final String KEY_FOOD_BLOB = "food";
    public static final String KEY_ID = "_id";
    private static final String DIARY_TABLE_CREATE = "CREATE TABLE "
            + DIARY_TABLE_NAME + " (" + KEY_ID
            + " integer primary key autoincrement," + KEY_DATE + " DATETIME, "
            + KEY_FOOD
            + " INTEGER," + KEY_MEAL + " Integer," + KEY_AMOUNT + " Integer);";

    private static final String FOOD_TABLE_CREATE = "CREATE TABLE "
            + FOOD_TABLE_NAME + " (" + KEY_ID
            + " integer primary key autoincrement," + KEY_FOOD_BLOB + " BLOB);";

    public DiaryHelper(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
        // TODO Auto-generated constructor stub
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL(DIARY_TABLE_CREATE);
        db.execSQL(FOOD_TABLE_CREATE);

    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        // TODO Auto-generated method stub

    }

}
