package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.userbean;
import mysqlconnection.ConnectionProvider;

public class userdao {
	
	
	public static int save (userbean u) throws Exception {
		
		Connection con = ConnectionProvider.getConnection();
		
		
			PreparedStatement ps =con.prepareStatement("insert into users(name,email,password) values(?,?,?)");
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
	
		
		return ps.executeUpdate();
		
	}
	
public static int update (userbean u) throws Exception {
		
		Connection con = ConnectionProvider.getConnection();
		
		
			PreparedStatement ps =con.prepareStatement("update users set name=?, email=?, password=? where id=?");
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
	        ps.setInt(4, u.getId());
		
		return ps.executeUpdate();
		
	}
	
public static int delete (int id ) throws Exception {
	
	Connection con = ConnectionProvider.getConnection();
	
		PreparedStatement ps =con.prepareStatement("delete from users where id =?");
		
        ps.setInt(1,id);
	
	return ps.executeUpdate();
	
}

public static  List<userbean> getAllRecords () throws Exception {
	List <userbean> list = new ArrayList<>();
	
	Connection con = ConnectionProvider.getConnection();
	
		PreparedStatement ps =con.prepareStatement("select * from users");
		
        ResultSet rs = ps.executeQuery();
        
	while ((rs.next())) {
		userbean u = new userbean();
		u.setId(rs.getInt("id"));
		u.setName(rs.getString("name"));
		u.setEmail(rs.getString("email"));
		u.setPassword(rs.getString("password"));
		
		list.add(u);
	}
        
        
        
	return list;
	
}



public static userbean getRecordbyid (int id ) throws Exception {
	
	Connection con = ConnectionProvider.getConnection();
	
		PreparedStatement ps =con.prepareStatement("select * from users where id =?");
		
        ps.setInt(1,id);
        ResultSet rs = ps.executeQuery();
        
        
	 if((rs.next())) {
		userbean u = new userbean();
		u.setId(rs.getInt("id"));
		u.setName(rs.getString("name"));
		u.setEmail(rs.getString("email"));
		u.setPassword(rs.getString("password"));
		
	return u;
	}
	
	return null;
	
}

	
	
}
