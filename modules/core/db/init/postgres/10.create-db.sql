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
    NAME varchar(255) not null,
    SCALE varchar(50),
    QYANTITY varchar(255),
    --
    primary key (ID)
)^
-- end CONFECTIONERY_COMPONENT
-- begin CONFECTIONERY_ORDER_TECHNOLOGICAL_MAP_LINK
create table CONFECTIONERY_ORDER_TECHNOLOGICAL_MAP_LINK (
    ORDER_ID uuid,
    TECHNOLOGICAL_MAP_ID uuid,
    primary key (ORDER_ID, TECHNOLOGICAL_MAP_ID)
)^
-- end CONFECTIONERY_ORDER_TECHNOLOGICAL_MAP_LINK

-- begin CONFECTIONERY_COMPONENTS_LIST
create table CONFECTIONERY_COMPONENTS_LIST (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    TECHNOLOGICAL_MAP_ID uuid,
    QUENTITY varchar(255) not null,
    COMPONENT_ID uuid not null,
    --
    primary key (ID)
)^
-- end CONFECTIONERY_COMPONENTS_LIST
-- begin CONFECTIONERY_PURCHESE_LIST
create table CONFECTIONERY_PURCHESE_LIST (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    ORDER_DATE timestamp not null,
    ACCERTED_DATE timestamp,
    IS_ACCEPTED boolean,
    --
    primary key (ID)
)^
-- end CONFECTIONERY_PURCHESE_LIST
-- begin CONFECTIONERY_COMPONET_LIST
create table CONFECTIONERY_COMPONET_LIST (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    PURCHCASES_LIST_ID uuid,
    QUENTITY varchar(255) not null,
    COMPONENT_ID uuid not null,
    --
    primary key (ID)
)^
-- end CONFECTIONERY_COMPONET_LIST
