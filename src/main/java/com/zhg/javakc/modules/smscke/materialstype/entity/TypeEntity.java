package com.zhg.javakc.modules.smscke.materialstype.entity;

import com.zhg.javakc.base.entity.BaseEntity;

public class TypeEntity extends BaseEntity<TypeEntity> {

    //主键ID
    private String id;
    //分类编号
    private String classifynum;
    //分类名称
    private String name;
    //分类简写
    private String classifyabbr;
    //父类ID
    private String pId;
    //(排序)序号
    private Integer classifyorder;
    //级别
    private Integer classifylevel;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getClassifynum() {
        return classifynum;
    }

    public void setClassifynum(String classifynum) {
        this.classifynum = classifynum;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getClassifyabbr() {
        return classifyabbr;
    }

    public void setClassifyabbr(String classifyabbr) {
        this.classifyabbr = classifyabbr;
    }

    public String getpId() {
        return pId;
    }

    public void setpId(String pId) {
        this.pId = pId;
    }

    public Integer getClassifyorder() {
        return classifyorder;
    }

    public void setClassifyorder(Integer classifyorder) {
        this.classifyorder = classifyorder;
    }

    public Integer getClassifylevel() {
        return classifylevel;
    }

    public void setClassifylevel(Integer classifylevel) {
        this.classifylevel = classifylevel;
    }

}
