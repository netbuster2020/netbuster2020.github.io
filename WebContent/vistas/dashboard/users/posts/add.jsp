<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <%@ include file="../../../partials/head.jsp" %>
            <title>Añadir usuarios</title>

            <!-- JQUERY VALIDATION JQYERY -->
            <%@ include file="../../../partials/datos.jsp" %>
            <!-- Fin -->
    </head>

    <body>
        <%-- Navegación --%>
        <%@ include file="../../../layouts/nav-dash.jsp" %>
                <%-- Fin de navegación --%>
                    <div class="container">
                        <div class="col-lg-8">
                            <h1>Agregar usuarios</h1>
                            <form action="Admin" id="formulario">
                                <div>
                                    <label for="nombre" class="mr-3">Nombre</label>
                                    <input class="form-control" type="text" name="nombre">
                                </div>
                                <div>
                                    <label for="apellido">Apellido</label>
                                    <input class="form-control" type="text" name="apellido">
                                </div>
                                <div>
                                    <label for="username">Username</label>
                                    <input class="form-control" type="text" name="username" maxlength="8">
                                </div>
                                <div>
                                    <label for="email">Email</label>
                                    <input class="form-control" type="email" name="email">
                                </div>
                                <div>
                                    <label for="password">Contraseña</label>
                                    <input class="form-control" type="password" name="password">
                                </div>
                                <div>
                                    <label for="nacimiento">Fecha de nacimiento</label>
                                    <input class="form-control" type="date" name="nacimiento"><br>
                                </div>
                                <div>
                                    <label for="admin">Tipo de usuario</label>
                                    <input class="form-control" type="text" name="admin"><br>
                                </div>

                                <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
                                <a href="Admin?accion=listar">Regresar</a>
                            </form>
                        </div>
                    </div>
                    <!-- Pie de página -->
                    <%@ include file="../../../partials/footer.jsp" %>
                        <!-- Fin de pie de página -->

                        <script>
                            console.log("Hola");
                            $("#formulario").validate({
                                rules: {
                                    nombre: {
                                        required: true,
                                        minlength: 4,
                                        maxlength: 20
                                    },
                                    apellido: {
                                        required: true,
                                        minlength: 6,
                                        maxlength: 50
                                    },
                                    username: {
                                        required: true,
                                        minlength: 5,
                                        maxlength: 20
                                    },
                                    email: {
                                        required: true,
                                        minlength: 10,
                                        maxlength: 60
                                    },
                                    password: {
                                        required: true,
                                        maxlength: 60
                                    },
                                    nacimiento: {
                                        required: true
                                    },
                                    admin: {
                                        required: true,
                                        maxlength: 1
                                    }
                                },
                                messages: {
                                    nombre: {
                                        required: "Debe ingresar nombre",
                                        minlength: "Debe tener mínimo 4 caracteres",
                                        maxlength: "Máximo 20 caracteres"
                                    },
                                    apellido: {
                                        required: "Debe ingresar un apellido",
                                        minlength: "Debe tener mínimo 6 caracteres",
                                        maxlength: "Puede tener hasta un máximo de 50 caracteres"
                                    },
                                    username: {
                                        required: "Debe ingresar un username",
                                        minlength: "Debe tener mínimo 5 caracteres",
                                        maxlength: "Puede tener hasta un máximo de 20 caracteres"
                                    },
                                    email: {
                                        required: "Ingrese un email",
                                        minlength: "Debe tener mínimo 5 caracteres",
                                        maxlength: "Puede tener hasta un máximo de 20 caracteres"
                                    },
                                    password: {
                                        required: "Debe ingresar un apellido",
                                        maxlength: "Puede tener hasta un máximo de 60 caracteres"
                                    },
                                    nacimiento: {
                                        required: "Debe ingresar fecha de nacimiento."
                                    },
                                    admin: {
                                        required: "Ingrese un rol (0 = Usuario, 1 = Admin)"
                                    },
                                    
                                    
                                }
                            });
                        </script>
    </body>

    </html>