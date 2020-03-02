package com.ibs.enlinea.dao.mysql;

import com.ibs.enlinea.dao.interfaces.PaymentDAO;
import com.ibs.enlinea.models.Payment;
import com.ibs.enlinea.models.Service;
import com.ibs.enlinea.models.Student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PaymentMySQL implements PaymentDAO {

    private Connection conn;
    private PreparedStatement sentence;
    private ResultSet result;

    @Override
    public void create(Payment payment) {

        final String CREATE = "INSERT INTO payment (id_student, id_service, card_number, card_date, card_safecode) VALUES (?, ?, ?, ?, ?)";

        try {
            conn = new StartMySQL().connect();
            sentence = conn.prepareStatement(CREATE);
            sentence.setString(1, payment.getIdStudent());
            sentence.setInt(2, payment.getIdService());
            sentence.setString(3, payment.getCardNumber());
            sentence.setString(4, payment.getCardDate());
            sentence.setShort(5, payment.getCardSafecode());

            if (sentence.executeUpdate() == 0) {
                throw new SQLException("Create Failed");
            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            close();
        }
    }

    @Override
    public void update(Payment payment) {
        // TODO update()
    }

    @Override
    public void delete(Payment payment) {
        // TODO delete()
    }

    @Override
    public List<Payment> getAll() {
        return null; // TODO getAll()
    }

    @Override
    public List<Payment> getAllBy(Student student) {

        final String ALL_OF_STUDENT = "SELECT id, id_student, id_service, paid_at, card_number, card_date, card_safecode FROM payment WHERE id_student = ?";

        List<Payment> payments = new ArrayList<>();
        try {
            conn = new StartMySQL().connect();
            sentence = conn.prepareStatement(ALL_OF_STUDENT);
            sentence.setString(1, student.getId());
            result = sentence.executeQuery();

            while (result.next()) {
                Payment payment = new Payment();
                payment.setId(result.getInt("id"));
                payment.setIdStudent(result.getString("id_student"));
                payment.setIdService(result.getInt("id_service"));
                payment.setPaidAt(result.getDate("paid_at"));
                payment.setCardNumber(result.getString("card_number"));
                payment.setCardDate(result.getString("card_date"));
                payment.setCardSafecode(result.getShort("card_safecode"));
                payments.add(payment);
            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            close();
        }
        return payments;
    }

    @Override
    public List<Payment> getAllBy(Service service) {

        final String ALL_OF_STUDENT = "SELECT id, id_student, id_service, paid_at, card_number, card_date, card_safecode FROM payment WHERE id_service = ?";

        List<Payment> payments = new ArrayList<>();
        try {
            conn = new StartMySQL().connect();
            sentence = conn.prepareStatement(ALL_OF_STUDENT);
            sentence.setInt(1, service.getId());
            result = sentence.executeQuery();

            while (result.next()) {
                Payment payment = new Payment();
                payment.setId(result.getInt("id"));
                payment.setIdStudent(result.getString("id_student"));
                payment.setIdService(result.getInt("id_service"));
                payment.setPaidAt(result.getDate("paid_at"));
                payment.setCardNumber(result.getString("card_number"));
                payment.setCardDate(result.getString("card_date"));
                payment.setCardSafecode(result.getShort("card_safecode"));
                payments.add(payment);
            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            close();
        }
        return payments;
    }

    @Override
    public Payment getById(Integer code) {

        final String GET_BY_ID = "SELECT id, id_student, id_service, paid_at, card_number, card_date, card_safecode FROM payment WHERE id = ?";

        Payment payment = null;
        try {
            conn = new StartMySQL().connect();
            sentence = conn.prepareStatement(GET_BY_ID);
            sentence.setInt(1, code);
            result = sentence.executeQuery();

            if (result.next()) {
                 payment = new Payment();
                 payment.setId(result.getInt("id"));
                 payment.setIdStudent(result.getString("id_student"));
                 payment.setIdService(result.getInt("id_service"));
                 payment.setPaidAt(result.getDate("paid_at"));
                 payment.setCardNumber(result.getString("card_number"));
                 payment.setCardDate(result.getString("card_date"));
                 payment.setCardSafecode(result.getShort("card_safecode"));
            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            close();
        }
        return payment;
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
