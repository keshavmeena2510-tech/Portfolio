
package models;

public class SqlConstants {
    public static final String addAdmin="insert into admin(a_username,a_password)values(?,?)";
    public static final String deleteAdmin="delete from admin where a_id=?";
    public static final String PrimaryKeyAdmin="select(a_id + 1) newid from admin where rownum=1 order by a_id";
    public static final String updateAdmin="update admin set a_username=?,a_password=? where a_id=?";
    public static final String getAdminById="select a_id,a_username,a_password from admin where a_id=?";
    public static final String getAllAdmin="select a_id,a_username,a_password from admin";
    
 
    public static final String addContacts="insert into contacts(c_name,c_email,c_message,created_at)values(?,?,?,?)";
    public static final String deleteContacts="delete from contacts where c_id=?";
    public static final String PrimaryKeyContacts="select(c_id + 1) newid from contacts where rownum=1 order by c_id";
    public static final String updateContacts="update contacts set c_name=?,c_email=?,c_message=?,created_at=? where c_id=?";
    public static final String getContactsById="select c_id,c_name,c_email,c_message,created_at from contacts where c_id=?";
    public static final String getAllContacts="select c_id,c_name,c_email,c_message,created_at from contacts";
    
    
     public static final String addProjects="insert into projects(p_title,p_description,p_link,p_created_at)values(?,?,?,?)";
     public static final String deleteProjects="delete from projects where p_id=?";
     public static final String PrimaryKeyProjects="select(p_id + 1) newid from projects where rownum=1 order by p_id";
     public static final String updateProjects="update projects set p_title=?,p_description=?,p_link=?,p_created_at=? where p_id=?";
     public static final String getProjectsById="select p_id,p_title,p_description,p_link,p_created_at from projects where p_id=?";
     public static final String getAllProjects="select p_id,p_title,p_description,p_link,p_created_at from projects";
     
     
     public static final String addMessages="insert into messages(m_name,m_email,message)values(?,?,?)";
    public static final String deleteMessages="delete from messages where m_id=?";
    public static final String PrimaryKeyMessages="select(m_id + 1) newid from messages where rownum=1 order by m_id";
    public static final String updateMessages="update messages set m_name=?,m_email=?,message=? where m_id=?";
    public static final String getMessagesById="select m_id,m_name,m_email,message from messages where m_id=?";
    public static final String getAllMessages="select m_id,m_name,m_email,message from messages";
    
    
}
