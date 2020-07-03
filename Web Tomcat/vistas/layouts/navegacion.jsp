<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    .bg-azul {
    background-color: rgb(14, 63, 169) !important;
    }
    .btn-secondary {
        background: rgb(255, 169, 3) !important;
    }
</style>
    <header class="bg-azul">
        <div class="container py-1">
            <nav class="navbar navbar-expand-lg navbar-dark">
                <a class="navbar-brand" href="index.jsp">Netbuster</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Inicio</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="Verseries?accion=serie">Series</a>
                        </li>

                        <li class="nav-item ">
                            <a class="nav-link" href="Movie?accion=pelicula">Peliculas</a>
                        </li>

                        <li class="nav-item ">
                            <a class="nav-link" href="Noticias">Noticias</a>
                        </li>
                        
                        <li class="nav-item ">
                            <a class="nav-link" href="Nosotros">Nosotros</a>
                        </li>

                    </ul>
                    <%

  Cookie ck[]=request.getCookies();  
        
        if(ck!=null){  

          for (int i = 0; i < ck.length; i++) {
         
              if(ck[i].getName().equals("name")){ 
                  
                String prueba = "d-none"; %>


                <form class="form-inline my-2 my-lg-0 mr-3 ">
                    <a class="btn btn-primary" href="Logout">Cerrar sesión</a>
                </form>


                <%

              }
          }  
        }

  %>    


                    <form class="form-inline my-2 my-lg-0 mr-3">
                        <a class="btn btn-secondary" href="login.jsp">Iniciar sesión</a>
                    </form>


                </div>
            </nav>
        </div>
        
    </header>