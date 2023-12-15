package org.example;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Main {
    static final String DB_URL = "jdbc:mysql://localhost/jwt-auth";
    static final String USER = "root";
    static final String PASS = "root";
    static final String QUERY = "SELECT * FROM demo_java";

    public static void main(String[] args) throws SQLException {
        // Open a connection
        try {

            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);

//            Statement statement = conn.createStatement();
//            statement.execute("create table mama_mia(id int, name varchar(30))");

//            Statement stmt = conn.createStatement();
//            ResultSet rs = stmt.executeQuery(QUERY);
//
//            // Extract data from result set
//            while (rs.next()) {
//                // Retrieve by column name
//                System.out.printf("id \t%d title is \t%-15s year is \t%d role is \t%s\n",
//                        rs.getInt("ACTOR_ID"),
//                        rs.getString("TITLE"),
//                        rs.getInt("YEAR_OF_RELEASE"),
//                        rs.getString("ROLE")
//                );
//                System.out.println(rs.previous());
//            }


//            //prepared statement
//            Statement statement = conn.createStatement();
//            PreparedStatement ps = conn.prepareStatement("insert into demo_java values(?,?)");
//            ps.setInt(1, 1);
//            ps.setString(2, "pradeep");
//            ps.executeUpdate();


//            Statement statement =     conn.createStatement();
//            ResultSet resultSet = statement.executeQuery("select * from demo_java");
//            while (resultSet.next()){
//                System.out.printf("id is :\t%10d \nname is :\t%10s", resultSet.getInt("id"),
//                        resultSet.getString( "name"));
//            }

            DQL dql = new DQL();
            dql.listUser(conn).forEach((data) -> System.out.println(data.id+" "+data.name));

            Dml dml = new Dml();
            List<user> users = new ArrayList<>();
            users.add(new user(2, "rach"));
            users.add(new user(3, "nav"));
            users.add(new user(4, "anna"));
            users.add(new user(5, "pav"));
            users.add(new user(6, "bish"));

            dml.addUsers(conn, users);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}