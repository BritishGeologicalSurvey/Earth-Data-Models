--
-- Terms of Use:  Free for commercial and non-commercial use.  Please acknowledge the material  as:  
-- “Copyright/database right, reproduced with the permission of the British Geological Survey © NERC 2011.  All rights reserved”.
--
-- ER/Studio Data Architect 9.0 SQL Code Generation
-- Company :      BGS
-- Project :      BoreholeDatabase_ERS9.dm1
-- Author :       BGS
--
-- Date Created : Thursday, August 25, 2011 17:46:43
-- Target DBMS : PostgreSQL 8.0
--

-- 
-- TABLE: "BHD_INDEX" 
--

CREATE TABLE "BHD_INDEX"(
    "BHD_INDEX_ID"            numeric(38, 0)    NOT NULL,
    "QS"                      varchar(6)        NOT NULL,
    "RT"                      varchar(2)        NOT NULL,
    "NUMB"                    numeric(5, 0)     NOT NULL,
    "BOREHOLE_SUFFIX"         varchar(4)        NOT NULL,
    "BOREHOLE_NAME"           varchar(100)      NOT NULL,
    "XY_SOURCE_CODE"          varchar(5),
    "CONFIDENTIALITY_CODE"    varchar(5)        DEFAULT '?',
    "INCLINATION_TYPE_CODE"   varchar(5)        DEFAULT '?' NOT NULL,
    "DRILLED_DATE"            date,
    "DRILLED_DATE_PREC_CODE"  varchar(2)        DEFAULT '?',
    "DRILLED_LENGTH"          numeric(7, 2),
    "START_POINT_TYPE_CODE"   varchar(5)        DEFAULT '?' NOT NULL,
    "START_HEIGHT"            numeric(7, 2),
    "START_HEIGHT_PREC_CODE"  varchar(5)        DEFAULT '?',
    "DRILLING_METHOD_CODE"    varchar(5)        DEFAULT '?' NOT NULL,
    "CLIENT_CODE"             varchar(5)        DEFAULT '?' NOT NULL,
    "PURPOSE_CODE"            varchar(5)        DEFAULT '?',
    "COMMENTS"                varchar(255),
    "X"                       numeric,
    "Y"                       numeric,
    "EPSG_CODE"               varchar(20),
    "XA"                      numeric,
    "YA"                      numeric
)
;



COMMENT ON TABLE "BHD_INDEX" IS 'Index table of borehole records in the Borehole database'
;
COMMENT ON COLUMN "BHD_INDEX"."BHD_INDEX_ID" IS 'Unique Identifier for a borehole populated by a sequence. This is a primary key of this table.'
;
COMMENT ON COLUMN "BHD_INDEX"."QS" IS 'Sheet quadrant, ie NE, SE, SW, NW. This is specific to UK borehole record.'
;
COMMENT ON COLUMN "BHD_INDEX"."RT" IS 'This refers to Record Type. For example, B for Borehole Journal etc. This is specific to UK borehole record.'
;
COMMENT ON COLUMN "BHD_INDEX"."NUMB" IS 'Running Borehole Number(limited to a quadrant of a sheet). This is specific to UK borehole record.'
;
COMMENT ON COLUMN "BHD_INDEX"."BOREHOLE_SUFFIX" IS 'Borehole Suffix. This is specific to UK borehole record.'
;
COMMENT ON COLUMN "BHD_INDEX"."BOREHOLE_NAME" IS 'Name of the Borehole.'
;
COMMENT ON COLUMN "BHD_INDEX"."XY_SOURCE_CODE" IS 'Source of geographic coordinate. This is a foreign key to DIC_XYSOURCE.'
;
COMMENT ON COLUMN "BHD_INDEX"."CONFIDENTIALITY_CODE" IS 'Confidentiality status of borehole record. This is a foreign key to DIC_CONFIDENTIALITY.'
;
COMMENT ON COLUMN "BHD_INDEX"."INCLINATION_TYPE_CODE" IS 'Inclination of the borehole. This is a foreign key to DIC_INCLINATION.'
;
COMMENT ON COLUMN "BHD_INDEX"."DRILLED_DATE" IS 'Drilling date of the borehole'
;
COMMENT ON COLUMN "BHD_INDEX"."DRILLED_DATE_PREC_CODE" IS 'Accuracy of the drilled date. This is foreign key to DIC_DATE_ACCURACY.'
;
COMMENT ON COLUMN "BHD_INDEX"."DRILLED_LENGTH" IS 'Total length of the borehole.'
;
COMMENT ON COLUMN "BHD_INDEX"."START_POINT_TYPE_CODE" IS 'Start point of the borehole. This is a foreign key to DIC_BOREHOLE_DIRECTION.'
;
COMMENT ON COLUMN "BHD_INDEX"."START_HEIGHT" IS 'Ordnance Datum Level (Surface Level of Borehole).'
;
COMMENT ON COLUMN "BHD_INDEX"."START_HEIGHT_PREC_CODE" IS 'Ordnance datum level accuracy. This is a foreign key to DIC_ORD_DATUM_PREC.'
;
COMMENT ON COLUMN "BHD_INDEX"."DRILLING_METHOD_CODE" IS 'Method used to drill the borehole. This is a foreign key to DIC_DRILLING_METHOD.'
;
COMMENT ON COLUMN "BHD_INDEX"."CLIENT_CODE" IS 'Client that instigated the request. This is a foreign key to DIC_COMPANY.'
;
COMMENT ON COLUMN "BHD_INDEX"."PURPOSE_CODE" IS 'Purpose of the borehole. This is foreign key to DIC_DRILLING_PURPOSE.'
;
COMMENT ON COLUMN "BHD_INDEX"."COMMENTS" IS 'General comments or additional information not covered by other fields.'
;
COMMENT ON COLUMN "BHD_INDEX"."X" IS 'The original X coordinate.'
;
COMMENT ON COLUMN "BHD_INDEX"."Y" IS 'The original Y coordinate.'
;
COMMENT ON COLUMN "BHD_INDEX"."EPSG_CODE" IS 'The CRS code for the original coordinate system. This is constrained against DIC_CRS_HORIZ_CS.'
;
COMMENT ON COLUMN "BHD_INDEX"."XA" IS 'The estimated accuracy of the X value. Example: If X is quoted as 302630 (metres) and known to within 5 metres, XA is 5. If X is quoted as 6.1834528 (degrees) and known to the nearest second, XA  is 0.0002778 (i.e. 1/3600).'
;
COMMENT ON COLUMN "BHD_INDEX"."YA" IS 'The estimated accuracy of the Y value. Example: If Y is quoted as 302630 (metres) and known to within 5 metres, YA is 5. If Y is quoted as 6.1834528 (degrees) and known to the nearest second, YA  is 0.0002778 (i.e. 1/3600).'
;
-- 
-- TABLE: "BHD_LOG" 
--

CREATE TABLE "BHD_LOG"(
    "BHD_LOG_ID"              integer          NOT NULL,
    "LAYER_ID"                integer          NOT NULL,
    "BHD_INDEX_ID"            numeric(38, 0)    NOT NULL,
    "BHD_LOG_SOURCE_ID"         integer          NOT NULL,
    "DRILLED_DEPTH_TOP"       numeric(9, 3),
    "DRILLED_DEPTH_BASE"      numeric(9, 3)     NOT NULL,
    "ORIGINAL_UNIT_CODE"      varchar(20)       DEFAULT '?' NOT NULL,
    "DEPTH_RELIABILITY_CODE"  char(1)           DEFAULT '?' NOT NULL,
    "LITHOLOGY_CODE"          varchar(6)        DEFAULT '?' NOT NULL,
    "LITHOSTRAT_CODE"         varchar(5)        DEFAULT '?' NOT NULL,
    "UNIT_DESCRIPTION"        varchar(2000),
    "BASE_BED_CODE"           varchar(10)       DEFAULT '?' NOT NULL,
    "COMMENTS"                varchar(255),
    CONSTRAINT "BHD_LOG_CK1" CHECK ("LAYER_ID" >='1')
)
;



