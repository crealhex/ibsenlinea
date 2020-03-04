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

@WebServlet(name = "ServletLogin", urlPatterns = "/login")
public class ServletLogin extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        try {
            StudentDAO studentDAO = new StudentMySQL();
            Student student = studentDAO.getByEmail(email);
            String notary = student.getPassword();

            System.out.println(email + " - " + password);
            System.out.println(student);

            if (!Butler.verify(password, notary)) {
                throw new Exception("Credentials Exception");
            }

            System.out.println(email + " - " + password);
            System.out.println(student);

            HttpSession session = req.getSession();
            session.setAttribute("id_student", student.getId());
            resp.sendRedirect(req.getContextPath() + "/cuenta");

        } catch (Exception e) {
            req.setAttribute("state", true);
            Courier.getInstance().gotopage(req, resp, getServletContext(), "/ingresar");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        service(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        service(request, response);
    }
}
