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
);