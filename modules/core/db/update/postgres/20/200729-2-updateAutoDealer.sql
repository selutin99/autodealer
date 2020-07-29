-- update AUTODEALER_AUTO_DEALER set NAME = <default_value> where NAME is null ;
alter table AUTODEALER_AUTO_DEALER alter column NAME set not null ;
-- update AUTODEALER_AUTO_DEALER set COUNTRY_ID = <default_value> where COUNTRY_ID is null ;
alter table AUTODEALER_AUTO_DEALER alter column COUNTRY_ID set not null ;
