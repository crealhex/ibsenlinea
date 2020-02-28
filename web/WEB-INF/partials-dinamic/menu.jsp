<%
    String menu = request.getParameter("menu");
%>

<nav>
    <ul>
        <li><a href="/ibsenlinea/" class="<% out.print(menu.equals("inicio") ? "seleccionado" : ""); %>">Inicio</a></li>
        <li><a href="/ibsenlinea/Prestamos.jsp" class="<% out.print(menu.equals("prestamos") ? "seleccionado" : ""); %>">Prestamos</a></li>
        <li><a href="/ibsenlinea/Becas.jsp" class="<% out.print(menu.equals("becas") ? "seleccionado" : ""); %>">Becass</a></li>
        <li><a href="/ibsenlinea/Otros.jsp" class="<% out.print(menu.equals("otros") ? "seleccionado" : ""); %>">Otros</a></li>
    </ul>
</nav>