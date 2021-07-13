alter table CONFECTIONERY_COMPONENT rename column quantity to quantity__u86396 ;
alter table CONFECTIONERY_COMPONENT alter column quantity__u86396 drop not null ;
alter table CONFECTIONERY_COMPONENT add column QYANTITY varchar(255) ;
-- update CONFECTIONERY_COMPONENT set NAME = <default_value> where NAME is null ;
alter table CONFECTIONERY_COMPONENT alter column NAME set not null ;
