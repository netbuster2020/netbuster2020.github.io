package Controlador;

import Modelo.Serie;
import Modelo.SerieDAO;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminSeries extends HttpServlet{
	
	String listar="vistas/dashboard/series/posts/listar.jsp";
	
    String add="vistas/dashboard/series/posts/add.jsp";
    
    String edit="vistas/dashboard/series/posts/edit.jsp";

    Serie nuevaSerie = new Serie();
    SerieDAO newSerieDao = new SerieDAO();
    
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

            String nombre_s=request.getParameter("nombre_s");
            String genero_s=request.getParameter("genero_s");
            String resena_s=request.getParameter("resena_s");
            String foto_s=request.getParameter("foto_s");

            nuevaSerie.setNombre_s(nombre_s);
            nuevaSerie.setGenero_s(genero_s);
            nuevaSerie.setResena_s(resena_s);
            nuevaSerie.setFoto_s(foto_s);

            newSerieDao.add(nuevaSerie);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idper",request.getParameter("id"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){
            
            id=Integer.parseInt(request.getParameter("txtid"));

            String nombre_s=request.getParameter("nombre_s");
            String genero_s=request.getParameter("genero_s");
            String resena_s=request.getParameter("resena_s");
            String foto_s=request.getParameter("foto_s");

            nuevaSerie.setId_serie(id);
            nuevaSerie.setNombre_s(nombre_s);
            nuevaSerie.setGenero_s(genero_s);
            nuevaSerie.setResena_s(resena_s);
            nuevaSerie.setFoto_s(foto_s);

            newSerieDao.edit(nuevaSerie);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
            id=Integer.parseInt(request.getParameter("id"));
            nuevaSerie.setId_serie(id);
            newSerieDao.eliminar(id);
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
