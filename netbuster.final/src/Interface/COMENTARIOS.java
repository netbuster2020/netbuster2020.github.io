package Interface;

import java.util.List;

import Modelo.Comentario;

public interface COMENTARIOS {
    public List listar();
    public Comentario list(int id);    
    public boolean add(Comentario us);
    public boolean edit(Comentario us);
    public boolean eliminar(int id);
    public Comentario idcomentario();
    public List ListaComentarioPelicula(int id);
    public List ListaComentarioSerie(int id);
}
