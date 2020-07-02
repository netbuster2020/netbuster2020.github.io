package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDAO {
		    	    
	public static boolean checkUser(String username,String password){
		
		boolean st = false;
	    
	    try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/netbuster","root","coder@2020@basmonje");
            
            
            PreparedStatement ps = con.prepareStatement("select * from usuario where username=? and password=?");
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs =ps.executeQuery();
            st = rs.next();
	        }	    
	    catch(Exception e) {	    	
	            e.printStackTrace();	            
	        }
	      
	    return st;    
	 
	}       	    

	public static User sesionUsuario(String username) {
		
		User p = new User();
			Connection con;
			PreparedStatement ps;
			ResultSet rs;
			
	    try {    	
	    	
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/netbuster","root","coder@2020@basmonje");
            String sql = "select * from usuario where username="+username+";";
            ps = con.prepareStatement(sql);
            
            rs = ps.executeQuery();

	           while(rs.next()){
	        	   
	                p.setId_user(rs.getInt("Id_user"));
	                p.setUsername(rs.getString("Username"));
	                p.setAdmin(rs.getString("Admin"));
	                
	            }
	           
	        } 	catch (Exception e) {
	    	
	        }
	    
	    	return p;
	    
	    }
}
