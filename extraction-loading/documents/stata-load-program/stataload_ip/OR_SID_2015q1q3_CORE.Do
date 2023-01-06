/*****************************************************************************
* Creation Date: 09/06/2017   
* OR_SID_2015q1q3_CORE.Do
* This program will load the 2015 OR ASCII CORE File into Stata.
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
      int    BWT                         20-  23   ///
      int    DHOUR                       24-  27   ///
      byte   DIED                        28-  29   ///
      str    DISP_X                      30-  31   ///
      byte   DISPUB04                    32-  33   ///
      byte   DISPUNIFORM                 34-  35   ///
      byte   DMONTH                      36-  37   ///
      byte   DNR                         38-  39   ///
      byte   DQTR                        40-  41   ///
      int    DRG                         42-  44   ///
      int    DRG_NoPOA                   45-  47   ///
      int    DRG32                       48-  50   ///
      byte   DRGVER                      51-  52   ///
      str    DSHOSPID                    53-  69   ///
      str    DX_Admitting                70-  76   ///
      str    DX1                         77-  83   ///
      str    DX2                         84-  90   ///
      str    DX3                         91-  97   ///
      str    DX4                         98- 104   ///
      str    DX5                        105- 111   ///
      str    DX6                        112- 118   ///
      str    DX7                        119- 125   ///
      str    DX8                        126- 132   ///
      str    DX9                        133- 139   ///
      str    DX10                       140- 146   ///
      str    DX11                       147- 153   ///
      str    DX12                       154- 160   ///
      str    DX13                       161- 167   ///
      str    DX14                       168- 174   ///
      str    DX15                       175- 181   ///
      str    DX16                       182- 188   ///
      str    DX17                       189- 195   ///
      str    DX18                       196- 202   ///
      str    DX19                       203- 209   ///
      str    DX20                       210- 216   ///
      str    DX21                       217- 223   ///
      str    DX22                       224- 230   ///
      str    DX23                       231- 237   ///
      str    DX24                       238- 244   ///
      str    DX25                       245- 251   ///
      str    DX26                       252- 258   ///
      str    DX27                       259- 265   ///
      str    DX28                       266- 272   ///
      str    DX29                       273- 279   ///
      str    DX30                       280- 286   ///
      str    DX31                       287- 293   ///
      str    DX32                       294- 300   ///
      int    DXCCS1                     301- 304   ///
      int    DXCCS2                     305- 308   ///
      int    DXCCS3                     309- 312   ///
      int    DXCCS4                     313- 316   ///
      int    DXCCS5                     317- 320   ///
      int    DXCCS6                     321- 324   ///
      int    DXCCS7                     325- 328   ///
      int    DXCCS8                     329- 332   ///
      int    DXCCS9                     333- 336   ///
      int    DXCCS10                    337- 340   ///
      int    DXCCS11                    341- 344   ///
      int    DXCCS12                    345- 348   ///
      int    DXCCS13                    349- 352   ///
      int    DXCCS14                    353- 356   ///
      int    DXCCS15                    357- 360   ///
      int    DXCCS16                    361- 364   ///
      int    DXCCS17                    365- 368   ///
      int    DXCCS18                    369- 372   ///
      int    DXCCS19                    373- 376   ///
      int    DXCCS20                    377- 380   ///
      int    DXCCS21                    381- 384   ///
      int    DXCCS22                    385- 388   ///
      int    DXCCS23                    389- 392   ///
      int    DXCCS24                    393- 396   ///
      int    DXCCS25                    397- 400   ///
      int    DXCCS26                    401- 404   ///
      int    DXCCS27                    405- 408   ///
      int    DXCCS28                    409- 412   ///
      int    DXCCS29                    413- 416   ///
      int    DXCCS30                    417- 420   ///
      int    DXCCS31                    421- 424   ///
      int    DXCCS32                    425- 428   ///
      str    DXPOA1                     429        ///
      str    DXPOA2                     430        ///
      str    DXPOA3                     431        ///
      str    DXPOA4                     432        ///
      str    DXPOA5                     433        ///
      str    DXPOA6                     434        ///
      str    DXPOA7                     435        ///
      str    DXPOA8                     436        ///
      str    DXPOA9                     437        ///
      str    DXPOA10                    438        ///
      str    DXPOA11                    439        ///
      str    DXPOA12                    440        ///
      str    DXPOA13                    441        ///
      str    DXPOA14                    442        ///
      str    DXPOA15                    443        ///
      str    DXPOA16                    444        ///
      str    DXPOA17                    445        ///
      str    DXPOA18                    446        ///
      str    DXPOA19                    447        ///
      str    DXPOA20                    448        ///
      str    DXPOA21                    449        ///
      str    DXPOA22                    450        ///
      str    DXPOA23                    451        ///
      str    DXPOA24                    452        ///
      str    DXPOA25                    453        ///
      str    DXPOA26                    454        ///
      str    DXPOA27                    455        ///
      str    DXPOA28                    456        ///
      str    DXPOA29                    457        ///
      str    DXPOA30                    458        ///
      str    DXPOA31                    459        ///
      str    DXPOA32                    460        ///
      int    DXVER                      461- 463   ///
      int    E_CCS1                     464- 467   ///
      int    E_CCS2                     468- 471   ///
      int    E_CCS3                     472- 475   ///
      int    E_CCS4                     476- 479   ///
      int    E_CCS5                     480- 483   ///
      int    E_CCS6                     484- 487   ///
      int    E_CCS7                     488- 491   ///
      int    E_CCS8                     492- 495   ///
      str    E_POA1                     496        ///
      str    E_POA2                     497        ///
      str    E_POA3                     498        ///
      str    E_POA4                     499        ///
      str    E_POA5                     500        ///
      str    E_POA6                     501        ///
      str    E_POA7                     502        ///
      str    E_POA8                     503        ///
      str    ECODE1                     504- 510   ///
      str    ECODE2                     511- 517   ///
      str    ECODE3                     518- 524   ///
      str    ECODE4                     525- 531   ///
      str    ECODE5                     532- 538   ///
      str    ECODE6                     539- 545   ///
      str    ECODE7                     546- 552   ///
      str    ECODE8                     553- 559   ///
      byte   FEMALE                     560- 561   ///
      byte   HCUP_ED                    562- 563   ///
      byte   HCUP_OS                    564- 565   ///
      byte   HISPANIC                   566- 567   ///
      str    HISPANIC_X                 568- 569   ///
      int    HOSPBRTH                   570- 572   ///
      byte   HospitalUnit               573- 574   ///
      str    HOSPST                     575- 576   ///
      double KEY                        577- 591   ///
      long   LOS                        592- 596   ///
      long   LOS_X                      597- 602   ///
      byte   MDC                        603- 604   ///
      byte   MDC_NoPOA                  605- 606   ///
      byte   MDC32                      607- 608   ///
      byte   MEDINCSTQ                  609- 610   ///
      int    NCHRONIC                   611- 613   ///
      int    NDX                        614- 616   ///
      byte   NECODE                     617- 618   ///
      byte   NEOMAT                     619- 620   ///
      int    NPR                        621- 623   ///
      byte   ORPROC                     624- 625   ///
      double OS_TIME                    626- 636   ///
      byte   PAY1                       637- 638   ///
      str    PAY1_X                     639- 647   ///
      byte   PAY2                       648- 649   ///
      str    PAY2_X                     650- 658   ///
      byte   PAY3                       659- 660   ///
      str    PAY3_X                     661- 669   ///
      int    PL_CBSA                    670- 672   ///
      byte   PL_NCHS                    673- 674   ///
      byte   PL_RUCC                    675- 676   ///
      byte   PL_UIC                     677- 678   ///
      byte   PL_UR_CAT4                 679- 680   ///
      byte   POA_Disch_Edit1            681- 682   ///
      byte   POA_Disch_Edit2            683- 684   ///
      byte   POA_Hosp_Edit1             685- 686   ///
      byte   POA_Hosp_Edit2             687- 688   ///
      byte   POA_Hosp_Edit3             689- 690   ///
      double POA_Hosp_Edit3_Value       691- 698   ///
      str    PointOfOrigin_X            699- 700   ///
      str    PointOfOriginUB04          701        ///
      str    PR1                        702- 708   ///
      str    PR2                        709- 715   ///
      str    PR3                        716- 722   ///
      str    PR4                        723- 729   ///
      str    PR5                        730- 736   ///
      str    PR6                        737- 743   ///
      str    PR7                        744- 750   ///
      str    PR8                        751- 757   ///
      str    PR9                        758- 764   ///
      str    PR10                       765- 771   ///
      str    PR11                       772- 778   ///
      str    PR12                       779- 785   ///
      str    PR13                       786- 792   ///
      str    PR14                       793- 799   ///
      str    PR15                       800- 806   ///
      str    PR16                       807- 813   ///
      str    PR17                       814- 820   ///
      str    PR18                       821- 827   ///
      str    PR19                       828- 834   ///
      str    PR20                       835- 841   ///
      str    PR21                       842- 848   ///
      str    PR22                       849- 855   ///
      str    PR23                       856- 862   ///
      str    PR24                       863- 869   ///
      str    PR25                       870- 876   ///
      str    PR26                       877- 883   ///
      str    PR27                       884- 890   ///
      str    PR28                       891- 897   ///
      str    PR29                       898- 904   ///
      str    PR30                       905- 911   ///
      str    PR31                       912- 918   ///
      str    PR32                       919- 925   ///
      int    PRCCS1                     926- 928   ///
      int    PRCCS2                     929- 931   ///
      int    PRCCS3                     932- 934   ///
      int    PRCCS4                     935- 937   ///
      int    PRCCS5                     938- 940   ///
      int    PRCCS6                     941- 943   ///
      int    PRCCS7                     944- 946   ///
      int    PRCCS8                     947- 949   ///
      int    PRCCS9                     950- 952   ///
      int    PRCCS10                    953- 955   ///
      int    PRCCS11                    956- 958   ///
      int    PRCCS12                    959- 961   ///
      int    PRCCS13                    962- 964   ///
      int    PRCCS14                    965- 967   ///
      int    PRCCS15                    968- 970   ///
      int    PRCCS16                    971- 973   ///
      int    PRCCS17                    974- 976   ///
      int    PRCCS18                    977- 979   ///
      int    PRCCS19                    980- 982   ///
      int    PRCCS20                    983- 985   ///
      int    PRCCS21                    986- 988   ///
      int    PRCCS22                    989- 991   ///
      int    PRCCS23                    992- 994   ///
      int    PRCCS24                    995- 997   ///
      int    PRCCS25                    998-1000   ///
      int    PRCCS26                   1001-1003   ///
      int    PRCCS27                   1004-1006   ///
      int    PRCCS28                   1007-1009   ///
      int    PRCCS29                   1010-1012   ///
      int    PRCCS30                   1013-1015   ///
      int    PRCCS31                   1016-1018   ///
      int    PRCCS32                   1019-1021   ///
      long   PRDAY1                    1022-1026   ///
      long   PRDAY2                    1027-1031   ///
      long   PRDAY3                    1032-1036   ///
      long   PRDAY4                    1037-1041   ///
      long   PRDAY5                    1042-1046   ///
      long   PRDAY6                    1047-1051   ///
      long   PRDAY7                    1052-1056   ///
      long   PRDAY8                    1057-1061   ///
      long   PRDAY9                    1062-1066   ///
      long   PRDAY10                   1067-1071   ///
      long   PRDAY11                   1072-1076   ///
      long   PRDAY12                   1077-1081   ///
      long   PRDAY13                   1082-1086   ///
      long   PRDAY14                   1087-1091   ///
      long   PRDAY15                   1092-1096   ///
      long   PRDAY16                   1097-1101   ///
      long   PRDAY17                   1102-1106   ///
      long   PRDAY18                   1107-1111   ///
      long   PRDAY19                   1112-1116   ///
      long   PRDAY20                   1117-1121   ///
      long   PRDAY21                   1122-1126   ///
      long   PRDAY22                   1127-1131   ///
      long   PRDAY23                   1132-1136   ///
      long   PRDAY24                   1137-1141   ///
      long   PRDAY25                   1142-1146   ///
      long   PRDAY26                   1147-1151   ///
      long   PRDAY27                   1152-1156   ///
      long   PRDAY28                   1157-1161   ///
      long   PRDAY29                   1162-1166   ///
      long   PRDAY30                   1167-1171   ///
      long   PRDAY31                   1172-1176   ///
      long   PRDAY32                   1177-1181   ///
      int    PROCTYPE                  1182-1184   ///
      int    PRVER                     1185-1187   ///
      str    PSTATE                    1188-1189   ///
      long   PSTCO                     1190-1194   ///
      long   PSTCO2                    1195-1199   ///
      byte   RACE                      1200-1201   ///
      str    RACE_X                    1202-1203   ///
      byte   SERVICELINE               1204-1205   ///
      double TOTCHG                    1206-1215   ///
      double TOTCHG_X                  1216-1230   ///
      byte   TRAN_IN                   1231-1232   ///
      byte   TRAN_OUT                  1233-1234   ///
      int    YEAR                      1235-1238   ///
      str    ZIP                       1239-1243   ///
      str    ZIP3                      1244-1246   ///
      int    ZIPINC_QRTL               1247-1249   ///
      int    AYEAR                     1250-1253   ///
      byte   BMONTH                    1254-1255   ///
      int    BYEAR                     1256-1259   ///
      byte   PRMONTH1                  1260-1261   ///
      byte   PRMONTH2                  1262-1263   ///
      byte   PRMONTH3                  1264-1265   ///
      byte   PRMONTH4                  1266-1267   ///
      byte   PRMONTH5                  1268-1269   ///
      byte   PRMONTH6                  1270-1271   ///
      byte   PRMONTH7                  1272-1273   ///
      byte   PRMONTH8                  1274-1275   ///
      byte   PRMONTH9                  1276-1277   ///
      byte   PRMONTH10                 1278-1279   ///
      byte   PRMONTH11                 1280-1281   ///
      byte   PRMONTH12                 1282-1283   ///
      byte   PRMONTH13                 1284-1285   ///
      byte   PRMONTH14                 1286-1287   ///
      byte   PRMONTH15                 1288-1289   ///
      byte   PRMONTH16                 1290-1291   ///
      byte   PRMONTH17                 1292-1293   ///
      byte   PRMONTH18                 1294-1295   ///
      byte   PRMONTH19                 1296-1297   ///
      byte   PRMONTH20                 1298-1299   ///
      byte   PRMONTH21                 1300-1301   ///
      byte   PRMONTH22                 1302-1303   ///
      byte   PRMONTH23                 1304-1305   ///
      byte   PRMONTH24                 1306-1307   ///
      byte   PRMONTH25                 1308-1309   ///
      byte   PRMONTH26                 1310-1311   ///
      byte   PRMONTH27                 1312-1313   ///
      byte   PRMONTH28                 1314-1315   ///
      byte   PRMONTH29                 1316-1317   ///
      byte   PRMONTH30                 1318-1319   ///
      byte   PRMONTH31                 1320-1321   ///
      byte   PRMONTH32                 1322-1323   ///
      int    PRYEAR1                   1324-1327   ///
      int    PRYEAR2                   1328-1331   ///
      int    PRYEAR3                   1332-1335   ///
      int    PRYEAR4                   1336-1339   ///
      int    PRYEAR5                   1340-1343   ///
      int    PRYEAR6                   1344-1347   ///
      int    PRYEAR7                   1348-1351   ///
      int    PRYEAR8                   1352-1355   ///
      int    PRYEAR9                   1356-1359   ///
      int    PRYEAR10                  1360-1363   ///
      int    PRYEAR11                  1364-1367   ///
      int    PRYEAR12                  1368-1371   ///
      int    PRYEAR13                  1372-1375   ///
      int    PRYEAR14                  1376-1379   ///
      int    PRYEAR15                  1380-1383   ///
      int    PRYEAR16                  1384-1387   ///
      int    PRYEAR17                  1388-1391   ///
      int    PRYEAR18                  1392-1395   ///
      int    PRYEAR19                  1396-1399   ///
      int    PRYEAR20                  1400-1403   ///
      int    PRYEAR21                  1404-1407   ///
      int    PRYEAR22                  1408-1411   ///
      int    PRYEAR23                  1412-1415   ///
      int    PRYEAR24                  1416-1419   ///
      int    PRYEAR25                  1420-1423   ///
      int    PRYEAR26                  1424-1427   ///
      int    PRYEAR27                  1428-1431   ///
      int    PRYEAR28                  1432-1435   ///
      int    PRYEAR29                  1436-1439   ///
      int    PRYEAR30                  1440-1443   ///
      int    PRYEAR31                  1444-1447   ///
      int    PRYEAR32                  1448-1451   ///
      using  "OR_SID_2015q1q3_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
label var DHOUR                    "Discharge Hour"
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
label var DX26                     "Diagnosis 26"
label var DX27                     "Diagnosis 27"
label var DX28                     "Diagnosis 28"
label var DX29                     "Diagnosis 29"
label var DX30                     "Diagnosis 30"
label var DX31                     "Diagnosis 31"
label var DX32                     "Diagnosis 32"
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
label var DXCCS32                  "CCS: diagnosis 32"
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
label var DXPOA32                  "Diagnosis 32, present on admission indicator"
label var DXVER                    "Diagnosis Version"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_CCS7                   "CCS: E Code 7"
label var E_CCS8                   "CCS: E Code 8"
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var E_POA7                   "E Code 7, present on admission indicator"
label var E_POA8                   "E Code 8, present on admission indicator"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var ECODE8                   "E code 8"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HospitalUnit             "Patient was discharged from a special unit within an acute care hospital (reported by source)"
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
label var PR26                     "Procedure 26"
label var PR27                     "Procedure 27"
label var PR28                     "Procedure 28"
label var PR29                     "Procedure 29"
label var PR30                     "Procedure 30"
label var PR31                     "Procedure 31"
label var PR32                     "Procedure 32"
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
label var PRCCS32                  "CCS: procedure 32"
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
label var PRDAY32                  "Number of days from admission to PR32"
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
label var PRMONTH31                "Month of procedure 31"
label var PRMONTH32                "Month of procedure 32"
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
label var PRYEAR32                 "Year of procedure 32"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
recode DHOUR                     (-999 -888 -666=.)
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
recode DXCCS26                   (-999 -888 -666=.)
recode DXCCS27                   (-999 -888 -666=.)
recode DXCCS28                   (-999 -888 -666=.)
recode DXCCS29                   (-999 -888 -666=.)
recode DXCCS30                   (-999 -888 -666=.)
recode DXCCS31                   (-999 -888 -666=.)
recode DXCCS32                   (-999 -888 -666=.)
recode DXVER                     (-99 -88 -66=.)
recode E_CCS1                    (-999 -888 -666=.)
recode E_CCS2                    (-999 -888 -666=.)
recode E_CCS3                    (-999 -888 -666=.)
recode E_CCS4                    (-999 -888 -666=.)
recode E_CCS5                    (-999 -888 -666=.)
recode E_CCS6                    (-999 -888 -666=.)
recode E_CCS7                    (-999 -888 -666=.)
recode E_CCS8                    (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
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
recode PRCCS26                   (-99 -88 -66=.)
recode PRCCS27                   (-99 -88 -66=.)
recode PRCCS28                   (-99 -88 -66=.)
recode PRCCS29                   (-99 -88 -66=.)
recode PRCCS30                   (-99 -88 -66=.)
recode PRCCS31                   (-99 -88 -66=.)
recode PRCCS32                   (-99 -88 -66=.)
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
recode PRDAY32                   (-9999 -8888 -6666=.)
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
recode PRMONTH26                 (-9 -8 -6 -5=.)
recode PRMONTH27                 (-9 -8 -6 -5=.)
recode PRMONTH28                 (-9 -8 -6 -5=.)
recode PRMONTH29                 (-9 -8 -6 -5=.)
recode PRMONTH30                 (-9 -8 -6 -5=.)
recode PRMONTH31                 (-9 -8 -6 -5=.)
recode PRMONTH32                 (-9 -8 -6 -5=.)
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
recode PRYEAR32                  (-999 -888 -666=.)

save "OR_SID_2015q1q3_CORE.dta", replace
