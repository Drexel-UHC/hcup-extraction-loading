/*****************************************************************************
* Creation Date: 05/05/2016   
* Modify Date:   10/19/2017 - matches data created on date above.
* NY_SID_2014_CORE.Do
* This program will load the 2014 NY ASCII CORE File into Stata.
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
      int    AGEDAY                       4-   6   ///
      int    AGEMONTH                     7-   9   ///
      int    AHOUR                       10-  13   ///
      byte   AMONTH                      14-  15   ///
      int    ANESTH                      16-  18   ///
      byte   ATYPE                       19-  20   ///
      byte   AWEEKEND                    21-  22   ///
      str    BILLTYPE                    23-  26   ///
      long   BLOOD                       27-  32   ///
      int    BWT                         33-  36   ///
      int    DHOUR                       37-  40   ///
      byte   DIED                        41-  42   ///
      byte   DISPUB04                    43-  44   ///
      byte   DISPUNIFORM                 45-  46   ///
      str    DISP_X                      47-  48   ///
      byte   DMONTH                      49-  50   ///
      byte   DQTR                        51-  52   ///
      int    DRG                         53-  55   ///
      int    DRG24                       56-  58   ///
      byte   DRGVER                      59-  60   ///
      int    DRG_NoPOA                   61-  63   ///
      str    DSHOSPID                    64-  80   ///
      str    DX1                         81-  87   ///
      str    DX2                         88-  94   ///
      str    DX3                         95- 101   ///
      str    DX4                        102- 108   ///
      str    DX5                        109- 115   ///
      str    DX6                        116- 122   ///
      str    DX7                        123- 129   ///
      str    DX8                        130- 136   ///
      str    DX9                        137- 143   ///
      str    DX10                       144- 150   ///
      str    DX11                       151- 157   ///
      str    DX12                       158- 164   ///
      str    DX13                       165- 171   ///
      str    DX14                       172- 178   ///
      str    DX15                       179- 185   ///
      str    DX16                       186- 192   ///
      str    DX17                       193- 199   ///
      str    DX18                       200- 206   ///
      str    DX19                       207- 213   ///
      str    DX20                       214- 220   ///
      str    DX21                       221- 227   ///
      str    DX22                       228- 234   ///
      str    DX23                       235- 241   ///
      str    DX24                       242- 248   ///
      str    DX25                       249- 255   ///
      int    DXCCS1                     256- 259   ///
      int    DXCCS2                     260- 263   ///
      int    DXCCS3                     264- 267   ///
      int    DXCCS4                     268- 271   ///
      int    DXCCS5                     272- 275   ///
      int    DXCCS6                     276- 279   ///
      int    DXCCS7                     280- 283   ///
      int    DXCCS8                     284- 287   ///
      int    DXCCS9                     288- 291   ///
      int    DXCCS10                    292- 295   ///
      int    DXCCS11                    296- 299   ///
      int    DXCCS12                    300- 303   ///
      int    DXCCS13                    304- 307   ///
      int    DXCCS14                    308- 311   ///
      int    DXCCS15                    312- 315   ///
      int    DXCCS16                    316- 319   ///
      int    DXCCS17                    320- 323   ///
      int    DXCCS18                    324- 327   ///
      int    DXCCS19                    328- 331   ///
      int    DXCCS20                    332- 335   ///
      int    DXCCS21                    336- 339   ///
      int    DXCCS22                    340- 343   ///
      int    DXCCS23                    344- 347   ///
      int    DXCCS24                    348- 351   ///
      int    DXCCS25                    352- 355   ///
      str    DXPOA1                     356        ///
      str    DXPOA2                     357        ///
      str    DXPOA3                     358        ///
      str    DXPOA4                     359        ///
      str    DXPOA5                     360        ///
      str    DXPOA6                     361        ///
      str    DXPOA7                     362        ///
      str    DXPOA8                     363        ///
      str    DXPOA9                     364        ///
      str    DXPOA10                    365        ///
      str    DXPOA11                    366        ///
      str    DXPOA12                    367        ///
      str    DXPOA13                    368        ///
      str    DXPOA14                    369        ///
      str    DXPOA15                    370        ///
      str    DXPOA16                    371        ///
      str    DXPOA17                    372        ///
      str    DXPOA18                    373        ///
      str    DXPOA19                    374        ///
      str    DXPOA20                    375        ///
      str    DXPOA21                    376        ///
      str    DXPOA22                    377        ///
      str    DXPOA23                    378        ///
      str    DXPOA24                    379        ///
      str    DXPOA25                    380        ///
      int    DXVER                      381- 383   ///
      str    DX_Admitting               384- 390   ///
      long   DaysToEvent                391- 396   ///
      str    ECODE1                     397- 403   ///
      str    ECODE2                     404- 410   ///
      str    ECODE3                     411- 417   ///
      str    ECODE4                     418- 424   ///
      str    ECODE5                     425- 431   ///
      str    ECODE6                     432- 438   ///
      str    ECODE7                     439- 445   ///
      str    ECODE8                     446- 452   ///
      str    ECODE9                     453- 459   ///
      int    E_CCS1                     460- 463   ///
      int    E_CCS2                     464- 467   ///
      int    E_CCS3                     468- 471   ///
      int    E_CCS4                     472- 475   ///
      int    E_CCS5                     476- 479   ///
      int    E_CCS6                     480- 483   ///
      int    E_CCS7                     484- 487   ///
      int    E_CCS8                     488- 491   ///
      int    E_CCS9                     492- 495   ///
      str    E_POA1                     496        ///
      str    E_POA2                     497        ///
      str    E_POA3                     498        ///
      str    E_POA4                     499        ///
      str    E_POA5                     500        ///
      str    E_POA6                     501        ///
      str    E_POA7                     502        ///
      str    E_POA8                     503        ///
      str    E_POA9                     504        ///
      byte   FEMALE                     505- 506   ///
      byte   HCUP_ED                    507- 508   ///
      byte   HCUP_OS                    509- 510   ///
      str    HISPANIC_X                 511        ///
      int    HOSPBRTH                   512- 514   ///
      str    HOSPST                     515- 516   ///
      byte   Homeless                   517- 518   ///
      double KEY                        519- 533   ///
      long   LOS                        534- 538   ///
      long   LOS_X                      539- 544   ///
      byte   MDC                        545- 546   ///
      byte   MDC24                      547- 548   ///
      byte   MDC_NoPOA                  549- 550   ///
      long   MDNUM1_R                   551- 559   ///
      long   MDNUM2_R                   560- 568   ///
      byte   MEDINCSTQ                  569- 570   ///
      int    NCHRONIC                   571- 573   ///
      int    NDX                        574- 576   ///
      byte   NECODE                     577- 578   ///
      byte   NEOMAT                     579- 580   ///
      int    NPR                        581- 583   ///
      byte   ORPROC                     584- 585   ///
      long   OS_TIME                    586- 593   ///
      byte   PAY1                       594- 595   ///
      str    PAY1_X                     596- 597   ///
      byte   PAY2                       598- 599   ///
      str    PAY2_X                     600- 601   ///
      byte   PAY3                       602- 603   ///
      str    PAY3_X                     604- 605   ///
      str    PAYER1_X                   606- 610   ///
      str    PAYER2_X                   611- 615   ///
      int    PL_CBSA                    616- 618   ///
      byte   PL_NCHS                    619- 620   ///
      byte   PL_RUCC                    621- 622   ///
      byte   PL_UIC                     623- 624   ///
      byte   PL_UR_CAT4                 625- 626   ///
      byte   POA_Disch_Edit1            627- 628   ///
      byte   POA_Disch_Edit2            629- 630   ///
      byte   POA_Hosp_Edit1             631- 632   ///
      byte   POA_Hosp_Edit2             633- 634   ///
      byte   POA_Hosp_Edit3             635- 636   ///
      double POA_Hosp_Edit3_Value       637- 644   ///
      str    PR1                        645- 651   ///
      str    PR2                        652- 658   ///
      str    PR3                        659- 665   ///
      str    PR4                        666- 672   ///
      str    PR5                        673- 679   ///
      str    PR6                        680- 686   ///
      str    PR7                        687- 693   ///
      str    PR8                        694- 700   ///
      str    PR9                        701- 707   ///
      str    PR10                       708- 714   ///
      str    PR11                       715- 721   ///
      str    PR12                       722- 728   ///
      str    PR13                       729- 735   ///
      str    PR14                       736- 742   ///
      int    PRCCS1                     743- 745   ///
      int    PRCCS2                     746- 748   ///
      int    PRCCS3                     749- 751   ///
      int    PRCCS4                     752- 754   ///
      int    PRCCS5                     755- 757   ///
      int    PRCCS6                     758- 760   ///
      int    PRCCS7                     761- 763   ///
      int    PRCCS8                     764- 766   ///
      int    PRCCS9                     767- 769   ///
      int    PRCCS10                    770- 772   ///
      int    PRCCS11                    773- 775   ///
      int    PRCCS12                    776- 778   ///
      int    PRCCS13                    779- 781   ///
      int    PRCCS14                    782- 784   ///
      long   PRDAY1                     785- 789   ///
      long   PRDAY2                     790- 794   ///
      long   PRDAY3                     795- 799   ///
      long   PRDAY4                     800- 804   ///
      long   PRDAY5                     805- 809   ///
      long   PRDAY6                     810- 814   ///
      long   PRDAY7                     815- 819   ///
      long   PRDAY8                     820- 824   ///
      long   PRDAY9                     825- 829   ///
      long   PRDAY10                    830- 834   ///
      long   PRDAY11                    835- 839   ///
      long   PRDAY12                    840- 844   ///
      long   PRDAY13                    845- 849   ///
      long   PRDAY14                    850- 854   ///
      int    PROCTYPE                   855- 857   ///
      int    PRVER                      858- 860   ///
      str    PSTATE                     861- 862   ///
      long   PSTCO                      863- 867   ///
      long   PSTCO2                     868- 872   ///
      str    PointOfOriginUB04          873        ///
      str    PointOfOrigin_X            874        ///
      byte   RACE                       875- 876   ///
      str    RACE_X                     877- 878   ///
      byte   SERVICELINE                879- 880   ///
      double TOTCHG                     881- 890   ///
      double TOTCHG_X                   891- 905   ///
      byte   TRAN_IN                    906- 907   ///
      byte   TRAN_OUT                   908- 909   ///
      long   VisitLink                  910- 918   ///
      int    YEAR                       919- 922   ///
      str    ZIP                        923- 927   ///
      str    ZIP3                       928- 930   ///
      int    ZIPINC_QRTL                931- 933   ///
      int    AYEAR                      934- 937   ///
      byte   BMONTH                     938- 939   ///
      int    BYEAR                      940- 943   ///
      byte   PRMONTH1                   944- 945   ///
      byte   PRMONTH2                   946- 947   ///
      byte   PRMONTH3                   948- 949   ///
      byte   PRMONTH4                   950- 951   ///
      byte   PRMONTH5                   952- 953   ///
      byte   PRMONTH6                   954- 955   ///
      byte   PRMONTH7                   956- 957   ///
      byte   PRMONTH8                   958- 959   ///
      byte   PRMONTH9                   960- 961   ///
      byte   PRMONTH10                  962- 963   ///
      byte   PRMONTH11                  964- 965   ///
      byte   PRMONTH12                  966- 967   ///
      byte   PRMONTH13                  968- 969   ///
      byte   PRMONTH14                  970- 971   ///
      int    PRYEAR1                    972- 975   ///
      int    PRYEAR2                    976- 979   ///
      int    PRYEAR3                    980- 983   ///
      int    PRYEAR4                    984- 987   ///
      int    PRYEAR5                    988- 991   ///
      int    PRYEAR6                    992- 995   ///
      int    PRYEAR7                    996- 999   ///
      int    PRYEAR8                   1000-1003   ///
      int    PRYEAR9                   1004-1007   ///
      int    PRYEAR10                  1008-1011   ///
      int    PRYEAR11                  1012-1015   ///
      int    PRYEAR12                  1016-1019   ///
      int    PRYEAR13                  1020-1023   ///
      int    PRYEAR14                  1024-1027   ///
      using  "NY_SID_2014_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ANESTH                   "Method of anesthesia"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var BLOOD                    "Pints of blood furnished to the patient"
label var BWT                      "Birth weight in grams"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRG24                    "DRG, version 24"
label var DRGVER                   "DRG grouper version used on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
label var DSHOSPID                 "Data source hospital identifier"
label var DX1                      "Diagnosis 1"
label var DX2                      "Diagnosis 2"
label var DX3                      "Diagnosis 3"
label var DX4                      "Diagnosis 4"
label var DX5                      "Diagnosis 5"
label var DX6                      "Diagnosis 6"
label var DX7                      "Diagnosis 7"
label var DX8                      "Diagnosis 8"
label var DX9                      "Diagnosis 9"
label var DX10                     "Diagnosis 10"
label var DX11                     "Diagnosis 11"
label var DX12                     "Diagnosis 12"
label var DX13                     "Diagnosis 13"
label var DX14                     "Diagnosis 14"
label var DX15                     "Diagnosis 15"
label var DX16                     "Diagnosis 16"
label var DX17                     "Diagnosis 17"
label var DX18                     "Diagnosis 18"
label var DX19                     "Diagnosis 19"
label var DX20                     "Diagnosis 20"
label var DX21                     "Diagnosis 21"
label var DX22                     "Diagnosis 22"
label var DX23                     "Diagnosis 23"
label var DX24                     "Diagnosis 24"
label var DX25                     "Diagnosis 25"
label var DXCCS1                   "CCS: diagnosis 1"
label var DXCCS2                   "CCS: diagnosis 2"
label var DXCCS3                   "CCS: diagnosis 3"
label var DXCCS4                   "CCS: diagnosis 4"
label var DXCCS5                   "CCS: diagnosis 5"
label var DXCCS6                   "CCS: diagnosis 6"
label var DXCCS7                   "CCS: diagnosis 7"
label var DXCCS8                   "CCS: diagnosis 8"
label var DXCCS9                   "CCS: diagnosis 9"
label var DXCCS10                  "CCS: diagnosis 10"
label var DXCCS11                  "CCS: diagnosis 11"
label var DXCCS12                  "CCS: diagnosis 12"
label var DXCCS13                  "CCS: diagnosis 13"
label var DXCCS14                  "CCS: diagnosis 14"
label var DXCCS15                  "CCS: diagnosis 15"
label var DXCCS16                  "CCS: diagnosis 16"
label var DXCCS17                  "CCS: diagnosis 17"
label var DXCCS18                  "CCS: diagnosis 18"
label var DXCCS19                  "CCS: diagnosis 19"
label var DXCCS20                  "CCS: diagnosis 20"
label var DXCCS21                  "CCS: diagnosis 21"
label var DXCCS22                  "CCS: diagnosis 22"
label var DXCCS23                  "CCS: diagnosis 23"
label var DXCCS24                  "CCS: diagnosis 24"
label var DXCCS25                  "CCS: diagnosis 25"
label var DXPOA1                   "Diagnosis 1, present on admission indicator"
label var DXPOA2                   "Diagnosis 2, present on admission indicator"
label var DXPOA3                   "Diagnosis 3, present on admission indicator"
label var DXPOA4                   "Diagnosis 4, present on admission indicator"
label var DXPOA5                   "Diagnosis 5, present on admission indicator"
label var DXPOA6                   "Diagnosis 6, present on admission indicator"
label var DXPOA7                   "Diagnosis 7, present on admission indicator"
label var DXPOA8                   "Diagnosis 8, present on admission indicator"
label var DXPOA9                   "Diagnosis 9, present on admission indicator"
label var DXPOA10                  "Diagnosis 10, present on admission indicator"
label var DXPOA11                  "Diagnosis 11, present on admission indicator"
label var DXPOA12                  "Diagnosis 12, present on admission indicator"
label var DXPOA13                  "Diagnosis 13, present on admission indicator"
label var DXPOA14                  "Diagnosis 14, present on admission indicator"
label var DXPOA15                  "Diagnosis 15, present on admission indicator"
label var DXPOA16                  "Diagnosis 16, present on admission indicator"
label var DXPOA17                  "Diagnosis 17, present on admission indicator"
label var DXPOA18                  "Diagnosis 18, present on admission indicator"
label var DXPOA19                  "Diagnosis 19, present on admission indicator"
label var DXPOA20                  "Diagnosis 20, present on admission indicator"
label var DXPOA21                  "Diagnosis 21, present on admission indicator"
label var DXPOA22                  "Diagnosis 22, present on admission indicator"
label var DXPOA23                  "Diagnosis 23, present on admission indicator"
label var DXPOA24                  "Diagnosis 24, present on admission indicator"
label var DXPOA25                  "Diagnosis 25, present on admission indicator"
label var DXVER                    "Diagnosis Version"
label var DX_Admitting             "Admitting Diagnosis Code"
label var DaysToEvent              "Days from 'start date' to admission"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var ECODE8                   "E code 8"
label var ECODE9                   "E code 9"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_CCS7                   "CCS: E Code 7"
label var E_CCS8                   "CCS: E Code 8"
label var E_CCS9                   "CCS: E Code 9"
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var E_POA7                   "E Code 7, present on admission indicator"
label var E_POA8                   "E Code 8, present on admission indicator"
label var E_POA9                   "E Code 9, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var Homeless                 "Indicator that patient is homeless"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC24                    "MDC, version 24"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCHRONIC                 "Number of chronic conditions"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
label var PAY3                     "Tertiary expected payer (uniform)"
label var PAY3_X                   "Tertiary expected payer (as received from source)"
label var PAYER1_X                 "Primary expected payer plan identifier (as received from source)"
label var PAYER2_X                 "Secondary expected payer plan identifier (as received from source)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes(RUCC)"
label var PL_UIC                   "Patient location: Urban Influence Codes"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
label var POA_Disch_Edit1          "Indication that a discharge has POA missing on all nonexempt diagnoses"
label var POA_Disch_Edit2          "Indication that a discharge has POA missing on all nonexempt secondary diagnoses"
label var POA_Hosp_Edit1           "Indication that a hospital has POA reported as Y on all diagnoses on all discharges"
label var POA_Hosp_Edit2           "Indication that a hospital has POA reported as missing on all non-Medicare discharges"
label var POA_Hosp_Edit3           "Hospital reported POA as missing on all nonexempt diagnoses for 15% or more of discharges"
label var POA_Hosp_Edit3_Value     "Percentage of discharges with all nonexempt diagnoses missing POA indicators"
label var PR1                      "Procedure 1"
label var PR2                      "Procedure 2"
label var PR3                      "Procedure 3"
label var PR4                      "Procedure 4"
label var PR5                      "Procedure 5"
label var PR6                      "Procedure 6"
label var PR7                      "Procedure 7"
label var PR8                      "Procedure 8"
label var PR9                      "Procedure 9"
label var PR10                     "Procedure 10"
label var PR11                     "Procedure 11"
label var PR12                     "Procedure 12"
label var PR13                     "Procedure 13"
label var PR14                     "Procedure 14"
label var PRCCS1                   "CCS: procedure 1"
label var PRCCS2                   "CCS: procedure 2"
label var PRCCS3                   "CCS: procedure 3"
label var PRCCS4                   "CCS: procedure 4"
label var PRCCS5                   "CCS: procedure 5"
label var PRCCS6                   "CCS: procedure 6"
label var PRCCS7                   "CCS: procedure 7"
label var PRCCS8                   "CCS: procedure 8"
label var PRCCS9                   "CCS: procedure 9"
label var PRCCS10                  "CCS: procedure 10"
label var PRCCS11                  "CCS: procedure 11"
label var PRCCS12                  "CCS: procedure 12"
label var PRCCS13                  "CCS: procedure 13"
label var PRCCS14                  "CCS: procedure 14"
label var PRDAY1                   "Number of days from admission to PR1"
label var PRDAY2                   "Number of days from admission to PR2"
label var PRDAY3                   "Number of days from admission to PR3"
label var PRDAY4                   "Number of days from admission to PR4"
label var PRDAY5                   "Number of days from admission to PR5"
label var PRDAY6                   "Number of days from admission to PR6"
label var PRDAY7                   "Number of days from admission to PR7"
label var PRDAY8                   "Number of days from admission to PR8"
label var PRDAY9                   "Number of days from admission to PR9"
label var PRDAY10                  "Number of days from admission to PR10"
label var PRDAY11                  "Number of days from admission to PR11"
label var PRDAY12                  "Number of days from admission to PR12"
label var PRDAY13                  "Number of days from admission to PR13"
label var PRDAY14                  "Number of days from admission to PR14"
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var SERVICELINE              "Hospital Service Line"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var VisitLink                "Visit linkage variable"
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var AYEAR                    "Admission year"
label var BMONTH                   "Birth month"
label var BYEAR                    "Birth year"
label var PRMONTH1                 "Month of procedure 1"
label var PRMONTH2                 "Month of procedure 2"
label var PRMONTH3                 "Month of procedure 3"
label var PRMONTH4                 "Month of procedure 4"
label var PRMONTH5                 "Month of procedure 5"
label var PRMONTH6                 "Month of procedure 6"
label var PRMONTH7                 "Month of procedure 7"
label var PRMONTH8                 "Month of procedure 8"
label var PRMONTH9                 "Month of procedure 9"
label var PRMONTH10                "Month of procedure 10"
label var PRMONTH11                "Month of procedure 11"
label var PRMONTH12                "Month of procedure 12"
label var PRMONTH13                "Month of procedure 13"
label var PRMONTH14                "Month of procedure 14"
label var PRYEAR1                  "Year of procedure 1"
label var PRYEAR2                  "Year of procedure 2"
label var PRYEAR3                  "Year of procedure 3"
label var PRYEAR4                  "Year of procedure 4"
label var PRYEAR5                  "Year of procedure 5"
label var PRYEAR6                  "Year of procedure 6"
label var PRYEAR7                  "Year of procedure 7"
label var PRYEAR8                  "Year of procedure 8"
label var PRYEAR9                  "Year of procedure 9"
label var PRYEAR10                 "Year of procedure 10"
label var PRYEAR11                 "Year of procedure 11"
label var PRYEAR12                 "Year of procedure 12"
label var PRYEAR13                 "Year of procedure 13"
label var PRYEAR14                 "Year of procedure 14"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ANESTH                    (-99 -88 -66=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BLOOD                     (-99999 -88888 -66666=.)
recode BWT                       (-999 -888 -666=.)
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG24                     (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DXCCS1                    (-999 -888 -666=.)
recode DXCCS2                    (-999 -888 -666=.)
recode DXCCS3                    (-999 -888 -666=.)
recode DXCCS4                    (-999 -888 -666=.)
recode DXCCS5                    (-999 -888 -666=.)
recode DXCCS6                    (-999 -888 -666=.)
recode DXCCS7                    (-999 -888 -666=.)
recode DXCCS8                    (-999 -888 -666=.)
recode DXCCS9                    (-999 -888 -666=.)
recode DXCCS10                   (-999 -888 -666=.)
recode DXCCS11                   (-999 -888 -666=.)
recode DXCCS12                   (-999 -888 -666=.)
recode DXCCS13                   (-999 -888 -666=.)
recode DXCCS14                   (-999 -888 -666=.)
recode DXCCS15                   (-999 -888 -666=.)
recode DXCCS16                   (-999 -888 -666=.)
recode DXCCS17                   (-999 -888 -666=.)
recode DXCCS18                   (-999 -888 -666=.)
recode DXCCS19                   (-999 -888 -666=.)
recode DXCCS20                   (-999 -888 -666=.)
recode DXCCS21                   (-999 -888 -666=.)
recode DXCCS22                   (-999 -888 -666=.)
recode DXCCS23                   (-999 -888 -666=.)
recode DXCCS24                   (-999 -888 -666=.)
recode DXCCS25                   (-999 -888 -666=.)
recode DXVER                     (-99 -88 -66=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode E_CCS1                    (-999 -888 -666=.)
recode E_CCS2                    (-999 -888 -666=.)
recode E_CCS3                    (-999 -888 -666=.)
recode E_CCS4                    (-999 -888 -666=.)
recode E_CCS5                    (-999 -888 -666=.)
recode E_CCS6                    (-999 -888 -666=.)
recode E_CCS7                    (-999 -888 -666=.)
recode E_CCS8                    (-999 -888 -666=.)
recode E_CCS9                    (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC24                     (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
recode OS_TIME                   (-9999999 -8888888 -6666666=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
recode PAY3                      (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
recode PL_RUCC                   (-9 -8 -6 -5=.)
recode PL_UIC                    (-9 -8 -6 -5=.)
recode PL_UR_CAT4                (-9 -8 -6 -5=.)
recode POA_Disch_Edit1           (-9 -8 -6 -5=.)
recode POA_Disch_Edit2           (-9 -8 -6 -5=.)
recode POA_Hosp_Edit1            (-9 -8 -6 -5=.)
recode POA_Hosp_Edit2            (-9 -8 -6 -5=.)
recode POA_Hosp_Edit3            (-9 -8 -6 -5=.)
recode POA_Hosp_Edit3_Value      (-9999.99 -8888.88 -6666.66=.)
recode PRCCS1                    (-99 -88 -66=.)
recode PRCCS2                    (-99 -88 -66=.)
recode PRCCS3                    (-99 -88 -66=.)
recode PRCCS4                    (-99 -88 -66=.)
recode PRCCS5                    (-99 -88 -66=.)
recode PRCCS6                    (-99 -88 -66=.)
recode PRCCS7                    (-99 -88 -66=.)
recode PRCCS8                    (-99 -88 -66=.)
recode PRCCS9                    (-99 -88 -66=.)
recode PRCCS10                   (-99 -88 -66=.)
recode PRCCS11                   (-99 -88 -66=.)
recode PRCCS12                   (-99 -88 -66=.)
recode PRCCS13                   (-99 -88 -66=.)
recode PRCCS14                   (-99 -88 -66=.)
recode PRDAY1                    (-9999 -8888 -6666=.)
recode PRDAY2                    (-9999 -8888 -6666=.)
recode PRDAY3                    (-9999 -8888 -6666=.)
recode PRDAY4                    (-9999 -8888 -6666=.)
recode PRDAY5                    (-9999 -8888 -6666=.)
recode PRDAY6                    (-9999 -8888 -6666=.)
recode PRDAY7                    (-9999 -8888 -6666=.)
recode PRDAY8                    (-9999 -8888 -6666=.)
recode PRDAY9                    (-9999 -8888 -6666=.)
recode PRDAY10                   (-9999 -8888 -6666=.)
recode PRDAY11                   (-9999 -8888 -6666=.)
recode PRDAY12                   (-9999 -8888 -6666=.)
recode PRDAY13                   (-9999 -8888 -6666=.)
recode PRDAY14                   (-9999 -8888 -6666=.)
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode SERVICELINE               (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
recode VisitLink                 (-99999999 -88888888 -66666666=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)
recode BMONTH                    (-9 -8 -6 -5=.)
recode BYEAR                     (-999 -888 -666=.)
recode PRMONTH1                  (-9 -8 -6 -5=.)
recode PRMONTH2                  (-9 -8 -6 -5=.)
recode PRMONTH3                  (-9 -8 -6 -5=.)
recode PRMONTH4                  (-9 -8 -6 -5=.)
recode PRMONTH5                  (-9 -8 -6 -5=.)
recode PRMONTH6                  (-9 -8 -6 -5=.)
recode PRMONTH7                  (-9 -8 -6 -5=.)
recode PRMONTH8                  (-9 -8 -6 -5=.)
recode PRMONTH9                  (-9 -8 -6 -5=.)
recode PRMONTH10                 (-9 -8 -6 -5=.)
recode PRMONTH11                 (-9 -8 -6 -5=.)
recode PRMONTH12                 (-9 -8 -6 -5=.)
recode PRMONTH13                 (-9 -8 -6 -5=.)
recode PRMONTH14                 (-9 -8 -6 -5=.)
recode PRYEAR1                   (-999 -888 -666=.)
recode PRYEAR2                   (-999 -888 -666=.)
recode PRYEAR3                   (-999 -888 -666=.)
recode PRYEAR4                   (-999 -888 -666=.)
recode PRYEAR5                   (-999 -888 -666=.)
recode PRYEAR6                   (-999 -888 -666=.)
recode PRYEAR7                   (-999 -888 -666=.)
recode PRYEAR8                   (-999 -888 -666=.)
recode PRYEAR9                   (-999 -888 -666=.)
recode PRYEAR10                  (-999 -888 -666=.)
recode PRYEAR11                  (-999 -888 -666=.)
recode PRYEAR12                  (-999 -888 -666=.)
recode PRYEAR13                  (-999 -888 -666=.)
recode PRYEAR14                  (-999 -888 -666=.)

save "NY_SID_2014_CORE.dta", replace
