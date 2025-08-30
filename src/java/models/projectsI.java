
package models;

import beans.projects;
import java.sql.SQLException;
import java.util.ArrayList;

public interface projectsI {
    public int addProjects(projects beans)throws SQLException;
    public int updateProjects(projects beans)throws SQLException;
     public int generateKey() throws SQLException; 
     public int deleteProjects(int p_id)throws SQLException;
     public projects getProjectsById(int p_id)throws SQLException;
     public ArrayList<projects>getAllProjects()throws SQLException;
}
