package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Config.Conexion;

public class Registrar extends HttpServlet {  
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		
		String Regis="Register.jsp";
		RequestDispatcher vista=request.getRequestDispatcher(Regis);
        vista.forward(request, response);
		
	}
	
	
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
	response.setContentType("text/html");  
	PrintWriter out=response.getWriter();  
	
	Conexion cn=new Conexion();

    Connection con;
    PreparedStatement ps;
    ResultSet rs;


	String email=request.getParameter("email");
    String nombre=request.getParameter("nombre");
    String apellido=request.getParameter("apellido");
    String password=request.getParameter("password");
    String nacimiento=request.getParameter("nacimiento");
    String username=request.getParameter("username");
    String admin =request.getParameter("admin");


    String sql="insert into usuario (Email, Nombre, Apellido, Password, Nacimiento, Username, Admin)values("+email+","+nombre+","+apellido+","+password+","+nacimiento+","+username+","+admin+")";
	try {

		con=cn.getConnection();
        ps=con.prepareStatement(sql);
        ps.executeUpdate();

	} catch (Exception e) {

	}

	out.close();  
	}  

}