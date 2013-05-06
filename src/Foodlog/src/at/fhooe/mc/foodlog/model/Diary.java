package at.fhooe.mc.foodlog.model;

import java.io.Serializable;
import java.util.Date;

public class Diary implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -4308861919439207184L;
	long food_id;
	Date date;
	int mealtime;
	int amount;
	Item item;
	public Item getItem(){
		return item;
	}
	public void setItem(Item item){
		this.item=item;
	}
	public long getFood_id() {
		return food_id;
	}
	public void setFood_id(long food_id) {
		this.food_id = food_id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getMealtime() {
		return mealtime;
	}
	public void setMealtime(int mealtime) {
		this.mealtime = mealtime;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	
}
