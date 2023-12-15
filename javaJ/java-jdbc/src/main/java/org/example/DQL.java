package org.example;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

class user{

    public user(int id, String name){
        this.id = id;
        this.name = name;
    }

    int id;
    String  name;

}

public class DQL {

    List<user> userList;

    public DQL(){
        this.userList = new ArrayList<>();
    }

    //using result set for dql queries
    public List<user> listUser(Connection conn) throws SQLException {
        //using the same connection object
        Statement statement = conn.createStatement();
        String query = "select * from demo_java";
        //result set to store the returned data
        ResultSet resultSet = statement.executeQuery(query);

        while(resultSet.next()){
            userList.add(new user(resultSet.getInt("id"), resultSet.getString("name")));
        }
        return userList;
    }
}
