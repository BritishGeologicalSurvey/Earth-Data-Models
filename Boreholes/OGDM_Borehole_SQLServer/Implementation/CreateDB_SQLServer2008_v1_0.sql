/*
 * 
 * Terms of Use:  Free for commercial and non-commercial use.  Please acknowledge the material  as:  
 * “Copyright/database right, reproduced with the permission of the British Geological Survey © NERC 2011.  All rights reserved”.
 *
 * ER/Studio Data Architect 9.0 SQL Code Generation
 * Company :      BGS
 * Project :      BoreholeDatabase_ERS9.dm1
 * Author :       BGS
 *
 * Date Created : Tuesday, September 27, 2011 12:30:53
 * Target DBMS : Microsoft SQL Server 2008
 */

/* 
 * TABLE: BHD_INDEX 
 */

CREATE TABLE BHD_INDEX(
    BHD_INDEX_ID              numeric(38, 0)    NOT NULL,
    QS                        varchar(6)        NOT NULL,
    RT                        varchar(2)        NOT NULL,
    NUMB                      numeric(5, 0)     NOT NULL,
    BOREHOLE_SUFFIX           varchar(4)        NOT NULL,
    BOREHOLE_NAME             varchar(100)      NOT NULL,
    XY_SOURCE_CODE            varchar(5)        NULL,
    CONFIDENTIALITY_CODE      varchar(5)        DEFAULT '?' NULL,
    INCLINATION_TYPE_CODE     varchar(5)        DEFAULT '?' NOT NULL,
    DRILLED_DATE              datetime          NULL,
    DRILLED_DATE_PREC_CODE    varchar(2)        DEFAULT '?' NULL,
    DRILLED_LENGTH            numeric(7, 2)     NULL,
    START_POINT_TYPE_CODE     varchar(5)        DEFAULT '?' NOT NULL,
    START_HEIGHT              numeric(7, 2)     NULL,
    START_HEIGHT_PREC_CODE    varchar(5)        DEFAULT '?' NULL,
    DRILLING_METHOD_CODE      varchar(5)        DEFAULT '?' NOT NULL,
    CLIENT_CODE               varchar(5)        DEFAULT '?' NOT NULL,
    PURPOSE_CODE              varchar(5)        DEFAULT '?' NULL,
    COMMENTS                  varchar(255)      NULL,
    X                         numeric           NULL,
    Y                         numeric           NULL,
    EPSG_CODE                 varchar(20)       NULL,
    XA                        numeric           NULL,
    YA                        numeric           NULL,
    PRIMARY KEY NONCLUSTERED (BHD_INDEX_ID)
)
go



IF OBJECT_ID('BHD_INDEX') IS NOT NULL
    PRINT '<<< CREATED TABLE BHD_INDEX >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE BHD_INDEX >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'BHD_INDEX_ID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'BHD_INDEX_ID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Unique Identifier for a borehole populated by a sequence. This is a primary key of this table.', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'BHD_INDEX_ID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'QS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'QS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Sheet quadrant, ie NE, SE, SW, NW. This is specific to UK borehole record.', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'QS'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'RT'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'RT'
END
exec sys.sp_addextendedproperty 'MS_Description', 'This refers to Record Type. For example, B for Borehole Journal etc. This is specific to UK borehole record.', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'RT'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'NUMB'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'NUMB'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Running Borehole Number(limited to a quadrant of a sheet). This is specific to UK borehole record.', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'NUMB'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'BOREHOLE_SUFFIX'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'BOREHOLE_SUFFIX'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Borehole Suffix. This is specific to UK borehole record.', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'BOREHOLE_SUFFIX'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'BOREHOLE_NAME'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'BOREHOLE_NAME'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Name of the Borehole.', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'BOREHOLE_NAME'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'XY_SOURCE_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'XY_SOURCE_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Source of geographic coordinate. This is a foreign key to DIC_XYSOURCE.', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'XY_SOURCE_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'CONFIDENTIALITY_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'CONFIDENTIALITY_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Confidentiality status of borehole record. This is a foreign key to DIC_CONFIDENTIALITY.', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'CONFIDENTIALITY_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'INCLINATION_TYPE_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'INCLINATION_TYPE_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Inclination of the borehole. This is a foreign key to DIC_INCLINATION.', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'INCLINATION_TYPE_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'DRILLED_DATE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'DRILLED_DATE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Drilling date of the borehole', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'DRILLED_DATE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'DRILLED_DATE_PREC_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'DRILLED_DATE_PREC_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Accuracy of the drilled date. This is foreign key to DIC_DATE_ACCURACY.', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'DRILLED_DATE_PREC_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'DRILLED_LENGTH'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'DRILLED_LENGTH'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Total length of the borehole.', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'DRILLED_LENGTH'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'START_POINT_TYPE_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'START_POINT_TYPE_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Start point of the borehole. This is a foreign key to DIC_BOREHOLE_DIRECTION', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'START_POINT_TYPE_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'START_HEIGHT'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'START_HEIGHT'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Ordnance Datum Level (Surface Level of Borehole).', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'START_HEIGHT'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'START_HEIGHT_PREC_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'START_HEIGHT_PREC_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Ordnance datum level accuracy. This is a foreign key to DIC_ORD_DATUM_PREC.', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'START_HEIGHT_PREC_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'DRILLING_METHOD_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'DRILLING_METHOD_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Method used to drill the borehole. This is a foreign key to DIC_DRILLING_METHOD.', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'DRILLING_METHOD_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'CLIENT_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'CLIENT_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Client that instigated the request. This is a foreign key to DIC_COMPANY.', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'CLIENT_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'PURPOSE_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'PURPOSE_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Purpose of the borehole. This is foreign key to DIC_DRILLING_PURPOSE.', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'PURPOSE_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'COMMENTS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'COMMENTS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'General comments or additional information not covered by other fields.', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'COMMENTS'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'X'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'X'
END
exec sys.sp_addextendedproperty 'MS_Description', 'The original X coordinate.', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'X'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'Y'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'Y'
END
exec sys.sp_addextendedproperty 'MS_Description', 'The original Y coordinate.', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'Y'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'EPSG_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'EPSG_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'The CRS code for the original coordinate system. This is constrained against DIC_CRS_HORIZ_CS.', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'EPSG_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'XA'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'XA'
END
exec sys.sp_addextendedproperty 'MS_Description', 'The estimated accuracy of the X value. Example: If X is quoted as 302630 (metres) and known to within 5 metres, XA is 5. If X is quoted as 6.1834528 (degrees) and known to the nearest second, XA  is 0.0002778 (i.e. 1/3600)', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'XA'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'YA'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'YA'
END
exec sys.sp_addextendedproperty 'MS_Description', 'The estimated accuracy of the Y value. Example: If Y is quoted as 302630 (metres) and known to within 5 metres, YA is 5. If Y is quoted as 6.1834528 (degrees) and known to the nearest second, YA  is 0.0002778 (i.e. 1/3600)', 'schema', 'dbo', 'table', 'BHD_INDEX', 'column', 'YA'
go
/* 
 * TABLE: BHD_LOG 
 */

CREATE TABLE BHD_LOG(
    BHD_LOG_ID                int               NOT NULL,
    LAYER_ID                  int               NOT NULL
                              CONSTRAINT BHD_LOG_CK1 CHECK (LAYER_ID >=1),
    BHD_INDEX_ID              numeric(38, 0)    NOT NULL,
    BHD_LOG_SOURCE_ID         int               NOT NULL,
    DRILLED_DEPTH_TOP         numeric(9, 3)     NULL,
    DRILLED_DEPTH_BASE        numeric(9, 3)     NOT NULL,
    ORIGINAL_UNIT_CODE        varchar(20)       DEFAULT '?' NOT NULL,
    DEPTH_RELIABILITY_CODE    char(1)           DEFAULT '?' NOT NULL,
    LITHOLOGY_CODE            varchar(6)        DEFAULT '?' NOT NULL,
    LITHOSTRAT_CODE           varchar(5)        DEFAULT '?' NOT NULL,
    UNIT_DESCRIPTION          varchar(2000)     NULL,
    BASE_BED_CODE             varchar(10)       DEFAULT '?' NOT NULL,
    COMMENTS                  varchar(255)      NULL,
    PRIMARY KEY NONCLUSTERED (BHD_LOG_ID)
)
go



