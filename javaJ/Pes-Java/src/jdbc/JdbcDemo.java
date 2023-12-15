package jdbc;

import java.sql.*;
public class JdbcDemo {

    public final static String dbUrl = "jdbc:mysql://localhost:3306/pessem3";  // Note: Added port number 3306
    public final static String user = "root";
    public final static  String pass = "root";

    public static void main(String[] args) {
        String query = "select * from ACTING";

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the connection
            try (Connection conn = DriverManager.getConnection(dbUrl, user, pass);
                 Statement stmt = conn.createStatement();
                 ResultSet resultSet = stmt.executeQuery(query)) {

                System.out.printf("working");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
