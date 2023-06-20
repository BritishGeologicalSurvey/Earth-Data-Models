Insert into "DIC_UNIT_OF_MEASURE"
   ("CODE", "DESCRIPTION", "TRANSLATION", "ABBREVIATION", "EPSG_CODE", 
    "DATA_SOURCE", "TARGET_UOM_CODE", "CONV_FACTOR_NUMERATOR", "CONV_FACTOR_DENOMINATOR", "UNIT_OF_MEAS_DIMENSION", 
    "REMARKS", "ORIG_INFORMATION_SOURCE", "STATUS")
 Values
   ('-', 'Not Applicable', 'Not Applicable', NULL, NULL, 
    NULL, NULL, NULL, NULL, NULL, 
    NULL, NULL, 'C');
Insert into "DIC_UNIT_OF_MEASURE"
   ("CODE", "DESCRIPTION", "TRANSLATION", "ABBREVIATION", "EPSG_CODE", 
    "DATA_SOURCE", "TARGET_UOM_CODE", "CONV_FACTOR_NUMERATOR", "CONV_FACTOR_DENOMINATOR", "UNIT_OF_MEAS_DIMENSION", 
    "REMARKS", "ORIG_INFORMATION_SOURCE", "STATUS")
 Values
   ('!', 'Not Available - Applicable but try as we might,we can''t find a value', 'Not Available', NULL, NULL, 
    NULL, NULL, NULL, NULL, NULL, 
    NULL, NULL, 'C');
Insert into "DIC_UNIT_OF_MEASURE"
   ("CODE", "DESCRIPTION", "TRANSLATION", "ABBREVIATION", "EPSG_CODE", 
    "DATA_SOURCE", "TARGET_UOM_CODE", "CONV_FACTOR_NUMERATOR", "CONV_FACTOR_DENOMINATOR", "UNIT_OF_MEAS_DIMENSION", 
    "REMARKS", "ORIG_INFORMATION_SOURCE", "STATUS")
 Values
   ('?', 'Not Entered - We haven''t assigned a value yet', 'Not Entered', NULL, NULL, 
    NULL, NULL, NULL, NULL, NULL, 
    NULL, NULL, 'C');
Insert into "DIC_UNIT_OF_MEASURE"
   ("CODE", "DESCRIPTION", "TRANSLATION", "ABBREVIATION", "EPSG_CODE", 
    "DATA_SOURCE", "TARGET_UOM_CODE", "CONV_FACTOR_NUMERATOR", "CONV_FACTOR_DENOMINATOR", "UNIT_OF_MEAS_DIMENSION", 
    "REMARKS", "ORIG_INFORMATION_SOURCE", "STATUS")
 Values
   ('9001', 'Metre', 'Metre', 'm', '9001', 
    'EPSG', '9001', 1, 1, 'length', 
    'Also known as International metre. SI standard unit.', 'ISO 1000', 'C');
Insert into "DIC_UNIT_OF_MEASURE"
   ("CODE", "DESCRIPTION", "TRANSLATION", "ABBREVIATION", "EPSG_CODE", 
    "DATA_SOURCE", "TARGET_UOM_CODE", "CONV_FACTOR_NUMERATOR", "CONV_FACTOR_DENOMINATOR", "UNIT_OF_MEAS_DIMENSION", 
    "REMARKS", "ORIG_INFORMATION_SOURCE", "STATUS")
 Values
   ('9101', 'Radian', 'Radian', 'rad', '9101', 
    'EPSG', '9101', 1, 1, 'angle', 
    'SI standard unit.', 'ISO 1000:1992', 'C');
Insert into "DIC_UNIT_OF_MEASURE"
   ("CODE", "DESCRIPTION", "TRANSLATION", "ABBREVIATION", "EPSG_CODE", 
    "DATA_SOURCE", "TARGET_UOM_CODE", "CONV_FACTOR_NUMERATOR", "CONV_FACTOR_DENOMINATOR", "UNIT_OF_MEAS_DIMENSION", 
    "REMARKS", "ORIG_INFORMATION_SOURCE", "STATUS")
 Values
   ('9122', 'Degree (supplier to define representation)', 'degree (supplier to Define representation)', NULL, '9122', 
    'EPSG', '9101', 3.1415, 180, 'angle', 
    '= pi/180 radians. The degree representation (e.g. decimal, DMSH, etc.) must be clarified by suppliers of data associated with this code.', 'EPSG', 'C');
