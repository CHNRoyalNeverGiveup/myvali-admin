package com.hpp.admin.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.hpp.admin.model.User;
import com.hpp.admin.dao.UserDao;
import com.hpp.admin.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(isolation= Isolation.READ_COMMITTED,propagation= Propagation.REQUIRED)
public class UserService implements IUserService {

    @Autowired
    private UserDao dao;


    @Override
    public JSONObject UserList(JSONObject jsonObject) {
        long count = dao.selectCount(jsonObject);
        List<User> users = dao.selectByLimitAndSearch(jsonObject);
        jsonObject.put("total",count);
        jsonObject.put("rows",users);
        return jsonObject;
    }
    /**
     * 新增用户
     */
    @Override
    public void saveUser(User user) {
        dao.saveUser(user);
    }

    /**
     * 更新用户
     */
    @Override
    public boolean updateUser(User user) {
        return dao.updateUser(user);
    }

    /**
     * 根据Id删除用户
     */
    @Override
    public boolean deleteUser(int id) {
        return dao.deleteUser(id);
    }



}
