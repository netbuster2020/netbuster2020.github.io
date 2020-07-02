<%@page import="Modelo.Serie"%>
<%@page import="Modelo.SerieDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <%@ include file="../../../partials/head.jsp" %>
        <title>Editar serie</title>
    </head>
    <body>
        <%@ include file="../../../layouts/nav-dash.jsp" %>
    
        <div class="container">
            <div class="col-lg-6">
              <%
              SerieDAO nuevaSeriedao=new SerieDAO();
              int id=Integer.parseInt((String)request.getAttribute("idper"));
              Serie series =(Serie)nuevaSeriedao.list(id);
              %>
            <h1>Modificar Serie</h1>
            <form action="Series">
                Nombre: <br>
                    <input class="form-control" type="text" name="nombre_s" value="<%= series.getNombre_s()%>"><br>
                    Año: <br>
                    <input class="form-control" type="text" name="ano_estreno" value="<%= series.getAno_estreno()%>"><br>
                    Temporadas: <br>
                    <input class="form-control" type="text" name="n_temporadas" value="<%= series.getN_temporadas()%>"><br>
                    Idioma original: <br>
                    <input class="form-control" type="text" name="ideoma_original" value="<%= series.getIdeoma_original()%>"><br>
                    Genero: <br>
                    <input class="form-control" type="text" name="genero_s" value="<%= series.getGenero_s()%>"><br>
                    Plataforma: <br>
                    <input class="form-control" type="text" name="plataforma" value="<%= series.getPlataforma()%>"><br>
                    Estado: <br>
                    <input class="form-control" type="text" name="estado" value="<%= series.getEstado()%>"><br>
                    Reseña: <br>
                    <input class="form-control" type="text" name="resena_s" value="<%= series.getResena_s()%>"><br>
                    Foto: <br>
                    <input class="form-control" type="text" name="foto_s" value="<%= series.getFoto_s()%>"><br>
                    Video: <br>
                    <input class="form-control" type="text" name="video_s" value="<%= series.getVideo_s()%>"><br>
                
                <input type="hidden" name="txtid" value="<%= series.getId_serie()%>">
                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"> 
                <a href="Series?accion=listar">Regresar</a>
            </form>
          </div>
        </div>
        <!-- Pie de página -->
        <%@ include file="../../../partials/footer.jsp" %>
        <!-- Fin de pie de página -->
    </body>
</html>
