package com.zhg.javakc.modules.smscke.materialstype.controller;


import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.smscke.materialstype.entity.TypeEntity;
import com.zhg.javakc.modules.smscke.materialstype.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/tree")
public class TypeController {


    @Autowired
    private TypeService typeService;

    @RequestMapping("/queryAll")
    @ResponseBody
    public List<Map<String,Object>> queryAll(){

        List<Map<String,Object>> list=typeService.queryAll();

        return list;
    }

    //保存
    @RequestMapping("/save")
    public String save(TypeEntity typeEntity){
        //设置ID
        typeEntity.setId(CommonUtil.uuid());
        typeService.save(typeEntity);
        return "smscke/materialstype/list";
    }

    @RequestMapping("/view")
    public String view(String ids, ModelMap modelMap){
        TypeEntity typeEntity=typeService.get(ids);
        modelMap.put("typeEntity",typeEntity);
        return "smscke/materialstype/list";
    }

    @RequestMapping("/update")
    public String update(TypeEntity typeEntity){
        typeService.update(typeEntity);
        return "redirect:queryAll.do";
    }

    @RequestMapping("/delete")
    public String delete(String id){

        //得到当前所有子节点数据
        List<Map<String,Object>> list=typeService.queryById(id);

        if(null !=list && list.size()>0){
            for (Map<String,Object> map :list){

                delete(map.get("id").toString());
            }
            typeService.deleteMaterial(id);
        }else{
            //删除当前结点
            typeService.deleteMaterial(id);
        }

        return "smscke/materialstype/list" ;
    }
 }
