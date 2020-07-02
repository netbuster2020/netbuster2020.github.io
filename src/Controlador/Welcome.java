package Controlador;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Welcome extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        request.getRequestDispatcher("administrador.jsp").include(request, response);  
        
        
        Cookie[] cks = request.getCookies();
        
        String	usuario = null;
                
        for (int i = 0; i < cks.length; i++) {
           
            out.println("<h1 class='display-7'>Bienvenido "+cks[i].getName()+"</h1>");
            out.println("<h1 class='display-7'>hOLA "+cks[i].getValue()+"</h1>");

    		if (cks[i].getName().equals("username")) {
                
    			usuario = cks[i].getValue();
    		}    		
        }    
         
           

        if(usuario!=null){  
               
               out.println("<div class='container'>");
               
               out.print("<h1 class='display-6'>Bienvenido, "+usuario+"</div>");  
               out.println("</div>");
                  
           } else {
        	   
               out.print("Por favor registrate.");  
               request.getRequestDispatcher("login.jsp").include(request, response); 
               
           }
  
               out.close(); 
        
    
      }  
}
