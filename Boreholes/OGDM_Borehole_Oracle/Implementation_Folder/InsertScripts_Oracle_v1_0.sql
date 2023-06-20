--
-- DIC_BASE_BED --
--
SET DEFINE OFF;
Insert into DIC_BASE_BED
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('!', 'Not Available - Applicable but try as we might,we can''t find a value', 'Not Available', 'C');
Insert into DIC_BASE_BED
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('?', 'Not Entered - We haven''t assigned a value yet', 'Not Entered', 'C');
Insert into DIC_BASE_BED
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('-', 'Not Applicable', 'Not Applicable', 'C');
Insert into DIC_BASE_BED
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('AC', 'Angular Unconformity', 'Angular Unconformity', 'C');
Insert into DIC_BASE_BED
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('ES', 'Erosion Surface', 'Erosion Surface', 'C');
COMMIT;


--
-- DIC_BOREHOLE_DIRECTION --
--
SET DEFINE OFF;
Insert into DIC_BOREHOLE_DIRECTION
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('!', 'Not Available - Applicable but try as we might,we can''t find a value', 'Not Available', 'C');
Insert into DIC_BOREHOLE_DIRECTION
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('?', 'Not Entered - We haven''t assigned a value yet', 'Not Entered', 'C');
Insert into DIC_BOREHOLE_DIRECTION
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('-', 'Not Applicable', 'Not Applicable', 'C');
Insert into DIC_BOREHOLE_DIRECTION
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('S', 'Borehole drilled from ground surface', 'Surface', 'C');
Insert into DIC_BOREHOLE_DIRECTION
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('U', 'Borehole drilled underground', 'Underground', 'C');
COMMIT;


--
-- DIC_COMPANY --
--
SET DEFINE OFF;
Insert into DIC_COMPANY
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('!', 'Not Available - Applicable but try as we might,we can''t find a value', 'Not Available', 'C');
Insert into DIC_COMPANY
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('?', 'Not Entered - We haven''t assigned a value yet', 'Not Entered', 'C');
Insert into DIC_COMPANY
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('-', 'Not Applicable', 'Not Applicable', 'C');
Insert into DIC_COMPANY
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('ABC', 'ABC Corporation Ltd.', 'ABC Corporation Ltd.', 'C');
COMMIT;


--
-- DIC_CONFIDENTIALITY --
--
SET DEFINE OFF;
Insert into DIC_CONFIDENTIALITY
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('!', 'Not Available - Applicable but try as we might,we can''t find a value', 'Not Available', 'C');
Insert into DIC_CONFIDENTIALITY
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('?', 'Not Entered - We haven''t assigned a value yet', 'Not Entered', 'C');
Insert into DIC_CONFIDENTIALITY
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('-', 'Not Applicable', 'Not Applicable', 'C');
Insert into DIC_CONFIDENTIALITY
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('001', 'Available for general disclosure', 'Non-Confidential', 'C');
Insert into DIC_CONFIDENTIALITY
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('002', 'Available for someone who can be entrusted with information', 'Confidential', 'C');
COMMIT;



--
-- DIC_UNIT_OF_MEASURE --
--
SET DEFINE OFF;
Insert into DIC_UNIT_OF_MEASURE
   (CODE, DESCRIPTION, TRANSLATION, ABBREVIATION, EPSG_CODE, 
    DATA_SOURCE, TARGET_UOM_CODE, CONV_FACTOR_NUMERATOR, CONV_FACTOR_DENOMINATOR, UNIT_OF_MEAS_DIMENSION, 
    REMARKS, ORIG_INFORMATION_SOURCE, STATUS)
 Values
   ('!', 'Not Available - Applicable but try as we might,we can''t find a value', 'Not Available', NULL, NULL, 
    NULL, NULL, NULL, NULL, NULL, 
    NULL, NULL, 'C');
Insert into DIC_UNIT_OF_MEASURE
   (CODE, DESCRIPTION, TRANSLATION, ABBREVIATION, EPSG_CODE, 
    DATA_SOURCE, TARGET_UOM_CODE, CONV_FACTOR_NUMERATOR, CONV_FACTOR_DENOMINATOR, UNIT_OF_MEAS_DIMENSION, 
    REMARKS, ORIG_INFORMATION_SOURCE, STATUS)
 Values
   ('?', 'Not Entered - We haven''t assigned a value yet', 'Not Entered', NULL, NULL, 
    NULL, NULL, NULL, NULL, NULL, 
    NULL, NULL, 'C');
