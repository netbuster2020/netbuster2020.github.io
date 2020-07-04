<%@page import="java.util.Iterator"%>
    <%@page import="Modelo.User"%>
        <%@page import="java.util.List"%>
            <%@page import="Modelo.UserDAO"%>

                <%@page contentType="text/html" pageEncoding="UTF-8"%>
                    <html>

                    <head>
                        <%@ include file="../../../partials/head.jsp" %>
                        <%@ include file="../../../partials/datos.jsp" %>
                            <title>Ver Usuarios</title>
                    </head>

                    <body>

                        <%-- Navegación --%>
                        <%@ include file="../../../layouts/nav-dash.jsp" %>
                                <%-- Fin de navegación --%>

                                    <div class="container">
                                        <h1>Usuarios</h1>
                                        <a class="btn btn-success" href="Admin?accion=add">Agregar Nuevo</a>
                                        <br>
                                        <br>
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th class="text-center">Nombre</th>
                                                    <th class="text-center">Apellido</th>
                                                    <th class="text-center">Email</th>
                                                    <th class="text-center">Nacimiento</th>
                                                    <th class="text-center">Username</th>
                                                    <th class="text-center">Password</th>
                                                    <th class="text-center">Tipo de usuario</th>
                                                    <th class="text-center">Editar</th>
                                                </tr>
                                            </thead>
                                            <%
                    UserDAO dao=new UserDAO();
                    List<User>list=dao.listar();
                    Iterator<User>iter=list.iterator();
                    User user=null;
                    while(iter.hasNext()){
                        user=iter.next();
                    
                %>
                                                <tbody>
                                                    <tr>
                                                        <td class="text-center">
                                                            <%= user.getNombre()%>
                                                        </td>
                                                        <td class="text-center">
                                                            <%= user.getApellido()%>
                                                        </td>
                                                        <td class="text-center">
                                                            <%= user.getEmail()%>
                                                        </td>
                                                        <td class="text-center">
                                                            <%= user.getNacimiento()%>
                                                        </td>
                                                        <td class="text-center">
                                                            <%= user.getUsername()%>
                                                        </td>
                                                        <td class="text-center">
                                                            <%= user.getPassword()%>
                                                        </td>
                                                        <td class="text-center">
                                                            <%= user.getAdmin()%>
                                                        </td>
                                                        <td class="text-center">
                                                            <a class="btn btn-warning" href="Admin?accion=editar&id=<%= user.getId_user()%>">Editar</a>
                                                            <a class="btn btn-danger" href="Admin?accion=eliminar&id=<%= user.getId_user()%>">Remove</a>
                                                        </td>
                                                    </tr>
                                                    <%}%>
                                                </tbody>
                                        </table>
                                    </div>
                                    <!-- Pie de página -->
                                    <%@ include file="../../../partials/footer.jsp" %>
                                        <!-- Fin de pie de página -->
                    </body>

                    </html>