package com.zhg.javakc.modules.smscke.unit.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.smscke.unit.dao.UnitDao;
import com.zhg.javakc.modules.smscke.unit.entity.UnitEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class UnitService extends BaseService<UnitDao, UnitEntity> {
    @Autowired
    public UnitDao unitDao;

    public Page<UnitEntity> queryUnit(UnitEntity unitEntity, Page<UnitEntity> page){
        // 设置分页参数，才会被Mybatis分页插件所识别，拦截SQL，再其SQL的前后加入分页SQL语句
        unitEntity.setPage(page);
        // 根据分页与查询条件进行测试数据的查询
        List<UnitEntity> unitList=unitDao.findList(unitEntity);
        // 将查询数据设置到分页类的List集合当中，一起返回
        page.setList(unitList);
        return page;
    }
    public List<Map<String, Object>> findList()
    {
        return unitDao.findAll();
    }
}
