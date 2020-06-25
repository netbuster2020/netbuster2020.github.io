package Intefaces;

import Modelo.Listseries;
import java.util.List;

public interface SERIES {
    public List listar();
    public Listseries list(int id);
    public boolean add(Listseries ser);
    public boolean edit(Listseries ser);
    public boolean eliminar(int id);
}
