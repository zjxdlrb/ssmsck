package com.zhg.javakc.modules.smscke.smdictionary.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.smscke.smdictionary.dao.SMDicDao;
import com.zhg.javakc.modules.smscke.smdictionary.entity.SMDicEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly = true)
public class SMDicService extends BaseService<SMDicDao, SMDicEntity> {

    @Autowired
    private SMDicDao smDicDao;

    public Page<SMDicEntity> query(SMDicEntity smDicEntity,Page<SMDicEntity> page){
        // 设置分页参数，才会被Mybatis分页插件所识别，拦截SQL，再其SQL的前后加入分页SQL语句
        smDicEntity.setPage(page);
        // 根据分页与查询条件进行测试数据的查询
        List<SMDicEntity> testList=smDicDao.findList(smDicEntity);
        // 将查询数据设置到分页类的List集合当中，一起返回
        System.out.println(testList);
        page.setList(testList);
        return page;
    }


    @Transactional(readOnly = false)
    public void save(SMDicEntity smDicEntity,String[] val){

        for(int i=0;i<val.length;i++){
            smDicEntity.setDicid(CommonUtil.uuid());
            smDicEntity.setDicval(val[i]);
            smDicDao.insert(smDicEntity);
        }

    }

}
