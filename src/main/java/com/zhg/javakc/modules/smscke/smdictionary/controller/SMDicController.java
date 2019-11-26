package com.zhg.javakc.modules.smscke.smdictionary.controller;


import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.smscke.smdictionary.entity.SMDicEntity;
import com.zhg.javakc.modules.smscke.smdictionary.service.SMDicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "/smdic")
public class SMDicController {

    @Autowired
    private SMDicService smDicService;

    //查询全部
    @RequestMapping(value = "/query")
    public ModelAndView query(SMDicEntity smDicEntity, HttpServletRequest request, HttpServletResponse response) throws Exception{
        ModelAndView modelAndView=new ModelAndView("smscke/smdictionary/list");
        Page<SMDicEntity> page = smDicService.query(smDicEntity,new Page<SMDicEntity>(request,response));
        modelAndView.addObject("page",page);
        System.out.println("+++++++++++++++++++++++++++++++++++++++++");
        System.out.println(page.getList());
        return modelAndView;
    }

    @RequestMapping("/save")
    public String save(SMDicEntity smDicEntity){
        //设置ID
        smDicEntity.setDicid(CommonUtil.uuid());
        smDicService.save(smDicEntity);
        return "redirect:query.do";
    }

    @RequestMapping("/view")
    public String view(String ids,ModelMap modelMap){
        System.out.println(1);
        SMDicEntity smDicEntity=smDicService.get(ids);
        modelMap.put("smDicEntity",smDicEntity);
        return "smscke/smdictionary/update";
    }

    @RequestMapping("/update")
    public String update(SMDicEntity smDicEntity){
        smDicService.update(smDicEntity);
        return "redirect:query.do";
    }

    @RequestMapping("delete")
    public String delete(String[] ids){
        smDicService.delete(ids);
        return "redirect:query.do";
    }

}
