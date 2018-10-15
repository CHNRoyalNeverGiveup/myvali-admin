package com.hpp.admin.service;

import com.alibaba.fastjson.JSONObject;
import com.hpp.admin.model.User;

import java.util.List;

public interface IUserService {

    void  saveUser(User user);

    boolean updateUser(User user);

    boolean deleteUser(int id);


    JSONObject UserList(JSONObject jsonObject);


}
