<%@page import="Modelo.User"%>
    <%@page import="Modelo.UserDAO"%>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>

            <html>

            <head>
                <%@ include file="../../../partials/head.jsp" %>
                    <title>Editar usuarios</title>
            </head>

            <body>
                <!-- Navegación -->
                <%@ include file="../../../layouts/navegacion.jsp"%>
                    <!-- Fin de navegación -->
                    <div class="container">
                        <div class="col-lg-6">
                            <%
              UserDAO dao=new UserDAO();
              int id=Integer.parseInt((String)request.getAttribute("idper"));
              User p=(User)dao.list(id);
              %>
                                <h1>Modificar User</h1>
                                <form action="Admin">
                                    <label for="nombre">Nombre</label>
                                    <input class="form-control" type="text" name="nombre" value="<%= p.getNombre()%>">
                                    <label for="apellido">apellido</label>
                                    <input class="form-control" type="text" name="apellido" value="<%= p.getApellido()%>">
                                    <label for="email">Email</label>
                                    <input class="form-control" type="text" name="email" value="<%= p.getEmail()%>">
                                    <label for="username">Username</label>
                                    <input class="form-control" type="text" name="username" value="<%= p.getUsername()%>">
                                    <label for="password">Contraseña</label>
                                    <input class="form-control" type="password" name="password" value="<%= p.getPassword()%>">
                                    <label for="nacimiento">fecha nacimiento</label>
                                    <input class="form-control" type="date" name="nacimiento" value="<%= p.getNacimiento()%>">


                                    <input type="hidden" name="txtid" value="<%= p.getId_user()%>">
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