Insert into DIC_UNIT_OF_MEASURE
   (CODE, DESCRIPTION, TRANSLATION, ABBREVIATION, EPSG_CODE, 
    DATA_SOURCE, TARGET_UOM_CODE, CONV_FACTOR_NUMERATOR, CONV_FACTOR_DENOMINATOR, UNIT_OF_MEAS_DIMENSION, 
    REMARKS, ORIG_INFORMATION_SOURCE, STATUS)
 Values
   ('-', 'Not Applicable', 'Not Applicable', NULL, NULL, 
    NULL, NULL, NULL, NULL, NULL, 
    NULL, NULL, 'C');
Insert into DIC_UNIT_OF_MEASURE
   (CODE, DESCRIPTION, TRANSLATION, ABBREVIATION, EPSG_CODE, 
    DATA_SOURCE, TARGET_UOM_CODE, CONV_FACTOR_NUMERATOR, CONV_FACTOR_DENOMINATOR, UNIT_OF_MEAS_DIMENSION, 
    REMARKS, ORIG_INFORMATION_SOURCE, STATUS)
 Values
   ('SQM', 'Square Metre', 'Square Metre', 'm2', NULL, 
    'BGS', NULL, NULL, NULL, 'area', 
    NULL, NULL, 'C');
Insert into DIC_UNIT_OF_MEASURE
   (CODE, DESCRIPTION, TRANSLATION, ABBREVIATION, EPSG_CODE, 
    DATA_SOURCE, TARGET_UOM_CODE, CONV_FACTOR_NUMERATOR, CONV_FACTOR_DENOMINATOR, UNIT_OF_MEAS_DIMENSION, 
    REMARKS, ORIG_INFORMATION_SOURCE, STATUS)
 Values
   ('YBP', 'Years before present', 'Years before present', 'ybp', NULL, 
    'BGS', 'YBP', 1, 1, 'time', 
    NULL, NULL, 'C');
Insert into DIC_UNIT_OF_MEASURE
   (CODE, DESCRIPTION, TRANSLATION, ABBREVIATION, EPSG_CODE, 
    DATA_SOURCE, TARGET_UOM_CODE, CONV_FACTOR_NUMERATOR, CONV_FACTOR_DENOMINATOR, UNIT_OF_MEAS_DIMENSION, 
    REMARKS, ORIG_INFORMATION_SOURCE, STATUS)
 Values
   ('KA', 'Thousand years ago', 'Thousand years ago', 'ka', NULL, 
    'BGS', 'YBP', 1000, 1, 'time', 
    NULL, NULL, 'C');
Insert into DIC_UNIT_OF_MEASURE
   (CODE, DESCRIPTION, TRANSLATION, ABBREVIATION, EPSG_CODE, 
    DATA_SOURCE, TARGET_UOM_CODE, CONV_FACTOR_NUMERATOR, CONV_FACTOR_DENOMINATOR, UNIT_OF_MEAS_DIMENSION, 
    REMARKS, ORIG_INFORMATION_SOURCE, STATUS)
 Values
   ('9001', 'Metre', 'Metre', 'm', '9001', 
    'EPSG', '9001', 1, 1, 'length', 
    'Also known as International metre. SI standard unit.', 'ISO 1000', 'C');
Insert into DIC_UNIT_OF_MEASURE
   (CODE, DESCRIPTION, TRANSLATION, ABBREVIATION, EPSG_CODE, 
    DATA_SOURCE, TARGET_UOM_CODE, CONV_FACTOR_NUMERATOR, CONV_FACTOR_DENOMINATOR, UNIT_OF_MEAS_DIMENSION, 
    REMARKS, ORIG_INFORMATION_SOURCE, STATUS)
 Values
   ('9101', 'Radian', 'Radian', 'rad', '9101', 
    'EPSG', '9101', 1, 1, 'angle', 
    'SI standard unit.', 'ISO 1000:1992', 'C');
