package at.fhooe.mc.foodlog.model;

import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

import java.io.Serializable;

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
    /*<id>123</id>
    <markedfordeletion>0</markedfordeletion>
	<thumbsrc><![CDATA[http://fddb.info/static/db/108/GAZ1N93B7WDD5NPJQB1DRHP9_205x136.jpg]]></thumbsrc>
	<foodrank>6.9051</foodrank>
	<ratings_num>6</ratings_num>
	<ratings_avg_perc>83</ratings_avg_perc>
	<producerid>6</producerid>
	<groupid>29</groupid>
	<productcode_ean><![CDATA[]]></productcode_ean>
	<datasource>1</datasource>*/
}
