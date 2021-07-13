package com.company.confectionery.entity;

import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.entity.annotation.OnDeleteInverse;
import com.haulmont.cuba.core.global.DeletePolicy;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Table(name = "CONFECTIONERY_COMPONENTS_LIST")
@Entity(name = "confectionery_ComponentsList")
public class ComponentsList extends StandardEntity {
    private static final long serialVersionUID = -6787919370251849529L;

    @JoinColumn(name = "TECHNOLOGICAL_MAP_ID")
    @ManyToOne(fetch = FetchType.LAZY)
    @OnDelete(DeletePolicy.UNLINK)
    @OnDeleteInverse(DeletePolicy.UNLINK)
    private TechnologicalMap technologicalMap;

    @NotNull
    @Column(name = "QUENTITY", nullable = false)
    private String quentity;

    @JoinColumn(name = "COMPONENT_ID")
    @ManyToOne(optional = false)
    @OnDelete(DeletePolicy.UNLINK)
    @OnDeleteInverse(DeletePolicy.UNLINK)
    @NotNull
    private Component component;

    public void setComponent(Component component) {
        this.component = component;
    }

    public Component getComponent() {
        return component;
    }

    public String getQuentity() {
        return quentity;
    }

    public void setQuentity(String quentity) {
        this.quentity = quentity;
    }

    public void setTechnologicalMap(TechnologicalMap technologicalMap) {
        this.technologicalMap = technologicalMap;
    }

    public TechnologicalMap getTechnologicalMap() {
        return technologicalMap;
    }

}