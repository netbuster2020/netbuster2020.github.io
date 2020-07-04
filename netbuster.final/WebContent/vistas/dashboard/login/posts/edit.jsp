<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <%@ include file="partials/head.jsp" %>
        <title>Editar usuarios</title>
    </head>
    <body>
        <!-- Navegación -->
        <%@ include file="layouts/navegacion.jsp"%>  
        <!-- Fin de navegación -->
        <div class="container">
            <div class="col-lg-6">
              <%
              PersonaDAO dao=new PersonaDAO();
              int id=Integer.parseInt((String)request.getAttribute("idper"));
              Persona p=(Persona)dao.list(id);
              %>
            <h1>Modificar Persona</h1>
            <form action="Controlador">
                Username: <br>
                <input class="form-control" type="text" name="username" value="<%= p.getUsername()%>"><br>
                Password: <br>
                <input class="form-control" type="text" name="password" value="<%= p.getPassword()%>"><br>
                Full name: <br>
                <input class="form-control" type="text" name="fullname" value="<%= p.getFullname()%>"><br>
                
                <input type="hidden" name="txtid" value="<%= p.getId()%>">
                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"> 
                <a href="Controlador?accion=listar">Regresar</a>
            </form>
          </div>
          
        </div>
        <!-- Pie de página -->
        <%@ include file="partials/footer.jsp" %>
        <!-- Fin de pie de página -->
    </body>
</html>
