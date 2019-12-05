package com.zhg.javakc.modules.smscke.materials.controller;


import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.modules.smscke.materials.entity.MaterialsEntity;
import com.zhg.javakc.modules.smscke.materials.service.MaterialsService;
import com.zhg.javakc.modules.smscke.relation.entity.RelationEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/materials")
public class MaterialsController   {

    @Autowired
    public MaterialsService materialsService;

    @RequestMapping("/queryAllmas")
    public ModelAndView queryAll(MaterialsEntity materialsEntity, HttpServletRequest request, HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView("smscke/materials/list");
        Page<MaterialsEntity> page = materialsService.queryAll(materialsEntity, new Page<MaterialsEntity>(request, response));
        modelAndView.addObject("page", page);
        return modelAndView;

    }
    @RequestMapping(value="/createParent")
    public String createParent(MaterialsEntity entity, ModelMap model) throws Exception
    {
        model.put("page", materialsService.findList(entity));
        return "smscke/public/materials/materials";
    }

}
