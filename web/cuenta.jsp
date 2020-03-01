<%--
    Document   : micuenta
    Created on : 27/02/2020, 04:50:56 PM
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
    
    <style>
        body{
            margin: 0;
            padding: 0;
            font-family: sans-serif;
        }
        .box-mc h1{
           position: relative;
           top: -15px;
           /*color: #B22121;        */
        }
        .box-mc{
            width: 300px;
            padding: 40px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            /*background-color: #2289C6;*/
        }
        .buttom-text-mc a{
            text-decoration: none;
            display: inline-block;
            padding: 10px;
            color: black;
        }
        .buttom-text-mc .right{
            /*text-align: right;*/
            margin-top: 30px;
        }
    </style>
    
    <div>
        <form class ="box-mc" action="index.jsp" method="post">
        <h1>Username</h1>
        <div class="buttom-text-mc">
            <a href="${pageContext.request.contextPath}/miprestamo.jsp">Mis prestamos</a>
            <a href="#">Configuración</a>
            <div class="right">
                <button>Cerrar sesión</button>
            </div>
        </div>
        </form>
    </div>
</body>
</html>