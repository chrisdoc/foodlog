package at.fhooe.mc.foodlog.model;

public class PreviouslySearched {
    private String name;
    private long id;

    public PreviouslySearched(String name) {
        super();
        this.name = name;
    }

    public PreviouslySearched() {
        name = "";
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Override
    public String toString() {
        // TODO Auto-generated method stub
        return name;
    }

}
