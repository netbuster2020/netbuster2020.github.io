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
                    Genero: <br>
                    <input class="form-control" type="text" name="genero_s" value="<%= series.getGenero_s()%>"><br>
                Resena: <br>
                <input class="form-control" type="text" name="resena_s" value="<%= series.getResena_s()%>"><br>
                Imagen: <br>
                <input class="form-control" type="text" name="foto_s" value="<%= series.getFoto_s()%>"><br>
                
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
