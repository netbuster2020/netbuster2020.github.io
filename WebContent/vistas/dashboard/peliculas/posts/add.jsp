<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="../../../partials/head.jsp" %>

        
        <title>Añadir pelicula</title>

        
            <!-- JQUERY VALIDATION JQYERY -->
            <%@ include file="../../../partials/datos.jsp" %>
            <!-- Fin -->
    </head>
    <body>
        <%@ include file="../../../layouts/nav-dash.jsp" %>

        <div class="container">
                                   <div class="col-lg-8">
                            <h1>Agregar Peliculas</h1>
                            <form action="Admin" id="formulario">
                                <div>
                                    <label for="nombre_p" class="mr-3">Nombre</label>
                                    <input class="form-control" type="text" name="nombre_p" maxlength="50">
                                </div>
                                <div>
                                    <label for="fecha_estreno">Fecha de Estreno</label>
                                    <input class="form-control" type="date" name="fecha_estreno">
                                </div>
                                <div>
                                    <label for="pais_o">pais de origen</label>
                                    <input class="form-control" type="text" name="pais_o" maxlength="20">
                                </div>
                                <div>
                                    <label for="genero_p">Genero</label>
                                    <input class="form-control" type="text" name="genero_p" maxlength="40">
                                </div>
                                <div>
                                    <label for="actor_p">Actor Principal</label>
                                    <input class="form-control" type="text" name="actor_p" maxlength="20">
                                </div>
                                <div>
                                    <label for="premios">Premios</label>
                                    <input class="form-control" type="text" name="premios" maxlength="100"><br>
                                </div>
                                <div>
                                    <label for="resena">Reseña</label>
                                    <input class="form-control" type="text" name="resena" maxlength="500"><br>
                                </div>
                               <div>
                                    <label for="foto">Foto</label>
                                    <input class="form-control" type="text" name="foto" maxlength="300"><br>
                                </div>
                                 <div>
                                    <label for="video">video</label>
                                    <input class="form-control" type="text" name="video" maxlength="300"><br>
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
                                    nombre_p: {
                                        required: true,
                                        minlength: 4,
                                        maxlength: 50
                                    },
                                    fecha_estreno: {
                                        required: true
                                    },
                                    pais_o: {
                                        required: true,
                                        minlength: 5,
                                        maxlength: 20
                                    },
                                    genero_p: {
                                        required: true,
                                        minlength: 10,
                                        maxlength: 40
                                    },
                                    actor_p: {
                                        required: true,
                                        minlength: 10,
                                        maxlength: 60
                                    },
                                    premios: {
                                        required: true,
                                        minlength: 10,
                                        maxlength: 100
                                    },
                                    resena: {
                                        required: true,
                                        minlength: 10,
                                        maxlength: 500
                                    },
                                    foto: {
                                        required: true,
                                        minlength: 10,
                                        maxlength: 300
                                    },
                                    video: {
                                        required: true,
                                        minlength: 10,
                                        maxlength: 300
                                    }
                                },
                                messages: {
                                    nombre: {
                                        required: "Debe ingresar el nombre de la pelicula",
                                        minlength: "Debe tener mínimo 4 caracteres",
                                        maxlength: "Máximo 50 caracteres"
                                    },
                                    fecha_estreno: {
                                        required: "Debe ingresar fecha de estreno."
                                    },
                                    pais_o: {
                                        required: "Debe ingresar el pais de origen",
                                        minlength: "Debe tener mínimo 5 caracteres",
                                        maxlength: "Puede tener hasta un máximo de 20 caracteres"
                                    },
                                    genero_p: {
                                        required: "Debe ingresar como minimo un genero",
                                        minlength: "Debe tener mínimo 4 caracteres",
                                        maxlength: "Puede tener hasta un máximo de 40 caracteres"
                                    },
                                    actor_p: {
                                        required: "Debe ingresar el nombre del actor",
                                        minlength: "Debe tener mínimo 5 caracteres",
                                        maxlength: "Puede tener hasta un máximo de 60 caracteres"
                                    },
                                    premios: {
                                        required: "Debe ingresar si gano un premio o si aun no",
                                         minlength: "Debe tener mínimo 2 caracteres",
                                        maxlength: "Puede tener hasta un máximo de 100 caracteres"
                                    },
                                    resena: {
                                        required: "Debe ingresar una reseña",
                                         minlength: "Debe tener mínimo 10 caracteres",
                                        maxlength: "Puede tener hasta un máximo de 500 caracteres"
                                    },
                                    foto: {
                                        required: "Debe ingresar el link de la foto de la pelicula",
                                         minlength: "Debe tener mínimo 10 caracteres",
                                        maxlength: "Puede tener hasta un máximo de 300 caracteres"
                                    }, 
                                     video: {
                                        required: "Debe ingresar el link del trailer de la pelicula (youtube)",
                                         minlength: "Debe tener mínimo 10 caracteres",
                                        maxlength: "Puede tener hasta un máximo de 300 caracteres"
                                    },
                                    
                                    
                                }
                            });
                        </script>
    </body>
</html>