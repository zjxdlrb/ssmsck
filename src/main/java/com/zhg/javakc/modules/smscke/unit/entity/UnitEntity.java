package com.zhg.javakc.modules.smscke.unit.entity;

import com.zhg.javakc.base.entity.BaseEntity;

public class UnitEntity extends BaseEntity<UnitEntity> {
    private String unitId;
    private String unitCoding;
    private String unitCode;
    private String unitName;

    public String getUnitId() {
        return unitId;
    }

    public void setUnitId(String unitId) {
        this.unitId = unitId;
    }

    public String getUnitCoding() {
        return unitCoding;
    }

    public void setUnitCoding(String unitCoding) {
        this.unitCoding = unitCoding;
    }

    public String getUnitCode() {
        return unitCode;
    }

    public void setUnitCode(String unitCode) {
        this.unitCode = unitCode;
    }

    public String getUnitName() {
        return unitName;
    }

    public void setUnitName(String unitName) {
        this.unitName = unitName;
    }
}
