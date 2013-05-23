package at.fhooe.mc.foodlog.model;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * A DataSource to access the previously searched products in the database
 */
public class PreviouslySearchedDataSource {
    /**
     * PreviouslySearchedHelper to create and write to the database
     */
    private PreviouslySearchedHelper dbHelper;
    /**
     * A SQLiteDatabase object
     */
    private SQLiteDatabase database;
    /**
     * All colums of the table
     */
    private String[] allColumns = {PreviouslySearchedHelper.KEY_ID,
            PreviouslySearchedHelper.KEY_DATE,
            PreviouslySearchedHelper.KEY_SEARCHED};

    /**
     * Constructor to instantiate a new PreviouslySearchedDataSource
     * @param context the context of the invoked activity
     */
    public PreviouslySearchedDataSource(Context context) {
        dbHelper = new PreviouslySearchedHelper(context);
    }

    /**
     * opens a database connection
     * @throws SQLException
     */
    public void open() throws SQLException {
        database = dbHelper.getWritableDatabase();
    }

    public void close() {
        dbHelper.close();
    }

    /**
     * Creates a new previously searched entry
     * @param searched
     */
    public void createPreviouslySearched(String searched) {

        ContentValues values = new ContentValues();
        SimpleDateFormat dateFormat = new SimpleDateFormat(
                "yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
        ContentValues initialValues = new ContentValues();
        initialValues.put("date_created", dateFormat.format(date));
        values.put(PreviouslySearchedHelper.KEY_DATE, dateFormat.format(date));
        values.put(PreviouslySearchedHelper.KEY_SEARCHED, searched);
        database.execSQL("INSERT OR REPLACE INTO " + PreviouslySearchedHelper.SEARCHED_TABLE_NAME + "(searched,date) values('" + searched + "',DATETIME('now'));");

    }

    /**
     * deletes all entries
     */
    public void deleteAll() {
        database.delete(PreviouslySearchedHelper.SEARCHED_TABLE_NAME, null,
                null);
    }

    /**
     * delete one entry
     * @param comment the entry which should be deleted
     */
    public void deleteComment(PreviouslySearched comment) {
        long id = comment.getId();
        System.out.println("Comment deleted with id: " + id);
        database.delete(PreviouslySearchedHelper.SEARCHED_TABLE_NAME,
                PreviouslySearchedHelper.KEY_ID + " = " + id, null);
    }

    /**
     * Gets all previously searched entries as a string set
     * @return the string set with search entries
     */
    public Set<String> getAllPreviouslySearched() {
        //List<PreviouslySearched> searched = new ArrayList<PreviouslySearched>();
        HashSet set = new HashSet();
        Cursor cursor = database.query(
                PreviouslySearchedHelper.SEARCHED_TABLE_NAME, allColumns, null,
                null, null, null, null);

        cursor.moveToFirst();
        while (!cursor.isAfterLast()) {
            PreviouslySearched comment = cursorToPreviouslySearched(cursor);
            //searched.add(comment);
            set.add(comment.getName());
            cursor.moveToNext();
        }
        // Make sure to close the cursor
        cursor.close();
        return set;
        //return searched;
    }

    /**
     * Gets a PreviouslySearched for the specified cursor
     * @param cursor the cursor to the item
     * @return the PreviouslySearched object
     */
    private PreviouslySearched cursorToPreviouslySearched(Cursor cursor) {
        PreviouslySearched searched = new PreviouslySearched();
        searched.setId(cursor.getLong(0));
        searched.setName(cursor.getString(2));
        return searched;
    }

    /**
     * Gets a PreviouslySearched item for a string
     * @param searched string which should be searched
     * @return the searched item
     */
    public PreviouslySearched getPreviouslySearched(String searched) {
        Cursor cursor = null;
        PreviouslySearched psearched = null;
        try {
            cursor = database.query(
                    PreviouslySearchedHelper.SEARCHED_TABLE_NAME, allColumns,
                    PreviouslySearchedHelper.KEY_SEARCHED + " like " + searched, null, null,
                    null, null);
            cursor.moveToFirst();
            psearched = cursorToPreviouslySearched(cursor);
        } catch (Exception e) {

        } finally {
            try {
                cursor.close();
            } catch (Exception e) {

            }
        }
        return psearched;
    }
}
