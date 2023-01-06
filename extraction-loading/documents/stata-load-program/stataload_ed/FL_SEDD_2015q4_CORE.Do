/*****************************************************************************
* Creation Date: 03/30/2017   
* FL_SEDD_2015q4_CORE.Do
* This program will load the 2015 FL ASCII CORE File into Stata.
* Because Stata loads the entire file into memory, it may not be possible
* to load every data element for large files.  If necessary, edit this
* program to change the memory size or to load only selected data elements.
*****************************************************************************/

***************************************************************;
* ----------------------------------------------------------- *;
* |  NOTICE: Use of HCUP data constitutes acceptance of the | *;
* |  terms and conditions of the HCUP Data Use Agreement.   | *;
* ----------------------------------------------------------- *;
***************************************************************;


*** Set available memory size ***
set mem 500m

*** Read data elements from the ASCII file ***
*** Skip the first two lines from the ASCII file i.e. infix 3 firstlineoffile ***
infix 3 firstlineoffile                            ///
      int    AGE                          1-   3   ///
      int    AHOUR                        4-   7   ///
      byte   AWEEKEND                     8-   9   ///
      str    CPT1                        10-  14   ///
      str    CPT2                        15-  19   ///
      str    CPT3                        20-  24   ///
      str    CPT4                        25-  29   ///
      str    CPT5                        30-  34   ///
      str    CPT6                        35-  39   ///
      str    CPT7                        40-  44   ///
      str    CPT8                        45-  49   ///
      str    CPT9                        50-  54   ///
      str    CPT10                       55-  59   ///
      str    CPT11                       60-  64   ///
      str    CPT12                       65-  69   ///
      str    CPT13                       70-  74   ///
      str    CPT14                       75-  79   ///
      str    CPT15                       80-  84   ///
      str    CPT16                       85-  89   ///
      str    CPT17                       90-  94   ///
      str    CPT18                       95-  99   ///
      str    CPT19                      100- 104   ///
      str    CPT20                      105- 109   ///
      str    CPT21                      110- 114   ///
      str    CPT22                      115- 119   ///
      str    CPT23                      120- 124   ///
      str    CPT24                      125- 129   ///
      str    CPT25                      130- 134   ///
      str    CPT26                      135- 139   ///
      str    CPT27                      140- 144   ///
      str    CPT28                      145- 149   ///
      str    CPT29                      150- 154   ///
      str    CPT30                      155- 159   ///
      str    CPT31                      160- 164   ///
      str    CPT32                      165- 169   ///
      str    CPT33                      170- 174   ///
      str    CPT34                      175- 179   ///
      str    CPT35                      180- 184   ///
      int    CPTCCS1                    185- 187   ///
      int    CPTCCS2                    188- 190   ///
      int    CPTCCS3                    191- 193   ///
      int    CPTCCS4                    194- 196   ///
      int    CPTCCS5                    197- 199   ///
      int    CPTCCS6                    200- 202   ///
      int    CPTCCS7                    203- 205   ///
      int    CPTCCS8                    206- 208   ///
      int    CPTCCS9                    209- 211   ///
      int    CPTCCS10                   212- 214   ///
      int    CPTCCS11                   215- 217   ///
      int    CPTCCS12                   218- 220   ///
      int    CPTCCS13                   221- 223   ///
      int    CPTCCS14                   224- 226   ///
      int    CPTCCS15                   227- 229   ///
      int    CPTCCS16                   230- 232   ///
      int    CPTCCS17                   233- 235   ///
      int    CPTCCS18                   236- 238   ///
      int    CPTCCS19                   239- 241   ///
      int    CPTCCS20                   242- 244   ///
      int    CPTCCS21                   245- 247   ///
      int    CPTCCS22                   248- 250   ///
      int    CPTCCS23                   251- 253   ///
      int    CPTCCS24                   254- 256   ///
      int    CPTCCS25                   257- 259   ///
      int    CPTCCS26                   260- 262   ///
      int    CPTCCS27                   263- 265   ///
      int    CPTCCS28                   266- 268   ///
      int    CPTCCS29                   269- 271   ///
      int    CPTCCS30                   272- 274   ///
      int    CPTCCS31                   275- 277   ///
      int    CPTCCS32                   278- 280   ///
      int    CPTCCS33                   281- 283   ///
      int    CPTCCS34                   284- 286   ///
      int    CPTCCS35                   287- 289   ///
      long   DaysToEvent                290- 295   ///
      int    DHOUR                      296- 299   ///
      byte   DIED                       300- 301   ///
      str    DISP_X                     302- 303   ///
      byte   DISPUB04                   304- 305   ///
      byte   DISPUNIFORM                306- 307   ///
      byte   DQTR                       308- 309   ///
      str    DSHOSPID                   310- 326   ///
      long   DURATION                   327- 332   ///
      int    DXVER                      333- 335   ///
      byte   FEMALE                     336- 337   ///
      byte   HCUP_ED                    338- 339   ///
      byte   HCUP_OS                    340- 341   ///
      byte   HISPANIC                   342- 343   ///
      str    HISPANIC_X                 344- 345   ///
      byte   Homeless                   346- 347   ///
      str    HOSPST                     348- 349   ///
      str    I10_DX_Visit_Reason1       350- 356   ///
      str    I10_DX1                    357- 363   ///
      str    I10_DX2                    364- 370   ///
      str    I10_DX3                    371- 377   ///
      str    I10_DX4                    378- 384   ///
      str    I10_DX5                    385- 391   ///
      str    I10_DX6                    392- 398   ///
      str    I10_DX7                    399- 405   ///
      str    I10_DX8                    406- 412   ///
      str    I10_DX9                    413- 419   ///
      str    I10_DX10                   420- 426   ///
      int    I10_DXCCS1                 427- 430   ///
      int    I10_DXCCS2                 431- 434   ///
      int    I10_DXCCS3                 435- 438   ///
      int    I10_DXCCS4                 439- 442   ///
      int    I10_DXCCS5                 443- 446   ///
      int    I10_DXCCS6                 447- 450   ///
      int    I10_DXCCS7                 451- 454   ///
      int    I10_DXCCS8                 455- 458   ///
      int    I10_DXCCS9                 459- 462   ///
      int    I10_DXCCS10                463- 466   ///
      str    I10_ECAUSE1                467- 473   ///
      str    I10_ECAUSE2                474- 480   ///
      str    I10_ECAUSE3                481- 487   ///
      int    I10_ECauseCCS1             488- 491   ///
      int    I10_ECauseCCS2             492- 495   ///
      int    I10_ECauseCCS3             496- 499   ///
      int    I10_HOSPBRTH               500- 502   ///
      int    I10_NCHRONIC               503- 505   ///
      int    I10_NDX                    506- 508   ///
      byte   I10_NECAUSE                509- 510   ///
      byte   I10_NEOMAT                 511- 512   ///
      int    I10_NPR                    513- 515   ///
      byte   I10_ORPROC                 516- 517   ///
      str    I10_PR1                    518- 524   ///
      str    I10_PR2                    525- 531   ///
      str    I10_PR3                    532- 538   ///
      str    I10_PR4                    539- 545   ///
      str    I10_PR5                    546- 552   ///
      int    I10_PRCCS1                 553- 555   ///
      int    I10_PRCCS2                 556- 558   ///
      int    I10_PRCCS3                 559- 561   ///
      int    I10_PRCCS4                 562- 564   ///
      int    I10_PRCCS5                 565- 567   ///
      int    I10_PROCTYPE               568- 570   ///
      double KEY                        571- 585   ///
      long   LOS                        586- 590   ///
      long   LOS_X                      591- 596   ///
      long   MDNUM1_R                   597- 605   ///
      long   MDNUM2_R                   606- 614   ///
      long   MDNUM3_R                   615- 623   ///
      byte   MEDINCSTQ                  624- 625   ///
      int    NCPT                       626- 629   ///
      str    OFFSITE_ED_X               630        ///
      str    OPservice                  631- 632   ///
      byte   PAY1                       633- 634   ///
      str    PAY1_X                     635        ///
      int    PL_CBSA                    636- 638   ///
      byte   PL_NCHS                    639- 640   ///
      byte   PL_RUCC                    641- 642   ///
      byte   PL_UIC                     643- 644   ///
      byte   PL_UR_CAT4                 645- 646   ///
      str    PointOfOrigin_X            647- 648   ///
      str    PointOfOriginUB04          649        ///
      int    PRVER                      650- 652   ///
      str    PSTATE                     653- 654   ///
      long   PSTCO2                     655- 659   ///
      byte   RACE                       660- 661   ///
      str    RACE_X                     662        ///
      byte   STATE_AS                   663- 664   ///
      byte   STATE_ED                   665- 666   ///
      byte   STATE_OS                   667- 668   ///
      double TOTCHG                     669- 678   ///
      double TOTCHG_X                   679- 693   ///
      long   VisitLink                  694- 702   ///
      int    YEAR                       703- 706   ///
      str    ZIP                        707- 711   ///
      str    ZIP3                       712- 714   ///
      int    ZIPINC_QRTL                715- 717   ///
      int    AYEAR                      718- 721   ///
      using  "FL_SEDD_2015q4_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AHOUR                    "Admission Hour"
