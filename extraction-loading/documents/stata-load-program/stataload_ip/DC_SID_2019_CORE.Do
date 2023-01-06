/*****************************************************************************
* Creation Date: 04/20/2021   
* DC_SID_2019_CORE.Do
* This program will load the 2019 DC ASCII CORE File into Stata.
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
      str    BILLTYPE                    20-  23   ///
      int    BWT                         24-  27   ///
      int    DHOUR                       28-  31   ///
      byte   DIED                        32-  33   ///
      byte   DISPUB04                    34-  35   ///
      byte   DISPUNIFORM                 36-  37   ///
      str    DISP_X                      38-  39   ///
      byte   DMONTH                      40-  41   ///
      byte   DQTR                        42-  43   ///
      int    DRG                         44-  46   ///
      byte   DRGVER                      47-  48   ///
      int    DRG_NoPOA                   49-  51   ///
      str    DXPOA1                      52        ///
      str    DXPOA2                      53        ///
      str    DXPOA3                      54        ///
      str    DXPOA4                      55        ///
      str    DXPOA5                      56        ///
      str    DXPOA6                      57        ///
      str    DXPOA7                      58        ///
      str    DXPOA8                      59        ///
      str    DXPOA9                      60        ///
      str    DXPOA10                     61        ///
      str    DXPOA11                     62        ///
      str    DXPOA12                     63        ///
      str    DXPOA13                     64        ///
      str    DXPOA14                     65        ///
      str    DXPOA15                     66        ///
      str    DXPOA16                     67        ///
      str    DXPOA17                     68        ///
      str    DXPOA18                     69        ///
      str    DXPOA19                     70        ///
      str    DXPOA20                     71        ///
      str    DXPOA21                     72        ///
      str    DXPOA22                     73        ///
      str    DXPOA23                     74        ///
      str    DXPOA24                     75        ///
      str    DXPOA25                     76        ///
      str    DXPOA26                     77        ///
      str    DXPOA27                     78        ///
      str    DXPOA28                     79        ///
      str    DXPOA29                     80        ///
      str    DXPOA30                     81        ///
      str    DXPOA31                     82        ///
      str    DXPOA32                     83        ///
      str    DXPOA33                     84        ///
      str    DXPOA34                     85        ///
      str    DXPOA35                     86        ///
      str    DXPOA36                     87        ///
      str    DXPOA37                     88        ///
      str    DXPOA38                     89        ///
      str    DXPOA39                     90        ///
      str    DXPOA40                     91        ///
      str    DXPOA41                     92        ///
      str    DXPOA42                     93        ///
      str    DXPOA43                     94        ///
      str    DXPOA44                     95        ///
      str    DXPOA45                     96        ///
      str    DXPOA46                     97        ///
      str    DXPOA47                     98        ///
      str    DXPOA48                     99        ///
      str    DXPOA49                    100        ///
      str    DXPOA50                    101        ///
      str    DXPOA51                    102        ///
      str    DXPOA52                    103        ///
      str    DXPOA53                    104        ///
      str    DXPOA54                    105        ///
      str    DXPOA55                    106        ///
      str    DXPOA56                    107        ///
      str    DXPOA57                    108        ///
      str    DXPOA58                    109        ///
      str    DXPOA59                    110        ///
      str    DXPOA60                    111        ///
      str    DXPOA61                    112        ///
      str    DXPOA62                    113        ///
      str    DXPOA63                    114        ///
      str    DXPOA64                    115        ///
      str    DXPOA65                    116        ///
      str    DXPOA66                    117        ///
      str    DXPOA67                    118        ///
      str    DXPOA68                    119        ///
      str    DXPOA69                    120        ///
      str    DXPOA70                    121        ///
      str    DXPOA71                    122        ///
      str    DXPOA72                    123        ///
      str    DXPOA73                    124        ///
      str    DXPOA74                    125        ///
      str    DXPOA75                    126        ///
      str    DXPOA76                    127        ///
      str    DXPOA77                    128        ///
      str    DXPOA78                    129        ///
      str    DXPOA79                    130        ///
      str    DXPOA80                    131        ///
      str    DXPOA81                    132        ///
      str    DXPOA82                    133        ///
      str    DXPOA83                    134        ///
      str    DXPOA84                    135        ///
      str    DXPOA85                    136        ///
      str    DXPOA86                    137        ///
      str    DXPOA87                    138        ///
      str    DXPOA88                    139        ///
      str    DXPOA89                    140        ///
      str    DXPOA90                    141        ///
      str    DXPOA91                    142        ///
      str    DXPOA92                    143        ///
      str    DXPOA93                    144        ///
      str    DXPOA94                    145        ///
      str    DXPOA95                    146        ///
      str    DXPOA96                    147        ///
      str    DXPOA97                    148        ///
      str    DXPOA98                    149        ///
      str    DXPOA99                    150        ///
      byte   FEMALE                     151- 152   ///
      byte   HCUP_ED                    153- 154   ///
      byte   HCUP_OS                    155- 156   ///
      str    HOSPST                     157- 158   ///
      byte   I10_BIRTH                  159- 160   ///
      byte   I10_DELIVERY               161- 162   ///
      str    I10_DX1                    163- 169   ///
      str    I10_DX2                    170- 176   ///
      str    I10_DX3                    177- 183   ///
      str    I10_DX4                    184- 190   ///
      str    I10_DX5                    191- 197   ///
      str    I10_DX6                    198- 204   ///
      str    I10_DX7                    205- 211   ///
      str    I10_DX8                    212- 218   ///
      str    I10_DX9                    219- 225   ///
      str    I10_DX10                   226- 232   ///
      str    I10_DX11                   233- 239   ///
      str    I10_DX12                   240- 246   ///
      str    I10_DX13                   247- 253   ///
      str    I10_DX14                   254- 260   ///
      str    I10_DX15                   261- 267   ///
      str    I10_DX16                   268- 274   ///
      str    I10_DX17                   275- 281   ///
      str    I10_DX18                   282- 288   ///
      str    I10_DX19                   289- 295   ///
      str    I10_DX20                   296- 302   ///
      str    I10_DX21                   303- 309   ///
      str    I10_DX22                   310- 316   ///
      str    I10_DX23                   317- 323   ///
      str    I10_DX24                   324- 330   ///
      str    I10_DX25                   331- 337   ///
      str    I10_DX26                   338- 344   ///
      str    I10_DX27                   345- 351   ///
      str    I10_DX28                   352- 358   ///
      str    I10_DX29                   359- 365   ///
      str    I10_DX30                   366- 372   ///
      str    I10_DX31                   373- 379   ///
      str    I10_DX32                   380- 386   ///
      str    I10_DX33                   387- 393   ///
      str    I10_DX34                   394- 400   ///
      str    I10_DX35                   401- 407   ///
      str    I10_DX36                   408- 414   ///
      str    I10_DX37                   415- 421   ///
      str    I10_DX38                   422- 428   ///
      str    I10_DX39                   429- 435   ///
      str    I10_DX40                   436- 442   ///
      str    I10_DX41                   443- 449   ///
      str    I10_DX42                   450- 456   ///
      str    I10_DX43                   457- 463   ///
      str    I10_DX44                   464- 470   ///
      str    I10_DX45                   471- 477   ///
      str    I10_DX46                   478- 484   ///
      str    I10_DX47                   485- 491   ///
      str    I10_DX48                   492- 498   ///
      str    I10_DX49                   499- 505   ///
      str    I10_DX50                   506- 512   ///
      str    I10_DX51                   513- 519   ///
      str    I10_DX52                   520- 526   ///
      str    I10_DX53                   527- 533   ///
      str    I10_DX54                   534- 540   ///
      str    I10_DX55                   541- 547   ///
      str    I10_DX56                   548- 554   ///
      str    I10_DX57                   555- 561   ///
      str    I10_DX58                   562- 568   ///
      str    I10_DX59                   569- 575   ///
      str    I10_DX60                   576- 582   ///
      str    I10_DX61                   583- 589   ///
      str    I10_DX62                   590- 596   ///
      str    I10_DX63                   597- 603   ///
      str    I10_DX64                   604- 610   ///
      str    I10_DX65                   611- 617   ///
      str    I10_DX66                   618- 624   ///
      str    I10_DX67                   625- 631   ///
      str    I10_DX68                   632- 638   ///
      str    I10_DX69                   639- 645   ///
      str    I10_DX70                   646- 652   ///
      str    I10_DX71                   653- 659   ///
      str    I10_DX72                   660- 666   ///
      str    I10_DX73                   667- 673   ///
      str    I10_DX74                   674- 680   ///
      str    I10_DX75                   681- 687   ///
      str    I10_DX76                   688- 694   ///
      str    I10_DX77                   695- 701   ///
      str    I10_DX78                   702- 708   ///
      str    I10_DX79                   709- 715   ///
      str    I10_DX80                   716- 722   ///
      str    I10_DX81                   723- 729   ///
      str    I10_DX82                   730- 736   ///
      str    I10_DX83                   737- 743   ///
      str    I10_DX84                   744- 750   ///
      str    I10_DX85                   751- 757   ///
      str    I10_DX86                   758- 764   ///
      str    I10_DX87                   765- 771   ///
      str    I10_DX88                   772- 778   ///
      str    I10_DX89                   779- 785   ///
      str    I10_DX90                   786- 792   ///
      str    I10_DX91                   793- 799   ///
      str    I10_DX92                   800- 806   ///
      str    I10_DX93                   807- 813   ///
      str    I10_DX94                   814- 820   ///
      str    I10_DX95                   821- 827   ///
      str    I10_DX96                   828- 834   ///
      str    I10_DX97                   835- 841   ///
      str    I10_DX98                   842- 848   ///
      str    I10_DX99                   849- 855   ///
      str    I10_DX_Admitting           856- 862   ///
      int    I10_NDX                    863- 865   ///
      int    I10_NPR                    866- 868   ///
      byte   I10_ORPROC                 869- 870   ///
      str    I10_PR1                    871- 877   ///
      str    I10_PR2                    878- 884   ///
      str    I10_PR3                    885- 891   ///
      str    I10_PR4                    892- 898   ///
      str    I10_PR5                    899- 905   ///
      str    I10_PR6                    906- 912   ///
      str    I10_PR7                    913- 919   ///
      str    I10_PR8                    920- 926   ///
      str    I10_PR9                    927- 933   ///
      str    I10_PR10                   934- 940   ///
      str    I10_PR11                   941- 947   ///
      str    I10_PR12                   948- 954   ///
      str    I10_PR13                   955- 961   ///
      str    I10_PR14                   962- 968   ///
      str    I10_PR15                   969- 975   ///
      str    I10_PR16                   976- 982   ///
      str    I10_PR17                   983- 989   ///
      str    I10_PR18                   990- 996   ///
      str    I10_PR19                   997-1003   ///
      str    I10_PR20                  1004-1010   ///
      str    I10_PR21                  1011-1017   ///
      str    I10_PR22                  1018-1024   ///
      str    I10_PR23                  1025-1031   ///
      str    I10_PR24                  1032-1038   ///
      str    I10_PR25                  1039-1045   ///
      str    I10_PR26                  1046-1052   ///
      str    I10_PR27                  1053-1059   ///
      str    I10_PR28                  1060-1066   ///
      str    I10_PR29                  1067-1073   ///
      str    I10_PR30                  1074-1080   ///
      str    I10_PR31                  1081-1087   ///
      str    I10_PR32                  1088-1094   ///
      str    I10_PR33                  1095-1101   ///
      str    I10_PR34                  1102-1108   ///
      str    I10_PR35                  1109-1115   ///
      str    I10_PR36                  1116-1122   ///
      str    I10_PR37                  1123-1129   ///
      str    I10_PR38                  1130-1136   ///
      str    I10_PR39                  1137-1143   ///
      str    I10_PR40                  1144-1150   ///
      str    I10_PR41                  1151-1157   ///
      str    I10_PR42                  1158-1164   ///
      str    I10_PR43                  1165-1171   ///
      str    I10_PR44                  1172-1178   ///
      str    I10_PR45                  1179-1185   ///
      str    I10_PR46                  1186-1192   ///
      str    I10_PR47                  1193-1199   ///
      str    I10_PR48                  1200-1206   ///
      str    I10_PR49                  1207-1213   ///
      str    I10_PR50                  1214-1220   ///
      str    I10_PR51                  1221-1227   ///
      str    I10_PR52                  1228-1234   ///
      str    I10_PR53                  1235-1241   ///
      str    I10_PR54                  1242-1248   ///
      str    I10_PR55                  1249-1255   ///
      str    I10_PR56                  1256-1262   ///
      str    I10_PR57                  1263-1269   ///
      str    I10_PR58                  1270-1276   ///
      str    I10_PR59                  1277-1283   ///
      str    I10_PR60                  1284-1290   ///
      str    I10_PR61                  1291-1297   ///
      str    I10_PR62                  1298-1304   ///
      str    I10_PR63                  1305-1311   ///
      str    I10_PR64                  1312-1318   ///
      str    I10_PR65                  1319-1325   ///
      str    I10_PR66                  1326-1332   ///
      str    I10_PR67                  1333-1339   ///
      str    I10_PR68                  1340-1346   ///
      str    I10_PR69                  1347-1353   ///
      str    I10_PR70                  1354-1360   ///
      str    I10_PR71                  1361-1367   ///
      str    I10_PR72                  1368-1374   ///
      str    I10_PR73                  1375-1381   ///
      str    I10_PR74                  1382-1388   ///
      str    I10_PR75                  1389-1395   ///
      str    I10_PR76                  1396-1402   ///
      str    I10_PR77                  1403-1409   ///
      str    I10_PR78                  1410-1416   ///
      str    I10_PR79                  1417-1423   ///
      str    I10_PR80                  1424-1430   ///
      str    I10_PR81                  1431-1437   ///
      str    I10_PR82                  1438-1444   ///
      str    I10_PR83                  1445-1451   ///
      str    I10_PR84                  1452-1458   ///
      str    I10_PR85                  1459-1465   ///
      str    I10_PR86                  1466-1472   ///
      str    I10_PR87                  1473-1479   ///
      str    I10_PR88                  1480-1486   ///
      str    I10_PR89                  1487-1493   ///
      str    I10_PR90                  1494-1500   ///
      str    I10_PR91                  1501-1507   ///
      str    I10_PR92                  1508-1514   ///
      str    I10_PR93                  1515-1521   ///
      str    I10_PR94                  1522-1528   ///
      str    I10_PR95                  1529-1535   ///
      str    I10_PR96                  1536-1542   ///
      str    I10_PR97                  1543-1549   ///
      str    I10_PR98                  1550-1556   ///
      str    I10_PR99                  1557-1563   ///
      str    I10_PR100                 1564-1570   ///
      int    I10_PROCTYPE              1571-1573   ///
      byte   I10_SERVICELINE           1574-1575   ///
      double KEY                       1576-1590   ///
      long   LOS                       1591-1595   ///
      long   LOS_X                     1596-1601   ///
      byte   MDC                       1602-1603   ///
      byte   MDC_NoPOA                 1604-1605   ///
      long   MDNUM1_R                  1606-1614   ///
      long   MDNUM2_R                  1615-1623   ///
      long   MDNUM3_R                  1624-1632   ///
      long   MDNUM4_R                  1633-1641   ///
      byte   MEDINCSTQ                 1642-1643   ///
      byte   PAY1                      1644-1645   ///
      str    PAY1_X                    1646-1653   ///
      byte   PAY2                      1654-1655   ///
      str    PAY2_X                    1656-1663   ///
      byte   PAY3                      1664-1665   ///
      str    PAY3_X                    1666-1673   ///
      int    PL_CBSA                   1674-1676   ///
      byte   PL_NCHS                   1677-1678   ///
      byte   PL_RUCC                   1679-1680   ///
      byte   PL_UIC                    1681-1682   ///
      byte   PL_UR_CAT4                1683-1684   ///
      byte   POA_Disch_Edit1           1685-1686   ///
      byte   POA_Disch_Edit2           1687-1688   ///
      byte   POA_Hosp_Edit1            1689-1690   ///
      byte   POA_Hosp_Edit2            1691-1692   ///
      byte   POA_Hosp_Edit3            1693-1694   ///
      double POA_Hosp_Edit3_Value      1695-1702   ///
      long   PRDAY1                    1703-1707   ///
      long   PRDAY2                    1708-1712   ///
      long   PRDAY3                    1713-1717   ///
      long   PRDAY4                    1718-1722   ///
      long   PRDAY5                    1723-1727   ///
      long   PRDAY6                    1728-1732   ///
      long   PRDAY7                    1733-1737   ///
      long   PRDAY8                    1738-1742   ///
      long   PRDAY9                    1743-1747   ///
      long   PRDAY10                   1748-1752   ///
      long   PRDAY11                   1753-1757   ///
      long   PRDAY12                   1758-1762   ///
      long   PRDAY13                   1763-1767   ///
      long   PRDAY14                   1768-1772   ///
      long   PRDAY15                   1773-1777   ///
      long   PRDAY16                   1778-1782   ///
      long   PRDAY17                   1783-1787   ///
      long   PRDAY18                   1788-1792   ///
      long   PRDAY19                   1793-1797   ///
      long   PRDAY20                   1798-1802   ///
      long   PRDAY21                   1803-1807   ///
      long   PRDAY22                   1808-1812   ///
      long   PRDAY23                   1813-1817   ///
      long   PRDAY24                   1818-1822   ///
      long   PRDAY25                   1823-1827   ///
      long   PRDAY26                   1828-1832   ///
      long   PRDAY27                   1833-1837   ///
      long   PRDAY28                   1838-1842   ///
      long   PRDAY29                   1843-1847   ///
      long   PRDAY30                   1848-1852   ///
      long   PRDAY31                   1853-1857   ///
      long   PRDAY32                   1858-1862   ///
      long   PRDAY33                   1863-1867   ///
      long   PRDAY34                   1868-1872   ///
      long   PRDAY35                   1873-1877   ///
      long   PRDAY36                   1878-1882   ///
      long   PRDAY37                   1883-1887   ///
      long   PRDAY38                   1888-1892   ///
      long   PRDAY39                   1893-1897   ///
      long   PRDAY40                   1898-1902   ///
      long   PRDAY41                   1903-1907   ///
      long   PRDAY42                   1908-1912   ///
      long   PRDAY43                   1913-1917   ///
      long   PRDAY44                   1918-1922   ///
      long   PRDAY45                   1923-1927   ///
      long   PRDAY46                   1928-1932   ///
      long   PRDAY47                   1933-1937   ///
      long   PRDAY48                   1938-1942   ///
      long   PRDAY49                   1943-1947   ///
      long   PRDAY50                   1948-1952   ///
      long   PRDAY51                   1953-1957   ///
      long   PRDAY52                   1958-1962   ///
      long   PRDAY53                   1963-1967   ///
      long   PRDAY54                   1968-1972   ///
      long   PRDAY55                   1973-1977   ///
      long   PRDAY56                   1978-1982   ///
      long   PRDAY57                   1983-1987   ///
      long   PRDAY58                   1988-1992   ///
      long   PRDAY59                   1993-1997   ///
      long   PRDAY60                   1998-2002   ///
      long   PRDAY61                   2003-2007   ///
      long   PRDAY62                   2008-2012   ///
      long   PRDAY63                   2013-2017   ///
      long   PRDAY64                   2018-2022   ///
      long   PRDAY65                   2023-2027   ///
      long   PRDAY66                   2028-2032   ///
      long   PRDAY67                   2033-2037   ///
      long   PRDAY68                   2038-2042   ///
      long   PRDAY69                   2043-2047   ///
      long   PRDAY70                   2048-2052   ///
      long   PRDAY71                   2053-2057   ///
      long   PRDAY72                   2058-2062   ///
      long   PRDAY73                   2063-2067   ///
      long   PRDAY74                   2068-2072   ///
      long   PRDAY75                   2073-2077   ///
      long   PRDAY76                   2078-2082   ///
      long   PRDAY77                   2083-2087   ///
      long   PRDAY78                   2088-2092   ///
      long   PRDAY79                   2093-2097   ///
      long   PRDAY80                   2098-2102   ///
      long   PRDAY81                   2103-2107   ///
      long   PRDAY82                   2108-2112   ///
      long   PRDAY83                   2113-2117   ///
      long   PRDAY84                   2118-2122   ///
      long   PRDAY85                   2123-2127   ///
      long   PRDAY86                   2128-2132   ///
      long   PRDAY87                   2133-2137   ///
      long   PRDAY88                   2138-2142   ///
      long   PRDAY89                   2143-2147   ///
      long   PRDAY90                   2148-2152   ///
      long   PRDAY91                   2153-2157   ///
      long   PRDAY92                   2158-2162   ///
      long   PRDAY93                   2163-2167   ///
      long   PRDAY94                   2168-2172   ///
      long   PRDAY95                   2173-2177   ///
      long   PRDAY96                   2178-2182   ///
      long   PRDAY97                   2183-2187   ///
      long   PRDAY98                   2188-2192   ///
      long   PRDAY99                   2193-2197   ///
      long   PRDAY100                  2198-2202   ///
      str    PSTATE                    2203-2204   ///
      str    PSTATE_GEO                2205-2206   ///
      long   PSTCO                     2207-2211   ///
      long   PSTCO_GEO                 2212-2216   ///
      str    PointOfOriginUB04         2217        ///
      str    PointOfOrigin_X           2218-2220   ///
      byte   RACE                      2221-2222   ///
      byte   RACE_EDIT                 2223-2224   ///
      str    RACE_X                    2225-2227   ///
      double TOTCHG                    2228-2237   ///
      double TOTCHG_X                  2238-2252   ///
      byte   TRAN_IN                   2253-2254   ///
      byte   TRAN_OUT                  2255-2256   ///
      int    YEAR                      2257-2260   ///
      str    ZIP                       2261-2265   ///
      str    ZIP3                      2266-2268   ///
      int    ZIPINC_QRTL               2269-2271   ///
      long   HOSPID                    2272-2276   ///
      int    AYEAR                     2277-2280   ///
      byte   BMONTH                    2281-2282   ///
      int    BYEAR                     2283-2286   ///
      using  "DC_SID_2019_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var BWT                      "Birth weight in grams"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRGVER                   "DRG grouper version used on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HOSPST                   "Hospital state postal code"
label var I10_BIRTH                "ICD-10-CM Birth Indicator"
label var I10_DELIVERY             "ICD-10-CM Delivery Indicator"
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
label var I10_DX_Admitting         "ICD-10-CM Admitting Diagnosis Code"
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
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
label var I10_PR61                 "ICD-10-PCS Procedure 61"
label var I10_PR62                 "ICD-10-PCS Procedure 62"
label var I10_PR63                 "ICD-10-PCS Procedure 63"
label var I10_PR64                 "ICD-10-PCS Procedure 64"
label var I10_PR65                 "ICD-10-PCS Procedure 65"
label var I10_PR66                 "ICD-10-PCS Procedure 66"
label var I10_PR67                 "ICD-10-PCS Procedure 67"
label var I10_PR68                 "ICD-10-PCS Procedure 68"
label var I10_PR69                 "ICD-10-PCS Procedure 69"
label var I10_PR70                 "ICD-10-PCS Procedure 70"
label var I10_PR71                 "ICD-10-PCS Procedure 71"
label var I10_PR72                 "ICD-10-PCS Procedure 72"
label var I10_PR73                 "ICD-10-PCS Procedure 73"
label var I10_PR74                 "ICD-10-PCS Procedure 74"
label var I10_PR75                 "ICD-10-PCS Procedure 75"
label var I10_PR76                 "ICD-10-PCS Procedure 76"
label var I10_PR77                 "ICD-10-PCS Procedure 77"
label var I10_PR78                 "ICD-10-PCS Procedure 78"
label var I10_PR79                 "ICD-10-PCS Procedure 79"
label var I10_PR80                 "ICD-10-PCS Procedure 80"
label var I10_PR81                 "ICD-10-PCS Procedure 81"
label var I10_PR82                 "ICD-10-PCS Procedure 82"
label var I10_PR83                 "ICD-10-PCS Procedure 83"
label var I10_PR84                 "ICD-10-PCS Procedure 84"
label var I10_PR85                 "ICD-10-PCS Procedure 85"
label var I10_PR86                 "ICD-10-PCS Procedure 86"
label var I10_PR87                 "ICD-10-PCS Procedure 87"
label var I10_PR88                 "ICD-10-PCS Procedure 88"
label var I10_PR89                 "ICD-10-PCS Procedure 89"
label var I10_PR90                 "ICD-10-PCS Procedure 90"
label var I10_PR91                 "ICD-10-PCS Procedure 91"
label var I10_PR92                 "ICD-10-PCS Procedure 92"
label var I10_PR93                 "ICD-10-PCS Procedure 93"
label var I10_PR94                 "ICD-10-PCS Procedure 94"
label var I10_PR95                 "ICD-10-PCS Procedure 95"
label var I10_PR96                 "ICD-10-PCS Procedure 96"
label var I10_PR97                 "ICD-10-PCS Procedure 97"
label var I10_PR98                 "ICD-10-PCS Procedure 98"
label var I10_PR99                 "ICD-10-PCS Procedure 99"
label var I10_PR100                "ICD-10-PCS Procedure 100"
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
label var MDNUM4_R                 "Physician 4 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
label var PAY3                     "Tertiary expected payer (uniform)"
label var PAY3_X                   "Tertiary expected payer (as received from source)"
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
label var PRDAY61                  "Number of days from admission to I10_PR61"
label var PRDAY62                  "Number of days from admission to I10_PR62"
label var PRDAY63                  "Number of days from admission to I10_PR63"
label var PRDAY64                  "Number of days from admission to I10_PR64"
label var PRDAY65                  "Number of days from admission to I10_PR65"
label var PRDAY66                  "Number of days from admission to I10_PR66"
label var PRDAY67                  "Number of days from admission to I10_PR67"
label var PRDAY68                  "Number of days from admission to I10_PR68"
label var PRDAY69                  "Number of days from admission to I10_PR69"
label var PRDAY70                  "Number of days from admission to I10_PR70"
label var PRDAY71                  "Number of days from admission to I10_PR71"
label var PRDAY72                  "Number of days from admission to I10_PR72"
label var PRDAY73                  "Number of days from admission to I10_PR73"
label var PRDAY74                  "Number of days from admission to I10_PR74"
label var PRDAY75                  "Number of days from admission to I10_PR75"
label var PRDAY76                  "Number of days from admission to I10_PR76"
label var PRDAY77                  "Number of days from admission to I10_PR77"
label var PRDAY78                  "Number of days from admission to I10_PR78"
label var PRDAY79                  "Number of days from admission to I10_PR79"
label var PRDAY80                  "Number of days from admission to I10_PR80"
label var PRDAY81                  "Number of days from admission to I10_PR81"
label var PRDAY82                  "Number of days from admission to I10_PR82"
label var PRDAY83                  "Number of days from admission to I10_PR83"
label var PRDAY84                  "Number of days from admission to I10_PR84"
label var PRDAY85                  "Number of days from admission to I10_PR85"
label var PRDAY86                  "Number of days from admission to I10_PR86"
label var PRDAY87                  "Number of days from admission to I10_PR87"
label var PRDAY88                  "Number of days from admission to I10_PR88"
label var PRDAY89                  "Number of days from admission to I10_PR89"
label var PRDAY90                  "Number of days from admission to I10_PR90"
label var PRDAY91                  "Number of days from admission to I10_PR91"
label var PRDAY92                  "Number of days from admission to I10_PR92"
label var PRDAY93                  "Number of days from admission to I10_PR93"
label var PRDAY94                  "Number of days from admission to I10_PR94"
label var PRDAY95                  "Number of days from admission to I10_PR95"
label var PRDAY96                  "Number of days from admission to I10_PR96"
label var PRDAY97                  "Number of days from admission to I10_PR97"
label var PRDAY98                  "Number of days from admission to I10_PR98"
label var PRDAY99                  "Number of days from admission to I10_PR99"
label var PRDAY100                 "Number of days from admission to I10_PR100"
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var RACE                     "Race (uniform)"
label var RACE_EDIT                "Race Edit Checks"
label var RACE_X                   "Race (as received from source)"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var HOSPID                   "HCUP hospital identification number"
label var AYEAR                    "Admission year"
label var BMONTH                   "Birth month"
label var BYEAR                    "Birth year"

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
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode I10_BIRTH                 (-9 -8 -6 -5=.)
recode I10_DELIVERY              (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_ORPROC                (-9 -8 -6 -5=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode I10_SERVICELINE           (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM4_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
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
recode PRDAY61                   (-9999 -8888 -6666=.)
recode PRDAY62                   (-9999 -8888 -6666=.)
recode PRDAY63                   (-9999 -8888 -6666=.)
recode PRDAY64                   (-9999 -8888 -6666=.)
recode PRDAY65                   (-9999 -8888 -6666=.)
recode PRDAY66                   (-9999 -8888 -6666=.)
recode PRDAY67                   (-9999 -8888 -6666=.)
recode PRDAY68                   (-9999 -8888 -6666=.)
recode PRDAY69                   (-9999 -8888 -6666=.)
recode PRDAY70                   (-9999 -8888 -6666=.)
recode PRDAY71                   (-9999 -8888 -6666=.)
recode PRDAY72                   (-9999 -8888 -6666=.)
recode PRDAY73                   (-9999 -8888 -6666=.)
recode PRDAY74                   (-9999 -8888 -6666=.)
recode PRDAY75                   (-9999 -8888 -6666=.)
recode PRDAY76                   (-9999 -8888 -6666=.)
recode PRDAY77                   (-9999 -8888 -6666=.)
recode PRDAY78                   (-9999 -8888 -6666=.)
recode PRDAY79                   (-9999 -8888 -6666=.)
recode PRDAY80                   (-9999 -8888 -6666=.)
recode PRDAY81                   (-9999 -8888 -6666=.)
recode PRDAY82                   (-9999 -8888 -6666=.)
recode PRDAY83                   (-9999 -8888 -6666=.)
recode PRDAY84                   (-9999 -8888 -6666=.)
recode PRDAY85                   (-9999 -8888 -6666=.)
recode PRDAY86                   (-9999 -8888 -6666=.)
recode PRDAY87                   (-9999 -8888 -6666=.)
recode PRDAY88                   (-9999 -8888 -6666=.)
recode PRDAY89                   (-9999 -8888 -6666=.)
recode PRDAY90                   (-9999 -8888 -6666=.)
recode PRDAY91                   (-9999 -8888 -6666=.)
recode PRDAY92                   (-9999 -8888 -6666=.)
recode PRDAY93                   (-9999 -8888 -6666=.)
recode PRDAY94                   (-9999 -8888 -6666=.)
recode PRDAY95                   (-9999 -8888 -6666=.)
recode PRDAY96                   (-9999 -8888 -6666=.)
recode PRDAY97                   (-9999 -8888 -6666=.)
recode PRDAY98                   (-9999 -8888 -6666=.)
recode PRDAY99                   (-9999 -8888 -6666=.)
recode PRDAY100                  (-9999 -8888 -6666=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_EDIT                 (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)
recode BMONTH                    (-9 -8 -6 -5=.)
recode BYEAR                     (-999 -888 -666=.)

save "DC_SID_2019_CORE.dta", replace
