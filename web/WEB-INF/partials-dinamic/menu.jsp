<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String menu = request.getParameter("menu");
%>
<nav>
    <ul>
        <li><a href="${pageContext.request.contextPath}/" class="<% out.print(menu.equals("inicio") ? "seleccionado" : ""); %>">Inicio</a></li>
        <li><a href="${pageContext.request.contextPath}/prestamos.jsp" class="<% out.print(menu.equals("prestamos") ? "seleccionado" : ""); %>">Prestamos</a></li>
        <li><a href="${pageContext.request.contextPath}/becas.jsp" class="<% out.print(menu.equals("becas") ? "seleccionado" : ""); %>">Becass</a></li>
        <li><a href="${pageContext.request.contextPath}/otros.jsp" class="<% out.print(menu.equals("otros") ? "seleccionado" : ""); %>">Otros</a></li>
    </ul>
    <ul>
        <li><a href="${pageContext.request.contextPath}/cuenta.jsp">Mi cuenta</a></li>
        <li><a href="${pageContext.request.contextPath}/ingresar.jsp">Iniciar sesión</a></li>
        <li><a href="${pageContext.request.contextPath}/registrarse.jsp">Registrarse</a></li>
    </ul>
</nav>