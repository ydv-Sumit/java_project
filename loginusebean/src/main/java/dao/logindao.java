package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import beans.loginbean;
import mysql.ConnectionProvider;

public class logindao {

   
    public static String validate(loginbean bean) {

        String name = null;  // default null, login failed

        try {
            Connection con = ConnectionProvider.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "SELECT name FROM user3 WHERE email=? AND password=?"
            );

            ps.setString(1, bean.getEmail());
            ps.setString(2, bean.getPassword());

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                name = rs.getString("name"); // DB से username ले लिया
            }

        } catch(Exception e) {
            e.printStackTrace();
        }

        return name;
    }
}