COMMENT ON TABLE "BHD_LOG" IS 'Table to store geological information of the borehole log'
;
COMMENT ON COLUMN "BHD_LOG"."BHD_LOG_ID" IS 'Unique identifier of the borehole log populated by a sequence. This is a primary key of this table.'
;
COMMENT ON COLUMN "BHD_LOG"."LAYER_ID" IS 'Order of the layer in the complete borehole log. This is also identifier of the individual log in a particular borehole .'
;
COMMENT ON COLUMN "BHD_LOG"."BHD_INDEX_ID" IS 'Identifier of the borehole. This is the foreign key to BHD_INDEX.'
;
COMMENT ON COLUMN "BHD_LOG"."BHD_LOG_SOURCE_ID" IS 'Identifier of the log source. This is a foreign key to BHD_LOG_SOURCE.'
;
COMMENT ON COLUMN "BHD_LOG"."DRILLED_DEPTH_TOP" IS 'Depth at the top of the log.'
;
COMMENT ON COLUMN "BHD_LOG"."DRILLED_DEPTH_BASE" IS 'Depth at the base of the log.'
;
COMMENT ON COLUMN "BHD_LOG"."ORIGINAL_UNIT_CODE" IS 'Identifies the unit of measurement in which depths were recorded originally.'
;
COMMENT ON COLUMN "BHD_LOG"."DEPTH_RELIABILITY_CODE" IS 'Reliability of the drilled depth. This is foreign key to DIC_DEPTH_RELIABILITY.'
;
COMMENT ON COLUMN "BHD_LOG"."LITHOLOGY_CODE" IS 'Lithology of the borehole record. This is a foreign key to DIC_ROCK_ALL.'
;
COMMENT ON COLUMN "BHD_LOG"."LITHOSTRAT_CODE" IS 'Lithostratography of the borehole record. This is a foreign key to LXN_UNIT.'
;
COMMENT ON COLUMN "BHD_LOG"."UNIT_DESCRIPTION" IS 'Description of the unit.'
;
COMMENT ON COLUMN "BHD_LOG"."BASE_BED_CODE" IS 'Base of the bed of the borehole. This is a foreign key to DIC_BASE_BED.'
;
COMMENT ON COLUMN "BHD_LOG"."COMMENTS" IS 'General comments or additional information not covered by other fields.'
;
-- 
-- TABLE: "BHD_LOG_SOURCE"
--

CREATE TABLE "BHD_LOG_SOURCE"(
    "BHD_LOG_SOURCE_ID"   integer       NOT NULL,
    "INTERPRETER_ID"   varchar(11)    NOT NULL,
    "PROJECT_ID"       integer,
    "SOURCE_ID"        integer,
    "SOURCE_MEDIUM_CODE"  varchar(5)
)
;



COMMENT ON TABLE "BHD_LOG_SOURCE" IS 'Grouping table for logs (incl. interpreter, project, medium)'
;
COMMENT ON COLUMN "BHD_LOG_SOURCE"."BHD_LOG_SOURCE_ID" IS 'Identifier of the Interpretation . This is the primary key of this table.'
;
COMMENT ON COLUMN "BHD_LOG_SOURCE"."INTERPRETER_ID" IS 'Identifier of the person who coined the interpretation. This is a foreign key to STAFF table.'
;
COMMENT ON COLUMN "BHD_LOG_SOURCE"."PROJECT_ID" IS 'Identifier of the project under which interpretation was carried out. This is a foreign key to PROJECT table.'
;
COMMENT ON COLUMN "BHD_LOG_SOURCE"."SOURCE_MEDIUM_CODE" IS 'Identifier of the source where from where the data was obtained originally. This is a foreign key to SOURCE MATERIAL table.'
;
-- 
-- TABLE: "BHD_LOG_PROPERTY" 
--

CREATE TABLE "BHD_LOG_PROPERTY"(
    "BHD_LOG_ID"          integer        NOT NULL,
    "PROPERTY_TYPE_CODE"  varchar(14)     DEFAULT '?' NOT NULL,
    "PROPERTY_VALUE"      varchar(25)     NOT NULL,
    "QUALIFIER"           char(2),
    "COMMENTS"            varchar(255),
    CONSTRAINT "BHD_LOG_PROPERTY_CK1" CHECK ("QUALIFIER" IN ('<','>','?','>=','<='))
)
;



COMMENT ON TABLE "BHD_LOG_PROPERTY" IS 'Table to store the borehole log property data'
;
COMMENT ON COLUMN "BHD_LOG_PROPERTY"."BHD_LOG_ID" IS 'Identifier of the borehole log for which the property is recorded. This is a foreign key to BHD_LOG.'
;
COMMENT ON COLUMN "BHD_LOG_PROPERTY"."PROPERTY_TYPE_CODE" IS 'Identifier of the property type. This is a foreign key to DIC_PROPERTY_TYPE.'
;
COMMENT ON COLUMN "BHD_LOG_PROPERTY"."PROPERTY_VALUE" IS 'Value of the  property type.'
;
COMMENT ON COLUMN "BHD_LOG_PROPERTY"."QUALIFIER" IS 'Qualifier for a property value such as : ''?'' (uncertain data ) ,''>'' ( greater than) ,''<'' ( less than) ,''>='' ( greater than or equal to) ,''<='' (less than or equal to).'
;
COMMENT ON COLUMN "BHD_LOG_PROPERTY"."COMMENTS" IS 'General comments or additional information not covered by other fields.'
;
-- 
-- TABLE: "DIC_BASE_BED" 
--

CREATE TABLE "DIC_BASE_BED"(
    "CODE"         varchar(10)     NOT NULL,
    "DESCRIPTION"  varchar(100)    NOT NULL,
    "TRANSLATION"  varchar(50),
    "STATUS"       char(1)         DEFAULT 'C' NOT NULL,
    CONSTRAINT "DIC_BASE_BED_CK1" CHECK ("STATUS" in ('C', 'O'))
)
;



COMMENT ON TABLE "DIC_BASE_BED" IS 'Dictionary of base of bed codes'
;
COMMENT ON COLUMN "DIC_BASE_BED"."CODE" IS 'Code identifying the base of the bed of the borehole. This is the primary key of this table.'
;
COMMENT ON COLUMN "DIC_BASE_BED"."DESCRIPTION" IS 'Full description of the CODE value.'
;
COMMENT ON COLUMN "DIC_BASE_BED"."TRANSLATION" IS 'A short translation of the CODE value.'
;
COMMENT ON COLUMN "DIC_BASE_BED"."STATUS" IS 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.'
;
-- 
-- TABLE: "DIC_BOREHOLE_DIRECTION" 
--

CREATE TABLE "DIC_BOREHOLE_DIRECTION"(
    "CODE"         varchar(5)      NOT NULL,
    "DESCRIPTION"  varchar(250)    NOT NULL,
    "TRANSLATION"  varchar(50),
    "STATUS"       char(1)         DEFAULT 'C' NOT NULL,
    CONSTRAINT "DIC_BOREHOLE_DIRECTION_CK1" CHECK ("STATUS" IN ('C','O'))
)
;



