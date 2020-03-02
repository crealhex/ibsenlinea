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
        <jsp:param name="menu" value="registrarse" />
    </jsp:include>
    <div>
        <form class="boxr" action="${pageContext.request.contextPath}/signup" method="post">
            <h1>Registrarse</h1>
            <input type="text" name="dni" placeholder="DNI">
            <input type="text" name="name" placeholder="Nombres">
            <input type="text" name="phone" placeholder="Número de celular">
            <input type="text" name="email" placeholder="Correo electrónico">
            <input type="password" name="password" placeholder="Ingrese una contraseña">
            <input type="password" name="" placeholder="Repita la contraseña">
            <input type="number" name="" placeholder="Edad">
            <input type="submit" name="" value="Registrarse">
            <div class="buttom-text-r">
                ¿Ya tienes una cuenta? <a href="ingresar.jsp">Iniciar sesión</a>
            </div>
        </form>
    </div>
</body>
</html>