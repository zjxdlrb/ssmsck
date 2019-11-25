package com.zhg.javakc.modules.smscke.supplier.service;

import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.smscke.supplier.dao.SupplierDao;
import com.zhg.javakc.modules.smscke.supplier.entity.SupplierEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
@Transactional(readOnly = true)
public class SupplierService extends BaseService<SupplierDao, SupplierEntity> {


    @Autowired
    public SupplierDao organizationDao;

    public List<Map<String,Object>> querySupList(){
        return organizationDao.querySupList();
    }
}
