/*****************************************************************************
* Creation Date: 04/04/2017   
* WA_SID_2015q1q3_CORE.Do
* This program will load the 2015 WA ASCII CORE File into Stata.
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
      long   DaysToEvent                 24-  29   ///
      int    DHOUR                       30-  33   ///
      byte   DIED                        34-  35   ///
      str    DISP_X                      36-  37   ///
      byte   DISPUB04                    38-  39   ///
      byte   DISPUNIFORM                 40-  41   ///
      byte   DQTR                        42-  43   ///
      int    DRG                         44-  46   ///
      int    DRG_NoPOA                   47-  49   ///
      int    DRG32                       50-  52   ///
      byte   DRGVER                      53-  54   ///
      str    DSHOSPID                    55-  71   ///
      str    DX1                         72-  78   ///
      str    DX2                         79-  85   ///
      str    DX3                         86-  92   ///
      str    DX4                         93-  99   ///
      str    DX5                        100- 106   ///
      str    DX6                        107- 113   ///
      str    DX7                        114- 120   ///
      str    DX8                        121- 127   ///
      str    DX9                        128- 134   ///
      str    DX10                       135- 141   ///
      str    DX11                       142- 148   ///
      str    DX12                       149- 155   ///
      str    DX13                       156- 162   ///
      str    DX14                       163- 169   ///
      str    DX15                       170- 176   ///
      str    DX16                       177- 183   ///
      str    DX17                       184- 190   ///
      str    DX18                       191- 197   ///
      str    DX19                       198- 204   ///
      str    DX20                       205- 211   ///
      str    DX21                       212- 218   ///
      str    DX22                       219- 225   ///
      str    DX23                       226- 232   ///
      str    DX24                       233- 239   ///
      str    DX25                       240- 246   ///
      int    DXCCS1                     247- 250   ///
      int    DXCCS2                     251- 254   ///
      int    DXCCS3                     255- 258   ///
      int    DXCCS4                     259- 262   ///
      int    DXCCS5                     263- 266   ///
      int    DXCCS6                     267- 270   ///
      int    DXCCS7                     271- 274   ///
      int    DXCCS8                     275- 278   ///
      int    DXCCS9                     279- 282   ///
      int    DXCCS10                    283- 286   ///
      int    DXCCS11                    287- 290   ///
      int    DXCCS12                    291- 294   ///
      int    DXCCS13                    295- 298   ///
      int    DXCCS14                    299- 302   ///
      int    DXCCS15                    303- 306   ///
      int    DXCCS16                    307- 310   ///
      int    DXCCS17                    311- 314   ///
      int    DXCCS18                    315- 318   ///
      int    DXCCS19                    319- 322   ///
      int    DXCCS20                    323- 326   ///
      int    DXCCS21                    327- 330   ///
      int    DXCCS22                    331- 334   ///
      int    DXCCS23                    335- 338   ///
      int    DXCCS24                    339- 342   ///
      int    DXCCS25                    343- 346   ///
      str    DXPOA1                     347        ///
      str    DXPOA2                     348        ///
      str    DXPOA3                     349        ///
      str    DXPOA4                     350        ///
      str    DXPOA5                     351        ///
      str    DXPOA6                     352        ///
      str    DXPOA7                     353        ///
      str    DXPOA8                     354        ///
      str    DXPOA9                     355        ///
      str    DXPOA10                    356        ///
      str    DXPOA11                    357        ///
      str    DXPOA12                    358        ///
      str    DXPOA13                    359        ///
      str    DXPOA14                    360        ///
      str    DXPOA15                    361        ///
      str    DXPOA16                    362        ///
      str    DXPOA17                    363        ///
      str    DXPOA18                    364        ///
      str    DXPOA19                    365        ///
      str    DXPOA20                    366        ///
      str    DXPOA21                    367        ///
      str    DXPOA22                    368        ///
      str    DXPOA23                    369        ///
      str    DXPOA24                    370        ///
      str    DXPOA25                    371        ///
      int    DXVER                      372- 374   ///
      int    E_CCS1                     375- 378   ///
      int    E_CCS2                     379- 382   ///
      int    E_CCS3                     383- 386   ///
      int    E_CCS4                     387- 390   ///
      int    E_CCS5                     391- 394   ///
      int    E_CCS6                     395- 398   ///
      int    E_CCS7                     399- 402   ///
      int    E_CCS8                     403- 406   ///
      int    E_CCS9                     407- 410   ///
      int    E_CCS10                    411- 414   ///
      str    E_POA1                     415        ///
      str    E_POA2                     416        ///
      str    E_POA3                     417        ///
      str    E_POA4                     418        ///
      str    E_POA5                     419        ///
      str    E_POA6                     420        ///
      str    E_POA7                     421        ///
      str    E_POA8                     422        ///
      str    E_POA9                     423        ///
      str    E_POA10                    424        ///
      str    ECODE1                     425- 431   ///
      str    ECODE2                     432- 438   ///
      str    ECODE3                     439- 445   ///
      str    ECODE4                     446- 452   ///
      str    ECODE5                     453- 459   ///
      str    ECODE6                     460- 466   ///
      str    ECODE7                     467- 473   ///
      str    ECODE8                     474- 480   ///
      str    ECODE9                     481- 487   ///
      str    ECODE10                    488- 494   ///
      byte   FEMALE                     495- 496   ///
      byte   HCUP_ED                    497- 498   ///
      byte   HCUP_OS                    499- 500   ///
      byte   HISPANIC                   501- 502   ///
      str    HISPANIC_X                 503        ///
      byte   Homeless                   504- 505   ///
      int    HOSPBRTH                   506- 508   ///
      byte   HospitalUnit               509- 510   ///
      str    HOSPST                     511- 512   ///
      double KEY                        513- 527   ///
      long   LOS                        528- 532   ///
      long   LOS_X                      533- 538   ///
      byte   MDC                        539- 540   ///
      byte   MDC_NoPOA                  541- 542   ///
      byte   MDC32                      543- 544   ///
      long   MDNUM1_R                   545- 553   ///
      long   MDNUM2_R                   554- 562   ///
      long   MDNUM3_R                   563- 571   ///
      long   MDNUM4_R                   572- 580   ///
      byte   MEDINCSTQ                  581- 582   ///
      int    NCHRONIC                   583- 585   ///
      int    NDX                        586- 588   ///
      byte   NECODE                     589- 590   ///
      byte   NEOMAT                     591- 592   ///
      int    NPR                        593- 595   ///
      byte   ORPROC                     596- 597   ///
      double OS_TIME                    598- 608   ///
      byte   PAY1                       609- 610   ///
      str    PAY1_X                     611- 613   ///
      byte   PAY2                       614- 615   ///
      str    PAY2_X                     616- 618   ///
      byte   PAY3                       619- 620   ///
      str    PAY3_X                     621- 623   ///
      int    PL_CBSA                    624- 626   ///
      byte   PL_NCHS                    627- 628   ///
      byte   PL_RUCC                    629- 630   ///
      byte   PL_UIC                     631- 632   ///
      byte   PL_UR_CAT4                 633- 634   ///
      byte   POA_Disch_Edit1            635- 636   ///
      byte   POA_Disch_Edit2            637- 638   ///
      byte   POA_Hosp_Edit1             639- 640   ///
      byte   POA_Hosp_Edit2             641- 642   ///
      byte   POA_Hosp_Edit3             643- 644   ///
      double POA_Hosp_Edit3_Value       645- 652   ///
      str    PointOfOrigin_X            653        ///
      str    PointOfOriginUB04          654        ///
      str    PR1                        655- 661   ///
      str    PR2                        662- 668   ///
      str    PR3                        669- 675   ///
      str    PR4                        676- 682   ///
      str    PR5                        683- 689   ///
      str    PR6                        690- 696   ///
      str    PR7                        697- 703   ///
      str    PR8                        704- 710   ///
      str    PR9                        711- 717   ///
      str    PR10                       718- 724   ///
      str    PR11                       725- 731   ///
      str    PR12                       732- 738   ///
      str    PR13                       739- 745   ///
      str    PR14                       746- 752   ///
      str    PR15                       753- 759   ///
      str    PR16                       760- 766   ///
      str    PR17                       767- 773   ///
      str    PR18                       774- 780   ///
      str    PR19                       781- 787   ///
      str    PR20                       788- 794   ///
      str    PR21                       795- 801   ///
      str    PR22                       802- 808   ///
      str    PR23                       809- 815   ///
      str    PR24                       816- 822   ///
      str    PR25                       823- 829   ///
      int    PRCCS1                     830- 832   ///
      int    PRCCS2                     833- 835   ///
      int    PRCCS3                     836- 838   ///
      int    PRCCS4                     839- 841   ///
      int    PRCCS5                     842- 844   ///
      int    PRCCS6                     845- 847   ///
      int    PRCCS7                     848- 850   ///
      int    PRCCS8                     851- 853   ///
      int    PRCCS9                     854- 856   ///
      int    PRCCS10                    857- 859   ///
      int    PRCCS11                    860- 862   ///
      int    PRCCS12                    863- 865   ///
      int    PRCCS13                    866- 868   ///
      int    PRCCS14                    869- 871   ///
      int    PRCCS15                    872- 874   ///
      int    PRCCS16                    875- 877   ///
      int    PRCCS17                    878- 880   ///
      int    PRCCS18                    881- 883   ///
      int    PRCCS19                    884- 886   ///
      int    PRCCS20                    887- 889   ///
      int    PRCCS21                    890- 892   ///
      int    PRCCS22                    893- 895   ///
      int    PRCCS23                    896- 898   ///
      int    PRCCS24                    899- 901   ///
      int    PRCCS25                    902- 904   ///
      long   PRDAY1                     905- 909   ///
      long   PRDAY2                     910- 914   ///
      long   PRDAY3                     915- 919   ///
      long   PRDAY4                     920- 924   ///
      long   PRDAY5                     925- 929   ///
      long   PRDAY6                     930- 934   ///
      long   PRDAY7                     935- 939   ///
      long   PRDAY8                     940- 944   ///
      long   PRDAY9                     945- 949   ///
      long   PRDAY10                    950- 954   ///
      long   PRDAY11                    955- 959   ///
      long   PRDAY12                    960- 964   ///
      long   PRDAY13                    965- 969   ///
      long   PRDAY14                    970- 974   ///
      long   PRDAY15                    975- 979   ///
      long   PRDAY16                    980- 984   ///
      long   PRDAY17                    985- 989   ///
      long   PRDAY18                    990- 994   ///
      long   PRDAY19                    995- 999   ///
      long   PRDAY20                   1000-1004   ///
      long   PRDAY21                   1005-1009   ///
      long   PRDAY22                   1010-1014   ///
      long   PRDAY23                   1015-1019   ///
      long   PRDAY24                   1020-1024   ///
      long   PRDAY25                   1025-1029   ///
      int    PROCTYPE                  1030-1032   ///
      int    PRVER                     1033-1035   ///
      str    PSTATE                    1036-1037   ///
      long   PSTCO2                    1038-1042   ///
      byte   RACE                      1043-1044   ///
      str    RACE_X                    1045-1050   ///
      byte   SERVICELINE               1051-1052   ///
      double TOTCHG                    1053-1062   ///
      double TOTCHG_X                  1063-1077   ///
      byte   TRAN_IN                   1078-1079   ///
      byte   TRAN_OUT                  1080-1081   ///
      long   VisitLink                 1082-1090   ///
      int    YEAR                      1091-1094   ///
      str    ZIP                       1095-1099   ///
      str    ZIP3                      1100-1102   ///
      int    ZIPINC_QRTL               1103-1105   ///
      int    AYEAR                     1106-1109   ///
      using  "WA_SID_2015q1q3_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var DaysToEvent              "Days from 'start date' to admission"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
label var DRG32                    "DRG, version 32"
label var DRGVER                   "DRG grouper version used on discharge date"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HospitalUnit             "Patient was discharged from a special unit within an acute care hospital (reported by source)"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDC32                    "MDC, version 32"
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
label var POA_Disch_Edit1          "Discharge has POA missing on all nonexempt diagnoses"
label var POA_Disch_Edit2          "Discharge has POA missing on all nonexempt secondary diagnoses"
label var POA_Hosp_Edit1           "Hospital reported POA as Y on all diagnoses on all discharges"
label var POA_Hosp_Edit2           "Hospital reported POA as missing on all non-Medicare discharges"
label var POA_Hosp_Edit3           "Hospital reported POA as missing on all nonexempt diagnoses for 15% or more of discharges"
label var POA_Hosp_Edit3_Value     "Percentage of discharges with all nonexempt diagnoses missing POA indicators"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
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
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRG32                     (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
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
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDC32                     (-9 -8 -6 -5=.)
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
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
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

save "WA_SID_2015q1q3_CORE.dta", replace
