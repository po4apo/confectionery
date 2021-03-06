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
);