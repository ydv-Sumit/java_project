package dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import beans.loginbean;
import mysqlconnection.connectionProvider;

public class logindao {

    public String checkLogin(loginbean bean) {

        Connection c = null;

        try {

            c = connectionProvider.getConnection();

            PreparedStatement ps = c.prepareStatement(
                "select fullname from user where email=? and password=?");

            ps.setString(1, bean.getEmail());
            ps.setString(2, bean.getPassword());

            ResultSet rs = ps.executeQuery();

            if(rs.next()) {

                // fullname bean me set kar denge
                bean.setFullname(rs.getString("fullname"));

                return "success";
            } else {
                return "fail";
            }

        } catch(Exception e) {
            e.printStackTrace();
        }

        return "fail";
    }
}