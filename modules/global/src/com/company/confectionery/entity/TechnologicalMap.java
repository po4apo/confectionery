package com.company.confectionery.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.entity.annotation.OnDeleteInverse;
import com.haulmont.cuba.core.global.DeletePolicy;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;
import java.util.List;

@Table(name = "CONFECTIONERY_TECHNOLOGICAL_MAP")
@Entity(name = "confectionery_TechnologicalMap")
@NamePattern("%s|name")
public class TechnologicalMap extends StandardEntity {
    private static final long serialVersionUID = 9178398462907629042L;

    @NotNull
    @Column(name = "NAME", nullable = false, unique = true)
    private String name;

    @Temporal(TemporalType.TIME)
    @NotNull
    @Column(name = "COOKING_TIME", nullable = false)
    private Date cookingTime;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ORDER_ID")
    private Order order;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CONFECTIONERY_ID")
    private Confectionery confectionery;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "TECHNOLOGICAL_MAP_ID")
    private TechnologicalMap technologicalMap;

    @OnDeleteInverse(DeletePolicy.UNLINK)
    @OnDelete(DeletePolicy.UNLINK)
    @OneToMany(mappedBy = "technologicalMap")
    private List<TechnologicalMap> finishedProductsList;

    public List<TechnologicalMap> getFinishedProductsList() {
        return finishedProductsList;
    }

    public void setFinishedProductsList(List<TechnologicalMap> finishedProductsList) {
        this.finishedProductsList = finishedProductsList;
    }

    public TechnologicalMap getTechnologicalMap() {
        return technologicalMap;
    }

    public void setTechnologicalMap(TechnologicalMap technologicalMap) {
        this.technologicalMap = technologicalMap;
    }

    public Confectionery getConfectionery() {
        return confectionery;
    }

    public void setConfectionery(Confectionery confectionery) {
        this.confectionery = confectionery;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public Date getCookingTime() {
        return cookingTime;
    }

    public void setCookingTime(Date cookingTime) {
        this.cookingTime = cookingTime;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}