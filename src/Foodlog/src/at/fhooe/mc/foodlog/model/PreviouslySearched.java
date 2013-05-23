package at.fhooe.mc.foodlog.model;

/**
 * A Class which stores previously searched names
 */
public class PreviouslySearched {
    /**
     * the name of the previously searched procduct
     */
    private String name;
    /**
     * the id in the database
     */
    private long id;

    /**
     * Constructor to instantiate a new PreviouslySearched item
     * @param name the name of the previously searched product
     */
    public PreviouslySearched(String name) {
        super();
        this.name = name;
    }

    /**
     * Empty constructor
     */
    public PreviouslySearched() {
        name = "";
    }

    /**
     * gets the name of the previously searched item
     * @return the name of the product
     */
    public String getName() {
        return name;
    }

    /**
     * Sets the name of the previously searched item
     * @param name the new name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * get the id which is stored in the database
     * @return
     */
    public long getId() {
        return id;
    }

    /**
     * sets the id
     * @param id the new id
     */
    public void setId(long id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return name;
    }

}