COMMENT ON TABLE "DIC_BOREHOLE_DIRECTION" IS 'Dictionary table to store start point types of the borehole'
;
COMMENT ON COLUMN "DIC_BOREHOLE_DIRECTION"."CODE" IS 'Code Identifying start point of the borehole. This is the primary key of this table.'
;
COMMENT ON COLUMN "DIC_BOREHOLE_DIRECTION"."DESCRIPTION" IS 'Full description of the CODE value.'
;
COMMENT ON COLUMN "DIC_BOREHOLE_DIRECTION"."TRANSLATION" IS 'A short translation of the code value .'
;
COMMENT ON COLUMN "DIC_BOREHOLE_DIRECTION"."STATUS" IS 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.'
;
-- 
-- TABLE: "DIC_COMPANY" 
--

CREATE TABLE "DIC_COMPANY"(
    "CODE"         varchar(5)      NOT NULL,
    "DESCRIPTION"  varchar(250)    NOT NULL,
    "TRANSLATION"  varchar(50),
    "STATUS"       char(1)         DEFAULT 'C' NOT NULL,
    CONSTRAINT "DIC_COMPANY_CK1" CHECK ("STATUS" IN ('C','O'))
)
;



COMMENT ON TABLE "DIC_COMPANY" IS 'Dictionary table to store list of client/company''s details'
;
COMMENT ON COLUMN "DIC_COMPANY"."CODE" IS 'Code Identifying a company. This is the primary key of this table.'
;
COMMENT ON COLUMN "DIC_COMPANY"."DESCRIPTION" IS 'The name of the company (full description of the CODE value).'
;
COMMENT ON COLUMN "DIC_COMPANY"."TRANSLATION" IS 'A short translation of the company''s name.'
;
COMMENT ON COLUMN "DIC_COMPANY"."STATUS" IS 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.'
;
-- 
-- TABLE: "DIC_CONFIDENTIALITY" 
--

CREATE TABLE "DIC_CONFIDENTIALITY"(
    "CODE"         varchar(5)      NOT NULL,
    "DESCRIPTION"  varchar(250)    NOT NULL,
    "TRANSLATION"  varchar(50),
    "STATUS"       char(1)         DEFAULT 'C' NOT NULL,
    CONSTRAINT "DIC_CONFIDENTIALITY_CK1" CHECK ("STATUS" IN ('C','O'))
)
;



COMMENT ON TABLE "DIC_CONFIDENTIALITY" IS 'Dictionary of codes to describe resource confidentiality'
;
COMMENT ON COLUMN "DIC_CONFIDENTIALITY"."CODE" IS 'Code Identifying a confidentiality status. This is the primary key of this table.'
;
COMMENT ON COLUMN "DIC_CONFIDENTIALITY"."DESCRIPTION" IS 'Full description of the CODE value.'
;
COMMENT ON COLUMN "DIC_CONFIDENTIALITY"."TRANSLATION" IS 'A short translation of the code value .'
;
COMMENT ON COLUMN "DIC_CONFIDENTIALITY"."STATUS" IS 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.'
;
-- 
-- TABLE: "DIC_CRS_HORIZ_CS" 
--

CREATE TABLE "DIC_CRS_HORIZ_CS"(
    "DESCRIPTION"           varchar(200)    NOT NULL,
    "TRANSLATION"           varchar(80)     NOT NULL,
    "EPSG_CODE"             varchar(20),
    "DATA_SOURCE"           varchar(20)     NOT NULL,
    "COORD_SYS_TYPE"        varchar(40)     NOT NULL,
    "DATUM_CODE"            varchar(20),
    "DATUM_TRANS"           varchar(80),
    "DATUM_ELLIPSOID"       varchar(80),
    "SOURCE_GEOGCS_CODE"    varchar(20),
    "PRIME_MERIDIAN"        varchar(80),
    "AREA_OF_USE_DETAILS"   varchar(500),
    "AREA_OF_USE_GROUP"     varchar(10)     NOT NULL,
    "COORD_TRF_EPSG_NAME"   varchar(50),
    "STATUS"                char(1)         NOT NULL,
    "CODE"                  varchar(20)     NOT NULL,
    "UNIT_OF_MEASURE_CODE"  varchar(20),
    CONSTRAINT "DIC_CRS_HORIZ_CS_CK1" CHECK ("STATUS" in ('C','O'))
)
;



COMMENT ON TABLE "DIC_CRS_HORIZ_CS" IS 'Dictionary table of horizontal coordinate systems'
;
COMMENT ON COLUMN "DIC_CRS_HORIZ_CS"."DESCRIPTION" IS 'Description of the coordinate system, e.g. OSGB 1936/ British National Grid.'
;
COMMENT ON COLUMN "DIC_CRS_HORIZ_CS"."TRANSLATION" IS 'A short translation of the CODE value.'
;
COMMENT ON COLUMN "DIC_CRS_HORIZ_CS"."EPSG_CODE" IS 'The EPSG code for this coordinate system, if applicable.'
;
COMMENT ON COLUMN "DIC_CRS_HORIZ_CS"."DATA_SOURCE" IS 'The source of this coordinate system name and definition, e.g. EPSG v6.8, FGDC.'
;
COMMENT ON COLUMN "DIC_CRS_HORIZ_CS"."COORD_SYS_TYPE" IS 'The type of coordinate system, inherited from EPSG database, e.g. projected, geographic 2D.'
;
COMMENT ON COLUMN "DIC_CRS_HORIZ_CS"."DATUM_CODE" IS 'Code for the horizontal datum from which the coordinate system is measured, can be used for look up in EPSG database or other non-EPSG database (not an internal foreign key).'
;
COMMENT ON COLUMN "DIC_CRS_HORIZ_CS"."DATUM_TRANS" IS 'Name of the datum of the geographic coordinate system, or of the geographic coordinate system that a projected system is based on e.g. OSGB 1936.'
;
COMMENT ON COLUMN "DIC_CRS_HORIZ_CS"."DATUM_ELLIPSOID" IS 'Name of the ellipsoid used by the geographic coordinate system datum, or by the geographic coordinate system datum that a projected system is based on , e.g. Airy 1830.'
;
COMMENT ON COLUMN "DIC_CRS_HORIZ_CS"."SOURCE_GEOGCS_CODE" IS 'Code of the geographic coordinate system that a projected system is based on; points to another record in this table.'
;
COMMENT ON COLUMN "DIC_CRS_HORIZ_CS"."PRIME_MERIDIAN" IS 'Name of the prime meridian of the datum of the geographic coordinate system, or of the geographic coordinate system that a projected system is based on e.g. Greenwich'
;
COMMENT ON COLUMN "DIC_CRS_HORIZ_CS"."AREA_OF_USE_DETAILS" IS 'Description or list of the areas of the world in which the coordinate system is applicable, free text. Inherited from EPSG'
;
COMMENT ON COLUMN "DIC_CRS_HORIZ_CS"."AREA_OF_USE_GROUP" IS 'Area of use group - WORLD, UK or UK-COMMON. This allows filtering and ordering of the dictionary to facilitate selection by users'
;
COMMENT ON COLUMN "DIC_CRS_HORIZ_CS"."COORD_TRF_EPSG_NAME" IS 'EPSG name for the coordinate transformation for this projected system'
;
COMMENT ON COLUMN "DIC_CRS_HORIZ_CS"."STATUS" IS 'Current Status of the coordinate system. This has a check constraint in C: Current, O: Obsolete.'
;
COMMENT ON COLUMN "DIC_CRS_HORIZ_CS"."CODE" IS 'Code identifying the horizontal coordinate system. This is a primary key of this table.'
;
COMMENT ON COLUMN "DIC_CRS_HORIZ_CS"."UNIT_OF_MEASURE_CODE" IS 'Unit of measure that the coordinate system should be measured in, e.g. metres, degrees. Foreign key to DIC_UNIT_OF_MEASURE.'
;
-- 
-- TABLE: "DIC_DATE_ACCURACY" 
--

