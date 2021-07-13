package com.company.confectionery.web.screens.order;

import com.haulmont.cuba.gui.screen.*;
import com.company.confectionery.entity.Order;

@UiController("confectionery_Order.browse")
@UiDescriptor("order-browse.xml")
@LookupComponent("ordersTable")
@LoadDataBeforeShow
public class OrderBrowse extends StandardLookup<Order> {
}