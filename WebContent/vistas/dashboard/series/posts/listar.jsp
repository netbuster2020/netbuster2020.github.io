<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Serie"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.SerieDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <%@ include file="../../../partials/head.jsp" %>
    <title>Series</title>
</head>
<body>

    <%@ include file="../../../layouts/nav-dash.jsp" %>


<div class="container">
            <h1>Series</h1>
            <a class="btn btn-success" href="Series?accion=add">Agregar Nuevo</a>
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
                    SerieDAO dao=new SerieDAO();
                    List<Serie>list=dao.listar();
                    Iterator<Serie>iter=list.iterator();
                    Serie addSerie=null;
                    while(iter.hasNext()){
                        addSerie=iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= addSerie.getNombre_s()%></td>
                        <td class="text-center"><%= addSerie.getGenero_s()%></td>
                        <td class="text-center"><%= addSerie.getResena_s()%></td>
                        <td class="text-center"><%= addSerie.getFoto_s()%></td>
                        <td class="text-center">
                            <a class="btn btn-warning" href="Series?accion=editar&id=<%= addSerie.getId_serie()%>">Editar</a>
                            <a class="btn btn-danger" href="Series?accion=eliminar&id=<%= addSerie.getId_serie()%>">Remove</a>
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
