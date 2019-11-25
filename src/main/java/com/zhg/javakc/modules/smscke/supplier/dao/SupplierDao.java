package com.zhg.javakc.modules.smscke.supplier.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.base.dao.MyBatisDao;
import com.zhg.javakc.modules.smscke.supplier.entity.SupplierEntity;

import java.util.List;
import java.util.Map;

@MyBatisDao
public interface SupplierDao extends BaseDao<SupplierEntity> {
    public List<Map<String,Object>> querySupList();
}
