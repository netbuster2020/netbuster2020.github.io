package Controlador;

import java.io.IOException;  
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;  
import javax.servlet.http.Cookie;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;  
public class Logout extends HttpServlet {  
    protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                        throws ServletException, IOException {  
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
          
          
        request.getRequestDispatcher("administrador.jsp").include(request, response);  
        
        Cookie[] cks = request.getCookies();
        
        for (int i = 0; i < cks.length; i++) {
        	
        	Cookie ck=new Cookie("name",cks[i].getName());
        	Cookie Admin=new Cookie("admin",cks[i].getName());
        	
            ck.setMaxAge(0);
            Admin.setMaxAge(0);  
            
            response.addCookie(ck);
            response.addCookie(Admin);
            

            HttpSession session=request.getSession();  
            session.invalidate();  
    		   		
        }
        
        RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
        rd.forward(request, response); 
          
        out.close();  
    }  
} 