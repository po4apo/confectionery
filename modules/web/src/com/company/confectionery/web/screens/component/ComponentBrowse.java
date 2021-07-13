package com.company.confectionery.web.screens.component;

import com.haulmont.cuba.gui.screen.*;
import com.company.confectionery.entity.Component;

@UiController("confectionery_Component.browse")
@UiDescriptor("component-browse.xml")
@LookupComponent("componentsTable")
@LoadDataBeforeShow
public class ComponentBrowse extends StandardLookup<Component> {
}