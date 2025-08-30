
package models;

import beans.admin;
import java.sql.SQLException;
import java.util.ArrayList;

public interface adminI {
    public int addAdmin(admin beans)throws SQLException;
    public int updateAdmin(admin beans)throws SQLException;
     public int generateKey() throws SQLException; 
     public int deleteAdmin(int a_id)throws SQLException;
     public admin getAdminById(int a_id)throws SQLException;
     public ArrayList<admin>getAllAdmin()throws SQLException;
}
