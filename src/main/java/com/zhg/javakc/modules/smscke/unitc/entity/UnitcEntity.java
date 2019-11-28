package com.zhg.javakc.modules.smscke.unitc.entity;

import com.zhg.javakc.base.entity.BaseEntity;

public class UnitcEntity extends BaseEntity<UnitcEntity> {
    //主键ID
    private String unitConversionid;
    //物资外键ID
    private String materialsId;
    //物资转换前单位
    private String materialsUnitbefore;
    //转换率
    private String conversionRate;
    //物资转换后单位
    private String materialsUnitafter;

    public String getUnitConversionid() {
        return unitConversionid;
    }

    public void setUnitConversionid(String unitConversionid) {
        this.unitConversionid = unitConversionid;
    }

    public String getMaterialsId() {
        return materialsId;
    }

    public void setMaterialsId(String materialsId) {
        this.materialsId = materialsId;
    }

    public String getMaterialsUnitbefore() {
        return materialsUnitbefore;
    }

    public void setMaterialsUnitbefore(String materialsUnitbefore) {
        this.materialsUnitbefore = materialsUnitbefore;
    }

    public String getConversionRate() {
        return conversionRate;
    }

    public void setConversionRate(String conversionRate) {
        this.conversionRate = conversionRate;
    }

    public String getMaterialsUnitafter() {
        return materialsUnitafter;
    }

    public void setMaterialsUnitafter(String materialsUnitafter) {
        this.materialsUnitafter = materialsUnitafter;
    }
}
