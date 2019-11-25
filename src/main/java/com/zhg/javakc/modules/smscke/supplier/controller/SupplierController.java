package com.zhg.javakc.modules.smscke.supplier.controller;

import com.zhg.javakc.modules.smscke.supplier.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/supplier")
public class SupplierController {
    @Autowired
    public SupplierService supplierService;

    @RequestMapping("/querySupList")
    @ResponseBody
    public List<Map<String,Object>> querySup(){
        List<Map<String,Object>> list=supplierService.querySupList();
        System.out.println(list.toString());
        return list;
    }
}
