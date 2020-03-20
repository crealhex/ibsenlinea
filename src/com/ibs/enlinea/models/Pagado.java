package com.ibs.enlinea.models;

public class Pagado {
    
    private String id_pago;
    private String id_student;
    private int id_service;
    private double pagoxmes;

    public Pagado(String id_pago, String id_student, int id_service, double pagoxmes) {
        this.id_pago = id_pago;
        this.id_student = id_student;
        this.id_service = id_service;
        this.pagoxmes = pagoxmes;
    }

    public String getId_pago() {
        return id_pago;
    }

    public void setId_pago(String id_pago) {
        this.id_pago = id_pago;
    }

    public String getId_student() {
        return id_student;
    }

    public void setId_student(String id_student) {
        this.id_student = id_student;
    }

    public int getId_service() {
        return id_service;
    }

    public void setId_service(int id_service) {
        this.id_service = id_service;
    }

    public double getPagoxmes() {
        return pagoxmes;
    }

    public void setPagoxmes(double pagoxmes) {
        this.pagoxmes = pagoxmes;
    }
    
    
}
