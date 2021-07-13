package com.company.confectionery.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.entity.annotation.OnDeleteInverse;
import com.haulmont.cuba.core.global.DeletePolicy;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.List;

@Table(name = "CONFECTIONERY_TECHNOLOGICAL_MAP")
@Entity(name = "confectionery_TechnologicalMap")
@NamePattern("%s|name")
public class TechnologicalMap extends StandardEntity {
    private static final long serialVersionUID = 9178398462907629042L;

    @NotNull
    @Column(name = "NAME", nullable = false, unique = true)
    private String name;

    @JoinTable(name = "CONFECTIONERY_TECHNOLOGICAL_MAP_COMPONENT_LINK",
            joinColumns = @JoinColumn(name = "TECHNOLOGICAL_MAP_ID"),
            inverseJoinColumns = @JoinColumn(name = "COMPONENT_ID"))
    @OnDeleteInverse(DeletePolicy.UNLINK)
    @OnDelete(DeletePolicy.UNLINK)
    @ManyToMany
    private List<Component> componentsList;

    public List<Component> getComponentsList() {
        return componentsList;
    }

    public void setComponentsList(List<Component> componentsList) {
        this.componentsList = componentsList;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}