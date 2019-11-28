package com.zhg.javakc.modules.smscke.unit.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.smscke.unit.entity.UnitEntity;

import java.util.List;
import java.util.Map;

public interface UnitDao extends BaseDao<UnitEntity> {
    public List<Map<String, Object>> findAll();
}
