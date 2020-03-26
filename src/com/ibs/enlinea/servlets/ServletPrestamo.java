/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ibs.enlinea.servlets;

import com.ibs.enlinea.dao.mysql.consulta;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author dolly
 */
public class ServletPrestamo extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String id_student = request.getParameter("idp");
        String type = request.getParameter("tprestamop");
        String started_at = request.getParameter("fechap");
        String amount = request.getParameter("amountp");                //double
        String dues = request.getParameter("duesp");                    //int
        String pagoxmes = request.getParameter("pagoxmesp");            //double
        String card_number = request.getParameter("card_numberp");
        String card_date = request.getParameter("card_datep");
        String card_safecode = request.getParameter("card_safecodep");  //int

        double cantidadtp = 0;
        int cantidadtcp = 0;
        double pagomensual = 0;
        int codigotarjeta = 0;

        try {
            cantidadtp = Double.parseDouble(amount);
            cantidadtcp = Integer.parseInt(dues);
            pagomensual = Double.parseDouble(pagoxmes);
            codigotarjeta = Integer.parseInt(card_safecode);
        } catch (Exception ignored) {
        }

        consulta query = new consulta();
        boolean status = query.solicitarPrestamo(
                id_student, type, started_at, cantidadtp,
                cantidadtcp, pagomensual, card_number,
                card_date, codigotarjeta
        );

        if (status) {
            response.sendRedirect("index.jsp");
            return;
        }
        response.sendRedirect("random.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
