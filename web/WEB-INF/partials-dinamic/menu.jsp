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
        <li><section id ="contenedor"><a href="javascript:abrir()" id="show-login" class="login">Logearse</a></section></li>
        <li><a href="${pageContext.request.contextPath}/#" class="espacio">|</a></li>
        <li><a href="${pageContext.request.contextPath}/#" class="register">Registrarse</a></li>   
    </ul>
</nav>  
    <div class="loginm" id="log">
        <div id="cerrar"><a href="javascript:cerrar()"><img src="img/cerrar.png"></a></div>
        <form class ="box" action="ServletLogin" method="post">
            <h1>Iniciar sesión</h1>
            <input type="text" name="correo" placeholder="Correo">
            <input type="password" name="pass" placeholder="Contraseña">
            <input type="submit" name="login" value="Login">
            <div class="buttom-text">
                ¿No tienes una cuenta? <a href="register.jsp">Registrate</a>
            </div>
        </form>
    </div>
    <header></header>
    <nav></nav>
    <footer></footer>
    <script>
        function abrir(){
            document.getElementById("log").style.display="block";
        }
        function cerrar(){
            document.getElementById("log").style.display="none";
        }
    </script>
    