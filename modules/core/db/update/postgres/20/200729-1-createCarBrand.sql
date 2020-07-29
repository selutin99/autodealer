create table AUTODEALER_CAR_BRAND (
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
    EQUIPMENT_ID uuid,
    AUTO_DEALER_ID uuid,
    --
    primary key (ID)
);
