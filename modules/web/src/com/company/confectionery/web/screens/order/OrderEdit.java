package com.company.confectionery.web.screens.order;

import com.haulmont.cuba.gui.screen.*;
import com.company.confectionery.entity.Order;

@UiController("confectionery_Order.edit")
@UiDescriptor("order-edit.xml")
@EditedEntityContainer("orderDc")
@LoadDataBeforeShow
public class OrderEdit extends StandardEditor<Order> {
}