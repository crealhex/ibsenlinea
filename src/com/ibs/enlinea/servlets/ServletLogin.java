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
public class ServletLogin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
//        PrintWriter out = response.getWriter();

        String currPage = request.getParameter("origin");
        String nextPage = request.getParameter("next");
        String correo = request.getParameter("correo");
        String password = request.getParameter("pass");

//        consulta query = new consulta();
//        if (query.autenticacion(correo, password)) {
//            response.sendRedirect("index.jsp");
//        } else {
//            request.setAttribute("loginState", false);
//            request.getRequestDispatcher("index.jsp").forward(request, response);
//        }

        if (correo.equals("123")) {
            response.sendRedirect(nextPage);
        } else {
            request.setAttribute("loginState", false);
            request.getRequestDispatcher(currPage).forward(request, response);
        }
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
