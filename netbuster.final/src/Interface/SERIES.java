package Interface;

import java.util.List;

import Modelo.Serie;

public interface SERIES {
    public List listar();
    public Serie list(int id);
    public boolean add(Serie aSerie);
    public boolean edit(Serie aSerie);
    public boolean eliminar(int id);
}
