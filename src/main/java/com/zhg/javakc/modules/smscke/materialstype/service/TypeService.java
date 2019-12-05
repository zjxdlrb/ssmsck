package com.zhg.javakc.modules.smscke.materialstype.service;


import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.smscke.materialstype.dao.TypeDao;
import com.zhg.javakc.modules.smscke.materialstype.entity.TypeEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
public class TypeService extends BaseService<TypeDao, TypeEntity> {


    @Autowired
    private TypeDao typeDao;

    public List<Map<String,Object>> queryAll(){


        return typeDao.queryAll();
    }

    @Transactional(readOnly = false)
    public void save(TypeEntity typeEntity){
        typeEntity.setId(CommonUtil.uuid());
        typeDao.insert(typeEntity);
    }

    public List<Map<String,Object>> queryById(String id){

        return typeDao.queryById(id);

    }

    public void deleteMaterial(String id){

        typeDao.deleteMaterial(id);
    }

}
