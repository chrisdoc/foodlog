package at.fhooe.mc.foodlog.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;

public class DiaryGroup implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -1455331988510305679L;
	Date date;
	ArrayList<Diary> diaries;
	public DiaryGroup() {
		diaries=new ArrayList<Diary>();
	}
	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public ArrayList<Diary> getDiaries() {
		return diaries;
	}

	public void setDiaries(ArrayList<Diary> diaries) {
		this.diaries = diaries;
	}

	public void addDiary(Diary diary) {
		diaries.add(diary);
	}
}
