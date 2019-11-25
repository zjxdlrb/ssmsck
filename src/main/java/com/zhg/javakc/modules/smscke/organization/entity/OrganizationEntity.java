package com.zhg.javakc.modules.smscke.organization.entity;

import com.zhg.javakc.base.entity.BaseEntity;

/**
 * 组织实体类
 */
public class OrganizationEntity extends BaseEntity<OrganizationEntity> {

    private String organizationId;
    private String organizationName;
    private String organizationPid;
    private String priceGroupId;
    private int organizationOrder;
    private int organizationLevel;

    public String getOrganizationId() {
        return organizationId;
    }

    public void setOrganizationId(String organizationId) {
        this.organizationId = organizationId;
    }

    public String getOrganizationName() {
        return organizationName;
    }

    public void setOrganizationName(String organizationName) {
        this.organizationName = organizationName;
    }

    public String getOrganizationPid() {
        return organizationPid;
    }

    public void setOrganizationPid(String organizationPid) {
        this.organizationPid = organizationPid;
    }

    public String getPriceGroupId() {
        return priceGroupId;
    }

    public void setPriceGroupId(String priceGroupId) {
        this.priceGroupId = priceGroupId;
    }

    public int getOrganizationOrder() {
        return organizationOrder;
    }

    public void setOrganizationOrder(int organizationOrder) {
        this.organizationOrder = organizationOrder;
    }

    public int getOrganizationLevel() {
        return organizationLevel;
    }

    public void setOrganizationLevel(int organizationLevel) {
        this.organizationLevel = organizationLevel;
    }
}
