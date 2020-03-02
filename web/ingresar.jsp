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
        <jsp:param name="menu" value="inicio" />
    </jsp:include>
    <div>
        <form class ="box" action="index.jsp" method="post">
            <h1>Iniciar sesión</h1>
            <input type="text" name="" placeholder="Correo">
            <input type="password" name="" placeholder="Contraseña">
            <input type="submit" name="" value="Login">
            <div class="buttom-text">
                ¿No tienes una cuenta? <a href="registrarse.jsp">Registrate</a>
            </div>
        </form>
    </div>
</body>
</html>