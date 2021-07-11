package com.company.confectionery.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.entity.annotation.OnDeleteInverse;
import com.haulmont.cuba.core.global.DeletePolicy;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.List;

@Table(name = "CONFECTIONERY_COMPONENT")
@Entity(name = "confectionery_Component")
@NamePattern("%s|name")
public class Component extends StandardEntity {
    private static final long serialVersionUID = 8100870444104230219L;

    @Column(name = "NAME")
    private String name;

    @NotNull
    @Column(name = "QUANTITY", nullable = false)
    private Integer quantity;

    @JoinTable(name = "CONFECTIONERY_COMPONENT_COMPONENT_LINK",
            joinColumns = @JoinColumn(name = "COMPONENT_1_ID"),
            inverseJoinColumns = @JoinColumn(name = "COMPONENT_2_ID"))
    @OnDeleteInverse(DeletePolicy.CASCADE)
    @OnDelete(DeletePolicy.UNLINK)
    @ManyToMany
    private List<Component> componentsList;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CONFECTIONERY_ID")
    private Confectionery confectionery;

    public Confectionery getConfectionery() {
        return confectionery;
    }

    public void setConfectionery(Confectionery confectionery) {
        this.confectionery = confectionery;
    }

    public List<Component> getComponentsList() {
        return componentsList;
    }

    public void setComponentsList(List<Component> componentsList) {
        this.componentsList = componentsList;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}