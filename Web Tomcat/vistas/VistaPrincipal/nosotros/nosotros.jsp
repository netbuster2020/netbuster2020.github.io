<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<%@ include file="../../partials/head.jsp" %>
<%@ include file="../../partials/datos.jsp" %>

  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
<title>Noticias</title>
<style>
        body {
            text-align: center;
        }
    </style>
</head>

<body>
<!--Contenedor Accordion-->
    <div class="container">
<!--box shadow para resaltar el contenedor-->

        <div class="shadow p-3 mb-5 bg-white rounded">

            <!-- Jumbotron Header -->
            <header class="jumbotron my-1">
                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel"></div>
                <h1 class="display-3"><strong>Java the Hutt</strong></h1>
                <p class="lead">Creadores de la mejor página web para análisis de películas y series de la galaxia.</p>
            </header>
        </div>
<!--Iniciamos el Accordion-->
        <div class="accordion" id="accordionExample">
<!--Primer Accordion-->
            <div class="card">
                <div class="card-header" id="headingOne">
                    <h2 class="mb-0">
                        <button  class="text-success" type="button" data-toggle="collapse" data-target="#collapseOne"
                            aria-expanded="true" aria-controls="#collapseOne">
                            Bastián Monje
                        </button>
                    </h2>
                </div>
                <div id="collapseOne" class="collapse" aria-labelledby="headingTwo"
                    data-parent="#accordionExample">
                    <div class="card-body">
                        Programador The Hutt.
                    </div>
                </div>
            </div>
<!--Segundo Accordion-->
        <div class="card">
            <div class="card-header" id="headingTwo">
                <h2 class="mb-0">
                    <button class="text-success" type="button" data-toggle="collapse"
                        data-target="#collapseTwo" aria-expanded="false" aria-controls="#collapseTwo">
                        Pablo Lay
                    </button>
                </h2>
            </div>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                <div class="card-body">
                    Analista programador The Hutt.
                </div>
            </div>
        </div>
<!--Tercer Accordion-->
        <div class="card">
            <div class="card-header" id="headingThree">
                <h2 class="mb-0">
                    <button class="text-success" type="button" data-toggle="collapse"
                        data-target="#collapseThree" aria-expanded="false" aria-controls="#collapseThree">
                        Catalina Gonzalez
                    </button>
                </h2>
            </div>
            <div id="collapseThree" class="collapse" aria-labelledby="headingThree"
                data-parent="#accordionExample">
                <div class="card-body">
                    Diseñador gráfico/Programador The Hutt.
                </div>
            </div>
        </div>
<!--Cuarto Accordion-->
        <div class="card">
            <div class="card-header" id="headingFour">
                <h2 class="mb-0">
                    <button class="text-success" type="button" data-toggle="collapse"
                        data-target="#collapseFour" aria-expanded="true" aria-controls="#collapseFour">
                        Santiago Gelladuga
                    </button>
                </h2>
            </div>
            <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
                <div class="card-body">
                    Programador The Hutt.
                </div>
            </div>
        </div>
<!--Quinto Accordion-->
        <div class="card">
            <div class="card-header" id="headingFive">
                <h2 class="mb-0">
                    <button class="text-success" type="button" data-toggle="collapse"
                        data-target="#collapseFive" aria-expanded="false" aria-controls="#collapseFive">
                        Franco Muñoz
                    </button>
                </h2>
            </div>
            <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordionExample">
                <div class="card-body">
                    Programador The Hutt.
                </div>
            </div>
        </div>
    </div>
</div>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>

    <!-- Pie de página -->
<%@ include file="../../partials/footer.jsp" %>
<!-- Fin de pie de página -->
</body>
</html>
