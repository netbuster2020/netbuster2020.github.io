package Interface;

import Modelo.User;

import java.util.List;

public interface USERS {
    public List listar();
    public User list(int id);
    public boolean add(User us);
    public boolean edit(User us);
    public boolean eliminar(int id);
}
