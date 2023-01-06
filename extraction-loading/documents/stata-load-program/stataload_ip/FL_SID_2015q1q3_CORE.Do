/*****************************************************************************
* Creation Date: 03/27/2017   
* FL_SID_2015q1q3_CORE.Do
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
      byte   ATYPE                        8-   9   ///
      byte   AWEEKEND                    10-  11   ///
      long   DaysToEvent                 12-  17   ///
      int    DHOUR                       18-  21   ///
      byte   DIED                        22-  23   ///
      str    DISP_X                      24-  25   ///
      byte   DISPUB04                    26-  27   ///
      byte   DISPUNIFORM                 28-  29   ///
      byte   DQTR                        30-  31   ///
      int    DRG                         32-  34   ///
      int    DRG_NoPOA                   35-  37   ///
      int    DRG32                       38-  40   ///
      byte   DRGVER                      41-  42   ///
      str    DSHOSPID                    43-  59   ///
      str    DX_Admitting                60-  66   ///
      str    DX1                         67-  73   ///
      str    DX2                         74-  80   ///
      str    DX3                         81-  87   ///
      str    DX4                         88-  94   ///
      str    DX5                         95- 101   ///
      str    DX6                        102- 108   ///
      str    DX7                        109- 115   ///
      str    DX8                        116- 122   ///
      str    DX9                        123- 129   ///
      str    DX10                       130- 136   ///
      str    DX11                       137- 143   ///
      str    DX12                       144- 150   ///
      str    DX13                       151- 157   ///
      str    DX14                       158- 164   ///
      str    DX15                       165- 171   ///
      str    DX16                       172- 178   ///
      str    DX17                       179- 185   ///
      str    DX18                       186- 192   ///
      str    DX19                       193- 199   ///
      str    DX20                       200- 206   ///
      str    DX21                       207- 213   ///
      str    DX22                       214- 220   ///
      str    DX23                       221- 227   ///
      str    DX24                       228- 234   ///
      str    DX25                       235- 241   ///
      str    DX26                       242- 248   ///
      str    DX27                       249- 255   ///
      str    DX28                       256- 262   ///
      str    DX29                       263- 269   ///
      str    DX30                       270- 276   ///
      str    DX31                       277- 283   ///
      int    DXCCS1                     284- 287   ///
      int    DXCCS2                     288- 291   ///
      int    DXCCS3                     292- 295   ///
      int    DXCCS4                     296- 299   ///
      int    DXCCS5                     300- 303   ///
      int    DXCCS6                     304- 307   ///
      int    DXCCS7                     308- 311   ///
      int    DXCCS8                     312- 315   ///
      int    DXCCS9                     316- 319   ///
      int    DXCCS10                    320- 323   ///
      int    DXCCS11                    324- 327   ///
      int    DXCCS12                    328- 331   ///
      int    DXCCS13                    332- 335   ///
      int    DXCCS14                    336- 339   ///
      int    DXCCS15                    340- 343   ///
      int    DXCCS16                    344- 347   ///
      int    DXCCS17                    348- 351   ///
      int    DXCCS18                    352- 355   ///
      int    DXCCS19                    356- 359   ///
      int    DXCCS20                    360- 363   ///
      int    DXCCS21                    364- 367   ///
      int    DXCCS22                    368- 371   ///
      int    DXCCS23                    372- 375   ///
      int    DXCCS24                    376- 379   ///
      int    DXCCS25                    380- 383   ///
      int    DXCCS26                    384- 387   ///
      int    DXCCS27                    388- 391   ///
      int    DXCCS28                    392- 395   ///
      int    DXCCS29                    396- 399   ///
      int    DXCCS30                    400- 403   ///
      int    DXCCS31                    404- 407   ///
      str    DXPOA1                     408        ///
      str    DXPOA2                     409        ///
      str    DXPOA3                     410        ///
      str    DXPOA4                     411        ///
      str    DXPOA5                     412        ///
      str    DXPOA6                     413        ///
      str    DXPOA7                     414        ///
      str    DXPOA8                     415        ///
      str    DXPOA9                     416        ///
      str    DXPOA10                    417        ///
      str    DXPOA11                    418        ///
      str    DXPOA12                    419        ///
      str    DXPOA13                    420        ///
      str    DXPOA14                    421        ///
      str    DXPOA15                    422        ///
      str    DXPOA16                    423        ///
      str    DXPOA17                    424        ///
      str    DXPOA18                    425        ///
      str    DXPOA19                    426        ///
      str    DXPOA20                    427        ///
      str    DXPOA21                    428        ///
      str    DXPOA22                    429        ///
      str    DXPOA23                    430        ///
      str    DXPOA24                    431        ///
      str    DXPOA25                    432        ///
      str    DXPOA26                    433        ///
      str    DXPOA27                    434        ///
      str    DXPOA28                    435        ///
      str    DXPOA29                    436        ///
      str    DXPOA30                    437        ///
      str    DXPOA31                    438        ///
      int    DXVER                      439- 441   ///
      int    E_CCS1                     442- 445   ///
      int    E_CCS2                     446- 449   ///
      int    E_CCS3                     450- 453   ///
      int    E_CCS4                     454- 457   ///
      int    E_CCS5                     458- 461   ///
      int    E_CCS6                     462- 465   ///
      str    E_POA1                     466        ///
      str    E_POA2                     467        ///
      str    E_POA3                     468        ///
      str    E_POA4                     469        ///
      str    E_POA5                     470        ///
      str    E_POA6                     471        ///
      str    ECODE1                     472- 478   ///
      str    ECODE2                     479- 485   ///
      str    ECODE3                     486- 492   ///
      str    ECODE4                     493- 499   ///
      str    ECODE5                     500- 506   ///
      str    ECODE6                     507- 513   ///
      int    EDHOUR                     514- 517   ///
      byte   FEMALE                     518- 519   ///
      byte   HCUP_ED                    520- 521   ///
      byte   HCUP_OS                    522- 523   ///
      byte   HISPANIC                   524- 525   ///
      str    HISPANIC_X                 526- 527   ///
      byte   Homeless                   528- 529   ///
      int    HOSPBRTH                   530- 532   ///
      byte   HospitalUnit               533- 534   ///
      str    HOSPST                     535- 536   ///
      double KEY                        537- 551   ///
      long   LOS                        552- 556   ///
      long   LOS_X                      557- 562   ///
      byte   MDC                        563- 564   ///
      byte   MDC_NoPOA                  565- 566   ///
      byte   MDC32                      567- 568   ///
      long   MDNUM1_R                   569- 577   ///
      long   MDNUM2_R                   578- 586   ///
      long   MDNUM3_R                   587- 595   ///
      byte   MEDINCSTQ                  596- 597   ///
      int    NCHRONIC                   598- 600   ///
      int    NDX                        601- 603   ///
      byte   NECODE                     604- 605   ///
      byte   NEOMAT                     606- 607   ///
      int    NPR                        608- 610   ///
      byte   ORPROC                     611- 612   ///
      str    P7EDSRC_X                  613- 614   ///
      byte   PAY1                       615- 616   ///
      str    PAY1_X                     617        ///
      int    PL_CBSA                    618- 620   ///
      byte   PL_NCHS                    621- 622   ///
      byte   PL_RUCC                    623- 624   ///
      byte   PL_UIC                     625- 626   ///
      byte   PL_UR_CAT4                 627- 628   ///
      byte   POA_Disch_Edit1            629- 630   ///
      byte   POA_Disch_Edit2            631- 632   ///
      byte   POA_Hosp_Edit1             633- 634   ///
      byte   POA_Hosp_Edit2             635- 636   ///
      byte   POA_Hosp_Edit3             637- 638   ///
      double POA_Hosp_Edit3_Value       639- 646   ///
      str    PointOfOrigin_X            647- 648   ///
      str    PointOfOriginUB04          649        ///
      str    PR1                        650- 656   ///
      str    PR2                        657- 663   ///
      str    PR3                        664- 670   ///
      str    PR4                        671- 677   ///
      str    PR5                        678- 684   ///
      str    PR6                        685- 691   ///
      str    PR7                        692- 698   ///
      str    PR8                        699- 705   ///
      str    PR9                        706- 712   ///
      str    PR10                       713- 719   ///
      str    PR11                       720- 726   ///
      str    PR12                       727- 733   ///
      str    PR13                       734- 740   ///
      str    PR14                       741- 747   ///
      str    PR15                       748- 754   ///
      str    PR16                       755- 761   ///
      str    PR17                       762- 768   ///
      str    PR18                       769- 775   ///
      str    PR19                       776- 782   ///
      str    PR20                       783- 789   ///
      str    PR21                       790- 796   ///
      str    PR22                       797- 803   ///
      str    PR23                       804- 810   ///
      str    PR24                       811- 817   ///
      str    PR25                       818- 824   ///
      str    PR26                       825- 831   ///
      str    PR27                       832- 838   ///
      str    PR28                       839- 845   ///
      str    PR29                       846- 852   ///
      str    PR30                       853- 859   ///
      str    PR31                       860- 866   ///
      int    PRCCS1                     867- 869   ///
      int    PRCCS2                     870- 872   ///
      int    PRCCS3                     873- 875   ///
      int    PRCCS4                     876- 878   ///
      int    PRCCS5                     879- 881   ///
      int    PRCCS6                     882- 884   ///
      int    PRCCS7                     885- 887   ///
      int    PRCCS8                     888- 890   ///
      int    PRCCS9                     891- 893   ///
      int    PRCCS10                    894- 896   ///
      int    PRCCS11                    897- 899   ///
      int    PRCCS12                    900- 902   ///
      int    PRCCS13                    903- 905   ///
      int    PRCCS14                    906- 908   ///
      int    PRCCS15                    909- 911   ///
      int    PRCCS16                    912- 914   ///
      int    PRCCS17                    915- 917   ///
      int    PRCCS18                    918- 920   ///
      int    PRCCS19                    921- 923   ///
      int    PRCCS20                    924- 926   ///
      int    PRCCS21                    927- 929   ///
      int    PRCCS22                    930- 932   ///
      int    PRCCS23                    933- 935   ///
      int    PRCCS24                    936- 938   ///
      int    PRCCS25                    939- 941   ///
      int    PRCCS26                    942- 944   ///
      int    PRCCS27                    945- 947   ///
      int    PRCCS28                    948- 950   ///
      int    PRCCS29                    951- 953   ///
      int    PRCCS30                    954- 956   ///
      int    PRCCS31                    957- 959   ///
      long   PRDAY1                     960- 964   ///
      long   PRDAY2                     965- 969   ///
      long   PRDAY3                     970- 974   ///
      long   PRDAY4                     975- 979   ///
      long   PRDAY5                     980- 984   ///
      long   PRDAY6                     985- 989   ///
      long   PRDAY7                     990- 994   ///
      long   PRDAY8                     995- 999   ///
      long   PRDAY9                    1000-1004   ///
      long   PRDAY10                   1005-1009   ///
      long   PRDAY11                   1010-1014   ///
      long   PRDAY12                   1015-1019   ///
      long   PRDAY13                   1020-1024   ///
      long   PRDAY14                   1025-1029   ///
      long   PRDAY15                   1030-1034   ///
      long   PRDAY16                   1035-1039   ///
      long   PRDAY17                   1040-1044   ///
      long   PRDAY18                   1045-1049   ///
      long   PRDAY19                   1050-1054   ///
      long   PRDAY20                   1055-1059   ///
      long   PRDAY21                   1060-1064   ///
      long   PRDAY22                   1065-1069   ///
      long   PRDAY23                   1070-1074   ///
      long   PRDAY24                   1075-1079   ///
      long   PRDAY25                   1080-1084   ///
      long   PRDAY26                   1085-1089   ///
      long   PRDAY27                   1090-1094   ///
      long   PRDAY28                   1095-1099   ///
      long   PRDAY29                   1100-1104   ///
      long   PRDAY30                   1105-1109   ///
      long   PRDAY31                   1110-1114   ///
      int    PROCTYPE                  1115-1117   ///
      int    PRVER                     1118-1120   ///
      str    PSTATE                    1121-1122   ///
      long   PSTCO2                    1123-1127   ///
      byte   RACE                      1128-1129   ///
      str    RACE_X                    1130        ///
      byte   SERVICELINE               1131-1132   ///
      double TOTCHG                    1133-1142   ///
      double TOTCHG_X                  1143-1157   ///
      byte   TRAN_IN                   1158-1159   ///
      byte   TRAN_OUT                  1160-1161   ///
      long   VisitLink                 1162-1170   ///
      int    YEAR                      1171-1174   ///
      str    ZIP                       1175-1179   ///
      str    ZIP3                      1180-1182   ///
      int    ZIPINC_QRTL               1183-1185   ///
      int    EDYEAR                    1186-1189   ///
      int    PRYEAR1                   1190-1193   ///
      int    PRYEAR2                   1194-1197   ///
      int    PRYEAR3                   1198-1201   ///
      int    PRYEAR4                   1202-1205   ///
      int    PRYEAR5                   1206-1209   ///
      int    PRYEAR6                   1210-1213   ///
      int    PRYEAR7                   1214-1217   ///
      int    PRYEAR8                   1218-1221   ///
      int    PRYEAR9                   1222-1225   ///
      int    PRYEAR10                  1226-1229   ///
      int    PRYEAR11                  1230-1233   ///
      int    PRYEAR12                  1234-1237   ///
      int    PRYEAR13                  1238-1241   ///
      int    PRYEAR14                  1242-1245   ///
      int    PRYEAR15                  1246-1249   ///
      int    PRYEAR16                  1250-1253   ///
      int    PRYEAR17                  1254-1257   ///
      int    PRYEAR18                  1258-1261   ///
      int    PRYEAR19                  1262-1265   ///
      int    PRYEAR20                  1266-1269   ///
      int    PRYEAR21                  1270-1273   ///
      int    PRYEAR22                  1274-1277   ///
      int    PRYEAR23                  1278-1281   ///
      int    PRYEAR24                  1282-1285   ///
      int    PRYEAR25                  1286-1289   ///
      int    PRYEAR26                  1290-1293   ///
      int    PRYEAR27                  1294-1297   ///
      int    PRYEAR28                  1298-1301   ///
      int    PRYEAR29                  1302-1305   ///
      int    PRYEAR30                  1306-1309   ///
      int    PRYEAR31                  1310-1313   ///
      using  "FL_SID_2015q1q3_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AHOUR                    "Admission Hour"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
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
label var DX26                     "Diagnosis 26"
label var DX27                     "Diagnosis 27"
label var DX28                     "Diagnosis 28"
label var DX29                     "Diagnosis 29"
label var DX30                     "Diagnosis 30"
label var DX31                     "Diagnosis 31"
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
label var DXCCS26                  "CCS: diagnosis 26"
label var DXCCS27                  "CCS: diagnosis 27"
label var DXCCS28                  "CCS: diagnosis 28"
label var DXCCS29                  "CCS: diagnosis 29"
label var DXCCS30                  "CCS: diagnosis 30"
label var DXCCS31                  "CCS: diagnosis 31"
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
label var DXPOA26                  "Diagnosis 26, present on admission indicator"
label var DXPOA27                  "Diagnosis 27, present on admission indicator"
label var DXPOA28                  "Diagnosis 28, present on admission indicator"
label var DXPOA29                  "Diagnosis 29, present on admission indicator"
label var DXPOA30                  "Diagnosis 30, present on admission indicator"
label var DXPOA31                  "Diagnosis 31, present on admission indicator"
label var DXVER                    "Diagnosis Version"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var EDHOUR                   "Emergency department time of arrival prior to inpatient admission"
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
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCHRONIC                 "Number of chronic conditions"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
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
label var PR26                     "Procedure 26"
label var PR27                     "Procedure 27"
label var PR28                     "Procedure 28"
label var PR29                     "Procedure 29"
label var PR30                     "Procedure 30"
label var PR31                     "Procedure 31"
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
label var PRCCS26                  "CCS: procedure 26"
label var PRCCS27                  "CCS: procedure 27"
label var PRCCS28                  "CCS: procedure 28"
label var PRCCS29                  "CCS: procedure 29"
label var PRCCS30                  "CCS: procedure 30"
label var PRCCS31                  "CCS: procedure 31"
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
label var PRDAY26                  "Number of days from admission to PR26"
label var PRDAY27                  "Number of days from admission to PR27"
label var PRDAY28                  "Number of days from admission to PR28"
label var PRDAY29                  "Number of days from admission to PR29"
label var PRDAY30                  "Number of days from admission to PR30"
label var PRDAY31                  "Number of days from admission to PR31"
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
label var EDYEAR                   "Emergency Department arrival year"
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
label var PRYEAR26                 "Year of procedure 26"
label var PRYEAR27                 "Year of procedure 27"
label var PRYEAR28                 "Year of procedure 28"
label var PRYEAR29                 "Year of procedure 29"
label var PRYEAR30                 "Year of procedure 30"
label var PRYEAR31                 "Year of procedure 31"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
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
recode DXCCS26                   (-999 -888 -666=.)
recode DXCCS27                   (-999 -888 -666=.)
recode DXCCS28                   (-999 -888 -666=.)
recode DXCCS29                   (-999 -888 -666=.)
recode DXCCS30                   (-999 -888 -666=.)
recode DXCCS31                   (-999 -888 -666=.)
recode DXVER                     (-99 -88 -66=.)
recode E_CCS1                    (-999 -888 -666=.)
recode E_CCS2                    (-999 -888 -666=.)
recode E_CCS3                    (-999 -888 -666=.)
recode E_CCS4                    (-999 -888 -666=.)
recode E_CCS5                    (-999 -888 -666=.)
recode E_CCS6                    (-999 -888 -666=.)
recode EDHOUR                    (-999 -888 -666=.)
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
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
recode PAY1                      (-9 -8 -6 -5=.)
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
recode PRCCS26                   (-99 -88 -66=.)
recode PRCCS27                   (-99 -88 -66=.)
recode PRCCS28                   (-99 -88 -66=.)
recode PRCCS29                   (-99 -88 -66=.)
recode PRCCS30                   (-99 -88 -66=.)
recode PRCCS31                   (-99 -88 -66=.)
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
recode PRDAY26                   (-9999 -8888 -6666=.)
recode PRDAY27                   (-9999 -8888 -6666=.)
recode PRDAY28                   (-9999 -8888 -6666=.)
recode PRDAY29                   (-9999 -8888 -6666=.)
recode PRDAY30                   (-9999 -8888 -6666=.)
recode PRDAY31                   (-9999 -8888 -6666=.)
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
recode EDYEAR                    (-999 -888 -666=.)
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
recode PRYEAR26                  (-999 -888 -666=.)
recode PRYEAR27                  (-999 -888 -666=.)
recode PRYEAR28                  (-999 -888 -666=.)
recode PRYEAR29                  (-999 -888 -666=.)
recode PRYEAR30                  (-999 -888 -666=.)
recode PRYEAR31                  (-999 -888 -666=.)

save "FL_SID_2015q1q3_CORE.dta", replace