IF OBJECT_ID('BHD_LOG') IS NOT NULL
    PRINT '<<< CREATED TABLE BHD_LOG >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE BHD_LOG >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'BHD_LOG_ID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'BHD_LOG_ID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Unique identifier of the borehole log populated by a sequence. This is a primary key of this table.', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'BHD_LOG_ID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'LAYER_ID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'LAYER_ID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Order of the layer in the complete borehole log. This is also identifier of the individual log in a particular borehole .', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'LAYER_ID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'BHD_INDEX_ID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'BHD_INDEX_ID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Identifier of the borehole. This is the foreign key to BHD_INDEX.', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'BHD_INDEX_ID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'BHD_LOG_SOURCE_ID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'BHD_LOG_SOURCE_ID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Identifier of the log source. This is a foreign key to BHD_LOG_SOURCE.', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'BHD_LOG_SOURCE_ID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'DRILLED_DEPTH_TOP'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'DRILLED_DEPTH_TOP'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Depth at the top of the log.', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'DRILLED_DEPTH_TOP'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'DRILLED_DEPTH_BASE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'DRILLED_DEPTH_BASE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Depth at the base of the log.', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'DRILLED_DEPTH_BASE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'ORIGINAL_UNIT_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'ORIGINAL_UNIT_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Identifies the unit of measurement in which depths were recorded originally.', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'ORIGINAL_UNIT_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'DEPTH_RELIABILITY_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'DEPTH_RELIABILITY_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Reliability of the drilled depth. This is foreign key to DIC_DEPTH_RELIABILITY.', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'DEPTH_RELIABILITY_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'LITHOLOGY_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'LITHOLOGY_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Lithology of the borehole record. This is a foreign key to DIC_ROCK_ALL.', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'LITHOLOGY_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'LITHOSTRAT_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'LITHOSTRAT_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Lithostratography of the borehole record. This is a foreign key to LXN_UNIT', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'LITHOSTRAT_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'UNIT_DESCRIPTION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'UNIT_DESCRIPTION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Description of the unit.', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'UNIT_DESCRIPTION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'BASE_BED_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'BASE_BED_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Base of the bed of the borehole. This is a foreign key to DIC_BASE_BED.', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'BASE_BED_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'COMMENTS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'COMMENTS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'General comments or additional information not covered by other fields.', 'schema', 'dbo', 'table', 'BHD_LOG', 'column', 'COMMENTS'
go
/* 
 * TABLE: BHD_LOG_PROPERTY 
 */

CREATE TABLE BHD_LOG_PROPERTY(
    BHD_LOG_ID            int             NOT NULL,
    PROPERTY_TYPE_CODE    varchar(14)     DEFAULT '?' NOT NULL,
    PROPERTY_VALUE        varchar(25)     NOT NULL,
    QUALIFIER             char(2)         NULL
                          CONSTRAINT BHD_LOG_PROPERTY_CK1 CHECK (QUALIFIER IN ('<','>','?','>=','<=')),
    COMMENTS              varchar(255)    NULL,
    PRIMARY KEY NONCLUSTERED (BHD_LOG_ID, PROPERTY_TYPE_CODE, PROPERTY_VALUE)
)
go



IF OBJECT_ID('BHD_LOG_PROPERTY') IS NOT NULL
    PRINT '<<< CREATED TABLE BHD_LOG_PROPERTY >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE BHD_LOG_PROPERTY >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG_PROPERTY', 'column', 'BHD_LOG_ID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG_PROPERTY', 'column', 'BHD_LOG_ID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Identifier of the borehole log for which the property is recorded. This is a foreign key to BHD_LOG.', 'schema', 'dbo', 'table', 'BHD_LOG_PROPERTY', 'column', 'BHD_LOG_ID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG_PROPERTY', 'column', 'PROPERTY_TYPE_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG_PROPERTY', 'column', 'PROPERTY_TYPE_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Identifier of the property type. This is a foreign key to DIC_PROPERTY_TYPE.', 'schema', 'dbo', 'table', 'BHD_LOG_PROPERTY', 'column', 'PROPERTY_TYPE_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG_PROPERTY', 'column', 'PROPERTY_VALUE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG_PROPERTY', 'column', 'PROPERTY_VALUE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Value of the  property type.', 'schema', 'dbo', 'table', 'BHD_LOG_PROPERTY', 'column', 'PROPERTY_VALUE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG_PROPERTY', 'column', 'QUALIFIER'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG_PROPERTY', 'column', 'QUALIFIER'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Qualifier for a property value such as : ''?'' (uncertain data ) ,''>'' ( greater than) ,''<'' ( less than) ,''>='' ( greater than or equal to) ,''<='' (less than or equal to).', 'schema', 'dbo', 'table', 'BHD_LOG_PROPERTY', 'column', 'QUALIFIER'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG_PROPERTY', 'column', 'COMMENTS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG_PROPERTY', 'column', 'COMMENTS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'General comments or additional information not covered by other fields.', 'schema', 'dbo', 'table', 'BHD_LOG_PROPERTY', 'column', 'COMMENTS'
go
/* 
 * TABLE: BHD_LOG_SOURCE 
 */

CREATE TABLE BHD_LOG_SOURCE(
    BHD_LOG_SOURCE_ID     int            NOT NULL,
    INTERPRETER_ID        varchar(11)    NOT NULL,
    PROJECT_ID            int            NULL,
    SOURCE_MEDIUM_CODE    varchar(5)     NULL,
    PRIMARY KEY CLUSTERED (BHD_LOG_SOURCE_ID)
)
go



IF OBJECT_ID('BHD_LOG_SOURCE') IS NOT NULL
    PRINT '<<< CREATED TABLE BHD_LOG_SOURCE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE BHD_LOG_SOURCE >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG_SOURCE', 'column', 'BHD_LOG_SOURCE_ID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG_SOURCE', 'column', 'BHD_LOG_SOURCE_ID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Identifier of the Interpretation . This is the primary key of this table.', 'schema', 'dbo', 'table', 'BHD_LOG_SOURCE', 'column', 'BHD_LOG_SOURCE_ID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG_SOURCE', 'column', 'INTERPRETER_ID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG_SOURCE', 'column', 'INTERPRETER_ID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Identifier of the person who coined the interpretation. This is a foreign key to STAFF table.', 'schema', 'dbo', 'table', 'BHD_LOG_SOURCE', 'column', 'INTERPRETER_ID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG_SOURCE', 'column', 'PROJECT_ID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG_SOURCE', 'column', 'PROJECT_ID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Identifier of the project under which interpretation was carried out. This is a foreign key to PROJECT table.', 'schema', 'dbo', 'table', 'BHD_LOG_SOURCE', 'column', 'PROJECT_ID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG_SOURCE', 'column', 'SOURCE_MEDIUM_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'BHD_LOG_SOURCE', 'column', 'SOURCE_MEDIUM_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Identifier of the source where from where the data was obtained originally. This is a foreign key to SOURCE MATERIAL table.', 'schema', 'dbo', 'table', 'BHD_LOG_SOURCE', 'column', 'SOURCE_MEDIUM_CODE'
go
/* 
 * TABLE: DIC_BASE_BED 
 */

CREATE TABLE DIC_BASE_BED(
    CODE           varchar(10)     NOT NULL,
    DESCRIPTION    varchar(100)    NOT NULL,
    TRANSLATION    varchar(50)     NULL,
    STATUS         char(1)         DEFAULT 'C' NOT NULL
                   CONSTRAINT DIC_BASE_BED_CK1 CHECK (status in ('C', 'O')),
    PRIMARY KEY NONCLUSTERED (CODE)
)
go



IF OBJECT_ID('DIC_BASE_BED') IS NOT NULL
    PRINT '<<< CREATED TABLE DIC_BASE_BED >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIC_BASE_BED >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_BASE_BED', 'column', 'CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_BASE_BED', 'column', 'CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Code identifying the base of the bed of the borehole. This is the primary key of this table.', 'schema', 'dbo', 'table', 'DIC_BASE_BED', 'column', 'CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_BASE_BED', 'column', 'DESCRIPTION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_BASE_BED', 'column', 'DESCRIPTION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Full description of the CODE value.', 'schema', 'dbo', 'table', 'DIC_BASE_BED', 'column', 'DESCRIPTION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_BASE_BED', 'column', 'TRANSLATION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_BASE_BED', 'column', 'TRANSLATION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'A short translation of the CODE value.', 'schema', 'dbo', 'table', 'DIC_BASE_BED', 'column', 'TRANSLATION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_BASE_BED', 'column', 'STATUS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_BASE_BED', 'column', 'STATUS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.', 'schema', 'dbo', 'table', 'DIC_BASE_BED', 'column', 'STATUS'
