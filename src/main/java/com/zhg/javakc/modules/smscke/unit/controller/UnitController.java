package com.zhg.javakc.modules.smscke.unit.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.smscke.unit.entity.UnitEntity;
import com.zhg.javakc.modules.smscke.unit.service.UnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/smsckeunit")
public class UnitController {
    @Autowired
    public UnitService unitService;

    @RequestMapping("/queryUnit")
    public ModelAndView queryUnit(UnitEntity unitEntity, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView=new ModelAndView("smscke/unit/list");
        Page<UnitEntity> page=unitService.queryUnit(unitEntity,new Page<UnitEntity>(request,response));
        modelAndView.addObject("page",page);
        return modelAndView;
    }
    @RequestMapping("/save")
    public String save(UnitEntity unitEntity) {
        // 设置ID
        unitEntity.setUnitId(CommonUtil.uuid());
        unitService.save(unitEntity);
        return "redirect:queryUnit.do";

    }

    @RequestMapping("/view")
    public String view(String ids, ModelMap modelMap){
        UnitEntity unitEntity=unitService.get(ids);
        modelMap.put("unitEntity",unitEntity);
        return "smsckeunit/update";
    }
    @RequestMapping("/update")
    public String update(UnitEntity unitEntity){
            unitService.update(unitEntity);
            return "redirect:queryUnit.do";
    }
}
