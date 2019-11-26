package com.zhg.javakc.modules.smscke.relation.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import com.zhg.javakc.modules.smscke.materials.entity.MaterialsEntity;
import com.zhg.javakc.modules.smscke.organization.entity.OrganizationEntity;
import com.zhg.javakc.modules.smscke.supplier.entity.SupplierEntity;

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
    private OrganizationEntity organizationEntity;
    private MaterialsEntity materialsEntity;
    private SupplierEntity supplierEntity;

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

    public OrganizationEntity getOrganizationEntity() {
        return organizationEntity;
    }

    public void setOrganizationEntity(OrganizationEntity organizationEntity) {
        this.organizationEntity = organizationEntity;
    }
}
