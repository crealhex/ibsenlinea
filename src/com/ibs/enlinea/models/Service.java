package com.ibs.enlinea.models;

import java.time.LocalDate;

public class Service {
    
    private int id;
    private String id_student;
    private String type;
    private LocalDate start_date;
    private int amount;
    private int dues;
    private int payday;

    public Service(){
        
    }
    
    public Service(int id, String id_student, String type, LocalDate start_date, int amount, int dues, int payday) {
        this.id = id;
        this.id_student = id_student;
        this.type = type;
        this.start_date = start_date;
        this.amount = amount;
        this.dues = dues;
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

    public LocalDate getStart_date() {
        return start_date;
    }

    public void setStart_date(LocalDate start_date) {
        this.start_date = start_date;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getDues() {
        return dues;
    }

    public void setDues(int dues) {
        this.dues = dues;
    }

    public int getPayday() {
        return payday;
    }

    public void setPayday(int payday) {
        this.payday = payday;
    }
    
         
    
    
}
