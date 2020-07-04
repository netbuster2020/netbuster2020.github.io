package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.Comentario;
import Modelo.ComentarioDAO;
import Modelo.ComentarioPelicula;
import Modelo.ComentarioPeliculaDAO;
import Modelo.ComentarioSerie;
import Modelo.ComentarioSerieDAO;
import Modelo.User;
import Modelo.UserDAO;

public class VistaPeliculas extends HttpServlet{

	String vistaPrincipal="vistas/VistaPrincipal/peliculas/listar.jsp";
	
    String vistaIndividual="vistas/VistaPrincipal/peliculas/item.jsp";

    Comentario nuevoComentario = new Comentario();
    ComentarioDAO nuevoComentarioDAO = new ComentarioDAO();
    
    ComentarioPelicula nuevoComentarioPelicula = new ComentarioPelicula();
    ComentarioPeliculaDAO nuevoComentarioPeliculaDAO = new ComentarioPeliculaDAO();
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Index</title>");            
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

        if(action.equalsIgnoreCase("pelicula")){
            acceso=vistaPrincipal;
            
        }else if(action.equalsIgnoreCase("pelicula_inv")){
        	request.setAttribute("idper",request.getParameter("id"));
            acceso=vistaIndividual;
        }else if(action.equalsIgnoreCase("Agregar")){       	
            
            Cookie[] cks = request.getCookies();
            
            int	id_user = 1;
                    
            for (int i = 0; i < cks.length; i++) {
            	
        		if (cks[i].getName().equals("id_usuario")) {
                    
        			id_user = Integer.parseInt(cks[i].getValue());
        		}    		
            }   
    
            /*   Date objDate = new Date();
            
            String strDateFormat = "aaaa.MM.dd HH: mm: ss";  
            
            SimpleDateFormat objSDF = new SimpleDateFormat(strDateFormat);
            
            String fecha_ahora = objSDF.format(objDate);
           */
            
            
            String fecha_ahora = "2020-02-13";
            
            String mensaje=request.getParameter("mensaje");
            
            nuevoComentario.setId_user(id_user);
            nuevoComentario.setFecha_ahora(fecha_ahora);
            nuevoComentario.setMensaje(mensaje);
       

            nuevoComentarioDAO.add(nuevoComentario);   
            
            
            Comentario c = nuevoComentarioDAO.idcomentario();
            
            int id_comentario = c.getId_comentario();
            int id_pelicula = Integer.parseInt(request.getParameter("id"));
            
            nuevoComentarioPelicula.setId_comentario(id_comentario);
            nuevoComentarioPelicula.setId_pelicula(id_pelicula);
            
            nuevoComentarioPeliculaDAO.add(nuevoComentarioPelicula);
            
        	acceso=vistaPrincipal;
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
