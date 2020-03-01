<%--
    Document   : Prestamos
    Created on : 27/02/2020, 04:48:15 PM
    Author     : dolly
--%>

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

    <h2>Requisitios para obtener un prestamo</h2>
    <a href="solicitarprestamo.html">Solicitar prestamo</a>
</body>
</html>