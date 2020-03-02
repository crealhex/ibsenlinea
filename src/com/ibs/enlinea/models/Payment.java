package com.ibs.enlinea.models;

import java.util.Date;

public class Payment {

    private int id;
    private String idStudent;
    private int idService;
    private Date paidAt;
    private String cardNumber;
    private String cardDate;
    private short cardSafecode;

    public Payment() {

    }

    public Payment(int id, String idStudent, int idService, Date paidAt, String cardNumber, String cardDate, short cardSafecode) {
        this.id = id;
        this.idStudent = idStudent;
        this.idService = idService;
        this.paidAt = paidAt;
        this.cardNumber = cardNumber;
        this.cardDate = cardDate;
        this.cardSafecode = cardSafecode;
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

    public int getIdService() {
        return idService;
    }

    public void setIdService(int idService) {
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

    public short getCardSafecode() {
        return cardSafecode;
    }

    public void setCardSafecode(short cardSafecode) {
        this.cardSafecode = cardSafecode;
    }

    @Override
    public String toString() {
        return "Payment{" +
                "id=" + id +
                ", idStudent='" + idStudent + '\'' +
                ", idService=" + idService +
                ", paidAt=" + paidAt +
                ", cardNumber='" + cardNumber + '\'' +
                ", cardDate='" + cardDate + '\'' +
                ", cardSafecode=" + cardSafecode +
                '}';
    }
}