CREATE TABLE "DIC_DATE_ACCURACY"(
    "CODE"         varchar(2)      NOT NULL,
    "DESCRIPTION"  varchar(100)    NOT NULL,
    "TRANSLATION"  varchar(50)     NOT NULL,
    "STATUS"       char(1)         DEFAULT 'C' NOT NULL,
    CONSTRAINT "DIC_DATE_ACCURACY_CK1" CHECK ("STATUS" IN ('C','O'))
)
;



COMMENT ON TABLE "DIC_DATE_ACCURACY" IS 'Dictionary of date accuracies or time scales'
;
COMMENT ON COLUMN "DIC_DATE_ACCURACY"."CODE" IS 'Code Identifying an accuracy of the date. This is the primary key of this table.'
;
COMMENT ON COLUMN "DIC_DATE_ACCURACY"."DESCRIPTION" IS 'Full description of the CODE value.'
;
COMMENT ON COLUMN "DIC_DATE_ACCURACY"."TRANSLATION" IS 'A short translation of the code value .'
;
COMMENT ON COLUMN "DIC_DATE_ACCURACY"."STATUS" IS 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.'
;
-- 
-- TABLE: "DIC_DEPTH_RELIABILITY" 
--

CREATE TABLE "DIC_DEPTH_RELIABILITY"(
    "CODE"         char(1)        NOT NULL,
    "DESCRIPTION"  varchar(68)    NOT NULL,
    "TRANSLATION"  varchar(50),
    "STATUS"       char(1)        DEFAULT 'C' NOT NULL,
    CONSTRAINT "DIC_DEPTH_RELIABILITY_CK1" CHECK ("STATUS" IN ('C','O'))
)
;



COMMENT ON TABLE "DIC_DEPTH_RELIABILITY" IS 'Dictionary of depth reliability values for borehole geology'
;
COMMENT ON COLUMN "DIC_DEPTH_RELIABILITY"."CODE" IS 'Code identifying the reliability of the drilled depth. This is the primary key of this table.'
;
COMMENT ON COLUMN "DIC_DEPTH_RELIABILITY"."DESCRIPTION" IS 'Full description of the CODE value.'
;
COMMENT ON COLUMN "DIC_DEPTH_RELIABILITY"."TRANSLATION" IS 'A short translation of the CODE value.'
;
COMMENT ON COLUMN "DIC_DEPTH_RELIABILITY"."STATUS" IS 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.'
;
-- 
-- TABLE: "DIC_DRILLING_METHOD" 
--

CREATE TABLE "DIC_DRILLING_METHOD"(
    "CODE"         varchar(5)      NOT NULL,
    "DESCRIPTION"  varchar(250)    NOT NULL,
    "TRANSLATION"  varchar(50),
    "STATUS"       char(1)         DEFAULT 'C' NOT NULL,
    CONSTRAINT "DIC_DRILLING_METHOD_CK1" CHECK ("STATUS" IN ('C','O'))
)
;



COMMENT ON TABLE "DIC_DRILLING_METHOD" IS 'Dictionary table to describe drilling method of a borehole'
;
COMMENT ON COLUMN "DIC_DRILLING_METHOD"."CODE" IS 'Code Identifying a drilling method. This is the primary key of this table.'
;
COMMENT ON COLUMN "DIC_DRILLING_METHOD"."DESCRIPTION" IS 'Full description of the CODE value.'
;
COMMENT ON COLUMN "DIC_DRILLING_METHOD"."TRANSLATION" IS 'A short translation of the CODE value.'
;
COMMENT ON COLUMN "DIC_DRILLING_METHOD"."STATUS" IS 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.'
;
-- 
-- TABLE: "DIC_DRILLING_PURPOSE" 
--

CREATE TABLE "DIC_DRILLING_PURPOSE"(
    "CODE"         varchar(5)      NOT NULL,
    "DESCRIPTION"  varchar(250)    NOT NULL,
    "TRANSLATION"  varchar(50),
    "STATUS"       char(1)         DEFAULT 'C' NOT NULL,
    CONSTRAINT "DIC_DRILLING_PURPOSE_CK1" CHECK ("STATUS" IN ('C','O'))
)
;



COMMENT ON TABLE "DIC_DRILLING_PURPOSE" IS 'Dictionary table of codes to describe the drilling purposes'
;
COMMENT ON COLUMN "DIC_DRILLING_PURPOSE"."CODE" IS 'Code identifying a purpose of the borehole. This is the primary key of this table.'
;
COMMENT ON COLUMN "DIC_DRILLING_PURPOSE"."DESCRIPTION" IS 'Full description of the CODE value.'
;
COMMENT ON COLUMN "DIC_DRILLING_PURPOSE"."TRANSLATION" IS 'A short translation of the CODE value.'
;
COMMENT ON COLUMN "DIC_DRILLING_PURPOSE"."STATUS" IS 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.'
;
-- 
-- TABLE: "DIC_INCLINATION" 
--

CREATE TABLE "DIC_INCLINATION"(
    "CODE"         varchar(5)      NOT NULL,
    "DESCRIPTION"  varchar(250)    NOT NULL,
    "TRANSLATION"  varchar(50),
    "STATUS"       char(1)         DEFAULT 'C' NOT NULL,
    CONSTRAINT "DIC_INCLINATION_CK1" CHECK ("STATUS" IN ('C','O'))
)
;



COMMENT ON TABLE "DIC_INCLINATION" IS 'Dictionary table describing inclination of a borehole'
;
COMMENT ON COLUMN "DIC_INCLINATION"."CODE" IS 'Code identifying inclination of the borehole. This is the primary key of this table.'
;
COMMENT ON COLUMN "DIC_INCLINATION"."DESCRIPTION" IS 'Full description of the CODE value.'
;
COMMENT ON COLUMN "DIC_INCLINATION"."TRANSLATION" IS 'A short translation of the CODE value.'
;
COMMENT ON COLUMN "DIC_INCLINATION"."STATUS" IS 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.'
;
-- 
-- TABLE: "DIC_ORD_DATUM_PREC" 
--

CREATE TABLE "DIC_ORD_DATUM_PREC"(
    "CODE"         varchar(5)      NOT NULL,
    "DESCRIPTION"  varchar(250)    NOT NULL,
    "TRANSLATION"  varchar(50),
    "STATUS"       char(1)         DEFAULT 'C' NOT NULL,
    CONSTRAINT "DIC_ORD_DATUM_PREC_CK1" CHECK ("STATUS" IN ('C','O'))
)
;



COMMENT ON TABLE "DIC_ORD_DATUM_PREC" IS 'Dictionary table describing accuracy of ordnance datum level'
;
COMMENT ON COLUMN "DIC_ORD_DATUM_PREC"."CODE" IS 'Code identifying ordnance datum level accuracy. This is the primary key of this table.'
;
COMMENT ON COLUMN "DIC_ORD_DATUM_PREC"."DESCRIPTION" IS 'Full description of the CODE value.'
;
COMMENT ON COLUMN "DIC_ORD_DATUM_PREC"."TRANSLATION" IS 'A short translation of the CODE value.'
;
COMMENT ON COLUMN "DIC_ORD_DATUM_PREC"."STATUS" IS 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.'
;
-- 
-- TABLE: "DIC_PROPERTY_TYPE" 
--

