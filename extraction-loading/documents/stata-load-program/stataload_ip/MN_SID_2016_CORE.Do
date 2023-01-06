/*****************************************************************************
* Creation Date: 07/25/2018   
* MN_SID_2016_CORE.Do
* This program will load the 2016 MN ASCII CORE File into Stata.
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
      int    ADRG                         1-   3   ///
      byte   ADRGRISKMORTALITY            4-   5   ///
      byte   ADRGSEV                      6-   7   ///
      int    AGE                          8-  10   ///
      int    AGEDAY                      11-  13   ///
      int    AGEMONTH                    14-  16   ///
      int    AHOUR                       17-  20   ///
      byte   AMDC                        21-  22   ///
      byte   AMONTH                      23-  24   ///
      byte   ATYPE                       25-  26   ///
      byte   AWEEKEND                    27-  28   ///
      str    BILLTYPE                    29-  32   ///
      int    DHOUR                       33-  36   ///
      byte   DIED                        37-  38   ///
      str    DISP_X                      39-  40   ///
      byte   DISPUB04                    41-  42   ///
      byte   DISPUNIFORM                 43-  44   ///
      byte   DMONTH                      45-  46   ///
      byte   DQTR                        47-  48   ///
      int    DRG                         49-  51   ///
      int    DRG_NoPOA                   52-  54   ///
      byte   DRGVER                      55-  56   ///
      str    DXPOA1                      57        ///
      str    DXPOA2                      58        ///
      str    DXPOA3                      59        ///
      str    DXPOA4                      60        ///
      str    DXPOA5                      61        ///
      str    DXPOA6                      62        ///
      str    DXPOA7                      63        ///
      str    DXPOA8                      64        ///
      str    DXPOA9                      65        ///
      str    DXPOA10                     66        ///
      str    DXPOA11                     67        ///
      str    DXPOA12                     68        ///
      str    DXPOA13                     69        ///
      str    DXPOA14                     70        ///
      str    DXPOA15                     71        ///
      str    DXPOA16                     72        ///
      str    DXPOA17                     73        ///
      str    DXPOA18                     74        ///
      str    DXPOA19                     75        ///
      str    DXPOA20                     76        ///
      str    DXPOA21                     77        ///
      str    DXPOA22                     78        ///
      str    DXPOA23                     79        ///
      str    DXPOA24                     80        ///
      str    DXPOA25                     81        ///
      str    DXPOA26                     82        ///
      str    DXPOA27                     83        ///
      str    DXPOA28                     84        ///
      str    DXPOA29                     85        ///
      str    DXPOA30                     86        ///
      str    DXPOA31                     87        ///
      str    DXPOA32                     88        ///
      str    DXPOA33                     89        ///
      str    DXPOA34                     90        ///
      str    DXPOA35                     91        ///
      str    DXPOA36                     92        ///
      str    DXPOA37                     93        ///
      str    DXPOA38                     94        ///
      str    DXPOA39                     95        ///
      str    DXPOA40                     96        ///
      str    DXPOA41                     97        ///
      str    DXPOA42                     98        ///
      str    DXPOA43                     99        ///
      str    DXPOA44                    100        ///
      str    DXPOA45                    101        ///
      str    DXPOA46                    102        ///
      str    DXPOA47                    103        ///
      str    DXPOA48                    104        ///
      str    DXPOA49                    105        ///
      str    DXPOA50                    106        ///
      int    DXVER                      107- 109   ///
      str    E_POA1                     110        ///
      str    E_POA2                     111        ///
      str    E_POA3                     112        ///
      str    E_POA4                     113        ///
      str    E_POA5                     114        ///
      str    E_POA6                     115        ///
      str    E_POA7                     116        ///
      str    E_POA8                     117        ///
      byte   FEMALE                     118- 119   ///
      byte   HCUP_ED                    120- 121   ///
      byte   HCUP_OS                    122- 123   ///
      byte   HISPANIC                   124- 125   ///
      str    HISPANIC_X                 126- 145   ///
      str    HOSPST                     146- 147   ///
      str    I10_DX_Admitting           148- 154   ///
      str    I10_DX1                    155- 161   ///
      str    I10_DX2                    162- 168   ///
      str    I10_DX3                    169- 175   ///
      str    I10_DX4                    176- 182   ///
      str    I10_DX5                    183- 189   ///
      str    I10_DX6                    190- 196   ///
      str    I10_DX7                    197- 203   ///
      str    I10_DX8                    204- 210   ///
      str    I10_DX9                    211- 217   ///
      str    I10_DX10                   218- 224   ///
      str    I10_DX11                   225- 231   ///
      str    I10_DX12                   232- 238   ///
      str    I10_DX13                   239- 245   ///
      str    I10_DX14                   246- 252   ///
      str    I10_DX15                   253- 259   ///
      str    I10_DX16                   260- 266   ///
      str    I10_DX17                   267- 273   ///
      str    I10_DX18                   274- 280   ///
      str    I10_DX19                   281- 287   ///
      str    I10_DX20                   288- 294   ///
      str    I10_DX21                   295- 301   ///
      str    I10_DX22                   302- 308   ///
      str    I10_DX23                   309- 315   ///
      str    I10_DX24                   316- 322   ///
      str    I10_DX25                   323- 329   ///
      str    I10_DX26                   330- 336   ///
      str    I10_DX27                   337- 343   ///
      str    I10_DX28                   344- 350   ///
      str    I10_DX29                   351- 357   ///
      str    I10_DX30                   358- 364   ///
      str    I10_DX31                   365- 371   ///
      str    I10_DX32                   372- 378   ///
      str    I10_DX33                   379- 385   ///
      str    I10_DX34                   386- 392   ///
      str    I10_DX35                   393- 399   ///
      str    I10_DX36                   400- 406   ///
      str    I10_DX37                   407- 413   ///
      str    I10_DX38                   414- 420   ///
      str    I10_DX39                   421- 427   ///
      str    I10_DX40                   428- 434   ///
      str    I10_DX41                   435- 441   ///
      str    I10_DX42                   442- 448   ///
      str    I10_DX43                   449- 455   ///
      str    I10_DX44                   456- 462   ///
      str    I10_DX45                   463- 469   ///
      str    I10_DX46                   470- 476   ///
      str    I10_DX47                   477- 483   ///
      str    I10_DX48                   484- 490   ///
      str    I10_DX49                   491- 497   ///
      str    I10_DX50                   498- 504   ///
      str    I10_ECAUSE1                505- 511   ///
      str    I10_ECAUSE2                512- 518   ///
      str    I10_ECAUSE3                519- 525   ///
      str    I10_ECAUSE4                526- 532   ///
      str    I10_ECAUSE5                533- 539   ///
      str    I10_ECAUSE6                540- 546   ///
      str    I10_ECAUSE7                547- 553   ///
      str    I10_ECAUSE8                554- 560   ///
      int    I10_NDX                    561- 563   ///
      byte   I10_NECAUSE                564- 565   ///
      int    I10_NPR                    566- 568   ///
      str    I10_PR1                    569- 575   ///
      str    I10_PR2                    576- 582   ///
      str    I10_PR3                    583- 589   ///
      str    I10_PR4                    590- 596   ///
      str    I10_PR5                    597- 603   ///
      str    I10_PR6                    604- 610   ///
      str    I10_PR7                    611- 617   ///
      str    I10_PR8                    618- 624   ///
      str    I10_PR9                    625- 631   ///
      str    I10_PR10                   632- 638   ///
      str    I10_PR11                   639- 645   ///
      str    I10_PR12                   646- 652   ///
      str    I10_PR13                   653- 659   ///
      str    I10_PR14                   660- 666   ///
      str    I10_PR15                   667- 673   ///
      str    I10_PR16                   674- 680   ///
      str    I10_PR17                   681- 687   ///
      str    I10_PR18                   688- 694   ///
      str    I10_PR19                   695- 701   ///
      str    I10_PR20                   702- 708   ///
      str    I10_PR21                   709- 715   ///
      str    I10_PR22                   716- 722   ///
      str    I10_PR23                   723- 729   ///
      str    I10_PR24                   730- 736   ///
      str    I10_PR25                   737- 743   ///
      str    I10_PR26                   744- 750   ///
      str    I10_PR27                   751- 757   ///
      str    I10_PR28                   758- 764   ///
      str    I10_PR29                   765- 771   ///
      str    I10_PR30                   772- 778   ///
      str    I10_PR31                   779- 785   ///
      str    I10_PR32                   786- 792   ///
      str    I10_PR33                   793- 799   ///
      str    I10_PR34                   800- 806   ///
      str    I10_PR35                   807- 813   ///
      str    I10_PR36                   814- 820   ///
      str    I10_PR37                   821- 827   ///
      str    I10_PR38                   828- 834   ///
      str    I10_PR39                   835- 841   ///
      str    I10_PR40                   842- 848   ///
      str    I10_PR41                   849- 855   ///
      str    I10_PR42                   856- 862   ///
      str    I10_PR43                   863- 869   ///
      str    I10_PR44                   870- 876   ///
      str    I10_PR45                   877- 883   ///
      str    I10_PR46                   884- 890   ///
      str    I10_PR47                   891- 897   ///
      str    I10_PR48                   898- 904   ///
      str    I10_PR49                   905- 911   ///
      str    I10_PR50                   912- 918   ///
      int    I10_PROCTYPE               919- 921   ///
      double KEY                        922- 936   ///
      long   LOS                        937- 941   ///
      long   LOS_X                      942- 947   ///
      byte   MDC                        948- 949   ///
      byte   MDC_NoPOA                  950- 951   ///
      byte   MEDINCSTQ                  952- 953   ///
      long   MRN_R                      954- 962   ///
      double OS_TIME                    963- 973   ///
      byte   PAY1                       974- 975   ///
      str    PAY1_X                     976- 982   ///
      byte   PAY2                       983- 984   ///
      str    PAY2_X                     985- 991   ///
      byte   PAY3                       992- 993   ///
      str    PAY3_X                     994-1000   ///
      int    PL_CBSA                   1001-1003   ///
      byte   PL_NCHS                   1004-1005   ///
      byte   PL_RUCC                   1006-1007   ///
      byte   PL_UIC                    1008-1009   ///
      byte   PL_UR_CAT4                1010-1011   ///
      byte   POA_Disch_Edit1           1012-1013   ///
      byte   POA_Disch_Edit2           1014-1015   ///
      byte   POA_Hosp_Edit1            1016-1017   ///
      byte   POA_Hosp_Edit2            1018-1019   ///
      byte   POA_Hosp_Edit3            1020-1021   ///
      double POA_Hosp_Edit3_Value      1022-1029   ///
      str    PointOfOrigin_X           1030        ///
      str    PointOfOriginUB04         1031        ///
      long   PRDAY1                    1032-1036   ///
      long   PRDAY2                    1037-1041   ///
      long   PRDAY3                    1042-1046   ///
      long   PRDAY4                    1047-1051   ///
      long   PRDAY5                    1052-1056   ///
      long   PRDAY6                    1057-1061   ///
      long   PRDAY7                    1062-1066   ///
      long   PRDAY8                    1067-1071   ///
      long   PRDAY9                    1072-1076   ///
      long   PRDAY10                   1077-1081   ///
      long   PRDAY11                   1082-1086   ///
      long   PRDAY12                   1087-1091   ///
      long   PRDAY13                   1092-1096   ///
      long   PRDAY14                   1097-1101   ///
      long   PRDAY15                   1102-1106   ///
      long   PRDAY16                   1107-1111   ///
      long   PRDAY17                   1112-1116   ///
      long   PRDAY18                   1117-1121   ///
      long   PRDAY19                   1122-1126   ///
      long   PRDAY20                   1127-1131   ///
      long   PRDAY21                   1132-1136   ///
      long   PRDAY22                   1137-1141   ///
      long   PRDAY23                   1142-1146   ///
      long   PRDAY24                   1147-1151   ///
      long   PRDAY25                   1152-1156   ///
      long   PRDAY26                   1157-1161   ///
      long   PRDAY27                   1162-1166   ///
      long   PRDAY28                   1167-1171   ///
      long   PRDAY29                   1172-1176   ///
      long   PRDAY30                   1177-1181   ///
      long   PRDAY31                   1182-1186   ///
      long   PRDAY32                   1187-1191   ///
      long   PRDAY33                   1192-1196   ///
      long   PRDAY34                   1197-1201   ///
      long   PRDAY35                   1202-1206   ///
      long   PRDAY36                   1207-1211   ///
      long   PRDAY37                   1212-1216   ///
      long   PRDAY38                   1217-1221   ///
      long   PRDAY39                   1222-1226   ///
      long   PRDAY40                   1227-1231   ///
      long   PRDAY41                   1232-1236   ///
      long   PRDAY42                   1237-1241   ///
      long   PRDAY43                   1242-1246   ///
      long   PRDAY44                   1247-1251   ///
      long   PRDAY45                   1252-1256   ///
      long   PRDAY46                   1257-1261   ///
      long   PRDAY47                   1262-1266   ///
      long   PRDAY48                   1267-1271   ///
      long   PRDAY49                   1272-1276   ///
      long   PRDAY50                   1277-1281   ///
      str    PrimLang                  1282-1284   ///
      int    PRVER                     1285-1287   ///
      str    PSTATE                    1288-1289   ///
      long   PSTCO2                    1290-1294   ///
      byte   RACE                      1295-1296   ///
      str    RACE_X                    1297-1316   ///
      double TOTCHG                    1317-1326   ///
      double TOTCHG_X                  1327-1341   ///
      byte   TRAN_IN                   1342-1343   ///
      byte   TRAN_OUT                  1344-1345   ///
      int    YEAR                      1346-1349   ///
      str    ZIP                       1350-1354   ///
      str    ZIP3                      1355-1357   ///
      int    ZIPINC_QRTL               1358-1360   ///
      int    AYEAR                     1361-1364   ///
      byte   BMONTH                    1365-1366   ///
      int    BYEAR                     1367-1370   ///
      byte   PRMONTH1                  1371-1372   ///
      byte   PRMONTH2                  1373-1374   ///
      byte   PRMONTH3                  1375-1376   ///
      byte   PRMONTH4                  1377-1378   ///
      byte   PRMONTH5                  1379-1380   ///
      byte   PRMONTH6                  1381-1382   ///
      byte   PRMONTH7                  1383-1384   ///
      byte   PRMONTH8                  1385-1386   ///
      byte   PRMONTH9                  1387-1388   ///
      byte   PRMONTH10                 1389-1390   ///
      byte   PRMONTH11                 1391-1392   ///
      byte   PRMONTH12                 1393-1394   ///
      byte   PRMONTH13                 1395-1396   ///
      byte   PRMONTH14                 1397-1398   ///
      byte   PRMONTH15                 1399-1400   ///
      byte   PRMONTH16                 1401-1402   ///
      byte   PRMONTH17                 1403-1404   ///
      byte   PRMONTH18                 1405-1406   ///
      byte   PRMONTH19                 1407-1408   ///
      byte   PRMONTH20                 1409-1410   ///
      byte   PRMONTH21                 1411-1412   ///
      byte   PRMONTH22                 1413-1414   ///
      byte   PRMONTH23                 1415-1416   ///
      byte   PRMONTH24                 1417-1418   ///
      byte   PRMONTH25                 1419-1420   ///
      byte   PRMONTH26                 1421-1422   ///
      byte   PRMONTH27                 1423-1424   ///
      byte   PRMONTH28                 1425-1426   ///
      byte   PRMONTH29                 1427-1428   ///
      byte   PRMONTH30                 1429-1430   ///
      byte   PRMONTH31                 1431-1432   ///
      byte   PRMONTH32                 1433-1434   ///
      byte   PRMONTH33                 1435-1436   ///
      byte   PRMONTH34                 1437-1438   ///
      byte   PRMONTH35                 1439-1440   ///
      byte   PRMONTH36                 1441-1442   ///
      byte   PRMONTH37                 1443-1444   ///
      byte   PRMONTH38                 1445-1446   ///
      byte   PRMONTH39                 1447-1448   ///
      byte   PRMONTH40                 1449-1450   ///
      byte   PRMONTH41                 1451-1452   ///
      byte   PRMONTH42                 1453-1454   ///
      byte   PRMONTH43                 1455-1456   ///
      byte   PRMONTH44                 1457-1458   ///
      byte   PRMONTH45                 1459-1460   ///
      byte   PRMONTH46                 1461-1462   ///
      byte   PRMONTH47                 1463-1464   ///
      byte   PRMONTH48                 1465-1466   ///
      byte   PRMONTH49                 1467-1468   ///
      byte   PRMONTH50                 1469-1470   ///
      int    PRYEAR1                   1471-1474   ///
      int    PRYEAR2                   1475-1478   ///
      int    PRYEAR3                   1479-1482   ///
      int    PRYEAR4                   1483-1486   ///
      int    PRYEAR5                   1487-1490   ///
      int    PRYEAR6                   1491-1494   ///
      int    PRYEAR7                   1495-1498   ///
      int    PRYEAR8                   1499-1502   ///
      int    PRYEAR9                   1503-1506   ///
      int    PRYEAR10                  1507-1510   ///
      int    PRYEAR11                  1511-1514   ///
      int    PRYEAR12                  1515-1518   ///
      int    PRYEAR13                  1519-1522   ///
      int    PRYEAR14                  1523-1526   ///
      int    PRYEAR15                  1527-1530   ///
      int    PRYEAR16                  1531-1534   ///
      int    PRYEAR17                  1535-1538   ///
      int    PRYEAR18                  1539-1542   ///
      int    PRYEAR19                  1543-1546   ///
      int    PRYEAR20                  1547-1550   ///
      int    PRYEAR21                  1551-1554   ///
      int    PRYEAR22                  1555-1558   ///
      int    PRYEAR23                  1559-1562   ///
      int    PRYEAR24                  1563-1566   ///
      int    PRYEAR25                  1567-1570   ///
      int    PRYEAR26                  1571-1574   ///
      int    PRYEAR27                  1575-1578   ///
      int    PRYEAR28                  1579-1582   ///
      int    PRYEAR29                  1583-1586   ///
      int    PRYEAR30                  1587-1590   ///
      int    PRYEAR31                  1591-1594   ///
      int    PRYEAR32                  1595-1598   ///
      int    PRYEAR33                  1599-1602   ///
      int    PRYEAR34                  1603-1606   ///
      int    PRYEAR35                  1607-1610   ///
      int    PRYEAR36                  1611-1614   ///
      int    PRYEAR37                  1615-1618   ///
      int    PRYEAR38                  1619-1622   ///
      int    PRYEAR39                  1623-1626   ///
      int    PRYEAR40                  1627-1630   ///
      int    PRYEAR41                  1631-1634   ///
      int    PRYEAR42                  1635-1638   ///
      int    PRYEAR43                  1639-1642   ///
      int    PRYEAR44                  1643-1646   ///
      int    PRYEAR45                  1647-1650   ///
      int    PRYEAR46                  1651-1654   ///
      int    PRYEAR47                  1655-1658   ///
      int    PRYEAR48                  1659-1662   ///
      int    PRYEAR49                  1663-1666   ///
      int    PRYEAR50                  1667-1670   ///
      using  "MN_SID_2016_CORE.ASC"

***  Assign labels to the data elements ***
label var ADRG                     "All Patient Refined DRG"
label var ADRGRISKMORTALITY        "All Patient Refined DRG mortality risk"
label var ADRGSEV                  "All Patient Refined DRG severity level"
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMDC                     "All Patient Refined MDC"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var DHOUR                    "Discharge Hour"
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
label var DXVER                    "Diagnosis Version"
label var E_POA1                   "External cause 1, present on admission indicator"
label var E_POA2                   "External cause 2, present on admission indicator"
label var E_POA3                   "External cause 3, present on admission indicator"
label var E_POA4                   "External cause 4, present on admission indicator"
label var E_POA5                   "External cause 5, present on admission indicator"
label var E_POA6                   "External cause 6, present on admission indicator"
label var E_POA7                   "External cause 7, present on admission indicator"
label var E_POA8                   "External cause 8, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
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
label var I10_ECAUSE1              "ICD-10-CM External cause 1"
label var I10_ECAUSE2              "ICD-10-CM External cause 2"
label var I10_ECAUSE3              "ICD-10-CM External cause 3"
label var I10_ECAUSE4              "ICD-10-CM External cause 4"
label var I10_ECAUSE5              "ICD-10-CM External cause 5"
label var I10_ECAUSE6              "ICD-10-CM External cause 6"
label var I10_ECAUSE7              "ICD-10-CM External cause 7"
label var I10_ECAUSE8              "ICD-10-CM External cause 8"
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_NECAUSE              "ICD-10-CM Number of External cause codes on this record"
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
label var I10_PR49                 "ICD-10-PCS Procedure 49"
label var I10_PR50                 "ICD-10-PCS Procedure 50"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
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
label var PRDAY49                  "Number of days from admission to I10_PR49"
label var PRDAY50                  "Number of days from admission to I10_PR50"
label var PrimLang                 "Primary language of patient"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
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
label var PRMONTH49                "Month of procedure 49"
label var PRMONTH50                "Month of procedure 50"
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
label var PRYEAR49                 "Year of procedure 49"
label var PRYEAR50                 "Year of procedure 50"

*** Convert special values to missing values ***
recode ADRG                      (-99 -88 -66=.)
recode ADRGRISKMORTALITY         (-9 -8 -6 -5=.)
recode ADRGSEV                   (-9 -8 -6 -5=.)
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
recode AMDC                      (-9 -8 -6 -5=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode DHOUR                     (-999 -888 -666=.)
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
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NECAUSE               (-9 -8 -6 -5=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
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
recode PRDAY49                   (-9999 -8888 -6666=.)
recode PRDAY50                   (-9999 -8888 -6666=.)
recode PRVER                     (-99 -88 -66=.)
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
recode PRMONTH49                 (-9 -8 -6 -5=.)
recode PRMONTH50                 (-9 -8 -6 -5=.)
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
recode PRYEAR49                  (-999 -888 -666=.)
recode PRYEAR50                  (-999 -888 -666=.)

save "MN_SID_2016_CORE.dta", replace
