
package models;

import beans.messages;
import java.sql.SQLException;
import java.util.ArrayList;

public interface messagesI {
    public int addMessages(messages beans)throws SQLException;
    public int updateMessages(messages beans)throws SQLException;
     public int generateKey() throws SQLException; 
     public int deleteMessages(int m_id)throws SQLException;
     public messages getMessagesById(int m_id)throws SQLException;
     public ArrayList<messages>getAllMessages()throws SQLException;
}
