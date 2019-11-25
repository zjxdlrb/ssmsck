package com.zhg.javakc.modules.smscke.organization.service;

import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.smscke.organization.dao.OrganizationDao;
import com.zhg.javakc.modules.smscke.organization.entity.OrganizationEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class OrganizationService extends BaseService<OrganizationDao, OrganizationEntity> {

    @Autowired
    public OrganizationDao organizationDao;

    public List<Map<String,Object>> queryAllOrg(){
        return organizationDao.queryAllOrg();
    }

}
