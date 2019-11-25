package com.zhg.javakc.modules.smscke.account.service;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.smscke.account.dao.AccountDao;
import com.zhg.javakc.modules.smscke.account.entity.AccountEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly = true)
public class AccountService extends BaseService<AccountDao, AccountEntity> {

    @Autowired
    private AccountDao accountDao;

    public Page<AccountEntity> query (Page<AccountEntity> page,AccountEntity accountEntity){
        //设置分页参数，才会被Mybatis分页插件所识别。拦截SQL，在其SQL的前后加入分页SQL语句
        accountEntity.setPage(page);
        //根据分页与查询条件进行测试数据的查询
        List<AccountEntity> list=accountDao.findList(accountEntity);
        //将查询数据设置到分页类的List集合中，一起返回
        page.setList(list);
        return page;
    }

    @Transactional(readOnly = false)
    public void save(AccountEntity accountEntity){

        accountEntity.setId(CommonUtil.uuid());
        accountDao.insert(accountEntity);
    }



}
