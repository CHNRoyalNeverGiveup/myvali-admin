package com.hpp.admin.dao;

import com.alibaba.fastjson.JSONObject;
import com.hpp.admin.model.User;

import java.util.List;

public interface UserDao {

    long selectCount(JSONObject jsonObject);

    List<User> selectByLimitAndSearch(JSONObject jsonObject);

    void saveUser(User user);

    boolean updateUser(User user);

    boolean deleteUser(int id);




}