go
/* 
 * TABLE: DIC_BOREHOLE_DIRECTION 
 */

CREATE TABLE DIC_BOREHOLE_DIRECTION(
    CODE           varchar(5)      NOT NULL,
    DESCRIPTION    varchar(250)    NOT NULL,
    TRANSLATION    varchar(50)     NULL,
    STATUS         char(1)         DEFAULT 'C' NOT NULL
                   CONSTRAINT DIC_BOREHOLE_DIRECTION_CK1 CHECK (STATUS IN ('C','O')),
    PRIMARY KEY NONCLUSTERED (CODE)
)
go



IF OBJECT_ID('DIC_BOREHOLE_DIRECTION') IS NOT NULL
    PRINT '<<< CREATED TABLE DIC_BOREHOLE_DIRECTION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIC_BOREHOLE_DIRECTION >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_BOREHOLE_DIRECTION', 'column', 'CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_BOREHOLE_DIRECTION', 'column', 'CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Code Identifying start point of the borehole. This is the primary key of this table.', 'schema', 'dbo', 'table', 'DIC_BOREHOLE_DIRECTION', 'column', 'CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_BOREHOLE_DIRECTION', 'column', 'DESCRIPTION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_BOREHOLE_DIRECTION', 'column', 'DESCRIPTION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Full description of the CODE value.', 'schema', 'dbo', 'table', 'DIC_BOREHOLE_DIRECTION', 'column', 'DESCRIPTION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_BOREHOLE_DIRECTION', 'column', 'TRANSLATION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_BOREHOLE_DIRECTION', 'column', 'TRANSLATION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'A short translation of the code value .', 'schema', 'dbo', 'table', 'DIC_BOREHOLE_DIRECTION', 'column', 'TRANSLATION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_BOREHOLE_DIRECTION', 'column', 'STATUS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_BOREHOLE_DIRECTION', 'column', 'STATUS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.', 'schema', 'dbo', 'table', 'DIC_BOREHOLE_DIRECTION', 'column', 'STATUS'
go
/* 
 * TABLE: DIC_COMPANY 
 */

CREATE TABLE DIC_COMPANY(
    CODE           varchar(5)      NOT NULL,
    DESCRIPTION    varchar(250)    NOT NULL,
    TRANSLATION    varchar(50)     NULL,
    STATUS         char(1)         DEFAULT 'C' NOT NULL
                   CONSTRAINT DIC_COMPANY_CK1 CHECK (STATUS IN ('C','O')),
    PRIMARY KEY NONCLUSTERED (CODE)
)
go



IF OBJECT_ID('DIC_COMPANY') IS NOT NULL
    PRINT '<<< CREATED TABLE DIC_COMPANY >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIC_COMPANY >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_COMPANY', 'column', 'CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_COMPANY', 'column', 'CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Code Identifying a company. This is the primary key of this table.', 'schema', 'dbo', 'table', 'DIC_COMPANY', 'column', 'CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_COMPANY', 'column', 'DESCRIPTION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_COMPANY', 'column', 'DESCRIPTION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'The name of the company (full description of the CODE value).', 'schema', 'dbo', 'table', 'DIC_COMPANY', 'column', 'DESCRIPTION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_COMPANY', 'column', 'TRANSLATION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_COMPANY', 'column', 'TRANSLATION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'A short translation of the company''s name.', 'schema', 'dbo', 'table', 'DIC_COMPANY', 'column', 'TRANSLATION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_COMPANY', 'column', 'STATUS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_COMPANY', 'column', 'STATUS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.', 'schema', 'dbo', 'table', 'DIC_COMPANY', 'column', 'STATUS'
go
/* 
 * TABLE: DIC_CONFIDENTIALITY 
 */

CREATE TABLE DIC_CONFIDENTIALITY(
    CODE           varchar(5)      NOT NULL,
    DESCRIPTION    varchar(250)    NOT NULL,
    TRANSLATION    varchar(50)     NULL,
    STATUS         char(1)         DEFAULT 'C' NOT NULL
                   CONSTRAINT DIC_CONFIDENTIALITY_CK1 CHECK (STATUS IN ('C','O')),
    PRIMARY KEY NONCLUSTERED (CODE)
)
go



IF OBJECT_ID('DIC_CONFIDENTIALITY') IS NOT NULL
    PRINT '<<< CREATED TABLE DIC_CONFIDENTIALITY >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIC_CONFIDENTIALITY >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_CONFIDENTIALITY', 'column', 'CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_CONFIDENTIALITY', 'column', 'CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Code Identifying a confidentiality status. This is the primary key of this table.', 'schema', 'dbo', 'table', 'DIC_CONFIDENTIALITY', 'column', 'CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_CONFIDENTIALITY', 'column', 'DESCRIPTION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_CONFIDENTIALITY', 'column', 'DESCRIPTION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Full description of the CODE value.', 'schema', 'dbo', 'table', 'DIC_CONFIDENTIALITY', 'column', 'DESCRIPTION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_CONFIDENTIALITY', 'column', 'TRANSLATION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_CONFIDENTIALITY', 'column', 'TRANSLATION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'A short translation of the code value .', 'schema', 'dbo', 'table', 'DIC_CONFIDENTIALITY', 'column', 'TRANSLATION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_CONFIDENTIALITY', 'column', 'STATUS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_CONFIDENTIALITY', 'column', 'STATUS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.', 'schema', 'dbo', 'table', 'DIC_CONFIDENTIALITY', 'column', 'STATUS'
go
/* 
 * TABLE: DIC_CRS_HORIZ_CS 
 */

CREATE TABLE DIC_CRS_HORIZ_CS(
    DESCRIPTION             varchar(200)    NOT NULL,
    TRANSLATION             varchar(80)     NOT NULL,
    EPSG_CODE               varchar(20)     NULL,
    DATA_SOURCE             varchar(20)     NOT NULL,
    COORD_SYS_TYPE          varchar(40)     NOT NULL,
    DATUM_CODE              varchar(20)     NULL,
    DATUM_TRANS             varchar(80)     NULL,
    DATUM_ELLIPSOID         varchar(80)     NULL,
    SOURCE_GEOGCS_CODE      varchar(20)     NULL,
    PRIME_MERIDIAN          varchar(80)     NULL,
    AREA_OF_USE_DETAILS     varchar(500)    NULL,
    AREA_OF_USE_GROUP       varchar(10)     NOT NULL,
    COORD_TRF_EPSG_NAME     varchar(50)     NULL,
    STATUS                  char(1)         NOT NULL
                            CONSTRAINT DIC_CRS_HORIZ_CS_CK1 CHECK (status in ('C','O')),
    CODE                    varchar(20)     NOT NULL,
    UNIT_OF_MEASURE_CODE    varchar(20)     NULL,
    PRIMARY KEY NONCLUSTERED (CODE)
)
go



IF OBJECT_ID('DIC_CRS_HORIZ_CS') IS NOT NULL
    PRINT '<<< CREATED TABLE DIC_CRS_HORIZ_CS >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIC_CRS_HORIZ_CS >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'DESCRIPTION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'DESCRIPTION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Description of the coordinate system, e.g. OSGB 1936/ British National Grid.', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'DESCRIPTION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'TRANSLATION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'TRANSLATION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'A short translation of the CODE value.', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'TRANSLATION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'EPSG_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'EPSG_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'The EPSG code for this coordinate system, if applicable.', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'EPSG_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'DATA_SOURCE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'DATA_SOURCE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'The source of this coordinate system name and definition, e.g. EPSG v6.8, FGDC.', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'DATA_SOURCE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'COORD_SYS_TYPE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'COORD_SYS_TYPE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'The type of coordinate system, inherited from EPSG database, e.g. projected, geographic 2D.', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'COORD_SYS_TYPE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'DATUM_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'DATUM_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Code for the horizontal datum from which the coordinate system is measured, can be used for look up in EPSG database or other non-EPSG database (not an internal foreign key).', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'DATUM_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'DATUM_TRANS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'DATUM_TRANS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Name of the datum of the geographic coordinate system, or of the geographic coordinate system that a projected system is based on e.g. OSGB 1936.', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'DATUM_TRANS'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'DATUM_ELLIPSOID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'DATUM_ELLIPSOID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Name of the ellipsoid used by the geographic coordinate system datum, or by the geographic coordinate system datum that a projected system is based on , e.g. Airy 1830.', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'DATUM_ELLIPSOID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'SOURCE_GEOGCS_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'SOURCE_GEOGCS_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Code of the geographic coordinate system that a projected system is based on; points to another record in this table.', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'SOURCE_GEOGCS_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'PRIME_MERIDIAN'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'PRIME_MERIDIAN'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Name of the prime meridian of the datum of the geographic coordinate system, or of the geographic coordinate system that a projected system is based on e.g. Greenwich', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'PRIME_MERIDIAN'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'AREA_OF_USE_DETAILS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'AREA_OF_USE_DETAILS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Description or list of the areas of the world in which the coordinate system is applicable, free text. Inherited from EPSG', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'AREA_OF_USE_DETAILS'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'AREA_OF_USE_GROUP'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'AREA_OF_USE_GROUP'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Area of use group - WORLD, UK or UK-COMMON. This allows filtering and ordering of the dictionary to facilitate selection by users', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'AREA_OF_USE_GROUP'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'COORD_TRF_EPSG_NAME'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'COORD_TRF_EPSG_NAME'
