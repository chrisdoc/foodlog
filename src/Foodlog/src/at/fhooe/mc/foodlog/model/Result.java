package at.fhooe.mc.foodlog.model;

import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

import java.io.Serializable;

@Root(strict = false)
public class Result implements Serializable {

    /**
     *
     */
    private static final long serialVersionUID = -4026237850840577313L;
    @Element
    public Item item;

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append("Result [item=");
        builder.append(item);
        builder.append("]");
        return builder.toString();
    }

    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }


}
