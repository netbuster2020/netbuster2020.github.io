package Controlador;

import Modelo.LoginDAO;
import Modelo.User;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class Login extends HttpServlet {
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
       
        if(LoginDAO.checkUser(username, password)){
        
        	User p = LoginDAO.sesionUsuario(username);
        
        	Cookie ck = new Cookie("username", p.getUsername());
        	ck.setMaxAge(180);
        	response.addCookie(ck);        
        
        	ck = new Cookie("admin", p.getAdmin());
        	ck.setMaxAge(180);
        	response.addCookie(ck);
 
        	
        	ck = new Cookie("IDUsuario", String.valueOf(p.getId_user()));
        	ck.setMaxAge(180);
        	response.addCookie(ck);
            
            response.sendRedirect("Welcome"); 
            
        }
        else
        {
        	
           RequestDispatcher rs = request.getRequestDispatcher("login.jsp");
           out.println("Username o Contraseña incorrectos");
           rs.include(request, response);
        }
    }  
}