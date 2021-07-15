package com.company.confectionery.web.screens.purchaseslist;

import com.haulmont.cuba.gui.screen.*;
import com.company.confectionery.entity.PurchasesList;

@UiController("confectionery_PurcheseList.edit")
@UiDescriptor("purchases-list-edit.xml")
@EditedEntityContainer("purchasesListDc")
@LoadDataBeforeShow
public class PurchasesListEdit extends StandardEditor<PurchasesList> {
}