package com.zhg.javakc.modules.smscke.relation.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.modules.smscke.relation.entity.RelationEntity;
import com.zhg.javakc.modules.smscke.relation.service.RelationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/relation")
public class RelationController {

    @Autowired
    public RelationService relationService;

    @RequestMapping("queryAll")
    public ModelAndView queryAll(RelationEntity relationEntity, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView=new ModelAndView("smscke/relation/list");
        Page<RelationEntity> page=relationService.queryAll(relationEntity,new Page<RelationEntity>(request,response));
        modelAndView.addObject("page",page);
        return modelAndView;
    }

}
