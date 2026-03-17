package dao;

import java.sql.*;
import mysqlconnection.ConnectionProvider;

public class UserDAO {

public static boolean login(String email,String password) throws Exception{

Connection con=ConnectionProvider.getConnection();

PreparedStatement ps=con.prepareStatement(
"select * from users where email=? and password=?");

ps.setString(1,email);
ps.setString(2,password);

ResultSet rs=ps.executeQuery();

return rs.next();
}

public static int updatePassword(String email,String password) throws Exception{

Connection con=ConnectionProvider.getConnection();

PreparedStatement ps=con.prepareStatement(
"update users set password=? where email=?");

ps.setString(1,password);
ps.setString(2,email);

return ps.executeUpdate();
}

}