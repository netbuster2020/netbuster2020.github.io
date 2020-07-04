package Interface;

import java.util.List;

import Modelo.ComentarioPelicula;


public interface COMENTARIOPELICULAS {
    public List listar();
    public ComentarioPelicula list(int id);
    public boolean add(ComentarioPelicula us);
    public boolean eliminar(int id);

}
