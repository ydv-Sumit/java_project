package mysqlconnection;

import java.sql.*;

public class ConnectionProvider {

public static Connection getConnection() throws Exception{

Class.forName("com.mysql.cj.jdbc.Driver");

Connection con=DriverManager.getConnection(
"jdbc:mysql://localhost:3306/forpass",
"root",
"admin");

return con;

}

}