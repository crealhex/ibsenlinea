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

    <form action="">
        <label>
            Inserte DNI
            <br>
            <input type="text">
        </label>
        <br><br>
        <label>
            Inserte código de préstamo
            <br>
            <input type="text">
        </label>
        <br><br>
        <input value="Verificar" type="submit">
        &nbsp;&nbsp;&nbsp;
        <input value="Pagar" type="submit">
    </form>
</body>
</html>