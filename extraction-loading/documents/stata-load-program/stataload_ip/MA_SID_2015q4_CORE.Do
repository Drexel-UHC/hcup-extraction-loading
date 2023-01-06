/*****************************************************************************
* Creation Date: 01/09/2018   
* MA_SID_2015q4_CORE.Do
* This program will load the 2015 MA ASCII CORE File into Stata.
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
      int    AGEMONTH                    11-  13   ///
      byte   AMDC                        14-  15   ///
      byte   AMONTH                      16-  17   ///
      byte   ASOURCE                     18-  19   ///
      str    ASOURCE_X                   20        ///
      str    ASOURCEUB92                 21        ///
      byte   ATYPE                       22-  23   ///
      byte   AWEEKEND                    24-  25   ///
      int    BWT                         26-  29   ///
      int    DaysBetweenVisits           30-  33   ///
      long   DaysToEvent                 34-  39   ///
      byte   DIED                        40-  41   ///
      str    DISP_X                      42-  43   ///
      byte   DISPUB04                    44-  45   ///
      byte   DISPUNIFORM                 46-  47   ///
      byte   DMONTH                      48-  49   ///
      byte   DNR                         50-  51   ///
      byte   DQTR                        52-  53   ///
      int    DRG                         54-  56   ///
      int    DRG_NoPOA                   57-  59   ///
      int    DRG32                       60-  62   ///
      byte   DRGVER                      63-  64   ///
      str    DSHOSPID                    65-  81   ///
      str    DXPOA1                      82        ///
      str    DXPOA2                      83        ///
      str    DXPOA3                      84        ///
      str    DXPOA4                      85        ///
      str    DXPOA5                      86        ///
      str    DXPOA6                      87        ///
      str    DXPOA7                      88        ///
      str    DXPOA8                      89        ///
      str    DXPOA9                      90        ///
      str    DXPOA10                     91        ///
      str    DXPOA11                     92        ///
      str    DXPOA12                     93        ///
      str    DXPOA13                     94        ///
      str    DXPOA14                     95        ///
      str    DXPOA15                     96        ///
      str    DXPOA16                     97        ///
      str    DXPOA17                     98        ///
      str    DXPOA18                     99        ///
      str    DXPOA19                    100        ///
      str    DXPOA20                    101        ///
      str    DXPOA21                    102        ///
      str    DXPOA22                    103        ///
      str    DXPOA23                    104        ///
      str    DXPOA24                    105        ///
      str    DXPOA25                    106        ///
      str    DXPOA26                    107        ///
      str    DXPOA27                    108        ///
      str    DXPOA28                    109        ///
      str    DXPOA29                    110        ///
      str    DXPOA30                    111        ///
      str    DXPOA31                    112        ///
      str    DXPOA32                    113        ///
      str    DXPOA33                    114        ///
      str    DXPOA34                    115        ///
      str    DXPOA35                    116        ///
      str    DXPOA36                    117        ///
      str    DXPOA37                    118        ///
      str    DXPOA38                    119        ///
      str    DXPOA39                    120        ///
      str    DXPOA40                    121        ///
      str    DXPOA41                    122        ///
      str    DXPOA42                    123        ///
      str    DXPOA43                    124        ///
      str    DXPOA44                    125        ///
      str    DXPOA45                    126        ///
      str    DXPOA46                    127        ///
      str    DXPOA47                    128        ///
      str    DXPOA48                    129        ///
      str    DXPOA49                    130        ///
      str    DXPOA50                    131        ///
      str    DXPOA51                    132        ///
      str    DXPOA52                    133        ///
      str    DXPOA53                    134        ///
      str    DXPOA54                    135        ///
      str    DXPOA55                    136        ///
      str    DXPOA56                    137        ///
      str    DXPOA57                    138        ///
      str    DXPOA58                    139        ///
      str    DXPOA59                    140        ///
      str    DXPOA60                    141        ///
      str    DXPOA61                    142        ///
      str    DXPOA62                    143        ///
      str    DXPOA63                    144        ///
      str    DXPOA64                    145        ///
      str    DXPOA65                    146        ///
      str    DXPOA66                    147        ///
      str    DXPOA67                    148        ///
      str    DXPOA68                    149        ///
      str    DXPOA69                    150        ///
      str    DXPOA70                    151        ///
      str    DXPOA71                    152        ///
      int    DXVER                      153- 155   ///
      str    E_POA1                     156        ///
      str    E_POA2                     157        ///
      str    E_POA3                     158        ///
      str    E_POA4                     159        ///
      str    E_POA5                     160        ///
      str    E_POA6                     161        ///
      str    E_POA7                     162        ///
      str    E_POA8                     163        ///
      str    E_POA9                     164        ///
      str    E_POA10                    165        ///
      str    E_POA11                    166        ///
      byte   FEMALE                     167- 168   ///
      byte   HCUP_ED                    169- 170   ///
      byte   HCUP_OS                    171- 172   ///
      byte   HISPANIC                   173- 174   ///
      str    HISPANIC_X                 175- 189   ///
      byte   Homeless                   190- 191   ///
      str    HOSPST                     192- 193   ///
      str    I10_DX_Admitting           194- 200   ///
      str    I10_DX1                    201- 207   ///
      str    I10_DX2                    208- 214   ///
      str    I10_DX3                    215- 221   ///
      str    I10_DX4                    222- 228   ///
      str    I10_DX5                    229- 235   ///
      str    I10_DX6                    236- 242   ///
      str    I10_DX7                    243- 249   ///
      str    I10_DX8                    250- 256   ///
      str    I10_DX9                    257- 263   ///
      str    I10_DX10                   264- 270   ///
      str    I10_DX11                   271- 277   ///
      str    I10_DX12                   278- 284   ///
      str    I10_DX13                   285- 291   ///
      str    I10_DX14                   292- 298   ///
      str    I10_DX15                   299- 305   ///
      str    I10_DX16                   306- 312   ///
      str    I10_DX17                   313- 319   ///
      str    I10_DX18                   320- 326   ///
      str    I10_DX19                   327- 333   ///
      str    I10_DX20                   334- 340   ///
      str    I10_DX21                   341- 347   ///
      str    I10_DX22                   348- 354   ///
      str    I10_DX23                   355- 361   ///
      str    I10_DX24                   362- 368   ///
      str    I10_DX25                   369- 375   ///
      str    I10_DX26                   376- 382   ///
      str    I10_DX27                   383- 389   ///
      str    I10_DX28                   390- 396   ///
      str    I10_DX29                   397- 403   ///
      str    I10_DX30                   404- 410   ///
      str    I10_DX31                   411- 417   ///
      str    I10_DX32                   418- 424   ///
      str    I10_DX33                   425- 431   ///
      str    I10_DX34                   432- 438   ///
      str    I10_DX35                   439- 445   ///
      str    I10_DX36                   446- 452   ///
      str    I10_DX37                   453- 459   ///
      str    I10_DX38                   460- 466   ///
      str    I10_DX39                   467- 473   ///
      str    I10_DX40                   474- 480   ///
      str    I10_DX41                   481- 487   ///
      str    I10_DX42                   488- 494   ///
      str    I10_DX43                   495- 501   ///
      str    I10_DX44                   502- 508   ///
      str    I10_DX45                   509- 515   ///
      str    I10_DX46                   516- 522   ///
      str    I10_DX47                   523- 529   ///
      str    I10_DX48                   530- 536   ///
      str    I10_DX49                   537- 543   ///
      str    I10_DX50                   544- 550   ///
      str    I10_DX51                   551- 557   ///
      str    I10_DX52                   558- 564   ///
      str    I10_DX53                   565- 571   ///
      str    I10_DX54                   572- 578   ///
      str    I10_DX55                   579- 585   ///
      str    I10_DX56                   586- 592   ///
      str    I10_DX57                   593- 599   ///
      str    I10_DX58                   600- 606   ///
      str    I10_DX59                   607- 613   ///
      str    I10_DX60                   614- 620   ///
      str    I10_DX61                   621- 627   ///
      str    I10_DX62                   628- 634   ///
      str    I10_DX63                   635- 641   ///
      str    I10_DX64                   642- 648   ///
      str    I10_DX65                   649- 655   ///
      str    I10_DX66                   656- 662   ///
      str    I10_DX67                   663- 669   ///
      str    I10_DX68                   670- 676   ///
      str    I10_DX69                   677- 683   ///
      str    I10_DX70                   684- 690   ///
      str    I10_DX71                   691- 697   ///
      int    I10_DXCCS1                 698- 701   ///
      int    I10_DXCCS2                 702- 705   ///
      int    I10_DXCCS3                 706- 709   ///
      int    I10_DXCCS4                 710- 713   ///
      int    I10_DXCCS5                 714- 717   ///
      int    I10_DXCCS6                 718- 721   ///
      int    I10_DXCCS7                 722- 725   ///
      int    I10_DXCCS8                 726- 729   ///
      int    I10_DXCCS9                 730- 733   ///
      int    I10_DXCCS10                734- 737   ///
      int    I10_DXCCS11                738- 741   ///
      int    I10_DXCCS12                742- 745   ///
      int    I10_DXCCS13                746- 749   ///
      int    I10_DXCCS14                750- 753   ///
      int    I10_DXCCS15                754- 757   ///
      int    I10_DXCCS16                758- 761   ///
      int    I10_DXCCS17                762- 765   ///
      int    I10_DXCCS18                766- 769   ///
      int    I10_DXCCS19                770- 773   ///
      int    I10_DXCCS20                774- 777   ///
      int    I10_DXCCS21                778- 781   ///
      int    I10_DXCCS22                782- 785   ///
      int    I10_DXCCS23                786- 789   ///
      int    I10_DXCCS24                790- 793   ///
      int    I10_DXCCS25                794- 797   ///
      int    I10_DXCCS26                798- 801   ///
      int    I10_DXCCS27                802- 805   ///
      int    I10_DXCCS28                806- 809   ///
      int    I10_DXCCS29                810- 813   ///
      int    I10_DXCCS30                814- 817   ///
      int    I10_DXCCS31                818- 821   ///
      int    I10_DXCCS32                822- 825   ///
      int    I10_DXCCS33                826- 829   ///
      int    I10_DXCCS34                830- 833   ///
      int    I10_DXCCS35                834- 837   ///
      int    I10_DXCCS36                838- 841   ///
      int    I10_DXCCS37                842- 845   ///
      int    I10_DXCCS38                846- 849   ///
      int    I10_DXCCS39                850- 853   ///
      int    I10_DXCCS40                854- 857   ///
      int    I10_DXCCS41                858- 861   ///
      int    I10_DXCCS42                862- 865   ///
      int    I10_DXCCS43                866- 869   ///
      int    I10_DXCCS44                870- 873   ///
      int    I10_DXCCS45                874- 877   ///
      int    I10_DXCCS46                878- 881   ///
      int    I10_DXCCS47                882- 885   ///
      int    I10_DXCCS48                886- 889   ///
      int    I10_DXCCS49                890- 893   ///
      int    I10_DXCCS50                894- 897   ///
      int    I10_DXCCS51                898- 901   ///
      int    I10_DXCCS52                902- 905   ///
      int    I10_DXCCS53                906- 909   ///
      int    I10_DXCCS54                910- 913   ///
      int    I10_DXCCS55                914- 917   ///
      int    I10_DXCCS56                918- 921   ///
      int    I10_DXCCS57                922- 925   ///
      int    I10_DXCCS58                926- 929   ///
      int    I10_DXCCS59                930- 933   ///
      int    I10_DXCCS60                934- 937   ///
      int    I10_DXCCS61                938- 941   ///
      int    I10_DXCCS62                942- 945   ///
      int    I10_DXCCS63                946- 949   ///
      int    I10_DXCCS64                950- 953   ///
      int    I10_DXCCS65                954- 957   ///
      int    I10_DXCCS66                958- 961   ///
      int    I10_DXCCS67                962- 965   ///
      int    I10_DXCCS68                966- 969   ///
      int    I10_DXCCS69                970- 973   ///
      int    I10_DXCCS70                974- 977   ///
      int    I10_DXCCS71                978- 981   ///
      str    I10_ECAUSE1                982- 988   ///
      str    I10_ECAUSE2                989- 995   ///
      str    I10_ECAUSE3                996-1002   ///
      str    I10_ECAUSE4               1003-1009   ///
      str    I10_ECAUSE5               1010-1016   ///
      str    I10_ECAUSE6               1017-1023   ///
      str    I10_ECAUSE7               1024-1030   ///
      str    I10_ECAUSE8               1031-1037   ///
      str    I10_ECAUSE9               1038-1044   ///
      str    I10_ECAUSE10              1045-1051   ///
      str    I10_ECAUSE11              1052-1058   ///
      int    I10_ECauseCCS1            1059-1062   ///
      int    I10_ECauseCCS2            1063-1066   ///
      int    I10_ECauseCCS3            1067-1070   ///
      int    I10_ECauseCCS4            1071-1074   ///
      int    I10_ECauseCCS5            1075-1078   ///
      int    I10_ECauseCCS6            1079-1082   ///
      int    I10_ECauseCCS7            1083-1086   ///
      int    I10_ECauseCCS8            1087-1090   ///
      int    I10_ECauseCCS9            1091-1094   ///
      int    I10_ECauseCCS10           1095-1098   ///
      int    I10_ECauseCCS11           1099-1102   ///
      int    I10_HOSPBRTH              1103-1105   ///
      int    I10_NCHRONIC              1106-1108   ///
      int    I10_NDX                   1109-1111   ///
      byte   I10_NECAUSE               1112-1113   ///
      byte   I10_NEOMAT                1114-1115   ///
      int    I10_NPR                   1116-1118   ///
      byte   I10_ORPROC                1119-1120   ///
      str    I10_PR1                   1121-1127   ///
      str    I10_PR2                   1128-1134   ///
      str    I10_PR3                   1135-1141   ///
      str    I10_PR4                   1142-1148   ///
      str    I10_PR5                   1149-1155   ///
      str    I10_PR6                   1156-1162   ///
      str    I10_PR7                   1163-1169   ///
      str    I10_PR8                   1170-1176   ///
      str    I10_PR9                   1177-1183   ///
      str    I10_PR10                  1184-1190   ///
      str    I10_PR11                  1191-1197   ///
      str    I10_PR12                  1198-1204   ///
      str    I10_PR13                  1205-1211   ///
      str    I10_PR14                  1212-1218   ///
      str    I10_PR15                  1219-1225   ///
      str    I10_PR16                  1226-1232   ///
      str    I10_PR17                  1233-1239   ///
      str    I10_PR18                  1240-1246   ///
      str    I10_PR19                  1247-1253   ///
      str    I10_PR20                  1254-1260   ///
      str    I10_PR21                  1261-1267   ///
      str    I10_PR22                  1268-1274   ///
      str    I10_PR23                  1275-1281   ///
      str    I10_PR24                  1282-1288   ///
      str    I10_PR25                  1289-1295   ///
      str    I10_PR26                  1296-1302   ///
      str    I10_PR27                  1303-1309   ///
      str    I10_PR28                  1310-1316   ///
      str    I10_PR29                  1317-1323   ///
      str    I10_PR30                  1324-1330   ///
      str    I10_PR31                  1331-1337   ///
      str    I10_PR32                  1338-1344   ///
      str    I10_PR33                  1345-1351   ///
      str    I10_PR34                  1352-1358   ///
      str    I10_PR35                  1359-1365   ///
      str    I10_PR36                  1366-1372   ///
      str    I10_PR37                  1373-1379   ///
      str    I10_PR38                  1380-1386   ///
      str    I10_PR39                  1387-1393   ///
      str    I10_PR40                  1394-1400   ///
      str    I10_PR41                  1401-1407   ///
      str    I10_PR42                  1408-1414   ///
      str    I10_PR43                  1415-1421   ///
      str    I10_PR44                  1422-1428   ///
      str    I10_PR45                  1429-1435   ///
      str    I10_PR46                  1436-1442   ///
      str    I10_PR47                  1443-1449   ///
      str    I10_PR48                  1450-1456   ///
      str    I10_PR49                  1457-1463   ///
      str    I10_PR50                  1464-1470   ///
      str    I10_PR51                  1471-1477   ///
      str    I10_PR52                  1478-1484   ///
      str    I10_PR53                  1485-1491   ///
      str    I10_PR54                  1492-1498   ///
      str    I10_PR55                  1499-1505   ///
      str    I10_PR56                  1506-1512   ///
      str    I10_PR57                  1513-1519   ///
      str    I10_PR58                  1520-1526   ///
      str    I10_PR59                  1527-1533   ///
      str    I10_PR60                  1534-1540   ///
      str    I10_PR61                  1541-1547   ///
      str    I10_PR62                  1548-1554   ///
      str    I10_PR63                  1555-1561   ///
      str    I10_PR64                  1562-1568   ///
      str    I10_PR65                  1569-1575   ///
      str    I10_PR66                  1576-1582   ///
      int    I10_PRCCS1                1583-1585   ///
      int    I10_PRCCS2                1586-1588   ///
      int    I10_PRCCS3                1589-1591   ///
      int    I10_PRCCS4                1592-1594   ///
      int    I10_PRCCS5                1595-1597   ///
      int    I10_PRCCS6                1598-1600   ///
      int    I10_PRCCS7                1601-1603   ///
      int    I10_PRCCS8                1604-1606   ///
      int    I10_PRCCS9                1607-1609   ///
      int    I10_PRCCS10               1610-1612   ///
      int    I10_PRCCS11               1613-1615   ///
      int    I10_PRCCS12               1616-1618   ///
      int    I10_PRCCS13               1619-1621   ///
      int    I10_PRCCS14               1622-1624   ///
      int    I10_PRCCS15               1625-1627   ///
      int    I10_PRCCS16               1628-1630   ///
      int    I10_PRCCS17               1631-1633   ///
      int    I10_PRCCS18               1634-1636   ///
      int    I10_PRCCS19               1637-1639   ///
      int    I10_PRCCS20               1640-1642   ///
      int    I10_PRCCS21               1643-1645   ///
      int    I10_PRCCS22               1646-1648   ///
      int    I10_PRCCS23               1649-1651   ///
      int    I10_PRCCS24               1652-1654   ///
      int    I10_PRCCS25               1655-1657   ///
      int    I10_PRCCS26               1658-1660   ///
      int    I10_PRCCS27               1661-1663   ///
      int    I10_PRCCS28               1664-1666   ///
      int    I10_PRCCS29               1667-1669   ///
      int    I10_PRCCS30               1670-1672   ///
      int    I10_PRCCS31               1673-1675   ///
      int    I10_PRCCS32               1676-1678   ///
      int    I10_PRCCS33               1679-1681   ///
      int    I10_PRCCS34               1682-1684   ///
      int    I10_PRCCS35               1685-1687   ///
      int    I10_PRCCS36               1688-1690   ///
      int    I10_PRCCS37               1691-1693   ///
      int    I10_PRCCS38               1694-1696   ///
      int    I10_PRCCS39               1697-1699   ///
      int    I10_PRCCS40               1700-1702   ///
      int    I10_PRCCS41               1703-1705   ///
      int    I10_PRCCS42               1706-1708   ///
      int    I10_PRCCS43               1709-1711   ///
      int    I10_PRCCS44               1712-1714   ///
      int    I10_PRCCS45               1715-1717   ///
      int    I10_PRCCS46               1718-1720   ///
      int    I10_PRCCS47               1721-1723   ///
      int    I10_PRCCS48               1724-1726   ///
      int    I10_PRCCS49               1727-1729   ///
      int    I10_PRCCS50               1730-1732   ///
      int    I10_PRCCS51               1733-1735   ///
      int    I10_PRCCS52               1736-1738   ///
      int    I10_PRCCS53               1739-1741   ///
      int    I10_PRCCS54               1742-1744   ///
      int    I10_PRCCS55               1745-1747   ///
      int    I10_PRCCS56               1748-1750   ///
      int    I10_PRCCS57               1751-1753   ///
      int    I10_PRCCS58               1754-1756   ///
      int    I10_PRCCS59               1757-1759   ///
      int    I10_PRCCS60               1760-1762   ///
      int    I10_PRCCS61               1763-1765   ///
      int    I10_PRCCS62               1766-1768   ///
      int    I10_PRCCS63               1769-1771   ///
      int    I10_PRCCS64               1772-1774   ///
      int    I10_PRCCS65               1775-1777   ///
      int    I10_PRCCS66               1778-1780   ///
      int    I10_PROCTYPE              1781-1783   ///
      byte   I10_SERVICELINE           1784-1785   ///
      double KEY                       1786-1800   ///
      long   LOS                       1801-1805   ///
      long   LOS_X                     1806-1811   ///
      byte   MDC                       1812-1813   ///
      byte   MDC_NoPOA                 1814-1815   ///
      byte   MDC32                     1816-1817   ///
      byte   MEDINCSTQ                 1818-1819   ///
      double OS_TIME                   1820-1830   ///
      byte   PAY1                      1831-1832   ///
      str    PAY1_X                    1833        ///
      byte   PAY2                      1834-1835   ///
      str    PAY2_X                    1836        ///
      str    PAYER1_X                  1837-1839   ///
      str    PAYER2_X                  1840-1842   ///
      int    PL_CBSA                   1843-1845   ///
      byte   PL_UR_CAT4                1846-1847   ///
      byte   POA_Disch_Edit1           1848-1849   ///
      byte   POA_Disch_Edit2           1850-1851   ///
      byte   POA_Hosp_Edit1            1852-1853   ///
      byte   POA_Hosp_Edit2            1854-1855   ///
      byte   POA_Hosp_Edit3            1856-1857   ///
      double POA_Hosp_Edit3_Value      1858-1865   ///
      long   PRDAY1                    1866-1870   ///
      long   PRDAY2                    1871-1875   ///
      long   PRDAY3                    1876-1880   ///
      long   PRDAY4                    1881-1885   ///
      long   PRDAY5                    1886-1890   ///
      long   PRDAY6                    1891-1895   ///
      long   PRDAY7                    1896-1900   ///
      long   PRDAY8                    1901-1905   ///
      long   PRDAY9                    1906-1910   ///
      long   PRDAY10                   1911-1915   ///
      long   PRDAY11                   1916-1920   ///
      long   PRDAY12                   1921-1925   ///
      long   PRDAY13                   1926-1930   ///
      long   PRDAY14                   1931-1935   ///
      long   PRDAY15                   1936-1940   ///
      long   PRDAY16                   1941-1945   ///
      long   PRDAY17                   1946-1950   ///
      long   PRDAY18                   1951-1955   ///
      long   PRDAY19                   1956-1960   ///
      long   PRDAY20                   1961-1965   ///
      long   PRDAY21                   1966-1970   ///
      long   PRDAY22                   1971-1975   ///
      long   PRDAY23                   1976-1980   ///
      long   PRDAY24                   1981-1985   ///
      long   PRDAY25                   1986-1990   ///
      long   PRDAY26                   1991-1995   ///
      long   PRDAY27                   1996-2000   ///
      long   PRDAY28                   2001-2005   ///
      long   PRDAY29                   2006-2010   ///
      long   PRDAY30                   2011-2015   ///
      long   PRDAY31                   2016-2020   ///
      long   PRDAY32                   2021-2025   ///
      long   PRDAY33                   2026-2030   ///
      long   PRDAY34                   2031-2035   ///
      long   PRDAY35                   2036-2040   ///
      long   PRDAY36                   2041-2045   ///
      long   PRDAY37                   2046-2050   ///
      long   PRDAY38                   2051-2055   ///
      long   PRDAY39                   2056-2060   ///
      long   PRDAY40                   2061-2065   ///
      long   PRDAY41                   2066-2070   ///
      long   PRDAY42                   2071-2075   ///
      long   PRDAY43                   2076-2080   ///
      long   PRDAY44                   2081-2085   ///
      long   PRDAY45                   2086-2090   ///
      long   PRDAY46                   2091-2095   ///
      long   PRDAY47                   2096-2100   ///
      long   PRDAY48                   2101-2105   ///
      long   PRDAY49                   2106-2110   ///
      long   PRDAY50                   2111-2115   ///
      long   PRDAY51                   2116-2120   ///
      long   PRDAY52                   2121-2125   ///
      long   PRDAY53                   2126-2130   ///
      long   PRDAY54                   2131-2135   ///
      long   PRDAY55                   2136-2140   ///
      long   PRDAY56                   2141-2145   ///
      long   PRDAY57                   2146-2150   ///
      long   PRDAY58                   2151-2155   ///
      long   PRDAY59                   2156-2160   ///
      long   PRDAY60                   2161-2165   ///
      long   PRDAY61                   2166-2170   ///
      long   PRDAY62                   2171-2175   ///
      long   PRDAY63                   2176-2180   ///
      long   PRDAY64                   2181-2185   ///
      long   PRDAY65                   2186-2190   ///
      long   PRDAY66                   2191-2195   ///
      int    PRVER                     2196-2198   ///
      str    PSTATE                    2199-2200   ///
      long   PSTCO2                    2201-2205   ///
      byte   RACE                      2206-2207   ///
      str    RACE_X                    2208-2220   ///
      double TOTCHG                    2221-2230   ///
      double TOTCHG_X                  2231-2245   ///
      byte   TRAN_IN                   2246-2247   ///
      byte   TRAN_OUT                  2248-2249   ///
      long   VisitLink                 2250-2258   ///
      int    YEAR                      2259-2262   ///
      str    ZIP3                      2263-2265   ///
      int    ZIPINC_QRTL               2266-2268   ///
      int    AYEAR                     2269-2272   ///
      byte   PRMONTH1                  2273-2274   ///
      byte   PRMONTH2                  2275-2276   ///
      byte   PRMONTH3                  2277-2278   ///
      byte   PRMONTH4                  2279-2280   ///
      byte   PRMONTH5                  2281-2282   ///
      byte   PRMONTH6                  2283-2284   ///
      byte   PRMONTH7                  2285-2286   ///
      byte   PRMONTH8                  2287-2288   ///
      byte   PRMONTH9                  2289-2290   ///
      byte   PRMONTH10                 2291-2292   ///
      byte   PRMONTH11                 2293-2294   ///
      byte   PRMONTH12                 2295-2296   ///
      byte   PRMONTH13                 2297-2298   ///
      byte   PRMONTH14                 2299-2300   ///
      byte   PRMONTH15                 2301-2302   ///
      byte   PRMONTH16                 2303-2304   ///
      byte   PRMONTH17                 2305-2306   ///
      byte   PRMONTH18                 2307-2308   ///
      byte   PRMONTH19                 2309-2310   ///
      byte   PRMONTH20                 2311-2312   ///
      byte   PRMONTH21                 2313-2314   ///
      byte   PRMONTH22                 2315-2316   ///
      byte   PRMONTH23                 2317-2318   ///
      byte   PRMONTH24                 2319-2320   ///
      byte   PRMONTH25                 2321-2322   ///
      byte   PRMONTH26                 2323-2324   ///
      byte   PRMONTH27                 2325-2326   ///
      byte   PRMONTH28                 2327-2328   ///
      byte   PRMONTH29                 2329-2330   ///
      byte   PRMONTH30                 2331-2332   ///
      byte   PRMONTH31                 2333-2334   ///
      byte   PRMONTH32                 2335-2336   ///
      byte   PRMONTH33                 2337-2338   ///
      byte   PRMONTH34                 2339-2340   ///
      byte   PRMONTH35                 2341-2342   ///
      byte   PRMONTH36                 2343-2344   ///
      byte   PRMONTH37                 2345-2346   ///
      byte   PRMONTH38                 2347-2348   ///
      byte   PRMONTH39                 2349-2350   ///
      byte   PRMONTH40                 2351-2352   ///
      byte   PRMONTH41                 2353-2354   ///
      byte   PRMONTH42                 2355-2356   ///
      byte   PRMONTH43                 2357-2358   ///
      byte   PRMONTH44                 2359-2360   ///
      byte   PRMONTH45                 2361-2362   ///
      byte   PRMONTH46                 2363-2364   ///
      byte   PRMONTH47                 2365-2366   ///
      byte   PRMONTH48                 2367-2368   ///
      byte   PRMONTH49                 2369-2370   ///
      byte   PRMONTH50                 2371-2372   ///
      byte   PRMONTH51                 2373-2374   ///
      byte   PRMONTH52                 2375-2376   ///
      byte   PRMONTH53                 2377-2378   ///
      byte   PRMONTH54                 2379-2380   ///
      byte   PRMONTH55                 2381-2382   ///
      byte   PRMONTH56                 2383-2384   ///
      byte   PRMONTH57                 2385-2386   ///
      byte   PRMONTH58                 2387-2388   ///
      byte   PRMONTH59                 2389-2390   ///
      byte   PRMONTH60                 2391-2392   ///
      byte   PRMONTH61                 2393-2394   ///
      byte   PRMONTH62                 2395-2396   ///
      byte   PRMONTH63                 2397-2398   ///
      byte   PRMONTH64                 2399-2400   ///
      byte   PRMONTH65                 2401-2402   ///
      byte   PRMONTH66                 2403-2404   ///
      int    PRYEAR1                   2405-2408   ///
      int    PRYEAR2                   2409-2412   ///
      int    PRYEAR3                   2413-2416   ///
      int    PRYEAR4                   2417-2420   ///
      int    PRYEAR5                   2421-2424   ///
      int    PRYEAR6                   2425-2428   ///
      int    PRYEAR7                   2429-2432   ///
      int    PRYEAR8                   2433-2436   ///
      int    PRYEAR9                   2437-2440   ///
      int    PRYEAR10                  2441-2444   ///
      int    PRYEAR11                  2445-2448   ///
      int    PRYEAR12                  2449-2452   ///
      int    PRYEAR13                  2453-2456   ///
      int    PRYEAR14                  2457-2460   ///
      int    PRYEAR15                  2461-2464   ///
      int    PRYEAR16                  2465-2468   ///
      int    PRYEAR17                  2469-2472   ///
      int    PRYEAR18                  2473-2476   ///
      int    PRYEAR19                  2477-2480   ///
      int    PRYEAR20                  2481-2484   ///
      int    PRYEAR21                  2485-2488   ///
      int    PRYEAR22                  2489-2492   ///
      int    PRYEAR23                  2493-2496   ///
      int    PRYEAR24                  2497-2500   ///
      int    PRYEAR25                  2501-2504   ///
      int    PRYEAR26                  2505-2508   ///
      int    PRYEAR27                  2509-2512   ///
      int    PRYEAR28                  2513-2516   ///
      int    PRYEAR29                  2517-2520   ///
      int    PRYEAR30                  2521-2524   ///
      int    PRYEAR31                  2525-2528   ///
      int    PRYEAR32                  2529-2532   ///
      int    PRYEAR33                  2533-2536   ///
      int    PRYEAR34                  2537-2540   ///
      int    PRYEAR35                  2541-2544   ///
      int    PRYEAR36                  2545-2548   ///
      int    PRYEAR37                  2549-2552   ///
      int    PRYEAR38                  2553-2556   ///
      int    PRYEAR39                  2557-2560   ///
      int    PRYEAR40                  2561-2564   ///
      int    PRYEAR41                  2565-2568   ///
      int    PRYEAR42                  2569-2572   ///
      int    PRYEAR43                  2573-2576   ///
      int    PRYEAR44                  2577-2580   ///
      int    PRYEAR45                  2581-2584   ///
      int    PRYEAR46                  2585-2588   ///
      int    PRYEAR47                  2589-2592   ///
      int    PRYEAR48                  2593-2596   ///
      int    PRYEAR49                  2597-2600   ///
      int    PRYEAR50                  2601-2604   ///
      int    PRYEAR51                  2605-2608   ///
      int    PRYEAR52                  2609-2612   ///
      int    PRYEAR53                  2613-2616   ///
      int    PRYEAR54                  2617-2620   ///
      int    PRYEAR55                  2621-2624   ///
      int    PRYEAR56                  2625-2628   ///
      int    PRYEAR57                  2629-2632   ///
      int    PRYEAR58                  2633-2636   ///
      int    PRYEAR59                  2637-2640   ///
      int    PRYEAR60                  2641-2644   ///
      int    PRYEAR61                  2645-2648   ///
      int    PRYEAR62                  2649-2652   ///
      int    PRYEAR63                  2653-2656   ///
      int    PRYEAR64                  2657-2660   ///
      int    PRYEAR65                  2661-2664   ///
      int    PRYEAR66                  2665-2668   ///
      using  "MA_SID_2015q4_CORE.ASC"

***  Assign labels to the data elements ***
label var ADRG                     "All Patient Refined DRG"
label var ADRGRISKMORTALITY        "All Patient Refined DRG mortality risk"
label var ADRGSEV                  "All Patient Refined DRG severity level"
label var AGE                      "Age in years at admission"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMDC                     "All Patient Refined MDC"
label var AMONTH                   "Admission month"
label var ASOURCE                  "Admission source (uniform)"
label var ASOURCE_X                "Admission source (as received from source)"
label var ASOURCEUB92              "Admission source (UB-92 standard coding)"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
label var DaysBetweenVisits        "Number of days between visits"
label var DaysToEvent              "Days from 'start date' to admission"
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
label var DXVER                    "Diagnosis Version"
label var E_POA1                   "E Cause 1, present on admission indicator"
label var E_POA2                   "E Cause 2, present on admission indicator"
label var E_POA3                   "E Cause 3, present on admission indicator"
label var E_POA4                   "E Cause 4, present on admission indicator"
label var E_POA5                   "E Cause 5, present on admission indicator"
label var E_POA6                   "E Cause 6, present on admission indicator"
label var E_POA7                   "E Cause 7, present on admission indicator"
label var E_POA8                   "E Cause 8, present on admission indicator"
label var E_POA9                   "E Cause 9, present on admission indicator"
label var E_POA10                  "E Cause 10, present on admission indicator"
label var E_POA11                  "E Cause 11, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
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
label var I10_DX65                 "ICD-10-CM Diagnosis 65"
label var I10_DX66                 "ICD-10-CM Diagnosis 66"
label var I10_DX67                 "ICD-10-CM Diagnosis 67"
label var I10_DX68                 "ICD-10-CM Diagnosis 68"
label var I10_DX69                 "ICD-10-CM Diagnosis 69"
label var I10_DX70                 "ICD-10-CM Diagnosis 70"
label var I10_DX71                 "ICD-10-CM Diagnosis 71"
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
label var I10_DXCCS33              "ICD-10-CM CCS: diagnosis 33"
label var I10_DXCCS34              "ICD-10-CM CCS: diagnosis 34"
label var I10_DXCCS35              "ICD-10-CM CCS: diagnosis 35"
label var I10_DXCCS36              "ICD-10-CM CCS: diagnosis 36"
label var I10_DXCCS37              "ICD-10-CM CCS: diagnosis 37"
label var I10_DXCCS38              "ICD-10-CM CCS: diagnosis 38"
label var I10_DXCCS39              "ICD-10-CM CCS: diagnosis 39"
label var I10_DXCCS40              "ICD-10-CM CCS: diagnosis 40"
label var I10_DXCCS41              "ICD-10-CM CCS: diagnosis 41"
label var I10_DXCCS42              "ICD-10-CM CCS: diagnosis 42"
label var I10_DXCCS43              "ICD-10-CM CCS: diagnosis 43"
label var I10_DXCCS44              "ICD-10-CM CCS: diagnosis 44"
label var I10_DXCCS45              "ICD-10-CM CCS: diagnosis 45"
label var I10_DXCCS46              "ICD-10-CM CCS: diagnosis 46"
label var I10_DXCCS47              "ICD-10-CM CCS: diagnosis 47"
label var I10_DXCCS48              "ICD-10-CM CCS: diagnosis 48"
label var I10_DXCCS49              "ICD-10-CM CCS: diagnosis 49"
label var I10_DXCCS50              "ICD-10-CM CCS: diagnosis 50"
label var I10_DXCCS51              "ICD-10-CM CCS: diagnosis 51"
label var I10_DXCCS52              "ICD-10-CM CCS: diagnosis 52"
label var I10_DXCCS53              "ICD-10-CM CCS: diagnosis 53"
label var I10_DXCCS54              "ICD-10-CM CCS: diagnosis 54"
label var I10_DXCCS55              "ICD-10-CM CCS: diagnosis 55"
label var I10_DXCCS56              "ICD-10-CM CCS: diagnosis 56"
label var I10_DXCCS57              "ICD-10-CM CCS: diagnosis 57"
label var I10_DXCCS58              "ICD-10-CM CCS: diagnosis 58"
label var I10_DXCCS59              "ICD-10-CM CCS: diagnosis 59"
label var I10_DXCCS60              "ICD-10-CM CCS: diagnosis 60"
label var I10_DXCCS61              "ICD-10-CM CCS: diagnosis 61"
label var I10_DXCCS62              "ICD-10-CM CCS: diagnosis 62"
label var I10_DXCCS63              "ICD-10-CM CCS: diagnosis 63"
label var I10_DXCCS64              "ICD-10-CM CCS: diagnosis 64"
label var I10_DXCCS65              "ICD-10-CM CCS: diagnosis 65"
label var I10_DXCCS66              "ICD-10-CM CCS: diagnosis 66"
label var I10_DXCCS67              "ICD-10-CM CCS: diagnosis 67"
label var I10_DXCCS68              "ICD-10-CM CCS: diagnosis 68"
label var I10_DXCCS69              "ICD-10-CM CCS: diagnosis 69"
label var I10_DXCCS70              "ICD-10-CM CCS: diagnosis 70"
label var I10_DXCCS71              "ICD-10-CM CCS: diagnosis 71"
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
label var I10_PRCCS33              "ICD-10-PCS CCS: procedure 33"
label var I10_PRCCS34              "ICD-10-PCS CCS: procedure 34"
label var I10_PRCCS35              "ICD-10-PCS CCS: procedure 35"
label var I10_PRCCS36              "ICD-10-PCS CCS: procedure 36"
label var I10_PRCCS37              "ICD-10-PCS CCS: procedure 37"
label var I10_PRCCS38              "ICD-10-PCS CCS: procedure 38"
label var I10_PRCCS39              "ICD-10-PCS CCS: procedure 39"
label var I10_PRCCS40              "ICD-10-PCS CCS: procedure 40"
label var I10_PRCCS41              "ICD-10-PCS CCS: procedure 41"
label var I10_PRCCS42              "ICD-10-PCS CCS: procedure 42"
label var I10_PRCCS43              "ICD-10-PCS CCS: procedure 43"
label var I10_PRCCS44              "ICD-10-PCS CCS: procedure 44"
label var I10_PRCCS45              "ICD-10-PCS CCS: procedure 45"
label var I10_PRCCS46              "ICD-10-PCS CCS: procedure 46"
label var I10_PRCCS47              "ICD-10-PCS CCS: procedure 47"
label var I10_PRCCS48              "ICD-10-PCS CCS: procedure 48"
label var I10_PRCCS49              "ICD-10-PCS CCS: procedure 49"
label var I10_PRCCS50              "ICD-10-PCS CCS: procedure 50"
label var I10_PRCCS51              "ICD-10-PCS CCS: procedure 51"
label var I10_PRCCS52              "ICD-10-PCS CCS: procedure 52"
label var I10_PRCCS53              "ICD-10-PCS CCS: procedure 53"
label var I10_PRCCS54              "ICD-10-PCS CCS: procedure 54"
label var I10_PRCCS55              "ICD-10-PCS CCS: procedure 55"
label var I10_PRCCS56              "ICD-10-PCS CCS: procedure 56"
label var I10_PRCCS57              "ICD-10-PCS CCS: procedure 57"
label var I10_PRCCS58              "ICD-10-PCS CCS: procedure 58"
label var I10_PRCCS59              "ICD-10-PCS CCS: procedure 59"
label var I10_PRCCS60              "ICD-10-PCS CCS: procedure 60"
label var I10_PRCCS61              "ICD-10-PCS CCS: procedure 61"
label var I10_PRCCS62              "ICD-10-PCS CCS: procedure 62"
label var I10_PRCCS63              "ICD-10-PCS CCS: procedure 63"
label var I10_PRCCS64              "ICD-10-PCS CCS: procedure 64"
label var I10_PRCCS65              "ICD-10-PCS CCS: procedure 65"
label var I10_PRCCS66              "ICD-10-PCS CCS: procedure 66"
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
label var PAYER1_X                 "Primary expected payer plan identifier (as received from source)"
label var PAYER2_X                 "Secondary expected payer plan identifier (as received from source)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
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
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var VisitLink                "Visit linkage variable"
label var YEAR                     "Calendar year"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var AYEAR                    "Admission year"
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
label var PRMONTH61                "Month of procedure 61"
label var PRMONTH62                "Month of procedure 62"
label var PRMONTH63                "Month of procedure 63"
label var PRMONTH64                "Month of procedure 64"
label var PRMONTH65                "Month of procedure 65"
label var PRMONTH66                "Month of procedure 66"
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
label var PRYEAR61                 "Year of procedure 61"
label var PRYEAR62                 "Year of procedure 62"
label var PRYEAR63                 "Year of procedure 63"
label var PRYEAR64                 "Year of procedure 64"
label var PRYEAR65                 "Year of procedure 65"
label var PRYEAR66                 "Year of procedure 66"

*** Convert special values to missing values ***
recode ADRG                      (-99 -88 -66=.)
recode ADRGRISKMORTALITY         (-9 -8 -6 -5=.)
recode ADRGSEV                   (-9 -8 -6 -5=.)
recode AGE                       (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AMDC                      (-9 -8 -6 -5=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ASOURCE                   (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
recode DaysBetweenVisits         (-999 -888 -666=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
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
recode I10_DXCCS31               (-999 -888 -666=.)
recode I10_DXCCS32               (-999 -888 -666=.)
recode I10_DXCCS33               (-999 -888 -666=.)
recode I10_DXCCS34               (-999 -888 -666=.)
recode I10_DXCCS35               (-999 -888 -666=.)
recode I10_DXCCS36               (-999 -888 -666=.)
recode I10_DXCCS37               (-999 -888 -666=.)
recode I10_DXCCS38               (-999 -888 -666=.)
recode I10_DXCCS39               (-999 -888 -666=.)
recode I10_DXCCS40               (-999 -888 -666=.)
recode I10_DXCCS41               (-999 -888 -666=.)
recode I10_DXCCS42               (-999 -888 -666=.)
recode I10_DXCCS43               (-999 -888 -666=.)
recode I10_DXCCS44               (-999 -888 -666=.)
recode I10_DXCCS45               (-999 -888 -666=.)
recode I10_DXCCS46               (-999 -888 -666=.)
recode I10_DXCCS47               (-999 -888 -666=.)
recode I10_DXCCS48               (-999 -888 -666=.)
recode I10_DXCCS49               (-999 -888 -666=.)
recode I10_DXCCS50               (-999 -888 -666=.)
recode I10_DXCCS51               (-999 -888 -666=.)
recode I10_DXCCS52               (-999 -888 -666=.)
recode I10_DXCCS53               (-999 -888 -666=.)
recode I10_DXCCS54               (-999 -888 -666=.)
recode I10_DXCCS55               (-999 -888 -666=.)
recode I10_DXCCS56               (-999 -888 -666=.)
recode I10_DXCCS57               (-999 -888 -666=.)
recode I10_DXCCS58               (-999 -888 -666=.)
recode I10_DXCCS59               (-999 -888 -666=.)
recode I10_DXCCS60               (-999 -888 -666=.)
recode I10_DXCCS61               (-999 -888 -666=.)
recode I10_DXCCS62               (-999 -888 -666=.)
recode I10_DXCCS63               (-999 -888 -666=.)
recode I10_DXCCS64               (-999 -888 -666=.)
recode I10_DXCCS65               (-999 -888 -666=.)
recode I10_DXCCS66               (-999 -888 -666=.)
recode I10_DXCCS67               (-999 -888 -666=.)
recode I10_DXCCS68               (-999 -888 -666=.)
recode I10_DXCCS69               (-999 -888 -666=.)
recode I10_DXCCS70               (-999 -888 -666=.)
recode I10_DXCCS71               (-999 -888 -666=.)
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
recode I10_PRCCS33               (-99 -88 -66=.)
recode I10_PRCCS34               (-99 -88 -66=.)
recode I10_PRCCS35               (-99 -88 -66=.)
recode I10_PRCCS36               (-99 -88 -66=.)
recode I10_PRCCS37               (-99 -88 -66=.)
recode I10_PRCCS38               (-99 -88 -66=.)
recode I10_PRCCS39               (-99 -88 -66=.)
recode I10_PRCCS40               (-99 -88 -66=.)
recode I10_PRCCS41               (-99 -88 -66=.)
recode I10_PRCCS42               (-99 -88 -66=.)
recode I10_PRCCS43               (-99 -88 -66=.)
recode I10_PRCCS44               (-99 -88 -66=.)
recode I10_PRCCS45               (-99 -88 -66=.)
recode I10_PRCCS46               (-99 -88 -66=.)
recode I10_PRCCS47               (-99 -88 -66=.)
recode I10_PRCCS48               (-99 -88 -66=.)
recode I10_PRCCS49               (-99 -88 -66=.)
recode I10_PRCCS50               (-99 -88 -66=.)
recode I10_PRCCS51               (-99 -88 -66=.)
recode I10_PRCCS52               (-99 -88 -66=.)
recode I10_PRCCS53               (-99 -88 -66=.)
recode I10_PRCCS54               (-99 -88 -66=.)
recode I10_PRCCS55               (-99 -88 -66=.)
recode I10_PRCCS56               (-99 -88 -66=.)
recode I10_PRCCS57               (-99 -88 -66=.)
recode I10_PRCCS58               (-99 -88 -66=.)
recode I10_PRCCS59               (-99 -88 -66=.)
recode I10_PRCCS60               (-99 -88 -66=.)
recode I10_PRCCS61               (-99 -88 -66=.)
recode I10_PRCCS62               (-99 -88 -66=.)
recode I10_PRCCS63               (-99 -88 -66=.)
recode I10_PRCCS64               (-99 -88 -66=.)
recode I10_PRCCS65               (-99 -88 -66=.)
recode I10_PRCCS66               (-99 -88 -66=.)
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
recode PL_CBSA                   (-99 -88 -66=.)
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
recode PRVER                     (-99 -88 -66=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
recode VisitLink                 (-99999999 -88888888 -66666666=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)
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
recode PRMONTH61                 (-9 -8 -6 -5=.)
recode PRMONTH62                 (-9 -8 -6 -5=.)
recode PRMONTH63                 (-9 -8 -6 -5=.)
recode PRMONTH64                 (-9 -8 -6 -5=.)
recode PRMONTH65                 (-9 -8 -6 -5=.)
recode PRMONTH66                 (-9 -8 -6 -5=.)
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
recode PRYEAR61                  (-999 -888 -666=.)
recode PRYEAR62                  (-999 -888 -666=.)
recode PRYEAR63                  (-999 -888 -666=.)
recode PRYEAR64                  (-999 -888 -666=.)
recode PRYEAR65                  (-999 -888 -666=.)
recode PRYEAR66                  (-999 -888 -666=.)

save "MA_SID_2015q4_CORE.dta", replace
