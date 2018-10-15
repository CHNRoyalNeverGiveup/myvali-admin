package com.hpp.admin.model;

public class User {

    private  int id;
    private  String uname;
    private  String sex;
    private  String age;
    private  String tellphone;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getSex() {
        return sex;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", uname='" + uname + '\'' +
                ", sex='" + sex + '\'' +
                ", age='" + age + '\'' +
                ", tellphone=" + tellphone +
                '}';
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getTellphone() {
        return tellphone;
    }

    public void setTellphone(String tellphone) {
        this.tellphone = tellphone;
    }




}