CREATE TABLE "DIC_PROPERTY_TYPE"(
    "DESCRIPTION"  varchar(100)    NOT NULL,
    "CODE"         varchar(14)     NOT NULL,
    "TRANSLATION"  varchar(50),
    "STATUS"       char(1)         DEFAULT 'C' NOT NULL,
    CONSTRAINT "DIC_PROPERTY_TYPE_CK1" CHECK ("STATUS" IN ('C','O'))
)
;



COMMENT ON TABLE "DIC_PROPERTY_TYPE" IS 'Dictionary of various property types for borehole geology'
;
COMMENT ON COLUMN "DIC_PROPERTY_TYPE"."DESCRIPTION" IS 'Full description of the CODE value.'
;
COMMENT ON COLUMN "DIC_PROPERTY_TYPE"."CODE" IS 'Code identifying a property type. This is the primary key of this table.'
;
COMMENT ON COLUMN "DIC_PROPERTY_TYPE"."TRANSLATION" IS 'A short translation of the CODE value.'
;
COMMENT ON COLUMN "DIC_PROPERTY_TYPE"."STATUS" IS 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.'
;
-- 
-- TABLE: "DIC_ROCK_ALL" 
--

CREATE TABLE "DIC_ROCK_ALL"(
    "CODE"         varchar(6)      NOT NULL,
    "DESCRIPTION"  varchar(500)    NOT NULL,
    "TRANSLATION"  varchar(500),
    "STATUS"       char(1)         DEFAULT 'C' NOT NULL,
    CONSTRAINT "DIC_ROCK_ALL_CK1" CHECK ("STATUS" IN ('C','O'))
)
;



COMMENT ON TABLE "DIC_ROCK_ALL" IS 'Dictionary table to store all the different rocks'
;
COMMENT ON COLUMN "DIC_ROCK_ALL"."CODE" IS 'Code identifying a rock. This is the primary key of this table.'
;
COMMENT ON COLUMN "DIC_ROCK_ALL"."DESCRIPTION" IS 'Full description of the CODE value.'
;
COMMENT ON COLUMN "DIC_ROCK_ALL"."TRANSLATION" IS 'A short translation of the CODE value.'
;
COMMENT ON COLUMN "DIC_ROCK_ALL"."STATUS" IS 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.'
;
-- 
-- TABLE: "DIC_UNIT_OF_MEASURE" 
--

CREATE TABLE "DIC_UNIT_OF_MEASURE"(
    "CODE"                     varchar(20)     NOT NULL,
    "DESCRIPTION"              varchar(200)    NOT NULL,
    "TRANSLATION"              varchar(80),
    "ABBREVIATION"             varchar(15),
    "EPSG_CODE"                varchar(20),
    "DATA_SOURCE"              varchar(20),
    "TARGET_UOM_CODE"          varchar(20),
    "CONV_FACTOR_NUMERATOR"    numeric(10,5),
    "CONV_FACTOR_DENOMINATOR"  numeric(10,5),
    "UNIT_OF_MEAS_DIMENSION"   varchar(50),
    "REMARKS"                  varchar(255),
    "ORIG_INFORMATION_SOURCE"  varchar(255),
    "STATUS"                   char(1)   DEFAULT 'C'      NOT NULL,
    CONSTRAINT "DIC_UNIT_OF_MEASURE_CK2" CHECK ("UNIT_OF_MEAS_DIMENSION" in ('all','length','angle','scale','volumetric rate','mass rate','temperature','mass','volume','charge per mass','time','Dimensionless','electric conductivity','volumetric mass','turbidity','area', 'density', '?', 'pressure','ratio', 'resistivity', 'slowness', 'velocity')),
    CONSTRAINT "DIC_UNIT_OF_MEASURE_CK1" CHECK ("STATUS" in ('C','O'))
)
;



COMMENT ON TABLE "DIC_UNIT_OF_MEASURE" IS 'Dictionary table to store list of measurement units'
;
COMMENT ON COLUMN "DIC_UNIT_OF_MEASURE"."CODE" IS 'Identifier of the measurement unit. This is a primary key of this table.'
;
COMMENT ON COLUMN "DIC_UNIT_OF_MEASURE"."DESCRIPTION" IS 'Full description of the CODE value.'
;
COMMENT ON COLUMN "DIC_UNIT_OF_MEASURE"."TRANSLATION" IS 'A short translation of the CODE value.'
;
COMMENT ON COLUMN "DIC_UNIT_OF_MEASURE"."ABBREVIATION" IS 'Abbreviation  code used to respresent a measurement.'
;
COMMENT ON COLUMN "DIC_UNIT_OF_MEASURE"."EPSG_CODE" IS 'EPSG code for a unit'
;
COMMENT ON COLUMN "DIC_UNIT_OF_MEASURE"."DATA_SOURCE" IS 'Source of the data'
;
COMMENT ON COLUMN "DIC_UNIT_OF_MEASURE"."TARGET_UOM_CODE" IS 'Target Unit of Measure code.'
;
COMMENT ON COLUMN "DIC_UNIT_OF_MEASURE"."CONV_FACTOR_NUMERATOR" IS 'Factor numerator to convert into Target code.'
;
COMMENT ON COLUMN "DIC_UNIT_OF_MEASURE"."CONV_FACTOR_DENOMINATOR" IS 'Factor denominator to convert into Target code.'
;
COMMENT ON COLUMN "DIC_UNIT_OF_MEASURE"."UNIT_OF_MEAS_DIMENSION" IS 'The dimension or feature for which this unit is used. For example length, pressure, temperature, angle etc.'
;
COMMENT ON COLUMN "DIC_UNIT_OF_MEASURE"."REMARKS" IS 'General remarks or comments not covered by other fields.'
;
COMMENT ON COLUMN "DIC_UNIT_OF_MEASURE"."ORIG_INFORMATION_SOURCE" IS 'Original information source.'
;
COMMENT ON COLUMN "DIC_UNIT_OF_MEASURE"."STATUS" IS 'Status of the unit. This has a check constraint in C:Current, O:Obsolete.'
;
-- 
-- TABLE: "DIC_XYSOURCE" 
--

CREATE TABLE "DIC_XYSOURCE"(
    "CODE"         varchar(5)      NOT NULL,
    "DESCRIPTION"  varchar(250)    NOT NULL,
    "TRANSLATION"  varchar(50),
    "STATUS"       char(1)         DEFAULT 'C' NOT NULL,
    CONSTRAINT "DIC_XYSOURCE_CK1" CHECK ("STATUS" IN ('C','O'))
)
;



COMMENT ON TABLE "DIC_XYSOURCE" IS 'Dictionary table describing source of geographic coordinates'
;
COMMENT ON COLUMN "DIC_XYSOURCE"."CODE" IS 'Code identifying source of geographic coordinate. This is the primary key of this table.'
;
COMMENT ON COLUMN "DIC_XYSOURCE"."DESCRIPTION" IS 'Full description of the CODE value.'
;
COMMENT ON COLUMN "DIC_XYSOURCE"."TRANSLATION" IS 'A short translation of the CODE value.'
;
COMMENT ON COLUMN "DIC_XYSOURCE"."STATUS" IS 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.'
;
-- 
-- TABLE: "LXN_UNIT" 
--

