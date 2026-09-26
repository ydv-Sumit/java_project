package MySql;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {

	static Connection con = null;
	
	private ConnectionProvider() {};
	
	public static Connection getConnection() {
		
		if(con == null) {
			
			try {
				Class.forName(DbConnection.DB_DRIVER2);
				con=DriverManager.getConnection(
					DbConnection.DB_URL2,
					DbConnection.DB_USER2,
					DbConnection.DB_PASS2
						);
				
				
				
			} catch (ClassNotFoundException | SQLException e) {
				
				e.printStackTrace();
			}
			
		}
		
		
		return con;
		
	}
	
}
