<%-- 
    Document   : Login
    Created on : 27/02/2020, 04:50:06 PM
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
</head>
<body>
    
    <style>
        body{
            margin: 0;
            padding: 0;
            font-family: sans-serif;
        }
        .box h1{
           position: relative;
           top: -15px;
        }
        .box{
            width: 300px;
            padding: 40px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            background-color: #2289C6;
        }
        .box input[type = "text"], .box input[type ="password"]{
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
        .box input[type = "submit"]{
            width: 100px;
        }
        .buttom-text{
            padding: 8px;
        }
        .buttom-text a{
            text-decoration: none;
            color: blue;
        }
       
        
        
    </style>
  
    <div>
        <form class ="box" action="index.jsp" method="post">
            <h1>Login</h1>
            <input type="text" name="" placeholder="Username">
            <input type="password" name="" placeholder="Password">
            <input type="submit" name="" value="Login">
            <div class="buttom-text">
                ¿No tienes una cuenta?<a href="register.jsp"> Registrate</a>
            </div>
        </form>
    </div>
</body>
</html>
