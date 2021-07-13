package com.company.confectionery.web.screens.technologicalmap;

import com.haulmont.cuba.gui.screen.*;
import com.company.confectionery.entity.TechnologicalMap;

@UiController("confectionery_TechnologicalMap.browse")
@UiDescriptor("technological-map-browse.xml")
@LookupComponent("technologicalMapsTable")
@LoadDataBeforeShow
public class TechnologicalMapBrowse extends StandardLookup<TechnologicalMap> {
}