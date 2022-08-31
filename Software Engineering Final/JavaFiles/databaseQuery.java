/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ourscheduler;
import java.sql.*;

/**
 * A Java MySQL SELECT statement example.
 * Demonstrates the use of a SQL SELECT statement against a
 * MySQL database, called from a Java program.
 * 
 
 */
public class databaseQuery
{

  public static Connection getConnection()
  {
    Connection conn = null;
    try
    {
      // create our mysql database connection
      String myDriver = "com.mysql.jdbc.Driver";
      String myUrl = "jdbc:mysql://localhost/class_scheduler";
      Class.forName(myDriver);
      conn = DriverManager.getConnection(myUrl, "root", "");
      
      
    }
    catch (Exception e)
    {
      System.err.println("Got an exception! ");
      System.err.println(e.getMessage());
    }
    return conn;
  }
}