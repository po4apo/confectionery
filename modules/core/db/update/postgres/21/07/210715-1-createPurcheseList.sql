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
);