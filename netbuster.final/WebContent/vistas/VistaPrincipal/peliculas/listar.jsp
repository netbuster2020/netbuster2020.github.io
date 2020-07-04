<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Pelicula"%>
<%@page import="java.util.List"%>
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


    <div class="container">
        <header class="jumbotron my-4">
          <div id="carouselExampleControls" class="carousel slide" data-ride="carousel"></div>
          <h1 class="display-3">Catálogo de Peliculas</h1>
          
        </header>
    </div>

    <div class="container">
        <div class="row">

              <%
                    PeliculaDAO dao=new PeliculaDAO();
                    List<Pelicula>list=dao.listar();
                    Iterator<Pelicula>iter=list.iterator();
                    Pelicula addPelicula=null;
                    while(iter.hasNext()){
                        addPelicula=iter.next();
                %>

                
                
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card h-100">
                  <img class="card-img-top" src="<%= addPelicula.getFoto()%>" alt="">
                  <div class="card-body">
                    <h4 class="card-title"><%= addPelicula.getNombre_p()%></h4>
                    <p class="card-text"><strong><td class="text-center"><%= addPelicula.getGenero_p()%></td></strong><br></p>
                  </div>
                  <div class="card-footer">
                    <a class="btn btn-primary" href="Movie?accion=pelicula_inv&id=<%= addPelicula.getId_pelicula()%>">Ver más</a>
                  </div>
                </div>
              </div>
            <%}%>
        </div>
    </div>

</section>
<!-- Pie de página -->
<%@ include file="../../partials/footer.jsp" %>
<!-- Fin de pie de página -->
</body>
</html>
