/*****************************************************************************
* Creation Date: 03/14/2017   
* CO_SID_2015q4_CORE.Do
* This program will load the 2015 CO ASCII CORE File into Stata.
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
      int    AGEMONTH                     4-   6   ///
      byte   AMONTH                       7-   8   ///
      byte   ATYPE                        9-  10   ///
      byte   AWEEKEND                    11-  12   ///
      int    BWT                         13-  16   ///
      byte   DIED                        17-  18   ///
      str    DISP_X                      19-  20   ///
      byte   DISPUB04                    21-  22   ///
      byte   DISPUNIFORM                 23-  24   ///
      byte   DMONTH                      25-  26   ///
      byte   DQTR                        27-  28   ///
      int    DRG                         29-  31   ///
      int    DRG_NoPOA                   32-  34   ///
      int    DRG32                       35-  37   ///
      byte   DRGVER                      38-  39   ///
      str    DSHOSPID                    40-  56   ///
      int    DXVER                       57-  59   ///
      byte   FEMALE                      60-  61   ///
      byte   HCUP_ED                     62-  63   ///
      byte   HCUP_OS                     64-  65   ///
      byte   Homeless                    66-  67   ///
      str    HOSPST                      68-  69   ///
      str    I10_DX1                     70-  76   ///
      str    I10_DX2                     77-  83   ///
      str    I10_DX3                     84-  90   ///
      str    I10_DX4                     91-  97   ///
      str    I10_DX5                     98- 104   ///
      str    I10_DX6                    105- 111   ///
      str    I10_DX7                    112- 118   ///
      str    I10_DX8                    119- 125   ///
      str    I10_DX9                    126- 132   ///
      str    I10_DX10                   133- 139   ///
      str    I10_DX11                   140- 146   ///
      str    I10_DX12                   147- 153   ///
      str    I10_DX13                   154- 160   ///
      str    I10_DX14                   161- 167   ///
      str    I10_DX15                   168- 174   ///
      str    I10_DX16                   175- 181   ///
      str    I10_DX17                   182- 188   ///
      str    I10_DX18                   189- 195   ///
      str    I10_DX19                   196- 202   ///
      str    I10_DX20                   203- 209   ///
      str    I10_DX21                   210- 216   ///
      str    I10_DX22                   217- 223   ///
      str    I10_DX23                   224- 230   ///
      str    I10_DX24                   231- 237   ///
      str    I10_DX25                   238- 244   ///
      str    I10_DX26                   245- 251   ///
      str    I10_DX27                   252- 258   ///
      str    I10_DX28                   259- 265   ///
      str    I10_DX29                   266- 272   ///
      str    I10_DX30                   273- 279   ///
      int    I10_DXCCS1                 280- 283   ///
      int    I10_DXCCS2                 284- 287   ///
      int    I10_DXCCS3                 288- 291   ///
      int    I10_DXCCS4                 292- 295   ///
      int    I10_DXCCS5                 296- 299   ///
      int    I10_DXCCS6                 300- 303   ///
      int    I10_DXCCS7                 304- 307   ///
      int    I10_DXCCS8                 308- 311   ///
      int    I10_DXCCS9                 312- 315   ///
      int    I10_DXCCS10                316- 319   ///
      int    I10_DXCCS11                320- 323   ///
      int    I10_DXCCS12                324- 327   ///
      int    I10_DXCCS13                328- 331   ///
      int    I10_DXCCS14                332- 335   ///
      int    I10_DXCCS15                336- 339   ///
      int    I10_DXCCS16                340- 343   ///
      int    I10_DXCCS17                344- 347   ///
      int    I10_DXCCS18                348- 351   ///
      int    I10_DXCCS19                352- 355   ///
      int    I10_DXCCS20                356- 359   ///
      int    I10_DXCCS21                360- 363   ///
      int    I10_DXCCS22                364- 367   ///
      int    I10_DXCCS23                368- 371   ///
      int    I10_DXCCS24                372- 375   ///
      int    I10_DXCCS25                376- 379   ///
      int    I10_DXCCS26                380- 383   ///
      int    I10_DXCCS27                384- 387   ///
      int    I10_DXCCS28                388- 391   ///
      int    I10_DXCCS29                392- 395   ///
      int    I10_DXCCS30                396- 399   ///
      str    I10_ECAUSE1                400- 406   ///
      str    I10_ECAUSE2                407- 413   ///
      str    I10_ECAUSE3                414- 420   ///
      str    I10_ECAUSE4                421- 427   ///
      str    I10_ECAUSE5                428- 434   ///
      str    I10_ECAUSE6                435- 441   ///
      str    I10_ECAUSE7                442- 448   ///
      str    I10_ECAUSE8                449- 455   ///
      str    I10_ECAUSE9                456- 462   ///
      str    I10_ECAUSE10               463- 469   ///
      str    I10_ECAUSE11               470- 476   ///
      str    I10_ECAUSE12               477- 483   ///
      str    I10_ECAUSE13               484- 490   ///
      str    I10_ECAUSE14               491- 497   ///
      int    I10_ECauseCCS1             498- 501   ///
      int    I10_ECauseCCS2             502- 505   ///
      int    I10_ECauseCCS3             506- 509   ///
      int    I10_ECauseCCS4             510- 513   ///
      int    I10_ECauseCCS5             514- 517   ///
      int    I10_ECauseCCS6             518- 521   ///
      int    I10_ECauseCCS7             522- 525   ///
      int    I10_ECauseCCS8             526- 529   ///
      int    I10_ECauseCCS9             530- 533   ///
      int    I10_ECauseCCS10            534- 537   ///
      int    I10_ECauseCCS11            538- 541   ///
      int    I10_ECauseCCS12            542- 545   ///
      int    I10_ECauseCCS13            546- 549   ///
      int    I10_ECauseCCS14            550- 553   ///
      int    I10_HOSPBRTH               554- 556   ///
      int    I10_NCHRONIC               557- 559   ///
      int    I10_NDX                    560- 562   ///
      byte   I10_NECAUSE                563- 564   ///
      byte   I10_NEOMAT                 565- 566   ///
      int    I10_NPR                    567- 569   ///
      byte   I10_ORPROC                 570- 571   ///
      str    I10_PR1                    572- 578   ///
      str    I10_PR2                    579- 585   ///
      str    I10_PR3                    586- 592   ///
      str    I10_PR4                    593- 599   ///
      str    I10_PR5                    600- 606   ///
      str    I10_PR6                    607- 613   ///
      str    I10_PR7                    614- 620   ///
      str    I10_PR8                    621- 627   ///
      str    I10_PR9                    628- 634   ///
      str    I10_PR10                   635- 641   ///
      str    I10_PR11                   642- 648   ///
      str    I10_PR12                   649- 655   ///
      str    I10_PR13                   656- 662   ///
      str    I10_PR14                   663- 669   ///
      str    I10_PR15                   670- 676   ///
      str    I10_PR16                   677- 683   ///
      str    I10_PR17                   684- 690   ///
      str    I10_PR18                   691- 697   ///
      str    I10_PR19                   698- 704   ///
      str    I10_PR20                   705- 711   ///
      str    I10_PR21                   712- 718   ///
      str    I10_PR22                   719- 725   ///
      str    I10_PR23                   726- 732   ///
      str    I10_PR24                   733- 739   ///
      str    I10_PR25                   740- 746   ///
      str    I10_PR26                   747- 753   ///
      str    I10_PR27                   754- 760   ///
      str    I10_PR28                   761- 767   ///
      str    I10_PR29                   768- 774   ///
      str    I10_PR30                   775- 781   ///
      int    I10_PRCCS1                 782- 784   ///
      int    I10_PRCCS2                 785- 787   ///
      int    I10_PRCCS3                 788- 790   ///
      int    I10_PRCCS4                 791- 793   ///
      int    I10_PRCCS5                 794- 796   ///
      int    I10_PRCCS6                 797- 799   ///
      int    I10_PRCCS7                 800- 802   ///
      int    I10_PRCCS8                 803- 805   ///
      int    I10_PRCCS9                 806- 808   ///
      int    I10_PRCCS10                809- 811   ///
      int    I10_PRCCS11                812- 814   ///
      int    I10_PRCCS12                815- 817   ///
      int    I10_PRCCS13                818- 820   ///
      int    I10_PRCCS14                821- 823   ///
      int    I10_PRCCS15                824- 826   ///
      int    I10_PRCCS16                827- 829   ///
      int    I10_PRCCS17                830- 832   ///
      int    I10_PRCCS18                833- 835   ///
      int    I10_PRCCS19                836- 838   ///
      int    I10_PRCCS20                839- 841   ///
      int    I10_PRCCS21                842- 844   ///
      int    I10_PRCCS22                845- 847   ///
      int    I10_PRCCS23                848- 850   ///
      int    I10_PRCCS24                851- 853   ///
      int    I10_PRCCS25                854- 856   ///
      int    I10_PRCCS26                857- 859   ///
      int    I10_PRCCS27                860- 862   ///
      int    I10_PRCCS28                863- 865   ///
      int    I10_PRCCS29                866- 868   ///
      int    I10_PRCCS30                869- 871   ///
      int    I10_PROCTYPE               872- 874   ///
      byte   I10_SERVICELINE            875- 876   ///
      double KEY                        877- 891   ///
      long   LOS                        892- 896   ///
      long   LOS_X                      897- 902   ///
      byte   MDC                        903- 904   ///
      byte   MDC_NoPOA                  905- 906   ///
      byte   MDC32                      907- 908   ///
      long   MDNUM1_R                   909- 917   ///
      long   MDNUM2_R                   918- 926   ///
      byte   MEDINCSTQ                  927- 928   ///
      long   MRN_R                      929- 937   ///
      str    P7EDSRC_X                  938- 939   ///
      byte   PAY1                       940- 941   ///
      str    PAY1_X                     942- 943   ///
      int    PL_CBSA                    944- 946   ///
      byte   PL_NCHS                    947- 948   ///
      byte   PL_RUCC                    949- 950   ///
      byte   PL_UIC                     951- 952   ///
      byte   PL_UR_CAT4                 953- 954   ///
      str    PointOfOrigin_X            955        ///
      str    PointOfOriginUB04          956        ///
      long   PRDAY1                     957- 961   ///
      long   PRDAY2                     962- 966   ///
      long   PRDAY3                     967- 971   ///
      long   PRDAY4                     972- 976   ///
      long   PRDAY5                     977- 981   ///
      long   PRDAY6                     982- 986   ///
      long   PRDAY7                     987- 991   ///
      long   PRDAY8                     992- 996   ///
      long   PRDAY9                     997-1001   ///
      long   PRDAY10                   1002-1006   ///
      long   PRDAY11                   1007-1011   ///
      long   PRDAY12                   1012-1016   ///
      long   PRDAY13                   1017-1021   ///
      long   PRDAY14                   1022-1026   ///
      long   PRDAY15                   1027-1031   ///
      long   PRDAY16                   1032-1036   ///
      long   PRDAY17                   1037-1041   ///
      long   PRDAY18                   1042-1046   ///
      long   PRDAY19                   1047-1051   ///
      long   PRDAY20                   1052-1056   ///
      long   PRDAY21                   1057-1061   ///
      long   PRDAY22                   1062-1066   ///
      long   PRDAY23                   1067-1071   ///
      long   PRDAY24                   1072-1076   ///
      long   PRDAY25                   1077-1081   ///
      long   PRDAY26                   1082-1086   ///
      long   PRDAY27                   1087-1091   ///
      long   PRDAY28                   1092-1096   ///
      long   PRDAY29                   1097-1101   ///
      long   PRDAY30                   1102-1106   ///
      int    PRVER                     1107-1109   ///
      str    PSTATE                    1110-1111   ///
      long   PSTCO                     1112-1116   ///
      long   PSTCO2                    1117-1121   ///
      byte   RACE                      1122-1123   ///
      str    RACE_X                    1124        ///
      double TOTCHG                    1125-1134   ///
      double TOTCHG_X                  1135-1149   ///
      byte   TRAN_IN                   1150-1151   ///
      byte   TRAN_OUT                  1152-1153   ///
      int    YEAR                      1154-1157   ///
      str    ZIP                       1158-1162   ///
      str    ZIP3                      1163-1165   ///
      int    ZIPINC_QRTL               1166-1168   ///
      int    AYEAR                     1169-1172   ///
      byte   BMONTH                    1173-1174   ///
      int    BYEAR                     1175-1178   ///
      byte   PRMONTH1                  1179-1180   ///
      byte   PRMONTH2                  1181-1182   ///
      byte   PRMONTH3                  1183-1184   ///
      byte   PRMONTH4                  1185-1186   ///
      byte   PRMONTH5                  1187-1188   ///
      byte   PRMONTH6                  1189-1190   ///
      byte   PRMONTH7                  1191-1192   ///
      byte   PRMONTH8                  1193-1194   ///
      byte   PRMONTH9                  1195-1196   ///
      byte   PRMONTH10                 1197-1198   ///
      byte   PRMONTH11                 1199-1200   ///
      byte   PRMONTH12                 1201-1202   ///
      byte   PRMONTH13                 1203-1204   ///
      byte   PRMONTH14                 1205-1206   ///
      byte   PRMONTH15                 1207-1208   ///
      byte   PRMONTH16                 1209-1210   ///
      byte   PRMONTH17                 1211-1212   ///
      byte   PRMONTH18                 1213-1214   ///
      byte   PRMONTH19                 1215-1216   ///
      byte   PRMONTH20                 1217-1218   ///
      byte   PRMONTH21                 1219-1220   ///
      byte   PRMONTH22                 1221-1222   ///
      byte   PRMONTH23                 1223-1224   ///
      byte   PRMONTH24                 1225-1226   ///
      byte   PRMONTH25                 1227-1228   ///
      byte   PRMONTH26                 1229-1230   ///
      byte   PRMONTH27                 1231-1232   ///
      byte   PRMONTH28                 1233-1234   ///
      byte   PRMONTH29                 1235-1236   ///
      byte   PRMONTH30                 1237-1238   ///
      int    PRYEAR1                   1239-1242   ///
      int    PRYEAR2                   1243-1246   ///
      int    PRYEAR3                   1247-1250   ///
      int    PRYEAR4                   1251-1254   ///
      int    PRYEAR5                   1255-1258   ///
      int    PRYEAR6                   1259-1262   ///
      int    PRYEAR7                   1263-1266   ///
      int    PRYEAR8                   1267-1270   ///
      int    PRYEAR9                   1271-1274   ///
      int    PRYEAR10                  1275-1278   ///
      int    PRYEAR11                  1279-1282   ///
      int    PRYEAR12                  1283-1286   ///
      int    PRYEAR13                  1287-1290   ///
      int    PRYEAR14                  1291-1294   ///
      int    PRYEAR15                  1295-1298   ///
      int    PRYEAR16                  1299-1302   ///
      int    PRYEAR17                  1303-1306   ///
      int    PRYEAR18                  1307-1310   ///
      int    PRYEAR19                  1311-1314   ///
      int    PRYEAR20                  1315-1318   ///
      int    PRYEAR21                  1319-1322   ///
      int    PRYEAR22                  1323-1326   ///
      int    PRYEAR23                  1327-1330   ///
      int    PRYEAR24                  1331-1334   ///
      int    PRYEAR25                  1335-1338   ///
      int    PRYEAR26                  1339-1342   ///
      int    PRYEAR27                  1343-1346   ///
      int    PRYEAR28                  1347-1350   ///
      int    PRYEAR29                  1351-1354   ///
      int    PRYEAR30                  1355-1358   ///
      using  "CO_SID_2015q4_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
label var DRG32                    "DRG, version 32"
label var DRGVER                   "DRG grouper version used on discharge date"
label var DSHOSPID                 "Data source hospital identifier"
label var DXVER                    "Diagnosis Version"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var Homeless                 "Indicator that patient is homeless"
label var HOSPST                   "Hospital state postal code"
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
label var I10_DX11                 "ICD-10-CM Diagnosis 11"
label var I10_DX12                 "ICD-10-CM Diagnosis 12"
label var I10_DX13                 "ICD-10-CM Diagnosis 13"
label var I10_DX14                 "ICD-10-CM Diagnosis 14"
label var I10_DX15                 "ICD-10-CM Diagnosis 15"
label var I10_DX16                 "ICD-10-CM Diagnosis 16"
label var I10_DX17                 "ICD-10-CM Diagnosis 17"
label var I10_DX18                 "ICD-10-CM Diagnosis 18"
label var I10_DX19                 "ICD-10-CM Diagnosis 19"
label var I10_DX20                 "ICD-10-CM Diagnosis 20"
label var I10_DX21                 "ICD-10-CM Diagnosis 21"
label var I10_DX22                 "ICD-10-CM Diagnosis 22"
label var I10_DX23                 "ICD-10-CM Diagnosis 23"
label var I10_DX24                 "ICD-10-CM Diagnosis 24"
label var I10_DX25                 "ICD-10-CM Diagnosis 25"
label var I10_DX26                 "ICD-10-CM Diagnosis 26"
label var I10_DX27                 "ICD-10-CM Diagnosis 27"
label var I10_DX28                 "ICD-10-CM Diagnosis 28"
label var I10_DX29                 "ICD-10-CM Diagnosis 29"
label var I10_DX30                 "ICD-10-CM Diagnosis 30"
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
label var I10_DXCCS11              "ICD-10-CM CCS: diagnosis 11"
label var I10_DXCCS12              "ICD-10-CM CCS: diagnosis 12"
label var I10_DXCCS13              "ICD-10-CM CCS: diagnosis 13"
label var I10_DXCCS14              "ICD-10-CM CCS: diagnosis 14"
label var I10_DXCCS15              "ICD-10-CM CCS: diagnosis 15"
label var I10_DXCCS16              "ICD-10-CM CCS: diagnosis 16"
label var I10_DXCCS17              "ICD-10-CM CCS: diagnosis 17"
label var I10_DXCCS18              "ICD-10-CM CCS: diagnosis 18"
label var I10_DXCCS19              "ICD-10-CM CCS: diagnosis 19"
label var I10_DXCCS20              "ICD-10-CM CCS: diagnosis 20"
label var I10_DXCCS21              "ICD-10-CM CCS: diagnosis 21"
label var I10_DXCCS22              "ICD-10-CM CCS: diagnosis 22"
label var I10_DXCCS23              "ICD-10-CM CCS: diagnosis 23"
label var I10_DXCCS24              "ICD-10-CM CCS: diagnosis 24"
label var I10_DXCCS25              "ICD-10-CM CCS: diagnosis 25"
label var I10_DXCCS26              "ICD-10-CM CCS: diagnosis 26"
label var I10_DXCCS27              "ICD-10-CM CCS: diagnosis 27"
label var I10_DXCCS28              "ICD-10-CM CCS: diagnosis 28"
label var I10_DXCCS29              "ICD-10-CM CCS: diagnosis 29"
label var I10_DXCCS30              "ICD-10-CM CCS: diagnosis 30"
label var I10_ECAUSE1              "ICD-10-CM E Cause 1"
label var I10_ECAUSE2              "ICD-10-CM E Cause 2"
label var I10_ECAUSE3              "ICD-10-CM E Cause 3"
label var I10_ECAUSE4              "ICD-10-CM E Cause 4"
label var I10_ECAUSE5              "ICD-10-CM E Cause 5"
label var I10_ECAUSE6              "ICD-10-CM E Cause 6"
label var I10_ECAUSE7              "ICD-10-CM E Cause 7"
label var I10_ECAUSE8              "ICD-10-CM E Cause 8"
label var I10_ECAUSE9              "ICD-10-CM E Cause 9"
label var I10_ECAUSE10             "ICD-10-CM E Cause 10"
label var I10_ECAUSE11             "ICD-10-CM E Cause 11"
label var I10_ECAUSE12             "ICD-10-CM E Cause 12"
label var I10_ECAUSE13             "ICD-10-CM E Cause 13"
label var I10_ECAUSE14             "ICD-10-CM E Cause 14"
label var I10_ECauseCCS1           "ICD-10-CM CCS: E Cause 1"
label var I10_ECauseCCS2           "ICD-10-CM CCS: E Cause 2"
label var I10_ECauseCCS3           "ICD-10-CM CCS: E Cause 3"
label var I10_ECauseCCS4           "ICD-10-CM CCS: E Cause 4"
label var I10_ECauseCCS5           "ICD-10-CM CCS: E Cause 5"
label var I10_ECauseCCS6           "ICD-10-CM CCS: E Cause 6"
label var I10_ECauseCCS7           "ICD-10-CM CCS: E Cause 7"
label var I10_ECauseCCS8           "ICD-10-CM CCS: E Cause 8"
label var I10_ECauseCCS9           "ICD-10-CM CCS: E Cause 9"
label var I10_ECauseCCS10          "ICD-10-CM CCS: E Cause 10"
label var I10_ECauseCCS11          "ICD-10-CM CCS: E Cause 11"
label var I10_ECauseCCS12          "ICD-10-CM CCS: E Cause 12"
label var I10_ECauseCCS13          "ICD-10-CM CCS: E Cause 13"
label var I10_ECauseCCS14          "ICD-10-CM CCS: E Cause 14"
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
label var I10_PR6                  "ICD-10-PCS Procedure 6"
label var I10_PR7                  "ICD-10-PCS Procedure 7"
label var I10_PR8                  "ICD-10-PCS Procedure 8"
label var I10_PR9                  "ICD-10-PCS Procedure 9"
label var I10_PR10                 "ICD-10-PCS Procedure 10"
label var I10_PR11                 "ICD-10-PCS Procedure 11"
label var I10_PR12                 "ICD-10-PCS Procedure 12"
label var I10_PR13                 "ICD-10-PCS Procedure 13"
label var I10_PR14                 "ICD-10-PCS Procedure 14"
label var I10_PR15                 "ICD-10-PCS Procedure 15"
label var I10_PR16                 "ICD-10-PCS Procedure 16"
label var I10_PR17                 "ICD-10-PCS Procedure 17"
label var I10_PR18                 "ICD-10-PCS Procedure 18"
label var I10_PR19                 "ICD-10-PCS Procedure 19"
label var I10_PR20                 "ICD-10-PCS Procedure 20"
label var I10_PR21                 "ICD-10-PCS Procedure 21"
label var I10_PR22                 "ICD-10-PCS Procedure 22"
label var I10_PR23                 "ICD-10-PCS Procedure 23"
label var I10_PR24                 "ICD-10-PCS Procedure 24"
label var I10_PR25                 "ICD-10-PCS Procedure 25"
label var I10_PR26                 "ICD-10-PCS Procedure 26"
label var I10_PR27                 "ICD-10-PCS Procedure 27"
label var I10_PR28                 "ICD-10-PCS Procedure 28"
label var I10_PR29                 "ICD-10-PCS Procedure 29"
label var I10_PR30                 "ICD-10-PCS Procedure 30"
label var I10_PRCCS1               "ICD-10-PCS CCS: procedure 1"
label var I10_PRCCS2               "ICD-10-PCS CCS: procedure 2"
label var I10_PRCCS3               "ICD-10-PCS CCS: procedure 3"
label var I10_PRCCS4               "ICD-10-PCS CCS: procedure 4"
label var I10_PRCCS5               "ICD-10-PCS CCS: procedure 5"
label var I10_PRCCS6               "ICD-10-PCS CCS: procedure 6"
label var I10_PRCCS7               "ICD-10-PCS CCS: procedure 7"
label var I10_PRCCS8               "ICD-10-PCS CCS: procedure 8"
label var I10_PRCCS9               "ICD-10-PCS CCS: procedure 9"
label var I10_PRCCS10              "ICD-10-PCS CCS: procedure 10"
label var I10_PRCCS11              "ICD-10-PCS CCS: procedure 11"
label var I10_PRCCS12              "ICD-10-PCS CCS: procedure 12"
label var I10_PRCCS13              "ICD-10-PCS CCS: procedure 13"
label var I10_PRCCS14              "ICD-10-PCS CCS: procedure 14"
label var I10_PRCCS15              "ICD-10-PCS CCS: procedure 15"
label var I10_PRCCS16              "ICD-10-PCS CCS: procedure 16"
label var I10_PRCCS17              "ICD-10-PCS CCS: procedure 17"
label var I10_PRCCS18              "ICD-10-PCS CCS: procedure 18"
label var I10_PRCCS19              "ICD-10-PCS CCS: procedure 19"
label var I10_PRCCS20              "ICD-10-PCS CCS: procedure 20"
label var I10_PRCCS21              "ICD-10-PCS CCS: procedure 21"
label var I10_PRCCS22              "ICD-10-PCS CCS: procedure 22"
label var I10_PRCCS23              "ICD-10-PCS CCS: procedure 23"
label var I10_PRCCS24              "ICD-10-PCS CCS: procedure 24"
label var I10_PRCCS25              "ICD-10-PCS CCS: procedure 25"
label var I10_PRCCS26              "ICD-10-PCS CCS: procedure 26"
label var I10_PRCCS27              "ICD-10-PCS CCS: procedure 27"
label var I10_PRCCS28              "ICD-10-PCS CCS: procedure 28"
label var I10_PRCCS29              "ICD-10-PCS CCS: procedure 29"
label var I10_PRCCS30              "ICD-10-PCS CCS: procedure 30"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDC32                    "MDC, version 32"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes(RUCC)"
label var PL_UIC                   "Patient location: Urban Influence Codes"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PRDAY1                   "Number of days from admission to I10_PR1"
label var PRDAY2                   "Number of days from admission to I10_PR2"
label var PRDAY3                   "Number of days from admission to I10_PR3"
label var PRDAY4                   "Number of days from admission to I10_PR4"
label var PRDAY5                   "Number of days from admission to I10_PR5"
label var PRDAY6                   "Number of days from admission to I10_PR6"
label var PRDAY7                   "Number of days from admission to I10_PR7"
label var PRDAY8                   "Number of days from admission to I10_PR8"
label var PRDAY9                   "Number of days from admission to I10_PR9"
label var PRDAY10                  "Number of days from admission to I10_PR10"
label var PRDAY11                  "Number of days from admission to I10_PR11"
label var PRDAY12                  "Number of days from admission to I10_PR12"
label var PRDAY13                  "Number of days from admission to I10_PR13"
label var PRDAY14                  "Number of days from admission to I10_PR14"
label var PRDAY15                  "Number of days from admission to I10_PR15"
label var PRDAY16                  "Number of days from admission to I10_PR16"
label var PRDAY17                  "Number of days from admission to I10_PR17"
label var PRDAY18                  "Number of days from admission to I10_PR18"
label var PRDAY19                  "Number of days from admission to I10_PR19"
label var PRDAY20                  "Number of days from admission to I10_PR20"
label var PRDAY21                  "Number of days from admission to I10_PR21"
label var PRDAY22                  "Number of days from admission to I10_PR22"
label var PRDAY23                  "Number of days from admission to I10_PR23"
label var PRDAY24                  "Number of days from admission to I10_PR24"
label var PRDAY25                  "Number of days from admission to I10_PR25"
label var PRDAY26                  "Number of days from admission to I10_PR26"
label var PRDAY27                  "Number of days from admission to I10_PR27"
label var PRDAY28                  "Number of days from admission to I10_PR28"
label var PRDAY29                  "Number of days from admission to I10_PR29"
label var PRDAY30                  "Number of days from admission to I10_PR30"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
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
label var PRMONTH26                "Month of procedure 26"
label var PRMONTH27                "Month of procedure 27"
label var PRMONTH28                "Month of procedure 28"
label var PRMONTH29                "Month of procedure 29"
label var PRMONTH30                "Month of procedure 30"
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

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRG32                     (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
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
recode I10_DXCCS11               (-999 -888 -666=.)
recode I10_DXCCS12               (-999 -888 -666=.)
recode I10_DXCCS13               (-999 -888 -666=.)
recode I10_DXCCS14               (-999 -888 -666=.)
recode I10_DXCCS15               (-999 -888 -666=.)
recode I10_DXCCS16               (-999 -888 -666=.)
recode I10_DXCCS17               (-999 -888 -666=.)
recode I10_DXCCS18               (-999 -888 -666=.)
recode I10_DXCCS19               (-999 -888 -666=.)
recode I10_DXCCS20               (-999 -888 -666=.)
recode I10_DXCCS21               (-999 -888 -666=.)
recode I10_DXCCS22               (-999 -888 -666=.)
recode I10_DXCCS23               (-999 -888 -666=.)
recode I10_DXCCS24               (-999 -888 -666=.)
recode I10_DXCCS25               (-999 -888 -666=.)
recode I10_DXCCS26               (-999 -888 -666=.)
recode I10_DXCCS27               (-999 -888 -666=.)
recode I10_DXCCS28               (-999 -888 -666=.)
recode I10_DXCCS29               (-999 -888 -666=.)
recode I10_DXCCS30               (-999 -888 -666=.)
recode I10_ECauseCCS1            (-999 -888 -666=.)
recode I10_ECauseCCS2            (-999 -888 -666=.)
recode I10_ECauseCCS3            (-999 -888 -666=.)
recode I10_ECauseCCS4            (-999 -888 -666=.)
recode I10_ECauseCCS5            (-999 -888 -666=.)
recode I10_ECauseCCS6            (-999 -888 -666=.)
recode I10_ECauseCCS7            (-999 -888 -666=.)
recode I10_ECauseCCS8            (-999 -888 -666=.)
recode I10_ECauseCCS9            (-999 -888 -666=.)
recode I10_ECauseCCS10           (-999 -888 -666=.)
recode I10_ECauseCCS11           (-999 -888 -666=.)
recode I10_ECauseCCS12           (-999 -888 -666=.)
recode I10_ECauseCCS13           (-999 -888 -666=.)
recode I10_ECauseCCS14           (-999 -888 -666=.)
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
recode I10_PRCCS6                (-99 -88 -66=.)
recode I10_PRCCS7                (-99 -88 -66=.)
recode I10_PRCCS8                (-99 -88 -66=.)
recode I10_PRCCS9                (-99 -88 -66=.)
recode I10_PRCCS10               (-99 -88 -66=.)
recode I10_PRCCS11               (-99 -88 -66=.)
recode I10_PRCCS12               (-99 -88 -66=.)
recode I10_PRCCS13               (-99 -88 -66=.)
recode I10_PRCCS14               (-99 -88 -66=.)
recode I10_PRCCS15               (-99 -88 -66=.)
recode I10_PRCCS16               (-99 -88 -66=.)
recode I10_PRCCS17               (-99 -88 -66=.)
recode I10_PRCCS18               (-99 -88 -66=.)
recode I10_PRCCS19               (-99 -88 -66=.)
recode I10_PRCCS20               (-99 -88 -66=.)
recode I10_PRCCS21               (-99 -88 -66=.)
recode I10_PRCCS22               (-99 -88 -66=.)
recode I10_PRCCS23               (-99 -88 -66=.)
recode I10_PRCCS24               (-99 -88 -66=.)
recode I10_PRCCS25               (-99 -88 -66=.)
recode I10_PRCCS26               (-99 -88 -66=.)
recode I10_PRCCS27               (-99 -88 -66=.)
recode I10_PRCCS28               (-99 -88 -66=.)
recode I10_PRCCS29               (-99 -88 -66=.)
recode I10_PRCCS30               (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode I10_SERVICELINE           (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDC32                     (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
recode PL_RUCC                   (-9 -8 -6 -5=.)
recode PL_UIC                    (-9 -8 -6 -5=.)
recode PL_UR_CAT4                (-9 -8 -6 -5=.)
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
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
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
recode PRMONTH26                 (-9 -8 -6 -5=.)
recode PRMONTH27                 (-9 -8 -6 -5=.)
recode PRMONTH28                 (-9 -8 -6 -5=.)
recode PRMONTH29                 (-9 -8 -6 -5=.)
recode PRMONTH30                 (-9 -8 -6 -5=.)
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

save "CO_SID_2015q4_CORE.dta", replace
