package com.ibs.enlinea.servlets;

import com.ibs.enlinea.helpers.Butler;
import com.ibs.enlinea.helpers.Courier;
import com.ibs.enlinea.dao.interfaces.StudentDAO;
import com.ibs.enlinea.dao.mysql.StudentMySQL;
import com.ibs.enlinea.models.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "ServletSignup", urlPatterns = "/signup")
public class ServletSignup extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String password = req.getParameter("password");
        String notary = req.getParameter("notary");

        if (!password.equals(notary)) {
            Courier.getInstance().gotopage(req, resp, getServletContext(), "/registrarse");
        }

        Student student = new Student();
        student.setId(req.getParameter("dni"));
        student.setName(req.getParameter("name"));
        student.setNumber(req.getParameter("phone"));
        student.setEmail(req.getParameter("email"));
        student.setPassword(Butler.encrypt(password));
        student.setAge(Byte.parseByte(req.getParameter("age")));

        StudentDAO studentDAO = new StudentMySQL();
        try {
            studentDAO.create(student);
        } catch (SQLException e) {
            student = new Student();
            System.out.println(e.getMessage());
        }

        HttpSession session = req.getSession(true);
        session.setAttribute("id_student", student.getId());
        Cookie message = new Cookie("message", "Bienvenido");
        resp.addCookie(message);
//        resp.sendRedirect(req.getContextPath() + "/cuenta");

//        Courier.getInstance().gotopage(req, resp, getServletContext(), "/cuenta");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        service(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        service(request, response);
    }
}
