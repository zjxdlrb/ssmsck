package com.zhg.javakc.modules.smscke.relation.entity;

import com.zhg.javakc.base.entity.BaseEntity;

/**
 *
 */
public class RelationEntity extends BaseEntity<RelationEntity> {

    private String relationId;
    private String organizationId;
    private String supplierId;
    private String materialsId;
    private String taxRate;
    private String receiveOrganizationId;

    private String organizationName;
    private String supplierName;
    private String materialsName;
    private String receiveOrganizationName;

    public String getRelationId() {
        return relationId;
    }

    public void setRelationId(String relationId) {
        this.relationId = relationId;
    }

    public String getOrganizationId() {
        return organizationId;
    }

    public void setOrganizationId(String organizationId) {
        this.organizationId = organizationId;
    }

    public String getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(String supplierId) {
        this.supplierId = supplierId;
    }

    public String getMaterialsId() {
        return materialsId;
    }

    public void setMaterialsId(String materialsId) {
        this.materialsId = materialsId;
    }

    public String getTaxRate() {
        return taxRate;
    }

    public void setTaxRate(String taxRate) {
        this.taxRate = taxRate;
    }

    public String getReceiveOrganizationId() {
        return receiveOrganizationId;
    }

    public void setReceiveOrganizationId(String receiveOrganizationId) {
        this.receiveOrganizationId = receiveOrganizationId;
    }

    public String getOrganizationName() {
        return organizationName;
    }

    public void setOrganizationName(String organizationName) {
        this.organizationName = organizationName;
    }

    public String getSupplierName() {
        return supplierName;
    }

    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }

    public String getMaterialsName() {
        return materialsName;
    }

    public void setMaterialsName(String materialsName) {
        this.materialsName = materialsName;
    }

    public String getReceiveOrganizationName() {
        return receiveOrganizationName;
    }

    public void setReceiveOrganizationName(String receiveOrganizationName) {
        this.receiveOrganizationName = receiveOrganizationName;
    }
}