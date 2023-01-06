/*****************************************************************************
* Creation Date: 05/24/2017   
* KY_SID_2015q1q3_CORE.Do
* This program will load the 2015 KY ASCII CORE File into Stata.
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
      byte   AMONTH                      10-  11   ///
      byte   ATYPE                       12-  13   ///
      byte   AWEEKEND                    14-  15   ///
      str    BILLTYPE                    16-  19   ///
      int    BWT                         20-  23   ///
      byte   DIED                        24-  25   ///
      str    DISP_X                      26-  27   ///
      byte   DISPUB04                    28-  29   ///
      byte   DISPUNIFORM                 30-  31   ///
      byte   DMONTH                      32-  33   ///
      byte   DNR                         34-  35   ///
      byte   DQTR                        36-  37   ///
      int    DRG                         38-  40   ///
      int    DRG_NoPOA                   41-  43   ///
      int    DRG32                       44-  46   ///
      byte   DRGVER                      47-  48   ///
      str    DSHOSPID                    49-  65   ///
      str    DX_Admitting                66-  72   ///
      str    DX1                         73-  79   ///
      str    DX2                         80-  86   ///
      str    DX3                         87-  93   ///
      str    DX4                         94- 100   ///
      str    DX5                        101- 107   ///
      str    DX6                        108- 114   ///
      str    DX7                        115- 121   ///
      str    DX8                        122- 128   ///
      str    DX9                        129- 135   ///
      str    DX10                       136- 142   ///
      str    DX11                       143- 149   ///
      str    DX12                       150- 156   ///
      str    DX13                       157- 163   ///
      str    DX14                       164- 170   ///
      str    DX15                       171- 177   ///
      str    DX16                       178- 184   ///
      str    DX17                       185- 191   ///
      str    DX18                       192- 198   ///
      str    DX19                       199- 205   ///
      str    DX20                       206- 212   ///
      str    DX21                       213- 219   ///
      str    DX22                       220- 226   ///
      str    DX23                       227- 233   ///
      str    DX24                       234- 240   ///
      str    DX25                       241- 247   ///
      int    DXCCS1                     248- 251   ///
      int    DXCCS2                     252- 255   ///
      int    DXCCS3                     256- 259   ///
      int    DXCCS4                     260- 263   ///
      int    DXCCS5                     264- 267   ///
      int    DXCCS6                     268- 271   ///
      int    DXCCS7                     272- 275   ///
      int    DXCCS8                     276- 279   ///
      int    DXCCS9                     280- 283   ///
      int    DXCCS10                    284- 287   ///
      int    DXCCS11                    288- 291   ///
      int    DXCCS12                    292- 295   ///
      int    DXCCS13                    296- 299   ///
      int    DXCCS14                    300- 303   ///
      int    DXCCS15                    304- 307   ///
      int    DXCCS16                    308- 311   ///
      int    DXCCS17                    312- 315   ///
      int    DXCCS18                    316- 319   ///
      int    DXCCS19                    320- 323   ///
      int    DXCCS20                    324- 327   ///
      int    DXCCS21                    328- 331   ///
      int    DXCCS22                    332- 335   ///
      int    DXCCS23                    336- 339   ///
      int    DXCCS24                    340- 343   ///
      int    DXCCS25                    344- 347   ///
      str    DXPOA1                     348        ///
      str    DXPOA2                     349        ///
      str    DXPOA3                     350        ///
      str    DXPOA4                     351        ///
      str    DXPOA5                     352        ///
      str    DXPOA6                     353        ///
      str    DXPOA7                     354        ///
      str    DXPOA8                     355        ///
      str    DXPOA9                     356        ///
      str    DXPOA10                    357        ///
      str    DXPOA11                    358        ///
      str    DXPOA12                    359        ///
      str    DXPOA13                    360        ///
      str    DXPOA14                    361        ///
      str    DXPOA15                    362        ///
      str    DXPOA16                    363        ///
      str    DXPOA17                    364        ///
      str    DXPOA18                    365        ///
      str    DXPOA19                    366        ///
      str    DXPOA20                    367        ///
      str    DXPOA21                    368        ///
      str    DXPOA22                    369        ///
      str    DXPOA23                    370        ///
      str    DXPOA24                    371        ///
      str    DXPOA25                    372        ///
      int    DXVER                      373- 375   ///
      int    E_CCS1                     376- 379   ///
      int    E_CCS2                     380- 383   ///
      int    E_CCS3                     384- 387   ///
      int    E_CCS4                     388- 391   ///
      int    E_CCS5                     392- 395   ///
      int    E_CCS6                     396- 399   ///
      int    E_CCS7                     400- 403   ///
      int    E_CCS8                     404- 407   ///
      int    E_CCS9                     408- 411   ///
      str    E_POA1                     412        ///
      str    E_POA2                     413        ///
      str    E_POA3                     414        ///
      str    E_POA4                     415        ///
      str    E_POA5                     416        ///
      str    E_POA6                     417        ///
      str    E_POA7                     418        ///
      str    E_POA8                     419        ///
      str    E_POA9                     420        ///
      str    ECODE1                     421- 427   ///
      str    ECODE2                     428- 434   ///
      str    ECODE3                     435- 441   ///
      str    ECODE4                     442- 448   ///
      str    ECODE5                     449- 455   ///
      str    ECODE6                     456- 462   ///
      str    ECODE7                     463- 469   ///
      str    ECODE8                     470- 476   ///
      str    ECODE9                     477- 483   ///
      byte   FEMALE                     484- 485   ///
      byte   HCUP_ED                    486- 487   ///
      byte   HCUP_OS                    488- 489   ///
      byte   HISPANIC                   490- 491   ///
      str    HISPANIC_X                 492- 493   ///
      str    HOSP_NPI                   494- 503   ///
      int    HOSPBRTH                   504- 506   ///
      str    HOSPST                     507- 508   ///
      double KEY                        509- 523   ///
      long   LOS                        524- 528   ///
      long   LOS_X                      529- 534   ///
      byte   MDC                        535- 536   ///
      byte   MDC_NoPOA                  537- 538   ///
      byte   MDC32                      539- 540   ///
      byte   MEDINCSTQ                  541- 542   ///
      int    NCHRONIC                   543- 545   ///
      int    NDX                        546- 548   ///
      byte   NECODE                     549- 550   ///
      byte   NEOMAT                     551- 552   ///
      int    NPR                        553- 555   ///
      byte   ORPROC                     556- 557   ///
      double OS_TIME                    558- 568   ///
      byte   PAY1                       569- 570   ///
      str    PAY1_X                     571- 575   ///
      byte   PAY2                       576- 577   ///
      str    PAY2_X                     578- 582   ///
      byte   PAY3                       583- 584   ///
      str    PAY3_X                     585- 589   ///
      int    PL_CBSA                    590- 592   ///
      byte   PL_NCHS                    593- 594   ///
      byte   PL_RUCC                    595- 596   ///
      byte   PL_UIC                     597- 598   ///
      byte   PL_UR_CAT4                 599- 600   ///
      byte   POA_Disch_Edit1            601- 602   ///
      byte   POA_Disch_Edit2            603- 604   ///
      byte   POA_Hosp_Edit1             605- 606   ///
      byte   POA_Hosp_Edit2             607- 608   ///
      byte   POA_Hosp_Edit3             609- 610   ///
      double POA_Hosp_Edit3_Value       611- 618   ///
      str    PointOfOrigin_X            619        ///
      str    PointOfOriginUB04          620        ///
      str    PR1                        621- 627   ///
      str    PR2                        628- 634   ///
      str    PR3                        635- 641   ///
      str    PR4                        642- 648   ///
      str    PR5                        649- 655   ///
      str    PR6                        656- 662   ///
      str    PR7                        663- 669   ///
      str    PR8                        670- 676   ///
      str    PR9                        677- 683   ///
      str    PR10                       684- 690   ///
      str    PR11                       691- 697   ///
      str    PR12                       698- 704   ///
      str    PR13                       705- 711   ///
      str    PR14                       712- 718   ///
      str    PR15                       719- 725   ///
      str    PR16                       726- 732   ///
      str    PR17                       733- 739   ///
      str    PR18                       740- 746   ///
      str    PR19                       747- 753   ///
      str    PR20                       754- 760   ///
      str    PR21                       761- 767   ///
      str    PR22                       768- 774   ///
      str    PR23                       775- 781   ///
      str    PR24                       782- 788   ///
      str    PR25                       789- 795   ///
      int    PRCCS1                     796- 798   ///
      int    PRCCS2                     799- 801   ///
      int    PRCCS3                     802- 804   ///
      int    PRCCS4                     805- 807   ///
      int    PRCCS5                     808- 810   ///
      int    PRCCS6                     811- 813   ///
      int    PRCCS7                     814- 816   ///
      int    PRCCS8                     817- 819   ///
      int    PRCCS9                     820- 822   ///
      int    PRCCS10                    823- 825   ///
      int    PRCCS11                    826- 828   ///
      int    PRCCS12                    829- 831   ///
      int    PRCCS13                    832- 834   ///
      int    PRCCS14                    835- 837   ///
      int    PRCCS15                    838- 840   ///
      int    PRCCS16                    841- 843   ///
      int    PRCCS17                    844- 846   ///
      int    PRCCS18                    847- 849   ///
      int    PRCCS19                    850- 852   ///
      int    PRCCS20                    853- 855   ///
      int    PRCCS21                    856- 858   ///
      int    PRCCS22                    859- 861   ///
      int    PRCCS23                    862- 864   ///
      int    PRCCS24                    865- 867   ///
      int    PRCCS25                    868- 870   ///
      long   PRDAY1                     871- 875   ///
      long   PRDAY2                     876- 880   ///
      long   PRDAY3                     881- 885   ///
      long   PRDAY4                     886- 890   ///
      long   PRDAY5                     891- 895   ///
      long   PRDAY6                     896- 900   ///
      long   PRDAY7                     901- 905   ///
      long   PRDAY8                     906- 910   ///
      long   PRDAY9                     911- 915   ///
      long   PRDAY10                    916- 920   ///
      long   PRDAY11                    921- 925   ///
      long   PRDAY12                    926- 930   ///
      long   PRDAY13                    931- 935   ///
      long   PRDAY14                    936- 940   ///
      long   PRDAY15                    941- 945   ///
      long   PRDAY16                    946- 950   ///
      long   PRDAY17                    951- 955   ///
      long   PRDAY18                    956- 960   ///
      long   PRDAY19                    961- 965   ///
      long   PRDAY20                    966- 970   ///
      long   PRDAY21                    971- 975   ///
      long   PRDAY22                    976- 980   ///
      long   PRDAY23                    981- 985   ///
      long   PRDAY24                    986- 990   ///
      long   PRDAY25                    991- 995   ///
      int    PROCTYPE                   996- 998   ///
      int    PRVER                      999-1001   ///
      str    PSTATE                    1002-1003   ///
      long   PSTCO                     1004-1008   ///
      long   PSTCO2                    1009-1013   ///
      byte   RACE                      1014-1015   ///
      str    RACE_X                    1016-1017   ///
      byte   SERVICELINE               1018-1019   ///
      double TOTCHG                    1020-1029   ///
      double TOTCHG_X                  1030-1044   ///
      byte   TRAN_IN                   1045-1046   ///
      byte   TRAN_OUT                  1047-1048   ///
      int    YEAR                      1049-1052   ///
      str    ZIP                       1053-1057   ///
      int    ZIPINC_QRTL               1058-1060   ///
      int    AYEAR                     1061-1064   ///
      byte   BMONTH                    1065-1066   ///
      int    BYEAR                     1067-1070   ///
      byte   PRMONTH1                  1071-1072   ///
      byte   PRMONTH2                  1073-1074   ///
      byte   PRMONTH3                  1075-1076   ///
      byte   PRMONTH4                  1077-1078   ///
      byte   PRMONTH5                  1079-1080   ///
      byte   PRMONTH6                  1081-1082   ///
      byte   PRMONTH7                  1083-1084   ///
      byte   PRMONTH8                  1085-1086   ///
      byte   PRMONTH9                  1087-1088   ///
      byte   PRMONTH10                 1089-1090   ///
      byte   PRMONTH11                 1091-1092   ///
      byte   PRMONTH12                 1093-1094   ///
      byte   PRMONTH13                 1095-1096   ///
      byte   PRMONTH14                 1097-1098   ///
      byte   PRMONTH15                 1099-1100   ///
      byte   PRMONTH16                 1101-1102   ///
      byte   PRMONTH17                 1103-1104   ///
      byte   PRMONTH18                 1105-1106   ///
      byte   PRMONTH19                 1107-1108   ///
      byte   PRMONTH20                 1109-1110   ///
      byte   PRMONTH21                 1111-1112   ///
      byte   PRMONTH22                 1113-1114   ///
      byte   PRMONTH23                 1115-1116   ///
      byte   PRMONTH24                 1117-1118   ///
      byte   PRMONTH25                 1119-1120   ///
      int    PRYEAR1                   1121-1124   ///
      int    PRYEAR2                   1125-1128   ///
      int    PRYEAR3                   1129-1132   ///
      int    PRYEAR4                   1133-1136   ///
      int    PRYEAR5                   1137-1140   ///
      int    PRYEAR6                   1141-1144   ///
      int    PRYEAR7                   1145-1148   ///
      int    PRYEAR8                   1149-1152   ///
      int    PRYEAR9                   1153-1156   ///
      int    PRYEAR10                  1157-1160   ///
      int    PRYEAR11                  1161-1164   ///
      int    PRYEAR12                  1165-1168   ///
      int    PRYEAR13                  1169-1172   ///
      int    PRYEAR14                  1173-1176   ///
      int    PRYEAR15                  1177-1180   ///
      int    PRYEAR16                  1181-1184   ///
      int    PRYEAR17                  1185-1188   ///
      int    PRYEAR18                  1189-1192   ///
      int    PRYEAR19                  1193-1196   ///
      int    PRYEAR20                  1197-1200   ///
      int    PRYEAR21                  1201-1204   ///
      int    PRYEAR22                  1205-1208   ///
      int    PRYEAR23                  1209-1212   ///
      int    PRYEAR24                  1213-1216   ///
      int    PRYEAR25                  1217-1220   ///
      using  "KY_SID_2015q1q3_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var BWT                      "Birth weight in grams"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DNR                      "Do not resuscitate indicator"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
label var DRG32                    "DRG, version 32"
label var DRGVER                   "DRG grouper version used on discharge date"
label var DSHOSPID                 "Data source hospital identifier"
label var DX_Admitting             "Admitting Diagnosis Code"
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
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var E_POA7                   "E Code 7, present on admission indicator"
label var E_POA8                   "E Code 8, present on admission indicator"
label var E_POA9                   "E Code 9, present on admission indicator"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var ECODE8                   "E code 8"
label var ECODE9                   "E code 9"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSP_NPI                 "Hospital NPI"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDC32                    "MDC, version 32"
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
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var SERVICELINE              "Hospital Service Line"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
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
label var PRMONTH15                "Month of procedure 15"
label var PRMONTH16                "Month of procedure 16"
label var PRMONTH17                "Month of procedure 17"
label var PRMONTH18                "Month of procedure 18"
label var PRMONTH19                "Month of procedure 19"
label var PRMONTH20                "Month of procedure 20"
label var PRMONTH21                "Month of procedure 21"
label var PRMONTH22                "Month of procedure 22"
label var PRMONTH23                "Month of procedure 23"
label var PRMONTH24                "Month of procedure 24"
label var PRMONTH25                "Month of procedure 25"
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
label var PRYEAR15                 "Year of procedure 15"
label var PRYEAR16                 "Year of procedure 16"
label var PRYEAR17                 "Year of procedure 17"
label var PRYEAR18                 "Year of procedure 18"
label var PRYEAR19                 "Year of procedure 19"
label var PRYEAR20                 "Year of procedure 20"
label var PRYEAR21                 "Year of procedure 21"
label var PRYEAR22                 "Year of procedure 22"
label var PRYEAR23                 "Year of procedure 23"
label var PRYEAR24                 "Year of procedure 24"
label var PRYEAR25                 "Year of procedure 25"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DNR                       (-9 -8 -6 -5=.)
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
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDC32                     (-9 -8 -6 -5=.)
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
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode SERVICELINE               (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
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
recode PRMONTH15                 (-9 -8 -6 -5=.)
recode PRMONTH16                 (-9 -8 -6 -5=.)
recode PRMONTH17                 (-9 -8 -6 -5=.)
recode PRMONTH18                 (-9 -8 -6 -5=.)
recode PRMONTH19                 (-9 -8 -6 -5=.)
recode PRMONTH20                 (-9 -8 -6 -5=.)
recode PRMONTH21                 (-9 -8 -6 -5=.)
recode PRMONTH22                 (-9 -8 -6 -5=.)
recode PRMONTH23                 (-9 -8 -6 -5=.)
recode PRMONTH24                 (-9 -8 -6 -5=.)
recode PRMONTH25                 (-9 -8 -6 -5=.)
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
recode PRYEAR15                  (-999 -888 -666=.)
recode PRYEAR16                  (-999 -888 -666=.)
recode PRYEAR17                  (-999 -888 -666=.)
recode PRYEAR18                  (-999 -888 -666=.)
recode PRYEAR19                  (-999 -888 -666=.)
recode PRYEAR20                  (-999 -888 -666=.)
recode PRYEAR21                  (-999 -888 -666=.)
recode PRYEAR22                  (-999 -888 -666=.)
recode PRYEAR23                  (-999 -888 -666=.)
recode PRYEAR24                  (-999 -888 -666=.)
recode PRYEAR25                  (-999 -888 -666=.)

save "KY_SID_2015q1q3_CORE.dta", replace
