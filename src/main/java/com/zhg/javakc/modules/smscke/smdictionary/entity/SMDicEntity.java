package com.zhg.javakc.modules.smscke.smdictionary.entity;

import com.zhg.javakc.base.entity.BaseEntity;

public class SMDicEntity extends BaseEntity<SMDicEntity> {

    //主键ID
    private String dicid;
    //字典类型
    private String dictype;
    //值
    private String dicval;
    //备注
    private String dicremarks;
    //创建人
    private String diccreateuser;
    //修改人
    private String dicupdateuser;
    //删除标记
    private String dicdelflag;

    public String getDicid() {
        return dicid;
    }

    public void setDicid(String dicid) {
        this.dicid = dicid;
    }

    public String getDictype() {
        return dictype;
    }

    public void setDictype(String dictype) {
        this.dictype = dictype;
    }

    public String getDicval() {
        return dicval;
    }

    public void setDicval(String dicval) {
        this.dicval = dicval;
    }

    public String getDicremarks() {
        return dicremarks;
    }

    public void setDicremarks(String dicremarks) {
        this.dicremarks = dicremarks;
    }

    public String getDiccreateuser() {
        return diccreateuser;
    }

    public void setDiccreateuser(String diccreateuser) {
        this.diccreateuser = diccreateuser;
    }

    public String getDicupdateuser() {
        return dicupdateuser;
    }

    public void setDicupdateuser(String dicupdateuser) {
        this.dicupdateuser = dicupdateuser;
    }

    public String getDicdelflag() {
        return dicdelflag;
    }

    public void setDicdelflag(String dicdelflag) {
        this.dicdelflag = dicdelflag;
    }
}
