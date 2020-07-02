<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="partials/head.jsp" %>
        <title>Añar usuario</title>
    </head>
    <body>
        <!-- Navegación -->
        <%@ include file="layouts/navegacion.jsp"%>  
        <!-- Fin de navegación -->
        <div class="container">
            <div class="col-lg-6">
                <h1>Agregar Usuario</h1>
                <form action="Controlador">
                    username:<br>
                    <input class="form-control" type="text" name="username"><br>
                    password: <br>
                    <input class="form-control" type="password" name="password"><br>
                    Fullname: <br>
                    <input class="form-control" type="text" name="fullname"><br>
                    <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
                    <a href="Controlador?accion=listar">Regresar</a>
                </form>
            </div>

        </div>
        <!-- Pie de página -->
        <%@ include file="partials/footer.jsp" %>
        <!-- Fin de pie de página -->
    </body>
</html>
