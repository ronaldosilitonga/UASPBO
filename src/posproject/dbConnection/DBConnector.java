/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package posproject.dbConnection;

import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author NALDO
 */
public class DBConnector {
    
    
    public static Connection connection;
    
    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String DB_URL = "jdbc:mysql://localhost/pos_db";
    private static final String USER = "root";
    private static final String PASSWORD = "";
    
    public static void initDBConnection()
    {
        try {
            Class.forName(JDBC_DRIVER);
            
            connection = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            
            if (connection!= null) {
                System.out.println("Connection is established");
            }
        } 
        catch(Exception ex) {
            System.out.println(ex);
        }
            
    }
    
}
