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
        <li><section id ="contenedor"><a href="javascript:abrirLog('index.jsp', 'index.jsp')" id="show-login" class="login">Logearse</a></section></li>
        <li><a href="${pageContext.request.contextPath}/#" class="espacio">|</a></li>
        <li><a href="javascript:abrirReg('index.jsp', 'index.jsp')" class="register">Registrarse</a></li>
    </ul>
</nav>

    <div class="loginm" id="log">
        <div id="cerrarl"><a href="javascript:cerrarLog()"><img src="img/cerrar.png"></a></div>
        <form class="box" action="ServletLogin" method="get">
            <h1>Iniciar sesión</h1>
            <input type="hidden" name="origin" id="currPage">
            <input type="hidden" name="next" id="nextPage">
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
        <div id="cerrarr"><a href="javascript:cerrarReg()"><img src="img/cerrar.png"></a></div>
        <form class ="box" action="ServletRegister" method="post">
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
    <header></header>
    <nav></nav>
    <footer></footer>
    <script>
        window.onload = function() {
            let href = window.location.href;
            let regOrigin = new RegExp('[?&]origin=([^&#]*)', 'i');
            let regNext = new RegExp('[?&]next=([^&#]*)', 'i');

            let origin = regOrigin.exec(href);
            let next = regNext.exec(href);

            let loginState = document.getElementById("loginState").value;
            if (loginState) {
                abrirLog(origin[1], next[1]);
            }
        };

        function abrirLog(currPage, nextPage){
            document.getElementById("log").style.display="block";
            document.getElementById("currPage").value = currPage;
            document.getElementById("nextPage").value = nextPage;
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