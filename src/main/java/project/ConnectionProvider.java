package project;
import java.sql.*;

public class ConnectionProvider {
    public static Connection getCon() {
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Corrected URL with a colon before the port
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ospjsp", "root", "hmm362");
            return con;
        } catch (Exception e) {
            // Print the exception message to the console for debugging
            System.out.print(e);
            return null;
        }
    }
}
