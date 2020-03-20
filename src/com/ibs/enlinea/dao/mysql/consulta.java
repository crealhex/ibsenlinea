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
    *
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

    public boolean Register(String id, String name, String number, String email, String password, int age ){
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
            
            
            if(pst.executeUpdate() == 1){
                return true;
            }
            
        } catch (Exception e) {
            System.out.println("ERROR" + e);
        }finally{
            try {
                if(connect() != null) connect().close();
                if(pst != null) pst.close();
            } catch (Exception e) {
                System.out.println("ERROR" + e);
            }
        }
        return false;
    }
        
    }
