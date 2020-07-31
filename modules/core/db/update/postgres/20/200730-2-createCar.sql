alter table AUTODEALER_CAR add constraint FK_AUTODEALER_CAR_ON_AUTO_DEALER foreign key (AUTO_DEALER_ID) references AUTODEALER_AUTO_DEALER(ID);
alter table AUTODEALER_CAR add constraint FK_AUTODEALER_CAR_ON_CAR_BRAND foreign key (CAR_BRAND_ID) references AUTODEALER_CAR_BRAND(ID);
alter table AUTODEALER_CAR add constraint FK_AUTODEALER_CAR_ON_EQUIPMENT foreign key (EQUIPMENT_ID) references AUTODEALER_EQUIPMENT(ID);
create index IDX_AUTODEALER_CAR_ON_AUTO_DEALER on AUTODEALER_CAR (AUTO_DEALER_ID);
create index IDX_AUTODEALER_CAR_ON_CAR_BRAND on AUTODEALER_CAR (CAR_BRAND_ID);
create index IDX_AUTODEALER_CAR_ON_EQUIPMENT on AUTODEALER_CAR (EQUIPMENT_ID);
