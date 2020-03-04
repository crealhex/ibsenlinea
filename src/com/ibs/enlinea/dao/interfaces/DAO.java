package com.ibs.enlinea.dao.interfaces;

import java.sql.SQLException;
import java.util.List;

public interface DAO<Code, Object> {

    void create(Object object) throws SQLException;

    void update(Object object);

    void delete(Object object);

    List<Object> getAll();

    Object getById(Code code);

}
