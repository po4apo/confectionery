package com.company.confectionery.web.screens.componentslist;

import com.haulmont.cuba.gui.screen.*;
import com.company.confectionery.entity.ComponentsList;

@UiController("confectionery_ComponentsList.edit")
@UiDescriptor("components-list-edit.xml")
@EditedEntityContainer("componentsListDc")
@LoadDataBeforeShow
public class ComponentsListEdit extends StandardEditor<ComponentsList> {
}