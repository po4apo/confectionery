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

-- begin CONFECTIONERY_COMPONENTS_LIST
alter table CONFECTIONERY_COMPONENTS_LIST add constraint FK_CONFECTIONERY_COMPONENTS_LIST_ON_TECHNOLOGICAL_MAP foreign key (TECHNOLOGICAL_MAP_ID) references CONFECTIONERY_TECHNOLOGICAL_MAP(ID)^
alter table CONFECTIONERY_COMPONENTS_LIST add constraint FK_CONFECTIONERY_COMPONENTS_LIST_ON_COMPONENT foreign key (COMPONENT_ID) references CONFECTIONERY_COMPONENT(ID)^
create index IDX_CONFECTIONERY_COMPONENTS_LIST_ON_TECHNOLOGICAL_MAP on CONFECTIONERY_COMPONENTS_LIST (TECHNOLOGICAL_MAP_ID)^
create index IDX_CONFECTIONERY_COMPONENTS_LIST_ON_COMPONENT on CONFECTIONERY_COMPONENTS_LIST (COMPONENT_ID)^
-- end CONFECTIONERY_COMPONENTS_LIST
-- begin CONFECTIONERY_COMPONET_LIST
alter table CONFECTIONERY_COMPONET_LIST add constraint FK_CONFECTIONERY_COMPONET_LIST_ON_PURCHCASES_LIST foreign key (PURCHCASES_LIST_ID) references CONFECTIONERY_PURCHESE_LIST(ID)^
alter table CONFECTIONERY_COMPONET_LIST add constraint FK_CONFECTIONERY_COMPONET_LIST_ON_COMPONENT foreign key (COMPONENT_ID) references CONFECTIONERY_COMPONENT(ID)^
create index IDX_CONFECTIONERY_COMPONET_LIST_ON_PURCHCASES_LIST on CONFECTIONERY_COMPONET_LIST (PURCHCASES_LIST_ID)^
create index IDX_CONFECTIONERY_COMPONET_LIST_ON_COMPONENT on CONFECTIONERY_COMPONET_LIST (COMPONENT_ID)^
-- end CONFECTIONERY_COMPONET_LIST
