package at.fhooe.mc.foodlog.model;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;

import java.io.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

public class DiaryDataSource {
    private DiaryHelper dbHelper;
    private SQLiteDatabase database;
    SimpleDateFormat dateTimeFormat = new SimpleDateFormat(
            "yyyy-MM-dd HH:mm:ss");
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

    // '%Y-%m-%d'
    public DiaryDataSource(Context context) {
        dbHelper = new DiaryHelper(context);
    }

    public void open() throws SQLException {
        database = dbHelper.getWritableDatabase();
    }

    public void close() {
        dbHelper.close();
    }

    public void createFoodEntry(Item _item) {
        ContentValues initialValues = new ContentValues();
        initialValues.put(DiaryHelper.KEY_ID, _item.getId());
        initialValues.put(DiaryHelper.KEY_FOOD_BLOB, serializeObject(_item));
        try {
            long id = database.insertOrThrow(DiaryHelper.FOOD_TABLE_NAME, null,
                    initialValues);

            Log.d("kieslich", initialValues.toString());
        } catch (SQLException e) {
            Log.d("kieslich", "food has been saved previously");
        } catch (Exception e) {
            Log.d("kieslich", "food has been saved previously");
        }

    }

    public long getFoodID(Item item) {
        long id = -1;
        Cursor cursor = database.query(DiaryHelper.FOOD_TABLE_NAME,
                new String[]{DiaryHelper.KEY_ID}, DiaryHelper.KEY_ID + "="
                + item.getId(), null, null, null, null);
        cursor.moveToFirst();

        try {
            id = cursor.getInt(0);
        } catch (Exception e) {
            Log.e("kieslich", e.toString());
        } finally {
            cursor.close();
        }

        return id;
    }

    public ArrayList<DiaryGroup> getDiaryGroup() {
        ArrayList<DiaryGroup> diaryGroups = new ArrayList<DiaryGroup>();
        //select DATE(date) as date from diary where date between  ('2013-03-22') and ('2013-03-23') ;
        //select * from diary where Date(date)='2013-03-22'
        Cursor cursor = database.query(DiaryHelper.DIARY_TABLE_NAME,
                new String[]{DiaryHelper.KEY_ID,
                        "DATE(" + DiaryHelper.KEY_DATE + ") DateOnly"}, null,
                null, "DateOnly", null, DiaryHelper.KEY_DATE + " DESC");
        cursor.moveToFirst();

        int id;
        Date date;
        ArrayList<Date> dateList = new ArrayList<Date>();
        while (!cursor.isAfterLast()) {

            try {
                date = dateFormat.parse(cursor.getString(1));
                dateList.add(date);
            } catch (ParseException e) {
                e.printStackTrace();
            }
            cursor.moveToNext();

        }
        cursor.close();
        Diary diary = null;
        DiaryGroup group = null;
        for (Date d : dateList) {
            group = new DiaryGroup();
            cursor = database.query(
                    DiaryHelper.DIARY_TABLE_NAME,
                    new String[]{DiaryHelper.KEY_FOOD, DiaryHelper.KEY_ID, DiaryHelper.KEY_MEAL, DiaryHelper.KEY_AMOUNT, DiaryHelper.KEY_DATE},
                    "DATE(" + DiaryHelper.KEY_DATE + ")='"
                            + dateFormat.format(d) + "';", null, null,
                    null, null);
            cursor.moveToFirst();
            while (!cursor.isAfterLast()) {
                Log.d("kieslich", "food id " + cursor.getInt(0));
                Item item = getItem(cursor.getInt(0));
                diary = new Diary();
                diary.setItem(item);
                diary.setFood_id(item.getId());
                diary.setMealtime(cursor.getInt(2));
                diary.setAmount(cursor.getInt(3));
                try {
                    String test = cursor.getString(4);
                    diary.setDate(dateTimeFormat.parse(cursor.getString(4)));
                    //diary.setDate(dateFormat.parse(cursor.getString(4)));
                } catch (ParseException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                    diary.setDate(new Date());
                }
                group.addDiary(diary);
                group.setDate(diary.getDate());
                cursor.moveToNext();
            }
            cursor.close();
            diaryGroups.add(group);
        }
        return diaryGroups;
    }

