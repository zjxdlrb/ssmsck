package com.zhg.javakc.modules.smscke.account.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import com.zhg.javakc.modules.smscke.smdictionary.entity.SMDicEntity;

import java.util.List;

public class AccountEntity extends BaseEntity<AccountEntity> {

    //主键ID
    private String id;
    //账号
    private String account;
    //类型ID(外键)
    private String type;
    //用户名
    private String username;
    //密码
    private String password;
    //电话
    private String phone;
    //邮箱
    private String email;
    //状态
    private String state;
    //供应商外键ID
    private String supplierid;


    public String getId() {
        return id;
    }

    public String getAccount() {
        return account;
    }

    public String getType() {
        return type;
    }

    public String getUsername() {
        return username;
    }

    public String getPhone() {
        return phone;
    }

    public String getEmail() {
        return email;
    }

    public String getState() {
        return state;
    }

    public String getSupplierid() {
        return supplierid;
    }

    public String getPassword() {
        return password;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setState(String state) {
        this.state = state;
    }

    public void setSupplierid(String supplierid) {
        this.supplierid = supplierid;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    //字典表value值
    private String dicval;

    //封装dictionary
    private List<String> dic;


    public List<String> getDic() {
        return dic;
    }

    public void setDic(List<String> dic) {
        this.dic = dic;
    }

    public String getDicval() {
        return dicval;
    }

    public void setDicval(String dicval) {
        this.dicval = dicval;
    }




}
