<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<%@ include file="../../partials/head.jsp" %>
<%@ include file="../../partials/datos.jsp" %>
<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
<title>Noticias</title>
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

      <h1>Noticias de cine</h1>
      <p>(Sabemos lo importante que es mantenerse informado en la situación actual, haga click en el enlace para ver las
        ultimas noticias del virus <a
          href="https://www.gob.cl/coronavirus/?gclid=CjwKCAjwi_b3BRAGEiwAemPNUydYMkBRXB-3el0T54pPWAKSvQW12EsMbz7Oq-Uj3aqFvesP0IjnqxoCEyUQAvD_BwE">COVID-19</a>).
      </p>
    </div>
  </div>
  <!-- Modal -->

  <div id="myModal1" class="modal fade" role="dialog">
    <div class="modal-dialog">

      <!-- Contenido del modal 1 -->
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Breaking News</h4>
        </div>
        <div class="modal-body">
          <p>Si no la viste en cines, no puedes perderte el estreno de Onward de
            Disney·Pixar en Disney+. Será este viernes 3 de julio cuando podrás disfrutar en la plataforma de
            'streaming' de Disney del último trabajo de Dan Scanlon,
            guionísta y director conocido por Monster University (2013). Estrenada el pasado 6 de marzo en cines, la
            película de animación permaneció durante un
            tiempo limitado en salas debido a la pandemia del coronavirus.
          </p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>

    </div>
  </div>
  <div id="myModal2" class="modal fade" role="dialog">
    <div class="modal-dialog">

      <!-- Contenido del modal 2-->
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Breaking News</h4>
        </div>
        <div class="modal-body">
          <p>La pandemia del coronavirus ha provocado el retraso de varias producciones, entre ellas la esperada
            Spider-Man 3 de Sony Pictures y Marvel Studios, continuación de las exitosas Spider-Man: Homecoming (2017) y
            Spider-Man: Lejos de casa (2019). Tom Holland volverá a meterse en la piel de Peter Parker, ya que el
            estreno de la siguiente entrega del Trepamuros, dentro de la Fase 4 de Marvel Studios, está señalada para el
            5 de noviembre de 2021 en EE.UU. A pesar del COVID-19, la grabación se mantenía en un principio para este
            verano. Pero nueva información de 'casting' a la que ha tenido acceso el medio Comic Book señala que el plan
            podría haber cambiado y que el rodaje podría comenzar ahora en septiembre.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>

    </div>
  </div>
  <div id="myModal3" class="modal fade" role="dialog">
    <div class="modal-dialog">

      <!-- Contenido del modal 3 -->
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Breaking News</h4>
        </div>
        <div class="modal-body">
          <p>Jordan Peele, director de Déjame salir y Nosotros y productor de la nueva película de Candyman, cuyo
            estreno está señalado en cines para el 25 de septiembre, podría estar desarrollando un nuevo proyecto de
            terror. Aunque el filme no ha sido ni mucho menos confirmado, un rumor indica que Universal Pictures se
            habría fijado en él para su siguiente título de monstruos tras el éxito de El hombre invisible de Leigh
            Whannell -este, con Elisabeth Moss, ha conseguido recaudar más de 124 millones de dólares. Pero ahí no acaba
            el tema, pues Peele podría tener en mente al actor Will Smith (Géminis, Aladdín).</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>

    </div>
  </div>

  <!--Contenerdor para noticias.-->
  <div class="container">
    <!--box shadow para resaltar el contenedor-->
    <div class="shadow p-3 mb-5 bg-white rounded">
      <div class="row">

        <!--Noticia 1-->

        <div class="col-md-4">
          <img class="card-img-top" src="https://images-na.ssl-images-amazon.com/images/I/91g5yplbelL._SX450_.jpg"
            alt="">
          <h2>Onward</h2>
          <p>'Onward', lo último de Disney Pixar, se estrenaría este viernes 3 de julio en Disney+.</p>
          <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal1">Saber
            más</button>
        </div>
        <!--Noticia 2-->
        <div class="col-md-4">
          <img class="card-img-top"
            src="https://assets.getmyleather.com/wp-content/uploads/2019/07/Tom-Holland-Suede-Jacket2-450x600.jpg"
            alt="">
          <h2>Spider-man 3</h2>
          <p>'Spider-Man 3': El rodaje con Tom Holland podría empezar en septiembre.</p>
          <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal2">Saber más
          </button>

        </div>
        <!--Noticia 3-->
        <div class="col-md-4">
          <img class="card-img-top"
            src="https://media.samishleather.com/wp-content/uploads/2020/01/Bad-Boys-For-Life-Will-Smith-Black-Leather-Jacket.jpg"
            alt="">
          <h2>RUMOR:</h2>
          <p>Jordan Peele podría estar desarrollando una película de terror pensada para Will Smith.</p>
          <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal3">Saber más
          </button>

        </div>
      </div>
    </div>
  </div>
  <!--Javascript-->
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>



</section>
<!-- Pie de página -->
<%@ include file="../../partials/footer.jsp" %>
<!-- Fin de pie de página -->
</body>
</html>
