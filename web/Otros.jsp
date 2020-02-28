<%-- 
    Document   : Otros
    Created on : 27/02/2020, 04:48:29 PM
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
    
    <jsp:include page="WEB-INF/partials-dinamic/menu.jsp">
        <jsp:param name="menu" value="otros" />
    </jsp:include>
    
    <div>
    </div>
    
    <div>
        <style>
            nav{
                background-color: #37A8EA;
            }
            nav ul li{
                display: inline-block;
            }
            nav ul li a{
                color: white;
                text-decoration: none;
            }
            .seleccionado{
                background-color: white;
                color:black;
            }
        </style>
    </div>
    
    <div>
        <h2>&copy; Powered by Redhoods</h2>
        <p>Thank you for being part of the story</p>
    </div>
</body>
</html>