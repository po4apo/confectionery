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

    @Column(name = "SCALE")
    private String scale;

    @Column(name = "QYANTITY")
    private String quantity;

    public void setScale(Scale scale) {
        this.scale = scale == null ? null : scale.getId();
    }

    public Scale getScale() {
        return scale == null ? null : Scale.fromId(scale);
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}