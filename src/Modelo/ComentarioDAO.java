package Modelo;

import Interface.COMENTARIOS;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Config.Conexion;

public class ComentarioDAO implements COMENTARIOS {
	
	Conexion cn = new Conexion();

    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    Comentario c = new Comentario();


    @Override
    public List listar() {
        ArrayList<Comentario>list=new ArrayList<>();
        String sql="select * from comentario";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();

            while(rs.next()){
                Comentario addComentario = new Comentario();
                addComentario.setId_comentario(rs.getInt("Id_comentario"));
                addComentario.setId_user(rs.getInt("Id_user"));
                addComentario.setFecha_ahora(rs.getString("Fecha_ahora"));
                addComentario.setMensaje(rs.getString("Mensaje"));

                list.add(addComentario);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Comentario list(int id_comentario) {
        String sql="select * from pelicula where Id_pelicula="+id_comentario;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();

            while(rs.next()){     
                c.setId_comentario(rs.getInt("Id_comentario"));
                c.setId_user(rs.getInt("Id_user"));
                c.setFecha_ahora(rs.getString("Fecha_ahora"));
                c.setMensaje(rs.getString("Mensaje"));
              
                
            }
        } catch (Exception e) {
        }
        return c;
    }

    @Override
    public boolean add(Comentario us) {
       String sql="insert into comentario (id_user, fecha_hora, mensaje) values('"+us.getId_user()+"','"+us.getFecha_ahora()+"','"+us.getMensaje()+"');";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }

    @Override
    public boolean edit(Comentario us) {
        String sql="update comentario set mensaje='"+us.getMensaje()+"',Fecha_ahora='"+us.getFecha_ahora()+"' where id_comentario="+us.getId_comentario()+"');";
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
        String sql="delete from comentario where Id_comentario"+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
    public Comentario idcomentario() {
    	
    	 String sql="select id_comentario from comentario order by id_comentario desc limit 1;";
    			 
         try {
        	 
             	con=cn.getConnection();
             	ps=con.prepareStatement(sql);
             	rs=ps.executeQuery();

             	while(rs.next()){     
            	 
             		c.setId_comentario(rs.getInt("Id_comentario"));
                 
             	}
         	} catch (Exception e) {}
         
         return c;
         	}
    
    public Comentario ListaComentarioPelicula(int id_pel){
    	String sql="select c.id_user, c.fecha_ahora, c.mensaje from usuario u, comentario c where  c.id_user = u.id_user and c.ID_COMENTARIO in (select ID_COMENTARIO from comentario_pelicula where ID_PELICULA ="+id_pel+");";
		 
        try {
       	 
            	con=cn.getConnection();
            	ps=con.prepareStatement(sql);
            	rs=ps.executeQuery();

            	while(rs.next()){     
           	 
                    c.setId_user(rs.getInt("Id_user"));
                    c.setFecha_ahora(rs.getString("Fecha_ahora"));
                    c.setMensaje(rs.getString("Mensaje"));
                
            	}
        	} catch (Exception e) {}
		return c;
    	
    }
    
    
    public Comentario ListaComentarioSerie(int id_ser){
    	String sql="select c.id_user, c.fecha_ahora, c.mensaje from usuario u, comentario c where  c.id_user = u.id_user and c.ID_COMENTARIO in (select ID_COMENTARIO from comentario_serie where id_serie ="+id_ser+");";
		 
        try {
       	 
            	con=cn.getConnection();
            	ps=con.prepareStatement(sql);
            	rs=ps.executeQuery();

            	while(rs.next()){     
           	 
                    c.setId_user(rs.getInt("Id_user"));
                    c.setFecha_ahora(rs.getString("Fecha_ahora"));
                    c.setMensaje(rs.getString("Mensaje"));
                
            	}
        	} catch (Exception e) {}
		return c;
    	
    }
    
    
    
    
    
    
    
    
    
         
         
    }


