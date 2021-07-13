package com.company.confectionery.entity;

import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.entity.annotation.OnDeleteInverse;
import com.haulmont.cuba.core.global.DeletePolicy;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.List;

@Table(name = "CONFECTIONERY_ORDER")
@Entity(name = "confectionery_Order")
public class Order extends StandardEntity {
    private static final long serialVersionUID = -5108926351719771046L;

    @NotNull
    @Column(name = "ORDER_NUMBER", nullable = false)
    private Integer orderNumber;

    @Column(name = "READY_TO_COOK")
    private Boolean readyToCook;

    @Column(name = "COOKED")
    private Boolean cooked;

    @OnDeleteInverse(DeletePolicy.UNLINK)
    @OnDelete(DeletePolicy.UNLINK)
    @ManyToMany
    @JoinTable(name = "CONFECTIONERY_ORDER_TECHNOLOGICAL_MAP_LINK",
            joinColumns = @JoinColumn(name = "ORDER_ID"),
            inverseJoinColumns = @JoinColumn(name = "TECHNOLOGICAL_MAP_ID"))
    private List<TechnologicalMap> pruductsList;

    public void setPruductsList(List<TechnologicalMap> pruductsList) {
        this.pruductsList = pruductsList;
    }

    public List<TechnologicalMap> getPruductsList() {
        return pruductsList;
    }

    public Boolean getCooked() {
        return cooked;
    }

    public void setCooked(Boolean cooked) {
        this.cooked = cooked;
    }

    public Boolean getReadyToCook() {
        return readyToCook;
    }

    public void setReadyToCook(Boolean readyToCook) {
        this.readyToCook = readyToCook;
    }

    public Integer getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(Integer orderNumber) {
        this.orderNumber = orderNumber;
    }
}