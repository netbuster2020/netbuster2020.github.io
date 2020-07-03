<%@page contentType="text/html" pageEncoding="UTF-8"%>

<style>
    .bg-azul {
  background-color: rgb(14, 63, 169) !important;
}
</style>
    <header class="bg-azul">
        <div class="container py-1 mb-4">
            <nav class="navbar navbar-expand-lg navbar-dark">
                <a class="navbar-brand" href="#">Administrador</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="index.jsp">Index</a>
                        </li>

                        <li class="nav-item active">
                            <a class="nav-link" href="Admin?accion=listar">Usuarios</a>
                        </li>

                        <li class="nav-item active">
                            <a class="nav-link" href="Series?accion=listar">Series</a>
                        </li>

                        <li class="nav-item active">
                            <a class="nav-link" href="Peliculas?accion=listar">Peliculas</a>
                        </li>
                    </ul>

                        <%

  Cookie navDash[]=request.getCookies();  
        
        if(navDash!=null){  

          for (int i = 0; i < navDash.length; i++) {
         
              if(navDash[i].getName().equals("name")){ 
                  
                String prueba = "d-none"; %>


                <form class="form-inline my-2 my-lg-0 mr-3 ">
                    <a class="btn btn-secondary" href="Logout">Cerrar sesión</a>
                </form>


                <%

              }
          }  
        }

  %>
                    
                </div>
            </nav>
        </div>
    </header>