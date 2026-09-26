package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Beans.BookBean;
import MySql.ConnectionProvider;



public class BookDao {
	
	
	public static int save(BookBean b) throws SQLException {
		//int status = 0;
		
		Connection  con = ConnectionProvider.getConnection();
		
		
			PreparedStatement ps = con.prepareStatement(
					"insert into book(name,author,price) values(?,?,?)"
					);
			
			     ps.setString(1, b.getName());
			     ps.setString(2, b.getAuthor());
			     ps.setInt(3, b.getPrice());
			     
			
			
		return   ps.executeUpdate();
	
	}
	
	public static  int update(BookBean b) throws SQLException {
		
		Connection  con = ConnectionProvider.getConnection();

		PreparedStatement ps =con.prepareStatement("update book set name=?, author=?, price=? where id =? ");
		
	    ps.setString(1, b.getName());
	     ps.setString(2, b.getAuthor());
	     ps.setInt(3, b.getPrice());
		ps.setInt(4, b.getId());
		
		return  ps.executeUpdate() ;
		
	}
	
	public static int delete (int id )throws SQLException {
		
		Connection con = ConnectionProvider.getConnection();
		
			PreparedStatement ps =con.prepareStatement("delete from book where id =?");
			
	        ps.setInt(1,id);
		
		return ps.executeUpdate();
		
	}
	
	public static  List<BookBean> getAllRecords () throws SQLException {
		List <BookBean> list = new ArrayList<>();
		
		Connection con = ConnectionProvider.getConnection();
		
			PreparedStatement ps =con.prepareStatement("select * from book");
			
	        ResultSet rs = ps.executeQuery();
	        
		while ((rs.next())) {
			BookBean u = new BookBean();
			u.setId(rs.getInt("id"));
			u.setName(rs.getString("name"));
			u.setAuthor(rs.getString("author"));
			u.setPrice(rs.getInt("price"));
			
			list.add(u);
		}
	        
	        
	        
		return list;
		
	}
	
	
	public static BookBean getRecordbyid (int id ) throws SQLException {
		
		Connection con = ConnectionProvider.getConnection();
		
			PreparedStatement ps =con.prepareStatement("select * from book where id =?");
			
	        ps.setInt(1,id);
	        ResultSet rs = ps.executeQuery();
	        
	        
		 if((rs.next())) {
			BookBean u = new BookBean();
			u.setId(rs.getInt("id"));
			u.setName(rs.getString("name"));
			u.setAuthor(rs.getString("author"));
			u.setPrice(rs.getInt("price"));
			
		return u;
		}
		
		return null;
		
	}

		
		
	}
	
	

	
	


