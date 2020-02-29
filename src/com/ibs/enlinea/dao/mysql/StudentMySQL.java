package com.ibs.enlinea.dao.mysql;

import com.ibs.enlinea.dao.interfaces.StudentDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class StudentMySQL implements StudentDAO {

    private final String INSERT = "INSERT INTO student (id, name, email, password, age) VALUES (?, ?, ?, md5(?), ?)";
    private final String UPDATE = "UPDATE student SET name = ?, email = ?, password = md5(?), age = ? WHERE id = ?";
    private final String DELETE = "DELETE FROM student WHERE id = ?";

    private final String GET_BY_ID = "SELECT id, name, email, age FROM student WHERE id = ?";
    private final String GET_ALL = "SELECT id, name, email, age FROM student WHERE id = ?";

    private Connection conn;
    private PreparedStatement sentence;
    private ResultSet result;

    @Override
    public void create(Object object) {

    }

    @Override
    public List<Object> read() {
        return null;
    }

    @Override
    public void update(Object object) {

    }

    @Override
    public void delete(Object object) {

    }

    @Override
    public Object getById(String s) {
        return null;
    }

    private void close() {
        try {
            if (result != null) {
                result.close();
            }

            if (sentence != null) {
                sentence.close();
            }

            if (conn != null) {
                conn.close();
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
