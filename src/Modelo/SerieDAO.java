package Modelo;

import Config.Conexion;
import Interface.SERIES;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SerieDAO implements SERIES{
    Conexion cn=new Conexion();

    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    Serie p = new Serie();
    
    @Override
    public List listar() {
        ArrayList<Serie>list=new ArrayList<>();
        String sql="select * from serie";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();

            while(rs.next()){
                Serie addSerie = new Serie();
                addSerie.setId_serie(rs.getInt("Id_serie"));
                addSerie.setNombre_s(rs.getString("Nombre_s"));
                addSerie.setGenero_s(rs.getString("Genero_s"));
                addSerie.setResena_s(rs.getString("Resena_s"));
                addSerie.setFoto_s(rs.getString("Foto_s"));
                list.add(addSerie);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Serie list(int id) {
        String sql="select * from serie where Id_serie="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();

            while(rs.next()){                
                p.setId_serie(rs.getInt("Id_serie"));
                p.setNombre_s(rs.getString("Nombre_s"));
                p.setGenero_s(rs.getString("Genero_s"));
                p.setResena_s(rs.getString("Resena_s"));
                p.setFoto_s(rs.getString("Foto_s"));
                
            }
        } catch (Exception e) {
        }
        return p;
    }

    @Override
    public boolean add(Serie aSerie) {
       String sql="insert into serie (Nombre_s, Genero_s, Resena_s, Foto_s)values('"+aSerie.getNombre_s()+"','"+aSerie.getGenero_s()+"','"+aSerie.getResena_s()+"','"+aSerie.getFoto_s()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }

    @Override
    public boolean edit(Serie aSerie) {
        String sql="update serie set Nombre_s='"+aSerie.getNombre_s()+"',Genero_s='"+aSerie.getGenero_s()+"',Resena_s='"+aSerie.getResena_s()+"',Foto_s='"+aSerie.getFoto_s()+"' where Id_serie="+aSerie.getId_serie();
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
        String sql="delete from serie where Id_serie="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}

