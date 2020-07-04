package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Config.Conexion;
import Interface.COMENTARIOSERIES;

public class ComentarioSerieDAO implements COMENTARIOSERIES {
	
	Conexion cn = new Conexion();

    Connection con;
    PreparedStatement ps;
    ResultSet rs;

 ComentarioSerie cs = new ComentarioSerie();


 @Override
    public List listar() {
        ArrayList<ComentarioSerie>list=new ArrayList<>();
        String sql="select * from comentario_serie";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();

            while(rs.next()){
                ComentarioSerie addComentarioSerie = new ComentarioSerie();
                addComentarioSerie.setId_com_ser(rs.getInt("Id_com_ser"));
                addComentarioSerie.setId_comentario(rs.getInt("Id_comentario"));
                addComentarioSerie.setId_serie(rs.getInt("Id_serie"));
          

                list.add(addComentarioSerie);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public ComentarioSerie list(int id_com_ser) {
        String sql="select * from serie where Id_com_ser="+id_com_ser;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();

            while(rs.next()){     
                cs.setId_com_ser(rs.getInt("Id_com_ser"));
                cs.setId_comentario(rs.getInt("Id_comentario"));
                cs.setId_serie(rs.getInt("Id_serie"));
        
              
                
            }
        } catch (Exception e) {
        }
        return cs;
    }

    @Override
    public boolean add(ComentarioSerie us) {
       String sql="insert into comentario_serie (id_serie, id_comentario) values('"+us.getId_serie()+"','"+us.getId_comentario()+"');";
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
        String sql="delete from comentario_serie where Id_comentario"+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

}
