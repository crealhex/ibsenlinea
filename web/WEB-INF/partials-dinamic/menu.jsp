<%--@elvariable id="loginState" type="com"--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String menu = request.getParameter("menu");
%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/fonts.css">
<nav>
    <ul>
        <li><a href="${pageContext.request.contextPath}/" class="icon-home <% out.print(menu.equals("inicio") ? "seleccionado" : ""); %>"> Inicio</a></li>
        <li><a href="${pageContext.request.contextPath}/prestamos.jsp" class="icon-coin-dollar <% out.print(menu.equals("prestamos") ? "seleccionado" : ""); %>"> Prestamos</a></li>
        <li><a href="${pageContext.request.contextPath}/becas.jsp" class="icon-briefcase <% out.print(menu.equals("becas") ? "seleccionado" : ""); %>"> Becass</a></li>
        <li><a href="${pageContext.request.contextPath}/otros.jsp" class="icon-forward <% out.print(menu.equals("otros") ? "seleccionado" : ""); %>"> Otros</a></li>
        <li><section id ="contenedor"><a href="javascript:abrirLog()" id="show-login" class="login">Logearse</a></section></li>
        <li><a href="${pageContext.request.contextPath}/#" class="espacio">|</a></li>
        <li><a href="javascript:abrirReg()" class="register">Registrarse</a></li>
    </ul>
</nav>
    <div class="loginm" id="log">
        <div id="cerrar"><a href="javascript:cerrarLog()"><img src="img/cerrar.png"></a></div>
        <form class ="box" action="ServletLogin" method="post">
            <h1>Iniciar sesion</h1>
            <input id="loginState" type="hidden" value="${loginState}">
            <input type="text" name="correo" placeholder="Correo">
            <input type="password" name="pass" placeholder="Contraseña">
            <input type="submit" name="login" value="Login">
            <div class="buttom-text">
                ¿No tienes una cuenta? <a href="register.jsp">Registrate</a>
            </div>
        </form>
    </div>
    <div class="loginm" id="reg">
        <div id="cerrar"><a href="javascript:cerrarReg()"><img src="img/cerrar.png"></a></div>
        <form class ="box" action="ServletLogin" method="post">
            <h1>Registrarse</h1>
            <input type="number" name="dni" placeholder="DNI">
            <input type="text" name="name" placeholder="Nombre">
            <input type="text" name="number" value="Teléfono Móvil">
            <input type="email" name="email" value="Correo">
            <input type="password" name="password" value="Contraseña">
            <input type="number" name="age" value="Age">
            <input type="submit" name="login" value="Login">
            <div class="buttom-text">
                ¿Ya tienes una cuenta? <a href="login.jsp">Loguístrate</a>
            </div>
        </form>
    </div>
    <header></header>
    <nav></nav>
    <footer></footer>
    <script>
        window.onload = function() {
            let loginState = document.getElementById("loginState").value;
            if (loginState) {
                abrirLog();
            }
        };

        function abrirLog(){
            document.getElementById("log").style.display="block";
            cerrarReg();
        }
        function cerrarLog(){
            document.getElementById("log").style.display="none";
        }

        function abrirReg(){
            document.getElementById("reg").style.display="block";
            cerrarLog();
        }
        function cerrarReg(){
            document.getElementById("reg").style.display="none";
        }
    </script>

<a href="${pageContext.request.contextPath}/otros.jspjavascript:cerrarLog()"></a>