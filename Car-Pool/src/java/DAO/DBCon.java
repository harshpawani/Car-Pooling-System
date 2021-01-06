package DAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class DBCon {
    
     static Connection con;
    
    public static Connection getConnection()
    {
        if(con == null)
        {
            String url = "jdbc:mysql://localhost/";
            String dbName = "carpooling";
            String driver = "com.mysql.jdbc.Driver";
            String userName = "root";
            String password = "";
            try
            {
                Class.forName(driver);
                con = (Connection)DriverManager.getConnection(url+dbName,userName,password);
            }
            catch (ClassNotFoundException | SQLException aqle)
            {
            }
        }
            return con;
    }

}