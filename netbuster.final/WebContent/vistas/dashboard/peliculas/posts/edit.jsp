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
                <input class="form-control" type="text" name="nombre_p" value="<%= pelicula.getNombre_p()%>"><br>
                Fecha de estreno: <br>
                <input class="form-control" type="text" name="fecha_estreno" value="<%= pelicula.getFecha_estreno()%>"><br>
                Reseña: <br>
                <input class="form-control" type="text" name="resena" value="<%= pelicula.getResena()%>"><br>
                País de origen: <br>
                <input class="form-control" type="text" name="pais_o" value="<%= pelicula.getPais_o()%>"><br>
                Imagen: <br>
                <input class="form-control" type="text" name="foto" value="<%= pelicula.getFoto()%>"><br>
                Video: <br>
                <input class="form-control" type="text" name="video" value="<%= pelicula.getVideo()%>"><br>
                Premios: <br>
                <input class="form-control" type="text" name="premios" value="<%= pelicula.getPremios()%>"><br>
                Genero: <br>
                <input class="form-control" type="text" name="genero_p" value="<%= pelicula.getGenero_p()%>"><br>
                Actor principal: <br>
                <input class="form-control" type="text" name="actor_p" value="<%= pelicula.getActor_p()%>"><br>
                
                <input type="hidden" name="txtid" value="<%= pelicula.getId_pelicula()%>">
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
