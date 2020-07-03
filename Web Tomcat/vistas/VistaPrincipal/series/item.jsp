<%@page import="Modelo.Serie"%>
<%@page import="Modelo.SerieDAO"%>
<%@page import="Modelo.Comentario"%>
<%@page import="Modelo.ComentarioDAO"%>
<%@page import="Modelo.ComentarioSerie"%>
<%@page import="Modelo.ComentarioSerieDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<%@ include file="../../partials/head.jsp" %>
<%@ include file="../../partials/datos.jsp" %>
<title>Serie</title>
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
    SerieDAO newSerie =new SerieDAO();
    int id=Integer.parseInt((String)request.getAttribute("idper"));
    Serie serie =(Serie)newSerie.list(id);
    %>

    <div class="container">
        <header class="jumbotron my-4">
          <div id="carouselExampleControls" class="carousel slide" data-ride="carousel"></div>
          <h1 class="display-3"><%= serie.getNombre_s()%></h1>
          <p class="lead"></p>
        </header>
    </div>

    <div class="container">
        <div class="row">


            <div class="col-12 col-md-8">
                
                <!-- Card -->
                <div class="card">
                    <div class="view view-cascade overlay text-center">
                            <img src="<%= serie.getFoto_s()%>" class="img-fluid" alt="Responsive image">
                    </div>
                    <div class="card-body card-body-cascade text-center">
                    <h4 class="card-title"><strong><%= serie.getNombre_s()%></strong></h4>
                        <table class="table table-hover">
                          <tbody>
                            <tr>
                              <td colspan="2">Temporadas</td>
                              <td><%= serie.getN_temporadas()%></td>
                            </tr>
                            <tr>
                              <td colspan="2">Genero</td>
                              <td><%= serie.getGenero_s()%></td>
                            </tr>
                            <tr>
                              <td colspan="2">Año de estreno</td>
                              <td><%= serie.getAno_estreno()%></td>
                            </tr>
                            <tr>
                              <td colspan="2">Idioma general</td>
                              <td><%= serie.getIdeoma_original()%></td>
                            </tr>
                            <tr>
                              <td colspan="2">Plataforma</td>
                              <td><%= serie.getPlataforma()%></td>
                            </tr>

                            <tr>
                              <td colspan="2">Estado</td>
                              <td><%= serie.getEstado()%></td>
                            </tr>
                          </tbody>
                        </table>
                    </div>
                </div>

                <div class="card mt-4 mb-4">
                    <div class="card-header"><%= serie.getNombre_s()%></div>
                    <div class="card-body">
                      <blockquote class="blockquote mb-0">
                        <p><%= serie.getResena_s()%></p>
                        <footer class="blockquote-footer">Grandes palabras de <cite title="Source Title">Java de Hutt</cite></footer>
                      </blockquote>
                    </div>
                </div>

                <div class="card mt-4">
                  <div class="card-body text-center">
                    <iframe width="100%" height="315" src="<%= serie.getVideo_s()%>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                  </div>
				</div>

				<%
	ComentarioDAO newComentario =new ComentarioDAO();
	
	int id=Integer.parseInt((String)request.getAttribute("idper"));
	
    Serie Comentario =(Serie)newComentario.list(id);
    %>
				

                <div class="card mt-4 mb-4">
					<div class="card mt-3 m-4 mb-3">
						<div class="card-header"><%= Comentario.getMensaje()%></div>
						<div class="card-body">
						  <blockquote class="blockquote mb-0">
							<p>Comentario</p>
							<footer class="blockquote-footer">Fecha <cite title="Source Title">2020/05/02</cite></footer>
						  </blockquote>
						</div>
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
