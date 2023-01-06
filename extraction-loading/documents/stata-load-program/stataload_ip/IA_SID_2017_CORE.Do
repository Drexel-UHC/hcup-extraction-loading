/*****************************************************************************
* Creation Date: 09/04/2018   
* IA_SID_2017_CORE.Do
* This program will load the 2017 IA ASCII CORE File into Stata.
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
      int    BWT                         16-  19   ///
      long   DaysToEvent                 20-  25   ///
      byte   DIED                        26-  27   ///
      str    DISP_X                      28-  31   ///
      byte   DISPUB04                    32-  33   ///
      byte   DISPUNIFORM                 34-  35   ///
      byte   DMONTH                      36-  37   ///
      byte   DQTR                        38-  39   ///
      int    DRG                         40-  42   ///
      int    DRG_NoPOA                   43-  45   ///
      byte   DRGVER                      46-  47   ///
      str    DXPOA1                      48        ///
      str    DXPOA2                      49        ///
      str    DXPOA3                      50        ///
      str    DXPOA4                      51        ///
      str    DXPOA5                      52        ///
      str    DXPOA6                      53        ///
      str    DXPOA7                      54        ///
      str    DXPOA8                      55        ///
      str    DXPOA9                      56        ///
      str    DXPOA10                     57        ///
      str    DXPOA11                     58        ///
      str    DXPOA12                     59        ///
      str    DXPOA13                     60        ///
      str    DXPOA14                     61        ///
      str    DXPOA15                     62        ///
      str    DXPOA16                     63        ///
      str    DXPOA17                     64        ///
      str    DXPOA18                     65        ///
      str    DXPOA19                     66        ///
      str    DXPOA20                     67        ///
      str    DXPOA21                     68        ///
      str    DXPOA22                     69        ///
      str    DXPOA23                     70        ///
      str    DXPOA24                     71        ///
      str    DXPOA25                     72        ///
      str    DXPOA26                     73        ///
      str    DXPOA27                     74        ///
      str    DXPOA28                     75        ///
      str    DXPOA29                     76        ///
      str    DXPOA30                     77        ///
      str    DXPOA31                     78        ///
      str    DXPOA32                     79        ///
      str    DXPOA33                     80        ///
      str    DXPOA34                     81        ///
      str    DXPOA35                     82        ///
      str    DXPOA36                     83        ///
      str    DXPOA37                     84        ///
      str    DXPOA38                     85        ///
      str    DXPOA39                     86        ///
      str    DXPOA40                     87        ///
      str    DXPOA41                     88        ///
      str    DXPOA42                     89        ///
      str    DXPOA43                     90        ///
      str    DXPOA44                     91        ///
      str    DXPOA45                     92        ///
      str    DXPOA46                     93        ///
      str    DXPOA47                     94        ///
      str    DXPOA48                     95        ///
      str    DXPOA49                     96        ///
      str    DXPOA50                     97        ///
      str    DXPOA51                     98        ///
      str    DXPOA52                     99        ///
      str    DXPOA53                    100        ///
      str    DXPOA54                    101        ///
      str    DXPOA55                    102        ///
      str    DXPOA56                    103        ///
      str    DXPOA57                    104        ///
      str    DXPOA58                    105        ///
      str    DXPOA59                    106        ///
      str    DXPOA60                    107        ///
      str    DXPOA61                    108        ///
      str    DXPOA62                    109        ///
      str    DXPOA63                    110        ///
      str    DXPOA64                    111        ///
      int    DXVER                      112- 114   ///
      byte   FEMALE                     115- 116   ///
      byte   HCUP_ED                    117- 118   ///
      byte   HCUP_OS                    119- 120   ///
      byte   HISPANIC                   121- 122   ///
      str    HISPANIC_X                 123        ///
      byte   HospitalUnit               124- 125   ///
      str    HOSPST                     126- 127   ///
      str    I10_DX_Admitting           128- 134   ///
      str    I10_DX1                    135- 141   ///
      str    I10_DX2                    142- 148   ///
      str    I10_DX3                    149- 155   ///
      str    I10_DX4                    156- 162   ///
      str    I10_DX5                    163- 169   ///
      str    I10_DX6                    170- 176   ///
      str    I10_DX7                    177- 183   ///
      str    I10_DX8                    184- 190   ///
      str    I10_DX9                    191- 197   ///
      str    I10_DX10                   198- 204   ///
      str    I10_DX11                   205- 211   ///
      str    I10_DX12                   212- 218   ///
      str    I10_DX13                   219- 225   ///
      str    I10_DX14                   226- 232   ///
      str    I10_DX15                   233- 239   ///
      str    I10_DX16                   240- 246   ///
      str    I10_DX17                   247- 253   ///
      str    I10_DX18                   254- 260   ///
      str    I10_DX19                   261- 267   ///
      str    I10_DX20                   268- 274   ///
      str    I10_DX21                   275- 281   ///
      str    I10_DX22                   282- 288   ///
      str    I10_DX23                   289- 295   ///
      str    I10_DX24                   296- 302   ///
      str    I10_DX25                   303- 309   ///
      str    I10_DX26                   310- 316   ///
      str    I10_DX27                   317- 323   ///
      str    I10_DX28                   324- 330   ///
      str    I10_DX29                   331- 337   ///
      str    I10_DX30                   338- 344   ///
      str    I10_DX31                   345- 351   ///
      str    I10_DX32                   352- 358   ///
      str    I10_DX33                   359- 365   ///
      str    I10_DX34                   366- 372   ///
      str    I10_DX35                   373- 379   ///
      str    I10_DX36                   380- 386   ///
      str    I10_DX37                   387- 393   ///
      str    I10_DX38                   394- 400   ///
      str    I10_DX39                   401- 407   ///
      str    I10_DX40                   408- 414   ///
      str    I10_DX41                   415- 421   ///
      str    I10_DX42                   422- 428   ///
      str    I10_DX43                   429- 435   ///
      str    I10_DX44                   436- 442   ///
      str    I10_DX45                   443- 449   ///
      str    I10_DX46                   450- 456   ///
      str    I10_DX47                   457- 463   ///
      str    I10_DX48                   464- 470   ///
      str    I10_DX49                   471- 477   ///
      str    I10_DX50                   478- 484   ///
      str    I10_DX51                   485- 491   ///
      str    I10_DX52                   492- 498   ///
      str    I10_DX53                   499- 505   ///
      str    I10_DX54                   506- 512   ///
      str    I10_DX55                   513- 519   ///
      str    I10_DX56                   520- 526   ///
      str    I10_DX57                   527- 533   ///
      str    I10_DX58                   534- 540   ///
      str    I10_DX59                   541- 547   ///
      str    I10_DX60                   548- 554   ///
      str    I10_DX61                   555- 561   ///
      str    I10_DX62                   562- 568   ///
      str    I10_DX63                   569- 575   ///
      str    I10_DX64                   576- 582   ///
      int    I10_NDX                    583- 585   ///
      int    I10_NPR                    586- 588   ///
      str    I10_PR1                    589- 595   ///
      str    I10_PR2                    596- 602   ///
      str    I10_PR3                    603- 609   ///
      str    I10_PR4                    610- 616   ///
      str    I10_PR5                    617- 623   ///
      str    I10_PR6                    624- 630   ///
      str    I10_PR7                    631- 637   ///
      str    I10_PR8                    638- 644   ///
      str    I10_PR9                    645- 651   ///
      str    I10_PR10                   652- 658   ///
      str    I10_PR11                   659- 665   ///
      str    I10_PR12                   666- 672   ///
      str    I10_PR13                   673- 679   ///
      str    I10_PR14                   680- 686   ///
      str    I10_PR15                   687- 693   ///
      str    I10_PR16                   694- 700   ///
      str    I10_PR17                   701- 707   ///
      str    I10_PR18                   708- 714   ///
      str    I10_PR19                   715- 721   ///
      str    I10_PR20                   722- 728   ///
      str    I10_PR21                   729- 735   ///
      str    I10_PR22                   736- 742   ///
      str    I10_PR23                   743- 749   ///
      str    I10_PR24                   750- 756   ///
      str    I10_PR25                   757- 763   ///
      str    I10_PR26                   764- 770   ///
      str    I10_PR27                   771- 777   ///
      str    I10_PR28                   778- 784   ///
      str    I10_PR29                   785- 791   ///
      str    I10_PR30                   792- 798   ///
      str    I10_PR31                   799- 805   ///
      str    I10_PR32                   806- 812   ///
      str    I10_PR33                   813- 819   ///
      str    I10_PR34                   820- 826   ///
      str    I10_PR35                   827- 833   ///
      str    I10_PR36                   834- 840   ///
      str    I10_PR37                   841- 847   ///
      str    I10_PR38                   848- 854   ///
      str    I10_PR39                   855- 861   ///
      str    I10_PR40                   862- 868   ///
      str    I10_PR41                   869- 875   ///
      str    I10_PR42                   876- 882   ///
      str    I10_PR43                   883- 889   ///
      str    I10_PR44                   890- 896   ///
      str    I10_PR45                   897- 903   ///
      str    I10_PR46                   904- 910   ///
      str    I10_PR47                   911- 917   ///
      str    I10_PR48                   918- 924   ///
      int    I10_PROCTYPE               925- 927   ///
      double KEY                        928- 942   ///
      long   LOS                        943- 947   ///
      long   LOS_X                      948- 953   ///
      byte   MDC                        954- 955   ///
      byte   MDC_NoPOA                  956- 957   ///
      long   MDNUM1_R                   958- 966   ///
      long   MDNUM2_R                   967- 975   ///
      long   MDNUM3_R                   976- 984   ///
      byte   MEDINCSTQ                  985- 986   ///
      long   MRN_R                      987- 995   ///
      str    P7EDSRC_X                  996- 997   ///
      byte   PAY1                       998- 999   ///
      str    PAY1_X                    1000-1003   ///
      byte   PAY2                      1004-1005   ///
      str    PAY2_X                    1006-1009   ///
      byte   PAY3                      1010-1011   ///
      str    PAY3_X                    1012-1015   ///
      int    PL_CBSA                   1016-1018   ///
      byte   PL_NCHS                   1019-1020   ///
      byte   PL_RUCC                   1021-1022   ///
      byte   PL_UIC                    1023-1024   ///
      byte   PL_UR_CAT4                1025-1026   ///
      byte   POA_Disch_Edit1           1027-1028   ///
      byte   POA_Disch_Edit2           1029-1030   ///
      byte   POA_Hosp_Edit1            1031-1032   ///
      byte   POA_Hosp_Edit2            1033-1034   ///
      byte   POA_Hosp_Edit3            1035-1036   ///
      double POA_Hosp_Edit3_Value      1037-1044   ///
      str    PointOfOrigin_X           1045        ///
      str    PointOfOriginUB04         1046        ///
      long   PRDAY1                    1047-1051   ///
      long   PRDAY2                    1052-1056   ///
      long   PRDAY3                    1057-1061   ///
      long   PRDAY4                    1062-1066   ///
      long   PRDAY5                    1067-1071   ///
      long   PRDAY6                    1072-1076   ///
      long   PRDAY7                    1077-1081   ///
      long   PRDAY8                    1082-1086   ///
      long   PRDAY9                    1087-1091   ///
      long   PRDAY10                   1092-1096   ///
      long   PRDAY11                   1097-1101   ///
      long   PRDAY12                   1102-1106   ///
      long   PRDAY13                   1107-1111   ///
      long   PRDAY14                   1112-1116   ///
      long   PRDAY15                   1117-1121   ///
      long   PRDAY16                   1122-1126   ///
      long   PRDAY17                   1127-1131   ///
      long   PRDAY18                   1132-1136   ///
      long   PRDAY19                   1137-1141   ///
      long   PRDAY20                   1142-1146   ///
      long   PRDAY21                   1147-1151   ///
      long   PRDAY22                   1152-1156   ///
      long   PRDAY23                   1157-1161   ///
      long   PRDAY24                   1162-1166   ///
      long   PRDAY25                   1167-1171   ///
      long   PRDAY26                   1172-1176   ///
      long   PRDAY27                   1177-1181   ///
      long   PRDAY28                   1182-1186   ///
      long   PRDAY29                   1187-1191   ///
      long   PRDAY30                   1192-1196   ///
      long   PRDAY31                   1197-1201   ///
      long   PRDAY32                   1202-1206   ///
      long   PRDAY33                   1207-1211   ///
      long   PRDAY34                   1212-1216   ///
      long   PRDAY35                   1217-1221   ///
      long   PRDAY36                   1222-1226   ///
      long   PRDAY37                   1227-1231   ///
      long   PRDAY38                   1232-1236   ///
      long   PRDAY39                   1237-1241   ///
      long   PRDAY40                   1242-1246   ///
      long   PRDAY41                   1247-1251   ///
      long   PRDAY42                   1252-1256   ///
      long   PRDAY43                   1257-1261   ///
      long   PRDAY44                   1262-1266   ///
      long   PRDAY45                   1267-1271   ///
      long   PRDAY46                   1272-1276   ///
      long   PRDAY47                   1277-1281   ///
      long   PRDAY48                   1282-1286   ///
      int    PRVER                     1287-1289   ///
      str    PSTATE                    1290-1291   ///
      long   PSTCO                     1292-1296   ///
      long   PSTCO2                    1297-1301   ///
      byte   RACE                      1302-1303   ///
      byte   RACE_EDIT                 1304-1305   ///
      str    RACE_X                    1306-1309   ///
      double TOTCHG                    1310-1319   ///
      double TOTCHG_X                  1320-1334   ///
      byte   TRAN_IN                   1335-1336   ///
      byte   TRAN_OUT                  1337-1338   ///
      long   VisitLink                 1339-1347   ///
      int    YEAR                      1348-1351   ///
      str    ZIP                       1352-1356   ///
      str    ZIP3                      1357-1359   ///
      int    ZIPINC_QRTL               1360-1362   ///
      int    AYEAR                     1363-1366   ///
      byte   BMONTH                    1367-1368   ///
      int    BYEAR                     1369-1372   ///
      byte   PRMONTH1                  1373-1374   ///
      byte   PRMONTH2                  1375-1376   ///
      byte   PRMONTH3                  1377-1378   ///
      byte   PRMONTH4                  1379-1380   ///
      byte   PRMONTH5                  1381-1382   ///
      byte   PRMONTH6                  1383-1384   ///
      byte   PRMONTH7                  1385-1386   ///
      byte   PRMONTH8                  1387-1388   ///
      byte   PRMONTH9                  1389-1390   ///
      byte   PRMONTH10                 1391-1392   ///
      byte   PRMONTH11                 1393-1394   ///
      byte   PRMONTH12                 1395-1396   ///
      byte   PRMONTH13                 1397-1398   ///
      byte   PRMONTH14                 1399-1400   ///
      byte   PRMONTH15                 1401-1402   ///
      byte   PRMONTH16                 1403-1404   ///
      byte   PRMONTH17                 1405-1406   ///
      byte   PRMONTH18                 1407-1408   ///
      byte   PRMONTH19                 1409-1410   ///
      byte   PRMONTH20                 1411-1412   ///
      byte   PRMONTH21                 1413-1414   ///
      byte   PRMONTH22                 1415-1416   ///
      byte   PRMONTH23                 1417-1418   ///
      byte   PRMONTH24                 1419-1420   ///
      byte   PRMONTH25                 1421-1422   ///
      byte   PRMONTH26                 1423-1424   ///
      byte   PRMONTH27                 1425-1426   ///
      byte   PRMONTH28                 1427-1428   ///
      byte   PRMONTH29                 1429-1430   ///
      byte   PRMONTH30                 1431-1432   ///
      byte   PRMONTH31                 1433-1434   ///
      byte   PRMONTH32                 1435-1436   ///
      byte   PRMONTH33                 1437-1438   ///
      byte   PRMONTH34                 1439-1440   ///
      byte   PRMONTH35                 1441-1442   ///
      byte   PRMONTH36                 1443-1444   ///
      byte   PRMONTH37                 1445-1446   ///
      byte   PRMONTH38                 1447-1448   ///
      byte   PRMONTH39                 1449-1450   ///
      byte   PRMONTH40                 1451-1452   ///
      byte   PRMONTH41                 1453-1454   ///
      byte   PRMONTH42                 1455-1456   ///
      byte   PRMONTH43                 1457-1458   ///
      byte   PRMONTH44                 1459-1460   ///
      byte   PRMONTH45                 1461-1462   ///
      byte   PRMONTH46                 1463-1464   ///
      byte   PRMONTH47                 1465-1466   ///
      byte   PRMONTH48                 1467-1468   ///
      int    PRYEAR1                   1469-1472   ///
      int    PRYEAR2                   1473-1476   ///
      int    PRYEAR3                   1477-1480   ///
      int    PRYEAR4                   1481-1484   ///
      int    PRYEAR5                   1485-1488   ///
      int    PRYEAR6                   1489-1492   ///
      int    PRYEAR7                   1493-1496   ///
      int    PRYEAR8                   1497-1500   ///
      int    PRYEAR9                   1501-1504   ///
      int    PRYEAR10                  1505-1508   ///
      int    PRYEAR11                  1509-1512   ///
      int    PRYEAR12                  1513-1516   ///
      int    PRYEAR13                  1517-1520   ///
      int    PRYEAR14                  1521-1524   ///
      int    PRYEAR15                  1525-1528   ///
      int    PRYEAR16                  1529-1532   ///
      int    PRYEAR17                  1533-1536   ///
      int    PRYEAR18                  1537-1540   ///
      int    PRYEAR19                  1541-1544   ///
      int    PRYEAR20                  1545-1548   ///
      int    PRYEAR21                  1549-1552   ///
      int    PRYEAR22                  1553-1556   ///
      int    PRYEAR23                  1557-1560   ///
      int    PRYEAR24                  1561-1564   ///
      int    PRYEAR25                  1565-1568   ///
      int    PRYEAR26                  1569-1572   ///
      int    PRYEAR27                  1573-1576   ///
      int    PRYEAR28                  1577-1580   ///
      int    PRYEAR29                  1581-1584   ///
      int    PRYEAR30                  1585-1588   ///
      int    PRYEAR31                  1589-1592   ///
      int    PRYEAR32                  1593-1596   ///
      int    PRYEAR33                  1597-1600   ///
      int    PRYEAR34                  1601-1604   ///
      int    PRYEAR35                  1605-1608   ///
      int    PRYEAR36                  1609-1612   ///
      int    PRYEAR37                  1613-1616   ///
      int    PRYEAR38                  1617-1620   ///
      int    PRYEAR39                  1621-1624   ///
      int    PRYEAR40                  1625-1628   ///
      int    PRYEAR41                  1629-1632   ///
      int    PRYEAR42                  1633-1636   ///
      int    PRYEAR43                  1637-1640   ///
      int    PRYEAR44                  1641-1644   ///
      int    PRYEAR45                  1645-1648   ///
      int    PRYEAR46                  1649-1652   ///
      int    PRYEAR47                  1653-1656   ///
      int    PRYEAR48                  1657-1660   ///
      using  "IA_SID_2017_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
label var DaysToEvent              "Days from 'start date' to admission"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
label var DRGVER                   "DRG grouper version used on discharge date"
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
label var DXPOA33                  "Diagnosis 33, present on admission indicator"
label var DXPOA34                  "Diagnosis 34, present on admission indicator"
label var DXPOA35                  "Diagnosis 35, present on admission indicator"
label var DXPOA36                  "Diagnosis 36, present on admission indicator"
label var DXPOA37                  "Diagnosis 37, present on admission indicator"
label var DXPOA38                  "Diagnosis 38, present on admission indicator"
label var DXPOA39                  "Diagnosis 39, present on admission indicator"
label var DXPOA40                  "Diagnosis 40, present on admission indicator"
label var DXPOA41                  "Diagnosis 41, present on admission indicator"
label var DXPOA42                  "Diagnosis 42, present on admission indicator"
label var DXPOA43                  "Diagnosis 43, present on admission indicator"
label var DXPOA44                  "Diagnosis 44, present on admission indicator"
label var DXPOA45                  "Diagnosis 45, present on admission indicator"
label var DXPOA46                  "Diagnosis 46, present on admission indicator"
label var DXPOA47                  "Diagnosis 47, present on admission indicator"
label var DXPOA48                  "Diagnosis 48, present on admission indicator"
label var DXPOA49                  "Diagnosis 49, present on admission indicator"
label var DXPOA50                  "Diagnosis 50, present on admission indicator"
label var DXPOA51                  "Diagnosis 51, present on admission indicator"
label var DXPOA52                  "Diagnosis 52, present on admission indicator"
label var DXPOA53                  "Diagnosis 53, present on admission indicator"
label var DXPOA54                  "Diagnosis 54, present on admission indicator"
label var DXPOA55                  "Diagnosis 55, present on admission indicator"
label var DXPOA56                  "Diagnosis 56, present on admission indicator"
label var DXPOA57                  "Diagnosis 57, present on admission indicator"
label var DXPOA58                  "Diagnosis 58, present on admission indicator"
label var DXPOA59                  "Diagnosis 59, present on admission indicator"
label var DXPOA60                  "Diagnosis 60, present on admission indicator"
label var DXPOA61                  "Diagnosis 61, present on admission indicator"
label var DXPOA62                  "Diagnosis 62, present on admission indicator"
label var DXPOA63                  "Diagnosis 63, present on admission indicator"
label var DXPOA64                  "Diagnosis 64, present on admission indicator"
label var DXVER                    "Diagnosis Version"
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
label var I10_DX33                 "ICD-10-CM Diagnosis 33"
label var I10_DX34                 "ICD-10-CM Diagnosis 34"
label var I10_DX35                 "ICD-10-CM Diagnosis 35"
label var I10_DX36                 "ICD-10-CM Diagnosis 36"
label var I10_DX37                 "ICD-10-CM Diagnosis 37"
label var I10_DX38                 "ICD-10-CM Diagnosis 38"
label var I10_DX39                 "ICD-10-CM Diagnosis 39"
label var I10_DX40                 "ICD-10-CM Diagnosis 40"
label var I10_DX41                 "ICD-10-CM Diagnosis 41"
label var I10_DX42                 "ICD-10-CM Diagnosis 42"
label var I10_DX43                 "ICD-10-CM Diagnosis 43"
label var I10_DX44                 "ICD-10-CM Diagnosis 44"
label var I10_DX45                 "ICD-10-CM Diagnosis 45"
label var I10_DX46                 "ICD-10-CM Diagnosis 46"
label var I10_DX47                 "ICD-10-CM Diagnosis 47"
label var I10_DX48                 "ICD-10-CM Diagnosis 48"
label var I10_DX49                 "ICD-10-CM Diagnosis 49"
label var I10_DX50                 "ICD-10-CM Diagnosis 50"
label var I10_DX51                 "ICD-10-CM Diagnosis 51"
label var I10_DX52                 "ICD-10-CM Diagnosis 52"
label var I10_DX53                 "ICD-10-CM Diagnosis 53"
label var I10_DX54                 "ICD-10-CM Diagnosis 54"
label var I10_DX55                 "ICD-10-CM Diagnosis 55"
label var I10_DX56                 "ICD-10-CM Diagnosis 56"
label var I10_DX57                 "ICD-10-CM Diagnosis 57"
label var I10_DX58                 "ICD-10-CM Diagnosis 58"
label var I10_DX59                 "ICD-10-CM Diagnosis 59"
label var I10_DX60                 "ICD-10-CM Diagnosis 60"
label var I10_DX61                 "ICD-10-CM Diagnosis 61"
label var I10_DX62                 "ICD-10-CM Diagnosis 62"
label var I10_DX63                 "ICD-10-CM Diagnosis 63"
label var I10_DX64                 "ICD-10-CM Diagnosis 64"
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_NPR                  "ICD-10-PCS Number of procedures on this record"
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
label var I10_PR33                 "ICD-10-PCS Procedure 33"
label var I10_PR34                 "ICD-10-PCS Procedure 34"
label var I10_PR35                 "ICD-10-PCS Procedure 35"
label var I10_PR36                 "ICD-10-PCS Procedure 36"
label var I10_PR37                 "ICD-10-PCS Procedure 37"
label var I10_PR38                 "ICD-10-PCS Procedure 38"
label var I10_PR39                 "ICD-10-PCS Procedure 39"
label var I10_PR40                 "ICD-10-PCS Procedure 40"
label var I10_PR41                 "ICD-10-PCS Procedure 41"
label var I10_PR42                 "ICD-10-PCS Procedure 42"
label var I10_PR43                 "ICD-10-PCS Procedure 43"
label var I10_PR44                 "ICD-10-PCS Procedure 44"
label var I10_PR45                 "ICD-10-PCS Procedure 45"
label var I10_PR46                 "ICD-10-PCS Procedure 46"
label var I10_PR47                 "ICD-10-PCS Procedure 47"
label var I10_PR48                 "ICD-10-PCS Procedure 48"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
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
label var PRDAY33                  "Number of days from admission to I10_PR33"
label var PRDAY34                  "Number of days from admission to I10_PR34"
label var PRDAY35                  "Number of days from admission to I10_PR35"
label var PRDAY36                  "Number of days from admission to I10_PR36"
label var PRDAY37                  "Number of days from admission to I10_PR37"
label var PRDAY38                  "Number of days from admission to I10_PR38"
label var PRDAY39                  "Number of days from admission to I10_PR39"
label var PRDAY40                  "Number of days from admission to I10_PR40"
label var PRDAY41                  "Number of days from admission to I10_PR41"
label var PRDAY42                  "Number of days from admission to I10_PR42"
label var PRDAY43                  "Number of days from admission to I10_PR43"
label var PRDAY44                  "Number of days from admission to I10_PR44"
label var PRDAY45                  "Number of days from admission to I10_PR45"
label var PRDAY46                  "Number of days from admission to I10_PR46"
label var PRDAY47                  "Number of days from admission to I10_PR47"
label var PRDAY48                  "Number of days from admission to I10_PR48"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_EDIT                "Race Edit Checks"
label var RACE_X                   "Race (as received from source)"
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
label var PRMONTH33                "Month of procedure 33"
label var PRMONTH34                "Month of procedure 34"
label var PRMONTH35                "Month of procedure 35"
label var PRMONTH36                "Month of procedure 36"
label var PRMONTH37                "Month of procedure 37"
label var PRMONTH38                "Month of procedure 38"
label var PRMONTH39                "Month of procedure 39"
label var PRMONTH40                "Month of procedure 40"
label var PRMONTH41                "Month of procedure 41"
label var PRMONTH42                "Month of procedure 42"
label var PRMONTH43                "Month of procedure 43"
label var PRMONTH44                "Month of procedure 44"
label var PRMONTH45                "Month of procedure 45"
label var PRMONTH46                "Month of procedure 46"
label var PRMONTH47                "Month of procedure 47"
label var PRMONTH48                "Month of procedure 48"
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
label var PRYEAR33                 "Year of procedure 33"
label var PRYEAR34                 "Year of procedure 34"
label var PRYEAR35                 "Year of procedure 35"
label var PRYEAR36                 "Year of procedure 36"
label var PRYEAR37                 "Year of procedure 37"
label var PRYEAR38                 "Year of procedure 38"
label var PRYEAR39                 "Year of procedure 39"
label var PRYEAR40                 "Year of procedure 40"
label var PRYEAR41                 "Year of procedure 41"
label var PRYEAR42                 "Year of procedure 42"
label var PRYEAR43                 "Year of procedure 43"
label var PRYEAR44                 "Year of procedure 44"
label var PRYEAR45                 "Year of procedure 45"
label var PRYEAR46                 "Year of procedure 46"
label var PRYEAR47                 "Year of procedure 47"
label var PRYEAR48                 "Year of procedure 48"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
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
recode PRDAY33                   (-9999 -8888 -6666=.)
recode PRDAY34                   (-9999 -8888 -6666=.)
recode PRDAY35                   (-9999 -8888 -6666=.)
recode PRDAY36                   (-9999 -8888 -6666=.)
recode PRDAY37                   (-9999 -8888 -6666=.)
recode PRDAY38                   (-9999 -8888 -6666=.)
recode PRDAY39                   (-9999 -8888 -6666=.)
recode PRDAY40                   (-9999 -8888 -6666=.)
recode PRDAY41                   (-9999 -8888 -6666=.)
recode PRDAY42                   (-9999 -8888 -6666=.)
recode PRDAY43                   (-9999 -8888 -6666=.)
recode PRDAY44                   (-9999 -8888 -6666=.)
recode PRDAY45                   (-9999 -8888 -6666=.)
recode PRDAY46                   (-9999 -8888 -6666=.)
recode PRDAY47                   (-9999 -8888 -6666=.)
recode PRDAY48                   (-9999 -8888 -6666=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_EDIT                 (-9 -8 -6 -5=.)
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
recode PRMONTH33                 (-9 -8 -6 -5=.)
recode PRMONTH34                 (-9 -8 -6 -5=.)
recode PRMONTH35                 (-9 -8 -6 -5=.)
recode PRMONTH36                 (-9 -8 -6 -5=.)
recode PRMONTH37                 (-9 -8 -6 -5=.)
recode PRMONTH38                 (-9 -8 -6 -5=.)
recode PRMONTH39                 (-9 -8 -6 -5=.)
recode PRMONTH40                 (-9 -8 -6 -5=.)
recode PRMONTH41                 (-9 -8 -6 -5=.)
recode PRMONTH42                 (-9 -8 -6 -5=.)
recode PRMONTH43                 (-9 -8 -6 -5=.)
recode PRMONTH44                 (-9 -8 -6 -5=.)
recode PRMONTH45                 (-9 -8 -6 -5=.)
recode PRMONTH46                 (-9 -8 -6 -5=.)
recode PRMONTH47                 (-9 -8 -6 -5=.)
recode PRMONTH48                 (-9 -8 -6 -5=.)
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
recode PRYEAR33                  (-999 -888 -666=.)
recode PRYEAR34                  (-999 -888 -666=.)
recode PRYEAR35                  (-999 -888 -666=.)
recode PRYEAR36                  (-999 -888 -666=.)
recode PRYEAR37                  (-999 -888 -666=.)
recode PRYEAR38                  (-999 -888 -666=.)
recode PRYEAR39                  (-999 -888 -666=.)
recode PRYEAR40                  (-999 -888 -666=.)
recode PRYEAR41                  (-999 -888 -666=.)
recode PRYEAR42                  (-999 -888 -666=.)
recode PRYEAR43                  (-999 -888 -666=.)
recode PRYEAR44                  (-999 -888 -666=.)
recode PRYEAR45                  (-999 -888 -666=.)
recode PRYEAR46                  (-999 -888 -666=.)
recode PRYEAR47                  (-999 -888 -666=.)
recode PRYEAR48                  (-999 -888 -666=.)

save "IA_SID_2017_CORE.dta", replace
