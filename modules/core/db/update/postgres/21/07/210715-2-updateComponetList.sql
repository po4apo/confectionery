alter table CONFECTIONERY_COMPONET_LIST rename column purchase_list_id to purchase_list_id__u61074 ;
alter table CONFECTIONERY_COMPONET_LIST alter column purchase_list_id__u61074 drop not null ;
alter table CONFECTIONERY_COMPONET_LIST drop constraint FK_CONFECTIONERY_COMPONET_LIST_ON_PURCHASE_LIST ;
drop index IDX_CONFECTIONERY_COMPONET_LIST_ON_PURCHASE_LIST ;
alter table CONFECTIONERY_COMPONET_LIST rename column quentity to quentity__u14979 ;
alter table CONFECTIONERY_COMPONET_LIST rename column compont_list_id to compont_list_id__u78166 ;
alter table CONFECTIONERY_COMPONET_LIST alter column compont_list_id__u78166 drop not null ;
alter table CONFECTIONERY_COMPONET_LIST drop constraint FK_CONFECTIONERY_COMPONET_LIST_ON_COMPONT_LIST ;
drop index IDX_CONFECTIONERY_COMPONET_LIST_ON_COMPONT_LIST ;
-- alter table CONFECTIONERY_COMPONET_LIST add column COMPONENT_ID uuid ^
-- update CONFECTIONERY_COMPONET_LIST set COMPONENT_ID = <default_value> ;
-- alter table CONFECTIONERY_COMPONET_LIST alter column COMPONENT_ID set not null ;
alter table CONFECTIONERY_COMPONET_LIST add column COMPONENT_ID uuid not null ;
alter table CONFECTIONERY_COMPONET_LIST add column PURCHCASES_LIST_ID uuid ;
alter table CONFECTIONERY_COMPONET_LIST add column QUENTITY varchar(255) ^
update CONFECTIONERY_COMPONET_LIST set QUENTITY = '' where QUENTITY is null ;
alter table CONFECTIONERY_COMPONET_LIST alter column QUENTITY set not null ;
