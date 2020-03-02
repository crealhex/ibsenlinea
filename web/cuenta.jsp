<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>IBS-PE</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <style>
        .box-mc h1 {
            position: relative;
            top: -15px;
        }

        .box-mc {
            width: 300px;
            padding: 40px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
        }

        .buttom-text-mc a {
            text-decoration: none;
            display: inline-block;
            padding: 10px;
            color: black;
        }

        .buttom-text-mc .right {
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <jsp:include page="WEB-INF/partials-dinamic/menu.jsp">
        <jsp:param name="menu" value="inicio"/>
    </jsp:include>
    <div>
        <form class="box-mc" action="index.jsp" method="post">
            <h1>Username</h1>
            <div class="buttom-text-mc">
                <a href="#">Configuración</a>
                <div class="right">
                    <button>Cerrar sesión</button>
                </div>
            </div>
        </form>
    </div>
</body>
</html>