package Modelo;


public class Listseries{
    int id;
    String title;
    String description;

    public Listseries() {
    }

    public Listseries(String title, String description) {
        this.title = title;
        this.description = description;
    }

    /* id */
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    /* username */
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    /* password */
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
}