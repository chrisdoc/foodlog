package at.fhooe.mc.foodlog.model;

import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

import java.io.Serializable;
import java.util.List;
/**
 * A container class which is used for deserialization
 */
@Root(strict = false)
public class SearchResult implements Serializable {
    /**
     *
     */
    private static final long serialVersionUID = 1746951591117250130L;
    @ElementList(name = "item", inline = true)
    List<Item> items;

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    @Override
    public String toString() {
        StringBuffer sb = new StringBuffer();
        for (Item item : items) {
            sb.append(item);
            sb.append("\n");

        }
        // TODO Auto-generated method stub
        return sb.toString();
    }
}