END
exec sys.sp_addextendedproperty 'MS_Description', 'EPSG name for the coordinate transformation for this projected system', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'COORD_TRF_EPSG_NAME'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'STATUS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'STATUS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Current Status of the coordinate system. This has a check constraint in C: Current, O: Obsolete.', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'STATUS'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Code identifying the horizontal coordinate system. This is a primary key of this table.', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'UNIT_OF_MEASURE_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'UNIT_OF_MEASURE_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Unit of measure that the coordinate system should be measured in, e.g. metres, degrees. Foreign key to DIC_UNIT_OF_MEASUR.', 'schema', 'dbo', 'table', 'DIC_CRS_HORIZ_CS', 'column', 'UNIT_OF_MEASURE_CODE'
go
/* 
 * TABLE: DIC_DATE_ACCURACY 
 */

CREATE TABLE DIC_DATE_ACCURACY(
    CODE           varchar(2)      NOT NULL,
    DESCRIPTION    varchar(100)    NOT NULL,
    TRANSLATION    varchar(50)     NOT NULL,
    STATUS         char(1)         DEFAULT 'C' NOT NULL
                   CONSTRAINT DIC_DATE_ACCURACY_CK1 CHECK (STATUS IN ('C','O')),
    PRIMARY KEY NONCLUSTERED (CODE)
)
go



IF OBJECT_ID('DIC_DATE_ACCURACY') IS NOT NULL
    PRINT '<<< CREATED TABLE DIC_DATE_ACCURACY >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIC_DATE_ACCURACY >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_DATE_ACCURACY', 'column', 'CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_DATE_ACCURACY', 'column', 'CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Code Identifying an accuracy of the date. This is the primary key of this table.', 'schema', 'dbo', 'table', 'DIC_DATE_ACCURACY', 'column', 'CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_DATE_ACCURACY', 'column', 'DESCRIPTION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_DATE_ACCURACY', 'column', 'DESCRIPTION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Full description of the CODE value.', 'schema', 'dbo', 'table', 'DIC_DATE_ACCURACY', 'column', 'DESCRIPTION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_DATE_ACCURACY', 'column', 'TRANSLATION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_DATE_ACCURACY', 'column', 'TRANSLATION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'A short translation of the code value .', 'schema', 'dbo', 'table', 'DIC_DATE_ACCURACY', 'column', 'TRANSLATION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_DATE_ACCURACY', 'column', 'STATUS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_DATE_ACCURACY', 'column', 'STATUS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.', 'schema', 'dbo', 'table', 'DIC_DATE_ACCURACY', 'column', 'STATUS'
go
/* 
 * TABLE: DIC_DEPTH_RELIABILITY 
 */

CREATE TABLE DIC_DEPTH_RELIABILITY(
    CODE           char(1)        NOT NULL,
    DESCRIPTION    varchar(68)    NOT NULL,
    TRANSLATION    varchar(50)    NULL,
    STATUS         char(1)        DEFAULT 'C' NOT NULL
                   CONSTRAINT DIC_DEPTH_RELIABILITY_CK1 CHECK (STATUS IN ('C','O')),
    PRIMARY KEY NONCLUSTERED (CODE)
)
go



IF OBJECT_ID('DIC_DEPTH_RELIABILITY') IS NOT NULL
    PRINT '<<< CREATED TABLE DIC_DEPTH_RELIABILITY >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIC_DEPTH_RELIABILITY >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_DEPTH_RELIABILITY', 'column', 'CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_DEPTH_RELIABILITY', 'column', 'CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Code identifying the reliability of the drilled depth. This is the primary key of this table.', 'schema', 'dbo', 'table', 'DIC_DEPTH_RELIABILITY', 'column', 'CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_DEPTH_RELIABILITY', 'column', 'DESCRIPTION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_DEPTH_RELIABILITY', 'column', 'DESCRIPTION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Full description of the CODE value.', 'schema', 'dbo', 'table', 'DIC_DEPTH_RELIABILITY', 'column', 'DESCRIPTION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_DEPTH_RELIABILITY', 'column', 'TRANSLATION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_DEPTH_RELIABILITY', 'column', 'TRANSLATION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'A short translation of the CODE value.', 'schema', 'dbo', 'table', 'DIC_DEPTH_RELIABILITY', 'column', 'TRANSLATION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_DEPTH_RELIABILITY', 'column', 'STATUS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_DEPTH_RELIABILITY', 'column', 'STATUS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.', 'schema', 'dbo', 'table', 'DIC_DEPTH_RELIABILITY', 'column', 'STATUS'
go
/* 
 * TABLE: DIC_DRILLING_METHOD 
 */

CREATE TABLE DIC_DRILLING_METHOD(
    CODE           varchar(5)      NOT NULL,
    DESCRIPTION    varchar(250)    NOT NULL,
    TRANSLATION    varchar(50)     NULL,
    STATUS         char(1)         DEFAULT 'C' NOT NULL
                   CONSTRAINT DIC_DRILLING_METHOD_CK1 CHECK (STATUS IN ('C','O')),
    PRIMARY KEY NONCLUSTERED (CODE)
)
go



IF OBJECT_ID('DIC_DRILLING_METHOD') IS NOT NULL
    PRINT '<<< CREATED TABLE DIC_DRILLING_METHOD >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIC_DRILLING_METHOD >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_DRILLING_METHOD', 'column', 'CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_DRILLING_METHOD', 'column', 'CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Code Identifying a drilling method. This is the primary key of this table.', 'schema', 'dbo', 'table', 'DIC_DRILLING_METHOD', 'column', 'CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_DRILLING_METHOD', 'column', 'DESCRIPTION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_DRILLING_METHOD', 'column', 'DESCRIPTION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Full description of the CODE value.', 'schema', 'dbo', 'table', 'DIC_DRILLING_METHOD', 'column', 'DESCRIPTION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_DRILLING_METHOD', 'column', 'TRANSLATION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_DRILLING_METHOD', 'column', 'TRANSLATION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'A short translation of the CODE value.', 'schema', 'dbo', 'table', 'DIC_DRILLING_METHOD', 'column', 'TRANSLATION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_DRILLING_METHOD', 'column', 'STATUS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_DRILLING_METHOD', 'column', 'STATUS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.', 'schema', 'dbo', 'table', 'DIC_DRILLING_METHOD', 'column', 'STATUS'
go
/* 
 * TABLE: DIC_DRILLING_PURPOSE 
 */

CREATE TABLE DIC_DRILLING_PURPOSE(
    CODE           varchar(5)      NOT NULL,
    DESCRIPTION    varchar(250)    NOT NULL,
    TRANSLATION    varchar(50)     NULL,
    STATUS         char(1)         DEFAULT 'C' NOT NULL
                   CONSTRAINT DIC_DRILLING_PURPOSE_CK1 CHECK (STATUS IN ('C','O')),
    PRIMARY KEY NONCLUSTERED (CODE)
)
go



