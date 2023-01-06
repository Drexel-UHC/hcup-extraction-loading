/*****************************************************************************
* Creation Date: 05/18/2021   
* IN_SID_2018_CORE.Do
* This program will load the 2018 IN ASCII CORE File into Stata.
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
      str    I10_DX_Admitting           123- 129   ///
      str    I10_DX1                    130- 136   ///
      str    I10_DX2                    137- 143   ///
      str    I10_DX3                    144- 150   ///
      str    I10_DX4                    151- 157   ///
      str    I10_DX5                    158- 164   ///
      str    I10_DX6                    165- 171   ///
      str    I10_DX7                    172- 178   ///
      str    I10_DX8                    179- 185   ///
      str    I10_DX9                    186- 192   ///
      str    I10_DX10                   193- 199   ///
      str    I10_DX11                   200- 206   ///
      str    I10_DX12                   207- 213   ///
      str    I10_DX13                   214- 220   ///
      str    I10_DX14                   221- 227   ///
      str    I10_DX15                   228- 234   ///
      str    I10_DX16                   235- 241   ///
      str    I10_DX17                   242- 248   ///
      str    I10_DX18                   249- 255   ///
      str    I10_DX19                   256- 262   ///
      str    I10_DX20                   263- 269   ///
      str    I10_DX21                   270- 276   ///
      str    I10_DX22                   277- 283   ///
      str    I10_DX23                   284- 290   ///
      str    I10_DX24                   291- 297   ///
      str    I10_DX25                   298- 304   ///
      str    I10_DX26                   305- 311   ///
      str    I10_DX27                   312- 318   ///
      str    I10_DX28                   319- 325   ///
      str    I10_DX29                   326- 332   ///
      str    I10_DX30                   333- 339   ///
      str    I10_DX31                   340- 346   ///
      str    I10_DX32                   347- 353   ///
      str    I10_DX33                   354- 360   ///
      str    I10_DX34                   361- 367   ///
      str    I10_DX35                   368- 374   ///
      str    I10_DX36                   375- 381   ///
      str    I10_DX37                   382- 388   ///
      str    I10_DX38                   389- 395   ///
      str    I10_DX39                   396- 402   ///
      str    I10_DX40                   403- 409   ///
      str    I10_DX41                   410- 416   ///
      str    I10_DX42                   417- 423   ///
      str    I10_DX43                   424- 430   ///
      str    I10_DX44                   431- 437   ///
      str    I10_DX45                   438- 444   ///
      str    I10_DX46                   445- 451   ///
      str    I10_DX47                   452- 458   ///
      str    I10_DX48                   459- 465   ///
      str    I10_DX49                   466- 472   ///
      str    I10_DX50                   473- 479   ///
      str    I10_DX51                   480- 486   ///
      str    I10_DX52                   487- 493   ///
      str    I10_DX53                   494- 500   ///
      str    I10_DX54                   501- 507   ///
      str    I10_DX55                   508- 514   ///
      str    I10_DX56                   515- 521   ///
      str    I10_DX57                   522- 528   ///
      str    I10_DX58                   529- 535   ///
      str    I10_DX59                   536- 542   ///
      str    I10_DX60                   543- 549   ///
      int    I10_NDX                    550- 552   ///
      int    I10_NPR                    553- 555   ///
      str    I10_PR1                    556- 562   ///
      str    I10_PR2                    563- 569   ///
      str    I10_PR3                    570- 576   ///
      str    I10_PR4                    577- 583   ///
      str    I10_PR5                    584- 590   ///
      str    I10_PR6                    591- 597   ///
      str    I10_PR7                    598- 604   ///
      str    I10_PR8                    605- 611   ///
      str    I10_PR9                    612- 618   ///
      str    I10_PR10                   619- 625   ///
      str    I10_PR11                   626- 632   ///
      str    I10_PR12                   633- 639   ///
      str    I10_PR13                   640- 646   ///
      str    I10_PR14                   647- 653   ///
      str    I10_PR15                   654- 660   ///
      str    I10_PR16                   661- 667   ///
      str    I10_PR17                   668- 674   ///
      str    I10_PR18                   675- 681   ///
      str    I10_PR19                   682- 688   ///
      str    I10_PR20                   689- 695   ///
      str    I10_PR21                   696- 702   ///
      str    I10_PR22                   703- 709   ///
      str    I10_PR23                   710- 716   ///
      str    I10_PR24                   717- 723   ///
      str    I10_PR25                   724- 730   ///
      str    I10_PR26                   731- 737   ///
      str    I10_PR27                   738- 744   ///
      str    I10_PR28                   745- 751   ///
      str    I10_PR29                   752- 758   ///
      str    I10_PR30                   759- 765   ///
      str    I10_PR31                   766- 772   ///
      str    I10_PR32                   773- 779   ///
      str    I10_PR33                   780- 786   ///
      str    I10_PR34                   787- 793   ///
      str    I10_PR35                   794- 800   ///
      str    I10_PR36                   801- 807   ///
      str    I10_PR37                   808- 814   ///
      str    I10_PR38                   815- 821   ///
      str    I10_PR39                   822- 828   ///
      str    I10_PR40                   829- 835   ///
      str    I10_PR41                   836- 842   ///
      str    I10_PR42                   843- 849   ///
      str    I10_PR43                   850- 856   ///
      str    I10_PR44                   857- 863   ///
      str    I10_PR45                   864- 870   ///
      str    I10_PR46                   871- 877   ///
      str    I10_PR47                   878- 884   ///
      str    I10_PR48                   885- 891   ///
      str    I10_PR49                   892- 898   ///
      str    I10_PR50                   899- 905   ///
      str    I10_PR51                   906- 912   ///
      str    I10_PR52                   913- 919   ///
      str    I10_PR53                   920- 926   ///
      str    I10_PR54                   927- 933   ///
      str    I10_PR55                   934- 940   ///
      str    I10_PR56                   941- 947   ///
      str    I10_PR57                   948- 954   ///
      str    I10_PR58                   955- 961   ///
      str    I10_PR59                   962- 968   ///
      str    I10_PR60                   969- 975   ///
      int    I10_PROCTYPE               976- 978   ///
      double KEY                        979- 993   ///
      long   LOS                        994- 998   ///
      long   LOS_X                      999-1004   ///
      byte   MDC                       1005-1006   ///
      byte   MDC_NoPOA                 1007-1008   ///
      byte   MEDINCSTQ                 1009-1010   ///
      byte   PAY1                      1011-1012   ///
      str    PAY1_X                    1013        ///
      byte   PAY2                      1014-1015   ///
      str    PAY2_X                    1016        ///
      int    PL_CBSA                   1017-1019   ///
      byte   PL_NCHS                   1020-1021   ///
      byte   PL_RUCC                   1022-1023   ///
      byte   PL_UIC                    1024-1025   ///
      byte   PL_UR_CAT4                1026-1027   ///
      byte   POA_Disch_Edit1           1028-1029   ///
      byte   POA_Disch_Edit2           1030-1031   ///
      byte   POA_Hosp_Edit1            1032-1033   ///
      byte   POA_Hosp_Edit2            1034-1035   ///
      byte   POA_Hosp_Edit3            1036-1037   ///
      double POA_Hosp_Edit3_Value      1038-1045   ///
      str    PointOfOrigin_X           1046        ///
      str    PointOfOriginUB04         1047        ///
      long   PRDAY1                    1048-1052   ///
      long   PRDAY2                    1053-1057   ///
      long   PRDAY3                    1058-1062   ///
      long   PRDAY4                    1063-1067   ///
      long   PRDAY5                    1068-1072   ///
      long   PRDAY6                    1073-1077   ///
      long   PRDAY7                    1078-1082   ///
      long   PRDAY8                    1083-1087   ///
      long   PRDAY9                    1088-1092   ///
      long   PRDAY10                   1093-1097   ///
      long   PRDAY11                   1098-1102   ///
      long   PRDAY12                   1103-1107   ///
      long   PRDAY13                   1108-1112   ///
      long   PRDAY14                   1113-1117   ///
      long   PRDAY15                   1118-1122   ///
      long   PRDAY16                   1123-1127   ///
      long   PRDAY17                   1128-1132   ///
      long   PRDAY18                   1133-1137   ///
      long   PRDAY19                   1138-1142   ///
      long   PRDAY20                   1143-1147   ///
      long   PRDAY21                   1148-1152   ///
      long   PRDAY22                   1153-1157   ///
      long   PRDAY23                   1158-1162   ///
      long   PRDAY24                   1163-1167   ///
      long   PRDAY25                   1168-1172   ///
      long   PRDAY26                   1173-1177   ///
      long   PRDAY27                   1178-1182   ///
      long   PRDAY28                   1183-1187   ///
      long   PRDAY29                   1188-1192   ///
      long   PRDAY30                   1193-1197   ///
      long   PRDAY31                   1198-1202   ///
      long   PRDAY32                   1203-1207   ///
      long   PRDAY33                   1208-1212   ///
      long   PRDAY34                   1213-1217   ///
      long   PRDAY35                   1218-1222   ///
      long   PRDAY36                   1223-1227   ///
      long   PRDAY37                   1228-1232   ///
      long   PRDAY38                   1233-1237   ///
      long   PRDAY39                   1238-1242   ///
      long   PRDAY40                   1243-1247   ///
      long   PRDAY41                   1248-1252   ///
      long   PRDAY42                   1253-1257   ///
      long   PRDAY43                   1258-1262   ///
      long   PRDAY44                   1263-1267   ///
      long   PRDAY45                   1268-1272   ///
      long   PRDAY46                   1273-1277   ///
      long   PRDAY47                   1278-1282   ///
      long   PRDAY48                   1283-1287   ///
      long   PRDAY49                   1288-1292   ///
      long   PRDAY50                   1293-1297   ///
      long   PRDAY51                   1298-1302   ///
      long   PRDAY52                   1303-1307   ///
      long   PRDAY53                   1308-1312   ///
      long   PRDAY54                   1313-1317   ///
      long   PRDAY55                   1318-1322   ///
      long   PRDAY56                   1323-1327   ///
      long   PRDAY57                   1328-1332   ///
      long   PRDAY58                   1333-1337   ///
      long   PRDAY59                   1338-1342   ///
      long   PRDAY60                   1343-1347   ///
      str    PrimLang                  1348-1350   ///
      str    PSTATE                    1351-1352   ///
      long   PSTCO                     1353-1357   ///
      long   PSTCO2                    1358-1362   ///
      byte   RACE                      1363-1364   ///
      byte   RACE_EDIT                 1365-1366   ///
      str    RACE_X                    1367-1371   ///
      double TOTCHG                    1372-1381   ///
      double TOTCHG_X                  1382-1396   ///
      byte   TRAN_IN                   1397-1398   ///
      byte   TRAN_OUT                  1399-1400   ///
      long   VisitLink                 1401-1409   ///
      int    YEAR                      1410-1413   ///
      str    ZIP                       1414-1418   ///
      str    ZIP3                      1419-1421   ///
      int    ZIPINC_QRTL               1422-1424   ///
      long   HOSPID                    1425-1429   ///
      int    AYEAR                     1430-1433   ///
      byte   BMONTH                    1434-1435   ///
      int    BYEAR                     1436-1439   ///
      byte   PRMONTH1                  1440-1441   ///
      byte   PRMONTH2                  1442-1443   ///
      byte   PRMONTH3                  1444-1445   ///
      byte   PRMONTH4                  1446-1447   ///
      byte   PRMONTH5                  1448-1449   ///
      byte   PRMONTH6                  1450-1451   ///
      byte   PRMONTH7                  1452-1453   ///
      byte   PRMONTH8                  1454-1455   ///
      byte   PRMONTH9                  1456-1457   ///
      byte   PRMONTH10                 1458-1459   ///
      byte   PRMONTH11                 1460-1461   ///
      byte   PRMONTH12                 1462-1463   ///
      byte   PRMONTH13                 1464-1465   ///
      byte   PRMONTH14                 1466-1467   ///
      byte   PRMONTH15                 1468-1469   ///
      byte   PRMONTH16                 1470-1471   ///
      byte   PRMONTH17                 1472-1473   ///
      byte   PRMONTH18                 1474-1475   ///
      byte   PRMONTH19                 1476-1477   ///
      byte   PRMONTH20                 1478-1479   ///
      byte   PRMONTH21                 1480-1481   ///
      byte   PRMONTH22                 1482-1483   ///
      byte   PRMONTH23                 1484-1485   ///
      byte   PRMONTH24                 1486-1487   ///
      byte   PRMONTH25                 1488-1489   ///
      byte   PRMONTH26                 1490-1491   ///
      byte   PRMONTH27                 1492-1493   ///
      byte   PRMONTH28                 1494-1495   ///
      byte   PRMONTH29                 1496-1497   ///
      byte   PRMONTH30                 1498-1499   ///
      byte   PRMONTH31                 1500-1501   ///
      byte   PRMONTH32                 1502-1503   ///
      byte   PRMONTH33                 1504-1505   ///
      byte   PRMONTH34                 1506-1507   ///
      byte   PRMONTH35                 1508-1509   ///
      byte   PRMONTH36                 1510-1511   ///
      byte   PRMONTH37                 1512-1513   ///
      byte   PRMONTH38                 1514-1515   ///
      byte   PRMONTH39                 1516-1517   ///
      byte   PRMONTH40                 1518-1519   ///
      byte   PRMONTH41                 1520-1521   ///
      byte   PRMONTH42                 1522-1523   ///
      byte   PRMONTH43                 1524-1525   ///
      byte   PRMONTH44                 1526-1527   ///
      byte   PRMONTH45                 1528-1529   ///
      byte   PRMONTH46                 1530-1531   ///
      byte   PRMONTH47                 1532-1533   ///
      byte   PRMONTH48                 1534-1535   ///
      byte   PRMONTH49                 1536-1537   ///
      byte   PRMONTH50                 1538-1539   ///
      byte   PRMONTH51                 1540-1541   ///
      byte   PRMONTH52                 1542-1543   ///
      byte   PRMONTH53                 1544-1545   ///
      byte   PRMONTH54                 1546-1547   ///
      byte   PRMONTH55                 1548-1549   ///
      byte   PRMONTH56                 1550-1551   ///
      byte   PRMONTH57                 1552-1553   ///
      byte   PRMONTH58                 1554-1555   ///
      byte   PRMONTH59                 1556-1557   ///
      byte   PRMONTH60                 1558-1559   ///
      int    PRYEAR1                   1560-1563   ///
      int    PRYEAR2                   1564-1567   ///
      int    PRYEAR3                   1568-1571   ///
      int    PRYEAR4                   1572-1575   ///
      int    PRYEAR5                   1576-1579   ///
      int    PRYEAR6                   1580-1583   ///
      int    PRYEAR7                   1584-1587   ///
      int    PRYEAR8                   1588-1591   ///
      int    PRYEAR9                   1592-1595   ///
      int    PRYEAR10                  1596-1599   ///
      int    PRYEAR11                  1600-1603   ///
      int    PRYEAR12                  1604-1607   ///
      int    PRYEAR13                  1608-1611   ///
      int    PRYEAR14                  1612-1615   ///
      int    PRYEAR15                  1616-1619   ///
      int    PRYEAR16                  1620-1623   ///
      int    PRYEAR17                  1624-1627   ///
      int    PRYEAR18                  1628-1631   ///
      int    PRYEAR19                  1632-1635   ///
      int    PRYEAR20                  1636-1639   ///
      int    PRYEAR21                  1640-1643   ///
      int    PRYEAR22                  1644-1647   ///
      int    PRYEAR23                  1648-1651   ///
      int    PRYEAR24                  1652-1655   ///
      int    PRYEAR25                  1656-1659   ///
      int    PRYEAR26                  1660-1663   ///
      int    PRYEAR27                  1664-1667   ///
      int    PRYEAR28                  1668-1671   ///
      int    PRYEAR29                  1672-1675   ///
      int    PRYEAR30                  1676-1679   ///
      int    PRYEAR31                  1680-1683   ///
      int    PRYEAR32                  1684-1687   ///
      int    PRYEAR33                  1688-1691   ///
      int    PRYEAR34                  1692-1695   ///
      int    PRYEAR35                  1696-1699   ///
      int    PRYEAR36                  1700-1703   ///
      int    PRYEAR37                  1704-1707   ///
      int    PRYEAR38                  1708-1711   ///
      int    PRYEAR39                  1712-1715   ///
      int    PRYEAR40                  1716-1719   ///
      int    PRYEAR41                  1720-1723   ///
      int    PRYEAR42                  1724-1727   ///
      int    PRYEAR43                  1728-1731   ///
      int    PRYEAR44                  1732-1735   ///
      int    PRYEAR45                  1736-1739   ///
      int    PRYEAR46                  1740-1743   ///
      int    PRYEAR47                  1744-1747   ///
      int    PRYEAR48                  1748-1751   ///
      int    PRYEAR49                  1752-1755   ///
      int    PRYEAR50                  1756-1759   ///
      int    PRYEAR51                  1760-1763   ///
      int    PRYEAR52                  1764-1767   ///
      int    PRYEAR53                  1768-1771   ///
      int    PRYEAR54                  1772-1775   ///
      int    PRYEAR55                  1776-1779   ///
      int    PRYEAR56                  1780-1783   ///
      int    PRYEAR57                  1784-1787   ///
      int    PRYEAR58                  1788-1791   ///
      int    PRYEAR59                  1792-1795   ///
      int    PRYEAR60                  1796-1799   ///
      using  "IN_SID_2018_CORE.ASC"

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
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
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

save "IN_SID_2018_CORE.dta", replace
