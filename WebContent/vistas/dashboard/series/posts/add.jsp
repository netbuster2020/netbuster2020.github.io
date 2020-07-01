<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="../../../partials/head.jsp" %>
        <title>Añadir serie</title>
         <!-- JQUERY VALIDATION JQYERY -->
            <%@ include file="../../../partials/datos.jsp" %>
            <!-- Fin -->
    </head>
    <body>
        <%@ include file="../../../layouts/nav-dash.jsp" %>

        <div class="container">
                                   <div class="col-lg-8">
                            <h1>Agregar series</h1>
                            <form action="Admin" id="formulario">
                                <div>
                                    <label for="nombre_s" class="mr-3">Nombre</label>
                                    <input class="form-control" type="text" name="nombre_s" maxlength="30">
                                </div>
                                <div>
                                    <label for="ano_estreno">Fecha de Estreno</label>
                                    <input class="form-control" type="date" name="ano_estreno">
                                </div>
                                <div>
                                    <label for="n_temporadas">numero de temporadas</label>
                                    <input class="form-control" type="text" name="n_temporadas">
                                </div>
                                <div>
                                    <label for="ideoma_original">Ideoma Original</label>
                                    <input class="form-control" type="text" name="ideoma_original" maxlength="20">
                                </div>
                                <div>
                                    <label for="genero_s">Genero</label>
                                    <input class="form-control" type="text" name="genero_s" maxlength="40">
                                </div>
                                <div>
                                    <label for="plataforma">plataforma</label>
                                    <input class="form-control" type="text" name="plataforma" maxlength="100"><br>
                                </div>
                                <div>
                                    <label for="estado">Estado de la serie (Activo/Pausado/Finalizado)</label>
                                    <input class="form-control" type="text" name="estado" maxlenght="20"><br>
                                </div>
                                <div>
                                    <label for="resena_s">Reseña de la serie</label>
                                    <input class="form-control" type="text" name="resena_s" maxlength="500"><br>
                                </div>
                                <div>
                                    <label for="foto_s">Foto</label>
                                    <input class="form-control" type="text" name="foto_s" maxlength="300"><br>
                                </div>
                                <div>
                                    <label for="video_s">Video</label>
                                    <input class="form-control" type="text" name="video_s" maxlength="300"><br>
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
                                    nombre_s: {
                                        required: true,
                                        minlength: 4,
                                        maxlength: 30
                                    },
                                    ano_estreno: {
                                        required: true
                                    },
                                    n_temporadas: {
                                        required: true,
                                        minlength: 1,
                                        maxlength: 3
                                    },
                                    ideoma_original: {
                                        required: true,
                                        minlength: 5,
                                        maxlength: 20
                                    },
                                    genero_s: {
                                        required: true,
                                        minlength: 5,
                                        maxlength: 40
                                    },
                                    plataforma: {
                                        required: true,
                                        minlength: 5,
                                        maxlength: 100
                                    },
                                    estado : {
                                        required: true,                               
                                        minlength: 6,
                                        maxlength: 20
                                    },
                                    resena_s : {
                                        required: true,                       
                                        minlength: 10,
                                        maxlength: 500
                                    },
                                    foto_s: {
                                        required: true,
                                        minlength: 10,
                                        maxlength: 300
                                    },
                                    video_s: {
                                        required: true,
                                        minlength: 10,
                                        maxlength: 100
                                    }
                                },
                                messages: {
                                    nombre_s: {
                                        required: "Debe ingresar el nombre de la pelicula",
                                        minlength: "Debe tener mínimo 4 caracteres",
                                        maxlength: "Máximo 30 caracteres"
                                    },
                                    ano_estreno: {
                                        required: "Debe ingresar fecha de estreno."
                                    },
                                    n_temporadas: {
                                        required: "Debe ingresar el numero de temporadas de la serie",
                                        minlength: "Debe tener mínimo 1 caracteres",
                                        maxlength: "Puede tener hasta un máximo de 3 caracteres"
                                    },
                                    ideoma_original: {
                                        required: "Debe ingresar el nombre ideoma original de la serie",
                                        minlength: "Debe tener mínimo 5 caracteres",
                                        maxlength: "Puede tener hasta un máximo de 20 caracteres"
                                    },
                                    genero_s: {
                                        required: "Debe ingresar el Genero de la serie",
                                        minlength: "Debe tener mínimo 5 caracteres",
                                        maxlength: "Puede tener hasta un máximo de 40 caracteres"
                                    },
                                    plataforma: {
                                        required: "Debe ingresar el nombre de la plataforma donde se encuentra la serie",
                                         minlength: "Debe tener mínimo 5 caracteres",
                                        maxlength: "Puede tener hasta un máximo de 100 caracteres"
                                    },
                                    estado: {     
                                    required: "Debe el estado de la serie",
                                         minlength: "Debe tener mínimo 6 caracteres",
                                        maxlength: "Puede tener hasta un máximo de 20 caracteres"
                                    },
                                    resena_s: {
                                        required: "Debe ingresar la reseña de la serie",
                                         minlength: "Debe tener mínimo 10 caracteres",
                                        maxlength: "Puede tener hasta un máximo de 500 caracteres"
                                    }, 
                                    foto_s: {
                                        required: "Debe ingresar el link de la foto de la serie",
                                         minlength: "Debe tener mínimo 10 caracteres",
                                        maxlength: "Puede tener hasta un máximo de 300 caracteres"
                                    }, 
                                    video_s: {
                                        required: "Debe ingresar el link del trailer de la serie (youtube)",
                                         minlength: "Debe tener mínimo 10 caracteres",
                                        maxlength: "Puede tener hasta un máximo de 300 caracteres"
                                    },
                                }
                            });
                        </script>
    </body>
</html>