CREATE TABLE "LXN_UNIT"(
    "LEX_CODE"            varchar(5)       NOT NULL,
    "UNIT_NAME"           varchar(200)     NOT NULL,
    "UNIT_RANK_CODE"      varchar(2)       NOT NULL,
    "STATUS"              char(1)          DEFAULT 'C' NOT NULL,
    "THEME_CODE"          varchar(6)       NOT NULL,
    "DEFNSTATUS_CODE"     varchar(6)       DEFAULT 'INDEX' NOT NULL,
    "FORMAL_OR_INFORMAL"  varchar(8)       DEFAULT 'FORMAL' NOT NULL,
    "ON_OR_OFFSHORE"      varchar(9)       DEFAULT 'BOTH' NOT NULL,
    "UNITCLASS_CODE"      varchar(6)       NOT NULL,
    "PREFERRED_MAPCODE"   varchar(13)      DEFAULT 'notApplicable' NOT NULL,
    "REVISION_NUMBER"     numeric(2, 0)    DEFAULT 0 NOT NULL,
    "SCOPEBYAREA_CODE"    varchar(6)       NOT NULL,
    CONSTRAINT "LXN_UNIT_CK1" CHECK (UPPER("LEX_CODE")="LEX_CODE"),
    CONSTRAINT "LXN_UNIT_CK5" CHECK ("STATUS" in ('C', 'O')),
    CONSTRAINT "LXN_UNIT_CK2" CHECK ("FORMAL_OR_INFORMAL" in ('FORMAL', 'INFORMAL')),
    CONSTRAINT "LXN_UNIT_CK3" CHECK ("ON_OR_OFFSHORE" in ('ONSHORE', 'OFFSHORE', 'BOTH')),
    CONSTRAINT "LXN_UNIT_CK4" CHECK ("REVISION_NUMBER" >=0)
)
;



COMMENT ON TABLE "LXN_UNIT" IS 'Index table of lexicon units within lexicon database'
;
COMMENT ON COLUMN "LXN_UNIT"."LEX_CODE" IS 'A Code to uniquely identify the Lexicon Unit.
'
;
COMMENT ON COLUMN "LXN_UNIT"."UNIT_NAME" IS 'The current name of the Lexicon Unit.'
;
COMMENT ON COLUMN "LXN_UNIT"."UNIT_RANK_CODE" IS 'The codified rank of the Lexicon Unit. It must use a controlled vocabulary including unclassified and include the "ranks" of non lithostratigraphical units.
'
;
COMMENT ON COLUMN "LXN_UNIT"."STATUS" IS 'Whether the Lexicon Entry is obsolete or not. This should be O (for Obsolete) or C (for Current).
'
;
COMMENT ON COLUMN "LXN_UNIT"."THEME_CODE" IS 'This is the DiGMapGB theme. All mapped rock units appearing in DiGMapGB belong to one of four themes: Artificial , Superficial , Mass Movement, Bedrock.
 
'
;
COMMENT ON COLUMN "LXN_UNIT"."DEFNSTATUS_CODE" IS 'This is the state of the Lexicon Definition for a Lexicon Unit. It should use a codified controlled vocabulary of: Index Level; Pending upgrade; Full, pending ratification; Full, without ratification; Full.
'
;
COMMENT ON COLUMN "LXN_UNIT"."FORMAL_OR_INFORMAL" IS 'Nature of the Lexicon Unit. This should be Formal or Informal. A formal unit is one that has been named according to the recommendations of the North American Stratigraphic Code , whether or not the definition has been completed or approved.
 
'
;
COMMENT ON COLUMN "LXN_UNIT"."ON_OR_OFFSHORE" IS 'Context in which the unit name is generally used. Offshore units are those whose names are generally used below the low water mark. Onshore units are those whose names are generally used above low water mark. 
 
 
'
;
COMMENT ON COLUMN "LXN_UNIT"."UNITCLASS_CODE" IS 'This is the "type" of unit, in a broad sense. It is analogous to the subdivision of rock types by origin into "igneous", "sedimentary" and "metamorphic", but uses broadly "stratigraphical" concepts.  
  '
;
COMMENT ON COLUMN "LXN_UNIT"."PREFERRED_MAPCODE" IS 'The preferred map code for the Lexicon Unit. If the Lexicon Unit does not have a "Preferred Map Code", a value of notApplicable should be used; values of notAvailable and notEntered should also be allowed.
'
;
COMMENT ON COLUMN "LXN_UNIT"."REVISION_NUMBER" IS 'Each Lexicon Definition has one and only one Version Number.The first entry into the Lexicon (including the entry of index information) should be version 0. Subsequent versions of the Lexicon definition will be sequential integers.
'
;
COMMENT ON COLUMN "LXN_UNIT"."SCOPEBYAREA_CODE" IS 'Each Lexicon Unit definition may have one and only one "Definition Applicability" value. These terms do not refer to the geographical extent of the named unit"s outcrop but to the extent to which the definition is applicable. '
;
-- 
-- TABLE: "PROJECT" 
--

CREATE TABLE "PROJECT"(
    "PROJECT_ID"         integer         NOT NULL,
    "DESCRIPTION"        varchar(255),
    "PROJECT_TYPE_CODE"  varchar(4)       NOT NULL,
    "START_DATE"         date             NOT NULL,
    "FINISH_DATE"        date             NOT NULL,
    "PROJ_LEADER_ID"     varchar(11),
    "STATUS"             char(1)          DEFAULT 'A',
    "PROG_ID"            numeric(4, 0)    NOT NULL,
    "BUDGET"             numeric(9, 2),
    "DEPUTY_LEADER_ID"   integer,
    "PROJECT_NAME"       varchar(100)     NOT NULL,
    CONSTRAINT "PROJECT_CK1" CHECK ("STATUS" in ('A', 'C','I'))
)
;



COMMENT ON TABLE "PROJECT" IS 'Table to store list of projects and their details'
;
COMMENT ON COLUMN "PROJECT"."PROJECT_ID" IS 'Identifier of the project. This is a primary key of the table.'
;
COMMENT ON COLUMN "PROJECT"."DESCRIPTION" IS 'Long Description of the project.'
;
COMMENT ON COLUMN "PROJECT"."PROJECT_TYPE_CODE" IS 'Type of the project. For example: Commercial, Science Budget, Enquiries and Sales etc. This can be constrained against a dictionary table.'
;
COMMENT ON COLUMN "PROJECT"."START_DATE" IS 'Start Date of the project.'
;
COMMENT ON COLUMN "PROJECT"."FINISH_DATE" IS 'Finish Date of the project.'
;
COMMENT ON COLUMN "PROJECT"."PROJ_LEADER_ID" IS 'Identifier of the project leader assigned to the project.'
;
COMMENT ON COLUMN "PROJECT"."STATUS" IS 'Current Status of the project. This has a check constraint in A: Active, C: Completed, I: Inactive.'
;
COMMENT ON COLUMN "PROJECT"."PROG_ID" IS 'Identifier of the programme the project is part of.'
;
COMMENT ON COLUMN "PROJECT"."BUDGET" IS 'Budget allocated to the project'
;
COMMENT ON COLUMN "PROJECT"."DEPUTY_LEADER_ID" IS 'Identifier of the deputy Leader assigned to the project.'
;
COMMENT ON COLUMN "PROJECT"."PROJECT_NAME" IS 'Name of the project.'
;
-- 
-- TABLE: "DIC_SOURCE_MEDIUM"
--

CREATE TABLE "DIC_SOURCE_MEDIUM"(
    "CODE"         varchar(5)      NOT NULL,
    "DESCRIPTION"  varchar(255),
    "TRANSLATION"  varchar(50)     NOT NULL,
    "STATUS"       char(1)
)
;



COMMENT ON TABLE "DIC_SOURCE_MEDIUM" IS 'Dictionary of codes to describe source mediums/materials'
;
COMMENT ON COLUMN "DIC_SOURCE_MEDIUM"."CODE" IS 'Identifier of the source medium. This is a primary key of this table.'
;
COMMENT ON COLUMN "DIC_SOURCE_MEDIUM"."DESCRIPTION" IS 'Long description of the source medium.'
;
COMMENT ON COLUMN "DIC_SOURCE_MEDIUM"."TRANSLATION" IS 'Name of the source medium.'
;
COMMENT ON COLUMN "DIC_SOURCE_MEDIUM"."STATUS" IS 'Flag denoting the status of the CODE. This has a check constraint in C:Current, O:Obsolete.'
;
-- 
-- TABLE: "STAFF" 
--

