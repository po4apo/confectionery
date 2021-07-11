package com.company.confectionery.entity;

import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.entity.annotation.OnDeleteInverse;
import com.haulmont.cuba.core.global.DeletePolicy;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.List;

@Table(name = "CONFECTIONERY_CONFECTIONERY")
@Entity(name = "confectionery_Confectionery")
public class Confectionery extends StandardEntity {
    private static final long serialVersionUID = 1557635618748966769L;

    @OnDeleteInverse(DeletePolicy.UNLINK)
    @OnDelete(DeletePolicy.UNLINK)
    @OneToMany(mappedBy = "confectionery")
    private List<TechnologicalMap> technilogicalMapsList;

    @OnDeleteInverse(DeletePolicy.UNLINK)
    @OnDelete(DeletePolicy.UNLINK)
    @OneToMany(mappedBy = "confectionery")
    private List<Component> componetsList;

    @OnDeleteInverse(DeletePolicy.UNLINK)
    @OnDelete(DeletePolicy.UNLINK)
    @OneToMany(mappedBy = "confectionery")
    private List<Order> ordersList;

    @OnDeleteInverse(DeletePolicy.UNLINK)
    @OnDelete(DeletePolicy.UNLINK)
    @OneToMany(mappedBy = "confectionery")
    private List<Component> purchaseList;

    public List<Component> getPurchaseList() {
        return purchaseList;
    }

    public void setPurchaseList(List<Component> purchaseList) {
        this.purchaseList = purchaseList;
    }

    public List<Order> getOrdersList() {
        return ordersList;
    }

    public void setOrdersList(List<Order> ordersList) {
        this.ordersList = ordersList;
    }

    public List<Component> getComponetsList() {
        return componetsList;
    }

    public void setComponetsList(List<Component> componetsList) {
        this.componetsList = componetsList;
    }

    public List<TechnologicalMap> getTechnilogicalMapsList() {
        return technilogicalMapsList;
    }

    public void setTechnilogicalMapsList(List<TechnologicalMap> technilogicalMapsList) {
        this.technilogicalMapsList = technilogicalMapsList;
    }
}