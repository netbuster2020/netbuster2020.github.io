package Interface;

import java.util.List;

import Modelo.ComentarioSerie;

public interface COMENTARIOSERIES {
    public List listar();
    public ComentarioSerie list(int id);
    public boolean add(ComentarioSerie us);
    public boolean eliminar(int id);
}
