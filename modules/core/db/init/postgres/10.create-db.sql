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
    CODE varchar(3),
    --
    primary key (ID)
)^
-- end AUTODEALER_COUNTRY
-- begin AUTODEALER_AUTO_DEALER
create table AUTODEALER_AUTO_DEALER (
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
    CODE bigint,
    COUNTRY_ID uuid not null,
    --
    primary key (ID)
)^
-- end AUTODEALER_AUTO_DEALER
