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
);
