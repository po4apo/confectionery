alter table CONFECTIONERY_COMPONENT_COMPONENT_LINK add constraint FK_COMCOM_ON_COMPONENT_1 foreign key (COMPONENT_1_ID) references CONFECTIONERY_COMPONENT(ID);
alter table CONFECTIONERY_COMPONENT_COMPONENT_LINK add constraint FK_COMCOM_ON_COMPONENT_2 foreign key (COMPONENT_2_ID) references CONFECTIONERY_COMPONENT(ID);