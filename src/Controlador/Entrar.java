package Controlador;

import java.io.IOException;  
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;  
import javax.servlet.http.Cookie;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  

public class Entrar extends HttpServlet {  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)  
                           throws ServletException, IOException {  
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
          
        request.getRequestDispatcher("administrador.jsp").include(request, response);  
          
        String username=request.getParameter("username");  
        String password=request.getParameter("password");  
        
        try {
        	
        	Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/netbuster","root","coder@2020@basmonje");
            Statement stmt = con.createStatement();
            
            
            ResultSet rs = stmt.executeQuery("select username,password, admin from usuario where username='"+username+"' and password='"+password+"'");
            
            if(rs.next()){  
            	
            	String prueba = rs.getString("admin");
            	
            	Cookie ck=new Cookie("name", username);
                response.addCookie(ck); 
            	
            	
            	if(!prueba.equals("0")) {
            		out.print("<br>Welcome, " + username);  
                    
                    response.sendRedirect("WelcomeUser.jsp?name="+prueba);
            	}	else {
            		out.print("<h1>Cliente</h1>");  
            	}
                
            }else{  
                out.print("sorry, username or password error!");  
                request.getRequestDispatcher("login.jsp").include(request, response);  
            }
            
            
        } catch (Exception e) {
        	
        }
          
        out.close();  
    }  
  
}  