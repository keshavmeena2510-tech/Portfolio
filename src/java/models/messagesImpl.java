
package models;

import beans.messages;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class messagesImpl implements messagesI{
     private Connection con;
    private PreparedStatement pstmt;
    private ResultSet rs;
    private messages ms;
    private int result;
    private ArrayList<messages> al;

    @Override
    public int addMessages(messages beans) throws SQLException {
        con=MyConnection.getCon();
        pstmt=con.prepareStatement(SqlConstants.addMessages);
        pstmt.setString(1,beans.getM_name());
        pstmt.setString(2, beans.getM_email());
        pstmt.setString(3, beans.getMessage());
        result=pstmt.executeUpdate();
        pstmt.close();
        con.close();
        return result;
    }

    @Override
    public int updateMessages(messages beans) throws SQLException {
        con=MyConnection.getCon();
        pstmt=con.prepareStatement(SqlConstants.updateMessages);
        pstmt.setString(1,beans.getM_name());
        pstmt.setString(2, beans.getM_email());
        pstmt.setString(3, beans.getMessage());
        pstmt.setInt(4, beans.getM_id());
        result=pstmt.executeUpdate();
        pstmt.close();
        con.close();
        return result;
    }

    @Override
    public int generateKey() throws SQLException {
         int key=0;
        con=MyConnection.getCon();
        pstmt=con.prepareStatement(SqlConstants.PrimaryKeyMessages);
        rs=pstmt.executeQuery();
        while(rs.next())
        {
            key=rs.getInt("newid");
        }
        pstmt.close();
        con.close();
        return key;
     }

    @Override
    public int deleteMessages(int m_id) throws SQLException {
        con=MyConnection.getCon();
        pstmt=con.prepareStatement(SqlConstants.deleteMessages);
        pstmt.setInt(1, m_id);
        result=pstmt.executeUpdate();
        pstmt.close();
        con.close();
        return result;
    }

    @Override
    public messages getMessagesById(int m_id) throws SQLException {
         con=MyConnection.getCon();
        pstmt=con.prepareStatement(SqlConstants.getMessagesById);
        pstmt.setInt(1, m_id);
        rs=pstmt.executeQuery();
        while(rs.next())
        {
            ms=new messages();
            ms.setM_id(rs.getInt("m_id"));
            ms.setM_name(rs.getString("m_name"));
            ms.setM_email(rs.getString("m_email"));
            ms.setMessage(rs.getString("message"));
            
        }
        rs.close();
        pstmt.close();
        con.close(); 
        return ms;
    }

    @Override
    public ArrayList<messages> getAllMessages() throws SQLException {
         con=MyConnection.getCon();
        pstmt=con.prepareStatement(SqlConstants.getAllMessages);
        rs=pstmt.executeQuery();
        al=new ArrayList<>();
        while(rs.next())
        {
            ms=new messages();
            ms.setM_id(rs.getInt("m_id"));
            ms.setM_name(rs.getString("m_name"));
            ms.setM_email(rs.getString("m_email"));
            ms.setMessage(rs.getString("message"));
            al.add(ms);
        }
        rs.close();
        pstmt.close();
        con.close(); 
        return al;
     }
}
