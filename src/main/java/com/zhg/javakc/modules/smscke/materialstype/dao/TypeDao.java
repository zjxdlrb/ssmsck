package com.zhg.javakc.modules.smscke.materialstype.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.smscke.materialstype.entity.TypeEntity;

import java.util.List;
import java.util.Map;

public interface TypeDao extends BaseDao<TypeEntity> {

    public List<Map<String,Object>> queryAll();
    public List<Map<String,Object>> queryById(String id);
    public void deleteMaterial(String id);

}
