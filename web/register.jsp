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
    
    <style>
        body{
            margin: 0;
            padding: 0;
            font-family: sans-serif;
        }
        .boxr h1{
           position: relative;
           top: -15px;
        }
        .boxr{
            width: 300px;
            padding: 40px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            background-color: #2289C6;
        }
        .boxr input[type = "text"], .boxr input[type ="password"]{
            border: 0;
            background: none;
            display: block;
            margin: 20px auto;
            text-align: center;
            border: 1px solid white;
            padding: 10px 10px;
            width: 200px;
            color: black;
        }
        .boxr input[type = "submit"]{
            width: 100px;
        }
        .buttom-text-r{
            padding: 8px;
        }
        .buttom-text-r a{
            text-decoration: none;
            color: blue;
        }
    </style>
    
    <div>
        <form class="boxr" action="index.jsp" method="post">
            <h1>Register</h1>
            <input type="text" name="" placeholder="Nombres y apellidos">
            <input type="text" name="" placeholder="Correo electronico">
            <input type="text" name="" placeholder="DNI">
            <input type="text" name="" placeholder="Numero de celular">
            <input type="password" name="" placeholder="Ingrese una contraseña">
            <input type="password" name="" placeholder="Repita la contraseña">
            <input type="submit" name="" value="Registrarse">
            <div class="buttom-text-r">
                ¿Ya tienes una cuenta?<a href="login.jsp"> Logeate</a>
            </div>
        </form>
    </div>
</body>
</html>