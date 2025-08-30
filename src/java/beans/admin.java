
package beans;

public class admin {
    private int a_id;
    private String a_username,a_password;
    private String password;
    
    public admin()
    {
        
    }

    public admin(int a_id, String a_username, String a_password) {
        this.a_id = a_id;
        this.a_username = a_username;
        this.a_password =a_password;
    }

    public int getA_id() {
        return a_id;
    }

    public void setA_id(int a_id) {
        this.a_id = a_id;
    }

    public String getA_username() {
        return a_username;
    }

    public void setA_username(String a_username) {
        this.a_username = a_username;
    }

    public String getA_Password() {
        return password;
    }

    public void setA_Password(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "admin{" + "a_id=" + a_id + ", a_username=" + a_username + ", a_password=" + password + '}';
    }
    
}
