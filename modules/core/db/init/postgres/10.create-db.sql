-- begin CONFECTIONERY_CONFECTIONERY
create table CONFECTIONERY_CONFECTIONERY (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    primary key (ID)
)^
-- end CONFECTIONERY_CONFECTIONERY
-- begin CONFECTIONERY_TECHNOLOGICAL_MAP
create table CONFECTIONERY_TECHNOLOGICAL_MAP (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    COOKING_TIME time not null,
    ORDER_ID uuid,
    CONFECTIONERY_ID uuid,
    TECHNOLOGICAL_MAP_ID uuid,
    --
    primary key (ID)
)^
-- end CONFECTIONERY_TECHNOLOGICAL_MAP
-- begin CONFECTIONERY_ORDER
create table CONFECTIONERY_ORDER (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    ORDER_NUMBER integer not null,
    READY_TO_COOK boolean,
    COOKED boolean,
    ORDER_PREPARATION_TIME time,
    CONFECTIONERY_ID uuid,
    --
    primary key (ID)
)^
-- end CONFECTIONERY_ORDER
-- begin CONFECTIONERY_COMPONENT
create table CONFECTIONERY_COMPONENT (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    QUANTITY integer not null,
    CONFECTIONERY_ID uuid,
    --
    primary key (ID)
)^
-- end CONFECTIONERY_COMPONENT
-- begin CONFECTIONERY_COMPONENT_COMPONENT_LINK
create table CONFECTIONERY_COMPONENT_COMPONENT_LINK (
    COMPONENT_1_ID uuid,
    COMPONENT_2_ID uuid,
    primary key (COMPONENT_1_ID, COMPONENT_2_ID)
)^
-- end CONFECTIONERY_COMPONENT_COMPONENT_LINK
