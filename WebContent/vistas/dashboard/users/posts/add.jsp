<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <%@ include file="../../../partials/head.jsp" %>
            <title>Añadir usuarios</title>
    </head>

    <body>
        <%-- Navegación --%>
        <%@ include file="../../../layouts/nav-dash.jsp" %>
                <%-- Fin de navegación --%>
                    <div class="container">
                        <div class="col-lg-6">
                            <h1>Agregar usuarios</h1>
                            <form action="Admin">
                                <label for="nombre">Nombre</label>
                                <input class="form-control" type="text" name="nombre">
                                <label for="apellido">Apellido</label>
                                <input class="form-control" type="text" name="apellido">
                                <label for="username">Username</label>
                                <input class="form-control" type="text" name="username">
                                <label for="email">Email</label>
                                <input class="form-control" type="email" name="email">
                                <label for="password">Contraseña</label>
                                <input class="form-control" type="password" name="password">
                                <label for="nacimiento">Fecha de nacimiento</label>
                                <input class="form-control" type="date" name="nacimiento"><br>
                                <label for="type_user">Tipo de usuario</label>
                                <input class="form-control" type="text" name="type_user"><br>

                                <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
                                <a href="Admin?accion=listar">Regresar</a>
                            </form>
                        </div>
                    </div>
                    <!-- Pie de página -->
                    <%@ include file="../../../partials/footer.jsp" %>
                        <!-- Fin de pie de página -->
    </body>

    </html>