Insert into DIC_UNIT_OF_MEASURE
   (CODE, DESCRIPTION, TRANSLATION, ABBREVIATION, EPSG_CODE, 
    DATA_SOURCE, TARGET_UOM_CODE, CONV_FACTOR_NUMERATOR, CONV_FACTOR_DENOMINATOR, UNIT_OF_MEAS_DIMENSION, 
    REMARKS, ORIG_INFORMATION_SOURCE, STATUS)
 Values
   ('9122', 'Degree (supplier to define representation)', 'degree (supplier to Define representation)', NULL, '9122', 
    'EPSG', '9101', 3.1415, 180, 'angle', 
    '= pi/180 radians. The degree representation (e.g. decimal, DMSH, etc.) must be clarified by suppliers of data associated with this code.', 'EPSG', 'C');
COMMIT;


--
-- DIC_CRS_HORIZ_CS --
--
SET DEFINE OFF;

Insert into DIC_CRS_HORIZ_CS
   (CODE, DESCRIPTION, TRANSLATION, EPSG_CODE, DATA_SOURCE, 
    COORD_SYS_TYPE, DATUM_CODE, DATUM_TRANS, DATUM_ELLIPSOID, SOURCE_GEOGCS_CODE, 
    PRIME_MERIDIAN, AREA_OF_USE_DETAILS, AREA_OF_USE_GROUP, COORD_TRF_EPSG_NAME, UNIT_OF_MEASURE_CODE, 
    STATUS)
 Values
   ('4277', 'OSGB 1936', 'OSGB 1936', '4277', 'EPSG v6.8', 
    'geographic 2D', '6277', 'OSGB 1936', 'Airy 1830', NULL, 
    'Greenwich', 'UK - Great Britain onshore', 'UK', NULL, '9122', 
    'C');
Insert into DIC_CRS_HORIZ_CS
   (CODE, DESCRIPTION, TRANSLATION, EPSG_CODE, DATA_SOURCE, 
    COORD_SYS_TYPE, DATUM_CODE, DATUM_TRANS, DATUM_ELLIPSOID, SOURCE_GEOGCS_CODE, 
    PRIME_MERIDIAN, AREA_OF_USE_DETAILS, AREA_OF_USE_GROUP, COORD_TRF_EPSG_NAME, UNIT_OF_MEASURE_CODE, 
    STATUS)
 Values
   ('4299', 'TM65', 'TM65', '4299', 'EPSG v6.8', 
    'geographic 2D', '6299', 'TM65', 'Airy Modified 1849', NULL, 
    'Greenwich', 'Ireland', 'UK', NULL, '9122', 
    'C');
Insert into DIC_CRS_HORIZ_CS
   (CODE, DESCRIPTION, TRANSLATION, EPSG_CODE, DATA_SOURCE, 
    COORD_SYS_TYPE, DATUM_CODE, DATUM_TRANS, DATUM_ELLIPSOID, SOURCE_GEOGCS_CODE, 
    PRIME_MERIDIAN, AREA_OF_USE_DETAILS, AREA_OF_USE_GROUP, COORD_TRF_EPSG_NAME, UNIT_OF_MEASURE_CODE, 
    STATUS)
 Values
   ('4230', 'ED50', 'ED50', '4230', 'EPSG v6.8', 
    'geographic 2D', '6230', 'European Datum 1950', 'International 1924', NULL, 
    'Greenwich', 'Europe - ED50 by country', 'UK-COMMON', NULL, '9122', 
    'C');
Insert into DIC_CRS_HORIZ_CS
   (CODE, DESCRIPTION, TRANSLATION, EPSG_CODE, DATA_SOURCE, 
    COORD_SYS_TYPE, DATUM_CODE, DATUM_TRANS, DATUM_ELLIPSOID, SOURCE_GEOGCS_CODE, 
    PRIME_MERIDIAN, AREA_OF_USE_DETAILS, AREA_OF_USE_GROUP, COORD_TRF_EPSG_NAME, UNIT_OF_MEASURE_CODE, 
    STATUS)
 Values
   ('27700', 'OSGB 1936 / British National Grid', 'OSGB 1936 / British National Grid', '27700', 'EPSG v6.8', 
    'projected', '6277', 'OSGB 1936', 'Airy 1830', '4277', 
    'Greenwich', 'UK - Great Britain onshore', 'UK-COMMON', NULL, '9001', 
    'C');
