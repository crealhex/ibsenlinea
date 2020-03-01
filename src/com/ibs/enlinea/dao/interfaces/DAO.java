package com.ibs.enlinea.dao.interfaces;

import java.util.List;

public interface DAO<Index, Object> {

    void create(Object object);

    List<Object> getAll();

    void update(Object object);

    void delete(Object object);

    Object getById(Index index);

}
