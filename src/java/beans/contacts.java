
package beans;

public class contacts {
   private int c_id;
   private String c_name,c_email,c_message,created_at;

    public contacts() {
    }

    public contacts(int c_id, String c_name, String c_email, String c_message, String created_at) {
        this.c_id = c_id;
        this.c_name = c_name;
        this.c_email = c_email;
        this.c_message = c_message;
        this.created_at = created_at;
    }

    public int getC_id() {
        return c_id;
    }

    public void setC_id(int c_id) {
        this.c_id = c_id;
    }

    public String getC_name() {
        return c_name;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }

    public String getC_email() {
        return c_email;
    }

    public void setC_email(String c_email) {
        this.c_email = c_email;
    }

    public String getC_message() {
        return c_message;
    }

    public void setC_message(String c_message) {
        this.c_message = c_message;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    @Override
    public String toString() {
        return "contacts{" + "c_id=" + c_id + ", c_name=" + c_name + ", c_email=" + c_email + ", c_message=" + c_message + ", created_at=" + created_at + '}';
    }
   
   
   
}
