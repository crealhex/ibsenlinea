/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ibs.enlinea.dao.mysql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * @author dolly
 */
public class consulta extends StartMySQL {

    public boolean autenticacion(String email, String password) {
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String consulta = "select * from student where email = ? and password = ?";
            pst = connect().prepareStatement(consulta);
            pst.setString(1, email);
            pst.setString(2, password);
            rs = pst.executeQuery();

            if (rs.absolute(1)) {
                return true;
            }

        } catch (Exception e) {
            System.out.println("Error" + e);
        } finally {
            try {
                if (connect() != null) {
                    connect().close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (Exception e) {
                System.out.println("Error" + e);
            }
        }

        return false;
    }

    public boolean Register(String id, String name, String number, String email, String password, int age) {
        PreparedStatement pst = null;

        try {
            String consulta = "insert into student (id,name,number,email,password,age) values(?, ?, ?, ?, ?, ?)";
            pst = connect().prepareStatement(consulta);
            pst.setString(1, id);
            pst.setString(2, name);
            pst.setString(3, number);
            pst.setString(4, email);
            pst.setString(5, password);
            pst.setInt(6, age);

            if (pst.executeUpdate() == 1) {
                return true;
            }

        } catch (Exception e) {
            System.out.println("ERROR" + e);
        } finally {
            try {
                if (connect() != null) {
                    connect().close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (Exception e) {
                System.out.println("ERROR" + e);
            }
        }
        return false;
    }

    public boolean solicitarPrestamo(int id_service,String id_student, String type, String started_at, double amount, int dues, double pagoxmes, String card_number, String card_date, int card_safecode) {
        PreparedStatement pst = null;
        try {
            String consulta = "insert into student_service (id_service, id_student, type, started_at, amount, dues, pagoxmes, card_number, card_date, card_safecode) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            pst = connect().prepareStatement(consulta);
            
            pst.setInt(1, id_service);
            pst.setString(2, id_student);
            pst.setString(3, type);
            pst.setString(4, started_at);
            pst.setDouble(5, amount);
            pst.setInt(6, dues);
            pst.setDouble(7, pagoxmes);
            pst.setString(8, card_number);
            pst.setString(9, card_date);
            pst.setInt(10, card_safecode);

            if (pst.executeUpdate() == 1) {
                return true;
            }

        } catch (Exception e) {
            System.out.println("ERROR" + e);
        } finally {
            try {
                if (connect() != null) {
                    connect().close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (Exception e) {
                System.out.println("ERROR" + e);
            }
        }
        return false;
    }

    public int id_service_autoincrement() {
        int id_service = 1;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String consulta = "Select MAX(id_service) from student_service";
            pst = connect().prepareStatement(consulta);
            rs = pst.executeQuery();
            while (rs.next()) {
                id_service = rs.getInt(1) + 1;
            }
        } catch (Exception ex) {
            System.out.println("Error" + ex);
        } finally {
            try {
                if (connect() != null) {
                    connect().close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (rs != null) {
                    rs.close();
                }

            } catch (Exception e) {
            }
        }
        return id_service;
    }

    public boolean miPrestamo(int id, String id_student, String type, String started_at, double amount, int dues, double pagoxmes, int duespagados, double pagado, int debt, int payday) {
        PreparedStatement pst = null;
        try {
            String consulta = "insert into service (id, id_student, type, started_at, amount, dues, pagoxmes, duespagados, pagado, debt, payday) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            pst = connect().prepareStatement(consulta);
                               
            pst.setInt(1, id);
            pst.setString(2, id_student);
            pst.setString(3, type);
            pst.setString(4, started_at);
            pst.setDouble(5, amount);
            pst.setInt(6, dues);
            pst.setDouble(7, pagoxmes);
            pst.setInt(8, duespagados);
            pst.setDouble(9, pagado);
            pst.setInt(10, debt);
            pst.setInt(11, payday);

            if (pst.executeUpdate() == 1) {
                return true;
            }

        } catch (Exception e) {
            System.out.println("Error" + e);
        } finally {
            try {
                if (connect() != null) {
                    connect().close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (Exception e) {
                System.out.println("Error" + e);
            }
        }
        return false;
    }

}
