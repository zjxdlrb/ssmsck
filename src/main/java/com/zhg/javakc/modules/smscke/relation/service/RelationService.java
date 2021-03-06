package com.zhg.javakc.modules.smscke.relation.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.smscke.relation.dao.RelationDao;
import com.zhg.javakc.modules.smscke.relation.entity.RelationEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RelationService extends BaseService<RelationDao, RelationEntity> {

    @Autowired
    public RelationDao relationDao;

    public Page<RelationEntity> queryAll(RelationEntity relationEntity, Page<RelationEntity> page){
        // 设置分页参数，才会被Mybatis分页插件所识别，拦截SQL，再其SQL的前后加入分页SQL语句
        relationEntity.setPage(page);
        // 根据分页与查询条件进行测试数据的查询
        List<RelationEntity> testList=relationDao.findList(relationEntity);
        // 将查询数据设置到分页类的List集合当中，一起返回
        page.setList(testList);
        return page;
    }

}
