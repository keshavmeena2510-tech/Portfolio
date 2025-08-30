
package models;

import beans.contacts;
import java.sql.SQLException;
import java.util.ArrayList;

public interface contactsI {
    public int addContacts(contacts beans)throws SQLException;
    public int updateContacts(contacts beans)throws SQLException;
     public int generateKey() throws SQLException; 
     public int deleteContacts(int c_id)throws SQLException;
     public contacts getContactsById(int c_id)throws SQLException;
     public ArrayList<contacts>getAllContacts()throws SQLException;
}
