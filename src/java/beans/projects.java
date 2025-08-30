
package beans;

public class projects {
    private int p_id;
    private String p_title,p_description,p_link,p_created_at;

    public projects() {
    }

    public projects(int p_id, String p_title, String p_description, String p_link, String p_created_at) {
        this.p_id = p_id;
        this.p_title = p_title;
        this.p_description = p_description;
        this.p_link = p_link;
        this.p_created_at = p_created_at;
    }

    public int getP_id() {
        return p_id;
    }

    public void setP_id(int p_id) {
        this.p_id = p_id;
    }

    public String getP_title() {
        return p_title;
    }

    public void setP_title(String p_title) {
        this.p_title = p_title;
    }

    public String getP_description() {
        return p_description;
    }

    public void setP_description(String p_description) {
        this.p_description = p_description;
    }

    public String getP_link() {
        return p_link;
    }

    public void setP_link(String p_link) {
        this.p_link = p_link;
    }

    public String getP_created_at() {
        return p_created_at;
    }

    public void setP_created_at(String p_created_at) {
        this.p_created_at = p_created_at;
    }

    @Override
    public String toString() {
        return "projects{" + "p_id=" + p_id + ", p_title=" + p_title + ", p_description=" + p_description + ", p_link=" + p_link + ", p_created_at=" + p_created_at + '}';
    }
    
    
}
