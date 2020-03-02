package com.ibs.enlinea.dao.interfaces;

import com.ibs.enlinea.models.Payment;
import com.ibs.enlinea.models.Service;
import com.ibs.enlinea.models.Student;

import java.util.List;

public interface PaymentDAO extends DAO<Integer, Payment> {

    List<Payment> getAllBy(Student student);
    List<Payment> getAllBy(Service service);

}
