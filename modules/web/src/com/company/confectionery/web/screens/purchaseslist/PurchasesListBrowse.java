package com.company.confectionery.web.screens.purchaseslist;

import com.haulmont.cuba.gui.screen.*;
import com.company.confectionery.entity.PurchasesList;

@UiController("confectionery_PurcheseList.browse")
@UiDescriptor("purchases-list-browse.xml")
@LookupComponent("purchasesListsTable")
@LoadDataBeforeShow
public class PurchasesListBrowse extends StandardLookup<PurchasesList> {
}