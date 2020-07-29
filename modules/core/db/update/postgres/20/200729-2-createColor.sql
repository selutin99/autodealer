create unique index IDX_AUTODEALER_COLOR_UK_NAME on AUTODEALER_COLOR (NAME) where DELETE_TS is null ;
create unique index IDX_AUTODEALER_COLOR_UK_CODE on AUTODEALER_COLOR (CODE) where DELETE_TS is null ;
