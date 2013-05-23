package at.fhooe.mc.foodlog.model;

import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

import java.io.Serializable;

/**
 * A Container class which stores food items
 */
@Root(strict = false)
public class Item implements Serializable {
    /**
     *
     */
    private static final long serialVersionUID = -665299300714578359L;
    @Element(required = false)
    int id;
    @Element(required = false)
    double foodrank;
    @Element(required = false)
    int producerid;
    @Element(required = false)
    int groupid;
    @Element(required = false)
    String thumbsrc;
    @Element(required = false)
    FoodData data;
    @Element(required = false)
    FoodDescription description;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getFoodrank() {
        return foodrank;
    }

    public void setFoodrank(double foodrank) {
        this.foodrank = foodrank;
    }

    public int getProducerid() {
        return producerid;
    }

    public void setProducerid(int producerid) {
        this.producerid = producerid;
    }

    public int getGroupid() {
        return groupid;
    }

    public void setGroupid(int groupid) {
        this.groupid = groupid;
    }

    public String getThumbsrc() {
        return thumbsrc;
    }

    public FoodData getData() {
        return data;
    }

    public void setData(FoodData data) {
        this.data = data;
    }

    public FoodDescription getDescription() {
        return description;
    }

    public void setDescription(FoodDescription description) {
        this.description = description;
    }

    public void setThumbsrc(String thumbsrc) {
        this.thumbsrc = thumbsrc;
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append("Item [id=");
        builder.append(id);
        builder.append(data);
        builder.append(description);
        builder.append("]");
        return builder.toString();
    }

    public String getUnit() {
        return getData().getAmount_measuring_system()
                .replaceAll(".*\\(", "").replaceAll("\\).*", "");
    }
}
