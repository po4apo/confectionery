alter table CONFECTIONERY_COMPONENTS_LIST rename column companent to companent__u03719 ;
-- alter table CONFECTIONERY_COMPONENTS_LIST add column COMPONENT_ID uuid ^
-- update CONFECTIONERY_COMPONENTS_LIST set COMPONENT_ID = <default_value> ;
-- alter table CONFECTIONERY_COMPONENTS_LIST alter column COMPONENT_ID set not null ;
alter table CONFECTIONERY_COMPONENTS_LIST add column COMPONENT_ID uuid not null ;
