package mysqlconnection;

import java.sql.Connection;
import java.sql.DriverManager;

public final class connectionProvider {
	
	static Connection  con =null;  // iska abhi  tak connection nhi bana hai 
	
	private connectionProvider() {}  // iska mtlb hai ki koi aur connectionprovider name se connection na bana sake is name ka keval ek hi connection ho

	public static Connection getConnection() {
		
		
		if(con==null) {     // iska mtlb agar abhi tak connection nhi bana hai to nay connection bano nhi to vahi connection return kar do
			
		try {
			
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 
		 con =DriverManager.getConnection(
				DbconnectionData.DATABASE_URL, 
				DbconnectionData.DATABASE_USER,
				DbconnectionData.DATABASE_PASS
				 
				 
				 );
		 
		}catch(Exception e) {
			e.printStackTrace();
		}
			
				
			
		}
		
		
		return con;
	}

}
