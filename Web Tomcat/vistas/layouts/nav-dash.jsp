<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.User"%>
<%@page import="Modelo.UserDAO"%>


    <header class="bg-dark">
        <div class="container py-1 mb-4">
            <nav class="navbar navbar-expand-lg navbar-dark">
                <a class="navbar-brand" href="Welcome">Administrador</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="index.jsp">Ver Index</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="profile">Ver mi perfil</a>
                        </li>

                        <li class="nav-item active">
                            <a class="nav-link" href="Admin?accion=listar">Ver Usuarios</a>
                        </li>

                        <li class="nav-item active">
                            <a class="nav-link" href="Series?accion=listar">Ver Series</a>
                        </li>

                        <li class="nav-item active">
                            <a class="nav-link" href="Peliculas?accion=listar">Ver Peliculas</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </header>