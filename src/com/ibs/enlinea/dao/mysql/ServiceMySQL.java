package com.ibs.enlinea.dao.mysql;

import com.ibs.enlinea.dao.interfaces.ServiceDAO;
import com.ibs.enlinea.models.Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ServiceMySQL implements ServiceDAO {

    private Connection conn;
    private PreparedStatement sentence;
    private ResultSet result;

    @Override
    public void create(Service service) {
        // TODO ServiceMySQL().create()
    }

    @Override
    public List<Service> getAll() {
        // TODO ServiceMySQL().getAll()
        return null;
    }

    @Override
    public List<Service> getAllByStudent(String code) {

        final String GET_ALL_BY_STUDENT = "SELECT id, type, started_at, amount, dues, payday FROM service WHERE id_student = ?";

        List<Service> services = new ArrayList<>();
        try {
            conn = new StartMySQL().connect();
            sentence = conn.prepareStatement(GET_ALL_BY_STUDENT);
            sentence.setString(1, code);
            result = sentence.executeQuery();

            while (result.next()) {
                Service service = new Service();

                service.setId(result.getInt("id"));
                service.setIdStudent(code);
                service.setType(result.getString("type"));
                service.setStartedDate(result.getDate("started_at"));
                service.setAmount(result.getFloat("amount"));
                service.setDues(result.getByte("dues"));
                service.setPayday(result.getByte("payday"));

                services.add(service);
            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            close();
        }
        return services;
    }

    @Override
    public void update(Service service) {

        final String UPDATE = "UPDATE service SET amount = ?, dues = ? WHERE id = ?";

        try {
            conn = new StartMySQL().connect();
            sentence = conn.prepareStatement(UPDATE);

            sentence.setFloat(1, service.getAmount());
            sentence.setByte(2, service.getDues());
            sentence.setInt(3, service.getId());

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
    public void delete(Service service) {

        final String DELETE = "DELETE FROM service WHERE id = ?";

        try {
            conn = new StartMySQL().connect();
            sentence = conn.prepareStatement(DELETE);

            if (sentence.executeUpdate() == 0) {
                throw new SQLException("Delete Failed");
            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            close();
        }
    }

    @Override
    public Service getById(Integer integer) {
        // TODO ServiceMySQL().getById()
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
