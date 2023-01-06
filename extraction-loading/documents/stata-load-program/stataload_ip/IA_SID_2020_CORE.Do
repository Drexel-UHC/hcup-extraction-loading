/*****************************************************************************
* Creation Date: 06/25/2021   
* IA_SID_2020_CORE.Do
* This program will load the 2020 IA ASCII CORE File into Stata.
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
      str    DISP_X                      28-  29   ///
      byte   DISPUB04                    30-  31   ///
      byte   DISPUNIFORM                 32-  33   ///
      byte   DMONTH                      34-  35   ///
      byte   DQTR                        36-  37   ///
      int    DRG                         38-  40   ///
      int    DRG_NoPOA                   41-  43   ///
      byte   DRGVER                      44-  45   ///
      str    DXPOA1                      46        ///
      str    DXPOA2                      47        ///
      str    DXPOA3                      48        ///
      str    DXPOA4                      49        ///
      str    DXPOA5                      50        ///
      str    DXPOA6                      51        ///
      str    DXPOA7                      52        ///
      str    DXPOA8                      53        ///
      str    DXPOA9                      54        ///
      str    DXPOA10                     55        ///
      str    DXPOA11                     56        ///
      str    DXPOA12                     57        ///
      str    DXPOA13                     58        ///
      str    DXPOA14                     59        ///
      str    DXPOA15                     60        ///
      str    DXPOA16                     61        ///
      str    DXPOA17                     62        ///
      str    DXPOA18                     63        ///
      str    DXPOA19                     64        ///
      str    DXPOA20                     65        ///
      str    DXPOA21                     66        ///
      str    DXPOA22                     67        ///
      str    DXPOA23                     68        ///
      str    DXPOA24                     69        ///
      str    DXPOA25                     70        ///
      str    DXPOA26                     71        ///
      str    DXPOA27                     72        ///
      str    DXPOA28                     73        ///
      str    DXPOA29                     74        ///
      str    DXPOA30                     75        ///
      str    DXPOA31                     76        ///
      str    DXPOA32                     77        ///
      str    DXPOA33                     78        ///
      str    DXPOA34                     79        ///
      str    DXPOA35                     80        ///
      str    DXPOA36                     81        ///
      str    DXPOA37                     82        ///
      str    DXPOA38                     83        ///
      str    DXPOA39                     84        ///
      str    DXPOA40                     85        ///
      str    DXPOA41                     86        ///
      str    DXPOA42                     87        ///
      str    DXPOA43                     88        ///
      str    DXPOA44                     89        ///
      str    DXPOA45                     90        ///
      str    DXPOA46                     91        ///
      str    DXPOA47                     92        ///
      str    DXPOA48                     93        ///
      str    DXPOA49                     94        ///
      str    DXPOA50                     95        ///
      str    DXPOA51                     96        ///
      str    DXPOA52                     97        ///
      str    DXPOA53                     98        ///
      str    DXPOA54                     99        ///
      str    DXPOA55                    100        ///
      str    DXPOA56                    101        ///
      str    DXPOA57                    102        ///
      str    DXPOA58                    103        ///
      str    DXPOA59                    104        ///
      str    DXPOA60                    105        ///
      str    DXPOA61                    106        ///
      str    DXPOA62                    107        ///
      str    DXPOA63                    108        ///
      str    DXPOA64                    109        ///
      str    DXPOA65                    110        ///
      str    DXPOA66                    111        ///
      str    DXPOA67                    112        ///
      str    DXPOA68                    113        ///
      str    DXPOA69                    114        ///
      str    DXPOA70                    115        ///
      str    DXPOA71                    116        ///
      str    DXPOA72                    117        ///
      str    DXPOA73                    118        ///
      str    DXPOA74                    119        ///
      str    DXPOA75                    120        ///
      str    DXPOA76                    121        ///
      str    DXPOA77                    122        ///
      str    DXPOA78                    123        ///
      str    DXPOA79                    124        ///
      str    DXPOA80                    125        ///
      str    DXPOA81                    126        ///
      str    DXPOA82                    127        ///
      str    DXPOA83                    128        ///
      str    DXPOA84                    129        ///
      str    DXPOA85                    130        ///
      str    DXPOA86                    131        ///
      str    DXPOA87                    132        ///
      str    DXPOA88                    133        ///
      str    DXPOA89                    134        ///
      str    DXPOA90                    135        ///
      str    DXPOA91                    136        ///
      str    DXPOA92                    137        ///
      str    DXPOA93                    138        ///
      str    DXPOA94                    139        ///
      str    DXPOA95                    140        ///
      str    DXPOA96                    141        ///
      str    DXPOA97                    142        ///
      str    DXPOA98                    143        ///
      str    DXPOA99                    144        ///
      str    DXPOA100                   145        ///
      str    DXPOA101                   146        ///
      str    DXPOA102                   147        ///
      str    DXPOA103                   148        ///
      byte   FEMALE                     149- 150   ///
      byte   HCUP_ED                    151- 152   ///
      byte   HCUP_OS                    153- 154   ///
      byte   HISPANIC                   155- 156   ///
      str    HISPANIC_X                 157        ///
      byte   HospitalUnit               158- 159   ///
      str    HOSPST                     160- 161   ///
      int    I10_BIRTH                  162- 164   ///
      int    I10_DELIVERY               165- 167   ///
      str    I10_DX_Admitting           168- 174   ///
      str    I10_DX1                    175- 181   ///
      str    I10_DX2                    182- 188   ///
      str    I10_DX3                    189- 195   ///
      str    I10_DX4                    196- 202   ///
      str    I10_DX5                    203- 209   ///
      str    I10_DX6                    210- 216   ///
      str    I10_DX7                    217- 223   ///
      str    I10_DX8                    224- 230   ///
      str    I10_DX9                    231- 237   ///
      str    I10_DX10                   238- 244   ///
      str    I10_DX11                   245- 251   ///
      str    I10_DX12                   252- 258   ///
      str    I10_DX13                   259- 265   ///
      str    I10_DX14                   266- 272   ///
      str    I10_DX15                   273- 279   ///
      str    I10_DX16                   280- 286   ///
      str    I10_DX17                   287- 293   ///
      str    I10_DX18                   294- 300   ///
      str    I10_DX19                   301- 307   ///
      str    I10_DX20                   308- 314   ///
      str    I10_DX21                   315- 321   ///
      str    I10_DX22                   322- 328   ///
      str    I10_DX23                   329- 335   ///
      str    I10_DX24                   336- 342   ///
      str    I10_DX25                   343- 349   ///
      str    I10_DX26                   350- 356   ///
      str    I10_DX27                   357- 363   ///
      str    I10_DX28                   364- 370   ///
      str    I10_DX29                   371- 377   ///
      str    I10_DX30                   378- 384   ///
      str    I10_DX31                   385- 391   ///
      str    I10_DX32                   392- 398   ///
      str    I10_DX33                   399- 405   ///
      str    I10_DX34                   406- 412   ///
      str    I10_DX35                   413- 419   ///
      str    I10_DX36                   420- 426   ///
      str    I10_DX37                   427- 433   ///
      str    I10_DX38                   434- 440   ///
      str    I10_DX39                   441- 447   ///
      str    I10_DX40                   448- 454   ///
      str    I10_DX41                   455- 461   ///
      str    I10_DX42                   462- 468   ///
      str    I10_DX43                   469- 475   ///
      str    I10_DX44                   476- 482   ///
      str    I10_DX45                   483- 489   ///
      str    I10_DX46                   490- 496   ///
      str    I10_DX47                   497- 503   ///
      str    I10_DX48                   504- 510   ///
      str    I10_DX49                   511- 517   ///
      str    I10_DX50                   518- 524   ///
      str    I10_DX51                   525- 531   ///
      str    I10_DX52                   532- 538   ///
      str    I10_DX53                   539- 545   ///
      str    I10_DX54                   546- 552   ///
      str    I10_DX55                   553- 559   ///
      str    I10_DX56                   560- 566   ///
      str    I10_DX57                   567- 573   ///
      str    I10_DX58                   574- 580   ///
      str    I10_DX59                   581- 587   ///
      str    I10_DX60                   588- 594   ///
      str    I10_DX61                   595- 601   ///
      str    I10_DX62                   602- 608   ///
      str    I10_DX63                   609- 615   ///
      str    I10_DX64                   616- 622   ///
      str    I10_DX65                   623- 629   ///
      str    I10_DX66                   630- 636   ///
      str    I10_DX67                   637- 643   ///
      str    I10_DX68                   644- 650   ///
      str    I10_DX69                   651- 657   ///
      str    I10_DX70                   658- 664   ///
      str    I10_DX71                   665- 671   ///
      str    I10_DX72                   672- 678   ///
      str    I10_DX73                   679- 685   ///
      str    I10_DX74                   686- 692   ///
      str    I10_DX75                   693- 699   ///
      str    I10_DX76                   700- 706   ///
      str    I10_DX77                   707- 713   ///
      str    I10_DX78                   714- 720   ///
      str    I10_DX79                   721- 727   ///
      str    I10_DX80                   728- 734   ///
      str    I10_DX81                   735- 741   ///
      str    I10_DX82                   742- 748   ///
      str    I10_DX83                   749- 755   ///
      str    I10_DX84                   756- 762   ///
      str    I10_DX85                   763- 769   ///
      str    I10_DX86                   770- 776   ///
      str    I10_DX87                   777- 783   ///
      str    I10_DX88                   784- 790   ///
      str    I10_DX89                   791- 797   ///
      str    I10_DX90                   798- 804   ///
      str    I10_DX91                   805- 811   ///
      str    I10_DX92                   812- 818   ///
      str    I10_DX93                   819- 825   ///
      str    I10_DX94                   826- 832   ///
      str    I10_DX95                   833- 839   ///
      str    I10_DX96                   840- 846   ///
      str    I10_DX97                   847- 853   ///
      str    I10_DX98                   854- 860   ///
      str    I10_DX99                   861- 867   ///
      str    I10_DX100                  868- 874   ///
      str    I10_DX101                  875- 881   ///
      str    I10_DX102                  882- 888   ///
      str    I10_DX103                  889- 895   ///
      int    I10_NDX                    896- 898   ///
      int    I10_NPR                    899- 901   ///
      str    I10_PR1                    902- 908   ///
      str    I10_PR2                    909- 915   ///
      str    I10_PR3                    916- 922   ///
      str    I10_PR4                    923- 929   ///
      str    I10_PR5                    930- 936   ///
      str    I10_PR6                    937- 943   ///
      str    I10_PR7                    944- 950   ///
      str    I10_PR8                    951- 957   ///
      str    I10_PR9                    958- 964   ///
      str    I10_PR10                   965- 971   ///
      str    I10_PR11                   972- 978   ///
      str    I10_PR12                   979- 985   ///
      str    I10_PR13                   986- 992   ///
      str    I10_PR14                   993- 999   ///
      str    I10_PR15                  1000-1006   ///
      str    I10_PR16                  1007-1013   ///
      str    I10_PR17                  1014-1020   ///
      str    I10_PR18                  1021-1027   ///
      str    I10_PR19                  1028-1034   ///
      str    I10_PR20                  1035-1041   ///
      str    I10_PR21                  1042-1048   ///
      str    I10_PR22                  1049-1055   ///
      str    I10_PR23                  1056-1062   ///
      str    I10_PR24                  1063-1069   ///
      str    I10_PR25                  1070-1076   ///
      str    I10_PR26                  1077-1083   ///
      str    I10_PR27                  1084-1090   ///
      str    I10_PR28                  1091-1097   ///
      str    I10_PR29                  1098-1104   ///
      str    I10_PR30                  1105-1111   ///
      str    I10_PR31                  1112-1118   ///
      str    I10_PR32                  1119-1125   ///
      str    I10_PR33                  1126-1132   ///
      str    I10_PR34                  1133-1139   ///
      str    I10_PR35                  1140-1146   ///
      str    I10_PR36                  1147-1153   ///
      str    I10_PR37                  1154-1160   ///
      str    I10_PR38                  1161-1167   ///
      str    I10_PR39                  1168-1174   ///
      str    I10_PR40                  1175-1181   ///
      str    I10_PR41                  1182-1188   ///
      str    I10_PR42                  1189-1195   ///
      int    I10_PROCTYPE              1196-1198   ///
      byte   I10_SERVICELINE           1199-1200   ///
      double KEY                       1201-1215   ///
      long   LOS                       1216-1220   ///
      long   LOS_X                     1221-1226   ///
      byte   MDC                       1227-1228   ///
      byte   MDC_NoPOA                 1229-1230   ///
      long   MDNUM1_R                  1231-1239   ///
      long   MDNUM2_R                  1240-1248   ///
      long   MDNUM3_R                  1249-1257   ///
      byte   MEDINCSTQ                 1258-1259   ///
      long   MRN_R                     1260-1268   ///
      str    P7EDSRC_X                 1269-1270   ///
      byte   PAY1                      1271-1272   ///
      str    PAY1_X                    1273-1276   ///
      byte   PAY2                      1277-1278   ///
      str    PAY2_X                    1279-1282   ///
      byte   PAY3                      1283-1284   ///
      str    PAY3_X                    1285-1288   ///
      byte   PCLASS_ORPROC             1289-1290   ///
      int    PL_CBSA                   1291-1293   ///
      byte   PL_NCHS                   1294-1295   ///
      byte   PL_RUCC                   1296-1297   ///
      byte   PL_UIC                    1298-1299   ///
      byte   PL_UR_CAT4                1300-1301   ///
      byte   POA_Disch_Edit1           1302-1303   ///
      byte   POA_Disch_Edit2           1304-1305   ///
      byte   POA_Hosp_Edit1            1306-1307   ///
      byte   POA_Hosp_Edit2            1308-1309   ///
      byte   POA_Hosp_Edit3            1310-1311   ///
      double POA_Hosp_Edit3_Value      1312-1319   ///
      str    PointOfOrigin_X           1320        ///
      str    PointOfOriginUB04         1321        ///
      long   PRDAY1                    1322-1326   ///
      long   PRDAY2                    1327-1331   ///
      long   PRDAY3                    1332-1336   ///
      long   PRDAY4                    1337-1341   ///
      long   PRDAY5                    1342-1346   ///
      long   PRDAY6                    1347-1351   ///
      long   PRDAY7                    1352-1356   ///
      long   PRDAY8                    1357-1361   ///
      long   PRDAY9                    1362-1366   ///
      long   PRDAY10                   1367-1371   ///
      long   PRDAY11                   1372-1376   ///
      long   PRDAY12                   1377-1381   ///
      long   PRDAY13                   1382-1386   ///
      long   PRDAY14                   1387-1391   ///
      long   PRDAY15                   1392-1396   ///
      long   PRDAY16                   1397-1401   ///
      long   PRDAY17                   1402-1406   ///
      long   PRDAY18                   1407-1411   ///
      long   PRDAY19                   1412-1416   ///
      long   PRDAY20                   1417-1421   ///
      long   PRDAY21                   1422-1426   ///
      long   PRDAY22                   1427-1431   ///
      long   PRDAY23                   1432-1436   ///
      long   PRDAY24                   1437-1441   ///
      long   PRDAY25                   1442-1446   ///
      long   PRDAY26                   1447-1451   ///
      long   PRDAY27                   1452-1456   ///
      long   PRDAY28                   1457-1461   ///
      long   PRDAY29                   1462-1466   ///
      long   PRDAY30                   1467-1471   ///
      long   PRDAY31                   1472-1476   ///
      long   PRDAY32                   1477-1481   ///
      long   PRDAY33                   1482-1486   ///
      long   PRDAY34                   1487-1491   ///
      long   PRDAY35                   1492-1496   ///
      long   PRDAY36                   1497-1501   ///
      long   PRDAY37                   1502-1506   ///
      long   PRDAY38                   1507-1511   ///
      long   PRDAY39                   1512-1516   ///
      long   PRDAY40                   1517-1521   ///
      long   PRDAY41                   1522-1526   ///
      long   PRDAY42                   1527-1531   ///
      str    PrimLang                  1532-1534   ///
      str    PSTATE                    1535-1536   ///
      str    PSTATE_GEO                1537-1538   ///
      long   PSTCO                     1539-1543   ///
      long   PSTCO_GEO                 1544-1548   ///
      byte   RACE                      1549-1550   ///
      float  RACE_PCT_MISS_HOSP        1551-1557   ///
      str    RACE_X                    1558-1561   ///
      double TOTCHG                    1562-1571   ///
      double TOTCHG_X                  1572-1586   ///
      byte   TRAN_IN                   1587-1588   ///
      byte   TRAN_OUT                  1589-1590   ///
      long   VisitLink                 1591-1599   ///
      int    YEAR                      1600-1603   ///
      str    ZIP                       1604-1608   ///
      str    ZIP3                      1609-1611   ///
      int    ZIPINC_QRTL               1612-1614   ///
      int    AYEAR                     1615-1618   ///
      byte   BMONTH                    1619-1620   ///
      int    BYEAR                     1621-1624   ///
      byte   PRMONTH1                  1625-1626   ///
      byte   PRMONTH2                  1627-1628   ///
      byte   PRMONTH3                  1629-1630   ///
      byte   PRMONTH4                  1631-1632   ///
      byte   PRMONTH5                  1633-1634   ///
      byte   PRMONTH6                  1635-1636   ///
      byte   PRMONTH7                  1637-1638   ///
      byte   PRMONTH8                  1639-1640   ///
      byte   PRMONTH9                  1641-1642   ///
      byte   PRMONTH10                 1643-1644   ///
      byte   PRMONTH11                 1645-1646   ///
      byte   PRMONTH12                 1647-1648   ///
      byte   PRMONTH13                 1649-1650   ///
      byte   PRMONTH14                 1651-1652   ///
      byte   PRMONTH15                 1653-1654   ///
      byte   PRMONTH16                 1655-1656   ///
      byte   PRMONTH17                 1657-1658   ///
      byte   PRMONTH18                 1659-1660   ///
      byte   PRMONTH19                 1661-1662   ///
      byte   PRMONTH20                 1663-1664   ///
      byte   PRMONTH21                 1665-1666   ///
      byte   PRMONTH22                 1667-1668   ///
      byte   PRMONTH23                 1669-1670   ///
      byte   PRMONTH24                 1671-1672   ///
      byte   PRMONTH25                 1673-1674   ///
      byte   PRMONTH26                 1675-1676   ///
      byte   PRMONTH27                 1677-1678   ///
      byte   PRMONTH28                 1679-1680   ///
      byte   PRMONTH29                 1681-1682   ///
      byte   PRMONTH30                 1683-1684   ///
      byte   PRMONTH31                 1685-1686   ///
      byte   PRMONTH32                 1687-1688   ///
      byte   PRMONTH33                 1689-1690   ///
      byte   PRMONTH34                 1691-1692   ///
      byte   PRMONTH35                 1693-1694   ///
      byte   PRMONTH36                 1695-1696   ///
      byte   PRMONTH37                 1697-1698   ///
      byte   PRMONTH38                 1699-1700   ///
      byte   PRMONTH39                 1701-1702   ///
      byte   PRMONTH40                 1703-1704   ///
      byte   PRMONTH41                 1705-1706   ///
      byte   PRMONTH42                 1707-1708   ///
      int    PRYEAR1                   1709-1712   ///
      int    PRYEAR2                   1713-1716   ///
      int    PRYEAR3                   1717-1720   ///
      int    PRYEAR4                   1721-1724   ///
      int    PRYEAR5                   1725-1728   ///
      int    PRYEAR6                   1729-1732   ///
      int    PRYEAR7                   1733-1736   ///
      int    PRYEAR8                   1737-1740   ///
      int    PRYEAR9                   1741-1744   ///
      int    PRYEAR10                  1745-1748   ///
      int    PRYEAR11                  1749-1752   ///
      int    PRYEAR12                  1753-1756   ///
      int    PRYEAR13                  1757-1760   ///
      int    PRYEAR14                  1761-1764   ///
      int    PRYEAR15                  1765-1768   ///
      int    PRYEAR16                  1769-1772   ///
      int    PRYEAR17                  1773-1776   ///
      int    PRYEAR18                  1777-1780   ///
      int    PRYEAR19                  1781-1784   ///
      int    PRYEAR20                  1785-1788   ///
      int    PRYEAR21                  1789-1792   ///
      int    PRYEAR22                  1793-1796   ///
      int    PRYEAR23                  1797-1800   ///
      int    PRYEAR24                  1801-1804   ///
      int    PRYEAR25                  1805-1808   ///
      int    PRYEAR26                  1809-1812   ///
      int    PRYEAR27                  1813-1816   ///
      int    PRYEAR28                  1817-1820   ///
      int    PRYEAR29                  1821-1824   ///
      int    PRYEAR30                  1825-1828   ///
      int    PRYEAR31                  1829-1832   ///
      int    PRYEAR32                  1833-1836   ///
      int    PRYEAR33                  1837-1840   ///
      int    PRYEAR34                  1841-1844   ///
      int    PRYEAR35                  1845-1848   ///
      int    PRYEAR36                  1849-1852   ///
      int    PRYEAR37                  1853-1856   ///
      int    PRYEAR38                  1857-1860   ///
      int    PRYEAR39                  1861-1864   ///
      int    PRYEAR40                  1865-1868   ///
      int    PRYEAR41                  1869-1872   ///
      int    PRYEAR42                  1873-1876   ///
      using  "IA_SID_2020_CORE.ASC"

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
label var DXPOA65                  "Diagnosis 65, present on admission indicator"
label var DXPOA66                  "Diagnosis 66, present on admission indicator"
label var DXPOA67                  "Diagnosis 67, present on admission indicator"
label var DXPOA68                  "Diagnosis 68, present on admission indicator"
label var DXPOA69                  "Diagnosis 69, present on admission indicator"
label var DXPOA70                  "Diagnosis 70, present on admission indicator"
label var DXPOA71                  "Diagnosis 71, present on admission indicator"
label var DXPOA72                  "Diagnosis 72, present on admission indicator"
label var DXPOA73                  "Diagnosis 73, present on admission indicator"
label var DXPOA74                  "Diagnosis 74, present on admission indicator"
label var DXPOA75                  "Diagnosis 75, present on admission indicator"
label var DXPOA76                  "Diagnosis 76, present on admission indicator"
label var DXPOA77                  "Diagnosis 77, present on admission indicator"
label var DXPOA78                  "Diagnosis 78, present on admission indicator"
label var DXPOA79                  "Diagnosis 79, present on admission indicator"
label var DXPOA80                  "Diagnosis 80, present on admission indicator"
label var DXPOA81                  "Diagnosis 81, present on admission indicator"
label var DXPOA82                  "Diagnosis 82, present on admission indicator"
label var DXPOA83                  "Diagnosis 83, present on admission indicator"
label var DXPOA84                  "Diagnosis 84, present on admission indicator"
label var DXPOA85                  "Diagnosis 85, present on admission indicator"
label var DXPOA86                  "Diagnosis 86, present on admission indicator"
label var DXPOA87                  "Diagnosis 87, present on admission indicator"
label var DXPOA88                  "Diagnosis 88, present on admission indicator"
label var DXPOA89                  "Diagnosis 89, present on admission indicator"
label var DXPOA90                  "Diagnosis 90, present on admission indicator"
label var DXPOA91                  "Diagnosis 91, present on admission indicator"
label var DXPOA92                  "Diagnosis 92, present on admission indicator"
label var DXPOA93                  "Diagnosis 93, present on admission indicator"
label var DXPOA94                  "Diagnosis 94, present on admission indicator"
label var DXPOA95                  "Diagnosis 95, present on admission indicator"
label var DXPOA96                  "Diagnosis 96, present on admission indicator"
label var DXPOA97                  "Diagnosis 97, present on admission indicator"
label var DXPOA98                  "Diagnosis 98, present on admission indicator"
label var DXPOA99                  "Diagnosis 99, present on admission indicator"
label var DXPOA100                 "Diagnosis 100, present on admission indicator"
label var DXPOA101                 "Diagnosis 101, present on admission indicator"
label var DXPOA102                 "Diagnosis 102, present on admission indicator"
label var DXPOA103                 "Diagnosis 103, present on admission indicator"
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
label var I10_DX61                 "ICD-10-CM Diagnosis 61"
label var I10_DX62                 "ICD-10-CM Diagnosis 62"
label var I10_DX63                 "ICD-10-CM Diagnosis 63"
label var I10_DX64                 "ICD-10-CM Diagnosis 64"
label var I10_DX65                 "ICD-10-CM Diagnosis 65"
label var I10_DX66                 "ICD-10-CM Diagnosis 66"
label var I10_DX67                 "ICD-10-CM Diagnosis 67"
label var I10_DX68                 "ICD-10-CM Diagnosis 68"
label var I10_DX69                 "ICD-10-CM Diagnosis 69"
label var I10_DX70                 "ICD-10-CM Diagnosis 70"
label var I10_DX71                 "ICD-10-CM Diagnosis 71"
label var I10_DX72                 "ICD-10-CM Diagnosis 72"
label var I10_DX73                 "ICD-10-CM Diagnosis 73"
label var I10_DX74                 "ICD-10-CM Diagnosis 74"
label var I10_DX75                 "ICD-10-CM Diagnosis 75"
label var I10_DX76                 "ICD-10-CM Diagnosis 76"
label var I10_DX77                 "ICD-10-CM Diagnosis 77"
label var I10_DX78                 "ICD-10-CM Diagnosis 78"
label var I10_DX79                 "ICD-10-CM Diagnosis 79"
label var I10_DX80                 "ICD-10-CM Diagnosis 80"
label var I10_DX81                 "ICD-10-CM Diagnosis 81"
label var I10_DX82                 "ICD-10-CM Diagnosis 82"
label var I10_DX83                 "ICD-10-CM Diagnosis 83"
label var I10_DX84                 "ICD-10-CM Diagnosis 84"
label var I10_DX85                 "ICD-10-CM Diagnosis 85"
label var I10_DX86                 "ICD-10-CM Diagnosis 86"
label var I10_DX87                 "ICD-10-CM Diagnosis 87"
label var I10_DX88                 "ICD-10-CM Diagnosis 88"
label var I10_DX89                 "ICD-10-CM Diagnosis 89"
label var I10_DX90                 "ICD-10-CM Diagnosis 90"
label var I10_DX91                 "ICD-10-CM Diagnosis 91"
label var I10_DX92                 "ICD-10-CM Diagnosis 92"
label var I10_DX93                 "ICD-10-CM Diagnosis 93"
label var I10_DX94                 "ICD-10-CM Diagnosis 94"
label var I10_DX95                 "ICD-10-CM Diagnosis 95"
label var I10_DX96                 "ICD-10-CM Diagnosis 96"
label var I10_DX97                 "ICD-10-CM Diagnosis 97"
label var I10_DX98                 "ICD-10-CM Diagnosis 98"
label var I10_DX99                 "ICD-10-CM Diagnosis 99"
label var I10_DX100                "ICD-10-CM Diagnosis 100"
label var I10_DX101                "ICD-10-CM Diagnosis 101"
label var I10_DX102                "ICD-10-CM Diagnosis 102"
label var I10_DX103                "ICD-10-CM Diagnosis 103"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
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
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
recode PAY3                      (-9 -8 -6 -5=.)
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

save "IA_SID_2020_CORE.dta", replace
