-- begin AUTODEALER_COUNTRY
create table AUTODEALER_COUNTRY (
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
    CODE integer,
    --
    primary key (ID)
)^
-- end AUTODEALER_COUNTRY
-- begin AUTODEALER_AUTOMAKER
create table AUTODEALER_AUTOMAKER (
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
    MANUFACTURER_CODE integer not null,
    COUNTRY_ID uuid,
    --
    primary key (ID)
)^
-- end AUTODEALER_AUTOMAKER
