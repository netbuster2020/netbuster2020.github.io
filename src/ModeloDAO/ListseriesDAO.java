
package ModeloDAO;

import Config.Conexion;
import Intefaces.SERIES;
import Modelo.Listseries;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ListseriesDAO implements SERIES{
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Listseries p=new Listseries();
    
    @Override
    public List listar() {
        ArrayList<Listseries>list=new ArrayList<>();
        String sql="select * from series";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Listseries serie=new Listseries();
                serie.setId(rs.getInt("id"));
                serie.setTitle(rs.getString("title"));
                serie.setDescription(rs.getString("description"));
                list.add(serie);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Listseries list(int id) {
        String sql="select * from series where id=" + id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                p.setId(rs.getInt("id"));
                p.setTitle(rs.getString("title"));
                p.setDescription(rs.getString("description"));
            }
        } catch (Exception e) {
        }
        return p;
    }

    @Override
    public boolean add(Listseries serie) {
       String sql="insert into series (title, description) values('"+serie.getTitle()+"','"+serie.getDescription()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }

    @Override
    public boolean edit(Listseries serie) {
        String sql="update series set title='"+serie.getTitle()+"',description='"+serie.getDescription()+"'where Id="+serie.getId();
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
        String sql="delete from series where Id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
