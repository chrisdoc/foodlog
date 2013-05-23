package at.fhooe.mc.foodlog.model;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/**
 * A helper class to interact with the database to store the diary
 */
public class DiaryHelper extends SQLiteOpenHelper {

    /**
     * database version
     */
    private static final int DATABASE_VERSION = 2;
    /**
     * database name
     */
    private static final String DATABASE_NAME = "diary";
    /**
     * diary table name
     */
    public static final String DIARY_TABLE_NAME = "diary";
    /**
     * food table name
     */
    public static final String FOOD_TABLE_NAME = "food";
    /**
     * date column
     */
    public static final String KEY_DATE = "date";
    /**
     * food id column
     */
    public static final String KEY_FOOD = "foodid";
    /**
     * meal column
     */
    public static final String KEY_MEAL = "meal";
    /**
     * amount column
     */
    public static final String KEY_AMOUNT = "amount";
    /**
     * food column
     */
    public static final String KEY_FOOD_BLOB = "food";
    /**
     * id column
     */
    public static final String KEY_ID = "_id";
    /**
     * create statement for the diary table
     */
    private static final String DIARY_TABLE_CREATE = "CREATE TABLE "
            + DIARY_TABLE_NAME + " (" + KEY_ID
            + " integer primary key autoincrement," + KEY_DATE + " DATETIME, "
            + KEY_FOOD
            + " INTEGER," + KEY_MEAL + " Integer," + KEY_AMOUNT + " Integer);";
    /**
     * create statement for the food table
     */
    private static final String FOOD_TABLE_CREATE = "CREATE TABLE "
            + FOOD_TABLE_NAME + " (" + KEY_ID
            + " integer primary key autoincrement," + KEY_FOOD_BLOB + " BLOB);";

    /**
     *Constructor to instaniate a new DiaryHelper
     * @param context context of the invoked activity
     */
    public DiaryHelper(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL(DIARY_TABLE_CREATE);
        db.execSQL(FOOD_TABLE_CREATE);

    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
    }

}
