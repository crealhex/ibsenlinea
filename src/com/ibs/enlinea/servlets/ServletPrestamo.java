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
 *
 * @author dolly
 */
public class ServletPrestamo extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

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
        } catch (Exception e) {
        }
        
        consulta co = new consulta();
        if(co.SolicitarPrestamoP(id_student, type, started_at,cantidadtp, cantidadtcp, pagomensual, card_number, card_date, codigotarjeta)){
            response.sendRedirect("index.jsp");
        }else{
            response.sendRedirect("ascasc.jsp");
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
