package at.fhooe.mc.foodlog.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;

/**
 * A DiaryGroup stores all diaries for one day
 */
public class DiaryGroup implements Serializable {
    /**
     *UUID
     */
    private static final long serialVersionUID = -1455331988510305679L;
    /**
     * the date of the diary group
     */
   private Date date;
    /**
     * all diary entries of one day
     */
    private ArrayList<Diary> diaries;

    /**
     * Default constructor to instantiate a DiaryGroup
     */
    public DiaryGroup() {
        diaries = new ArrayList<Diary>();
    }

    /**
     * gets the date of the DiaryGroup
     * @return the date
     */
    public Date getDate() {
        return date;
    }

    /**
     * Sets the date of the DiaryGroup
     * @param date the new date
     */
    public void setDate(Date date) {
        this.date = date;
    }

    /**
     * get all diaries
     * @return the diaries
     */
    public ArrayList<Diary> getDiaries() {
        return diaries;
    }

    /**
     * Set all diaries
     * @param diaries the new diaries
     */
    public void setDiaries(ArrayList<Diary> diaries) {
        this.diaries = diaries;
    }

    /**
     * adds a Diary to the DiaryGroup
     * @param diary the diary which should be added
     */
    public void addDiary(Diary diary) {
        diaries.add(diary);
    }
}
