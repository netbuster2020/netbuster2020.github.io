<%@page import="Modelo.User"%>
<%@page import="Modelo.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <%@ include file="../../../partials/head.jsp" %>
        <title>Editar serie</title>
    </head>
    <body>
    <%-- Navegación --%>
    <%@ include file="../../../layouts/nav-dash.jsp" %>
    <%-- Fin de navegación --%>
        <div class="container">
            <div class="col-lg-6">
              <%
              UserDAO dao=new UserDAO();
              int id=Integer.parseInt((String)request.getAttribute("idper"));
              User ser =(User)dao.list(id);
              %>
            <h1>Modificar User</h1>
            <form action="Admin">
                Nombre: <br>
                <input class="form-control" type="text" name="nombre" value="<%= ser.getNombre()%>"><br>
                Apellido: <br>
                <input class="form-control" type="text" name="apellido" value="<%= ser.getApellido()%>"><br>
                Email: <br>
                <input class="form-control" type="text" name="email" value="<%= ser.getEmail()%>"><br>
                Password: <br>
                <input class="form-control" type="text" name="password" value="<%= ser.getPassword()%>"><br>
                Username: <br>
                <input class="form-control" type="text" name="username" value="<%= ser.getUsername()%>"><br>
                Nacimiento: <br>
                <input class="form-control" type="text" name="nacimiento" value="<%= ser.getNacimiento()%>"><br>
                Tipo de usuario: <br>
                <input class="form-control" type="text" name="admin" value="<%= ser.getAdmin()%>"><br>

                <input type="hidden" name="txtid" value="<%= ser.getId_user()%>">
                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"> 
                <a href="Admin?accion=listar">Regresar</a>
            </form>
          </div>
        </div>
        <!-- Pie de página -->
        <%@ include file="../../../partials/footer.jsp" %>
        <!-- Fin de pie de página -->
    </body>
</html>