CREATE TABLE "STAFF"(
    "STAFF_ID"        varchar(11)     NOT NULL,
    "FIRST_NAME"      varchar(50),
    "LAST_NAME"       varchar(30)     NOT NULL,
    "NAME_PREFIX"     varchar(4),
    "BUSINESS_TITLE"  varchar(64)     NOT NULL,
    "JOB_CODE"        varchar(240)    NOT NULL,
    "LOCATION"        varchar(26),
    "EMAIL_ID"        varchar(70),
    "STATUS_CODE"     varchar(2)
)
;



COMMENT ON TABLE "STAFF" IS 'Table to store list of staff and their details'
;
COMMENT ON COLUMN "STAFF"."STAFF_ID" IS 'Identifier of the staff. This is a primary key of this table.'
;
COMMENT ON COLUMN "STAFF"."FIRST_NAME" IS 'First Name of the staff.'
;
COMMENT ON COLUMN "STAFF"."LAST_NAME" IS 'Last Name of the staff.'
;
COMMENT ON COLUMN "STAFF"."NAME_PREFIX" IS 'Prefix for the Name.'
;
COMMENT ON COLUMN "STAFF"."BUSINESS_TITLE" IS 'Business Title of the staff.'
;
COMMENT ON COLUMN "STAFF"."JOB_CODE" IS 'Identifier of the staff job. This can be constrained against a dictionary.'
;
COMMENT ON COLUMN "STAFF"."LOCATION" IS 'Location of the Staff in the organisation.'
;
COMMENT ON COLUMN "STAFF"."EMAIL_ID" IS 'Email Address of the staff.'
;
COMMENT ON COLUMN "STAFF"."STATUS_CODE" IS 'Employment Status of the staff. This can be constrained against a dictionary. Possible values like ''A'' : Active, ''T'': Terminated, ''C'': Career Break.'
;
-- 
-- TABLE: "BHD_INDEX" 
--

ALTER TABLE "BHD_INDEX" ADD 
    CONSTRAINT "BHD_INDEX_PK" PRIMARY KEY ("BHD_INDEX_ID")
;

-- 
-- TABLE: "BHD_LOG" 
--

ALTER TABLE "BHD_LOG" ADD 
    CONSTRAINT "BHD_LOG_PK" PRIMARY KEY ("BHD_LOG_ID")
;

-- 
-- TABLE: "BHD_LOG_SOURCE"
--

ALTER TABLE "BHD_LOG_SOURCE" ADD
    CONSTRAINT "BHD_LOG_SOURCE_PK" PRIMARY KEY ("BHD_LOG_SOURCE_ID")
;

-- 
-- TABLE: "BHD_LOG_PROPERTY" 
--

ALTER TABLE "BHD_LOG_PROPERTY" ADD 
    CONSTRAINT "BHD_LOG_PROPERTY_PK" PRIMARY KEY ("BHD_LOG_ID", "PROPERTY_TYPE_CODE", "PROPERTY_VALUE")
;

-- 
-- TABLE: "DIC_BASE_BED" 
--

ALTER TABLE "DIC_BASE_BED" ADD 
    CONSTRAINT "DIC_BASE_BED_PK" PRIMARY KEY ("CODE")
;

-- 
-- TABLE: "DIC_BOREHOLE_DIRECTION" 
--

ALTER TABLE "DIC_BOREHOLE_DIRECTION" ADD 
    CONSTRAINT "DIC_BOREHOLE_DIRECTION_PK" PRIMARY KEY ("CODE")
;

-- 
-- TABLE: "DIC_COMPANY" 
--

ALTER TABLE "DIC_COMPANY" ADD 
    CONSTRAINT "DIC_COMPANY_PK" PRIMARY KEY ("CODE")
;

-- 
-- TABLE: "DIC_CONFIDENTIALITY" 
--

ALTER TABLE "DIC_CONFIDENTIALITY" ADD 
    CONSTRAINT "DIC_CONFIDENTIALITY_PK" PRIMARY KEY ("CODE")
;

-- 
-- TABLE: "DIC_CRS_HORIZ_CS" 
--

ALTER TABLE "DIC_CRS_HORIZ_CS" ADD 
    CONSTRAINT "DIC_CRS_HORIZ_CS_PK" PRIMARY KEY ("CODE")
;

-- 
-- TABLE: "DIC_DATE_ACCURACY" 
--

ALTER TABLE "DIC_DATE_ACCURACY" ADD 
    CONSTRAINT "DIC_DATE_ACCURACY_PK" PRIMARY KEY ("CODE")
;

-- 
-- TABLE: "DIC_DEPTH_RELIABILITY" 
--

ALTER TABLE "DIC_DEPTH_RELIABILITY" ADD 
    CONSTRAINT "DIC_DEPTH_RELIABILITY_PK" PRIMARY KEY ("CODE")
;

-- 
-- TABLE: "DIC_DRILLING_METHOD" 
--

ALTER TABLE "DIC_DRILLING_METHOD" ADD 
    CONSTRAINT "DIC_DRILLING_METHOD_PK" PRIMARY KEY ("CODE")
;

-- 
-- TABLE: "DIC_DRILLING_PURPOSE" 
--

ALTER TABLE "DIC_DRILLING_PURPOSE" ADD 
    CONSTRAINT "DIC_DRILLING_PURPOSE_PK" PRIMARY KEY ("CODE")
;

-- 
-- TABLE: "DIC_INCLINATION" 
--

ALTER TABLE "DIC_INCLINATION" ADD 
    CONSTRAINT "DIC_INCLINATION_PK" PRIMARY KEY ("CODE")
;

-- 
-- TABLE: "DIC_ORD_DATUM_PREC" 
--

ALTER TABLE "DIC_ORD_DATUM_PREC" ADD 
    CONSTRAINT "DIC_ORD_DATUM_PREC_PK" PRIMARY KEY ("CODE")
;

-- 
-- TABLE: "DIC_PROPERTY_TYPE" 
--

ALTER TABLE "DIC_PROPERTY_TYPE" ADD 
    CONSTRAINT "DIC_PROPERTY_TYPE_PK" PRIMARY KEY ("CODE")
;

-- 
-- TABLE: "DIC_ROCK_ALL" 
--

ALTER TABLE "DIC_ROCK_ALL" ADD 
    CONSTRAINT "DIC_ROCK_ALL_PK" PRIMARY KEY ("CODE")
;

-- 
-- TABLE: "DIC_UNIT_OF_MEASURE" 
--

ALTER TABLE "DIC_UNIT_OF_MEASURE" ADD 
    CONSTRAINT "DIC_UNIT_OF_MEASURE_PK" PRIMARY KEY ("CODE")
;

-- 
-- TABLE: "DIC_XYSOURCE" 
--

ALTER TABLE "DIC_XYSOURCE" ADD 
    CONSTRAINT "DIC_XYSOURCE_PK" PRIMARY KEY ("CODE")
;

-- 
-- TABLE: "LXN_UNIT" 
--

ALTER TABLE "LXN_UNIT" ADD 
    CONSTRAINT "LXN_UNIT_PK" PRIMARY KEY ("LEX_CODE")
;

-- 
-- TABLE: "PROJECT" 
--

