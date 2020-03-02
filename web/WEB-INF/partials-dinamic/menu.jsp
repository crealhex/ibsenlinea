<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String menu = request.getParameter("menu");
%>
<nav>
    <ul>
        <li><a href="${pageContext.request.contextPath}/" class="<%= menu.equals("inicio") ? "selected" : "" %>">Inicio</a></li>
        <li><a href="${pageContext.request.contextPath}/prestamos.jsp" class="<%= menu.equals("prestamos") ? "selected" : "" %>">Prestamos</a></li>
        <li><a href="${pageContext.request.contextPath}/becas.jsp" class="<%= menu.equals("becas") ? "selected" : "" %>">Becas</a></li>
        <li><a href="${pageContext.request.contextPath}/otros.jsp" class="<%= menu.equals("otros") ? "selected" : "" %>">Otros</a></li>
    </ul>
    <ul>
        <li><a href="${pageContext.request.contextPath}/cuenta.jsp" class="<%= menu.equals("cuenta") ? "selected" : "" %>">Mi cuenta</a></li>
        <li><a href="${pageContext.request.contextPath}/ingresar.jsp" class="<%= menu.equals("ingresar") ? "selected" : "" %>">Iniciar sesión</a></li>
        <li><a href="${pageContext.request.contextPath}/registrarse.jsp" class="<%= menu.equals("registrarse") ? "selected" : "" %>">Registrarse</a></li>
    </ul>
</nav>