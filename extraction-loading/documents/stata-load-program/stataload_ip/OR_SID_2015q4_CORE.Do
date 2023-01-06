/*****************************************************************************
* Creation Date: 09/06/2017   
* OR_SID_2015q4_CORE.Do
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
      str    DXPOA1                      70        ///
      str    DXPOA2                      71        ///
      str    DXPOA3                      72        ///
      str    DXPOA4                      73        ///
      str    DXPOA5                      74        ///
      str    DXPOA6                      75        ///
      str    DXPOA7                      76        ///
      str    DXPOA8                      77        ///
      str    DXPOA9                      78        ///
      str    DXPOA10                     79        ///
      str    DXPOA11                     80        ///
      str    DXPOA12                     81        ///
      str    DXPOA13                     82        ///
      str    DXPOA14                     83        ///
      str    DXPOA15                     84        ///
      str    DXPOA16                     85        ///
      str    DXPOA17                     86        ///
      str    DXPOA18                     87        ///
      str    DXPOA19                     88        ///
      str    DXPOA20                     89        ///
      str    DXPOA21                     90        ///
      str    DXPOA22                     91        ///
      str    DXPOA23                     92        ///
      str    DXPOA24                     93        ///
      str    DXPOA25                     94        ///
      str    DXPOA26                     95        ///
      str    DXPOA27                     96        ///
      str    DXPOA28                     97        ///
      str    DXPOA29                     98        ///
      str    DXPOA30                     99        ///
      str    DXPOA31                    100        ///
      str    DXPOA32                    101        ///
      int    DXVER                      102- 104   ///
      str    E_POA1                     105        ///
      str    E_POA2                     106        ///
      str    E_POA3                     107        ///
      str    E_POA4                     108        ///
      str    E_POA5                     109        ///
      str    E_POA6                     110        ///
      str    E_POA7                     111        ///
      str    E_POA8                     112        ///
      byte   FEMALE                     113- 114   ///
      byte   HCUP_ED                    115- 116   ///
      byte   HCUP_OS                    117- 118   ///
      byte   HISPANIC                   119- 120   ///
      str    HISPANIC_X                 121- 122   ///
      byte   HospitalUnit               123- 124   ///
      str    HOSPST                     125- 126   ///
      str    I10_DX_Admitting           127- 133   ///
      str    I10_DX1                    134- 140   ///
      str    I10_DX2                    141- 147   ///
      str    I10_DX3                    148- 154   ///
      str    I10_DX4                    155- 161   ///
      str    I10_DX5                    162- 168   ///
      str    I10_DX6                    169- 175   ///
      str    I10_DX7                    176- 182   ///
      str    I10_DX8                    183- 189   ///
      str    I10_DX9                    190- 196   ///
      str    I10_DX10                   197- 203   ///
      str    I10_DX11                   204- 210   ///
      str    I10_DX12                   211- 217   ///
      str    I10_DX13                   218- 224   ///
      str    I10_DX14                   225- 231   ///
      str    I10_DX15                   232- 238   ///
      str    I10_DX16                   239- 245   ///
      str    I10_DX17                   246- 252   ///
      str    I10_DX18                   253- 259   ///
      str    I10_DX19                   260- 266   ///
      str    I10_DX20                   267- 273   ///
      str    I10_DX21                   274- 280   ///
      str    I10_DX22                   281- 287   ///
      str    I10_DX23                   288- 294   ///
      str    I10_DX24                   295- 301   ///
      str    I10_DX25                   302- 308   ///
      str    I10_DX26                   309- 315   ///
      str    I10_DX27                   316- 322   ///
      str    I10_DX28                   323- 329   ///
      str    I10_DX29                   330- 336   ///
      str    I10_DX30                   337- 343   ///
      str    I10_DX31                   344- 350   ///
      str    I10_DX32                   351- 357   ///
      int    I10_DXCCS1                 358- 361   ///
      int    I10_DXCCS2                 362- 365   ///
      int    I10_DXCCS3                 366- 369   ///
      int    I10_DXCCS4                 370- 373   ///
      int    I10_DXCCS5                 374- 377   ///
      int    I10_DXCCS6                 378- 381   ///
      int    I10_DXCCS7                 382- 385   ///
      int    I10_DXCCS8                 386- 389   ///
      int    I10_DXCCS9                 390- 393   ///
      int    I10_DXCCS10                394- 397   ///
      int    I10_DXCCS11                398- 401   ///
      int    I10_DXCCS12                402- 405   ///
      int    I10_DXCCS13                406- 409   ///
      int    I10_DXCCS14                410- 413   ///
      int    I10_DXCCS15                414- 417   ///
      int    I10_DXCCS16                418- 421   ///
      int    I10_DXCCS17                422- 425   ///
      int    I10_DXCCS18                426- 429   ///
      int    I10_DXCCS19                430- 433   ///
      int    I10_DXCCS20                434- 437   ///
      int    I10_DXCCS21                438- 441   ///
      int    I10_DXCCS22                442- 445   ///
      int    I10_DXCCS23                446- 449   ///
      int    I10_DXCCS24                450- 453   ///
      int    I10_DXCCS25                454- 457   ///
      int    I10_DXCCS26                458- 461   ///
      int    I10_DXCCS27                462- 465   ///
      int    I10_DXCCS28                466- 469   ///
      int    I10_DXCCS29                470- 473   ///
      int    I10_DXCCS30                474- 477   ///
      int    I10_DXCCS31                478- 481   ///
      int    I10_DXCCS32                482- 485   ///
      str    I10_ECAUSE1                486- 492   ///
      str    I10_ECAUSE2                493- 499   ///
      str    I10_ECAUSE3                500- 506   ///
      str    I10_ECAUSE4                507- 513   ///
      str    I10_ECAUSE5                514- 520   ///
      str    I10_ECAUSE6                521- 527   ///
      str    I10_ECAUSE7                528- 534   ///
      str    I10_ECAUSE8                535- 541   ///
      int    I10_ECauseCCS1             542- 545   ///
      int    I10_ECauseCCS2             546- 549   ///
      int    I10_ECauseCCS3             550- 553   ///
      int    I10_ECauseCCS4             554- 557   ///
      int    I10_ECauseCCS5             558- 561   ///
      int    I10_ECauseCCS6             562- 565   ///
      int    I10_ECauseCCS7             566- 569   ///
      int    I10_ECauseCCS8             570- 573   ///
      int    I10_HOSPBRTH               574- 576   ///
      int    I10_NCHRONIC               577- 579   ///
      int    I10_NDX                    580- 582   ///
      byte   I10_NECAUSE                583- 584   ///
      byte   I10_NEOMAT                 585- 586   ///
      int    I10_NPR                    587- 589   ///
      byte   I10_ORPROC                 590- 591   ///
      str    I10_PR1                    592- 598   ///
      str    I10_PR2                    599- 605   ///
      str    I10_PR3                    606- 612   ///
      str    I10_PR4                    613- 619   ///
      str    I10_PR5                    620- 626   ///
      str    I10_PR6                    627- 633   ///
      str    I10_PR7                    634- 640   ///
      str    I10_PR8                    641- 647   ///
      str    I10_PR9                    648- 654   ///
      str    I10_PR10                   655- 661   ///
      str    I10_PR11                   662- 668   ///
      str    I10_PR12                   669- 675   ///
      str    I10_PR13                   676- 682   ///
      str    I10_PR14                   683- 689   ///
      str    I10_PR15                   690- 696   ///
      str    I10_PR16                   697- 703   ///
      str    I10_PR17                   704- 710   ///
      str    I10_PR18                   711- 717   ///
      str    I10_PR19                   718- 724   ///
      str    I10_PR20                   725- 731   ///
      str    I10_PR21                   732- 738   ///
      str    I10_PR22                   739- 745   ///
      str    I10_PR23                   746- 752   ///
      str    I10_PR24                   753- 759   ///
      str    I10_PR25                   760- 766   ///
      str    I10_PR26                   767- 773   ///
      str    I10_PR27                   774- 780   ///
      str    I10_PR28                   781- 787   ///
      str    I10_PR29                   788- 794   ///
      str    I10_PR30                   795- 801   ///
      str    I10_PR31                   802- 808   ///
      str    I10_PR32                   809- 815   ///
      int    I10_PRCCS1                 816- 818   ///
      int    I10_PRCCS2                 819- 821   ///
      int    I10_PRCCS3                 822- 824   ///
      int    I10_PRCCS4                 825- 827   ///
      int    I10_PRCCS5                 828- 830   ///
      int    I10_PRCCS6                 831- 833   ///
      int    I10_PRCCS7                 834- 836   ///
      int    I10_PRCCS8                 837- 839   ///
      int    I10_PRCCS9                 840- 842   ///
      int    I10_PRCCS10                843- 845   ///
      int    I10_PRCCS11                846- 848   ///
      int    I10_PRCCS12                849- 851   ///
      int    I10_PRCCS13                852- 854   ///
      int    I10_PRCCS14                855- 857   ///
      int    I10_PRCCS15                858- 860   ///
      int    I10_PRCCS16                861- 863   ///
      int    I10_PRCCS17                864- 866   ///
      int    I10_PRCCS18                867- 869   ///
      int    I10_PRCCS19                870- 872   ///
      int    I10_PRCCS20                873- 875   ///
      int    I10_PRCCS21                876- 878   ///
      int    I10_PRCCS22                879- 881   ///
      int    I10_PRCCS23                882- 884   ///
      int    I10_PRCCS24                885- 887   ///
      int    I10_PRCCS25                888- 890   ///
      int    I10_PRCCS26                891- 893   ///
      int    I10_PRCCS27                894- 896   ///
      int    I10_PRCCS28                897- 899   ///
      int    I10_PRCCS29                900- 902   ///
      int    I10_PRCCS30                903- 905   ///
      int    I10_PRCCS31                906- 908   ///
      int    I10_PRCCS32                909- 911   ///
      int    I10_PROCTYPE               912- 914   ///
      byte   I10_SERVICELINE            915- 916   ///
      double KEY                        917- 931   ///
      long   LOS                        932- 936   ///
      long   LOS_X                      937- 942   ///
      byte   MDC                        943- 944   ///
      byte   MDC_NoPOA                  945- 946   ///
      byte   MDC32                      947- 948   ///
      byte   MEDINCSTQ                  949- 950   ///
      double OS_TIME                    951- 961   ///
      byte   PAY1                       962- 963   ///
      str    PAY1_X                     964- 972   ///
      byte   PAY2                       973- 974   ///
      str    PAY2_X                     975- 983   ///
      byte   PAY3                       984- 985   ///
      str    PAY3_X                     986- 994   ///
      int    PL_CBSA                    995- 997   ///
      byte   PL_NCHS                    998- 999   ///
      byte   PL_RUCC                   1000-1001   ///
      byte   PL_UIC                    1002-1003   ///
      byte   PL_UR_CAT4                1004-1005   ///
      byte   POA_Disch_Edit1           1006-1007   ///
      byte   POA_Disch_Edit2           1008-1009   ///
      byte   POA_Hosp_Edit1            1010-1011   ///
      byte   POA_Hosp_Edit2            1012-1013   ///
      byte   POA_Hosp_Edit3            1014-1015   ///
      double POA_Hosp_Edit3_Value      1016-1023   ///
      str    PointOfOrigin_X           1024-1025   ///
      str    PointOfOriginUB04         1026        ///
      long   PRDAY1                    1027-1031   ///
      long   PRDAY2                    1032-1036   ///
      long   PRDAY3                    1037-1041   ///
      long   PRDAY4                    1042-1046   ///
      long   PRDAY5                    1047-1051   ///
      long   PRDAY6                    1052-1056   ///
      long   PRDAY7                    1057-1061   ///
      long   PRDAY8                    1062-1066   ///
      long   PRDAY9                    1067-1071   ///
      long   PRDAY10                   1072-1076   ///
      long   PRDAY11                   1077-1081   ///
      long   PRDAY12                   1082-1086   ///
      long   PRDAY13                   1087-1091   ///
      long   PRDAY14                   1092-1096   ///
      long   PRDAY15                   1097-1101   ///
      long   PRDAY16                   1102-1106   ///
      long   PRDAY17                   1107-1111   ///
      long   PRDAY18                   1112-1116   ///
      long   PRDAY19                   1117-1121   ///
      long   PRDAY20                   1122-1126   ///
      long   PRDAY21                   1127-1131   ///
      long   PRDAY22                   1132-1136   ///
      long   PRDAY23                   1137-1141   ///
      long   PRDAY24                   1142-1146   ///
      long   PRDAY25                   1147-1151   ///
      long   PRDAY26                   1152-1156   ///
      long   PRDAY27                   1157-1161   ///
      long   PRDAY28                   1162-1166   ///
      long   PRDAY29                   1167-1171   ///
      long   PRDAY30                   1172-1176   ///
      long   PRDAY31                   1177-1181   ///
      long   PRDAY32                   1182-1186   ///
      int    PRVER                     1187-1189   ///
      str    PSTATE                    1190-1191   ///
      long   PSTCO                     1192-1196   ///
      long   PSTCO2                    1197-1201   ///
      byte   RACE                      1202-1203   ///
      str    RACE_X                    1204-1205   ///
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
      using  "OR_SID_2015q4_CORE.ASC"

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
label var E_POA1                   "E Cause 1, present on admission indicator"
label var E_POA2                   "E Cause 2, present on admission indicator"
label var E_POA3                   "E Cause 3, present on admission indicator"
label var E_POA4                   "E Cause 4, present on admission indicator"
label var E_POA5                   "E Cause 5, present on admission indicator"
label var E_POA6                   "E Cause 6, present on admission indicator"
label var E_POA7                   "E Cause 7, present on admission indicator"
label var E_POA8                   "E Cause 8, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HospitalUnit             "Patient was discharged from a special unit within an acute care hospital (reported by source)"
label var HOSPST                   "Hospital state postal code"
label var I10_DX_Admitting         "ICD-10-CM Admitting Diagnosis Code"
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
label var I10_DX31                 "ICD-10-CM Diagnosis 31"
label var I10_DX32                 "ICD-10-CM Diagnosis 32"
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
label var I10_DXCCS31              "ICD-10-CM CCS: diagnosis 31"
label var I10_DXCCS32              "ICD-10-CM CCS: diagnosis 32"
label var I10_ECAUSE1              "ICD-10-CM E Cause 1"
label var I10_ECAUSE2              "ICD-10-CM E Cause 2"
label var I10_ECAUSE3              "ICD-10-CM E Cause 3"
label var I10_ECAUSE4              "ICD-10-CM E Cause 4"
label var I10_ECAUSE5              "ICD-10-CM E Cause 5"
label var I10_ECAUSE6              "ICD-10-CM E Cause 6"
label var I10_ECAUSE7              "ICD-10-CM E Cause 7"
label var I10_ECAUSE8              "ICD-10-CM E Cause 8"
label var I10_ECauseCCS1           "ICD-10-CM CCS: E Cause 1"
label var I10_ECauseCCS2           "ICD-10-CM CCS: E Cause 2"
label var I10_ECauseCCS3           "ICD-10-CM CCS: E Cause 3"
label var I10_ECauseCCS4           "ICD-10-CM CCS: E Cause 4"
label var I10_ECauseCCS5           "ICD-10-CM CCS: E Cause 5"
label var I10_ECauseCCS6           "ICD-10-CM CCS: E Cause 6"
label var I10_ECauseCCS7           "ICD-10-CM CCS: E Cause 7"
label var I10_ECauseCCS8           "ICD-10-CM CCS: E Cause 8"
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
label var I10_PR31                 "ICD-10-PCS Procedure 31"
label var I10_PR32                 "ICD-10-PCS Procedure 32"
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
label var I10_PRCCS31              "ICD-10-PCS CCS: procedure 31"
label var I10_PRCCS32              "ICD-10-PCS CCS: procedure 32"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDC32                    "MDC, version 32"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
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
label var PRDAY31                  "Number of days from admission to I10_PR31"
label var PRDAY32                  "Number of days from admission to I10_PR32"
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
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
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
recode I10_DXCCS31               (-999 -888 -666=.)
recode I10_DXCCS32               (-999 -888 -666=.)
recode I10_ECauseCCS1            (-999 -888 -666=.)
recode I10_ECauseCCS2            (-999 -888 -666=.)
recode I10_ECauseCCS3            (-999 -888 -666=.)
recode I10_ECauseCCS4            (-999 -888 -666=.)
recode I10_ECauseCCS5            (-999 -888 -666=.)
recode I10_ECauseCCS6            (-999 -888 -666=.)
recode I10_ECauseCCS7            (-999 -888 -666=.)
recode I10_ECauseCCS8            (-999 -888 -666=.)
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
recode I10_PRCCS31               (-99 -88 -66=.)
recode I10_PRCCS32               (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode I10_SERVICELINE           (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDC32                     (-9 -8 -6 -5=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
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

save "OR_SID_2015q4_CORE.dta", replace
