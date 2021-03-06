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
import java.util.Random;


@Controller
@RequestMapping("/supplier")
public class SupplierController {
    @Autowired
    public SupplierService supplierService;

    @RequestMapping("/querySupList")
    @ResponseBody
    public ModelAndView querySupList(SupplierEntity supplierEntity, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView=new ModelAndView("smscke/supplier/list");
        Page<SupplierEntity> page=supplierService.querySupList(supplierEntity,new Page<SupplierEntity>(request,response));
        modelAndView.addObject("page",page);
        modelAndView.addObject("supplierEntity",supplierEntity);
        return modelAndView;
    }

    @RequestMapping("/save")
    public String save(SupplierEntity supplierEntity) {

        // 设置ID
        supplierEntity.setSupplierId(CommonUtil.uuid());
        Random random = new Random();
        String result="";
        for (int i=0;i<7;i++)
        {
            result+=random.nextInt(10);
        }
        System.out.println(result);
        if(supplierEntity.getSupplierContract()==null){
            supplierEntity.setSupplierContract("0");
        }
        if(supplierEntity.getSupplierShop()==null){
            supplierEntity.setSupplierShop("0");
        }
        supplierEntity.setSupplierCoding(result);
        supplierEntity.setSupplierClassify(null);
        supplierService.save(supplierEntity);
        return "redirect:querySupList.do";

    }

    @RequestMapping("/view")
    public String view(String supplierId, ModelMap modelMap){
        System.out.println(supplierId);
        SupplierEntity supplierEntity=supplierService.get(supplierId);
        modelMap.put("supplierEntity",supplierEntity);
        return "smscke/supplier/update";
    }

    @RequestMapping("/View")
    public String View(String supplierId, ModelMap modelMap){
        System.out.println(supplierId);
        SupplierEntity supplierEntity=supplierService.get(supplierId);
        modelMap.put("supplierEntity",supplierEntity);
        return "smscke/supplier/show";
    }

    @RequestMapping("/update")
    public String update(SupplierEntity supplierEntity){
        supplierEntity.setSupplierClassify(null);
        if(supplierEntity.getSupplierContract()==null){
            supplierEntity.setSupplierContract("0");
        }
        if(supplierEntity.getSupplierShop()==null){
            supplierEntity.setSupplierShop("0");
        }
        supplierService.update(supplierEntity);
        return "redirect:querySupList.do";
    }

//    @RequestMapping("/delete")
//    public String delete(String[] ids){
//        supplierService.delete(ids);
//        return "redirect:querySupList.do";
//    }


    @RequestMapping("/createParent")
//    @ResponseBody
    public String createParent(SupplierEntity Entity, ModelMap model){
        model.put("page",supplierService.findList(Entity));
        return "smscke/public/supplier/supplier";
    }
}
