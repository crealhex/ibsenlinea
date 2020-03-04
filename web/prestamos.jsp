<%@ page import="com.ibs.enlinea.dao.interfaces.StudentDAO" %>
<%@ page import="com.ibs.enlinea.dao.mysql.StudentMySQL" %>
<%@ page import="com.ibs.enlinea.models.Student" %>
<%@ page import="com.ibs.enlinea.models.Service" %>
<%@ page import="com.ibs.enlinea.dao.mysql.ServiceMySQL" %>
<%@ page import="java.util.List" %>
<%
    String idStudent = (String)session.getAttribute("id_student");
    if (idStudent == null) {
//        response.sendRedirect(request.getContextPath() + "/cuenta");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>IBS-PE</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
    
    <jsp:include page="WEB-INF/partials-dinamic/menu.jsp">
        <jsp:param name="menu" value="prestamos" />
    </jsp:include>

    <%
        Student student = new StudentMySQL().getById(idStudent);
        List<Service> services = new ServiceMySQL().getAllByStudent(idStudent);
    %>

    <table border="1" cellpadding="10">
        <thead>
            <tr>
                <th>DNI</th>
                <th>Nombre</th>
                <th>Tipo</th>
                <th>Fecha de inicio</th>
                <th>Total</th>
                <th>Pendiente</th>
                <th>Cuotas</th>
                <th>Pago por mes</th>
                <th>Fecha de Mensualidad</th>
            </tr>
        </thead>
        <tbody>
            <% for (Service service : services) { %>
                <tr>
                    <td><%= student.getId() %></td>
                    <td><%= student.getName() %></td>
                    <td><%= service.getType() %></td>
                    <td><%= service.getStartedAt() %></td>
                    <td><%= service.getAmount() %></td>
                    <td>300 PEN</td>
                    <td><%= service.getDues() %></td>
                    <td><%= service.getAmount() / service.getDues() %></td>
                    <td><%= service.getPayday() %></td>
                    <td><a href="${pageContext.request.contextPath}/pagar?id=<%= service.getId() %>">Realizar pago</a></td>
                </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>