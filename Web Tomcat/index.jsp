<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Serie"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.SerieDAO"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
    <html>

    <head>
        <%-- head --%>
            <%@ include file="vistas/partials/head.jsp" %>
                <title>Inicio Netbuster</title>
                <%-- Fin de head --%>
    </head>


    <%-- Cuerpo --%>

        <body>
            <div>


                <!-- Navegación -->
                <%@ include file="vistas/layouts/navegacion.jsp"%>
                    <!-- Fin de navegación -->

                    <!-- Contenido -->
                    <main>


                        <!-- Slide 3 imagenes -->
                        <section class="container">
                            <!--Carousel Wrapper-->
                            <div id="carousel-example-1z" class="carousel slide carousel-fade" data-ride="carousel">
                                <!--Indicators-->
                                <ol class="carousel-indicators">
                                    <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
                                    <li data-target="#carousel-example-1z" data-slide-to="1"></li>
                                    <li data-target="#carousel-example-1z" data-slide-to="2"></li>
                                </ol>
                                <!--/.Indicators-->
                                <!--Slides-->
                                <div class="carousel-inner" role="listbox">
                                    <!--First slide-->
                                    <div class="carousel-item active">
                                        <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(141).jpg" alt="First slide">
                                    </div>
                                    <!--/First slide-->
                                    <!--Second slide-->
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(136).jpg" alt="Second slide">
                                    </div>
                                    <!--/Second slide-->
                                    <!--Third slide-->
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(137).jpg" alt="Third slide">
                                    </div>
                                    <!--/Third slide-->
                                </div>
                                <!--/.Slides-->
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
                                    <a href="vistas/VistaPrincipal/peliculas/listar.jsp">quiero ver</a>
                                    <p class="mb-4 pb-2 px-md-5 mx-md-5">Catalogada como la mejor pagina de reseñas del 7° <br> arte La modestia es para el resto.</p>
                                    <a class="btn peach-gradient"><i class="fas fa-clone left"></i> Donar</a>
                                </div>
                            </div>
                        </section>
                        <!-- fin Mensaje bienvenida -->

                        <hr class="my-5">

                        
                        <!-- Card contenido -->
                        <section class="container py-5">
                            
                            <div class="row row-cols-1 row-cols-md-3">

                                
                                <!-- Primer item - Luego copiar -->
                                <%
                    SerieDAO dao=new SerieDAO();
                    List<Serie>list=dao.listar();
                    Iterator<Serie>iter=list.iterator();
                    Serie addSerie=null;
                    while(iter.hasNext()){
                        addSerie=iter.next();
                    
                %>
                                <div class="col mb-4">
                                    <div class="card h-100">
                                        <!--Card image-->
                                        <div class="view overlay">
                                            <img class="card-img-top" src="<%= addSerie.getFoto_s()%>" alt="Card image cap">
                                            <a href="#!">
                                                <div class="mask rgba-white-slight"></div>
                                            </a>
                                        </div>

                                        <!--Card content-->
                                        <div class="card-body">
                                            <h4 class="card-title"><%= addSerie.getNombre_s()%></h4>
                                            <p><%= addSerie.getGenero_s()%></p>
                                            <p class="card-text"><%= addSerie.getResena_s()%></p>
                                            <a class="btn btn-warning" href="Series?accion=editar&id=<%= addSerie.getId_serie()%>">Leer más</a>
                                            <button type="button" class="btn btn-light-blue btn-md">Leer más</button>
                                        </div>
                                    </div>
                                </div>
                                <%}%>
                                <!--  Fin Primer item - Luego copiar -->

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
        </body>

    </html>