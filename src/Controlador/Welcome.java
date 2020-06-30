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
            String name=cks[0].getValue();  
           if(!name.equals("")||name!=null){  
        	   
        	   String username = (String)session.getAttribute("username");
               out.println("Bienvenido "+username+"Te has registrado exitosamente!");
               
               
               out.print("<b>Welcome to Profile</b>");  
               out.print("<br>Welcome, "+name);  
               
               out.println("Hola Mr Cookies "+ cks[0].getValue());
               
               out.println("Seguir sesion");

               Enumeration nombresSesion = session.getAttributeNames();
               while (nombresSesion.hasMoreElements()) {
                   String nombre = nombresSesion.nextElement().toString();
                   Object valor = session.getAttribute(nombre);
                   out.println(nombre + " = " + valor + "<br>");
               }
               out.println("<h3> Estadisticas de la sesion</h3>");
               out.println("ID Sesion:"  + session.getId() + "<br>");
               out.println("Nueva Sesion"  + session.isNew());
               out.println("Hora de creacion: " + session.getCreationTime());
               out.println("Intervalo de inactividad de la sesion: " + session.getMaxInactiveInterval());
               out.println("ID de sesion desde cookie: " + request.isRequestedSessionIdFromCookie());
           }  
           }else{  
               out.print("Por favor registrate.");  
               request.getRequestDispatcher("login.jsp").include(request, response);  
           }  
           out.close(); 
        
        
    
      }  
}