label var AWEEKEND                 "Admission day is a weekend"
label var CPT1                     "CPT/HCPCS procedure code 1"
label var CPT2                     "CPT/HCPCS procedure code 2"
label var CPT3                     "CPT/HCPCS procedure code 3"
label var CPT4                     "CPT/HCPCS procedure code 4"
label var CPT5                     "CPT/HCPCS procedure code 5"
label var CPT6                     "CPT/HCPCS procedure code 6"
label var CPT7                     "CPT/HCPCS procedure code 7"
label var CPT8                     "CPT/HCPCS procedure code 8"
label var CPT9                     "CPT/HCPCS procedure code 9"
label var CPT10                    "CPT/HCPCS procedure code 10"
label var CPT11                    "CPT/HCPCS procedure code 11"
label var CPT12                    "CPT/HCPCS procedure code 12"
label var CPT13                    "CPT/HCPCS procedure code 13"
label var CPT14                    "CPT/HCPCS procedure code 14"
label var CPT15                    "CPT/HCPCS procedure code 15"
label var CPT16                    "CPT/HCPCS procedure code 16"
label var CPT17                    "CPT/HCPCS procedure code 17"
label var CPT18                    "CPT/HCPCS procedure code 18"
label var CPT19                    "CPT/HCPCS procedure code 19"
label var CPT20                    "CPT/HCPCS procedure code 20"
label var CPT21                    "CPT/HCPCS procedure code 21"
label var CPT22                    "CPT/HCPCS procedure code 22"
label var CPT23                    "CPT/HCPCS procedure code 23"
label var CPT24                    "CPT/HCPCS procedure code 24"
label var CPT25                    "CPT/HCPCS procedure code 25"
label var CPT26                    "CPT/HCPCS procedure code 26"
label var CPT27                    "CPT/HCPCS procedure code 27"
label var CPT28                    "CPT/HCPCS procedure code 28"
label var CPT29                    "CPT/HCPCS procedure code 29"
label var CPT30                    "CPT/HCPCS procedure code 30"
label var CPT31                    "CPT/HCPCS procedure code 31"
label var CPT32                    "CPT/HCPCS procedure code 32"
label var CPT33                    "CPT/HCPCS procedure code 33"
label var CPT34                    "CPT/HCPCS procedure code 34"
label var CPT35                    "CPT/HCPCS procedure code 35"
label var CPTCCS1                  "CCS: CPT 1"
label var CPTCCS2                  "CCS: CPT 2"
label var CPTCCS3                  "CCS: CPT 3"
label var CPTCCS4                  "CCS: CPT 4"
label var CPTCCS5                  "CCS: CPT 5"
label var CPTCCS6                  "CCS: CPT 6"
label var CPTCCS7                  "CCS: CPT 7"
label var CPTCCS8                  "CCS: CPT 8"
label var CPTCCS9                  "CCS: CPT 9"
label var CPTCCS10                 "CCS: CPT 10"
label var CPTCCS11                 "CCS: CPT 11"
label var CPTCCS12                 "CCS: CPT 12"
label var CPTCCS13                 "CCS: CPT 13"
label var CPTCCS14                 "CCS: CPT 14"
label var CPTCCS15                 "CCS: CPT 15"
label var CPTCCS16                 "CCS: CPT 16"
label var CPTCCS17                 "CCS: CPT 17"
label var CPTCCS18                 "CCS: CPT 18"
label var CPTCCS19                 "CCS: CPT 19"
label var CPTCCS20                 "CCS: CPT 20"
label var CPTCCS21                 "CCS: CPT 21"
label var CPTCCS22                 "CCS: CPT 22"
label var CPTCCS23                 "CCS: CPT 23"
label var CPTCCS24                 "CCS: CPT 24"
label var CPTCCS25                 "CCS: CPT 25"
label var CPTCCS26                 "CCS: CPT 26"
label var CPTCCS27                 "CCS: CPT 27"
label var CPTCCS28                 "CCS: CPT 28"
label var CPTCCS29                 "CCS: CPT 29"
label var CPTCCS30                 "CCS: CPT 30"
label var CPTCCS31                 "CCS: CPT 31"
label var CPTCCS32                 "CCS: CPT 32"
label var CPTCCS33                 "CCS: CPT 33"
label var CPTCCS34                 "CCS: CPT 34"
label var CPTCCS35                 "CCS: CPT 35"
label var DaysToEvent              "Days from 'start date' to admission"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DQTR                     "Discharge quarter"
label var DSHOSPID                 "Data source hospital identifier"
label var DURATION                 "Elapsed time for hospital care in hours and minutes"
label var DXVER                    "Diagnosis Version"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
label var HOSPST                   "Hospital state postal code"
label var I10_DX_Visit_Reason1     "ICD-10-CM Reason for visit diagnosis 1"
label var I10_DX1                  "ICD-10-CM Diagnosis 1"
label var I10_DX2                  "ICD-10-CM Diagnosis 2"
label var I10_DX3                  "ICD-10-CM Diagnosis 3"
label var I10_DX4                  "ICD-10-CM Diagnosis 4"
label var I10_DX5                  "ICD-10-CM Diagnosis 5"
label var I10_DX6                  "ICD-10-CM Diagnosis 6"
label var I10_DX7                  "ICD-10-CM Diagnosis 7"
label var I10_DX8                  "ICD-10-CM Diagnosis 8"
label var I10_DX9                  "ICD-10-CM Diagnosis 9"
label var I10_DX10                 "ICD-10-CM Diagnosis 10"
label var I10_DXCCS1               "ICD-10-CM CCS: diagnosis 1"
label var I10_DXCCS2               "ICD-10-CM CCS: diagnosis 2"
label var I10_DXCCS3               "ICD-10-CM CCS: diagnosis 3"
label var I10_DXCCS4               "ICD-10-CM CCS: diagnosis 4"
label var I10_DXCCS5               "ICD-10-CM CCS: diagnosis 5"
label var I10_DXCCS6               "ICD-10-CM CCS: diagnosis 6"
label var I10_DXCCS7               "ICD-10-CM CCS: diagnosis 7"
label var I10_DXCCS8               "ICD-10-CM CCS: diagnosis 8"
label var I10_DXCCS9               "ICD-10-CM CCS: diagnosis 9"
label var I10_DXCCS10              "ICD-10-CM CCS: diagnosis 10"
label var I10_ECAUSE1              "ICD-10-CM E Cause 1"
label var I10_ECAUSE2              "ICD-10-CM E Cause 2"
label var I10_ECAUSE3              "ICD-10-CM E Cause 3"
label var I10_ECauseCCS1           "ICD-10-CM CCS: E Cause 1"
label var I10_ECauseCCS2           "ICD-10-CM CCS: E Cause 2"
label var I10_ECauseCCS3           "ICD-10-CM CCS: E Cause 3"
label var I10_HOSPBRTH             "ICD-10-CM Indicator of birth in this hospital"
label var I10_NCHRONIC             "ICD-10-CM Number of chronic conditions"
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_NECAUSE              "ICD-10-CM Number of E Causes on this record"
label var I10_NEOMAT               "ICD-10-CM/PCS Neonatal and/or maternal I10_DX and/or I10_PR"
label var I10_NPR                  "ICD-10-PCS Number of procedures on this record"
label var I10_ORPROC               "ICD-10-PCS Major operating room procedure indicator"
label var I10_PR1                  "ICD-10-PCS Procedure 1"
label var I10_PR2                  "ICD-10-PCS Procedure 2"
label var I10_PR3                  "ICD-10-PCS Procedure 3"
label var I10_PR4                  "ICD-10-PCS Procedure 4"
label var I10_PR5                  "ICD-10-PCS Procedure 5"
label var I10_PRCCS1               "ICD-10-PCS CCS: procedure 1"
label var I10_PRCCS2               "ICD-10-PCS CCS: procedure 2"
label var I10_PRCCS3               "ICD-10-PCS CCS: procedure 3"
label var I10_PRCCS4               "ICD-10-PCS CCS: procedure 4"
label var I10_PRCCS5               "ICD-10-PCS CCS: procedure 5"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var OFFSITE_ED_X             "Indicator of services performed at an offsite location (as received from source)"
label var OPservice                "Indicator of outpatient service (as received from source)"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes(RUCC)"
label var PL_UIC                   "Patient location: Urban Influence Codes"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var STATE_AS                 "State Ambulatory Surgery service indicator"
label var STATE_ED                 "State Emergency Department service indicator"
label var STATE_OS                 "State Observation Stay service indicator"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var VisitLink                "Visit linkage variable"
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var AYEAR                    "Admission year"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode CPTCCS1                   (-99 -88 -66=.)
recode CPTCCS2                   (-99 -88 -66=.)
recode CPTCCS3                   (-99 -88 -66=.)
recode CPTCCS4                   (-99 -88 -66=.)
recode CPTCCS5                   (-99 -88 -66=.)
recode CPTCCS6                   (-99 -88 -66=.)
recode CPTCCS7                   (-99 -88 -66=.)
recode CPTCCS8                   (-99 -88 -66=.)
recode CPTCCS9                   (-99 -88 -66=.)
recode CPTCCS10                  (-99 -88 -66=.)
recode CPTCCS11                  (-99 -88 -66=.)
recode CPTCCS12                  (-99 -88 -66=.)
recode CPTCCS13                  (-99 -88 -66=.)
recode CPTCCS14                  (-99 -88 -66=.)
recode CPTCCS15                  (-99 -88 -66=.)
recode CPTCCS16                  (-99 -88 -66=.)
recode CPTCCS17                  (-99 -88 -66=.)
recode CPTCCS18                  (-99 -88 -66=.)
recode CPTCCS19                  (-99 -88 -66=.)
recode CPTCCS20                  (-99 -88 -66=.)
recode CPTCCS21                  (-99 -88 -66=.)
recode CPTCCS22                  (-99 -88 -66=.)
recode CPTCCS23                  (-99 -88 -66=.)
recode CPTCCS24                  (-99 -88 -66=.)
recode CPTCCS25                  (-99 -88 -66=.)
recode CPTCCS26                  (-99 -88 -66=.)
recode CPTCCS27                  (-99 -88 -66=.)
recode CPTCCS28                  (-99 -88 -66=.)
recode CPTCCS29                  (-99 -88 -66=.)
recode CPTCCS30                  (-99 -88 -66=.)
recode CPTCCS31                  (-99 -88 -66=.)
recode CPTCCS32                  (-99 -88 -66=.)
recode CPTCCS33                  (-99 -88 -66=.)
recode CPTCCS34                  (-99 -88 -66=.)
recode CPTCCS35                  (-99 -88 -66=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DURATION                  (-99999 -88888 -66666=.)
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode I10_DXCCS1                (-999 -888 -666=.)
recode I10_DXCCS2                (-999 -888 -666=.)
recode I10_DXCCS3                (-999 -888 -666=.)
recode I10_DXCCS4                (-999 -888 -666=.)
recode I10_DXCCS5                (-999 -888 -666=.)
recode I10_DXCCS6                (-999 -888 -666=.)
recode I10_DXCCS7                (-999 -888 -666=.)
recode I10_DXCCS8                (-999 -888 -666=.)
recode I10_DXCCS9                (-999 -888 -666=.)
recode I10_DXCCS10               (-999 -888 -666=.)
recode I10_ECauseCCS1            (-999 -888 -666=.)
recode I10_ECauseCCS2            (-999 -888 -666=.)
recode I10_ECauseCCS3            (-999 -888 -666=.)
recode I10_HOSPBRTH              (-99 -88 -66=.)
recode I10_NCHRONIC              (-99 -88 -66=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NECAUSE               (-9 -8 -6 -5=.)
recode I10_NEOMAT                (-9 -8 -6 -5=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_ORPROC                (-9 -8 -6 -5=.)
recode I10_PRCCS1                (-99 -88 -66=.)
recode I10_PRCCS2                (-99 -88 -66=.)
recode I10_PRCCS3                (-99 -88 -66=.)
recode I10_PRCCS4                (-99 -88 -66=.)
recode I10_PRCCS5                (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCPT                      (-999 -888 -666=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
recode PL_RUCC                   (-9 -8 -6 -5=.)
recode PL_UIC                    (-9 -8 -6 -5=.)
recode PL_UR_CAT4                (-9 -8 -6 -5=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode STATE_AS                  (-9 -8 -6 -5=.)
recode STATE_ED                  (-9 -8 -6 -5=.)
recode STATE_OS                  (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode VisitLink                 (-99999999 -88888888 -66666666=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)

save "FL_SEDD_2015q4_CORE.dta", replace
