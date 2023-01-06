/*****************************************************************************
* Creation Date: 06/01/2016  
* Modify Date:   10/19/2017 - matches data created on date above. 
* WA_SID_2014_CORE.Do
* This program will load the 2014 WA ASCII CORE File into Stata.
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
      byte   ATYPE                       16-  17   ///
      byte   AWEEKEND                    18-  19   ///
      str    BILLTYPE                    20-  23   ///
      int    DHOUR                       24-  27   ///
      byte   DIED                        28-  29   ///
      byte   DISPUB04                    30-  31   ///
      byte   DISPUNIFORM                 32-  33   ///
      str    DISP_X                      34-  35   ///
      byte   DQTR                        36-  37   ///
      int    DRG                         38-  40   ///
      int    DRG24                       41-  43   ///
      byte   DRGVER                      44-  45   ///
      int    DRG_NoPOA                   46-  48   ///
      str    DSHOSPID                    49-  65   ///
      str    DX1                         66-  72   ///
      str    DX2                         73-  79   ///
      str    DX3                         80-  86   ///
      str    DX4                         87-  93   ///
      str    DX5                         94- 100   ///
      str    DX6                        101- 107   ///
      str    DX7                        108- 114   ///
      str    DX8                        115- 121   ///
      str    DX9                        122- 128   ///
      str    DX10                       129- 135   ///
      str    DX11                       136- 142   ///
      str    DX12                       143- 149   ///
      str    DX13                       150- 156   ///
      str    DX14                       157- 163   ///
      str    DX15                       164- 170   ///
      str    DX16                       171- 177   ///
      str    DX17                       178- 184   ///
      str    DX18                       185- 191   ///
      str    DX19                       192- 198   ///
      str    DX20                       199- 205   ///
      str    DX21                       206- 212   ///
      str    DX22                       213- 219   ///
      str    DX23                       220- 226   ///
      str    DX24                       227- 233   ///
      str    DX25                       234- 240   ///
      int    DXCCS1                     241- 244   ///
      int    DXCCS2                     245- 248   ///
      int    DXCCS3                     249- 252   ///
      int    DXCCS4                     253- 256   ///
      int    DXCCS5                     257- 260   ///
      int    DXCCS6                     261- 264   ///
      int    DXCCS7                     265- 268   ///
      int    DXCCS8                     269- 272   ///
      int    DXCCS9                     273- 276   ///
      int    DXCCS10                    277- 280   ///
      int    DXCCS11                    281- 284   ///
      int    DXCCS12                    285- 288   ///
      int    DXCCS13                    289- 292   ///
      int    DXCCS14                    293- 296   ///
      int    DXCCS15                    297- 300   ///
      int    DXCCS16                    301- 304   ///
      int    DXCCS17                    305- 308   ///
      int    DXCCS18                    309- 312   ///
      int    DXCCS19                    313- 316   ///
      int    DXCCS20                    317- 320   ///
      int    DXCCS21                    321- 324   ///
      int    DXCCS22                    325- 328   ///
      int    DXCCS23                    329- 332   ///
      int    DXCCS24                    333- 336   ///
      int    DXCCS25                    337- 340   ///
      str    DXPOA1                     341        ///
      str    DXPOA2                     342        ///
      str    DXPOA3                     343        ///
      str    DXPOA4                     344        ///
      str    DXPOA5                     345        ///
      str    DXPOA6                     346        ///
      str    DXPOA7                     347        ///
      str    DXPOA8                     348        ///
      str    DXPOA9                     349        ///
      str    DXPOA10                    350        ///
      str    DXPOA11                    351        ///
      str    DXPOA12                    352        ///
      str    DXPOA13                    353        ///
      str    DXPOA14                    354        ///
      str    DXPOA15                    355        ///
      str    DXPOA16                    356        ///
      str    DXPOA17                    357        ///
      str    DXPOA18                    358        ///
      str    DXPOA19                    359        ///
      str    DXPOA20                    360        ///
      str    DXPOA21                    361        ///
      str    DXPOA22                    362        ///
      str    DXPOA23                    363        ///
      str    DXPOA24                    364        ///
      str    DXPOA25                    365        ///
      int    DXVER                      366- 368   ///
      long   DaysToEvent                369- 374   ///
      str    ECODE1                     375- 381   ///
      str    ECODE2                     382- 388   ///
      str    ECODE3                     389- 395   ///
      str    ECODE4                     396- 402   ///
      str    ECODE5                     403- 409   ///
      str    ECODE6                     410- 416   ///
      str    ECODE7                     417- 423   ///
      str    ECODE8                     424- 430   ///
      str    ECODE9                     431- 437   ///
      str    ECODE10                    438- 444   ///
      int    E_CCS1                     445- 448   ///
      int    E_CCS2                     449- 452   ///
      int    E_CCS3                     453- 456   ///
      int    E_CCS4                     457- 460   ///
      int    E_CCS5                     461- 464   ///
      int    E_CCS6                     465- 468   ///
      int    E_CCS7                     469- 472   ///
      int    E_CCS8                     473- 476   ///
      int    E_CCS9                     477- 480   ///
      int    E_CCS10                    481- 484   ///
      str    E_POA1                     485        ///
      str    E_POA2                     486        ///
      str    E_POA3                     487        ///
      str    E_POA4                     488        ///
      str    E_POA5                     489        ///
      str    E_POA6                     490        ///
      str    E_POA7                     491        ///
      str    E_POA8                     492        ///
      str    E_POA9                     493        ///
      str    E_POA10                    494        ///
      byte   FEMALE                     495- 496   ///
      byte   HCUP_ED                    497- 498   ///
      byte   HCUP_OS                    499- 500   ///
      str    HISPANIC_X                 501        ///
      int    HOSPBRTH                   502- 504   ///
      str    HOSPST                     505- 506   ///
      byte   Homeless                   507- 508   ///
      byte   HospitalUnit               509- 510   ///
      double KEY                        511- 525   ///
      long   LOS                        526- 530   ///
      long   LOS_X                      531- 536   ///
      byte   MDC                        537- 538   ///
      byte   MDC24                      539- 540   ///
      byte   MDC_NoPOA                  541- 542   ///
      long   MDNUM1_R                   543- 551   ///
      long   MDNUM2_R                   552- 560   ///
      long   MDNUM3_R                   561- 569   ///
      long   MDNUM4_R                   570- 578   ///
      byte   MEDINCSTQ                  579- 580   ///
      int    NCHRONIC                   581- 583   ///
      int    NDX                        584- 586   ///
      byte   NECODE                     587- 588   ///
      byte   NEOMAT                     589- 590   ///
      int    NPR                        591- 593   ///
      byte   ORPROC                     594- 595   ///
      long   OS_TIME                    596- 603   ///
      byte   PAY1                       604- 605   ///
      str    PAY1_X                     606- 608   ///
      byte   PAY2                       609- 610   ///
      str    PAY2_X                     611- 613   ///
      byte   PAY3                       614- 615   ///
      str    PAY3_X                     616- 618   ///
      int    PL_CBSA                    619- 621   ///
      byte   PL_NCHS                    622- 623   ///
      byte   PL_RUCC                    624- 625   ///
      byte   PL_UIC                     626- 627   ///
      byte   PL_UR_CAT4                 628- 629   ///
      byte   POA_Disch_Edit1            630- 631   ///
      byte   POA_Disch_Edit2            632- 633   ///
      byte   POA_Hosp_Edit1             634- 635   ///
      byte   POA_Hosp_Edit2             636- 637   ///
      byte   POA_Hosp_Edit3             638- 639   ///
      double POA_Hosp_Edit3_Value       640- 647   ///
      str    PR1                        648- 654   ///
      str    PR2                        655- 661   ///
      str    PR3                        662- 668   ///
      str    PR4                        669- 675   ///
      str    PR5                        676- 682   ///
      str    PR6                        683- 689   ///
      str    PR7                        690- 696   ///
      str    PR8                        697- 703   ///
      str    PR9                        704- 710   ///
      str    PR10                       711- 717   ///
      str    PR11                       718- 724   ///
      str    PR12                       725- 731   ///
      str    PR13                       732- 738   ///
      str    PR14                       739- 745   ///
      str    PR15                       746- 752   ///
      str    PR16                       753- 759   ///
      str    PR17                       760- 766   ///
      str    PR18                       767- 773   ///
      str    PR19                       774- 780   ///
      str    PR20                       781- 787   ///
      str    PR21                       788- 794   ///
      str    PR22                       795- 801   ///
      str    PR23                       802- 808   ///
      str    PR24                       809- 815   ///
      str    PR25                       816- 822   ///
      int    PRCCS1                     823- 825   ///
      int    PRCCS2                     826- 828   ///
      int    PRCCS3                     829- 831   ///
      int    PRCCS4                     832- 834   ///
      int    PRCCS5                     835- 837   ///
      int    PRCCS6                     838- 840   ///
      int    PRCCS7                     841- 843   ///
      int    PRCCS8                     844- 846   ///
      int    PRCCS9                     847- 849   ///
      int    PRCCS10                    850- 852   ///
      int    PRCCS11                    853- 855   ///
      int    PRCCS12                    856- 858   ///
      int    PRCCS13                    859- 861   ///
      int    PRCCS14                    862- 864   ///
      int    PRCCS15                    865- 867   ///
      int    PRCCS16                    868- 870   ///
      int    PRCCS17                    871- 873   ///
      int    PRCCS18                    874- 876   ///
      int    PRCCS19                    877- 879   ///
      int    PRCCS20                    880- 882   ///
      int    PRCCS21                    883- 885   ///
      int    PRCCS22                    886- 888   ///
      int    PRCCS23                    889- 891   ///
      int    PRCCS24                    892- 894   ///
      int    PRCCS25                    895- 897   ///
      long   PRDAY1                     898- 902   ///
      long   PRDAY2                     903- 907   ///
      long   PRDAY3                     908- 912   ///
      long   PRDAY4                     913- 917   ///
      long   PRDAY5                     918- 922   ///
      long   PRDAY6                     923- 927   ///
      long   PRDAY7                     928- 932   ///
      long   PRDAY8                     933- 937   ///
      long   PRDAY9                     938- 942   ///
      long   PRDAY10                    943- 947   ///
      long   PRDAY11                    948- 952   ///
      long   PRDAY12                    953- 957   ///
      long   PRDAY13                    958- 962   ///
      long   PRDAY14                    963- 967   ///
      long   PRDAY15                    968- 972   ///
      long   PRDAY16                    973- 977   ///
      long   PRDAY17                    978- 982   ///
      long   PRDAY18                    983- 987   ///
      long   PRDAY19                    988- 992   ///
      long   PRDAY20                    993- 997   ///
      long   PRDAY21                    998-1002   ///
      long   PRDAY22                   1003-1007   ///
      long   PRDAY23                   1008-1012   ///
      long   PRDAY24                   1013-1017   ///
      long   PRDAY25                   1018-1022   ///
      int    PROCTYPE                  1023-1025   ///
      int    PRVER                     1026-1028   ///
      str    PSTATE                    1029-1030   ///
      long   PSTCO2                    1031-1035   ///
      str    PointOfOriginUB04         1036        ///
      str    PointOfOrigin_X           1037        ///
      byte   RACE                      1038-1039   ///
      str    RACE_X                    1040-1045   ///
      byte   SERVICELINE               1046-1047   ///
      double TOTCHG                    1048-1057   ///
      double TOTCHG_X                  1058-1072   ///
      byte   TRAN_IN                   1073-1074   ///
      byte   TRAN_OUT                  1075-1076   ///
      long   VisitLink                 1077-1085   ///
      int    YEAR                      1086-1089   ///
      str    ZIP                       1090-1094   ///
      str    ZIP3                      1095-1097   ///
      int    ZIPINC_QRTL               1098-1100   ///
      int    AYEAR                     1101-1104   ///
      using  "WA_SID_2014_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
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
label var ECODE10                  "E code 10"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_CCS7                   "CCS: E Code 7"
label var E_CCS8                   "CCS: E Code 8"
label var E_CCS9                   "CCS: E Code 9"
label var E_CCS10                  "CCS: E Code 10"
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var E_POA7                   "E Code 7, present on admission indicator"
label var E_POA8                   "E Code 8, present on admission indicator"
label var E_POA9                   "E Code 9, present on admission indicator"
label var E_POA10                  "E Code 10, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var Homeless                 "Indicator that patient is homeless"
label var HospitalUnit
    "Indicator that patient was discharged from a special unit within an acute care hospital (reported by source)"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC24                    "MDC, version 24"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MDNUM4_R                 "Physician 4 number (re-identified)"
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
label var PR15                     "Procedure 15"
label var PR16                     "Procedure 16"
label var PR17                     "Procedure 17"
label var PR18                     "Procedure 18"
label var PR19                     "Procedure 19"
label var PR20                     "Procedure 20"
label var PR21                     "Procedure 21"
label var PR22                     "Procedure 22"
label var PR23                     "Procedure 23"
label var PR24                     "Procedure 24"
label var PR25                     "Procedure 25"
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
label var PRCCS15                  "CCS: procedure 15"
label var PRCCS16                  "CCS: procedure 16"
label var PRCCS17                  "CCS: procedure 17"
label var PRCCS18                  "CCS: procedure 18"
label var PRCCS19                  "CCS: procedure 19"
label var PRCCS20                  "CCS: procedure 20"
label var PRCCS21                  "CCS: procedure 21"
label var PRCCS22                  "CCS: procedure 22"
label var PRCCS23                  "CCS: procedure 23"
label var PRCCS24                  "CCS: procedure 24"
label var PRCCS25                  "CCS: procedure 25"
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
label var PRDAY15                  "Number of days from admission to PR15"
label var PRDAY16                  "Number of days from admission to PR16"
label var PRDAY17                  "Number of days from admission to PR17"
label var PRDAY18                  "Number of days from admission to PR18"
label var PRDAY19                  "Number of days from admission to PR19"
label var PRDAY20                  "Number of days from admission to PR20"
label var PRDAY21                  "Number of days from admission to PR21"
label var PRDAY22                  "Number of days from admission to PR22"
label var PRDAY23                  "Number of days from admission to PR23"
label var PRDAY24                  "Number of days from admission to PR24"
label var PRDAY25                  "Number of days from admission to PR25"
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
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

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
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
recode E_CCS10                   (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC24                     (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM4_R                  (-99999999 -88888888 -66666666=.)
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
recode PRCCS15                   (-99 -88 -66=.)
recode PRCCS16                   (-99 -88 -66=.)
recode PRCCS17                   (-99 -88 -66=.)
recode PRCCS18                   (-99 -88 -66=.)
recode PRCCS19                   (-99 -88 -66=.)
recode PRCCS20                   (-99 -88 -66=.)
recode PRCCS21                   (-99 -88 -66=.)
recode PRCCS22                   (-99 -88 -66=.)
recode PRCCS23                   (-99 -88 -66=.)
recode PRCCS24                   (-99 -88 -66=.)
recode PRCCS25                   (-99 -88 -66=.)
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
recode PRDAY15                   (-9999 -8888 -6666=.)
recode PRDAY16                   (-9999 -8888 -6666=.)
recode PRDAY17                   (-9999 -8888 -6666=.)
recode PRDAY18                   (-9999 -8888 -6666=.)
recode PRDAY19                   (-9999 -8888 -6666=.)
recode PRDAY20                   (-9999 -8888 -6666=.)
recode PRDAY21                   (-9999 -8888 -6666=.)
recode PRDAY22                   (-9999 -8888 -6666=.)
recode PRDAY23                   (-9999 -8888 -6666=.)
recode PRDAY24                   (-9999 -8888 -6666=.)
recode PRDAY25                   (-9999 -8888 -6666=.)
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
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

save "WA_SID_2014_CORE.dta", replace
