<%@ page import="com.ibs.enlinea.models.Student" %>
<%@ page import="com.ibs.enlinea.dao.mysql.StudentMySQL" %>
<%@ page import="com.ibs.enlinea.models.Service" %>
<%@ page import="com.ibs.enlinea.dao.mysql.ServiceMySQL" %>
<%@ page import="java.util.List" %>
<%
    String idStudent = (String)session.getAttribute("id_student");
    Student student = new StudentMySQL().getById(idStudent);

    int idService = Integer.parseInt(request.getParameter("id"));
    System.out.println(idService);
    Service service = new ServiceMySQL().getById(idService);
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <jsp:param name="menu" value="pagar" />
    </jsp:include>
    <div>
        <form action="">
            <label>
                DNI
                <br>
                <input disabled value="<%= student.getId() %>" type="text">
            </label>
            <br><br>

            <label>
                Nombre
                <br>
                <input disabled value="<%= student.getName() %>" type="text">
            </label>
            <br><br>

            <label>
                Tipo
                <br>
                <input disabled value="<%= service.getType() %>" type="text">
            </label>
            <br><br>

            <label>
                Total a pagar (PEN)
                <br>
                <input disabled value="<%= service.getAmount() / service.getDues() %>" type="number">
            </label>
            <br><br>

            <label>
                Cuota
                <br>
                <input disabled value="1" type="number">
            </label>
            <br><br>

            <label>
                Fecha
                <br>
                <input type="datetime-local">
            </label>
            <br><br>

            <label>
                Número de cuenta
                <br>
                <input type="text">
            </label>
            <br><br>

            <label>
                Fecha de caducidad
                <br>
                <input type="text" placeholder="MM/YYYY">
            </label>
            <br><br>

            <label>
                Código de seguridad
                <br>
                <input type="text">
            </label>
            <br><br>

            <label>
                <input type="checkbox">
                He leído y acepto los <a href="${pageContext.request.contextPath}/terms.html">términos y condiciones</a>
            </label>
            <br><br>

            <button>Aceptar y Pagar</button>
        </form>
    </div>
</body>
</html>