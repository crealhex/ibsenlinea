package com.ibs.enlinea.dao.mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class StartMySQL {

    Connection connect() throws SQLException {
        Connection conn;
        final String URL = "jdbc:mysql://localhost/db_ibsenlinea";
        conn = DriverManager.getConnection(URL, "root", "");
        return conn;
    }

}
