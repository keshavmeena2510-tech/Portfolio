
package models;

import beans.projects;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class projectsImpl implements projectsI{
     private Connection con;
    private PreparedStatement pstmt;
    private ResultSet rs;
    private int result;
    private projects pd;
    private ArrayList<projects>al;

    @Override
    public int addProjects(projects beans) throws SQLException {
        con=MyConnection.getCon();
        pstmt=con.prepareStatement(SqlConstants.addProjects);
        pstmt.setString(1,beans.getP_title());
        pstmt.setString(2, beans.getP_description());
        pstmt.setString(3,beans.getP_link());
        pstmt.setString(4,beans.getP_created_at());
        result=pstmt.executeUpdate();
        pstmt.close();
        con.close();
        return result;
     }

    @Override
    public int updateProjects(projects beans) throws SQLException {
        con=MyConnection.getCon();
        pstmt=con.prepareStatement(SqlConstants.updateProjects);
        pstmt.setString(1,beans.getP_title());
        pstmt.setString(2, beans.getP_description());
        pstmt.setString(3,beans.getP_link());
        pstmt.setString(4,beans.getP_created_at());
        pstmt.setInt(5,beans.getP_id());
        result=pstmt.executeUpdate();
        pstmt.close();
        con.close();
        return result;
     }

    @Override
    public int generateKey() throws SQLException {
         int key=0;
        con=MyConnection.getCon();
        pstmt=con.prepareStatement(SqlConstants.PrimaryKeyProjects);
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
    public int deleteProjects(int p_id) throws SQLException {
       con=MyConnection.getCon();
        pstmt=con.prepareStatement(SqlConstants.deleteProjects);
        pstmt.setInt(1, p_id);
        result=pstmt.executeUpdate();
        pstmt.close();
        con.close();
        return result;
     }

    @Override
    public projects getProjectsById(int p_id) throws SQLException {
         con=MyConnection.getCon();
        pstmt=con.prepareStatement(SqlConstants.getProjectsById);
        pstmt.setInt(1, p_id);
        rs=pstmt.executeQuery();
        while(rs.next())
        {
           pd=new projects();
           pd.setP_id(rs.getInt("p_id"));
           pd.setP_title(rs.getString("p_title"));
           pd.setP_description(rs.getString("p_description"));
           pd.setP_link(rs.getString("p_link"));
           pd.setP_created_at(rs.getString("p_created_at"));
          
        }
        rs.close();
        pstmt.close();
        con.close();
        return pd;
     }

    @Override
    public ArrayList<projects> getAllProjects() throws SQLException {
        con=MyConnection.getCon();
        pstmt=con.prepareStatement(SqlConstants.getAllProjects);
        rs=pstmt.executeQuery();
         al=new ArrayList<>();
        while(rs.next())
        {
           pd=new projects();
           pd.setP_id(rs.getInt("p_id"));
           pd.setP_title(rs.getString("p_title"));
           pd.setP_description(rs.getString("p_description"));
           pd.setP_link(rs.getString("p_link"));
           pd.setP_created_at(rs.getString("p_created_at"));
           al.add(pd);
        }
        rs.close();
        pstmt.close();
        con.close();
        return al;
    }
}
