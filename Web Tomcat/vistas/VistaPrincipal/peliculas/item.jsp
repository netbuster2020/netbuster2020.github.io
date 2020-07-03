<%@page import="Modelo.Pelicula"%>
<%@page import="Modelo.PeliculaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<%@ include file="../../partials/head.jsp" %>
<%@ include file="../../partials/datos.jsp" %>
<title>Pelicula</title>
<style>
    .jumbotron {
        background: none !important;
    }
</style>
</head>
<body>
<!-- navegacion -->
<%@ include file="../../layouts/navegacion.jsp" %>
<!-- fin navegacion -->
<section>

    <%
    PeliculaDAO nuevaPeliculadao=new PeliculaDAO();
    int id=Integer.parseInt((String)request.getAttribute("idper"));
    Pelicula pelicula =(Pelicula)nuevaPeliculadao.list(id);
    %>

    <div class="container">
        <header class="jumbotron my-4">
          <div id="carouselExampleControls" class="carousel slide" data-ride="carousel"></div>
          <h1 class="display-3"><%= pelicula.getNombre_p()%></h1>
          <p class="lead"></p>
        </header>
    </div>

    <div class="container">
        <div class="row">


            <div class="col col-md-8">
                
                <!-- Card -->
                <div class="card">
                    <div class="view view-cascade overlay text-center">
                            <img src="<%= pelicula.getFoto()%>" class="img-fluid" alt="Responsive image">
                    </div>
                    <div class="card-body card-body-cascade text-center">
                    <h4 class="card-title"><strong><%= pelicula.getNombre_p()%></strong></h4>
                        <table class="table table-hover">
                          <tbody>
                            <tr>
                              <td colspan="2">Actor principal</td>
                              <td><%= pelicula.getActor_p()%></td>
                            </tr>
                            <tr>
                              <td colspan="2">Genero</td>
                              <td><%= pelicula.getGenero_p()%></td>
                            </tr>
                            <tr>
                              <td colspan="2">Fecha de estreno</td>
                              <td><%= pelicula.getFecha_estreno()%></td>
                            </tr>
                            <tr>
                              <td colspan="2">País de origen</td>
                              <td><%= pelicula.getPais_o()%></td>
                            </tr>

                            <tr>
                              <td colspan="2">Premios</td>
                              <td><%= pelicula.getPremios()%></td>
                            </tr>
                          </tbody>
                        </table>
                    </div>
                </div>

                <div class="card mt-4">
                    <div class="card-header"><%= pelicula.getNombre_p()%></div>
                    <div class="card-body">
                      <blockquote class="blockquote mb-0">
                        <p><%= pelicula.getResena()%></p>
                        <footer class="blockquote-footer">Grandes palabras de <cite title="Source Title">Java de Hutt</cite></footer>
                      </blockquote>
                    </div>
                </div>

                <div class="card mt-4">
                  <div class="card-body text-center">
                    <iframe width="100%" height="315" src="<%= pelicula.getVideo()%>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                  </div>
                </div>
            </div>

        </div>
    </div>

</section>
<!-- Pie de página -->
<%@ include file="../../partials/footer.jsp" %>
<!-- Fin de pie de página -->
</body>
</html>
