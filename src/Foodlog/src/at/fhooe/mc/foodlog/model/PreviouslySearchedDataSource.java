package at.fhooe.mc.foodlog.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;

public class PreviouslySearchedDataSource {
	private PreviouslySearchedHelper dbHelper;
	private SQLiteDatabase database;
	private String[] allColumns = { PreviouslySearchedHelper.KEY_ID,
			PreviouslySearchedHelper.KEY_DATE,
			PreviouslySearchedHelper.KEY_SEARCHED };

	public PreviouslySearchedDataSource(Context context) {
		dbHelper = new PreviouslySearchedHelper(context);
	}

	public void open() throws SQLException {
		database = dbHelper.getWritableDatabase();
	}

	public void close() {
		dbHelper.close();
	}

	public void createPreviouslySearched(String searched) {
		//PreviouslySearched old = getPreviouslySearched(searched);
		//if (old != null)
		//	return old;
		ContentValues values = new ContentValues();
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		ContentValues initialValues = new ContentValues();
		initialValues.put("date_created", dateFormat.format(date));
		values.put(PreviouslySearchedHelper.KEY_DATE, dateFormat.format(date));
		values.put(PreviouslySearchedHelper.KEY_SEARCHED, searched);
		database.execSQL("INSERT OR REPLACE INTO "+PreviouslySearchedHelper.SEARCHED_TABLE_NAME+ "(searched,date) values('"+searched+"',DATETIME('now'));");
		/*long insertId = database.insert(
				PreviouslySearchedHelper.SEARCHED_TABLE_NAME, null, values);
		Cursor cursor = database.query(
				PreviouslySearchedHelper.SEARCHED_TABLE_NAME, allColumns,
				PreviouslySearchedHelper.KEY_ID + " = " + insertId, null, null,
				null, null);
		cursor.moveToFirst();
		PreviouslySearched newSearched = cursorToPreviouslySearched(cursor);
		cursor.close();
		return newSearched;*/
	}

	public void deleteAll() {
		database.delete(PreviouslySearchedHelper.SEARCHED_TABLE_NAME, null,
				null);
	}

	public void deleteComment(PreviouslySearched comment) {
		long id = comment.getId();
		System.out.println("Comment deleted with id: " + id);
		database.delete(PreviouslySearchedHelper.SEARCHED_TABLE_NAME,
				PreviouslySearchedHelper.KEY_ID + " = " + id, null);
	}

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

	private PreviouslySearched cursorToPreviouslySearched(Cursor cursor) {
		PreviouslySearched searched = new PreviouslySearched();
		searched.setId(cursor.getLong(0));
		searched.setName(cursor.getString(2));
		return searched;
	}

	public PreviouslySearched getPreviouslySearched(String searched){
		Cursor cursor=null;
		PreviouslySearched psearched=null;
		try{
		cursor = database.query(
				PreviouslySearchedHelper.SEARCHED_TABLE_NAME, allColumns,
				PreviouslySearchedHelper.KEY_SEARCHED + " like " + searched, null, null,
				null, null);
		cursor.moveToFirst();
		psearched= cursorToPreviouslySearched(cursor);
		}catch(Exception e){
			
		}
		finally{
			try{
			cursor.close();
			}
			catch(Exception e){
				
			}
		}
		return psearched;
	}
}
