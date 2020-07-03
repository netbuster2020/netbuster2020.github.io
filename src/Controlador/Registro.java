package Controlador;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.User;
import Modelo.UserDAO;

public class Registro extends HttpServlet{
	
	String listar="index.jsp";
	
    String add="Register.jsp";
    
    String edit="vistas/dashboard/users/posts/edit.jsp";

    User nuevoUser = new User();
    UserDAO usDAO = new UserDAO();
    
    int id;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Usuarios</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String action=request.getParameter("accion");

        if(action.equalsIgnoreCase("listar")){
            acceso=listar;            
        }else if(action.equalsIgnoreCase("add")){
            acceso=add;
        }
        else if(action.equalsIgnoreCase("Agregar")){

            String email=request.getParameter("email");
            String nombre=request.getParameter("nombre");
            String apellido=request.getParameter("apellido");
            String password=request.getParameter("password");
            String nacimiento=request.getParameter("nacimiento");
            String username=request.getParameter("username");
            String admin="0";
            
            
            nuevoUser.setEmail(email);
            nuevoUser.setNombre(nombre);
            nuevoUser.setApellido(apellido);
            nuevoUser.setPassword(password);
            nuevoUser.setNacimiento(nacimiento);
            nuevoUser.setUsername(username);
            nuevoUser.setAdmin(admin);

            usDAO.add(nuevoUser);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idper",request.getParameter("id"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){
            
            id=Integer.parseInt(request.getParameter("txtid"));

            String email=request.getParameter("email");
            String nombre=request.getParameter("nombre");
            String apellido=request.getParameter("apellido");
            String password=request.getParameter("password");
            String nacimiento=request.getParameter("nacimiento");
            String username=request.getParameter("username");
            String admin=request.getParameter("admin");

            nuevoUser.setId_user(id);
            nuevoUser.setEmail(email);
            nuevoUser.setNombre(nombre);
            nuevoUser.setApellido(apellido);
            nuevoUser.setPassword(password);
            nuevoUser.setNacimiento(nacimiento);
            nuevoUser.setUsername(username);
            nuevoUser.setAdmin(admin);

            usDAO.edit(nuevoUser);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
            id=Integer.parseInt(request.getParameter("id"));

            nuevoUser.setId_user(id);   

            usDAO.eliminar(id);
            acceso=listar;
        }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}