/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Hung Nguyen Manh
 */
public class Connector {

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String url = "jdbc:sqlserver://localhost:2222;database=ngan_hang;"; //integratedSecurity=true;
        return DriverManager.getConnection(url, "admin", "admin");
    }

    public static Connection getConnection1() throws ClassNotFoundException, SQLException {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String url = "jdbc:sqlserver://localhost:2222;database=ngan_hang_1;"; //integratedSecurity=true;
        return DriverManager.getConnection(url, "admin", "admin");
    }
}
