package com.zhg.javakc.modules.smscke.supplier.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.smscke.supplier.entity.SupplierEntity;
import com.zhg.javakc.modules.smscke.supplier.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/supplier")
public class SupplierController {
    @Autowired
    public SupplierService supplierService;

    @RequestMapping("/querySupList")
    @ResponseBody
    public ModelAndView queryUnit(SupplierEntity supplierEntity, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView=new ModelAndView("smscke/supplier/list");
        Page<SupplierEntity> page=supplierService.querySupList(supplierEntity,new Page<SupplierEntity>(request,response));
        modelAndView.addObject("page",page);
        return modelAndView;
    }

    @RequestMapping("/save")
    public String save(SupplierEntity supplierEntity) {
        // 设置ID
        supplierEntity.setSupplierId(CommonUtil.uuid());
        supplierEntity.setSupplierClassify(null);
        System.out.println(supplierEntity.toString());
        supplierService.save(supplierEntity);
        return "redirect:querySupList.do";

    }

    @RequestMapping("/createParent")
    @ResponseBody
    public String createParent(SupplierEntity Entity, ModelMap model){
        model.put("page",supplierService.findList(Entity));
        return "smscke/public/supplier/supplier";
    }
}
