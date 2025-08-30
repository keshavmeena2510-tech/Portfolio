
package models;

import beans.contacts;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class contactsImpl implements contactsI{
    private Connection con;
    private PreparedStatement pstmt;
    private ResultSet rs;
    private int result;
    private contacts cn;
    private ArrayList<contacts>al;

    @Override
    public int addContacts(contacts beans) throws SQLException {
        con=MyConnection.getCon();
        pstmt=con.prepareStatement(SqlConstants.addContacts);
        pstmt.setString(1, beans.getC_name());
        pstmt.setString(2, beans.getC_email());
        pstmt.setString(3,beans.getC_message());
        pstmt.setString(4, beans.getCreated_at());
        result=pstmt.executeUpdate();
        pstmt.close();
        con.close();
        return result;
     }

    @Override
    public int updateContacts(contacts beans) throws SQLException {
        con=MyConnection.getCon();
        pstmt=con.prepareStatement(SqlConstants.updateContacts);
        pstmt.setString(1, beans.getC_name());
        pstmt.setString(2, beans.getC_email());
        pstmt.setString(3,beans.getC_message());
        pstmt.setString(4, beans.getCreated_at());
        pstmt.setInt(5, beans.getC_id());
        result=pstmt.executeUpdate();
        pstmt.close();
        con.close();
        return result;
     }

    @Override
    public int generateKey() throws SQLException {
         int key=0;
        con=MyConnection.getCon();
        pstmt=con.prepareStatement(SqlConstants.PrimaryKeyContacts);
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
    public int deleteContacts(int c_id) throws SQLException {
        con=MyConnection.getCon();
        pstmt=con.prepareStatement(SqlConstants.deleteContacts);
        pstmt.setInt(1, c_id);
        result=pstmt.executeUpdate();
        pstmt.close();
        con.close();
        return result;
     }

    @Override
    public contacts getContactsById(int c_id) throws SQLException {
        con=MyConnection.getCon();
        pstmt=con.prepareStatement(SqlConstants.getContactsById);
        pstmt.setInt(1, c_id);
         rs=pstmt.executeQuery();
        while(rs.next())
        {
            cn=new contacts();
            cn.setC_id(rs.getInt("c_id"));
            cn.setC_name(rs.getString("c_name"));
            cn.setC_email(rs.getString("c_email"));
            cn.setC_message(rs.getString("c_message"));
            cn.setCreated_at(rs.getString("created_at"));
        }
        rs.close();
        pstmt.close();
        con.close(); 
        return cn;
     }

    @Override
    public ArrayList<contacts> getAllContacts() throws SQLException {
        con=MyConnection.getCon();
        pstmt=con.prepareStatement(SqlConstants.getAllContacts);
          rs=pstmt.executeQuery();
          al=new ArrayList<>();
        while(rs.next())
        {
            cn=new contacts();
            cn.setC_id(rs.getInt("c_id"));
            cn.setC_name(rs.getString("c_name"));
            cn.setC_email(rs.getString("c_email"));
            cn.setC_message(rs.getString("c_message"));
            cn.setCreated_at(rs.getString("created_at"));
            al.add(cn);
        }
        rs.close();
        pstmt.close();
        con.close(); 
        return al;
     }
    
}