Insert into "DIC_UNIT_OF_MEASURE"
   ("CODE", "DESCRIPTION", "TRANSLATION", "ABBREVIATION", "EPSG_CODE", 
    "DATA_SOURCE", "TARGET_UOM_CODE", "CONV_FACTOR_NUMERATOR", "CONV_FACTOR_DENOMINATOR", "UNIT_OF_MEAS_DIMENSION", 
    "REMARKS", "ORIG_INFORMATION_SOURCE", "STATUS")
 Values
   ('SQM', 'Square Metre', 'Square Metre', 'm2', NULL, 
    'BGS', NULL, NULL, NULL, 'area', 
    NULL, NULL, 'C');
Insert into "DIC_UNIT_OF_MEASURE"
   ("CODE", "DESCRIPTION", "TRANSLATION", "ABBREVIATION", "EPSG_CODE", 
    "DATA_SOURCE", "TARGET_UOM_CODE", "CONV_FACTOR_NUMERATOR", "CONV_FACTOR_DENOMINATOR", "UNIT_OF_MEAS_DIMENSION", 
    "REMARKS", "ORIG_INFORMATION_SOURCE", "STATUS")
 Values
   ('YBP', 'Years before present', 'Years before present', 'ybp', NULL, 
    'BGS', 'YBP', 1, 1, 'time', 
    NULL, NULL, 'C');
Insert into "DIC_UNIT_OF_MEASURE"
   ("CODE", "DESCRIPTION", "TRANSLATION", "ABBREVIATION", "EPSG_CODE", 
    "DATA_SOURCE", "TARGET_UOM_CODE", "CONV_FACTOR_NUMERATOR", "CONV_FACTOR_DENOMINATOR", "UNIT_OF_MEAS_DIMENSION", 
    "REMARKS", "ORIG_INFORMATION_SOURCE", "STATUS")

 Values
   ('9201', 'Unity', 'Unity', NULL, '9201', 
    'EPSG', '9201', 1, 1, 'scale', 
    NULL, NULL, 'C');
Insert into "DIC_UNIT_OF_MEASURE"
   ("CODE", "DESCRIPTION", "TRANSLATION", "ABBREVIATION", "EPSG_CODE", 
    "DATA_SOURCE", "TARGET_UOM_CODE", "CONV_FACTOR_NUMERATOR", "CONV_FACTOR_DENOMINATOR", "UNIT_OF_MEAS_DIMENSION", 
    "REMARKS", "ORIG_INFORMATION_SOURCE", "STATUS")
 Values
   ('9202', 'Parts per Million', 'Parts per Million', NULL, '9202', 
    'EPSG', '9201', 1, 1000000, 'scale', 
    NULL, NULL, 'C');
    
    

Insert into "DIC_LABORATORY"
   ("CODE", "TRANSLATION", "DESCRIPTION", "STATUS")
 Values
   ('LAB1', 'Lab No. 1', 'Laboratory Number 1', 'C');
Insert into "DIC_LABORATORY"
   ("CODE", "TRANSLATION", "DESCRIPTION", "STATUS")
 Values
   ('LABX', 'Lab X', 'Laboratory X, 123 Main Street, London, England', 'C');
   
   
   
Insert into "DIC_ANALYTE"
   ("CODE", "QUANTITY_UNIT_CODE", "TRANSLATION", "DESCRIPTION", "STATUS", 
    "ATOMIC_NUMBER", "WEIGHT")
 Values
   ('H', '9202', 'Hydrogen', 'Hydrogen', 'C', 
    1, 1.008);
    

Insert into "DIC_ANALYSIS_PREP"
   ("CODE", "TRANSLATION", "DESCRIPTION", "STATUS")
 Values
   ('1', 'Hand Pulverize Small samples (agate mortar & pestle)', 'Hand Pulverize Small samples (agate mortar & pestle)', 'C');
Insert into "DIC_ANALYSIS_PREP"
   ("CODE", "TRANSLATION", "DESCRIPTION", "STATUS")
 Values
   ('2', 'Dry and sieve 80 mesh', 'Drying (60oC) and sieving (-80mesh), save all portions', 'C');
Insert into "DIC_ANALYSIS_PREP"
   ("CODE", "TRANSLATION", "DESCRIPTION", "STATUS")
 Values
   ('3', 'Dry and Seive 230 mesh', 'Drying (60oC) and sieving (-230mesh), save oversize', 'C');
   
   
   
