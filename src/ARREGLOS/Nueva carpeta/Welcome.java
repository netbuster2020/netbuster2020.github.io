package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Welcome extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        request.getRequestDispatcher("administrador.jsp").include(request, response);  
        
        
        HttpSession session = request.getSession();
        Cookie[] cks = request.getCookies();
        
        if(cks!=null){  
            String name =cks[0].getValue();  
            
           if(!name.equals("")||name!=null){  
        	   String username = (String)session.getAttribute("username");
        	   
        	   out.print("<html>");
        	   out.print("<head>");
        	   out.print("</head>");
        	   out.print("<main>");
        	   out.print("<section>");
        	   
        	   out.print("<div class='container'>");
        	   out.print("<div class='row'>");
        	   out.print("<div class='col col-md-6 mg-auto'>");
               out.println("<h1 class='display-7'>Bienvenido "+username+"</h1>");
               
                
               out.print("<h1>El Valor de mi Cookies es, "+name+"</h1>");  


               Enumeration nombresSesion = session.getAttributeNames();
               
               while (nombresSesion.hasMoreElements()) {
                   String nombre = nombresSesion.nextElement().toString();
                   Object valor = session.getAttribute(nombre);
                   
                   out.println("<h1 class='display-4'>"+ nombre + " = " + valor + "<h1>");
               }
               
               out.println("<h3> Estadisticas de la sesion</h3>");
               out.println("ID Sesion:"  + session.getId() + "<br>");
               out.println("Nueva Sesion"  + session.isNew());
               out.println("Hora de creacion: " + session.getCreationTime());
               out.println("Intervalo de inactividad de la sesion: " + session.getMaxInactiveInterval());
               out.println("ID de sesion desde cookie: " + request.isRequestedSessionIdFromCookie());
               
               out.print("</div>");
               out.print("</div>");
               out.print("</div>");
               out.print("</section>");
               out.print("</main>");
               out.print("</html>");
           	}  
           }else{  
               out.print("Por favor registrate.");  
               request.getRequestDispatcher("login.jsp").include(request, response);  
           }  
           out.close(); 
        
        
    
      }  
}
