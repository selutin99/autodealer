create table AUTODEALER_CAR (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    AUTO_DEALER_ID uuid,
    CAR_BRAND_ID uuid,
    EQUIPMENT_ID uuid,
    NAME varchar(255),
    YEAR_ date,
    PRICE decimal(19, 2),
    --
    primary key (ID)
);
