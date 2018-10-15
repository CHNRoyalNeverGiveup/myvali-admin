package com.hpp.admin.web;

import com.alibaba.fastjson.JSONObject;
import com.hpp.admin.model.User;
import com.hpp.admin.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@Controller
public class UserController {

   @Autowired
    private IUserService ser;

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String index(){
        return "index";
    }

    @RequestMapping(value = "/{path}",method = RequestMethod.GET)
    public String toPage(@PathVariable String path){
        return path;
    }


    /**
     * 查询所有用户跟分页
     */
    @ResponseBody
    @RequestMapping(value = "/allUser",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public JSONObject allUser(@RequestBody JSONObject jsonObject){
        //System.out.println(jsonObject);
            return  ser.UserList(jsonObject);
    }

    //添加
    @RequestMapping("/saveUser")
    public String saveUser(User user){
        ser.saveUser(user);
        return "redirect:table-data-table";
    }

    //删除
    @RequestMapping("/deleteUser")
    public String deleteUser(int id){
        ser.deleteUser(id);
        return "redirect:table-data-table";
    }

    //修改
    @RequestMapping("/updateUser")
    public String updateUser(User user){
        System.out.println(user);
        ser.updateUser(user);
        return "redirect:table-data-table";
    }
}


