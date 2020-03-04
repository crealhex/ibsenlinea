package com.ibs.enlinea.dao.mysql;

import com.ibs.enlinea.dao.interfaces.StudentDAO;
import com.ibs.enlinea.models.Student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentMySQL implements StudentDAO {

    private final String UPDATE = "UPDATE student SET name = ?, number = ?, email = ?, password = ?, age = ? WHERE id = ?";
    private final String DELETE = "DELETE FROM student WHERE id = ?";

    private final String GET_ALL = "SELECT id, name, number, email, age FROM student";

    private Connection conn;
    private PreparedStatement sentence;
    private ResultSet result;

    @Override
    public void create(Student student) throws SQLException {

        String CREATE = "INSERT INTO student (id, name, number, email, password, age) VALUES (?, ?, ?, ?, ?, ?)";
        System.out.println(student);

        try {
            conn = new StartMySQL().connect();
            sentence = conn.prepareStatement(CREATE);

            sentence.setString(1, student.getId());
            sentence.setString(2, student.getName());
            sentence.setString(3, student.getNumber());
            sentence.setString(4, student.getEmail());
            sentence.setString(5, student.getPassword());
            sentence.setByte(6, student.getAge());

            if (sentence.executeUpdate() == 0) {
                throw new SQLException("There's nothing inserted");
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
            e.printStackTrace();

        } finally {
            close();
        }
    }

    @Override
    public void update(Student student) {
        try {
            conn = new StartMySQL().connect();
            sentence = conn.prepareStatement(UPDATE);

            sentence.setString(1, student.getName());
            sentence.setString(2, student.getNumber());
            sentence.setString(3, student.getEmail());
            sentence.setString(4, student.getPassword());
            sentence.setByte(5, student.getAge());
            sentence.setString(6, student.getId());

            if (sentence.executeUpdate() == 0) {
                throw new SQLException("Update failed");
            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            close();
        }
    }

    @Override
    public void delete(Student student) {
        try {
            conn = new StartMySQL().connect();
            sentence = conn.prepareStatement(DELETE);
            sentence.setString(1, student.getId());

            if (sentence.executeUpdate() == 0) {
                throw new SQLException("Delete failed");
            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            close();
        }
    }

    @Override
    public List<Student> getAll() {
        List<Student> students = new ArrayList<>();
        try {
            conn = new StartMySQL().connect();
            sentence = conn.prepareStatement(GET_ALL);
            result = sentence.executeQuery();

            while (result.next()) {
                Student student = new Student();

                student.setId(result.getString("id"));
                student.setName(result.getString("name"));
                student.setNumber(result.getString("number"));
                student.setEmail(result.getString("email"));
                student.setAge(result.getByte("age"));

                students.add(student);
            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            close();
        }
        return students;
    }

    @Override
    public Student getById(String code) {

        String GET_BY_ID = "SELECT id, name, number, email, age FROM student WHERE id = ?";

        Student student = null;
        try {
            conn = new StartMySQL().connect();
            sentence = conn.prepareStatement(GET_BY_ID);
            sentence.setString(1, code);
            result = sentence.executeQuery();

            if (result.next()) {
                student = new Student();
                student.setId(result.getString("id"));
                student.setName(result.getString("name"));
                student.setNumber(result.getString("number"));
                student.setEmail(result.getString("email"));
                student.setAge(result.getByte("age"));
            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            close();
        }
        return student;
    }

    @Override
    public Student getByEmail(String email) {

        String GET_BY_ID = "SELECT id, email, password FROM student WHERE email = ?";

        Student student = null;
        try {
            conn = new StartMySQL().connect();
            sentence = conn.prepareStatement(GET_BY_ID);
            sentence.setString(1, email);
            result = sentence.executeQuery();

            if (result.next()) {
                student = new Student();
                student.setId(result.getString("id"));
//                student.setName(result.getString("name"));
//                student.setNumber(result.getString("number"));
                student.setEmail(result.getString("email"));
                student.setPassword(result.getString("password"));
//                student.setAge(result.getByte("age"));
            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            close();
        }
        return student;
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
