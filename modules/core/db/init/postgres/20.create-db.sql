-- begin CONFECTIONERY_TECHNOLOGICAL_MAP
create unique index IDX_CONFECTIONERY_TECHNOLOGICAL_MAP_UK_NAME on CONFECTIONERY_TECHNOLOGICAL_MAP (NAME) where DELETE_TS is null ^
-- end CONFECTIONERY_TECHNOLOGICAL_MAP
-- begin CONFECTIONERY_COMPONENT
create unique index IDX_CONFECTIONERY_COMPONENT_UK_NAME on CONFECTIONERY_COMPONENT (NAME) where DELETE_TS is null ^
-- end CONFECTIONERY_COMPONENT
-- begin CONFECTIONERY_ORDER_TECHNOLOGICAL_MAP_LINK
alter table CONFECTIONERY_ORDER_TECHNOLOGICAL_MAP_LINK add constraint FK_ORDTECMAP_ON_ORDER foreign key (ORDER_ID) references CONFECTIONERY_ORDER(ID)^
alter table CONFECTIONERY_ORDER_TECHNOLOGICAL_MAP_LINK add constraint FK_ORDTECMAP_ON_TECHNOLOGICAL_MAP foreign key (TECHNOLOGICAL_MAP_ID) references CONFECTIONERY_TECHNOLOGICAL_MAP(ID)^
-- end CONFECTIONERY_ORDER_TECHNOLOGICAL_MAP_LINK
-- begin CONFECTIONERY_TECHNOLOGICAL_MAP_COMPONENT_LINK
alter table CONFECTIONERY_TECHNOLOGICAL_MAP_COMPONENT_LINK add constraint FK_TECMAPCOM_ON_TECHNOLOGICAL_MAP foreign key (TECHNOLOGICAL_MAP_ID) references CONFECTIONERY_TECHNOLOGICAL_MAP(ID)^
alter table CONFECTIONERY_TECHNOLOGICAL_MAP_COMPONENT_LINK add constraint FK_TECMAPCOM_ON_COMPONENT foreign key (COMPONENT_ID) references CONFECTIONERY_COMPONENT(ID)^
-- end CONFECTIONERY_TECHNOLOGICAL_MAP_COMPONENT_LINK