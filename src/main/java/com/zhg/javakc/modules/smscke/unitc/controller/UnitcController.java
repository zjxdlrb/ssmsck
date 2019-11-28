package com.zhg.javakc.modules.smscke.unitc.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;;
import com.zhg.javakc.modules.smscke.unitc.entity.UnitcEntity;
import com.zhg.javakc.modules.smscke.unitc.service.UnitcService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/unitc")
public class UnitcController {
    @Autowired
    public UnitcService unitcService;
    @RequestMapping("/queryUnitc")
    public ModelAndView queryUnitc(UnitcEntity unitcEntity, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView=new ModelAndView("smscke/unitc/list");
        Page<UnitcEntity> page=unitcService.queryUnitc(unitcEntity,new Page<UnitcEntity>(request,response));
        modelAndView.addObject("page",page);
        return modelAndView;
    }
    @RequestMapping("/save")
    public String save(UnitcEntity unitcEntity){
        unitcEntity.setUnitConversionid(CommonUtil.uuid());
        unitcService.save(unitcEntity);
        return "redirect:queryUnitc.do";
    }
    @RequestMapping("/view")
    public String view(String unitConversionid, ModelMap modelMap){
        UnitcEntity unitcEntity= unitcService.get(unitConversionid);
        modelMap.put("unitcEntity",unitcEntity);
        return "smscke/unitc/update";
    }
    @RequestMapping("/update")
    public String update(UnitcEntity unitcEntity){
        unitcService.update(unitcEntity);
        return "redirect:queryUnitc.do";
    }
    @RequestMapping("/delete")
    public String delete(String[] ids){
        unitcService.delete(ids);
        return "redirect:queryUnitc.do";
    }
}