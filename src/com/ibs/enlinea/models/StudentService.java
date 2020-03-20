package com.ibs.enlinea.models;

import java.time.LocalDate;

public class StudentService {

    private int id_service;
    private String id_student;
    private String type;
    private LocalDate started_at;
    private double amount;				
    private int dues;
    private double pagoxmes;
    private String card_number;
    private String card_date;
    private int	card_safecode;

    public StudentService(){}
    
    public StudentService(int id_service, String id_student, String type, LocalDate started_at, double amount, int dues, double pagoxmes, String card_number, String card_date, int card_safecode) {
        this.id_service = id_service;
        this.id_student = id_student;
        this.type = type;
        this.started_at = started_at;
        this.amount = amount;
        this.dues = dues;
        this.pagoxmes = pagoxmes;
        this.card_number = card_number;
        this.card_date = card_date;
        this.card_safecode = card_safecode;
    }

    public int getId_service() {
        return id_service;
    }

    public void setId_service(int id_service) {
        this.id_service = id_service;
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

    public String getCard_number() {
        return card_number;
    }

    public void setCard_number(String card_number) {
        this.card_number = card_number;
    }

    public String getCard_date() {
        return card_date;
    }

    public void setCard_date(String card_date) {
        this.card_date = card_date;
    }

    public int getCard_safecode() {
        return card_safecode;
    }

    public void setCard_safecode(int card_safecode) {
        this.card_safecode = card_safecode;
    }
    
    
    
}
