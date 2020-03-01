package com.ibs.enlinea.models;

import java.util.Date;

public class StudentService {

    private Student idStudent;
    private Service idService;
    private Date paidAt;
    private String cardNumber;
    private String cardDate;
    private int cardSafecode;

    public StudentService() {

    }

    public StudentService(Student idStudent, Service idService, Date paidAt, String cardNumber, String cardDate, int cardSafecode) {
        this.idStudent = idStudent;
        this.idService = idService;
        this.paidAt = paidAt;
        this.cardNumber = cardNumber;
        this.cardDate = cardDate;
        this.cardSafecode = cardSafecode;
    }

    public Student getIdStudent() {
        return idStudent;
    }

    public void setIdStudent(Student idStudent) {
        this.idStudent = idStudent;
    }

    public Service getIdService() {
        return idService;
    }

    public void setIdService(Service idService) {
        this.idService = idService;
    }

    public Date getPaidAt() {
        return paidAt;
    }

    public void setPaidAt(Date paidAt) {
        this.paidAt = paidAt;
    }

    public String getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    public String getCardDate() {
        return cardDate;
    }

    public void setCardDate(String cardDate) {
        this.cardDate = cardDate;
    }

    public int getCardSafecode() {
        return cardSafecode;
    }

    public void setCardSafecode(int cardSafecode) {
        this.cardSafecode = cardSafecode;
    }
}
