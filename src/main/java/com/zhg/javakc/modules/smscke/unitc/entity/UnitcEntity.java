package com.zhg.javakc.modules.smscke.unitc.entity;

import com.zhg.javakc.base.entity.BaseEntity;

public class UnitcEntity extends BaseEntity<UnitcEntity> {
    private String unitConversionid;
    private String materialsId;
    private String materialsUnitbefore;
    private String conversionRate;
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
