package com.company.confectionery.entity;

import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.entity.annotation.OnDeleteInverse;
import com.haulmont.cuba.core.global.DeletePolicy;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
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


    @OnDeleteInverse(DeletePolicy.UNLINK)
    @OnDelete(DeletePolicy.UNLINK)
    @OneToMany(mappedBy = "technologicalMap")
    @Composition
    private List<ComponentsList> componentsList;

    public void setComponentsList(List<ComponentsList> componentsList) {
        this.componentsList = componentsList;
    }

    public List<ComponentsList> getComponentsList() {
        return componentsList;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}