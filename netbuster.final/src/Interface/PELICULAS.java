package Interface;

import java.util.List;

import Modelo.Pelicula;

public interface PELICULAS {
    public List listar();
    public Pelicula list(int id);
    public boolean add(Pelicula us);
    public boolean edit(Pelicula us);
    public boolean eliminar(int id);
}
