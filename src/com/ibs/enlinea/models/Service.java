package com.ibs.enlinea.models;

import java.util.Date;

public class Service {
    
    private int id;
    private String idStudent;
    private String type;
    private Date startedAt;
    private float amount;
    private byte dues;
    private byte payday;

    public Service(){
        
    }

    public Service(int id, String idStudent, String type, Date startedAt, float amount, byte dues, byte payday) {
        this.id = id;
        this.idStudent = idStudent;
        this.type = type;
        this.startedAt = startedAt;
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

    public String getIdStudent() {
        return idStudent;
    }

    public void setIdStudent(String idStudent) {
        this.idStudent = idStudent;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Date getStartedAt() {
        return startedAt;
    }

    public void setStartedAt(Date startedAt) {
        this.startedAt = startedAt;
    }

    public float getAmount() {
        return amount;
    }

    public void setAmount(float amount) {
        this.amount = amount;
    }

    public byte getDues() {
        return dues;
    }

    public void setDues(byte dues) {
        this.dues = dues;
    }

    public byte getPayday() {
        return payday;
    }

    public void setPayday(byte payday) {
        this.payday = payday;
    }

    @Override
    public String toString() {
        return "Service{" +
                "id=" + id +
                ", idStudent='" + idStudent + '\'' +
                ", type='" + type + '\'' +
                ", startedDate=" + startedAt +
                ", amount=" + amount +
                ", dues=" + dues +
                ", payday=" + payday +
                '}';
    }
}
