package at.fhooe.mc.foodlog.model;

import java.io.Serializable;
import java.util.Date;

/**
 * Diary class which stores information about one meal
 */
public class Diary implements Serializable {
    /**
     *UUID
     */
    private static final long serialVersionUID = -4308861919439207184L;
    /**
     * the id of the food
     */
    private long food_id;
    /**
     * the date on which the meal was consumed
     */
    private Date date;
    /**
     * the mealtime, like breakfast, lunch, dinner
     */
    private int mealtime;
    /**
     * the amout which was taken in
     */
    private int amount;
    /**
     * the consumed items
     */
    private Item item;

    /**
     * gets the item
     * @return the item
     */
    public Item getItem() {
        return item;
    }

    /**
     * sets the item
     * @param item the new item
     */
    public void setItem(Item item) {
        this.item = item;
    }

    /**
     * gets the food id of the diary
     * @return the food id
     */
    public long getFood_id() {
        return food_id;
    }

    /**
     * sets the food id
     * @param food_id the new food id
     */
    public void setFood_id(long food_id) {
        this.food_id = food_id;
    }

    /**
     * gets the date the meal was consumed
     * @return the consumed date
     */
    public Date getDate() {
        return date;
    }

    /**
     * sets the date on which the meal was consumed
     * @param date
     */
    public void setDate(Date date) {
        this.date = date;
    }

    /**
     * gets the mealtime of the meal
     * @return the mealtime
     */
    public int getMealtime() {
        return mealtime;
    }

    /**
     * set the new mealtime
     * @param mealtime the new mealtime
     */
    public void setMealtime(int mealtime) {
        this.mealtime = mealtime;
    }

    /**
     * returns the amount of the meal
     * @return the amount of the meal
     */
    public int getAmount() {
        return amount;
    }

    /**
     * sets the amount of the meal
     * @param amount the new meal
     */
    public void setAmount(int amount) {
        this.amount = amount;
    }


}