IF OBJECT_ID('DIC_DRILLING_PURPOSE') IS NOT NULL
    PRINT '<<< CREATED TABLE DIC_DRILLING_PURPOSE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIC_DRILLING_PURPOSE >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_DRILLING_PURPOSE', 'column', 'CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_DRILLING_PURPOSE', 'column', 'CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Code identifying a purpose of the borehole. This is the primary key of this table.', 'schema', 'dbo', 'table', 'DIC_DRILLING_PURPOSE', 'column', 'CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_DRILLING_PURPOSE', 'column', 'DESCRIPTION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_DRILLING_PURPOSE', 'column', 'DESCRIPTION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Full description of the CODE value.', 'schema', 'dbo', 'table', 'DIC_DRILLING_PURPOSE', 'column', 'DESCRIPTION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_DRILLING_PURPOSE', 'column', 'TRANSLATION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_DRILLING_PURPOSE', 'column', 'TRANSLATION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'A short translation of the CODE value.', 'schema', 'dbo', 'table', 'DIC_DRILLING_PURPOSE', 'column', 'TRANSLATION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_DRILLING_PURPOSE', 'column', 'STATUS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_DRILLING_PURPOSE', 'column', 'STATUS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.', 'schema', 'dbo', 'table', 'DIC_DRILLING_PURPOSE', 'column', 'STATUS'
go
/* 
 * TABLE: DIC_INCLINATION 
 */

CREATE TABLE DIC_INCLINATION(
    CODE           varchar(5)      NOT NULL,
    DESCRIPTION    varchar(250)    NOT NULL,
    TRANSLATION    varchar(50)     NULL,
    STATUS         char(1)         DEFAULT 'C' NOT NULL
                   CONSTRAINT DIC_INCLINATION_CK1 CHECK (STATUS IN ('C','O')),
    PRIMARY KEY NONCLUSTERED (CODE)
)
go



IF OBJECT_ID('DIC_INCLINATION') IS NOT NULL
    PRINT '<<< CREATED TABLE DIC_INCLINATION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIC_INCLINATION >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_INCLINATION', 'column', 'CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_INCLINATION', 'column', 'CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Code identifying inclination of the borehole. This is the primary key of this table.', 'schema', 'dbo', 'table', 'DIC_INCLINATION', 'column', 'CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_INCLINATION', 'column', 'DESCRIPTION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_INCLINATION', 'column', 'DESCRIPTION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Full description of the CODE value.', 'schema', 'dbo', 'table', 'DIC_INCLINATION', 'column', 'DESCRIPTION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_INCLINATION', 'column', 'TRANSLATION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_INCLINATION', 'column', 'TRANSLATION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'A short translation of the CODE value.', 'schema', 'dbo', 'table', 'DIC_INCLINATION', 'column', 'TRANSLATION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_INCLINATION', 'column', 'STATUS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_INCLINATION', 'column', 'STATUS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.', 'schema', 'dbo', 'table', 'DIC_INCLINATION', 'column', 'STATUS'
go
/* 
 * TABLE: DIC_ORD_DATUM_PREC 
 */

CREATE TABLE DIC_ORD_DATUM_PREC(
    CODE           varchar(5)      NOT NULL,
    DESCRIPTION    varchar(250)    NOT NULL,
    TRANSLATION    varchar(50)     NULL,
    STATUS         char(1)         DEFAULT 'C' NOT NULL
                   CONSTRAINT DIC_ORD_DATUM_PREC_CK1 CHECK (STATUS IN ('C','O')),
    PRIMARY KEY NONCLUSTERED (CODE)
)
go



IF OBJECT_ID('DIC_ORD_DATUM_PREC') IS NOT NULL
    PRINT '<<< CREATED TABLE DIC_ORD_DATUM_PREC >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIC_ORD_DATUM_PREC >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_ORD_DATUM_PREC', 'column', 'CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_ORD_DATUM_PREC', 'column', 'CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Code identifying ordnance datum level accuracy. This is the primary key of this table.', 'schema', 'dbo', 'table', 'DIC_ORD_DATUM_PREC', 'column', 'CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_ORD_DATUM_PREC', 'column', 'DESCRIPTION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_ORD_DATUM_PREC', 'column', 'DESCRIPTION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Full description of the CODE value.', 'schema', 'dbo', 'table', 'DIC_ORD_DATUM_PREC', 'column', 'DESCRIPTION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_ORD_DATUM_PREC', 'column', 'TRANSLATION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_ORD_DATUM_PREC', 'column', 'TRANSLATION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'A short translation of the CODE value.', 'schema', 'dbo', 'table', 'DIC_ORD_DATUM_PREC', 'column', 'TRANSLATION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_ORD_DATUM_PREC', 'column', 'STATUS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_ORD_DATUM_PREC', 'column', 'STATUS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.', 'schema', 'dbo', 'table', 'DIC_ORD_DATUM_PREC', 'column', 'STATUS'
go
/* 
 * TABLE: DIC_PROPERTY_TYPE 
 */

CREATE TABLE DIC_PROPERTY_TYPE(
    DESCRIPTION    varchar(100)    NOT NULL,
    CODE           varchar(14)     NOT NULL,
    TRANSLATION    varchar(50)     NULL,
    STATUS         char(1)         DEFAULT 'C' NOT NULL
                   CONSTRAINT DIC_PROPERTY_TYPE_CK1 CHECK (STATUS IN ('C','O')),
    PRIMARY KEY NONCLUSTERED (CODE)
)
go



IF OBJECT_ID('DIC_PROPERTY_TYPE') IS NOT NULL
    PRINT '<<< CREATED TABLE DIC_PROPERTY_TYPE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIC_PROPERTY_TYPE >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_PROPERTY_TYPE', 'column', 'DESCRIPTION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_PROPERTY_TYPE', 'column', 'DESCRIPTION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Full description of the CODE value.', 'schema', 'dbo', 'table', 'DIC_PROPERTY_TYPE', 'column', 'DESCRIPTION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_PROPERTY_TYPE', 'column', 'CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_PROPERTY_TYPE', 'column', 'CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Code identifying a property type. This is the primary key of this table.', 'schema', 'dbo', 'table', 'DIC_PROPERTY_TYPE', 'column', 'CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_PROPERTY_TYPE', 'column', 'TRANSLATION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_PROPERTY_TYPE', 'column', 'TRANSLATION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'A short translation of the CODE value.', 'schema', 'dbo', 'table', 'DIC_PROPERTY_TYPE', 'column', 'TRANSLATION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_PROPERTY_TYPE', 'column', 'STATUS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_PROPERTY_TYPE', 'column', 'STATUS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.', 'schema', 'dbo', 'table', 'DIC_PROPERTY_TYPE', 'column', 'STATUS'
go
/* 
 * TABLE: DIC_ROCK_ALL 
 */

CREATE TABLE DIC_ROCK_ALL(
    CODE           varchar(6)      NOT NULL,
    DESCRIPTION    varchar(500)    NOT NULL,
    TRANSLATION    varchar(500)    NULL,
    STATUS         char(1)         DEFAULT 'C' NOT NULL
                   CONSTRAINT DIC_ROCK_ALL_CK1 CHECK (STATUS IN ('C','O')),
    PRIMARY KEY NONCLUSTERED (CODE)
)
go



IF OBJECT_ID('DIC_ROCK_ALL') IS NOT NULL
    PRINT '<<< CREATED TABLE DIC_ROCK_ALL >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIC_ROCK_ALL >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_ROCK_ALL', 'column', 'CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_ROCK_ALL', 'column', 'CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Code identifying a rock. This is the primary key of this table.', 'schema', 'dbo', 'table', 'DIC_ROCK_ALL', 'column', 'CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_ROCK_ALL', 'column', 'DESCRIPTION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_ROCK_ALL', 'column', 'DESCRIPTION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Full description of the CODE value.', 'schema', 'dbo', 'table', 'DIC_ROCK_ALL', 'column', 'DESCRIPTION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_ROCK_ALL', 'column', 'TRANSLATION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_ROCK_ALL', 'column', 'TRANSLATION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'A short translation of the CODE value.', 'schema', 'dbo', 'table', 'DIC_ROCK_ALL', 'column', 'TRANSLATION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_ROCK_ALL', 'column', 'STATUS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_ROCK_ALL', 'column', 'STATUS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.', 'schema', 'dbo', 'table', 'DIC_ROCK_ALL', 'column', 'STATUS'
go
/* 
 * TABLE: DIC_SOURCE_MEDIUM 
 */

CREATE TABLE DIC_SOURCE_MEDIUM(
    CODE           varchar(5)      NOT NULL,
    DESCRIPTION    varchar(255)    NULL,
    TRANSLATION    varchar(50)     NOT NULL,
    STATUS         char(1)         NULL
                   CONSTRAINT DIC_SOURCE_MEDIUM_CK1 CHECK (STATUS IN ('C','O')),
    PRIMARY KEY CLUSTERED (CODE)
)
go



