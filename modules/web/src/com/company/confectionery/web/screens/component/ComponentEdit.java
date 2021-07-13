package com.company.confectionery.web.screens.component;

import com.haulmont.cuba.gui.screen.*;
import com.company.confectionery.entity.Component;

@UiController("confectionery_Component.edit")
@UiDescriptor("component-edit.xml")
@EditedEntityContainer("componentDc")
@LoadDataBeforeShow
public class ComponentEdit extends StandardEditor<Component> {
}