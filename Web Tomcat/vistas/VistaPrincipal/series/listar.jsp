<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Serie"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.SerieDAO"%>

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


    <div class="container">
        <header class="jumbotron my-4">
          <div id="carouselExampleControls" class="carousel slide" data-ride="carousel"></div>
          <h1 class="display-3">Catálogo de Series</h1>
          <p class="lead"></p>
        </header>
    </div>

    <div class="container">
        <div class="row">

            <%
                    SerieDAO dao=new SerieDAO();
                    List<Serie>list=dao.listar();
                    Iterator<Serie>iter=list.iterator();
                    Serie addSerie=null;
                    while(iter.hasNext()){
                        addSerie=iter.next();
                %>

                
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card h-100">
                  <img class="card-img-top" src="<%= addSerie.getFoto_s()%>" alt="">
                  <div class="card-body">
                    <h4 class="card-title"><%= addSerie.getNombre_s()%></h4>
                    <p class="card-text"><strong><td class="text-center"><%= addSerie.getGenero_s()%></td></strong><br></p>
                  </div>
                  <div class="card-footer">
                    <a class="btn btn-primary" href="Verseries?accion=serie_inv&id=<%= addSerie.getId_serie()%>">Ver más</a>
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