    public void createDiaryEntry(Item item, int mealtime, int amount) {
        long id = getFoodID(item);
        ContentValues initialValues = new ContentValues();
        initialValues.put(DiaryHelper.KEY_FOOD, id);
        initialValues.put(DiaryHelper.KEY_MEAL, mealtime);
        initialValues.put(DiaryHelper.KEY_AMOUNT, amount);

        Date date = new Date();
        initialValues.put(DiaryHelper.KEY_DATE, dateTimeFormat.format(date));
        id = database.insert(DiaryHelper.DIARY_TABLE_NAME, null, initialValues);

        Log.d("kieslich", initialValues.toString());

    }

    public Item getItem(int id) {
        Item item = null;
        try {
            Cursor cursor = database.query(DiaryHelper.FOOD_TABLE_NAME,
                    new String[]{DiaryHelper.KEY_FOOD_BLOB},
                    DiaryHelper.KEY_ID + "=" + id, null, null, null, null);
            cursor.moveToFirst();
            byte[] blob = cursor.getBlob(0);
            item = (Item) deserializeObject(blob);
        } catch (Exception e) {
            Log.e("kieslich", e.toString());
        }
        return item;
    }

    public ArrayList<Diary> getHistory() {
        ArrayList<Diary> diaries = new ArrayList<Diary>();
        Cursor cursor = database.query(DiaryHelper.DIARY_TABLE_NAME,
                new String[]{DiaryHelper.KEY_ID, DiaryHelper.KEY_FOOD,
                        DiaryHelper.KEY_MEAL, DiaryHelper.KEY_DATE,
                        DiaryHelper.KEY_AMOUNT}, null, null, null, null,
                DiaryHelper.KEY_DATE);
        cursor.moveToFirst();
        cursor.moveToFirst();
        Diary diary = null;
        while (!cursor.isAfterLast()) {

            // searched.add(comment);
            diary = new Diary();
            diary.setFood_id(cursor.getInt(1));
            diary.setMealtime(cursor.getInt(2));
            diary.setAmount(cursor.getInt(3));
            // load item
            diary.setItem(getItem(cursor.getInt(1)));
            try {
                diary.setDate(dateTimeFormat.parse(cursor.getString(3)));
            } catch (ParseException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            diaries.add(diary);
            cursor.moveToNext();
        }
        // Make sure to close the cursor
        cursor.close();
        return diaries;
    }

    public static byte[] serializeObject(Object o) {
        ByteArrayOutputStream bos = new ByteArrayOutputStream();

        try {
            ObjectOutput out = new ObjectOutputStream(bos);
            out.writeObject(o);
            out.close();

            // Get the bytes of the serialized object
            byte[] buf = bos.toByteArray();

            return buf;
        } catch (IOException ioe) {
            Log.e("serializeObject", "error", ioe);

            return null;
        }
    }

    public static Object deserializeObject(byte[] b) {
        try {
            ObjectInputStream in = new ObjectInputStream(
                    new ByteArrayInputStream(b));
            Object object = in.readObject();
            in.close();

            return object;
        } catch (ClassNotFoundException cnfe) {
            Log.e("deserializeObject", "class not found error", cnfe);

            return null;
        } catch (IOException ioe) {
            Log.e("deserializeObject", "io error", ioe);

            return null;
        }
    }

    public void createDiaryEntry(Item item, Calendar dateAndTime, int amount) {

        long id = getFoodID(item);
        ContentValues initialValues = new ContentValues();
        initialValues.put(DiaryHelper.KEY_FOOD, id);
        initialValues.put(DiaryHelper.KEY_MEAL, 0);
        initialValues.put(DiaryHelper.KEY_AMOUNT, amount);

        Date date = dateAndTime.getTime();
        initialValues.put(DiaryHelper.KEY_DATE, dateTimeFormat.format(date));
        id = database.insert(DiaryHelper.DIARY_TABLE_NAME, null, initialValues);

        Log.d("kieslich", initialValues.toString());


    }
}
