-- begin CONFECTIONERY_TECHNOLOGICAL_MAP
alter table CONFECTIONERY_TECHNOLOGICAL_MAP add constraint FK_CONFECTIONERY_TECHNOLOGICAL_MAP_ON_ORDER foreign key (ORDER_ID) references CONFECTIONERY_ORDER(ID)^
alter table CONFECTIONERY_TECHNOLOGICAL_MAP add constraint FK_CONFECTIONERY_TECHNOLOGICAL_MAP_ON_CONFECTIONERY foreign key (CONFECTIONERY_ID) references CONFECTIONERY_CONFECTIONERY(ID)^
alter table CONFECTIONERY_TECHNOLOGICAL_MAP add constraint FK_CONFECTIONERY_TECHNOLOGICAL_MAP_ON_TECHNOLOGICAL_MAP foreign key (TECHNOLOGICAL_MAP_ID) references CONFECTIONERY_TECHNOLOGICAL_MAP(ID)^
create unique index IDX_CONFECTIONERY_TECHNOLOGICAL_MAP_UK_NAME on CONFECTIONERY_TECHNOLOGICAL_MAP (NAME) where DELETE_TS is null ^
create index IDX_CONFECTIONERY_TECHNOLOGICAL_MAP_ON_ORDER on CONFECTIONERY_TECHNOLOGICAL_MAP (ORDER_ID)^
create index IDX_CONFECTIONERY_TECHNOLOGICAL_MAP_ON_CONFECTIONERY on CONFECTIONERY_TECHNOLOGICAL_MAP (CONFECTIONERY_ID)^
create index IDX_CONFECTIONERY_TECHNOLOGICAL_MAP_ON_TECHNOLOGICAL_MAP on CONFECTIONERY_TECHNOLOGICAL_MAP (TECHNOLOGICAL_MAP_ID)^
-- end CONFECTIONERY_TECHNOLOGICAL_MAP
-- begin CONFECTIONERY_ORDER
alter table CONFECTIONERY_ORDER add constraint FK_CONFECTIONERY_ORDER_ON_CONFECTIONERY foreign key (CONFECTIONERY_ID) references CONFECTIONERY_CONFECTIONERY(ID)^
create index IDX_CONFECTIONERY_ORDER_ON_CONFECTIONERY on CONFECTIONERY_ORDER (CONFECTIONERY_ID)^
-- end CONFECTIONERY_ORDER
-- begin CONFECTIONERY_COMPONENT
alter table CONFECTIONERY_COMPONENT add constraint FK_CONFECTIONERY_COMPONENT_ON_CONFECTIONERY foreign key (CONFECTIONERY_ID) references CONFECTIONERY_CONFECTIONERY(ID)^
create index IDX_CONFECTIONERY_COMPONENT_ON_CONFECTIONERY on CONFECTIONERY_COMPONENT (CONFECTIONERY_ID)^
-- end CONFECTIONERY_COMPONENT
-- begin CONFECTIONERY_COMPONENT_COMPONENT_LINK
alter table CONFECTIONERY_COMPONENT_COMPONENT_LINK add constraint FK_COMCOM_ON_COMPONENT_1 foreign key (COMPONENT_1_ID) references CONFECTIONERY_COMPONENT(ID)^
alter table CONFECTIONERY_COMPONENT_COMPONENT_LINK add constraint FK_COMCOM_ON_COMPONENT_2 foreign key (COMPONENT_2_ID) references CONFECTIONERY_COMPONENT(ID)^
-- end CONFECTIONERY_COMPONENT_COMPONENT_LINK
