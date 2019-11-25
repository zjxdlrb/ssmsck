package com.zhg.javakc.modules.smscke.account.controller;


import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.smscke.account.entity.AccountEntity;
import com.zhg.javakc.modules.smscke.account.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "/account")
public class AccountController {


    @Autowired
    private AccountService accountService;


    //查询全部
    @RequestMapping("/query")
    public String query(AccountEntity accountEntity, ModelMap model,
                        HttpServletRequest request, HttpServletResponse response) throws Exception{
        model.put("page",accountService.query(new Page<AccountEntity>(request,response),accountEntity));
        model.put("accountEntity",accountEntity);
        return "smscke/account/list";
    }

    //保存
    @RequestMapping("/save")
    public String save(AccountEntity accountEntity){
        //设置ID
        accountEntity.setId(CommonUtil.uuid());
        accountService.save(accountEntity);
        return "redirect:query.do";
    }

    @RequestMapping("/view")
    public String view(String ids,ModelMap modelMap){
        AccountEntity accountEntity=accountService.get(ids);
        modelMap.put("accountEntity",accountEntity);
        return "smscke/account/update";
    }

    @RequestMapping("/update")
    public String update(AccountEntity accountEntity){
        accountService.update(accountEntity);
        return "redirect:query.do";
    }
}
