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
);