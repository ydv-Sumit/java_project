package mysqlconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {
	
	static Connection con = null;
	
	private ConnectionProvider() {};
	
	public static Connection getConnection() {
		
		if (con==null) {
			
			try {
				
				 Class.forName("com.mysql.cj.jdbc.Driver");
				 
				 
					
						con =DriverManager.getConnection(
						Dbconnection.DATABASE_URL1,
						Dbconnection.DATABASE_USER1,
						Dbconnection.DATABASE_PASS1
						 );
				 
				}catch(Exception e) {
					e.printStackTrace();
				}
	}
		return con;
	
	
	
	}
}
