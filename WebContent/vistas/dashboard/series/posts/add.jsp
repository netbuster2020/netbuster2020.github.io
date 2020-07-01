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
            <div class="col-lg-6">
                <h1>Agregar series</h1>
                <form action="Series" id="formulario">
                    Nombre: <br>
                    <input class="form-control" type="text" name="nombre_s"><br>
                    Año: <br>
                    <input class="form-control" type="date" name="ano_estreno"><br>
                    Temporadas: <br>
                    <input class="form-control" type="text" name="n_temporadas" ><br>
                    Idioma original: <br>
                    <input class="form-control" type="text" name="ideoma_original" ><br>
                    Genero: <br>
                    <input class="form-control" type="text" name="genero_s"><br>
                    Plataforma: <br>
                    <input class="form-control" type="text" name="plataforma"><br>
                    Estado: <br>
                    <input class="form-control" type="text" name="estado"><br>
                    Reseña: <br>
                    <input class="form-control" type="text" name="resena_s"><br>
                    Foto: <br>
                    <input class="form-control" type="text" name="foto_s"><br>
                    Video: <br>
                    <input class="form-control" type="text" name="video_s"><br>

                    <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
                    <a href="Series?accion=listar">Regresar</a>
                </form>
            </div>
        </div>

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
                        maxlength: 300
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
        <!-- Pie de página -->
        <%@ include file="../../../partials/footer.jsp" %>
        <!-- Fin de pie de página -->
    </body>
</html>
