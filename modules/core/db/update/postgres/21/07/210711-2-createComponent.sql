alter table CONFECTIONERY_COMPONENT add constraint FK_CONFECTIONERY_COMPONENT_ON_CONFECTIONERY foreign key (CONFECTIONERY_ID) references CONFECTIONERY_CONFECTIONERY(ID);
create index IDX_CONFECTIONERY_COMPONENT_ON_CONFECTIONERY on CONFECTIONERY_COMPONENT (CONFECTIONERY_ID);
