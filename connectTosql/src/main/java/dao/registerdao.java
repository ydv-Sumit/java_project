package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;

import beans.registrationbean;
import mysqlconnection.connectionProvider;

public class registerdao {
	
	public String save(registrationbean bean) {   // save method  jsp se data leta hai database me save karta hai  success ya fai bhi reurn krta hai
		
		Connection c= null;
		
		try {
		c = connectionProvider.getConnection();
		
		PreparedStatement ps = c.prepareStatement("insert into user values(?,?,?)");
		ps.setString(1, bean.getFullname());
		ps.setString(2, bean.getEmail());
		ps.setString(3, bean.getPassword());
		
		int i = ps.executeUpdate();
		if(i>0) {
			
			return "success";
			
		}else {
			return "fail";
		}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
			
		
		
		
		
		
		return "fail";}
	 

}
