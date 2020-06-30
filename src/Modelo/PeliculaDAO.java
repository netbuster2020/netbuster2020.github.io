package Modelo;

import Config.Conexion;
import Interface.USERS;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PeliculaDAO implements PELICULAS{

  Conexion cn=new Conexion();

    Connection con;
    PreparedStatement ps;
    ResultSet rs;

 Pelicula p = new Pelicula();


 @Override
    public List listar() {
        ArrayList<Pelicula>list=new ArrayList<>();
        String sql="select * from pelicula";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();

            while(rs.next()){
                Pelicula addPelicula = new Pelicula();
                addPelicula.setId_pelicula(rs.getInt("Id_pelicula"));
                addPelicula.setNombre_p(rs.getString("Nombre_p"));
                addPelicula.setFecha_estreno(rs.getString("Fecha_estreno"));
                addPelicula.setPais_o(rs.getString("Pais_o"));
                addPelicula.setGenero_p(rs.getString("Genero_p"));
                addPelicula.setActor_p(rs.getString("Actor_p"));
                addPelicula.setPremios(rs.getString("Premios"));
                addPelicula.setResena(rs.getString("Resena"));
                addPelicula.setFoto(rs.getString("Foto"));
                addPelicula.setVideo(rs.getString("Video"));

                list.add(addPelicula);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Pelicula list(int id_pelicula) {
        String sql="select * from pelicula where Id_pelicula="+id_pelicula;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();

            while(rs.next()){     
                p.setId_pelicula(rs.getInt("Id_pelicula"));
                p.setNombre_p(rs.getString("Nombre_p"));
                p.setFecha_estreno(rs.getString("Fecha_estreno"));
                p.setPais_o(rs.getString("Pais_o"));
                p.setGenero_p(rs.getString("Genero_p"));
                p.setActor_p(rs.getString("Actor_p"));
                p.setPremios(rs.getString("Premios"));
                p.setResena(rs.getString("Resena"));
                p.setFoto(rs.getString("Foto"));
                p.setVideo(rs.getString("Video"));
                
            }
        } catch (Exception e) {
        }
        return p;
    }

    @Override
    public boolean add(Pelicula us) {
       String sql="insert into pelicula (Nombre_p, Fecha_estreno, Pais_o, Genero_p, Actor_p, Premios, Resena, Foto, Video)values('"+us.getNombre_p()+"','"+us.getFecha_estreno()+"','"+us.getPais_o()+"','"+us.getGenero_p()+"','"+us.getActor_p()+"','"+us.getPremios()+"','"+us.getResena()+"','"+us.getFoto()+"','"+us.getVideo()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }

    @Override
    public boolean edit(Pelicula us) {
        String sql="update pelicula set Nombre_p='"+us.getNombre_p()+"',Fecha_estreno='"+us.getFecha_estreno()+"',Pais_o='"+us.getPais_o()+"',Genero_p='"+us.getGenero_p()+"',Actor_p='"+us.getActor_p()+"',Premios='"+us.getPremios()+"',Resena='"+us.getResena()+"',Foto='"+us.getFoto()+"',Video='"+us.getVideo()+"' where Id_pelicula="+us.getId_pelicula();
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
        String sql="delete from pelicula where Id_pelicula="+id_pelicula;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

}
