package org.example;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

public class Dml {
    public void addUsers(Connection conn, List<user> users) throws SQLException{
        String query = "insert into demo_java values(?,?)";
        PreparedStatement preparedStatement = conn.prepareStatement(query);

        users.forEach((data) -> {
                try {
                    preparedStatement.setInt(1, data.id);
                    preparedStatement.setString(2, data.name);
                    preparedStatement.addBatch();
                }catch (SQLException e){
                    e.printStackTrace();
                }finally {
                    String deleteQuery = "DELETE FROM demo_java WHERE id IN " +
                            "(SELECT id FROM demo_java GROUP BY name HAVING COUNT(name) > 2 );\n";
                    try {
                        Statement statement = conn.createStatement();
                        statement.execute(deleteQuery);
                        preparedStatement.executeBatch();
                    }catch (SQLException e){
                        e.printStackTrace();
                    }
                }
        });
    }

    public void addUser(){}
}
