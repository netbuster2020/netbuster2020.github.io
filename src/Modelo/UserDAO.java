package Modelo;

import Config.Conexion;
import Interface.USERS;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserDAO implements USERS{
    Conexion cn=new Conexion();

    Connection con;
    PreparedStatement ps;
    ResultSet rs;


    User p = new User();
    
    @Override
    public List listar() {
        ArrayList<User>list=new ArrayList<>();
        String sql="select * from usuario";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();

            while(rs.next()){
                User addUser = new User();
                addUser.setId_user(rs.getInt("Id_user"));
                addUser.setEmail(rs.getString("Email"));
                addUser.setNombre(rs.getString("Nombre"));
                addUser.setApellido(rs.getString("Apellido"));
                addUser.setPassword(rs.getString("Password"));
                addUser.setNacimiento(rs.getString("Nacimiento"));
                addUser.setUsername(rs.getString("Username"));
                addUser.setAdmin(rs.getString("Admin"));

                list.add(addUser);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public User list(int id) {
        String sql="select * from usuario where Id_user="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();

            while(rs.next()){                
                p.setId_user(rs.getInt("Id_user"));
                p.setEmail(rs.getString("Email"));
                p.setNombre(rs.getString("Nombre"));
                p.setApellido(rs.getString("Apellido"));
                p.setPassword(rs.getString("Password"));
                p.setNacimiento(rs.getString("Nacimiento"));
                p.setUsername(rs.getString("Username"));
                p.setAdmin(rs.getString("Admin"));
                
            }
        } catch (Exception e) {
        }
        return p;
    }

    @Override
    public boolean add(User us) {
       String sql="insert into usuario (Email, Nombre, Apellido, Password, Nacimiento, Username, Admin)values('"+us.getEmail()+"','"+us.getNombre()+"','"+us.getApellido()+"','"+us.getPassword()+"','"+us.getNacimiento()+"','"+us.getUsername()+"','"+us.getAdmin()+"');";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }

    @Override
    public boolean edit(User us) {
        String sql="update usuario set Email='"+us.getEmail()+"',Nombre='"+us.getNombre()+"',Apellido='"+us.getApellido()+"',Password='"+us.getPassword()+"',Nacimiento='"+us.getNacimiento()+"',Username='"+us.getUsername()+"',Admin='"+us.getAdmin()+"' where Id_user="+us.getId_user();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from usuario where Id_user="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
    
}
