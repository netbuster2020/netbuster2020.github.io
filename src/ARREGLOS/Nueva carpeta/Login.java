package Controlador;

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
        
        if(Validate.checkUser(username, password)){
        	
        	HttpSession session = request.getSession();
            session.setAttribute("username", username);
            
            Cookie ck = new Cookie("username", username);
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