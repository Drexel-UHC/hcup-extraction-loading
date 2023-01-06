/*****************************************************************************
* Creation Date: 02/02/2022   
* IN_SID_2020_CORE.Do
* This program will load the 2020 IN ASCII CORE File into Stata.
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
      long   DaysToEvent                 24-  29   ///
      byte   DIED                        30-  31   ///
      str    DISP_X                      32-  33   ///
      byte   DISPUB04                    34-  35   ///
      byte   DISPUNIFORM                 36-  37   ///
      byte   DMONTH                      38-  39   ///
      byte   DQTR                        40-  41   ///
      int    DRG                         42-  44   ///
      int    DRG_NoPOA                   45-  47   ///
      byte   DRGVER                      48-  49   ///
      str    DXPOA1                      50        ///
      str    DXPOA2                      51        ///
      str    DXPOA3                      52        ///
      str    DXPOA4                      53        ///
      str    DXPOA5                      54        ///
      str    DXPOA6                      55        ///
      str    DXPOA7                      56        ///
      str    DXPOA8                      57        ///
      str    DXPOA9                      58        ///
      str    DXPOA10                     59        ///
      str    DXPOA11                     60        ///
      str    DXPOA12                     61        ///
      str    DXPOA13                     62        ///
      str    DXPOA14                     63        ///
      str    DXPOA15                     64        ///
      str    DXPOA16                     65        ///
      str    DXPOA17                     66        ///
      str    DXPOA18                     67        ///
      str    DXPOA19                     68        ///
      str    DXPOA20                     69        ///
      str    DXPOA21                     70        ///
      str    DXPOA22                     71        ///
      str    DXPOA23                     72        ///
      str    DXPOA24                     73        ///
      str    DXPOA25                     74        ///
      str    DXPOA26                     75        ///
      str    DXPOA27                     76        ///
      str    DXPOA28                     77        ///
      str    DXPOA29                     78        ///
      str    DXPOA30                     79        ///
      str    DXPOA31                     80        ///
      str    DXPOA32                     81        ///
      str    DXPOA33                     82        ///
      str    DXPOA34                     83        ///
      str    DXPOA35                     84        ///
      str    DXPOA36                     85        ///
      str    DXPOA37                     86        ///
      str    DXPOA38                     87        ///
      str    DXPOA39                     88        ///
      str    DXPOA40                     89        ///
      str    DXPOA41                     90        ///
      str    DXPOA42                     91        ///
      str    DXPOA43                     92        ///
      str    DXPOA44                     93        ///
      str    DXPOA45                     94        ///
      str    DXPOA46                     95        ///
      str    DXPOA47                     96        ///
      str    DXPOA48                     97        ///
      str    DXPOA49                     98        ///
      str    DXPOA50                     99        ///
      str    DXPOA51                    100        ///
      str    DXPOA52                    101        ///
      str    DXPOA53                    102        ///
      str    DXPOA54                    103        ///
      str    DXPOA55                    104        ///
      str    DXPOA56                    105        ///
      str    DXPOA57                    106        ///
      str    DXPOA58                    107        ///
      str    DXPOA59                    108        ///
      str    DXPOA60                    109        ///
      byte   FEMALE                     110- 111   ///
      byte   HCUP_ED                    112- 113   ///
      byte   HCUP_OS                    114- 115   ///
      byte   HISPANIC                   116- 117   ///
      str    HISPANIC_X                 118        ///
      byte   HospitalUnit               119- 120   ///
      str    HOSPST                     121- 122   ///
      int    I10_BIRTH                  123- 125   ///
      int    I10_DELIVERY               126- 128   ///
      str    I10_DX_Admitting           129- 135   ///
      str    I10_DX1                    136- 142   ///
      str    I10_DX2                    143- 149   ///
      str    I10_DX3                    150- 156   ///
      str    I10_DX4                    157- 163   ///
      str    I10_DX5                    164- 170   ///
      str    I10_DX6                    171- 177   ///
      str    I10_DX7                    178- 184   ///
      str    I10_DX8                    185- 191   ///
      str    I10_DX9                    192- 198   ///
      str    I10_DX10                   199- 205   ///
      str    I10_DX11                   206- 212   ///
      str    I10_DX12                   213- 219   ///
      str    I10_DX13                   220- 226   ///
      str    I10_DX14                   227- 233   ///
      str    I10_DX15                   234- 240   ///
      str    I10_DX16                   241- 247   ///
      str    I10_DX17                   248- 254   ///
      str    I10_DX18                   255- 261   ///
      str    I10_DX19                   262- 268   ///
      str    I10_DX20                   269- 275   ///
      str    I10_DX21                   276- 282   ///
      str    I10_DX22                   283- 289   ///
      str    I10_DX23                   290- 296   ///
      str    I10_DX24                   297- 303   ///
      str    I10_DX25                   304- 310   ///
      str    I10_DX26                   311- 317   ///
      str    I10_DX27                   318- 324   ///
      str    I10_DX28                   325- 331   ///
      str    I10_DX29                   332- 338   ///
      str    I10_DX30                   339- 345   ///
      str    I10_DX31                   346- 352   ///
      str    I10_DX32                   353- 359   ///
      str    I10_DX33                   360- 366   ///
      str    I10_DX34                   367- 373   ///
      str    I10_DX35                   374- 380   ///
      str    I10_DX36                   381- 387   ///
      str    I10_DX37                   388- 394   ///
      str    I10_DX38                   395- 401   ///
      str    I10_DX39                   402- 408   ///
      str    I10_DX40                   409- 415   ///
      str    I10_DX41                   416- 422   ///
      str    I10_DX42                   423- 429   ///
      str    I10_DX43                   430- 436   ///
      str    I10_DX44                   437- 443   ///
      str    I10_DX45                   444- 450   ///
      str    I10_DX46                   451- 457   ///
      str    I10_DX47                   458- 464   ///
      str    I10_DX48                   465- 471   ///
      str    I10_DX49                   472- 478   ///
      str    I10_DX50                   479- 485   ///
      str    I10_DX51                   486- 492   ///
      str    I10_DX52                   493- 499   ///
      str    I10_DX53                   500- 506   ///
      str    I10_DX54                   507- 513   ///
      str    I10_DX55                   514- 520   ///
      str    I10_DX56                   521- 527   ///
      str    I10_DX57                   528- 534   ///
      str    I10_DX58                   535- 541   ///
      str    I10_DX59                   542- 548   ///
      str    I10_DX60                   549- 555   ///
      int    I10_NDX                    556- 558   ///
      int    I10_NPR                    559- 561   ///
      str    I10_PR1                    562- 568   ///
      str    I10_PR2                    569- 575   ///
      str    I10_PR3                    576- 582   ///
      str    I10_PR4                    583- 589   ///
      str    I10_PR5                    590- 596   ///
      str    I10_PR6                    597- 603   ///
      str    I10_PR7                    604- 610   ///
      str    I10_PR8                    611- 617   ///
      str    I10_PR9                    618- 624   ///
      str    I10_PR10                   625- 631   ///
      str    I10_PR11                   632- 638   ///
      str    I10_PR12                   639- 645   ///
      str    I10_PR13                   646- 652   ///
      str    I10_PR14                   653- 659   ///
      str    I10_PR15                   660- 666   ///
      str    I10_PR16                   667- 673   ///
      str    I10_PR17                   674- 680   ///
      str    I10_PR18                   681- 687   ///
      str    I10_PR19                   688- 694   ///
      str    I10_PR20                   695- 701   ///
      str    I10_PR21                   702- 708   ///
      str    I10_PR22                   709- 715   ///
      str    I10_PR23                   716- 722   ///
      str    I10_PR24                   723- 729   ///
      str    I10_PR25                   730- 736   ///
      str    I10_PR26                   737- 743   ///
      str    I10_PR27                   744- 750   ///
      str    I10_PR28                   751- 757   ///
      str    I10_PR29                   758- 764   ///
      str    I10_PR30                   765- 771   ///
      str    I10_PR31                   772- 778   ///
      str    I10_PR32                   779- 785   ///
      str    I10_PR33                   786- 792   ///
      str    I10_PR34                   793- 799   ///
      str    I10_PR35                   800- 806   ///
      str    I10_PR36                   807- 813   ///
      str    I10_PR37                   814- 820   ///
      str    I10_PR38                   821- 827   ///
      str    I10_PR39                   828- 834   ///
      str    I10_PR40                   835- 841   ///
      str    I10_PR41                   842- 848   ///
      str    I10_PR42                   849- 855   ///
      str    I10_PR43                   856- 862   ///
      str    I10_PR44                   863- 869   ///
      str    I10_PR45                   870- 876   ///
      str    I10_PR46                   877- 883   ///
      str    I10_PR47                   884- 890   ///
      str    I10_PR48                   891- 897   ///
      str    I10_PR49                   898- 904   ///
      str    I10_PR50                   905- 911   ///
      str    I10_PR51                   912- 918   ///
      str    I10_PR52                   919- 925   ///
      str    I10_PR53                   926- 932   ///
      str    I10_PR54                   933- 939   ///
      str    I10_PR55                   940- 946   ///
      str    I10_PR56                   947- 953   ///
      str    I10_PR57                   954- 960   ///
      str    I10_PR58                   961- 967   ///
      str    I10_PR59                   968- 974   ///
      str    I10_PR60                   975- 981   ///
      int    I10_PROCTYPE               982- 984   ///
      byte   I10_SERVICELINE            985- 986   ///
      double KEY                        987-1001   ///
      long   LOS                       1002-1006   ///
      long   LOS_X                     1007-1012   ///
      byte   MDC                       1013-1014   ///
      byte   MDC_NoPOA                 1015-1016   ///
      byte   MEDINCSTQ                 1017-1018   ///
      byte   PAY1                      1019-1020   ///
      str    PAY1_X                    1021        ///
      byte   PAY2                      1022-1023   ///
      str    PAY2_X                    1024        ///
      byte   PCLASS_ORPROC             1025-1026   ///
      int    PL_CBSA                   1027-1029   ///
      byte   PL_NCHS                   1030-1031   ///
      byte   PL_RUCC                   1032-1033   ///
      byte   PL_UIC                    1034-1035   ///
      byte   PL_UR_CAT4                1036-1037   ///
      byte   POA_Disch_Edit1           1038-1039   ///
      byte   POA_Disch_Edit2           1040-1041   ///
      byte   POA_Hosp_Edit1            1042-1043   ///
      byte   POA_Hosp_Edit2            1044-1045   ///
      byte   POA_Hosp_Edit3            1046-1047   ///
      double POA_Hosp_Edit3_Value      1048-1055   ///
      str    PointOfOrigin_X           1056        ///
      str    PointOfOriginUB04         1057        ///
      long   PRDAY1                    1058-1062   ///
      long   PRDAY2                    1063-1067   ///
      long   PRDAY3                    1068-1072   ///
      long   PRDAY4                    1073-1077   ///
      long   PRDAY5                    1078-1082   ///
      long   PRDAY6                    1083-1087   ///
      long   PRDAY7                    1088-1092   ///
      long   PRDAY8                    1093-1097   ///
      long   PRDAY9                    1098-1102   ///
      long   PRDAY10                   1103-1107   ///
      long   PRDAY11                   1108-1112   ///
      long   PRDAY12                   1113-1117   ///
      long   PRDAY13                   1118-1122   ///
      long   PRDAY14                   1123-1127   ///
      long   PRDAY15                   1128-1132   ///
      long   PRDAY16                   1133-1137   ///
      long   PRDAY17                   1138-1142   ///
      long   PRDAY18                   1143-1147   ///
      long   PRDAY19                   1148-1152   ///
      long   PRDAY20                   1153-1157   ///
      long   PRDAY21                   1158-1162   ///
      long   PRDAY22                   1163-1167   ///
      long   PRDAY23                   1168-1172   ///
      long   PRDAY24                   1173-1177   ///
      long   PRDAY25                   1178-1182   ///
      long   PRDAY26                   1183-1187   ///
      long   PRDAY27                   1188-1192   ///
      long   PRDAY28                   1193-1197   ///
      long   PRDAY29                   1198-1202   ///
      long   PRDAY30                   1203-1207   ///
      long   PRDAY31                   1208-1212   ///
      long   PRDAY32                   1213-1217   ///
      long   PRDAY33                   1218-1222   ///
      long   PRDAY34                   1223-1227   ///
      long   PRDAY35                   1228-1232   ///
      long   PRDAY36                   1233-1237   ///
      long   PRDAY37                   1238-1242   ///
      long   PRDAY38                   1243-1247   ///
      long   PRDAY39                   1248-1252   ///
      long   PRDAY40                   1253-1257   ///
      long   PRDAY41                   1258-1262   ///
      long   PRDAY42                   1263-1267   ///
      long   PRDAY43                   1268-1272   ///
      long   PRDAY44                   1273-1277   ///
      long   PRDAY45                   1278-1282   ///
      long   PRDAY46                   1283-1287   ///
      long   PRDAY47                   1288-1292   ///
      long   PRDAY48                   1293-1297   ///
      long   PRDAY49                   1298-1302   ///
      long   PRDAY50                   1303-1307   ///
      long   PRDAY51                   1308-1312   ///
      long   PRDAY52                   1313-1317   ///
      long   PRDAY53                   1318-1322   ///
      long   PRDAY54                   1323-1327   ///
      long   PRDAY55                   1328-1332   ///
      long   PRDAY56                   1333-1337   ///
      long   PRDAY57                   1338-1342   ///
      long   PRDAY58                   1343-1347   ///
      long   PRDAY59                   1348-1352   ///
      long   PRDAY60                   1353-1357   ///
      str    PrimLang                  1358-1360   ///
      str    PSTATE                    1361-1362   ///
      str    PSTATE_GEO                1363-1364   ///
      long   PSTCO                     1365-1369   ///
      long   PSTCO_GEO                 1370-1374   ///
      byte   RACE                      1375-1376   ///
      float  RACE_PCT_MISS_HOSP        1377-1383   ///
      str    RACE_X                    1384-1388   ///
      double TOTCHG                    1389-1398   ///
      double TOTCHG_X                  1399-1413   ///
      byte   TRAN_IN                   1414-1415   ///
      byte   TRAN_OUT                  1416-1417   ///
      long   VisitLink                 1418-1426   ///
      int    YEAR                      1427-1430   ///
      str    ZIP                       1431-1435   ///
      str    ZIP3                      1436-1438   ///
      int    ZIPINC_QRTL               1439-1441   ///
      long   HOSPID                    1442-1446   ///
      int    AYEAR                     1447-1450   ///
      byte   BMONTH                    1451-1452   ///
      int    BYEAR                     1453-1456   ///
      byte   PRMONTH1                  1457-1458   ///
      byte   PRMONTH2                  1459-1460   ///
      byte   PRMONTH3                  1461-1462   ///
      byte   PRMONTH4                  1463-1464   ///
      byte   PRMONTH5                  1465-1466   ///
      byte   PRMONTH6                  1467-1468   ///
      byte   PRMONTH7                  1469-1470   ///
      byte   PRMONTH8                  1471-1472   ///
      byte   PRMONTH9                  1473-1474   ///
      byte   PRMONTH10                 1475-1476   ///
      byte   PRMONTH11                 1477-1478   ///
      byte   PRMONTH12                 1479-1480   ///
      byte   PRMONTH13                 1481-1482   ///
      byte   PRMONTH14                 1483-1484   ///
      byte   PRMONTH15                 1485-1486   ///
      byte   PRMONTH16                 1487-1488   ///
      byte   PRMONTH17                 1489-1490   ///
      byte   PRMONTH18                 1491-1492   ///
      byte   PRMONTH19                 1493-1494   ///
      byte   PRMONTH20                 1495-1496   ///
      byte   PRMONTH21                 1497-1498   ///
      byte   PRMONTH22                 1499-1500   ///
      byte   PRMONTH23                 1501-1502   ///
      byte   PRMONTH24                 1503-1504   ///
      byte   PRMONTH25                 1505-1506   ///
      byte   PRMONTH26                 1507-1508   ///
      byte   PRMONTH27                 1509-1510   ///
      byte   PRMONTH28                 1511-1512   ///
      byte   PRMONTH29                 1513-1514   ///
      byte   PRMONTH30                 1515-1516   ///
      byte   PRMONTH31                 1517-1518   ///
      byte   PRMONTH32                 1519-1520   ///
      byte   PRMONTH33                 1521-1522   ///
      byte   PRMONTH34                 1523-1524   ///
      byte   PRMONTH35                 1525-1526   ///
      byte   PRMONTH36                 1527-1528   ///
      byte   PRMONTH37                 1529-1530   ///
      byte   PRMONTH38                 1531-1532   ///
      byte   PRMONTH39                 1533-1534   ///
      byte   PRMONTH40                 1535-1536   ///
      byte   PRMONTH41                 1537-1538   ///
      byte   PRMONTH42                 1539-1540   ///
      byte   PRMONTH43                 1541-1542   ///
      byte   PRMONTH44                 1543-1544   ///
      byte   PRMONTH45                 1545-1546   ///
      byte   PRMONTH46                 1547-1548   ///
      byte   PRMONTH47                 1549-1550   ///
      byte   PRMONTH48                 1551-1552   ///
      byte   PRMONTH49                 1553-1554   ///
      byte   PRMONTH50                 1555-1556   ///
      byte   PRMONTH51                 1557-1558   ///
      byte   PRMONTH52                 1559-1560   ///
      byte   PRMONTH53                 1561-1562   ///
      byte   PRMONTH54                 1563-1564   ///
      byte   PRMONTH55                 1565-1566   ///
      byte   PRMONTH56                 1567-1568   ///
      byte   PRMONTH57                 1569-1570   ///
      byte   PRMONTH58                 1571-1572   ///
      byte   PRMONTH59                 1573-1574   ///
      byte   PRMONTH60                 1575-1576   ///
      int    PRYEAR1                   1577-1580   ///
      int    PRYEAR2                   1581-1584   ///
      int    PRYEAR3                   1585-1588   ///
      int    PRYEAR4                   1589-1592   ///
      int    PRYEAR5                   1593-1596   ///
      int    PRYEAR6                   1597-1600   ///
      int    PRYEAR7                   1601-1604   ///
      int    PRYEAR8                   1605-1608   ///
      int    PRYEAR9                   1609-1612   ///
      int    PRYEAR10                  1613-1616   ///
      int    PRYEAR11                  1617-1620   ///
      int    PRYEAR12                  1621-1624   ///
      int    PRYEAR13                  1625-1628   ///
      int    PRYEAR14                  1629-1632   ///
      int    PRYEAR15                  1633-1636   ///
      int    PRYEAR16                  1637-1640   ///
      int    PRYEAR17                  1641-1644   ///
      int    PRYEAR18                  1645-1648   ///
      int    PRYEAR19                  1649-1652   ///
      int    PRYEAR20                  1653-1656   ///
      int    PRYEAR21                  1657-1660   ///
      int    PRYEAR22                  1661-1664   ///
      int    PRYEAR23                  1665-1668   ///
      int    PRYEAR24                  1669-1672   ///
      int    PRYEAR25                  1673-1676   ///
      int    PRYEAR26                  1677-1680   ///
      int    PRYEAR27                  1681-1684   ///
      int    PRYEAR28                  1685-1688   ///
      int    PRYEAR29                  1689-1692   ///
      int    PRYEAR30                  1693-1696   ///
      int    PRYEAR31                  1697-1700   ///
      int    PRYEAR32                  1701-1704   ///
      int    PRYEAR33                  1705-1708   ///
      int    PRYEAR34                  1709-1712   ///
      int    PRYEAR35                  1713-1716   ///
      int    PRYEAR36                  1717-1720   ///
      int    PRYEAR37                  1721-1724   ///
      int    PRYEAR38                  1725-1728   ///
      int    PRYEAR39                  1729-1732   ///
      int    PRYEAR40                  1733-1736   ///
      int    PRYEAR41                  1737-1740   ///
      int    PRYEAR42                  1741-1744   ///
      int    PRYEAR43                  1745-1748   ///
      int    PRYEAR44                  1749-1752   ///
      int    PRYEAR45                  1753-1756   ///
      int    PRYEAR46                  1757-1760   ///
      int    PRYEAR47                  1761-1764   ///
      int    PRYEAR48                  1765-1768   ///
      int    PRYEAR49                  1769-1772   ///
      int    PRYEAR50                  1773-1776   ///
      int    PRYEAR51                  1777-1780   ///
      int    PRYEAR52                  1781-1784   ///
      int    PRYEAR53                  1785-1788   ///
      int    PRYEAR54                  1789-1792   ///
      int    PRYEAR55                  1793-1796   ///
      int    PRYEAR56                  1797-1800   ///
      int    PRYEAR57                  1801-1804   ///
      int    PRYEAR58                  1805-1808   ///
      int    PRYEAR59                  1809-1812   ///
      int    PRYEAR60                  1813-1816   ///
      using  "IN_SID_2020_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HospitalUnit             "Patient was discharged from a special unit within an acute care hospital (reported by source)"
label var HOSPST                   "Hospital state postal code"
label var I10_BIRTH                "ICD-10-CM Birth Indicator"
label var I10_DELIVERY             "ICD-10-CM Delivery Indicator"
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
label var I10_PR49                 "ICD-10-PCS Procedure 49"
label var I10_PR50                 "ICD-10-PCS Procedure 50"
label var I10_PR51                 "ICD-10-PCS Procedure 51"
label var I10_PR52                 "ICD-10-PCS Procedure 52"
label var I10_PR53                 "ICD-10-PCS Procedure 53"
label var I10_PR54                 "ICD-10-PCS Procedure 54"
label var I10_PR55                 "ICD-10-PCS Procedure 55"
label var I10_PR56                 "ICD-10-PCS Procedure 56"
label var I10_PR57                 "ICD-10-PCS Procedure 57"
label var I10_PR58                 "ICD-10-PCS Procedure 58"
label var I10_PR59                 "ICD-10-PCS Procedure 59"
label var I10_PR60                 "ICD-10-PCS Procedure 60"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
label var PCLASS_ORPROC            "Indicates operating room (major diagnostic or therapeutic) procedure on the record"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes (RUCC)"
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
label var PRDAY51                  "Number of days from admission to I10_PR51"
label var PRDAY52                  "Number of days from admission to I10_PR52"
label var PRDAY53                  "Number of days from admission to I10_PR53"
label var PRDAY54                  "Number of days from admission to I10_PR54"
label var PRDAY55                  "Number of days from admission to I10_PR55"
label var PRDAY56                  "Number of days from admission to I10_PR56"
label var PRDAY57                  "Number of days from admission to I10_PR57"
label var PRDAY58                  "Number of days from admission to I10_PR58"
label var PRDAY59                  "Number of days from admission to I10_PR59"
label var PRDAY60                  "Number of days from admission to I10_PR60"
label var PrimLang                 "Primary language of patient"
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
label var RACE                     "Race (uniform)"
label var RACE_PCT_MISS_HOSP       "Hospital percentage of missing or invalid race values"
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
label var HOSPID                   "HCUP hospital identification number"
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
label var PRMONTH51                "Month of procedure 51"
label var PRMONTH52                "Month of procedure 52"
label var PRMONTH53                "Month of procedure 53"
label var PRMONTH54                "Month of procedure 54"
label var PRMONTH55                "Month of procedure 55"
label var PRMONTH56                "Month of procedure 56"
label var PRMONTH57                "Month of procedure 57"
label var PRMONTH58                "Month of procedure 58"
label var PRMONTH59                "Month of procedure 59"
label var PRMONTH60                "Month of procedure 60"
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
label var PRYEAR51                 "Year of procedure 51"
label var PRYEAR52                 "Year of procedure 52"
label var PRYEAR53                 "Year of procedure 53"
label var PRYEAR54                 "Year of procedure 54"
label var PRYEAR55                 "Year of procedure 55"
label var PRYEAR56                 "Year of procedure 56"
label var PRYEAR57                 "Year of procedure 57"
label var PRYEAR58                 "Year of procedure 58"
label var PRYEAR59                 "Year of procedure 59"
label var PRYEAR60                 "Year of procedure 60"

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
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
recode I10_BIRTH                 (-99 -88 -66=.)
recode I10_DELIVERY              (-99 -88 -66=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode I10_SERVICELINE           (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
recode PCLASS_ORPROC             (-9 -8 -6 -5=.)
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
recode PRDAY51                   (-9999 -8888 -6666=.)
recode PRDAY52                   (-9999 -8888 -6666=.)
recode PRDAY53                   (-9999 -8888 -6666=.)
recode PRDAY54                   (-9999 -8888 -6666=.)
recode PRDAY55                   (-9999 -8888 -6666=.)
recode PRDAY56                   (-9999 -8888 -6666=.)
recode PRDAY57                   (-9999 -8888 -6666=.)
recode PRDAY58                   (-9999 -8888 -6666=.)
recode PRDAY59                   (-9999 -8888 -6666=.)
recode PRDAY60                   (-9999 -8888 -6666=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_PCT_MISS_HOSP        (-999.99 -888.88 -666.66=.)
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
recode PRMONTH49                 (-9 -8 -6 -5=.)
recode PRMONTH50                 (-9 -8 -6 -5=.)
recode PRMONTH51                 (-9 -8 -6 -5=.)
recode PRMONTH52                 (-9 -8 -6 -5=.)
recode PRMONTH53                 (-9 -8 -6 -5=.)
recode PRMONTH54                 (-9 -8 -6 -5=.)
recode PRMONTH55                 (-9 -8 -6 -5=.)
recode PRMONTH56                 (-9 -8 -6 -5=.)
recode PRMONTH57                 (-9 -8 -6 -5=.)
recode PRMONTH58                 (-9 -8 -6 -5=.)
recode PRMONTH59                 (-9 -8 -6 -5=.)
recode PRMONTH60                 (-9 -8 -6 -5=.)
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
recode PRYEAR51                  (-999 -888 -666=.)
recode PRYEAR52                  (-999 -888 -666=.)
recode PRYEAR53                  (-999 -888 -666=.)
recode PRYEAR54                  (-999 -888 -666=.)
recode PRYEAR55                  (-999 -888 -666=.)
recode PRYEAR56                  (-999 -888 -666=.)
recode PRYEAR57                  (-999 -888 -666=.)
recode PRYEAR58                  (-999 -888 -666=.)
recode PRYEAR59                  (-999 -888 -666=.)
recode PRYEAR60                  (-999 -888 -666=.)

save "IN_SID_2020_CORE.dta", replace
