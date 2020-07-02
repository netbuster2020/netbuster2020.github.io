package Controlador;

import java.io.IOException;  
import java.io.PrintWriter;  
import javax.servlet.ServletException;  
import javax.servlet.http.Cookie;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
public class ProfileServlet extends HttpServlet {  
    protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                          throws ServletException, IOException {  
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
          
        request.getRequestDispatcher("administrador.jsp").include(request, response);  
          
        Cookie ck[]=request.getCookies();  
        
        if(ck!=null){  
        	
         String name=ck[0].getName();  
         
        if(!name.equals("")||name!=null){  
            out.print("<bBienvenido a mi perfil</b>");  
            out.print("<br>Hola, "+name);  
        }  
        }else{  
            out.print("Please login first");  
            request.getRequestDispatcher("login.jsp").include(request, response);  
        }  
        out.close();  
    }  
} 