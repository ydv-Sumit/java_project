package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import beans.registerbean;
import mysql.ConnectionProvider;

public class registerdao {

    public static int registerUser(registerbean b) {

        int status = 0;

        try {

            Connection con = ConnectionProvider.getConnection();

            PreparedStatement ps = con.prepareStatement(
                    "insert into user3(name,email,phone,password) values(?,?,?,?)");

            ps.setString(1, b.getName());
            ps.setString(2, b.getEmail());
            ps.setString(3, b.getPhone());
            ps.setString(4, b.getPassword());

            status = ps.executeUpdate();

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
    
    
    public static int updatePassword(String email,String password) throws Exception{

    	Connection con=ConnectionProvider.getConnection();

    	PreparedStatement ps=con.prepareStatement(
    	"update user3 set password=? where email=?");

    	ps.setString(1,password);
    	ps.setString(2,email);

    	return ps.executeUpdate();
    	}

    
    public static boolean checkEmail(String email) throws Exception{

    	boolean status=false;

    	Connection con=ConnectionProvider.getConnection();

    	PreparedStatement ps=con.prepareStatement(
    	"select * from user3 where email=?");

    	ps.setString(1,email);

    	ResultSet rs=ps.executeQuery();

    	if(rs.next()){
    	status=true;
    	}

    	con.close();

    	return status;
    	}
    
    
}