ALTER TABLE "PROJECT" ADD 
    CONSTRAINT "PROJECT_PK" PRIMARY KEY ("PROJECT_ID")
;

-- 
-- TABLE: "DIC_SOURCE_MEDIUM"
--

ALTER TABLE "DIC_SOURCE_MEDIUM" ADD
    CONSTRAINT "SOURCE_PK" PRIMARY KEY ("CODE")
;

-- 
-- TABLE: "STAFF" 
--

ALTER TABLE "STAFF" ADD 
    CONSTRAINT "STAFF_PK" PRIMARY KEY ("STAFF_ID")
;


-- 
-- TABLE: "BHD_INDEX" 
--

ALTER TABLE "BHD_INDEX" ADD CONSTRAINT "BHD_INDEX_FK1" 
    FOREIGN KEY ("DRILLED_DATE_PREC_CODE")
    REFERENCES "DIC_DATE_ACCURACY"("CODE")
;

ALTER TABLE "BHD_INDEX" ADD CONSTRAINT "BHD_INDEX_FK10" 
    FOREIGN KEY ("EPSG_CODE")
    REFERENCES "DIC_CRS_HORIZ_CS"("CODE")
;

ALTER TABLE "BHD_INDEX" ADD CONSTRAINT "BHD_INDEX_FK2" 
    FOREIGN KEY ("XY_SOURCE_CODE")
    REFERENCES "DIC_XYSOURCE"("CODE")
;

ALTER TABLE "BHD_INDEX" ADD CONSTRAINT "BHD_INDEX_FK3" 
    FOREIGN KEY ("CONFIDENTIALITY_CODE")
    REFERENCES "DIC_CONFIDENTIALITY"("CODE")
;

ALTER TABLE "BHD_INDEX" ADD CONSTRAINT "BHD_INDEX_FK4" 
    FOREIGN KEY ("INCLINATION_TYPE_CODE")
    REFERENCES "DIC_INCLINATION"("CODE")
;

ALTER TABLE "BHD_INDEX" ADD CONSTRAINT "BHD_INDEX_FK5" 
    FOREIGN KEY ("START_POINT_TYPE_CODE")
    REFERENCES "DIC_BOREHOLE_DIRECTION"("CODE")
;

ALTER TABLE "BHD_INDEX" ADD CONSTRAINT "BHD_INDEX_FK6" 
    FOREIGN KEY ("START_HEIGHT_PREC_CODE")
    REFERENCES "DIC_ORD_DATUM_PREC"("CODE")
;

ALTER TABLE "BHD_INDEX" ADD CONSTRAINT "BHD_INDEX_FK7" 
    FOREIGN KEY ("DRILLING_METHOD_CODE")
    REFERENCES "DIC_DRILLING_METHOD"("CODE")
;

ALTER TABLE "BHD_INDEX" ADD CONSTRAINT "BHD_INDEX_FK8" 
    FOREIGN KEY ("CLIENT_CODE")
    REFERENCES "DIC_COMPANY"("CODE")
;

ALTER TABLE "BHD_INDEX" ADD CONSTRAINT "BHD_INDEX_FK9" 
    FOREIGN KEY ("PURPOSE_CODE")
    REFERENCES "DIC_DRILLING_PURPOSE"("CODE")
;


-- 
-- TABLE: "BHD_LOG" 
--

ALTER TABLE "BHD_LOG" ADD CONSTRAINT "BHD_LOG_FK1" 
    FOREIGN KEY ("BHD_INDEX_ID")
    REFERENCES "BHD_INDEX"("BHD_INDEX_ID")
;

ALTER TABLE "BHD_LOG" ADD CONSTRAINT "BHD_LOG_FK2" 
    FOREIGN KEY ("BHD_LOG_SOURCE_ID")
    REFERENCES "BHD_LOG_SOURCE"("BHD_LOG_SOURCE_ID")
;

ALTER TABLE "BHD_LOG" ADD CONSTRAINT "BHD_LOG_FK3" 
    FOREIGN KEY ("DEPTH_RELIABILITY_CODE")
    REFERENCES "DIC_DEPTH_RELIABILITY"("CODE")
;

ALTER TABLE "BHD_LOG" ADD CONSTRAINT "BHD_LOG_FK4" 
    FOREIGN KEY ("ORIGINAL_UNIT_CODE")
    REFERENCES "DIC_UNIT_OF_MEASURE"("CODE")
;

ALTER TABLE "BHD_LOG" ADD CONSTRAINT "BHD_LOG_FK5" 
    FOREIGN KEY ("LITHOLOGY_CODE")
    REFERENCES "DIC_ROCK_ALL"("CODE")
;

ALTER TABLE "BHD_LOG" ADD CONSTRAINT "BHD_LOG_FK6" 
    FOREIGN KEY ("LITHOSTRAT_CODE")
    REFERENCES "LXN_UNIT"("LEX_CODE")
;

ALTER TABLE "BHD_LOG" ADD CONSTRAINT "BHD_LOG_FK7" 
    FOREIGN KEY ("BASE_BED_CODE")
    REFERENCES "DIC_BASE_BED"("CODE")
;


-- 
-- TABLE: "BHD_LOG_SOURCE"
--

ALTER TABLE "BHD_LOG_SOURCE" ADD CONSTRAINT "BHD_LOG_SOURCE_FK1"
    FOREIGN KEY ("PROJECT_ID")
    REFERENCES "PROJECT"("PROJECT_ID")
;

ALTER TABLE "BHD_LOG_SOURCE" ADD CONSTRAINT "BHD_LOG_SOURCE_FK2"
    FOREIGN KEY ("INTERPRETER_ID")
    REFERENCES "STAFF"("STAFF_ID")
;

ALTER TABLE "BHD_LOG_SOURCE" ADD CONSTRAINT "BHD_LOG_SOURCE_FK3"
    FOREIGN KEY ("SOURCE_MEDIUM_CODE")
    REFERENCES "DIC_SOURCE_MEDIUM"("CODE")
;


-- 
-- TABLE: "BHD_LOG_PROPERTY" 
--

ALTER TABLE "BHD_LOG_PROPERTY" ADD CONSTRAINT "BHD_LOG_PROPERTY_FK1" 
    FOREIGN KEY ("BHD_LOG_ID")
    REFERENCES "BHD_LOG"("BHD_LOG_ID")
;

ALTER TABLE "BHD_LOG_PROPERTY" ADD CONSTRAINT "BHD_LOG_PROPERTY_FK2" 
    FOREIGN KEY ("PROPERTY_TYPE_CODE")
    REFERENCES "DIC_PROPERTY_TYPE"("CODE")
;


-- 
-- TABLE: "DIC_CRS_HORIZ_CS" 
--

ALTER TABLE "DIC_CRS_HORIZ_CS" ADD CONSTRAINT "DIC_CRS_HORIZ_CS_FK1" 
    FOREIGN KEY ("UNIT_OF_MEASURE_CODE")
    REFERENCES "DIC_UNIT_OF_MEASURE"("CODE")
;

ALTER TABLE "DIC_CRS_HORIZ_CS" ADD CONSTRAINT "DIC_CRS_HORIZ_CS_FK2" 
    FOREIGN KEY ("SOURCE_GEOGCS_CODE")
    REFERENCES "DIC_CRS_HORIZ_CS"("CODE")
;


-- 
-- TABLE: "DIC_UNIT_OF_MEASURE" 
--

ALTER TABLE "DIC_UNIT_OF_MEASURE" ADD CONSTRAINT "DIC_UNIT_OF_MEASURE_FK1" 
    FOREIGN KEY ("TARGET_UOM_CODE")
    REFERENCES "DIC_UNIT_OF_MEASURE"("CODE")
;


