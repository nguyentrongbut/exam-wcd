package com.example.mvc2bootstrapcrud.da;

import com.example.mvc2bootstrapcrud.entity.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    private String jdbcURL = "jdbc:mysql://localhost:3306/employee";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";

    private static final String INSERT_USERS_SQL = "INSERT INTO employee" + "(name, birthday,address, position, department) VALUES" + "(?, ?, ?, ?, ?);";
    private static final String SELECT_USER_BY_ID = "SELECT id,name, birthday,address, position, department FROM employee WHERE id = ?";
    private static final String SELECT_ALL_USERS = "SELECT * FROM employee";
    private static final String DELETE_USERS_SQL = "DELETE FROM employee WHERE id = ?";
    private static final String UPDATE_USERS_SQL = "UPDATE employee set name = ?, birthday = ?, address =?, position =?, department =? WHERE id = ?;";

    public UserDao() {}

    protected Connection getConnection() throws ClassNotFoundException, SQLException {
        Connection connection = null;
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        return connection;
    }

    public void insertUser(User user) throws SQLException, ClassNotFoundException {
        Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);
        preparedStatement.setString(1, user.getName());
        preparedStatement.setString(2, user.getBirthday());
        preparedStatement.setString(3, user.getAddress());
        preparedStatement.setString(4, user.getPosition());
        preparedStatement.setString(5, user.getDepartment());
        preparedStatement.executeUpdate();
    }

    public User selectUser(int id) throws SQLException, ClassNotFoundException {
        User user = null;
        Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);
        preparedStatement.setInt(1, id);
        ResultSet rs = preparedStatement.executeQuery();
        while (rs.next()) {
            String name = rs.getString("name");
            String birthday = rs.getString("birthday");
            String address = rs.getString("address");
            String position = rs.getString("position");
            String department = rs.getString("department");

            user = new User(id, name, birthday, address, position, department);
        }
        return user;
    }

    public List <User> selectAllUsers() throws SQLException, ClassNotFoundException {
        List <User> users = new ArrayList<>() ;
        Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);
        ResultSet rs = preparedStatement.executeQuery();
        while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            String birthday = rs.getString("birthday");
            String address = rs.getString("address");
            String position = rs.getString("position");
            String department = rs.getString("department");
            users.add(new User(id, name, birthday, address, position, department));
        }
        return users;
    }

}
