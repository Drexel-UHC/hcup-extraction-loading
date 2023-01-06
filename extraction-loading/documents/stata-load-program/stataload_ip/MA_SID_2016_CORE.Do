/*****************************************************************************
* Creation Date: 10/30/2018   
* MA_SID_2016_CORE.Do
* This program will load the 2016 MA ASCII CORE File into Stata.
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
      byte   DRGVER                      60-  61   ///
      str    DSHOSPID                    62-  78   ///
      str    DXPOA1                      79        ///
      str    DXPOA2                      80        ///
      str    DXPOA3                      81        ///
      str    DXPOA4                      82        ///
      str    DXPOA5                      83        ///
      str    DXPOA6                      84        ///
      str    DXPOA7                      85        ///
      str    DXPOA8                      86        ///
      str    DXPOA9                      87        ///
      str    DXPOA10                     88        ///
      str    DXPOA11                     89        ///
      str    DXPOA12                     90        ///
      str    DXPOA13                     91        ///
      str    DXPOA14                     92        ///
      str    DXPOA15                     93        ///
      str    DXPOA16                     94        ///
      str    DXPOA17                     95        ///
      str    DXPOA18                     96        ///
      str    DXPOA19                     97        ///
      str    DXPOA20                     98        ///
      str    DXPOA21                     99        ///
      str    DXPOA22                    100        ///
      str    DXPOA23                    101        ///
      str    DXPOA24                    102        ///
      str    DXPOA25                    103        ///
      str    DXPOA26                    104        ///
      str    DXPOA27                    105        ///
      str    DXPOA28                    106        ///
      str    DXPOA29                    107        ///
      str    DXPOA30                    108        ///
      str    DXPOA31                    109        ///
      str    DXPOA32                    110        ///
      str    DXPOA33                    111        ///
      str    DXPOA34                    112        ///
      str    DXPOA35                    113        ///
      str    DXPOA36                    114        ///
      str    DXPOA37                    115        ///
      str    DXPOA38                    116        ///
      str    DXPOA39                    117        ///
      str    DXPOA40                    118        ///
      str    DXPOA41                    119        ///
      str    DXPOA42                    120        ///
      str    DXPOA43                    121        ///
      str    DXPOA44                    122        ///
      str    DXPOA45                    123        ///
      str    DXPOA46                    124        ///
      str    DXPOA47                    125        ///
      str    DXPOA48                    126        ///
      str    DXPOA49                    127        ///
      str    DXPOA50                    128        ///
      str    DXPOA51                    129        ///
      str    DXPOA52                    130        ///
      str    DXPOA53                    131        ///
      str    DXPOA54                    132        ///
      str    DXPOA55                    133        ///
      str    DXPOA56                    134        ///
      str    DXPOA57                    135        ///
      str    DXPOA58                    136        ///
      str    DXPOA59                    137        ///
      str    DXPOA60                    138        ///
      str    DXPOA61                    139        ///
      str    DXPOA62                    140        ///
      str    DXPOA63                    141        ///
      str    DXPOA64                    142        ///
      str    DXPOA65                    143        ///
      str    DXPOA66                    144        ///
      str    DXPOA67                    145        ///
      str    DXPOA68                    146        ///
      str    DXPOA69                    147        ///
      str    DXPOA70                    148        ///
      str    DXPOA71                    149        ///
      int    DXVER                      150- 152   ///
      str    E_POA1                     153        ///
      str    E_POA2                     154        ///
      str    E_POA3                     155        ///
      str    E_POA4                     156        ///
      str    E_POA5                     157        ///
      str    E_POA6                     158        ///
      str    E_POA7                     159        ///
      str    E_POA8                     160        ///
      str    E_POA9                     161        ///
      str    E_POA10                    162        ///
      str    E_POA11                    163        ///
      byte   FEMALE                     164- 165   ///
      byte   HCUP_ED                    166- 167   ///
      byte   HCUP_OS                    168- 169   ///
      byte   HISPANIC                   170- 171   ///
      str    HISPANIC_X                 172- 186   ///
      byte   Homeless                   187- 188   ///
      str    HOSPST                     189- 190   ///
      str    I10_DX_Admitting           191- 197   ///
      str    I10_DX1                    198- 204   ///
      str    I10_DX2                    205- 211   ///
      str    I10_DX3                    212- 218   ///
      str    I10_DX4                    219- 225   ///
      str    I10_DX5                    226- 232   ///
      str    I10_DX6                    233- 239   ///
      str    I10_DX7                    240- 246   ///
      str    I10_DX8                    247- 253   ///
      str    I10_DX9                    254- 260   ///
      str    I10_DX10                   261- 267   ///
      str    I10_DX11                   268- 274   ///
      str    I10_DX12                   275- 281   ///
      str    I10_DX13                   282- 288   ///
      str    I10_DX14                   289- 295   ///
      str    I10_DX15                   296- 302   ///
      str    I10_DX16                   303- 309   ///
      str    I10_DX17                   310- 316   ///
      str    I10_DX18                   317- 323   ///
      str    I10_DX19                   324- 330   ///
      str    I10_DX20                   331- 337   ///
      str    I10_DX21                   338- 344   ///
      str    I10_DX22                   345- 351   ///
      str    I10_DX23                   352- 358   ///
      str    I10_DX24                   359- 365   ///
      str    I10_DX25                   366- 372   ///
      str    I10_DX26                   373- 379   ///
      str    I10_DX27                   380- 386   ///
      str    I10_DX28                   387- 393   ///
      str    I10_DX29                   394- 400   ///
      str    I10_DX30                   401- 407   ///
      str    I10_DX31                   408- 414   ///
      str    I10_DX32                   415- 421   ///
      str    I10_DX33                   422- 428   ///
      str    I10_DX34                   429- 435   ///
      str    I10_DX35                   436- 442   ///
      str    I10_DX36                   443- 449   ///
      str    I10_DX37                   450- 456   ///
      str    I10_DX38                   457- 463   ///
      str    I10_DX39                   464- 470   ///
      str    I10_DX40                   471- 477   ///
      str    I10_DX41                   478- 484   ///
      str    I10_DX42                   485- 491   ///
      str    I10_DX43                   492- 498   ///
      str    I10_DX44                   499- 505   ///
      str    I10_DX45                   506- 512   ///
      str    I10_DX46                   513- 519   ///
      str    I10_DX47                   520- 526   ///
      str    I10_DX48                   527- 533   ///
      str    I10_DX49                   534- 540   ///
      str    I10_DX50                   541- 547   ///
      str    I10_DX51                   548- 554   ///
      str    I10_DX52                   555- 561   ///
      str    I10_DX53                   562- 568   ///
      str    I10_DX54                   569- 575   ///
      str    I10_DX55                   576- 582   ///
      str    I10_DX56                   583- 589   ///
      str    I10_DX57                   590- 596   ///
      str    I10_DX58                   597- 603   ///
      str    I10_DX59                   604- 610   ///
      str    I10_DX60                   611- 617   ///
      str    I10_DX61                   618- 624   ///
      str    I10_DX62                   625- 631   ///
      str    I10_DX63                   632- 638   ///
      str    I10_DX64                   639- 645   ///
      str    I10_DX65                   646- 652   ///
      str    I10_DX66                   653- 659   ///
      str    I10_DX67                   660- 666   ///
      str    I10_DX68                   667- 673   ///
      str    I10_DX69                   674- 680   ///
      str    I10_DX70                   681- 687   ///
      str    I10_DX71                   688- 694   ///
      str    I10_ECAUSE1                695- 701   ///
      str    I10_ECAUSE2                702- 708   ///
      str    I10_ECAUSE3                709- 715   ///
      str    I10_ECAUSE4                716- 722   ///
      str    I10_ECAUSE5                723- 729   ///
      str    I10_ECAUSE6                730- 736   ///
      str    I10_ECAUSE7                737- 743   ///
      str    I10_ECAUSE8                744- 750   ///
      str    I10_ECAUSE9                751- 757   ///
      str    I10_ECAUSE10               758- 764   ///
      str    I10_ECAUSE11               765- 771   ///
      int    I10_NDX                    772- 774   ///
      byte   I10_NECAUSE                775- 776   ///
      int    I10_NPR                    777- 779   ///
      str    I10_PR1                    780- 786   ///
      str    I10_PR2                    787- 793   ///
      str    I10_PR3                    794- 800   ///
      str    I10_PR4                    801- 807   ///
      str    I10_PR5                    808- 814   ///
      str    I10_PR6                    815- 821   ///
      str    I10_PR7                    822- 828   ///
      str    I10_PR8                    829- 835   ///
      str    I10_PR9                    836- 842   ///
      str    I10_PR10                   843- 849   ///
      str    I10_PR11                   850- 856   ///
      str    I10_PR12                   857- 863   ///
      str    I10_PR13                   864- 870   ///
      str    I10_PR14                   871- 877   ///
      str    I10_PR15                   878- 884   ///
      str    I10_PR16                   885- 891   ///
      str    I10_PR17                   892- 898   ///
      str    I10_PR18                   899- 905   ///
      str    I10_PR19                   906- 912   ///
      str    I10_PR20                   913- 919   ///
      str    I10_PR21                   920- 926   ///
      str    I10_PR22                   927- 933   ///
      str    I10_PR23                   934- 940   ///
      str    I10_PR24                   941- 947   ///
      str    I10_PR25                   948- 954   ///
      str    I10_PR26                   955- 961   ///
      str    I10_PR27                   962- 968   ///
      str    I10_PR28                   969- 975   ///
      str    I10_PR29                   976- 982   ///
      str    I10_PR30                   983- 989   ///
      str    I10_PR31                   990- 996   ///
      str    I10_PR32                   997-1003   ///
      str    I10_PR33                  1004-1010   ///
      str    I10_PR34                  1011-1017   ///
      str    I10_PR35                  1018-1024   ///
      str    I10_PR36                  1025-1031   ///
      str    I10_PR37                  1032-1038   ///
      str    I10_PR38                  1039-1045   ///
      str    I10_PR39                  1046-1052   ///
      str    I10_PR40                  1053-1059   ///
      str    I10_PR41                  1060-1066   ///
      str    I10_PR42                  1067-1073   ///
      str    I10_PR43                  1074-1080   ///
      str    I10_PR44                  1081-1087   ///
      str    I10_PR45                  1088-1094   ///
      str    I10_PR46                  1095-1101   ///
      str    I10_PR47                  1102-1108   ///
      str    I10_PR48                  1109-1115   ///
      str    I10_PR49                  1116-1122   ///
      str    I10_PR50                  1123-1129   ///
      str    I10_PR51                  1130-1136   ///
      str    I10_PR52                  1137-1143   ///
      str    I10_PR53                  1144-1150   ///
      str    I10_PR54                  1151-1157   ///
      str    I10_PR55                  1158-1164   ///
      str    I10_PR56                  1165-1171   ///
      str    I10_PR57                  1172-1178   ///
      str    I10_PR58                  1179-1185   ///
      str    I10_PR59                  1186-1192   ///
      str    I10_PR60                  1193-1199   ///
      str    I10_PR61                  1200-1206   ///
      str    I10_PR62                  1207-1213   ///
      str    I10_PR63                  1214-1220   ///
      str    I10_PR64                  1221-1227   ///
      str    I10_PR65                  1228-1234   ///
      str    I10_PR66                  1235-1241   ///
      str    I10_PR67                  1242-1248   ///
      str    I10_PR68                  1249-1255   ///
      str    I10_PR69                  1256-1262   ///
      str    I10_PR70                  1263-1269   ///
      int    I10_PROCTYPE              1270-1272   ///
      double KEY                       1273-1287   ///
      long   LOS                       1288-1292   ///
      long   LOS_X                     1293-1298   ///
      byte   MDC                       1299-1300   ///
      byte   MDC_NoPOA                 1301-1302   ///
      byte   MEDINCSTQ                 1303-1304   ///
      double OS_TIME                   1305-1315   ///
      byte   PAY1                      1316-1317   ///
      str    PAY1_X                    1318        ///
      byte   PAY2                      1319-1320   ///
      str    PAY2_X                    1321        ///
      str    PAYER1_X                  1322-1324   ///
      str    PAYER2_X                  1325-1327   ///
      int    PL_CBSA                   1328-1330   ///
      byte   PL_UR_CAT4                1331-1332   ///
      byte   POA_Disch_Edit1           1333-1334   ///
      byte   POA_Disch_Edit2           1335-1336   ///
      byte   POA_Hosp_Edit1            1337-1338   ///
      byte   POA_Hosp_Edit2            1339-1340   ///
      byte   POA_Hosp_Edit3            1341-1342   ///
      double POA_Hosp_Edit3_Value      1343-1350   ///
      long   PRDAY1                    1351-1355   ///
      long   PRDAY2                    1356-1360   ///
      long   PRDAY3                    1361-1365   ///
      long   PRDAY4                    1366-1370   ///
      long   PRDAY5                    1371-1375   ///
      long   PRDAY6                    1376-1380   ///
      long   PRDAY7                    1381-1385   ///
      long   PRDAY8                    1386-1390   ///
      long   PRDAY9                    1391-1395   ///
      long   PRDAY10                   1396-1400   ///
      long   PRDAY11                   1401-1405   ///
      long   PRDAY12                   1406-1410   ///
      long   PRDAY13                   1411-1415   ///
      long   PRDAY14                   1416-1420   ///
      long   PRDAY15                   1421-1425   ///
      long   PRDAY16                   1426-1430   ///
      long   PRDAY17                   1431-1435   ///
      long   PRDAY18                   1436-1440   ///
      long   PRDAY19                   1441-1445   ///
      long   PRDAY20                   1446-1450   ///
      long   PRDAY21                   1451-1455   ///
      long   PRDAY22                   1456-1460   ///
      long   PRDAY23                   1461-1465   ///
      long   PRDAY24                   1466-1470   ///
      long   PRDAY25                   1471-1475   ///
      long   PRDAY26                   1476-1480   ///
      long   PRDAY27                   1481-1485   ///
      long   PRDAY28                   1486-1490   ///
      long   PRDAY29                   1491-1495   ///
      long   PRDAY30                   1496-1500   ///
      long   PRDAY31                   1501-1505   ///
      long   PRDAY32                   1506-1510   ///
      long   PRDAY33                   1511-1515   ///
      long   PRDAY34                   1516-1520   ///
      long   PRDAY35                   1521-1525   ///
      long   PRDAY36                   1526-1530   ///
      long   PRDAY37                   1531-1535   ///
      long   PRDAY38                   1536-1540   ///
      long   PRDAY39                   1541-1545   ///
      long   PRDAY40                   1546-1550   ///
      long   PRDAY41                   1551-1555   ///
      long   PRDAY42                   1556-1560   ///
      long   PRDAY43                   1561-1565   ///
      long   PRDAY44                   1566-1570   ///
      long   PRDAY45                   1571-1575   ///
      long   PRDAY46                   1576-1580   ///
      long   PRDAY47                   1581-1585   ///
      long   PRDAY48                   1586-1590   ///
      long   PRDAY49                   1591-1595   ///
      long   PRDAY50                   1596-1600   ///
      long   PRDAY51                   1601-1605   ///
      long   PRDAY52                   1606-1610   ///
      long   PRDAY53                   1611-1615   ///
      long   PRDAY54                   1616-1620   ///
      long   PRDAY55                   1621-1625   ///
      long   PRDAY56                   1626-1630   ///
      long   PRDAY57                   1631-1635   ///
      long   PRDAY58                   1636-1640   ///
      long   PRDAY59                   1641-1645   ///
      long   PRDAY60                   1646-1650   ///
      long   PRDAY61                   1651-1655   ///
      long   PRDAY62                   1656-1660   ///
      long   PRDAY63                   1661-1665   ///
      long   PRDAY64                   1666-1670   ///
      long   PRDAY65                   1671-1675   ///
      long   PRDAY66                   1676-1680   ///
      long   PRDAY67                   1681-1685   ///
      long   PRDAY68                   1686-1690   ///
      long   PRDAY69                   1691-1695   ///
      long   PRDAY70                   1696-1700   ///
      int    PRVER                     1701-1703   ///
      str    PSTATE                    1704-1705   ///
      long   PSTCO2                    1706-1710   ///
      byte   RACE                      1711-1712   ///
      str    RACE_X                    1713-1725   ///
      double TOTCHG                    1726-1735   ///
      double TOTCHG_X                  1736-1750   ///
      byte   TRAN_IN                   1751-1752   ///
      byte   TRAN_OUT                  1753-1754   ///
      long   VisitLink                 1755-1763   ///
      int    YEAR                      1764-1767   ///
      str    ZIP3                      1768-1770   ///
      int    ZIPINC_QRTL               1771-1773   ///
      int    AYEAR                     1774-1777   ///
      byte   PRMONTH1                  1778-1779   ///
      byte   PRMONTH2                  1780-1781   ///
      byte   PRMONTH3                  1782-1783   ///
      byte   PRMONTH4                  1784-1785   ///
      byte   PRMONTH5                  1786-1787   ///
      byte   PRMONTH6                  1788-1789   ///
      byte   PRMONTH7                  1790-1791   ///
      byte   PRMONTH8                  1792-1793   ///
      byte   PRMONTH9                  1794-1795   ///
      byte   PRMONTH10                 1796-1797   ///
      byte   PRMONTH11                 1798-1799   ///
      byte   PRMONTH12                 1800-1801   ///
      byte   PRMONTH13                 1802-1803   ///
      byte   PRMONTH14                 1804-1805   ///
      byte   PRMONTH15                 1806-1807   ///
      byte   PRMONTH16                 1808-1809   ///
      byte   PRMONTH17                 1810-1811   ///
      byte   PRMONTH18                 1812-1813   ///
      byte   PRMONTH19                 1814-1815   ///
      byte   PRMONTH20                 1816-1817   ///
      byte   PRMONTH21                 1818-1819   ///
      byte   PRMONTH22                 1820-1821   ///
      byte   PRMONTH23                 1822-1823   ///
      byte   PRMONTH24                 1824-1825   ///
      byte   PRMONTH25                 1826-1827   ///
      byte   PRMONTH26                 1828-1829   ///
      byte   PRMONTH27                 1830-1831   ///
      byte   PRMONTH28                 1832-1833   ///
      byte   PRMONTH29                 1834-1835   ///
      byte   PRMONTH30                 1836-1837   ///
      byte   PRMONTH31                 1838-1839   ///
      byte   PRMONTH32                 1840-1841   ///
      byte   PRMONTH33                 1842-1843   ///
      byte   PRMONTH34                 1844-1845   ///
      byte   PRMONTH35                 1846-1847   ///
      byte   PRMONTH36                 1848-1849   ///
      byte   PRMONTH37                 1850-1851   ///
      byte   PRMONTH38                 1852-1853   ///
      byte   PRMONTH39                 1854-1855   ///
      byte   PRMONTH40                 1856-1857   ///
      byte   PRMONTH41                 1858-1859   ///
      byte   PRMONTH42                 1860-1861   ///
      byte   PRMONTH43                 1862-1863   ///
      byte   PRMONTH44                 1864-1865   ///
      byte   PRMONTH45                 1866-1867   ///
      byte   PRMONTH46                 1868-1869   ///
      byte   PRMONTH47                 1870-1871   ///
      byte   PRMONTH48                 1872-1873   ///
      byte   PRMONTH49                 1874-1875   ///
      byte   PRMONTH50                 1876-1877   ///
      byte   PRMONTH51                 1878-1879   ///
      byte   PRMONTH52                 1880-1881   ///
      byte   PRMONTH53                 1882-1883   ///
      byte   PRMONTH54                 1884-1885   ///
      byte   PRMONTH55                 1886-1887   ///
      byte   PRMONTH56                 1888-1889   ///
      byte   PRMONTH57                 1890-1891   ///
      byte   PRMONTH58                 1892-1893   ///
      byte   PRMONTH59                 1894-1895   ///
      byte   PRMONTH60                 1896-1897   ///
      byte   PRMONTH61                 1898-1899   ///
      byte   PRMONTH62                 1900-1901   ///
      byte   PRMONTH63                 1902-1903   ///
      byte   PRMONTH64                 1904-1905   ///
      byte   PRMONTH65                 1906-1907   ///
      byte   PRMONTH66                 1908-1909   ///
      byte   PRMONTH67                 1910-1911   ///
      byte   PRMONTH68                 1912-1913   ///
      byte   PRMONTH69                 1914-1915   ///
      byte   PRMONTH70                 1916-1917   ///
      int    PRYEAR1                   1918-1921   ///
      int    PRYEAR2                   1922-1925   ///
      int    PRYEAR3                   1926-1929   ///
      int    PRYEAR4                   1930-1933   ///
      int    PRYEAR5                   1934-1937   ///
      int    PRYEAR6                   1938-1941   ///
      int    PRYEAR7                   1942-1945   ///
      int    PRYEAR8                   1946-1949   ///
      int    PRYEAR9                   1950-1953   ///
      int    PRYEAR10                  1954-1957   ///
      int    PRYEAR11                  1958-1961   ///
      int    PRYEAR12                  1962-1965   ///
      int    PRYEAR13                  1966-1969   ///
      int    PRYEAR14                  1970-1973   ///
      int    PRYEAR15                  1974-1977   ///
      int    PRYEAR16                  1978-1981   ///
      int    PRYEAR17                  1982-1985   ///
      int    PRYEAR18                  1986-1989   ///
      int    PRYEAR19                  1990-1993   ///
      int    PRYEAR20                  1994-1997   ///
      int    PRYEAR21                  1998-2001   ///
      int    PRYEAR22                  2002-2005   ///
      int    PRYEAR23                  2006-2009   ///
      int    PRYEAR24                  2010-2013   ///
      int    PRYEAR25                  2014-2017   ///
      int    PRYEAR26                  2018-2021   ///
      int    PRYEAR27                  2022-2025   ///
      int    PRYEAR28                  2026-2029   ///
      int    PRYEAR29                  2030-2033   ///
      int    PRYEAR30                  2034-2037   ///
      int    PRYEAR31                  2038-2041   ///
      int    PRYEAR32                  2042-2045   ///
      int    PRYEAR33                  2046-2049   ///
      int    PRYEAR34                  2050-2053   ///
      int    PRYEAR35                  2054-2057   ///
      int    PRYEAR36                  2058-2061   ///
      int    PRYEAR37                  2062-2065   ///
      int    PRYEAR38                  2066-2069   ///
      int    PRYEAR39                  2070-2073   ///
      int    PRYEAR40                  2074-2077   ///
      int    PRYEAR41                  2078-2081   ///
      int    PRYEAR42                  2082-2085   ///
      int    PRYEAR43                  2086-2089   ///
      int    PRYEAR44                  2090-2093   ///
      int    PRYEAR45                  2094-2097   ///
      int    PRYEAR46                  2098-2101   ///
      int    PRYEAR47                  2102-2105   ///
      int    PRYEAR48                  2106-2109   ///
      int    PRYEAR49                  2110-2113   ///
      int    PRYEAR50                  2114-2117   ///
      int    PRYEAR51                  2118-2121   ///
      int    PRYEAR52                  2122-2125   ///
      int    PRYEAR53                  2126-2129   ///
      int    PRYEAR54                  2130-2133   ///
      int    PRYEAR55                  2134-2137   ///
      int    PRYEAR56                  2138-2141   ///
      int    PRYEAR57                  2142-2145   ///
      int    PRYEAR58                  2146-2149   ///
      int    PRYEAR59                  2150-2153   ///
      int    PRYEAR60                  2154-2157   ///
      int    PRYEAR61                  2158-2161   ///
      int    PRYEAR62                  2162-2165   ///
      int    PRYEAR63                  2166-2169   ///
      int    PRYEAR64                  2170-2173   ///
      int    PRYEAR65                  2174-2177   ///
      int    PRYEAR66                  2178-2181   ///
      int    PRYEAR67                  2182-2185   ///
      int    PRYEAR68                  2186-2189   ///
      int    PRYEAR69                  2190-2193   ///
      int    PRYEAR70                  2194-2197   ///
      using  "MA_SID_2016_CORE.ASC"

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
label var E_POA1                   "External cause 1, present on admission indicator"
label var E_POA2                   "External cause 2, present on admission indicator"
label var E_POA3                   "External cause 3, present on admission indicator"
label var E_POA4                   "External cause 4, present on admission indicator"
label var E_POA5                   "External cause 5, present on admission indicator"
label var E_POA6                   "External cause 6, present on admission indicator"
label var E_POA7                   "External cause 7, present on admission indicator"
label var E_POA8                   "External cause 8, present on admission indicator"
label var E_POA9                   "External cause 9, present on admission indicator"
label var E_POA10                  "External cause 10, present on admission indicator"
label var E_POA11                  "External cause 11, present on admission indicator"
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
label var I10_ECAUSE1              "ICD-10-CM External cause 1"
label var I10_ECAUSE2              "ICD-10-CM External cause 2"
label var I10_ECAUSE3              "ICD-10-CM External cause 3"
label var I10_ECAUSE4              "ICD-10-CM External cause 4"
label var I10_ECAUSE5              "ICD-10-CM External cause 5"
label var I10_ECAUSE6              "ICD-10-CM External cause 6"
label var I10_ECAUSE7              "ICD-10-CM External cause 7"
label var I10_ECAUSE8              "ICD-10-CM External cause 8"
label var I10_ECAUSE9              "ICD-10-CM External cause 9"
label var I10_ECAUSE10             "ICD-10-CM External cause 10"
label var I10_ECAUSE11             "ICD-10-CM External cause 11"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
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
label var PRDAY67                  "Number of days from admission to I10_PR67"
label var PRDAY68                  "Number of days from admission to I10_PR68"
label var PRDAY69                  "Number of days from admission to I10_PR69"
label var PRDAY70                  "Number of days from admission to I10_PR70"
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
label var PRMONTH67                "Month of procedure 67"
label var PRMONTH68                "Month of procedure 68"
label var PRMONTH69                "Month of procedure 69"
label var PRMONTH70                "Month of procedure 70"
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
label var PRYEAR67                 "Year of procedure 67"
label var PRYEAR68                 "Year of procedure 68"
label var PRYEAR69                 "Year of procedure 69"
label var PRYEAR70                 "Year of procedure 70"

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
recode DRGVER                    (-9 -8 -6 -5=.)
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NECAUSE               (-9 -8 -6 -5=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
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
recode PRDAY67                   (-9999 -8888 -6666=.)
recode PRDAY68                   (-9999 -8888 -6666=.)
recode PRDAY69                   (-9999 -8888 -6666=.)
recode PRDAY70                   (-9999 -8888 -6666=.)
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
recode PRMONTH67                 (-9 -8 -6 -5=.)
recode PRMONTH68                 (-9 -8 -6 -5=.)
recode PRMONTH69                 (-9 -8 -6 -5=.)
recode PRMONTH70                 (-9 -8 -6 -5=.)
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
recode PRYEAR67                  (-999 -888 -666=.)
recode PRYEAR68                  (-999 -888 -666=.)
recode PRYEAR69                  (-999 -888 -666=.)
recode PRYEAR70                  (-999 -888 -666=.)

save "MA_SID_2016_CORE.dta", replace
