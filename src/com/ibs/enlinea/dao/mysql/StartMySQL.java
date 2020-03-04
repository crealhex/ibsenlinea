package com.ibs.enlinea.dao.mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class StartMySQL {

    Connection connect() throws SQLException {

        Connection conn = null;
        final String URL = "jdbc:mysql://localhost/db_ibsenlinea";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(URL, "root", "");

        } catch (ClassNotFoundException e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        return conn;
    }

}
