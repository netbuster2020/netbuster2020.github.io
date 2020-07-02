<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Serie"%>
<%@page import="Modelo.SerieDAO"%>
<%@page import="Modelo.Pelicula"%>
<%@page import="Modelo.PeliculaDAO"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
    <html>

    <head>
    <%-- head --%>
    <%@ include file="vistas/partials/head.jsp" %>
    <title>Inicio Netbuster</title>
    <%-- Fin de head --%>
    </head>

    <!-- <style>
        .view {
            width: 100%;
            height: 300px;
        }
    </style> -->


    <%-- Cuerpo --%>

        <body>
            <div>


                <!-- Navegación -->
                <%@ include file="vistas/layouts/navegacion.jsp"%>
                    <!-- Fin de navegación -->

                    <!-- Contenido -->
                    <main>


                        
                        <section class="container">
                            
                            <div id="carousel-example-1z" class="carousel slide carousel-fade" data-ride="carousel">
                            
                                <ol class="carousel-indicators">
                                    <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
                                    <li data-target="#carousel-example-1z" data-slide-to="1"></li>
                                    <li data-target="#carousel-example-1z" data-slide-to="2"></li>
                                    <li data-target="#carousel-example-1z" data-slide-to="3"></li>
                                    <li data-target="#carousel-example-1z" data-slide-to="4"></li>
                                    <li data-target="#carousel-example-1z" data-slide-to="5"></li>
                                </ol>
                                
                                <div class="carousel-inner" role="listbox">

                                    <div class="carousel-item active">
                                        <img class="d-block w-100" loading="lazy" src="https://images.wallpapersden.com/image/download/silicon-valley-aly-mawji-aly-dutta_51454_1280x720.jpg" alt="First slide">
                                    </div>
                                    
                                    <div class="carousel-item">
                                        <img class="d-block w-100" loading="lazy" src="https://images.wallpapersden.com/image/download/black-panther-scratches-captain-americas-shield_64808_1280x720.jpg" alt="First slide">
                                    </div>
                                    
                                    <div class="carousel-item">
                                        <img class="d-block w-100" loading="lazy" src="https://images.wallpapersden.com/image/download/solo-a-star-wars-story-2018-cover_62184_1280x720.jpg" alt="Second slide">
                                    </div>
                                
                                    <div class="carousel-item">
                                        <img class="d-block w-100" loading="lazy" src="https://images.wallpapersden.com/image/download/avengers-infinity-war-latest-poster-2018_62270_1280x720.jpg" alt="Third slide">
                                    </div>

                                     <div class="carousel-item">
                                        <img class="d-block w-100" loading="lazy" src="https://images.wallpapersden.com/image/download/the-mandalorian-character-art_71562_1280x720.jpg" alt="Third slide">
                                    </div>

                                    <div class="carousel-item">
                                        <img class="d-block w-100" loading="lazy" src="https://images.wallpapersden.com/image/download/daenerys-and-dragon-got_71086_1280x720.jpg" alt="Third slide">
                                    </div>
                                </div>  
                                
                                <!--Controls-->
                                <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                                <!--/.Controls-->
                            </div>
                            <!--/.Carousel Wrapper-->
                        </section>
                        <!-- Fin Slide 3 imagenes -->

                        <!-- Mensaje bienvenida -->
                        <section class="container">
                            <div class="text-center rgba-stylish-strong py-5 px-4">
                                <div class="py-5">
                                    <!-- Content -->
                                    <h2 class="card-title h2 my-4 py-2">NetBuster</h2>
                                    <p class="mb-4 pb-2 px-md-5 mx-md-5">Catalogada como la mejor pagina de reseñas del 7° <br> arte La modestia es para el resto.</p>
                                </div>
                            </div>
                        </section>
                        <!-- fin Mensaje bienvenida -->

                        
                        <!-- Card contenido -->
                        <section class="container py-5">
                            
                            <div class="row ">

                                
                                <!-- Primer item - Luego copiar -->
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
                                        <!--Card image-->
                                        <div class="view">
                                            <img class="card-img-top img-fluid" style="width:100%" src="<%= addSerie.getFoto_s()%>" alt="Card image cap">
                                        </div>

                                        <!--Card content-->
                                        <div class="card-body"> 
                                            <p>⭐ <%= addSerie.getN_temporadas()%></p>
                                            <h4 class="card-title"><%= addSerie.getNombre_s()%></h4>
                                            <a class="btn btn-primary" href="Verseries?accion=serie_inv&id=<%= addSerie.getId_serie()%>">Ver más</a>
                                        </div>
                                    </div>
                                </div>
                                <%}%>
                                <!--  Fin Primer item - Luego copiar -->

                                <%
                    PeliculaDAO pedao=new PeliculaDAO();
                    List<Pelicula>listMovie=pedao.listar();
                    Iterator<Pelicula>iterPelicula=listMovie.iterator();
                    Pelicula addPelicula=null;
                    while(iterPelicula.hasNext()){
                        addPelicula=iterPelicula.next();
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
                        </section>
                        <!-- Fin Card contenido -->
                    </main>

                <!-- Pie de página -->
                <%@ include file="vistas/partials/footer.jsp" %>
                <!-- Fin de pie de página -->
            </div>
            <script src="assets/plugins/OwlCarousel2-2.3.4/dist/owl.carousel.min.js"></script>
            <script src="assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
            <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>


            <div class="container">
                
            </div>
        </body>

    </html>