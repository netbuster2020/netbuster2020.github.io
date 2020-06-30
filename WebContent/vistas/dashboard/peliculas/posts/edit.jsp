<%@page import="Modelo.Pelicula"%>
<%@page import="Modelo.PeliculaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <%@ include file="../../../partials/head.jsp" %>
        <title>Editar Pelicula</title>
    </head>
    <body>
        <%@ include file="../../../layouts/nav-dash.jsp" %>
    
        <div class="container">
            <div class="col-lg-6">
              <%
              PeliculaDAO nuevaPeliculadao=new PeliculaDAO();
              int id=Integer.parseInt((String)request.getAttribute("idper"));
              Pelicula pelicula =(Pelicula)nuevaPeliculadao.list(id);
              %>
            <h1>Modificar Peliculas</h1>
            <form action="Peliculas">
                Nombre: <br>
                    <input class="form-control" type="text" name="nombre_p" value="<%= series.getNombre_p()%>"><br>
                    Genero: <br>
                    <input class="form-control" type="text" name="genero_p" value="<%= series.getGenero_p()%>"><br>
                Resena: <br>
                <input class="form-control" type="text" name="resena" value="<%= series.getResena()%>"><br>
                Imagen: <br>
                <input class="form-control" type="text" name="foto" value="<%= series.getFoto()%>"><br>
                
                <input type="hidden" name="txtid" value="<%= series.getId_pelicula()%>">
                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"> 
                <a href="Peliculas?accion=listar">Regresar</a>
            </form>
          </div>
        </div>
        <!-- Pie de página -->
        <%@ include file="../../../partials/footer.jsp" %>
        <!-- Fin de pie de página -->
    </body>
</html>
