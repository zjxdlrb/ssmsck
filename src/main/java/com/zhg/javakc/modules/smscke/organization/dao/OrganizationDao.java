package com.zhg.javakc.modules.smscke.organization.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.smscke.organization.entity.OrganizationEntity;

import java.util.List;
import java.util.Map;

public interface OrganizationDao extends BaseDao<OrganizationEntity> {

    public List<Map<String,Object>> queryAllOrg();

}