IF OBJECT_ID('DIC_SOURCE_MEDIUM') IS NOT NULL
    PRINT '<<< CREATED TABLE DIC_SOURCE_MEDIUM >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIC_SOURCE_MEDIUM >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_SOURCE_MEDIUM', 'column', 'CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_SOURCE_MEDIUM', 'column', 'CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Identifier of the source medium. This is a primary key of this table.', 'schema', 'dbo', 'table', 'DIC_SOURCE_MEDIUM', 'column', 'CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_SOURCE_MEDIUM', 'column', 'DESCRIPTION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_SOURCE_MEDIUM', 'column', 'DESCRIPTION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Long description of the source medium.', 'schema', 'dbo', 'table', 'DIC_SOURCE_MEDIUM', 'column', 'DESCRIPTION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_SOURCE_MEDIUM', 'column', 'TRANSLATION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_SOURCE_MEDIUM', 'column', 'TRANSLATION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Name of the source medium.', 'schema', 'dbo', 'table', 'DIC_SOURCE_MEDIUM', 'column', 'TRANSLATION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_SOURCE_MEDIUM', 'column', 'STATUS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_SOURCE_MEDIUM', 'column', 'STATUS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.', 'schema', 'dbo', 'table', 'DIC_SOURCE_MEDIUM', 'column', 'STATUS'
go
/* 
 * TABLE: DIC_UNIT_OF_MEASURE 
 */

CREATE TABLE DIC_UNIT_OF_MEASURE(
    CODE                       varchar(20)       NOT NULL,
    DESCRIPTION                varchar(200)      NOT NULL,
    TRANSLATION                varchar(80)       NULL,
    ABBREVIATION               varchar(15)       NULL,
    EPSG_CODE                  varchar(20)       NULL,
    DATA_SOURCE                varchar(20)       NULL,
    TARGET_UOM_CODE            varchar(20)       NULL,
    CONV_FACTOR_NUMERATOR      numeric(10, 5)    NULL,
    CONV_FACTOR_DENOMINATOR    numeric(10, 5)    NULL,
    UNIT_OF_MEAS_DIMENSION     varchar(50)       NULL
                               CONSTRAINT DIC_UNIT_OF_MEASURE_CK2 CHECK (UNIT_OF_MEAS_DIMENSION in 
('all','length','angle','scale','volumetric rate','mass rate','temperature','mass','volume','charge per mass',
'time','Dimensionless','electric conductivity','volumetric mass','turbidity','area', 'density', '?', 'pressure',
'ratio', 'resistivity', 'slowness', 'velocity'
)),
    REMARKS                    varchar(255)      NULL,
    ORIG_INFORMATION_SOURCE    varchar(255)      NULL,
    STATUS                     char(1)           DEFAULT 'C' NOT NULL
                               CONSTRAINT DIC_UNIT_OF_MEASURE_CK1 CHECK (status in ('C','O')),
    PRIMARY KEY NONCLUSTERED (CODE)
)
go



IF OBJECT_ID('DIC_UNIT_OF_MEASURE') IS NOT NULL
    PRINT '<<< CREATED TABLE DIC_UNIT_OF_MEASURE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIC_UNIT_OF_MEASURE >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Identifier of the measurement unit. This is a primary key of this table.', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'DESCRIPTION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'DESCRIPTION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Full description of the CODE value.', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'DESCRIPTION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'TRANSLATION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'TRANSLATION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'A short translation of the CODE value.', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'TRANSLATION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'ABBREVIATION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'ABBREVIATION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Abbreviation  code used to respresent a measurement.', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'ABBREVIATION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'EPSG_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'EPSG_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'EPSG code for a unit', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'EPSG_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'DATA_SOURCE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'DATA_SOURCE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Source of the data', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'DATA_SOURCE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'TARGET_UOM_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'TARGET_UOM_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Target Unit of Measure code.', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'TARGET_UOM_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'CONV_FACTOR_NUMERATOR'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'CONV_FACTOR_NUMERATOR'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Factor numerator to convert into Target code', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'CONV_FACTOR_NUMERATOR'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'CONV_FACTOR_DENOMINATOR'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'CONV_FACTOR_DENOMINATOR'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Factor denominator to convert into Target code', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'CONV_FACTOR_DENOMINATOR'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'UNIT_OF_MEAS_DIMENSION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'UNIT_OF_MEAS_DIMENSION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'The dimension or feature for which this unit is used. For example length, pressure, temperature, angle etc.', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'UNIT_OF_MEAS_DIMENSION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'REMARKS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'REMARKS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'General remarks or comments not covered by other fields', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'REMARKS'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'ORIG_INFORMATION_SOURCE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'ORIG_INFORMATION_SOURCE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Original information source.', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'ORIG_INFORMATION_SOURCE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'STATUS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'STATUS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Status of the unit. This has a check constraint in C:Current, O:Obsolete.', 'schema', 'dbo', 'table', 'DIC_UNIT_OF_MEASURE', 'column', 'STATUS'
go
/* 
 * TABLE: DIC_XYSOURCE 
 */

CREATE TABLE DIC_XYSOURCE(
    CODE           varchar(5)      NOT NULL,
    DESCRIPTION    varchar(250)    NOT NULL,
    TRANSLATION    varchar(50)     NULL,
    STATUS         char(1)         DEFAULT 'C' NOT NULL
                   CONSTRAINT DIC_XYSOURCE_CK1 CHECK (STATUS IN ('C','O')),
    PRIMARY KEY NONCLUSTERED (CODE)
)
go



IF OBJECT_ID('DIC_XYSOURCE') IS NOT NULL
    PRINT '<<< CREATED TABLE DIC_XYSOURCE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIC_XYSOURCE >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_XYSOURCE', 'column', 'CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_XYSOURCE', 'column', 'CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Code identifying source of geographic coordinate. This is the primary key of this table.', 'schema', 'dbo', 'table', 'DIC_XYSOURCE', 'column', 'CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_XYSOURCE', 'column', 'DESCRIPTION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_XYSOURCE', 'column', 'DESCRIPTION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Full description of the CODE value.', 'schema', 'dbo', 'table', 'DIC_XYSOURCE', 'column', 'DESCRIPTION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_XYSOURCE', 'column', 'TRANSLATION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_XYSOURCE', 'column', 'TRANSLATION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'A short translation of the CODE value.', 'schema', 'dbo', 'table', 'DIC_XYSOURCE', 'column', 'TRANSLATION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'DIC_XYSOURCE', 'column', 'STATUS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'DIC_XYSOURCE', 'column', 'STATUS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.', 'schema', 'dbo', 'table', 'DIC_XYSOURCE', 'column', 'STATUS'
go
/* 
 * TABLE: LXN_UNIT 
 */

CREATE TABLE LXN_UNIT(
    LEX_CODE              varchar(5)       NOT NULL
                          CONSTRAINT LEX_CODE_CK1 CHECK (UPPER("LEX_CODE")="LEX_CODE"),
    UNIT_NAME             nvarchar(200)    NOT NULL,
    UNIT_RANK_CODE        varchar(2)       NOT NULL,
    STATUS                char(1)          DEFAULT 'C' NOT NULL
                          CONSTRAINT LXN_UNIT_CK5 CHECK (STATUS in ('C', 'O')),
    THEME_CODE            varchar(6)       NOT NULL,
    DEFNSTATUS_CODE       varchar(6)       DEFAULT 'INDEX' NOT NULL,
    FORMAL_OR_INFORMAL    varchar(8)       DEFAULT 'FORMAL' NOT NULL
                          CONSTRAINT LXN_UNIT_CK2 CHECK (FORMAL_OR_INFORMAL in ('FORMAL', 'INFORMAL')),
    ON_OR_OFFSHORE        varchar(9)       DEFAULT 'BOTH' NOT NULL
                          CONSTRAINT LXN_UNIT_CK3 CHECK (ON_OR_OFFSHORE in ('ONSHORE', 'OFFSHORE', 'BOTH')),
    UNITCLASS_CODE        varchar(6)       NOT NULL,
    PREFERRED_MAPCODE     varchar(13)      DEFAULT 'notApplicable' NOT NULL,
    REVISION_NUMBER       numeric(2, 0)    DEFAULT 0 NOT NULL
                          CONSTRAINT LXN_UNIT_CK4 CHECK (REVISION_NUMBER>=0),
    SCOPEBYAREA_CODE      varchar(6)       NOT NULL,
    PRIMARY KEY NONCLUSTERED (LEX_CODE)
)
go



