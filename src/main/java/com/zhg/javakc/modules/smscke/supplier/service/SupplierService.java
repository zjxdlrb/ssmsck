package com.zhg.javakc.modules.smscke.supplier.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.smscke.supplier.dao.SupplierDao;
import com.zhg.javakc.modules.smscke.supplier.entity.SupplierEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
import java.util.function.Supplier;

@Service
@Transactional(readOnly = true)
public class SupplierService extends BaseService<SupplierDao, SupplierEntity> {


    @Autowired
    public SupplierDao supplierDao;


    public Page<SupplierEntity> querySupList(SupplierEntity supplierEntity, Page<SupplierEntity> page){
        // 设置分页参数，才会被Mybatis分页插件所识别，拦截SQL，再其SQL的前后加入分页SQL语句
        supplierEntity.setPage(page);
        // 根据分页与查询条件进行测试数据的查询
        List<SupplierEntity> supplierList=supplierDao.findList(supplierEntity);
        // 将查询数据设置到分页类的List集合当中，一起返回
        page.setList(supplierList);
        return page;
    }
}
