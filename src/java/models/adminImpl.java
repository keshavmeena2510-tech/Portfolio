
package models;

import beans.admin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class adminImpl implements adminI{
    private Connection con;
    private PreparedStatement pstmt;
    private ResultSet rs;
    private admin ad;
    private int result;
    private ArrayList<admin> al;

    @Override
    public int addAdmin(admin beans) throws SQLException {
        con=MyConnection.getCon();
        pstmt=con.prepareStatement(SqlConstants.addAdmin);
        pstmt.setString(1,beans.getA_username());
        pstmt.setString(2, beans.getA_Password());
        result=pstmt.executeUpdate();
        pstmt.close();
        con.close();
        return result;
     }

    @Override
    public int updateAdmin(admin beans) throws SQLException {
         con=MyConnection.getCon();
        pstmt=con.prepareStatement(SqlConstants.updateAdmin);
        pstmt.setString(1,beans.getA_username());
        pstmt.setString(2, beans.getA_Password());
        pstmt.setInt(3, beans.getA_id());
        result=pstmt.executeUpdate();
        pstmt.close();
        con.close();
        return result;
     }

    @Override
    public int generateKey() throws SQLException {
        int key=0;
        con=MyConnection.getCon();
        pstmt=con.prepareStatement(SqlConstants.PrimaryKeyAdmin);
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
    public int deleteAdmin(int a_id) throws SQLException {
        con=MyConnection.getCon();
        pstmt=con.prepareStatement(SqlConstants.deleteAdmin);
        pstmt.setInt(1, a_id);
        result=pstmt.executeUpdate();
        pstmt.close();
        con.close();
        return result;
     }

    @Override
    public admin getAdminById(int a_id) throws SQLException {
       con=MyConnection.getCon();
        pstmt=con.prepareStatement(SqlConstants.getAdminById);
        pstmt.setInt(1, a_id);
        rs=pstmt.executeQuery();
        while(rs.next())
        {
            ad=new admin();
            ad.setA_id(rs.getInt("a_id"));
            ad.setA_username(rs.getString("a_username"));
            ad.setA_Password(rs.getString("a_password"));
            
        }
        rs.close();
        pstmt.close();
        con.close(); 
        return ad;
     }

    @Override
    public ArrayList<admin> getAllAdmin() throws SQLException {
        con=MyConnection.getCon();
        pstmt=con.prepareStatement(SqlConstants.getAllAdmin);
        rs=pstmt.executeQuery();
        al=new ArrayList<>();
        while(rs.next())
        {
           ad=new admin();
            ad.setA_id(rs.getInt("a_id"));
            ad.setA_username(rs.getString("a_username"));
            ad.setA_Password(rs.getString("a_password"));
            al.add(ad);
        }
        rs.close();
        pstmt.close();
        con.close();
        return al;
     }
}