IF OBJECT_ID('LXN_UNIT') IS NOT NULL
    PRINT '<<< CREATED TABLE LXN_UNIT >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE LXN_UNIT >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'LEX_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'LEX_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'A Code to uniquely identify the Lexicon Unit.
', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'LEX_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'UNIT_NAME'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'UNIT_NAME'
END
exec sys.sp_addextendedproperty 'MS_Description', 'The current name of the Lexicon Unit.', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'UNIT_NAME'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'UNIT_RANK_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'UNIT_RANK_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'The codified rank of the Lexicon Unit. It must use a controlled vocabulary including unclassified and include the "ranks" of non lithostratigraphical units.
', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'UNIT_RANK_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'STATUS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'STATUS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Whether the Lexicon Entry is obsolete or not. This should be O (for Obsolete) or C (for Current).
', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'STATUS'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'THEME_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'THEME_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'This is the DiGMapGB theme. All mapped rock units appearing in DiGMapGB belong to one of four themes: Artificial , Superficial , Mass Movement, Bedrock.
 
', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'THEME_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'DEFNSTATUS_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'DEFNSTATUS_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'This is the state of the Lexicon Definition for a Lexicon Unit. It should use a codified controlled vocabulary of: Index Level; Pending upgrade; Full, pending ratification; Full, without ratification; Full.
', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'DEFNSTATUS_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'FORMAL_OR_INFORMAL'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'FORMAL_OR_INFORMAL'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Nature of the Lexicon Unit. This should be Formal or Informal. A formal unit is one that has been named according to the recommendations of the North American Stratigraphic Code , whether or not the definition has been completed or approved.
 
', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'FORMAL_OR_INFORMAL'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'ON_OR_OFFSHORE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'ON_OR_OFFSHORE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Context in which the unit name is generally used. Offshore units are those whose names are generally used below the low water mark. Onshore units are those whose names are generally used above low water mark. 
 
 
', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'ON_OR_OFFSHORE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'UNITCLASS_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'UNITCLASS_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'This is the "type" of unit, in a broad sense. It is analogous to the subdivision of rock types by origin into "igneous", "sedimentary" and "metamorphic", but uses broadly "stratigraphical" concepts.  
  ', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'UNITCLASS_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'PREFERRED_MAPCODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'PREFERRED_MAPCODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'The preferred map code for the Lexicon Unit. If the Lexicon Unit does not have a "Preferred Map Code", a value of notApplicable should be used; values of notAvailable and notEntered should also be allowed.
', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'PREFERRED_MAPCODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'REVISION_NUMBER'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'REVISION_NUMBER'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Each Lexicon Definition has one and only one Version Number.The first entry into the Lexicon (including the entry of index information) should be version 0. Subsequent versions of the Lexicon definition will be sequential integers.
', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'REVISION_NUMBER'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'SCOPEBYAREA_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'SCOPEBYAREA_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Each Lexicon Unit definition may have one and only one "Definition Applicability" value. These terms do not refer to the geographical extent of the named unit"s outcrop but to the extent to which the definition is applicable. ', 'schema', 'dbo', 'table', 'LXN_UNIT', 'column', 'SCOPEBYAREA_CODE'
go
/* 
 * TABLE: PROJECT 
 */

CREATE TABLE PROJECT(
    PROJECT_ID           int              NOT NULL,
    DESCRIPTION          varchar(255)     NULL,
    PROJECT_TYPE_CODE    varchar(4)       NOT NULL,
    START_DATE           datetime         NOT NULL,
    FINISH_DATE          datetime         NOT NULL,
    PROJ_LEADER_ID       varchar(11)      NULL,
    STATUS               char(1)          DEFAULT 'A' NULL
                         CONSTRAINT PROJECT_CK1 CHECK (STATUS IN ('A','C','I')),
    PROG_ID              numeric(4, 0)    NOT NULL,
    BUDGET               numeric(9, 2)    NULL,
    DEPUTY_LEADER_ID     int              NULL,
    PROJECT_NAME         varchar(100)     NOT NULL,
    PRIMARY KEY NONCLUSTERED (PROJECT_ID)
)
go



IF OBJECT_ID('PROJECT') IS NOT NULL
    PRINT '<<< CREATED TABLE PROJECT >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE PROJECT >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'PROJECT_ID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'PROJECT_ID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Identifier of the project. This is a primary key of the table.', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'PROJECT_ID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'DESCRIPTION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'DESCRIPTION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Long Description of the project.', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'DESCRIPTION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'PROJECT_TYPE_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'PROJECT_TYPE_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Type of the project. For example: Commercial, Science Budget, Enquiries and Sales etc. This can be constrained against a dictionary table.', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'PROJECT_TYPE_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'START_DATE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'START_DATE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Start Date of the project.', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'START_DATE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'FINISH_DATE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'FINISH_DATE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Finish Date of the project.', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'FINISH_DATE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'PROJ_LEADER_ID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'PROJ_LEADER_ID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Identifier of the project leader assigned to the project.', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'PROJ_LEADER_ID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'STATUS'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'STATUS'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Current Status of the project. This has a check constraint in A: Active, C: Completed, I: Inactive.', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'STATUS'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'PROG_ID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'PROG_ID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Identifier of the programme the project is part of.', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'PROG_ID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'BUDGET'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'BUDGET'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Budget allocated to the project', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'BUDGET'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'DEPUTY_LEADER_ID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'DEPUTY_LEADER_ID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Identifier of the deputy Leader assigned to the project.', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'DEPUTY_LEADER_ID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'PROJECT_NAME'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'PROJECT_NAME'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Name of the project.', 'schema', 'dbo', 'table', 'PROJECT', 'column', 'PROJECT_NAME'
go
/* 
 * TABLE: STAFF 
 */

CREATE TABLE STAFF(
    STAFF_ID          varchar(11)     NOT NULL,
    FIRST_NAME        varchar(50)     NULL,
    LAST_NAME         varchar(30)     NOT NULL,
    NAME_PREFIX       varchar(4)      NULL,
    BUSINESS_TITLE    varchar(64)     NOT NULL,
    JOB_CODE          varchar(240)    NOT NULL,
    LOCATION          varchar(26)     NULL,
    EMAIL_ID          varchar(70)     NULL,
    STATUS_CODE       varchar(2)      NULL,
    PRIMARY KEY NONCLUSTERED (STAFF_ID)
)
go



IF OBJECT_ID('STAFF') IS NOT NULL
    PRINT '<<< CREATED TABLE STAFF >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE STAFF >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'STAFF_ID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'STAFF_ID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Identifier of the staff. This is a primary key of this table.', 'schema', 'dbo', 'table', 'STAFF', 'column', 'STAFF_ID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'FIRST_NAME'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'FIRST_NAME'
END
exec sys.sp_addextendedproperty 'MS_Description', 'First Name of the staff.', 'schema', 'dbo', 'table', 'STAFF', 'column', 'FIRST_NAME'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'LAST_NAME'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'LAST_NAME'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Last Name of the staff.', 'schema', 'dbo', 'table', 'STAFF', 'column', 'LAST_NAME'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'NAME_PREFIX'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'NAME_PREFIX'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Prefix for the Name.', 'schema', 'dbo', 'table', 'STAFF', 'column', 'NAME_PREFIX'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'BUSINESS_TITLE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'BUSINESS_TITLE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Business Title of the staff.', 'schema', 'dbo', 'table', 'STAFF', 'column', 'BUSINESS_TITLE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'JOB_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'JOB_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Identifier of the staff job. This can be constrained against a dictionary.', 'schema', 'dbo', 'table', 'STAFF', 'column', 'JOB_CODE'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'LOCATION'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'LOCATION'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Location of the Staff in the organisation.', 'schema', 'dbo', 'table', 'STAFF', 'column', 'LOCATION'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'EMAIL_ID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'EMAIL_ID'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Email Address of the staff.', 'schema', 'dbo', 'table', 'STAFF', 'column', 'EMAIL_ID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'STATUS_CODE'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'STAFF', 'column', 'STATUS_CODE'
END
exec sys.sp_addextendedproperty 'MS_Description', 'Employment Status of the staff. This can be constrained against a dictionary. Possible values like ''A'' : Active, ''T'': Terminated, ''C'': Career Break.', 'schema', 'dbo', 'table', 'STAFF', 'column', 'STATUS_CODE'
go
/* 
 * INDEX: BHD_LOG_UK1 
 */