Insert into "DIC_ANALYSIS_METHOD"
   ("CODE", "TRANSLATION", "DESCRIPTION", "STATUS")
 Values
   ('AAS', 'Atomic Absorbtion Spectometry', 'Atomic Absorption Spectrometry.', 'C');
Insert into "DIC_ANALYSIS_METHOD"
   ("CODE", "TRANSLATION", "DESCRIPTION", "STATUS")
Values
   ('XRF', 'X-Ray Fluorescence Pressed Pellets', 'X-Ray Fluorescence Pressed Pellets.', 'C');
Insert into "DIC_ANALYSIS_METHOD"
   ("CODE", "TRANSLATION", "DESCRIPTION", "STATUS")
 Values
   ('XRFB', 'X-Ray Fluorescence On Fused Beads', 'X-Ray Fluorescence On Fused Beads', 'C');
Insert into "DIC_ANALYSIS_METHOD"
   ("CODE", "TRANSLATION", "DESCRIPTION", "STATUS")
 Values
   ('CVAAS', 'Cold Vapour AAS', 'Cold Vapour Atomic Absorption Spectrometry', 'C');
   
   
   
Insert into "CHM_SITE"
   ("SITE_ID", "X", "Y", "EPSG_CODE")
 Values
   (1, 495610, 379840, '27700');
   
   
Insert into "CHM_SAMPLE"
   ("SAMPLE_ID", "SITE_ID", "COLLECTED_DATE")
 Values
   (1, 1, STR_TO_DATE('10-JAN-06','%d-%M-%y'));
Insert into "CHM_SAMPLE"
   ("SAMPLE_ID", "SITE_ID", "COLLECTED_DATE")
Values
   (2, 1, STR_TO_DATE('10-JAN-06','%d-%M-%y'));
Insert into "CHM_SAMPLE"
   ("SAMPLE_ID", "SITE_ID", "COLLECTED_DATE")
 Values
   (3, 1, STR_TO_DATE('10-JAN-06','%d-%M-%y'));
Insert into "CHM_SAMPLE"
   ("SAMPLE_ID", "SITE_ID", "COLLECTED_DATE")
 Values
   (4, 1, STR_TO_DATE('10-JAN-06','%d-%M-%y'));
Insert into "CHM_SAMPLE"
   ("SAMPLE_ID", "SITE_ID", "COLLECTED_DATE")
 Values
   (5, 1, STR_TO_DATE('05-JAN-06','%d-%M-%y'));
Insert into "CHM_SAMPLE"
   ("SAMPLE_ID", "SITE_ID", "COLLECTED_DATE")
 Values
   (6, 1, STR_TO_DATE('05-JAN-06','%d-%M-%y'));
Insert into "CHM_SAMPLE"
   ("SAMPLE_ID", "SITE_ID", "COLLECTED_DATE")
 Values
   (7, 1, STR_TO_DATE('05-JAN-06','%d-%M-%y'));


Insert into "CHM_BATCH"
   ("CHM_BATCH_ID", "LABORATORY_CODE", "LAB_BATCH_ID", "DATE_REGISTERED")
 Values
   (1, 'LAB1', '999', STR_TO_DATE('15-JAN-06','%d-%M-%y'));
Insert into "CHM_BATCH"
   ("CHM_BATCH_ID", "LABORATORY_CODE", "LAB_BATCH_ID", "DATE_REGISTERED")
 Values
   (2, 'LAB1', '1000', STR_TO_DATE('12-JAN-06','%d-%M-%y'));


Insert into "CHM_BATCH_SAMPLE"
   ("CHM_BATCH_ID", "SAMPLE_ID")
 Values
Insert into "CHM_BATCH_SAMPLE"
   ("CHM_BATCH_ID", "SAMPLE_ID")
 Values
   (1, 2);
Insert into "CHM_BATCH_SAMPLE"
   ("CHM_BATCH_ID", "SAMPLE_ID")
 Values
   (1, 3);
Insert into "CHM_BATCH_SAMPLE"
   ("CHM_BATCH_ID", "SAMPLE_ID")
 Values
   (1, 4);
Insert into "CHM_BATCH_SAMPLE"
   ("CHM_BATCH_ID", "SAMPLE_ID")
 Values
   (2, 5);
Insert into "CHM_BATCH_SAMPLE"
   ("CHM_BATCH_ID", "SAMPLE_ID")
 Values
   (2, 6);
