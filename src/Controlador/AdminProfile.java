package Controlador;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminProfile extends HttpServlet {  
	 protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        response.setContentType("text/html;charset=UTF-8");
	        PrintWriter out = response.getWriter();
	        
	        request.getRequestDispatcher("administrador.jsp").include(request, response);  
	        
	        HttpSession session = request.getSession(false);
	        
	        if(session!=null){  
	            String username=(String)session.getAttribute("username");
		        
		        out.println("Bienvenido "+username+"Te has registrado exitosamente!");
		        
		        Cookie[] cks = request.getCookies();		        
		        out.println("Hola Mr Cookies "+ cks[0].getValue());
		        
		        Cookie ck = new Cookie("username", "");
		        ck.setMaxAge(180);

	            out.print("<div class='container'><h1 class='display-5'>Hola , "+username+" Welcome to Profile</h1>");
	            out.println("<form action='Logout' class='form-inline my-2 my-lg-0'>");
	            out.println("<button class='btn btn-primary' type='submit'>Cerrar sesion</button></form>");
	            out.println("</div>");
	            }  
	            else{  
	            out.print("<div class='container alert alert-danger' role='alert'>Por favor inicia sesion primero.</div>"); 
	            }  
	            out.close();  
	        }
	        
} 