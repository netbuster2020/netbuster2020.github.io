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
          
        String PerfilCliente ="Perfil.jsp"; 
          
        String username=request.getParameter("username");  
        String password=request.getParameter("password");  
        
        try { 
        	
        	Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/netbuster","root","coder@2020@basmonje");
            Statement stmt = con.createStatement();
            
            
            ResultSet rs = stmt.executeQuery("select username, password, id_user, admin from usuario where username='"+username+"' and password='"+password+"'");
            
            if(rs.next()){  
            	
            	String admin = rs.getString("admin");
            	String id_user = rs.getString("id_user");
            	
            	
            	Cookie ck=new Cookie("name", username);
            	ck.setMaxAge(180);
                response.addCookie(ck);
                
                ck=new Cookie("admin", admin);
            	ck.setMaxAge(180);
                response.addCookie(ck);
                
                ck = new Cookie("id_usuario", id_user);
            	ck.setMaxAge(180);
            	response.addCookie(ck);
            	
                
            	
            	if(!admin.equals("0")) {
            		out.print("<br>Welcome, " + username);  
                    
                    response.sendRedirect("Series?accion=listar");
            	}	else {
            		response.sendRedirect(PerfilCliente);
            	}
                
            }else{  
            	out.print("<div class='container alert alert-danger' role='alert'>");  
                out.print("Username o Password incorrectos!</div>");  
            }
            
            
        } catch (Exception e) {
        	
        }
          
        out.close();  
    }  
  
}  