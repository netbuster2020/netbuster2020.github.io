package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {
  private static final long serialVersionUID = 1L;
       

    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.getWriter().append(" Mensaje de error").append(request.getContextPath());
  }

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    doGet(request, response);
    PrintWriter out = response.getWriter();
    
    
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    try {
    	Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/netbuster","root","coder@2020@basmonje");
      Statement stmt = con.createStatement();
      ResultSet rs = stmt.executeQuery("select username,password from usuario where username='"+username+"' and password='"+password+"'");
      
      if(rs.next()) {
        response.sendRedirect("WelcomeUser.jsp?name="+rs.getString("username"));
        
        HttpSession session = request.getSession();
        session.setAttribute("uname", username);
        
      }else {
        out.println("Contraseña o password incorrecto!");
      }
      
    } catch (ClassNotFoundException e) {

      e.printStackTrace();
    } catch (SQLException e) {

      e.printStackTrace();
    }
    
    
    
  }
}