package com.cdvtc.news.dao.impl;

import com.cdvtc.news.dao.UserDao;
import com.cdvtc.news.model.User;
import com.cdvtc.news.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImpl implements UserDao {
    public User login(String account, String password) {
        try {
            //获取连接
            Connection con = DBUtil.getConnection();

            //执行查询并返回结果集
            PreparedStatement pst = con.prepareStatement("select * from user where (account=? or mobile=? or email=?) and password=? and forbidden=?");
            pst.setString(1, account);
            pst.setString(2, account);
            pst.setString(3, account);
            pst.setString(4, password);
            pst.setBoolean(5, false);
            ResultSet rs = pst.executeQuery();

            User user = null;
            if (rs.next()) {
                user = new User();
                user.setAccount(account);
                user.setId(rs.getInt("id"));
                user.setBirthday(rs.getDate("birthday"));
                user.setMobile(rs.getString("mobile"));
                user.setEmail(rs.getString("email"));
                user.setPhoto(rs.getString("photo"));
                user.setRegDate(rs.getTimestamp("regdate"));
                user.setNickname(rs.getString("nickname"));
            }

            //释放连接资源
            rs.close();
            pst.close();
            con.close();

            //返回结果
            return user;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
}
