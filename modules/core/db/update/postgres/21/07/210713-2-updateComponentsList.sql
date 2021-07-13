alter table CONFECTIONERY_COMPONENTS_LIST add column QUENTITY varchar(255) ^
update CONFECTIONERY_COMPONENTS_LIST set QUENTITY = '' where QUENTITY is null ;
alter table CONFECTIONERY_COMPONENTS_LIST alter column QUENTITY set not null ;
