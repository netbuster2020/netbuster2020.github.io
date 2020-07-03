package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Config.Conexion;
import Interface.COMENTARIOPELICULAS;

public class ComentarioPeliculaDAO implements COMENTARIOPELICULAS {
	
	Conexion cn = new Conexion();

    Connection con;
    PreparedStatement ps;
    ResultSet rs;

 ComentarioPelicula cp = new ComentarioPelicula();


 @Override
    public List listar() {
        ArrayList<ComentarioPelicula>list=new ArrayList<>();
        String sql="select * from comentario_pelicula";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();

            while(rs.next()){
                ComentarioPelicula addComentarioPelicula = new ComentarioPelicula();
                addComentarioPelicula.setId_com_pel(rs.getInt("Id_com_pel"));
                addComentarioPelicula.setId_comentario(rs.getInt("Id_comentario"));
                addComentarioPelicula.setId_pelicula(rs.getInt("Id_pelicula"));
          

                list.add(addComentarioPelicula);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public ComentarioPelicula list(int id_com_pel) {
        String sql="select * from pelicula where Id_com_pel="+id_com_pel;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();

            while(rs.next()){     
                cp.setId_com_pel(rs.getInt("Id_com_pel"));
                cp.setId_comentario(rs.getInt("Id_comentario"));
                cp.setId_pelicula(rs.getInt("Id_pelicula"));
        
              
                
            }
        } catch (Exception e) {
        }
        return cp;
    }

    @Override
    public boolean add(ComentarioPelicula us) {
       String sql="insert into comentario_pelicula (id_pelicula, id_comentario) values('"+us.getId_pelicula()+"','"+us.getId_comentario()+"');";
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
        String sql="delete from comentario_pelicula where Id_comentario"+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

}