Insert into DIC_CRS_HORIZ_CS
   (CODE, DESCRIPTION, TRANSLATION, EPSG_CODE, DATA_SOURCE, 
    COORD_SYS_TYPE, DATUM_CODE, DATUM_TRANS, DATUM_ELLIPSOID, SOURCE_GEOGCS_CODE, 
    PRIME_MERIDIAN, AREA_OF_USE_DETAILS, AREA_OF_USE_GROUP, COORD_TRF_EPSG_NAME, UNIT_OF_MEASURE_CODE, 
    STATUS)
 Values
   ('29900', 'TM65 / Irish National Grid', 'TM65 / Irish National Grid', '29900', 'EPSG v6.8', 
    'projected', '6299', 'TM65', 'Airy Modified 1849', '4299', 
    'Greenwich', 'Europe - Ireland (Republic and Ulster)', 'UK', NULL, '9001', 
    'C');
COMMIT;


--
-- DIC_DATE_ACCURACY --
--
SET DEFINE OFF;
Insert into DIC_DATE_ACCURACY
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('!', 'Not Available - Applicable but try as we might,we can''t find a value', 'Not Available', 'C');
Insert into DIC_DATE_ACCURACY
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('?', 'Not Entered - We haven''t assigned a value yet', 'Not Entered', 'C');
Insert into DIC_DATE_ACCURACY
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('-', 'Not Applicable', 'Not Applicable', 'C');
Insert into DIC_DATE_ACCURACY
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('D', 'To the nearest day', 'Day', 'C');
Insert into DIC_DATE_ACCURACY
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('M', 'To the nearest minute', 'Minute', 'C');
COMMIT;


--
-- DIC_DEPTH_RELIABILITY --
--
SET DEFINE OFF;
Insert into DIC_DEPTH_RELIABILITY
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('!', 'Not Available - Applicable but try as we might,we can''t find a value', 'Not Available', 'C');
Insert into DIC_DEPTH_RELIABILITY
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('?', 'Not Entered - We haven''t assigned a value yet', 'Not Entered', 'C');
Insert into DIC_DEPTH_RELIABILITY
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('-', 'Not Applicable', 'Not Applicable', 'C');
Insert into DIC_DEPTH_RELIABILITY
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('1', 'Definite', 'Definite', 'C');
Insert into DIC_DEPTH_RELIABILITY
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('2', 'Probable', 'Probable', 'C');
COMMIT;


--
-- DIC_DRILLING_METHOD --
--
SET DEFINE OFF;
Insert into DIC_DRILLING_METHOD
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('!', 'Not Available - Applicable but try as we might,we can''t find a value', 'Not Available', 'C');
Insert into DIC_DRILLING_METHOD
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('?', 'Not Entered - We haven''t assigned a value yet', 'Not Entered', 'C');
Insert into DIC_DRILLING_METHOD
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('-', 'Not Applicable', 'Not Applicable', 'C');
Insert into DIC_DRILLING_METHOD
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('H', 'Hand Auger', 'Hand Auger', 'C');
Insert into DIC_DRILLING_METHOD
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('D', 'Down-hole air-hammer', 'Down-hole air-hammer', 'C');
COMMIT;

--
-- DIC_DRILLING_PURPOSE--
--
SET DEFINE OFF;
Insert into DIC_DRILLING_PURPOSE
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('!', 'Not Available - Applicable but try as we might,we can''t find a value', 'Not Available', 'C');
Insert into DIC_DRILLING_PURPOSE
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('?', 'Not Entered - We haven''t assigned a value yet', 'Not Entered', 'C');
Insert into DIC_DRILLING_PURPOSE
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('-', 'Not Applicable', 'Not Applicable', 'C');
Insert into DIC_DRILLING_PURPOSE
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('A', 'Mineral Assessment', 'Mineral Assessment', 'C');
Insert into DIC_DRILLING_PURPOSE
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('M', 'Motorway or road investigations', 'Motorway or road investigations', 'C');
COMMIT;


