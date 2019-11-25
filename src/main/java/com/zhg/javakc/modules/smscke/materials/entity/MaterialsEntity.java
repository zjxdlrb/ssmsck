package com.zhg.javakc.modules.smscke.materials.entity;


import com.zhg.javakc.base.entity.BaseEntity;

import java.util.Date;

public class MaterialsEntity extends BaseEntity {
    //id主键
    private String materialsId;
    //物资分类外键ID
    private String materialsClassify;
    //物资名称
    private String materialsName;
    //规格
    private String materialsSpecification;
    //物资简称
    private String materialsShortened;
    //物资简述
    private String materialsDescribe;
    //图片
    private String materialsImg;
    //是否赋码(0否1是)
    private String materialsTagging;
    //物资类型
    private String materialsType;
    //是否限制合同(0否1是)
    private String materialsContractRights;
    //物资组
    private String materialsMatter;
    //保质期
    private int materialsShelfLife;
    //时间单位
    private String materialsHourlyBasis;
    //税率
    private String materialsTaxRate;
    //基本单位外键ID
    private String materialsUnit;
    //生产单位外键ID
    private String productionUnit;
    //净重
    private String materialsSuttle;
    //毛重
    private String materialsRoughWeight;
    //长
    private int materialsLong;
    //宽
    private int materialsWide;
    //'高
    private int materialsTall;
    //长宽高单位
    private String unitLongWideTall;
    //物资编码
    private String materialsCoding;
    //'状态
    private String materialsState;
    //创建人
    private String materialsCreator;
    //缩写
    private String materialsAbbreviation;
    //标准单位
    private String standardUnit;
    //辅助单位
    private String auxiliaryUnit;
    //修改日期
    private Date createDate;
    //创建日期
    private Date updateDate;

    public String getMaterialsId() {
        return materialsId;
    }

    public void setMaterialsId(String materialsId) {
        this.materialsId = materialsId;
    }

    public String getMaterialsClassify() {
        return materialsClassify;
    }

    public void setMaterialsClassify(String materialsClassify) {
        this.materialsClassify = materialsClassify;
    }

    public String getMaterialsName() {
        return materialsName;
    }

    public void setMaterialsName(String materialsName) {
        this.materialsName = materialsName;
    }

    public String getMaterialsSpecification() {
        return materialsSpecification;
    }

    public void setMaterialsSpecification(String materialsSpecification) {
        this.materialsSpecification = materialsSpecification;
    }

    public String getMaterialsShortened() {
        return materialsShortened;
    }

    public void setMaterialsShortened(String materialsShortened) {
        this.materialsShortened = materialsShortened;
    }

    public String getMaterialsDescribe() {
        return materialsDescribe;
    }

    public void setMaterialsDescribe(String materialsDescribe) {
        this.materialsDescribe = materialsDescribe;
    }

    public String getMaterialsImg() {
        return materialsImg;
    }

    public void setMaterialsImg(String materialsImg) {
        this.materialsImg = materialsImg;
    }

    public String getMaterialsTagging() {
        return materialsTagging;
    }

    public void setMaterialsTagging(String materialsTagging) {
        this.materialsTagging = materialsTagging;
    }

    public String getMaterialsType() {
        return materialsType;
    }

    public void setMaterialsType(String materialsType) {
        this.materialsType = materialsType;
    }

    public String getMaterialsContractRights() {
        return materialsContractRights;
    }

    public void setMaterialsContractRights(String materialsContractRights) {
        this.materialsContractRights = materialsContractRights;
    }

    public String getMaterialsMatter() {
        return materialsMatter;
    }

    public void setMaterialsMatter(String materialsMatter) {
        this.materialsMatter = materialsMatter;
    }

    public int getMaterialsShelfLife() {
        return materialsShelfLife;
    }

    public void setMaterialsShelfLife(int materialsShelfLife) {
        this.materialsShelfLife = materialsShelfLife;
    }

    public String getMaterialsHourlyBasis() {
        return materialsHourlyBasis;
    }

    public void setMaterialsHourlyBasis(String materialsHourlyBasis) {
        this.materialsHourlyBasis = materialsHourlyBasis;
    }

    public String getMaterialsTaxRate() {
        return materialsTaxRate;
    }

    public void setMaterialsTaxRate(String materialsTaxRate) {
        this.materialsTaxRate = materialsTaxRate;
    }

    public String getMaterialsUnit() {
        return materialsUnit;
    }

    public void setMaterialsUnit(String materialsUnit) {
        this.materialsUnit = materialsUnit;
    }

    public String getProductionUnit() {
        return productionUnit;
    }

    public void setProductionUnit(String productionUnit) {
        this.productionUnit = productionUnit;
    }

    public String getMaterialsSuttle() {
        return materialsSuttle;
    }

    public void setMaterialsSuttle(String materialsSuttle) {
        this.materialsSuttle = materialsSuttle;
    }

    public String getMaterialsRoughWeight() {
        return materialsRoughWeight;
    }

    public void setMaterialsRoughWeight(String materialsRoughWeight) {
        this.materialsRoughWeight = materialsRoughWeight;
    }

    public int getMaterialsLong() {
        return materialsLong;
    }

    public void setMaterialsLong(int materialsLong) {
        this.materialsLong = materialsLong;
    }

    public int getMaterialsWide() {
        return materialsWide;
    }

    public void setMaterialsWide(int materialsWide) {
        this.materialsWide = materialsWide;
    }

    public int getMaterialsTall() {
        return materialsTall;
    }

    public void setMaterialsTall(int materialsTall) {
        this.materialsTall = materialsTall;
    }

    public String getUnitLongWideTall() {
        return unitLongWideTall;
    }

    public void setUnitLongWideTall(String unitLongWideTall) {
        this.unitLongWideTall = unitLongWideTall;
    }

    public String getMaterialsCoding() {
        return materialsCoding;
    }

    public void setMaterialsCoding(String materialsCoding) {
        this.materialsCoding = materialsCoding;
    }

    public String getMaterialsState() {
        return materialsState;
    }

    public void setMaterialsState(String materialsState) {
        this.materialsState = materialsState;
    }

    public String getMaterialsCreator() {
        return materialsCreator;
    }

    public void setMaterialsCreator(String materialsCreator) {
        this.materialsCreator = materialsCreator;
    }

    public String getMaterialsAbbreviation() {
        return materialsAbbreviation;
    }

    public void setMaterialsAbbreviation(String materialsAbbreviation) {
        this.materialsAbbreviation = materialsAbbreviation;
    }

    public String getStandardUnit() {
        return standardUnit;
    }

    public void setStandardUnit(String standardUnit) {
        this.standardUnit = standardUnit;
    }

    public String getAuxiliaryUnit() {
        return auxiliaryUnit;
    }

    public void setAuxiliaryUnit(String auxiliaryUnit) {
        this.auxiliaryUnit = auxiliaryUnit;
    }

    @Override
    public Date getCreateDate() {
        return createDate;
    }

    @Override
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    @Override
    public Date getUpdateDate() {
        return updateDate;
    }

    @Override
    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}
