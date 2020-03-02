package com.ibs.enlinea.Helper;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public final class Courier {

    private static final Courier instance = new Courier();

    private Courier() {

    }

    public static Courier getInstance() {
        return instance;
    }

    public void gotopage(HttpServletRequest request, HttpServletResponse response, ServletContext context, String url) throws ServletException, IOException {
        RequestDispatcher dispatcher = context.getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }

}