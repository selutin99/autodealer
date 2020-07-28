-- begin AUTODEALER_COUNTRY
alter table AUTODEALER_COUNTRY add constraint FK_AUTODEALER_COUNTRY_ON_AUTOMAKER foreign key (AUTOMAKER_ID) references AUTODEALER_AUTOMAKER(ID)^
create index IDX_AUTODEALER_COUNTRY_ON_AUTOMAKER on AUTODEALER_COUNTRY (AUTOMAKER_ID)^
-- end AUTODEALER_COUNTRY
-- begin AUTODEALER_AUTOMAKER
alter table AUTODEALER_AUTOMAKER add constraint FK_AUTODEALER_AUTOMAKER_ON_COUNTRY foreign key (COUNTRY_ID) references AUTODEALER_COUNTRY(ID)^
create unique index IDX_AUTODEALER_AUTOMAKER_UK_NAME on AUTODEALER_AUTOMAKER (NAME) where DELETE_TS is null ^
create unique index IDX_AUTODEALER_AUTOMAKER_UK_MANUFACTURER_CODE on AUTODEALER_AUTOMAKER (MANUFACTURER_CODE) where DELETE_TS is null ^
create index IDX_AUTODEALER_AUTOMAKER_ON_COUNTRY on AUTODEALER_AUTOMAKER (COUNTRY_ID)^
-- end AUTODEALER_AUTOMAKER