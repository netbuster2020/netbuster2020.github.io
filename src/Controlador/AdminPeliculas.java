package Controlador;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.Pelicula;
import Modelo.PeliculaDAO;


public class AdminPeliculas extends HttpServlet{
	
	String listar="vistas/dashboard/peliculas/posts/listar.jsp";
	
    String add="vistas/dashboard/peliculas/posts/add.jsp";
    
    String edit="vistas/dashboard/peliculas/posts/edit.jsp";

    Pelicula nuevaPelicula = new Pelicula();
    PeliculaDAO peliculaDAO = new PeliculaDAO();
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

            String nombre_p=request.getParameter("nombre_p");
            String fecha_estreno=request.getParameter("fecha_estreno");
            String pais_o=request.getParameter("pais_o");
            String genero_p=request.getParameter("genero_p");
            String actor_p=request.getParameter("actor_p");
            String premios=request.getParameter("premios");
            String resena=request.getParameter("resena");
            String foto=request.getParameter("foto");
            String video=request.getParameter("video");

            nuevaPelicula.setNombre_p(nombre_p);
            nuevaPelicula.setFecha_estreno(fecha_estreno);
            nuevaPelicula.setPais_o(pais_o);
            nuevaPelicula.setGenero_p(genero_p);
            nuevaPelicula.setActor_p(actor_p);
            nuevaPelicula.setPremios(premios);
            nuevaPelicula.setResena(resena);
            nuevaPelicula.setFoto(foto);
            nuevaPelicula.setVideo(video);

            peliculaDAO.add(nuevaPelicula);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idper",request.getParameter("id"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){
            
            id=Integer.parseInt(request.getParameter("txtid"));

            String nombre_p=request.getParameter("nombre_p");
            String fecha_estreno=request.getParameter("fecha_estreno");
            String pais_o=request.getParameter("pais_o");
            String genero_p=request.getParameter("genero_p");
            String actor_p=request.getParameter("actor_p");
            String premios=request.getParameter("premios");
            String resena=request.getParameter("resena");
            String foto=request.getParameter("foto");
            String video=request.getParameter("video");

            nuevaPelicula.setId_pelicula(id);
            nuevaPelicula.setNombre_p(nombre_p);
            nuevaPelicula.setFecha_estreno(fecha_estreno);
            nuevaPelicula.setPais_o(pais_o);
            nuevaPelicula.setGenero_p(genero_p);
            nuevaPelicula.setActor_p(actor_p);
            nuevaPelicula.setPremios(premios);
            nuevaPelicula.setResena(resena);
            nuevaPelicula.setFoto(foto);
            nuevaPelicula.setVideo(video);

            peliculaDAO.edit(nuevaPelicula);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
            id=Integer.parseInt(request.getParameter("id"));

            nuevaPelicula.setId_pelicula(id);   

            peliculaDAO.eliminar(id);
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