--
-- DIC_INCLINATION --
--
SET DEFINE OFF;
Insert into DIC_INCLINATION
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('!', 'Not Available - Applicable but try as we might,we can''t find a value', 'Not Available', 'C');
Insert into DIC_INCLINATION
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('?', 'Not Entered - We haven''t assigned a value yet', 'Not Entered', 'C');
Insert into DIC_INCLINATION
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('-', 'Not Applicable', 'Not Applicable', 'C');
Insert into DIC_INCLINATION
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('1', 'Horizontal bore', 'Horizontal', 'C');
Insert into DIC_INCLINATION
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('2', 'Vertical up and down bore', 'Vertical up and down', 'C');
COMMIT;


--
-- DIC_ORD_DATUM_PREC --
--
SET DEFINE OFF;
Insert into DIC_ORD_DATUM_PREC
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('!', 'Not Available - Applicable but try as we might,we can''t find a value', 'Not Available', 'C');
Insert into DIC_ORD_DATUM_PREC
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('?', 'Not Entered - We haven''t assigned a value yet', 'Not Entered', 'C');
Insert into DIC_ORD_DATUM_PREC
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('-', 'Not Applicable', 'Not Applicable', 'C');
Insert into DIC_ORD_DATUM_PREC
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('2', 'Known to nearest metre', 'Known to nearest metre', 'C');
Insert into DIC_ORD_DATUM_PREC
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('1', 'Known to nearest 0.01 metres', 'Known to nearest 0.01 metres', 'C');
COMMIT;


--
-- DIC_PROPERTY_TYPE --
--
SET DEFINE OFF;
Insert into DIC_PROPERTY_TYPE
   (DESCRIPTION, CODE, TRANSLATION, STATUS)
 Values
   ('Not Available - Applicable but try as we might,we can''t find a value', '!', 'Not Available', 'C');
Insert into DIC_PROPERTY_TYPE
   (DESCRIPTION, CODE, TRANSLATION, STATUS)
 Values
   ('Not Entered - We haven''t assigned a value yet', '?', 'Not Entered', 'C');
Insert into DIC_PROPERTY_TYPE
   (DESCRIPTION, CODE, TRANSLATION, STATUS)
 Values
   ('Not Applicable', '-', 'Not Applicable', 'C');
Insert into DIC_PROPERTY_TYPE
   (DESCRIPTION, CODE, TRANSLATION, STATUS)
 Values
   ('Unit Grain Shape', 'GRNSHP', 'Unit Grain Shape', 'C');
Insert into DIC_PROPERTY_TYPE
   (DESCRIPTION, CODE, TRANSLATION, STATUS)
 Values
   ('Unit Colour', 'COL', 'Unit Colour', 'C');
Insert into DIC_PROPERTY_TYPE
   (DESCRIPTION, CODE, TRANSLATION, STATUS)
 Values
   ('Unit Grain Size', 'GRSZE', 'Unit Grain Size', 'C');
Insert into DIC_PROPERTY_TYPE
   (DESCRIPTION, CODE, TRANSLATION, STATUS)
 Values
   ('Unit bed internal structure', 'BED_INTERN', 'Unit bed internal structure', 'C');
COMMIT;


--
-- DIC_ROCK_ALL --
--
SET DEFINE OFF;
Insert into DIC_ROCK_ALL
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('!', 'Not Available - Applicable but try as we might,we can''t find a value', 'Not Available', 'C');
Insert into DIC_ROCK_ALL
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('?', 'Not Entered - We haven''t assigned a value yet', 'Not Entered', 'C');
Insert into DIC_ROCK_ALL
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('-', 'Not Applicable', 'Not Applicable', 'C');
Insert into DIC_ROCK_ALL
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('GRAV', 'Gravel', 'Gravel', 'C');
Insert into DIC_ROCK_ALL
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('FCMST', 'MUDSTONE, FRIABLE, CALCAREOUS', 'Friable calcareous mudstone', 'C');
COMMIT;



--
-- DIC_XYSOURCE --
--
SET DEFINE OFF;
Insert into DIC_XYSOURCE
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('!', 'Not Available - Applicable but try as we might,we can''t find a value', 'Not Available', 'C');
Insert into DIC_XYSOURCE
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('?', 'Not Entered - We haven''t assigned a value yet', 'Not Entered', 'C');
Insert into DIC_XYSOURCE
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('-', 'Not Applicable', 'Not Applicable', 'C');
Insert into DIC_XYSOURCE
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('GPS', 'Position derived from Global Positioning System receiver', 'Global Positioning System (GPS)', 'C');
Insert into DIC_XYSOURCE
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('OS10K', 'Positioned relative to topography on the latest available Ordnance Survey 1:10,000 scale map at the date of capture', 'OS 1:10K BASE', 'C');
Insert into DIC_XYSOURCE
   (CODE, DESCRIPTION, TRANSLATION, STATUS)
 Values
   ('IMAGE', 'Derived from georeferenced image', 'Derived from image', 'C');
