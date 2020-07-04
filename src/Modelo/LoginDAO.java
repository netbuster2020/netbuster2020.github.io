package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDAO {
		    	    
	public static boolean checkUser(String username,String password){
		
		boolean st = false;
	    
	    try {
            //loading drivers for mysql
            Class.forName("com.mysql.jdbc.Driver");

            //creating connection with the database
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

	public static  User sesionUsuario(String username) {
		
		User p = new User();
			

	    try {    	
	    	
            //loading drivers for mysql
            Class.forName("com.mysql.jdbc.Driver");

            //creating connection with the database
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/netbuster","root","coder@2020@basmonje");
            PreparedStatement ps = con.prepareStatement("select * from usuario where username="+username);
            ResultSet rs =ps.executeQuery();

	           while(rs.next()){
	        	   
	                p.setId_user(rs.getInt("Id_user"));
	                p.setUsername(rs.getString("Username"));
	                p.setAdmin(rs.getString("Admin"));
	                
	            }
	           
	        } 
	    
	    catch (Exception e) {
	    	
	        }
	    
	    return p;
	    
	    }
	
	

}
