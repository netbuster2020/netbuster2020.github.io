package Modelo;

import Config.Conexion;
import Interface.SERIES;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

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
                addSerie.setAno_estreno(rs.getString("Ano_estreno"));
                addSerie.setN_temporadas(rs.getString("N_temporadas"));
                addSerie.setIdeoma_original(rs.getString("Ideoma_original"));
                addSerie.setGenero_s(rs.getString("Genero_s"));
                addSerie.setPlataforma(rs.getString("Plataforma"));
                addSerie.setEstado(rs.getString("Estado"));
                addSerie.setResena_s(rs.getString("Resena_s"));
                addSerie.setFoto_s(rs.getString("Foto_s"));
                addSerie.setVideo_s(rs.getString("Video_s"));

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
                p.setAno_estreno(rs.getString("Ano_estreno"));
                p.setN_temporadas(rs.getString("N_temporadas"));
                p.setIdeoma_original(rs.getString("Ideoma_original"));
                p.setGenero_s(rs.getString("Genero_s"));
                p.setPlataforma(rs.getString("Plataforma"));
                p.setEstado(rs.getString("Estado"));
                p.setResena_s(rs.getString("Resena_s"));
                p.setFoto_s(rs.getString("Foto_s"));
                p.setVideo_s(rs.getString("Video_s"));
                
            }
        } catch (Exception e) {
        }
        return p;
    }

    @Override
    public boolean add(Serie aSerie) {
       String sql="insert into serie (nombre_s, ano_estreno, n_temporadas, ideoma_original, genero_s, plataforma, estado, resena_s, foto_s, video_s)values('"+aSerie.getNombre_s()+"','"+aSerie.getAno_estreno()+"','"+aSerie.getN_temporadas()+"','"+aSerie.getIdeoma_original()+"','"+aSerie.getGenero_s()+"','"+aSerie.getPlataforma()+"','"+aSerie.getEstado()+"','"+aSerie.getResena_s()+"','"+aSerie.getFoto_s()+"','"+aSerie.getVideo_s()+"');";
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
        String sql="update serie set Nombre_s='"+aSerie.getNombre_s()+"',Ano_estreno='"+aSerie.getAno_estreno()+"',N_temporadas='"+aSerie.getN_temporadas()+"',Ideoma_original='"+aSerie.getIdeoma_original()+"',Genero_s='"+aSerie.getGenero_s()+"',Plataforma='"+aSerie.getPlataforma()+"',Estado='"+aSerie.getEstado()+"',Resena_s='"+aSerie.getResena_s()+"',Foto_s='"+aSerie.getFoto_s()+"',Video_s='"+aSerie.getVideo_s()+"' where Id_serie="+aSerie.getId_serie();
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