COMMIT;


--
-- PROJECT --
--
SET DEFINE OFF;
Insert into PROJECT
   (PROJECT_ID, DESCRIPTION, PROJECT_TYPE_CODE, START_DATE, FINISH_DATE, 
    PROJ_LEADER_ID, STATUS, PROG_ID, BUDGET, DEPUTY_LEADER_ID, 
    PROJECT_NAME)
 Values
   (1, 'Project A description', 'S', TO_DATE('08/24/2011 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('09/25/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 
    '1', 'A', 1, 10000, 1, 
    'Project A');
COMMIT;

--
-- STAFF --
--
SET DEFINE OFF;
Insert into STAFF
   (STAFF_ID, FIRST_NAME, LAST_NAME, NAME_PREFIX, BUSINESS_TITLE, 
    JOB_CODE, LOCATION, EMAIL_ID, STATUS_CODE)
 Values
   ('1', 'Joe', 'Blogs', 'Mr.', 'Senior Geologist', 
    '1', 'Keyworth', 'joe.blogs@abc.com', 'A');
COMMIT;


--
-- DIC_SOURCE_MEDIUM --
--
SET DEFINE OFF;
Insert into DIC_SOURCE_MEDIUM
   (CODE, TRANSLATION, DESCRIPTION, STATUS)
 Values
   ('CORE', 'Borehole core', 'Physical borehole core', 'C');
COMMIT;


--
-- LXN_UNIT --
--
SET DEFINE OFF;
Insert into LXN_UNIT
   (LEX_CODE, UNIT_NAME, UNIT_RANK_CODE, STATUS, THEME_CODE, 
    DEFNSTATUS_CODE, FORMAL_OR_INFORMAL, ON_OR_OFFSHORE, UNITCLASS_CODE, PREFERRED_MAPCODE, 
    REVISION_NUMBER, SCOPEBYAREA_CODE)
 Values
   ('SMD', 'Scunthorpe Mudstone Formation', 'F', 'C', 'BEDRCK', 
    'FULL', 'FORMAL', 'ONSHORE', 'LS', 'SMd', 
    1, 'GENRAL');
Insert into LXN_UNIT
   (LEX_CODE, UNIT_NAME, UNIT_RANK_CODE, STATUS, THEME_CODE, 
    DEFNSTATUS_CODE, FORMAL_OR_INFORMAL, ON_OR_OFFSHORE, UNITCLASS_CODE, PREFERRED_MAPCODE, 
    REVISION_NUMBER, SCOPEBYAREA_CODE)
 Values
   ('PNG', 'Penarth Group', 'G', 'C', 'BEDRCK', 
    'FULL', 'FORMAL', 'BOTH', 'LS', 'PnG', 
    0, '-');
Insert into LXN_UNIT
   (LEX_CODE, UNIT_NAME, UNIT_RANK_CODE, STATUS, THEME_CODE, 
    DEFNSTATUS_CODE, FORMAL_OR_INFORMAL, ON_OR_OFFSHORE, UNITCLASS_CODE, PREFERRED_MAPCODE, 
    REVISION_NUMBER, SCOPEBYAREA_CODE)
 Values
   ('BAN', 'Blue Anchor Formation', 'F', 'C', 'BEDRCK', 
    'FULL', 'FORMAL', 'ONSHORE', 'LS', 'BAn', 
    1, 'GENRAL');
COMMIT;


--
-- BHD_LOG_SOURCE--
--
SET DEFINE OFF;
Insert into BHD_LOG_SOURCE
   (BHD_LOG_SOURCE_ID, INTERPRETER_ID, PROJECT_ID, SOURCE_MEDIUM_CODE)
 Values
   (1, '1', 1, 'CORE');
COMMIT;


--
-- BHD_INDEX --
--
SET DEFINE OFF;
Insert into BHD_INDEX
   (QS, RT, NUMB, BOREHOLE_SUFFIX, BOREHOLE_NAME, 
    XY_SOURCE_CODE, CONFIDENTIALITY_CODE, INCLINATION_TYPE_CODE, DRILLED_LENGTH, START_POINT_TYPE_CODE, 
    START_HEIGHT, START_HEIGHT_PREC_CODE, DRILLING_METHOD_CODE, CLIENT_CODE, PURPOSE_CODE, 
    COMMENTS, BHD_INDEX_ID, X, Y, EPSG_CODE, 
    XA, YA, DRILLED_DATE, DRILLED_DATE_PREC_CODE)
 Values
   ('SK63SW', 'BJ', 20, '.', 'Borehole A', 
    'GPS', '001', '2', 533.25, 'S', 
    88.7, '1', 'H', 'ABC', 'A', 
    'This is a comment', 1, 464630, 332203, '27700', 
    1, 1, TO_DATE('01/01/1975 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'D');
COMMIT;


--
-- BHD_LOG --
--
SET DEFINE OFF;
Insert into BHD_LOG
   (DRILLED_DEPTH_TOP, DRILLED_DEPTH_BASE, DEPTH_RELIABILITY_CODE, LITHOLOGY_CODE, LITHOSTRAT_CODE, 
    UNIT_DESCRIPTION, BASE_BED_CODE, BHD_LOG_ID, COMMENTS, ORIGINAL_UNIT_CODE, 
    BHD_INDEX_ID, BHD_LOG_SOURCE_ID, LAYER_ID)
 Values
   (0, 35.36, '1', 'FCMST', 'SMD', 
    'Deacription A', '?', 1, 'This is a comment', '9001', 
    1, 1, 1);
Insert into BHD_LOG
   (DRILLED_DEPTH_TOP, DRILLED_DEPTH_BASE, DEPTH_RELIABILITY_CODE, LITHOLOGY_CODE, LITHOSTRAT_CODE, 
    UNIT_DESCRIPTION, BASE_BED_CODE, BHD_LOG_ID, COMMENTS, ORIGINAL_UNIT_CODE, 
    BHD_INDEX_ID, BHD_LOG_SOURCE_ID, LAYER_ID)
 Values
   (35.36, 44.5, '1', 'FCMST', 'PNG', 
    'Description B', '?', 2, 'This is a comment', '9001', 
    1, 1, 2);
Insert into BHD_LOG
   (DRILLED_DEPTH_TOP, DRILLED_DEPTH_BASE, DEPTH_RELIABILITY_CODE, LITHOLOGY_CODE, LITHOSTRAT_CODE, 
    UNIT_DESCRIPTION, BASE_BED_CODE, BHD_LOG_ID, COMMENTS, ORIGINAL_UNIT_CODE, 
    BHD_INDEX_ID, BHD_LOG_SOURCE_ID, LAYER_ID)
 Values
   (44.5, 52.73, '2', 'FCMST', 'BAN', 
    'Description C', '!', 3, 'This is a comment', '9001', 
    1, 1, 3);
COMMIT;


--
-- BHD_LOG_PROPERTY --
--
SET DEFINE OFF;
Insert into BHD_LOG_PROPERTY
   (BHD_LOG_ID, PROPERTY_TYPE_CODE, PROPERTY_VALUE, QUALIFIER, COMMENTS)
 Values
   (1, 'COL', 'RED', NULL, 'This is a comment');
Insert into BHD_LOG_PROPERTY
   (BHD_LOG_ID, PROPERTY_TYPE_CODE, PROPERTY_VALUE, QUALIFIER, COMMENTS)
 Values
   (1, 'GRSZE', 'MEDIUM SAND', NULL, 'This is a comment');
Insert into BHD_LOG_PROPERTY
   (BHD_LOG_ID, PROPERTY_TYPE_CODE, PROPERTY_VALUE, QUALIFIER, COMMENTS)
 Values
   (2, 'COL', 'YELLOW', NULL, 'This is a comment');
Insert into BHD_LOG_PROPERTY
   (BHD_LOG_ID, PROPERTY_TYPE_CODE, PROPERTY_VALUE, QUALIFIER, COMMENTS)
 Values
   (2, 'GRNSHP', 'ANGULAR', NULL, 'This is a comment');
COMMIT;




