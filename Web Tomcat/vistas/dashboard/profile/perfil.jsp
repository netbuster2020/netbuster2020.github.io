<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="Modelo.User"%>
<%@page import="Modelo.UserDAO"%>

<html>
    <head>
        <%@ include file="../../partials/head.jsp" %>
        <title>Lista usuarios</title>
    </head>
    <body>
        <!-- Navegación -->
        <%@ include file="../../layouts/nav-dash.jsp"%>  
        <!-- Fin de navegación -->

        <%
    UserDAO newUser=new UserDAO();
    int id=Integer.parseInt((String)request.getAttribute("idper"));
    User users =(User)newUser.list(id);
    %>
        
        <main>
        <div class="container">
            <div class="row">
                <div class="col col-md-12">
                    <h1>Saludos terrestres</h1>
                    <h1><%= users.getNombre()%></h1>
                    <a href="Logout"><button class="btn btn-primary">Cerrar sesion</button></a>
                </div>
            </div>
        </div>
        
        </main>
        <!-- Pie de página -->
        <%@ include file="../../partials/footer.jsp" %>
        <!-- Fin de pie de página -->
</body>
</html>
