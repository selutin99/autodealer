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
-- begin AUTODEALER_COLOR
create table AUTODEALER_COLOR (
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
    CODE bigint not null,
    --
    primary key (ID)
)^
-- end AUTODEALER_COLOR
-- begin AUTODEALER_CAR_BRAND
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
)^
-- end AUTODEALER_CAR_BRAND
-- begin AUTODEALER_EQUIPMENT
create table AUTODEALER_EQUIPMENT (
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
    PRICE decimal(19, 2),
    CAR_TYPE integer,
    ANNOTATION text,
    --
    primary key (ID)
)^
-- end AUTODEALER_EQUIPMENT
-- begin AUTODEALER_CAR
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
)^
-- end AUTODEALER_CAR
-- begin AUTODEALER_LEGAL_PERSON
create table AUTODEALER_LEGAL_PERSON (
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
    TIN varchar(255),
    ADDRESS text,
    PHONE varchar(255),
    --
    primary key (ID)
)^
-- end AUTODEALER_LEGAL_PERSON
-- begin AUTODEALER_PHYSICAL_PERSON
create table AUTODEALER_PHYSICAL_PERSON (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    FIRST_NAME varchar(255),
    LAST_NAME varchar(255),
    PHONE varchar(255),
    --
    primary key (ID)
)^
-- end AUTODEALER_PHYSICAL_PERSON
