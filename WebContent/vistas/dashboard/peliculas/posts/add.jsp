<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="../../../partials/head.jsp" %>
        <title>Añadir pelicula</title>
    </head>
    <body>
        <%@ include file="../../../layouts/nav-dash.jsp" %>

        <div class="container">
            <div class="col-lg-6">
                <h1>Agregar pelicula</h1>
                <form action="Peliculas">
                    Nombre: <br>
                    <input class="form-control" type="text" name="nombre_p"><br>
                    Generos: <br>
                    <input class="form-control" type="text" name="genero_p"><br>
                    Reseña: <br>
                    <input class="form-control" type="text" name="resena"><br>
                    Imagen: <br>
                    <input class="form-control" type="text" name="foto"><br>

                    <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
                    <a href="Peliculas?accion=listar">Regresar</a>
                </form>
            </div>
        </div>
        <!-- Pie de página -->
        <%@ include file="../../../partials/footer.jsp" %>
        <!-- Fin de pie de página -->
    </body>
</html>