/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author swarnim
 */
public class DbManager {
    Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    public DbManager() throws ClassNotFoundException, SQLException    //constructor
    {
        Class.forName("com.mysql.jdbc.Driver");  //checked exception
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/karamdb","root","");   //checked exception
                
    }
    public boolean nonQuery(String query) throws SQLException
    {
       ps=con.prepareStatement(query);  //exception
       if(ps.executeUpdate()>0)
           return true;
       else
           return false;
       
    }
    public ResultSet selectQuery(String query) throws SQLException
    {
        ps=con.prepareStatement(query);
        rs=ps.executeQuery();
        return rs;
        
    }
   public String getDate()
   {
      Date d=new Date();
     SimpleDateFormat df=new SimpleDateFormat("dd/MM/YYYY");
     return (df.format(d));
   }

  
}
