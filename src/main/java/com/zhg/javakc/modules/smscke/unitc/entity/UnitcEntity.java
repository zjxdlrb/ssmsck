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
    //物资名称
    private String materialsName;
    //基本单位
    private String materialsUnit;
    //规格
    private String materialsSpecification;
    //物资编码
    private String materialsCoding;

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

    public String getMaterialsName() {
        return materialsName;
    }

    public void setMaterialsName(String materialsName) {
        this.materialsName = materialsName;
    }

    public String getMaterialsUnit() {
        return materialsUnit;
    }

    public void setMaterialsUnit(String materialsUnit) {
        this.materialsUnit = materialsUnit;
    }

    public String getMaterialsSpecification() {
        return materialsSpecification;
    }

    public void setMaterialsSpecification(String materialsSpecification) {
        this.materialsSpecification = materialsSpecification;
    }

    public String getMaterialsCoding() {
        return materialsCoding;
    }

    public void setMaterialsCoding(String materialsCoding) {
        this.materialsCoding = materialsCoding;
    }
}
