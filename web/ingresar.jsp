<%
    String idStudent = (String)session.getAttribute("id_student");
    if (idStudent != null) {
        response.sendRedirect(request.getContextPath() + "/cuenta");
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
        <jsp:param name="menu" value="ingresar" />
    </jsp:include>
    <div>
        <form class ="box" action="${pageContext.request.contextPath}/login" method="post">
            <h1>Iniciar sesión</h1>
            <div style="color: #ff476e" class="buttom-text">
                <%
                    if (request.getAttribute("state") != null) {
                        out.print("El correo o contraseña son incorrectos");
                    }
                %>
            </div>
            <input type="text" name="email" placeholder="Correo">
            <input type="password" name="password" placeholder="Contraseña">
            <button>Iniciar sesión</button>
            <div class="buttom-text">
                ¿No tienes una cuenta? <a href="registrarse.jsp">Registrate</a>
            </div>
        </form>
    </div>
</body>
</html>