CREATE UNIQUE INDEX BHD_LOG_UK1 ON BHD_LOG(BHD_INDEX_ID, BHD_LOG_SOURCE_ID, LAYER_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('BHD_LOG') AND name='BHD_LOG_UK1')
    PRINT '<<< CREATED INDEX BHD_LOG.BHD_LOG_UK1 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX BHD_LOG.BHD_LOG_UK1 >>>'
go

/* 
 * INDEX: BHD_LOG_NU3 
 */

CREATE INDEX BHD_LOG_NU3 ON BHD_LOG(LITHOSTRAT_CODE)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('BHD_LOG') AND name='BHD_LOG_NU3')
    PRINT '<<< CREATED INDEX BHD_LOG.BHD_LOG_NU3 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX BHD_LOG.BHD_LOG_NU3 >>>'
go

/* 
 * INDEX: BHD_LOG_NU4 
 */

CREATE INDEX BHD_LOG_NU4 ON BHD_LOG(DRILLED_DEPTH_BASE)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('BHD_LOG') AND name='BHD_LOG_NU4')
    PRINT '<<< CREATED INDEX BHD_LOG.BHD_LOG_NU4 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX BHD_LOG.BHD_LOG_NU4 >>>'
go

/* 
 * INDEX: BHD_LOG_NU5 
 */

CREATE INDEX BHD_LOG_NU5 ON BHD_LOG(LITHOLOGY_CODE)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('BHD_LOG') AND name='BHD_LOG_NU5')
    PRINT '<<< CREATED INDEX BHD_LOG.BHD_LOG_NU5 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX BHD_LOG.BHD_LOG_NU5 >>>'
go

/* 
 * TABLE: BHD_INDEX 
 */

ALTER TABLE BHD_INDEX ADD CONSTRAINT BHD_INDEX_FK1 
    FOREIGN KEY (DRILLED_DATE_PREC_CODE)
    REFERENCES DIC_DATE_ACCURACY(CODE)
go

ALTER TABLE BHD_INDEX ADD CONSTRAINT BHD_INDEX_FK10 
    FOREIGN KEY (EPSG_CODE)
    REFERENCES DIC_CRS_HORIZ_CS(CODE)
go

ALTER TABLE BHD_INDEX ADD CONSTRAINT BHD_INDEX_FK2 
    FOREIGN KEY (XY_SOURCE_CODE)
    REFERENCES DIC_XYSOURCE(CODE)
go

ALTER TABLE BHD_INDEX ADD CONSTRAINT BHD_INDEX_FK3 
    FOREIGN KEY (CONFIDENTIALITY_CODE)
    REFERENCES DIC_CONFIDENTIALITY(CODE)
go

ALTER TABLE BHD_INDEX ADD CONSTRAINT BHD_INDEX_FK4 
    FOREIGN KEY (INCLINATION_TYPE_CODE)
    REFERENCES DIC_INCLINATION(CODE)
go

ALTER TABLE BHD_INDEX ADD CONSTRAINT BHD_INDEX_FK5 
    FOREIGN KEY (START_POINT_TYPE_CODE)
    REFERENCES DIC_BOREHOLE_DIRECTION(CODE)
go

ALTER TABLE BHD_INDEX ADD CONSTRAINT BHD_INDEX_FK6 
    FOREIGN KEY (START_HEIGHT_PREC_CODE)
    REFERENCES DIC_ORD_DATUM_PREC(CODE)
go

ALTER TABLE BHD_INDEX ADD CONSTRAINT BHD_INDEX_FK7 
    FOREIGN KEY (DRILLING_METHOD_CODE)
    REFERENCES DIC_DRILLING_METHOD(CODE)
go

ALTER TABLE BHD_INDEX ADD CONSTRAINT BHD_INDEX_FK8 
    FOREIGN KEY (CLIENT_CODE)
    REFERENCES DIC_COMPANY(CODE)
go

ALTER TABLE BHD_INDEX ADD CONSTRAINT BHD_INDEX_FK9 
    FOREIGN KEY (PURPOSE_CODE)
    REFERENCES DIC_DRILLING_PURPOSE(CODE)
go


/* 
 * TABLE: BHD_LOG 
 */

ALTER TABLE BHD_LOG ADD CONSTRAINT BHD_LOG_FK1 
    FOREIGN KEY (BHD_INDEX_ID)
    REFERENCES BHD_INDEX(BHD_INDEX_ID)
go

ALTER TABLE BHD_LOG ADD CONSTRAINT BHD_LOG_FK2 
    FOREIGN KEY (BHD_LOG_SOURCE_ID)
    REFERENCES BHD_LOG_SOURCE(BHD_LOG_SOURCE_ID)
go

ALTER TABLE BHD_LOG ADD CONSTRAINT BHD_LOG_FK3 
    FOREIGN KEY (DEPTH_RELIABILITY_CODE)
    REFERENCES DIC_DEPTH_RELIABILITY(CODE)
go

ALTER TABLE BHD_LOG ADD CONSTRAINT BHD_LOG_FK4 
    FOREIGN KEY (ORIGINAL_UNIT_CODE)
    REFERENCES DIC_UNIT_OF_MEASURE(CODE)
go

ALTER TABLE BHD_LOG ADD CONSTRAINT BHD_LOG_FK5 
    FOREIGN KEY (LITHOLOGY_CODE)
    REFERENCES DIC_ROCK_ALL(CODE)
go

ALTER TABLE BHD_LOG ADD CONSTRAINT BHD_LOG_FK6 
    FOREIGN KEY (LITHOSTRAT_CODE)
    REFERENCES LXN_UNIT(LEX_CODE)
go

ALTER TABLE BHD_LOG ADD CONSTRAINT BHD_LOG_FK7 
    FOREIGN KEY (BASE_BED_CODE)
    REFERENCES DIC_BASE_BED(CODE)
go


/* 
 * TABLE: BHD_LOG_PROPERTY 
 */

ALTER TABLE BHD_LOG_PROPERTY ADD CONSTRAINT BHD_LOG_PROPERTY_FK1 
    FOREIGN KEY (BHD_LOG_ID)
    REFERENCES BHD_LOG(BHD_LOG_ID)
go

ALTER TABLE BHD_LOG_PROPERTY ADD CONSTRAINT BHD_LOG_PROPERTY_FK2 
    FOREIGN KEY (PROPERTY_TYPE_CODE)
    REFERENCES DIC_PROPERTY_TYPE(CODE)
go


/* 
 * TABLE: BHD_LOG_SOURCE 
 */

ALTER TABLE BHD_LOG_SOURCE ADD CONSTRAINT BHD_LOG_HEAD_FK1 
    FOREIGN KEY (PROJECT_ID)
    REFERENCES PROJECT(PROJECT_ID)
go

ALTER TABLE BHD_LOG_SOURCE ADD CONSTRAINT BHD_LOG_HEAD_FK2 
    FOREIGN KEY (INTERPRETER_ID)
    REFERENCES STAFF(STAFF_ID)
go

ALTER TABLE BHD_LOG_SOURCE ADD CONSTRAINT BHD_LOG_HEAD_FK3 
    FOREIGN KEY (SOURCE_MEDIUM_CODE)
    REFERENCES DIC_SOURCE_MEDIUM(CODE)
go


/* 
 * TABLE: DIC_CRS_HORIZ_CS 
 */

ALTER TABLE DIC_CRS_HORIZ_CS ADD CONSTRAINT DIC_CRS_HORIZ_CS_FK1 
    FOREIGN KEY (UNIT_OF_MEASURE_CODE)
    REFERENCES DIC_UNIT_OF_MEASURE(CODE)
go

ALTER TABLE DIC_CRS_HORIZ_CS ADD CONSTRAINT DIC_CRS_HORIZ_CS_FK2 
    FOREIGN KEY (SOURCE_GEOGCS_CODE)
    REFERENCES DIC_CRS_HORIZ_CS(CODE)
go


/* 
 * TABLE: DIC_UNIT_OF_MEASURE 
 */

ALTER TABLE DIC_UNIT_OF_MEASURE ADD CONSTRAINT DIC_UNIT_OF_MEASURE_FK1 
    FOREIGN KEY (TARGET_UOM_CODE)
    REFERENCES DIC_UNIT_OF_MEASURE(CODE)
go