Insert into "CHM_BATCH_SAMPLE"
   ("CHM_BATCH_ID", "SAMPLE_ID")
 Values
   (2, 7);

Insert into "CHM_ANALYSIS"
   ("CHM_ANALYSIS_ID", "PREPERATION_CODE", "METHOD_CODE", "CHM_BATCH_ID", "DATE_REQUESTED", 
    "DATE_RECEIVED", "DATE_REPORTED")
 Values
   (100, '2', 'XRF', 1, STR_TO_DATE('20-FEB-06','%d-%M-%y'), 
    STR_TO_DATE('15-JAN-06','%d-%M-%y'), STR_TO_DATE('15-JAN-06','%d-%M-%y'));
Insert into "CHM_ANALYSIS"
   ("CHM_ANALYSIS_ID", "PREPERATION_CODE", "METHOD_CODE", "CHM_BATCH_ID", "DATE_REQUESTED", 
    "DATE_RECEIVED", "DATE_REPORTED")
Values
   (101, '3', 'AAS', 2, STR_TO_DATE('20-FEB-06','%d-%M-%y'), 
    STR_TO_DATE('15-JAN-06','%d-%M-%y'), NULL);
Insert into "CHM_ANALYSIS"
   ("CHM_ANALYSIS_ID", "PREPERATION_CODE", "METHOD_CODE", "CHM_BATCH_ID", "DATE_REQUESTED", 
    "DATE_RECEIVED", "DATE_REPORTED")
 Values
   (102, '2', 'XRFB', 1, STR_TO_DATE('01-JAN-10','%d-%M-%y'), 
    NULL, NULL);
 
 
Insert into "CHM_ANALYTE_DETERMINATION_LIMITS"
   ("CHM_LIMIT_ID", "ANALYTE_CODE", "CHM_ANALYSIS_ID", "DETECTION_LOWER_LIMIT", "DETECTION_UPPER_LIMIT", 
    "DETECTION_UNIT_CODE")
 Values
   ('200       ', 'H', 100, 0.5, 45, 
    '9202');
Insert into "CHM_ANALYTE_DETERMINATION_LIMITS"
   ("CHM_LIMIT_ID", "ANALYTE_CODE", "CHM_ANALYSIS_ID", "DETECTION_LOWER_LIMIT", "DETECTION_UPPER_LIMIT", 
    "DETECTION_UNIT_CODE")
 Values
   ('201       ', 'H', 101, 0.5, 45, 
    '9202');
Insert into "CHM_ANALYTE_DETERMINATION_LIMITS"
   ("CHM_LIMIT_ID", "ANALYTE_CODE", "CHM_ANALYSIS_ID", "DETECTION_LOWER_LIMIT", "DETECTION_UPPER_LIMIT", 
    "DETECTION_UNIT_CODE")
 Values
   ('202       ', 'H', 102, 0.05, 100, 
    '9202');


Insert into "CHM_ANALYTE_DETERMINATION"
   ("CHM_DETERMINATION_ID", "CHM_BATCH_ID", "SAMPLE_ID", "CHM_LIMIT_ID", "ABUNDANCE", 
    "ORIGINAL_RESULT", "ORIGINAL_UNIT_CODE")
 Values
   (1, 1, 1, '200       ', 1, 
    '1.23', '9202');
Insert into "CHM_ANALYTE_DETERMINATION"
   ("CHM_DETERMINATION_ID", "CHM_BATCH_ID", "SAMPLE_ID", "CHM_LIMIT_ID", "ABUNDANCE", 
    "ORIGINAL_RESULT", "ORIGINAL_UNIT_CODE")
 Values
   (2, 1, 2, '200       ', 13, 
    '1.55', '9202');
Insert into "CHM_ANALYTE_DETERMINATION"
   ("CHM_DETERMINATION_ID", "CHM_BATCH_ID", "SAMPLE_ID", "CHM_LIMIT_ID", "ABUNDANCE", 
    "ORIGINAL_RESULT", "ORIGINAL_UNIT_CODE")
 Values
   (3, 1, 3, '200       ', 0, 
    '0.1', '9202');
Insert into "CHM_ANALYTE_DETERMINATION"
   ("CHM_DETERMINATION_ID", "CHM_BATCH_ID", "SAMPLE_ID", "CHM_LIMIT_ID", "ABUNDANCE", 
    "ORIGINAL_RESULT", "ORIGINAL_UNIT_CODE")
 Values
   (4, 1, 4, '200       ', 0, 
    '0.1', '9202');
