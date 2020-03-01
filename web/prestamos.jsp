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
            <tr>
                <td>73822427</td>
                <td>Luis Enco</td>
                <td>Préstamo</td>
                <td>15/08/2017</td>
                <td>300 PEN</td>
                <td>200 PEN</td>
                <td>3</td>
                <td>100 PEN</td>
                <td>30</td>
                <td><a href="${pageContext.request.contextPath}/pagar.jsp">Realizar pago</a></td>
            </tr>
        </tbody>
    </table>
</body>
</html>