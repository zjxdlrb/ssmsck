package com.zhg.javakc.modules.smscke.unitc.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.smscke.unitc.entity.UnitcEntity;

import java.util.List;
import java.util.Map;

public interface UnitcDao extends BaseDao<UnitcEntity> {
    public List<Map<String, Object>> findAll();
}
