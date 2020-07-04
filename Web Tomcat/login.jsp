<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <html>

    <head>
        <%@ include file="vistas/partials/head.jsp" %>
        <title>Login</title>
        <%@ include file="vistas/partials/datos.jsp" %>
    </head>

    <body>
        <!-- Navegación -->
        <%@ include file="vistas/layouts/navegacion.jsp"%>
            <!-- Fin de navegación -->

            <main class="container">
                <div class="row justify-content-md-center py-5">
                    <div class="col-12 col-sm-12 col-md-8 col-lg-7 py-5">

                        <form id="formulario" action="login" method="POST">
                            <div class="form-group">
                                <label for="username">Username</label>
                                <input type="text" class="form-control" value="basmonje"  name="username">
                            </div>
                            <div class="form-group">
                                <label for="password">Contraseña</label>
                                <input type="password" class="form-control" value="admin69" name="password">
                            </div>


                            <!-- <div class="form-group form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Recordarme</label>
                            </div> -->

                            <button type="submit" value="Login"  class="btn btn-primary">Ingresar</button>
                            <a class="btn btn-dark" href="Register.jsp">Registrar</a>
                        </form>
                    </div>
                </div>


                <script>
                    console.log("Hola");
                    $("#formulario").validate({
                        rules: {
                            username: {
                                required: true,
                                minlength: 4,
                                maxlength: 20
                            },
                            password: {
                                required: true,
                                minlength: 4,
                                maxlength: 8
                            }
                        },
                        messages: {
                            username: {
                                required: "Debe ingresar Username",
                                minlength: "Debe tener mínimo 4 caracteres",
                                maxlength: "Máximo 20 caracteres"
                            },
                            password: {
                                required: "Debe ingresar Password",
                                minlength: "Debe tener mínimo 4 caracteres",
                                maxlength: "Máximo 8 caracteres"
                            },
                        }
                    });
                </script>
            </main>
    </body>

    </html>