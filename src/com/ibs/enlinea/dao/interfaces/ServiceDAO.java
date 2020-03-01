package com.ibs.enlinea.dao.interfaces;

import com.ibs.enlinea.models.Service;

import java.util.List;

public interface ServiceDAO extends DAO<Integer, Service> {

    List<Service> getAllByStudent(String code);

}