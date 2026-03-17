package mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import beans.registerbean;

public class ConnectionProvider {
	
	
	static Connection con = null;

	  private ConnectionProvider() {}
	  
	  public static Connection getConnection() throws SQLException {
		  
		  try {
			  Class.forName(dbconnection.DB_DRIVER);
			  
		con=DriverManager.getConnection(
				dbconnection.DB_URL,
				dbconnection.DB_USER,
				dbconnection.DB_PASS
				);
			
		  } catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		  }
		  
		  
		return con;
		  
	  }
	  
}
