package com.company.confectionery.web.screens.technologicalmap;

import com.haulmont.cuba.gui.screen.*;
import com.company.confectionery.entity.TechnologicalMap;

@UiController("confectionery_TechnologicalMap.edit")
@UiDescriptor("technological-map-edit.xml")
@EditedEntityContainer("technologicalMapDc")
@LoadDataBeforeShow
public class TechnologicalMapEdit extends StandardEditor<TechnologicalMap> {
}