package com.zhg.javakc.modules.smscke.unitc.service;

import com.oracle.xmlns.internal.webservices.jaxws_databinding.XmlWebServiceClient;
import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.smscke.unitc.dao.UnitcDao;
import com.zhg.javakc.modules.smscke.unitc.entity.UnitcEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class UnitcService extends BaseService<UnitcDao, UnitcEntity> {
    @Autowired
    public UnitcDao unitcDao;

    public List<Map<String, Object>> findList()
    {
        return unitcDao.findAll();
    }

    public Page<UnitcEntity> queryUnitc(UnitcEntity unitcEntity, Page<UnitcEntity> page){
        // 设置分页参数，才会被Mybatis分页插件所识别，拦截SQL，再其SQL的前后加入分页SQL语句
        unitcEntity.setPage(page);
        // 根据分页与查询条件进行测试数据的查询
        List<UnitcEntity> unitcList=unitcDao.findList(unitcEntity);
        // 将查询数据设置到分页类的List集合当中，一起返回
        page.setList(unitcList);
        return page;
    }



}
