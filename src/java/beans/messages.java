
package beans;

public class messages {
   private int m_id;
   private String m_name,m_email,message;

    public messages() {
    }

    public messages(int m_id, String m_name, String m_email, String message) {
        this.m_id = m_id;
        this.m_name = m_name;
        this.m_email = m_email;
        this.message = message;
    }

    public int getM_id() {
        return m_id;
    }

    public void setM_id(int m_id) {
        this.m_id = m_id;
    }

    public String getM_name() {
        return m_name;
    }

    public void setM_name(String m_name) {
        this.m_name = m_name;
    }

    public String getM_email() {
        return m_email;
    }

    public void setM_email(String m_email) {
        this.m_email = m_email;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String toString() {
        return "messages{" + "m_id=" + m_id + ", m_name=" + m_name + ", m_email=" + m_email + ", message=" + message + '}';
    }
   
   
}
