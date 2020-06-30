<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="../../../partials/head.jsp" %>
        <title>Añadir serie</title>
    </head>
    <body>
        <%@ include file="../../../layouts/nav-dash.jsp" %>

        <div class="container">
            <div class="col-lg-6">
                <h1>Agregar series</h1>
                <form action="Series">
                    Nombre: <br>
                    <input class="form-control" type="text" name="nombre_s" value="<%= series.getNombre_s()%>"><br>
                    Generos: <br>
                    <input class="form-control" type="text" name="genero_s" value="<%= series.getGenero_s()%>"><br>
                    Reseña: <br>
                    <input class="form-control" type="text" name="resena_s" value="<%= series.getResena_s()%>"><br>
                    Imagen: <br>
                    <input class="form-control" type="text" name="foto_s" value="<%= series.getFoto_s()%>"><br>

                    <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
                    <a href="Series?accion=listar">Regresar</a>
                </form>
            </div>
        </div>
        <!-- Pie de página -->
        <%@ include file="../../../partials/footer.jsp" %>
        <!-- Fin de pie de página -->
    </body>
</html>
