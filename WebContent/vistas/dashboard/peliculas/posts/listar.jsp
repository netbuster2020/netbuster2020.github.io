<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Pelicula"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.PeliculaDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <%@ include file="../../../partials/head.jsp" %>
    <title>Pelicula</title>
</head>
<body>

    <%@ include file="../../../layouts/nav-dash.jsp" %>


<div class="container">
            <h1>Peliculas</h1>
            <a class="btn btn-success" href="peliculas?accion=add">Agregar Nuevo</a>
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">Nombre</th>
                        <th class="text-center">Genero</th>
                        <th class="text-center">Reseñas</th>
                        <th class="text-center">url Imagen</th>
                        <th class="text-center">Imagen</th>
                    </tr>
                </thead>
                <%
                    PeliculaDAO dao=new PeliculaDAO();
                    List<Pelicula>list=dao.listar();
                    Iterator<Pelicula>iter=list.iterator();
                    Pelicula addPelicula=null;
                    while(iter.hasNext()){
                        addPelicula=iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= addPelicula.getNombre_p()%></td>
                        <td class="text-center"><%= addPelicula.getGenero_p()%></td>
                        <td class="text-center"><%= addPelicula.getResena()%></td>
                        <td class="text-center"><%= addPelicula.getFoto()%></td>
                        <td class="text-center">
                            <a class="btn btn-warning" href="Peliculas?accion=editar&id=<%= addPelicula.getId_pelicula()%>">Editar</a>
                            <a class="btn btn-danger" href="Peliculas?accion=eliminar&id=<%= addPelicula.getId_pelicula()%>">Remove</a>
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
