package com.company.confectionery.entity;

import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.entity.annotation.OnDeleteInverse;
import com.haulmont.cuba.core.global.DeletePolicy;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;
import java.util.List;

@Table(name = "CONFECTIONERY_ORDER")
@Entity(name = "confectionery_Order")
public class Order extends StandardEntity {
    private static final long serialVersionUID = -5108926351719771046L;

    @NotNull
    @Column(name = "ORDER_NUMBER", nullable = false)
    private Integer orderNumber;

    @OnDeleteInverse(DeletePolicy.UNLINK)
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "order")
    private List<TechnologicalMap> productList;

    @Column(name = "READY_TO_COOK")
    private Boolean readyToCook;

    @Column(name = "COOKED")
    private Boolean cooked;

    @Temporal(TemporalType.TIME)
    @Column(name = "ORDER_PREPARATION_TIME")
    private Date orderPreparationTime;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CONFECTIONERY_ID")
    private Confectionery confectionery;

    public Confectionery getConfectionery() {
        return confectionery;
    }

    public void setConfectionery(Confectionery confectionery) {
        this.confectionery = confectionery;
    }

    public Date getOrderPreparationTime() {
        return orderPreparationTime;
    }

    public void setOrderPreparationTime(Date orderPreparationTime) {
        this.orderPreparationTime = orderPreparationTime;
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

    public List<TechnologicalMap> getProductList() {
        return productList;
    }

    public void setProductList(List<TechnologicalMap> productList) {
        this.productList = productList;
    }

    public Integer getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(Integer orderNumber) {
        this.orderNumber = orderNumber;
    }
}