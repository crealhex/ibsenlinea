<%--
  Created by IntelliJ IDEA.
  User: crealhex
  Date: 3/1/2020
  Time: 01:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
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
