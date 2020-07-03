<%@page contentType="text/html" pageEncoding="UTF-8"%>
    
<html>
  <head>
    <%@ include file="vistas/partials/head.jsp" %>
    <title>Bienvenido</title>
    <%@ include file="vistas/partials/datos.jsp" %>
</head>
<body>
  <!-- Navegación -->
  <%@ include file="vistas/layouts/nav-dash.jsp"%>
  <!-- Fin de navegación -->

  <%

  Cookie cookiesWelcome[]=request.getCookies();  
        
        if(cookiesWelcome!=null){  

          for (int i = 0; i < cookiesWelcome.length; i++) {
         
              if(cookiesWelcome[i].getName().equals("name")){ 
                  
                String prueba = "d-none"; %>


                <div class="container">
                  <h2>Bienvenido a nuestro admin</h2>
                </div>




                <%
            } 
          }  
        } else{  
          out.print("Por favor debes registrarte primero");  
          request.getRequestDispatcher("login.jsp").forward(request, response);
    }

  %>
</body>
</html>