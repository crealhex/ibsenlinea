package com.ibs.enlinea.dao.psql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class StartPSQL {

    Connection connect() throws SQLException {

        Connection conn;
        final String URL = "jdbc:postgresql://localhost/db_ibsenlinea";
        conn = DriverManager.getConnection(URL, "", "");

        return conn;

    }

}
