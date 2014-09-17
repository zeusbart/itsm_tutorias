/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bd;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Supervisión
 */
public class conectar {
    public Connection getConnection() throws Exception {
    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://localhost:3306/dbitsm";
    return DriverManager.getConnection(url, "root", "1");
  }

}
