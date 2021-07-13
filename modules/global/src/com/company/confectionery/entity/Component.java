package com.company.confectionery.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Table(name = "CONFECTIONERY_COMPONENT")
@Entity(name = "confectionery_Component")
@NamePattern("%s|name")
public class Component extends StandardEntity {
    private static final long serialVersionUID = 8100870444104230219L;

    @NotNull
    @Column(name = "NAME", nullable = false, unique = true)
    private String name;

    @Column(name = "QYANTITY")
    private String qyantity;

    public String getQyantity() {
        return qyantity;
    }

    public void setQyantity(String qyantity) {
        this.qyantity = qyantity;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}