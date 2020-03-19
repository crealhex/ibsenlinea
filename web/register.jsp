<%--
    Document   : register
    Created on : 27/02/2020, 04:50:20 PM
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
    <div>
        <form class="boxr" action="ServletRegister" method="post">
            <h1>Registrarse</h1>
            <input type="text" name="name" placeholder="Nombres y apellidos">
            <input type="text" name="email" placeholder="Correo electronico">
            <input type="text" name="id" placeholder="DNI">
            <input type="text" name="number" placeholder="Numero de celular">
            <input type="text" name="age" placeholder="Edad">
            <input type="password" name="password" placeholder="Ingrese una contraseña">
            <input type="password" name="password" placeholder="Repita la contraseña">
            <input type="submit" name="register" value="Registrarse">
            <div class="buttom-text-r">
                ¿Ya tienes una cuenta? <a href="login.jsp">Iniciar sesión</a>
            </div>
        </form>
    </div>
</body>
</html>