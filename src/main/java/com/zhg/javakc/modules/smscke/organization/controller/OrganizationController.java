package com.zhg.javakc.modules.smscke.organization.controller;

import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.smscke.organization.entity.OrganizationEntity;
import com.zhg.javakc.modules.smscke.organization.service.OrganizationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/organization")
public class OrganizationController {

    @Autowired
    public OrganizationService organizationService;

    @RequestMapping("/queryAllOrg")
    @ResponseBody
    public List<Map<String,Object>> queryAllorg(){
        List<Map<String,Object>> list=organizationService.queryAllOrg();
        return list;
    }
    @RequestMapping("/save")
    public String save(OrganizationEntity organizationEntity){
        organizationEntity.setOrganizationId(CommonUtil.uuid());
        organizationService.save(organizationEntity);
        System.out.println(2);
        return "smscke/public/orgredio/list";
    }



}
