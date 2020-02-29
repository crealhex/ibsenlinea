package com.ibs.enlinea.models;

public class StudentService {

    private Student idStudent;
    private int idService;
//    private LocalDate paid_at;
    private String cardNumber;
    private String cardDate;
    private int cardSafecode;

    public StudentService(Student idStudent, int idService, String cardNumber, String cardDate, int cardSafecode) {
        this.idStudent = idStudent;
        this.idService = idService;
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

    public int getIdService() {
        return idService;
    }

    public void setIdService(int idService) {
        this.idService = idService;
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
