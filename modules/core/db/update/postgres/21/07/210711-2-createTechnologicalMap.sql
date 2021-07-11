alter table CONFECTIONERY_TECHNOLOGICAL_MAP add constraint FK_CONFECTIONERY_TECHNOLOGICAL_MAP_ON_ORDER foreign key (ORDER_ID) references CONFECTIONERY_ORDER(ID);
alter table CONFECTIONERY_TECHNOLOGICAL_MAP add constraint FK_CONFECTIONERY_TECHNOLOGICAL_MAP_ON_CONFECTIONERY foreign key (CONFECTIONERY_ID) references CONFECTIONERY_CONFECTIONERY(ID);
alter table CONFECTIONERY_TECHNOLOGICAL_MAP add constraint FK_CONFECTIONERY_TECHNOLOGICAL_MAP_ON_TECHNOLOGICAL_MAP foreign key (TECHNOLOGICAL_MAP_ID) references CONFECTIONERY_TECHNOLOGICAL_MAP(ID);
create unique index IDX_CONFECTIONERY_TECHNOLOGICAL_MAP_UK_NAME on CONFECTIONERY_TECHNOLOGICAL_MAP (NAME) where DELETE_TS is null ;
create index IDX_CONFECTIONERY_TECHNOLOGICAL_MAP_ON_ORDER on CONFECTIONERY_TECHNOLOGICAL_MAP (ORDER_ID);
create index IDX_CONFECTIONERY_TECHNOLOGICAL_MAP_ON_CONFECTIONERY on CONFECTIONERY_TECHNOLOGICAL_MAP (CONFECTIONERY_ID);
create index IDX_CONFECTIONERY_TECHNOLOGICAL_MAP_ON_TECHNOLOGICAL_MAP on CONFECTIONERY_TECHNOLOGICAL_MAP (TECHNOLOGICAL_MAP_ID);
