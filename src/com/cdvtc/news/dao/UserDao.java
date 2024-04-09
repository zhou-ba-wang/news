package com.cdvtc.news.dao;

import com.cdvtc.news.model.User;

public interface UserDao {
     User login(String account, String password);
}
