package com.ibs.enlinea.models;

import java.time.LocalDate;

public class Service {
    
    private int id;				
    private String id_student;
    private String type;
    private LocalDate started_at;
    private double amount;
    private int dues;
    private double pagoxmes;
    private int duespagados;
    private double pagado;
    private int debt;
    private int payday;

    public Service(){}
   
    public Service(int id, String id_student, String type, LocalDate started_at, double amount, int dues, double pagoxmes, int duespagados, double pagado, int debt, int payday) {
        this.id = id;
        this.id_student = id_student;
        this.type = type;
        this.started_at = started_at;
        this.amount = amount;
        this.dues = dues;
        this.pagoxmes = pagoxmes;
        this.duespagados = duespagados;
        this.pagado = pagado;
        this.debt = debt;
        this.payday = payday;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getId_student() {
        return id_student;
    }

    public void setId_student(String id_student) {
        this.id_student = id_student;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public LocalDate getStarted_at() {
        return started_at;
    }

    public void setStarted_at(LocalDate started_at) {
        this.started_at = started_at;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public int getDues() {
        return dues;
    }

    public void setDues(int dues) {
        this.dues = dues;
    }

    public double getPagoxmes() {
        return pagoxmes;
    }

    public void setPagoxmes(double pagoxmes) {
        this.pagoxmes = pagoxmes;
    }

    public int getDuespagados() {
        return duespagados;
    }

    public void setDuespagados(int duespagados) {
        this.duespagados = duespagados;
    }

    public double getPagado() {
        return pagado;
    }

    public void setPagado(double pagado) {
        this.pagado = pagado;
    }

    public int getDebt() {
        return debt;
    }

    public void setDebt(int debt) {
        this.debt = debt;
    }

    public int getPayday() {
        return payday;
    }

    public void setPayday(int payday) {
        this.payday = payday;
    }
    
         
    
}
