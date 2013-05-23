package at.fhooe.mc.foodlog.model;

import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

import java.io.Serializable;

/**
 * A Container Class which stores food description is used by the XML Persister
 */
@Root(strict = false)
public class FoodDescription implements Serializable {
    /**
     *
     */
    private static final long serialVersionUID = 4006876234260317192L;
    @Element(required = false)
    String name;
    @Element(required = false)
    String option;
    @Element(required = false)
    String producer;
    @Element(required = false)
    String group;
    @Element(required = false)
    String imagedescription;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getOption() {
        return option;
    }

    public void setOption(String option) {
        this.option = option;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    public String getImagedescription() {
        return imagedescription;
    }

    public void setImagedescription(String imagedescription) {
        this.imagedescription = imagedescription;
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append("FoodDescription [name=");
        builder.append(name);
        builder.append(", group=");
        builder.append(group);
        builder.append("]");
        return builder.toString();
    }

}
