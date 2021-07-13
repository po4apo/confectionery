-- begin CONFECTIONERY_TECHNOLOGICAL_MAP
create table CONFECTIONERY_TECHNOLOGICAL_MAP (
    ID varchar(36) not null,
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
-- begin CONFECTIONERY_COMPONENT
create table CONFECTIONERY_COMPONENT (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    QYANTITY varchar(255),
    --
    primary key (ID)
)^
-- end CONFECTIONERY_COMPONENT
-- begin CONFECTIONERY_TECHNOLOGICAL_MAP_COMPONENT_LINK
create table CONFECTIONERY_TECHNOLOGICAL_MAP_COMPONENT_LINK (
    TECHNOLOGICAL_MAP_ID varchar(36) not null,
    COMPONENT_ID varchar(36) not null,
    primary key (TECHNOLOGICAL_MAP_ID, COMPONENT_ID)
)^
-- end CONFECTIONERY_TECHNOLOGICAL_MAP_COMPONENT_LINK
