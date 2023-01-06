/*****************************************************************************
* Creation Date: 10/13/2020   
* MN_SID_2019_CORE.Do
* This program will load the 2019 MN ASCII CORE File into Stata.
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
      byte   DISPUB04                    39-  40   ///
      byte   DISPUNIFORM                 41-  42   ///
      str    DISP_X                      43-  44   ///
      byte   DMONTH                      45-  46   ///
      byte   DQTR                        47-  48   ///
      int    DRG                         49-  51   ///
      byte   DRGVER                      52-  53   ///
      int    DRG_NoPOA                   54-  56   ///
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
      str    DXPOA51                    107        ///
      str    DXPOA52                    108        ///
      str    DXPOA53                    109        ///
      str    DXPOA54                    110        ///
      str    DXPOA55                    111        ///
      str    DXPOA56                    112        ///
      str    DXPOA57                    113        ///
      str    DXPOA58                    114        ///
      str    DXPOA59                    115        ///
      str    DXPOA60                    116        ///
      str    DXPOA61                    117        ///
      str    DXPOA62                    118        ///
      str    DXPOA63                    119        ///
      str    DXPOA64                    120        ///
      str    DXPOA65                    121        ///
      str    DXPOA66                    122        ///
      str    DXPOA67                    123        ///
      str    DXPOA68                    124        ///
      str    DXPOA69                    125        ///
      str    DXPOA70                    126        ///
      str    DXPOA71                    127        ///
      str    DXPOA72                    128        ///
      str    DXPOA73                    129        ///
      str    DXPOA74                    130        ///
      str    DXPOA75                    131        ///
      str    DXPOA76                    132        ///
      str    DXPOA77                    133        ///
      str    DXPOA78                    134        ///
      str    DXPOA79                    135        ///
      str    DXPOA80                    136        ///
      str    DXPOA81                    137        ///
      str    DXPOA82                    138        ///
      str    DXPOA83                    139        ///
      str    DXPOA84                    140        ///
      str    DXPOA85                    141        ///
      str    DXPOA86                    142        ///
      byte   FEMALE                     143- 144   ///
      byte   HCUP_ED                    145- 146   ///
      byte   HCUP_OS                    147- 148   ///
      byte   HISPANIC                   149- 150   ///
      str    HISPANIC_X                 151- 152   ///
      str    HOSPST                     153- 154   ///
      byte   I10_BIRTH                  155- 156   ///
      byte   I10_DELIVERY               157- 158   ///
      str    I10_DX1                    159- 165   ///
      str    I10_DX2                    166- 172   ///
      str    I10_DX3                    173- 179   ///
      str    I10_DX4                    180- 186   ///
      str    I10_DX5                    187- 193   ///
      str    I10_DX6                    194- 200   ///
      str    I10_DX7                    201- 207   ///
      str    I10_DX8                    208- 214   ///
      str    I10_DX9                    215- 221   ///
      str    I10_DX10                   222- 228   ///
      str    I10_DX11                   229- 235   ///
      str    I10_DX12                   236- 242   ///
      str    I10_DX13                   243- 249   ///
      str    I10_DX14                   250- 256   ///
      str    I10_DX15                   257- 263   ///
      str    I10_DX16                   264- 270   ///
      str    I10_DX17                   271- 277   ///
      str    I10_DX18                   278- 284   ///
      str    I10_DX19                   285- 291   ///
      str    I10_DX20                   292- 298   ///
      str    I10_DX21                   299- 305   ///
      str    I10_DX22                   306- 312   ///
      str    I10_DX23                   313- 319   ///
      str    I10_DX24                   320- 326   ///
      str    I10_DX25                   327- 333   ///
      str    I10_DX26                   334- 340   ///
      str    I10_DX27                   341- 347   ///
      str    I10_DX28                   348- 354   ///
      str    I10_DX29                   355- 361   ///
      str    I10_DX30                   362- 368   ///
      str    I10_DX31                   369- 375   ///
      str    I10_DX32                   376- 382   ///
      str    I10_DX33                   383- 389   ///
      str    I10_DX34                   390- 396   ///
      str    I10_DX35                   397- 403   ///
      str    I10_DX36                   404- 410   ///
      str    I10_DX37                   411- 417   ///
      str    I10_DX38                   418- 424   ///
      str    I10_DX39                   425- 431   ///
      str    I10_DX40                   432- 438   ///
      str    I10_DX41                   439- 445   ///
      str    I10_DX42                   446- 452   ///
      str    I10_DX43                   453- 459   ///
      str    I10_DX44                   460- 466   ///
      str    I10_DX45                   467- 473   ///
      str    I10_DX46                   474- 480   ///
      str    I10_DX47                   481- 487   ///
      str    I10_DX48                   488- 494   ///
      str    I10_DX49                   495- 501   ///
      str    I10_DX50                   502- 508   ///
      str    I10_DX51                   509- 515   ///
      str    I10_DX52                   516- 522   ///
      str    I10_DX53                   523- 529   ///
      str    I10_DX54                   530- 536   ///
      str    I10_DX55                   537- 543   ///
      str    I10_DX56                   544- 550   ///
      str    I10_DX57                   551- 557   ///
      str    I10_DX58                   558- 564   ///
      str    I10_DX59                   565- 571   ///
      str    I10_DX60                   572- 578   ///
      str    I10_DX61                   579- 585   ///
      str    I10_DX62                   586- 592   ///
      str    I10_DX63                   593- 599   ///
      str    I10_DX64                   600- 606   ///
      str    I10_DX65                   607- 613   ///
      str    I10_DX66                   614- 620   ///
      str    I10_DX67                   621- 627   ///
      str    I10_DX68                   628- 634   ///
      str    I10_DX69                   635- 641   ///
      str    I10_DX70                   642- 648   ///
      str    I10_DX71                   649- 655   ///
      str    I10_DX72                   656- 662   ///
      str    I10_DX73                   663- 669   ///
      str    I10_DX74                   670- 676   ///
      str    I10_DX75                   677- 683   ///
      str    I10_DX76                   684- 690   ///
      str    I10_DX77                   691- 697   ///
      str    I10_DX78                   698- 704   ///
      str    I10_DX79                   705- 711   ///
      str    I10_DX80                   712- 718   ///
      str    I10_DX81                   719- 725   ///
      str    I10_DX82                   726- 732   ///
      str    I10_DX83                   733- 739   ///
      str    I10_DX84                   740- 746   ///
      str    I10_DX85                   747- 753   ///
      str    I10_DX86                   754- 760   ///
      str    I10_DX_Admitting           761- 767   ///
      int    I10_NDX                    768- 770   ///
      int    I10_NPR                    771- 773   ///
      byte   I10_ORPROC                 774- 775   ///
      str    I10_PR1                    776- 782   ///
      str    I10_PR2                    783- 789   ///
      str    I10_PR3                    790- 796   ///
      str    I10_PR4                    797- 803   ///
      str    I10_PR5                    804- 810   ///
      str    I10_PR6                    811- 817   ///
      str    I10_PR7                    818- 824   ///
      str    I10_PR8                    825- 831   ///
      str    I10_PR9                    832- 838   ///
      str    I10_PR10                   839- 845   ///
      str    I10_PR11                   846- 852   ///
      str    I10_PR12                   853- 859   ///
      str    I10_PR13                   860- 866   ///
      str    I10_PR14                   867- 873   ///
      str    I10_PR15                   874- 880   ///
      str    I10_PR16                   881- 887   ///
      str    I10_PR17                   888- 894   ///
      str    I10_PR18                   895- 901   ///
      str    I10_PR19                   902- 908   ///
      str    I10_PR20                   909- 915   ///
      str    I10_PR21                   916- 922   ///
      str    I10_PR22                   923- 929   ///
      str    I10_PR23                   930- 936   ///
      str    I10_PR24                   937- 943   ///
      str    I10_PR25                   944- 950   ///
      str    I10_PR26                   951- 957   ///
      str    I10_PR27                   958- 964   ///
      str    I10_PR28                   965- 971   ///
      str    I10_PR29                   972- 978   ///
      str    I10_PR30                   979- 985   ///
      str    I10_PR31                   986- 992   ///
      str    I10_PR32                   993- 999   ///
      str    I10_PR33                  1000-1006   ///
      str    I10_PR34                  1007-1013   ///
      str    I10_PR35                  1014-1020   ///
      str    I10_PR36                  1021-1027   ///
      str    I10_PR37                  1028-1034   ///
      str    I10_PR38                  1035-1041   ///
      str    I10_PR39                  1042-1048   ///
      str    I10_PR40                  1049-1055   ///
      str    I10_PR41                  1056-1062   ///
      str    I10_PR42                  1063-1069   ///
      str    I10_PR43                  1070-1076   ///
      str    I10_PR44                  1077-1083   ///
      str    I10_PR45                  1084-1090   ///
      str    I10_PR46                  1091-1097   ///
      str    I10_PR47                  1098-1104   ///
      str    I10_PR48                  1105-1111   ///
      str    I10_PR49                  1112-1118   ///
      str    I10_PR50                  1119-1125   ///
      str    I10_PR51                  1126-1132   ///
      str    I10_PR52                  1133-1139   ///
      str    I10_PR53                  1140-1146   ///
      str    I10_PR54                  1147-1153   ///
      str    I10_PR55                  1154-1160   ///
      str    I10_PR56                  1161-1167   ///
      str    I10_PR57                  1168-1174   ///
      str    I10_PR58                  1175-1181   ///
      str    I10_PR59                  1182-1188   ///
      str    I10_PR60                  1189-1195   ///
      str    I10_PR61                  1196-1202   ///
      str    I10_PR62                  1203-1209   ///
      str    I10_PR63                  1210-1216   ///
      str    I10_PR64                  1217-1223   ///
      str    I10_PR65                  1224-1230   ///
      str    I10_PR66                  1231-1237   ///
      str    I10_PR67                  1238-1244   ///
      str    I10_PR68                  1245-1251   ///
      str    I10_PR69                  1252-1258   ///
      str    I10_PR70                  1259-1265   ///
      str    I10_PR71                  1266-1272   ///
      str    I10_PR72                  1273-1279   ///
      str    I10_PR73                  1280-1286   ///
      str    I10_PR74                  1287-1293   ///
      str    I10_PR75                  1294-1300   ///
      str    I10_PR76                  1301-1307   ///
      str    I10_PR77                  1308-1314   ///
      str    I10_PR78                  1315-1321   ///
      str    I10_PR79                  1322-1328   ///
      str    I10_PR80                  1329-1335   ///
      int    I10_PROCTYPE              1336-1338   ///
      byte   I10_SERVICELINE           1339-1340   ///
      double KEY                       1341-1355   ///
      long   LOS                       1356-1360   ///
      long   LOS_X                     1361-1366   ///
      byte   MDC                       1367-1368   ///
      byte   MDC_NoPOA                 1369-1370   ///
      byte   MEDINCSTQ                 1371-1372   ///
      long   MRN_R                     1373-1381   ///
      double OS_TIME                   1382-1392   ///
      byte   PAY1                      1393-1394   ///
      str    PAY1_X                    1395-1401   ///
      byte   PAY2                      1402-1403   ///
      str    PAY2_X                    1404-1410   ///
      byte   PAY3                      1411-1412   ///
      str    PAY3_X                    1413-1419   ///
      int    PL_CBSA                   1420-1422   ///
      byte   PL_NCHS                   1423-1424   ///
      byte   PL_RUCC                   1425-1426   ///
      byte   PL_UIC                    1427-1428   ///
      byte   PL_UR_CAT4                1429-1430   ///
      byte   POA_Disch_Edit1           1431-1432   ///
      byte   POA_Disch_Edit2           1433-1434   ///
      byte   POA_Hosp_Edit1            1435-1436   ///
      byte   POA_Hosp_Edit2            1437-1438   ///
      byte   POA_Hosp_Edit3            1439-1440   ///
      double POA_Hosp_Edit3_Value      1441-1448   ///
      long   PRDAY1                    1449-1453   ///
      long   PRDAY2                    1454-1458   ///
      long   PRDAY3                    1459-1463   ///
      long   PRDAY4                    1464-1468   ///
      long   PRDAY5                    1469-1473   ///
      long   PRDAY6                    1474-1478   ///
      long   PRDAY7                    1479-1483   ///
      long   PRDAY8                    1484-1488   ///
      long   PRDAY9                    1489-1493   ///
      long   PRDAY10                   1494-1498   ///
      long   PRDAY11                   1499-1503   ///
      long   PRDAY12                   1504-1508   ///
      long   PRDAY13                   1509-1513   ///
      long   PRDAY14                   1514-1518   ///
      long   PRDAY15                   1519-1523   ///
      long   PRDAY16                   1524-1528   ///
      long   PRDAY17                   1529-1533   ///
      long   PRDAY18                   1534-1538   ///
      long   PRDAY19                   1539-1543   ///
      long   PRDAY20                   1544-1548   ///
      long   PRDAY21                   1549-1553   ///
      long   PRDAY22                   1554-1558   ///
      long   PRDAY23                   1559-1563   ///
      long   PRDAY24                   1564-1568   ///
      long   PRDAY25                   1569-1573   ///
      long   PRDAY26                   1574-1578   ///
      long   PRDAY27                   1579-1583   ///
      long   PRDAY28                   1584-1588   ///
      long   PRDAY29                   1589-1593   ///
      long   PRDAY30                   1594-1598   ///
      long   PRDAY31                   1599-1603   ///
      long   PRDAY32                   1604-1608   ///
      long   PRDAY33                   1609-1613   ///
      long   PRDAY34                   1614-1618   ///
      long   PRDAY35                   1619-1623   ///
      long   PRDAY36                   1624-1628   ///
      long   PRDAY37                   1629-1633   ///
      long   PRDAY38                   1634-1638   ///
      long   PRDAY39                   1639-1643   ///
      long   PRDAY40                   1644-1648   ///
      long   PRDAY41                   1649-1653   ///
      long   PRDAY42                   1654-1658   ///
      long   PRDAY43                   1659-1663   ///
      long   PRDAY44                   1664-1668   ///
      long   PRDAY45                   1669-1673   ///
      long   PRDAY46                   1674-1678   ///
      long   PRDAY47                   1679-1683   ///
      long   PRDAY48                   1684-1688   ///
      long   PRDAY49                   1689-1693   ///
      long   PRDAY50                   1694-1698   ///
      long   PRDAY51                   1699-1703   ///
      long   PRDAY52                   1704-1708   ///
      long   PRDAY53                   1709-1713   ///
      long   PRDAY54                   1714-1718   ///
      long   PRDAY55                   1719-1723   ///
      long   PRDAY56                   1724-1728   ///
      long   PRDAY57                   1729-1733   ///
      long   PRDAY58                   1734-1738   ///
      long   PRDAY59                   1739-1743   ///
      long   PRDAY60                   1744-1748   ///
      long   PRDAY61                   1749-1753   ///
      long   PRDAY62                   1754-1758   ///
      long   PRDAY63                   1759-1763   ///
      long   PRDAY64                   1764-1768   ///
      long   PRDAY65                   1769-1773   ///
      long   PRDAY66                   1774-1778   ///
      long   PRDAY67                   1779-1783   ///
      long   PRDAY68                   1784-1788   ///
      long   PRDAY69                   1789-1793   ///
      long   PRDAY70                   1794-1798   ///
      long   PRDAY71                   1799-1803   ///
      long   PRDAY72                   1804-1808   ///
      long   PRDAY73                   1809-1813   ///
      long   PRDAY74                   1814-1818   ///
      long   PRDAY75                   1819-1823   ///
      long   PRDAY76                   1824-1828   ///
      long   PRDAY77                   1829-1833   ///
      long   PRDAY78                   1834-1838   ///
      long   PRDAY79                   1839-1843   ///
      long   PRDAY80                   1844-1848   ///
      str    PSTATE                    1849-1850   ///
      str    PSTATE_GEO                1851-1852   ///
      long   PSTCO_GEO                 1853-1857   ///
      str    PointOfOriginUB04         1858        ///
      str    PointOfOrigin_X           1859        ///
      str    PrimLang                  1860-1862   ///
      byte   RACE                      1863-1864   ///
      byte   RACE_EDIT                 1865-1866   ///
      str    RACE_X                    1867-1886   ///
      double TOTCHG                    1887-1896   ///
      double TOTCHG_X                  1897-1911   ///
      byte   TRAN_IN                   1912-1913   ///
      byte   TRAN_OUT                  1914-1915   ///
      int    YEAR                      1916-1919   ///
      str    ZIP                       1920-1924   ///
      str    ZIP3                      1925-1927   ///
      int    ZIPINC_QRTL               1928-1930   ///
      int    AYEAR                     1931-1934   ///
      byte   BMONTH                    1935-1936   ///
      int    BYEAR                     1937-1940   ///
      byte   PRMONTH1                  1941-1942   ///
      byte   PRMONTH2                  1943-1944   ///
      byte   PRMONTH3                  1945-1946   ///
      byte   PRMONTH4                  1947-1948   ///
      byte   PRMONTH5                  1949-1950   ///
      byte   PRMONTH6                  1951-1952   ///
      byte   PRMONTH7                  1953-1954   ///
      byte   PRMONTH8                  1955-1956   ///
      byte   PRMONTH9                  1957-1958   ///
      byte   PRMONTH10                 1959-1960   ///
      byte   PRMONTH11                 1961-1962   ///
      byte   PRMONTH12                 1963-1964   ///
      byte   PRMONTH13                 1965-1966   ///
      byte   PRMONTH14                 1967-1968   ///
      byte   PRMONTH15                 1969-1970   ///
      byte   PRMONTH16                 1971-1972   ///
      byte   PRMONTH17                 1973-1974   ///
      byte   PRMONTH18                 1975-1976   ///
      byte   PRMONTH19                 1977-1978   ///
      byte   PRMONTH20                 1979-1980   ///
      byte   PRMONTH21                 1981-1982   ///
      byte   PRMONTH22                 1983-1984   ///
      byte   PRMONTH23                 1985-1986   ///
      byte   PRMONTH24                 1987-1988   ///
      byte   PRMONTH25                 1989-1990   ///
      byte   PRMONTH26                 1991-1992   ///
      byte   PRMONTH27                 1993-1994   ///
      byte   PRMONTH28                 1995-1996   ///
      byte   PRMONTH29                 1997-1998   ///
      byte   PRMONTH30                 1999-2000   ///
      byte   PRMONTH31                 2001-2002   ///
      byte   PRMONTH32                 2003-2004   ///
      byte   PRMONTH33                 2005-2006   ///
      byte   PRMONTH34                 2007-2008   ///
      byte   PRMONTH35                 2009-2010   ///
      byte   PRMONTH36                 2011-2012   ///
      byte   PRMONTH37                 2013-2014   ///
      byte   PRMONTH38                 2015-2016   ///
      byte   PRMONTH39                 2017-2018   ///
      byte   PRMONTH40                 2019-2020   ///
      byte   PRMONTH41                 2021-2022   ///
      byte   PRMONTH42                 2023-2024   ///
      byte   PRMONTH43                 2025-2026   ///
      byte   PRMONTH44                 2027-2028   ///
      byte   PRMONTH45                 2029-2030   ///
      byte   PRMONTH46                 2031-2032   ///
      byte   PRMONTH47                 2033-2034   ///
      byte   PRMONTH48                 2035-2036   ///
      byte   PRMONTH49                 2037-2038   ///
      byte   PRMONTH50                 2039-2040   ///
      byte   PRMONTH51                 2041-2042   ///
      byte   PRMONTH52                 2043-2044   ///
      byte   PRMONTH53                 2045-2046   ///
      byte   PRMONTH54                 2047-2048   ///
      byte   PRMONTH55                 2049-2050   ///
      byte   PRMONTH56                 2051-2052   ///
      byte   PRMONTH57                 2053-2054   ///
      byte   PRMONTH58                 2055-2056   ///
      byte   PRMONTH59                 2057-2058   ///
      byte   PRMONTH60                 2059-2060   ///
      byte   PRMONTH61                 2061-2062   ///
      byte   PRMONTH62                 2063-2064   ///
      byte   PRMONTH63                 2065-2066   ///
      byte   PRMONTH64                 2067-2068   ///
      byte   PRMONTH65                 2069-2070   ///
      byte   PRMONTH66                 2071-2072   ///
      byte   PRMONTH67                 2073-2074   ///
      byte   PRMONTH68                 2075-2076   ///
      byte   PRMONTH69                 2077-2078   ///
      byte   PRMONTH70                 2079-2080   ///
      byte   PRMONTH71                 2081-2082   ///
      byte   PRMONTH72                 2083-2084   ///
      byte   PRMONTH73                 2085-2086   ///
      byte   PRMONTH74                 2087-2088   ///
      byte   PRMONTH75                 2089-2090   ///
      byte   PRMONTH76                 2091-2092   ///
      byte   PRMONTH77                 2093-2094   ///
      byte   PRMONTH78                 2095-2096   ///
      byte   PRMONTH79                 2097-2098   ///
      byte   PRMONTH80                 2099-2100   ///
      int    PRYEAR1                   2101-2104   ///
      int    PRYEAR2                   2105-2108   ///
      int    PRYEAR3                   2109-2112   ///
      int    PRYEAR4                   2113-2116   ///
      int    PRYEAR5                   2117-2120   ///
      int    PRYEAR6                   2121-2124   ///
      int    PRYEAR7                   2125-2128   ///
      int    PRYEAR8                   2129-2132   ///
      int    PRYEAR9                   2133-2136   ///
      int    PRYEAR10                  2137-2140   ///
      int    PRYEAR11                  2141-2144   ///
      int    PRYEAR12                  2145-2148   ///
      int    PRYEAR13                  2149-2152   ///
      int    PRYEAR14                  2153-2156   ///
      int    PRYEAR15                  2157-2160   ///
      int    PRYEAR16                  2161-2164   ///
      int    PRYEAR17                  2165-2168   ///
      int    PRYEAR18                  2169-2172   ///
      int    PRYEAR19                  2173-2176   ///
      int    PRYEAR20                  2177-2180   ///
      int    PRYEAR21                  2181-2184   ///
      int    PRYEAR22                  2185-2188   ///
      int    PRYEAR23                  2189-2192   ///
      int    PRYEAR24                  2193-2196   ///
      int    PRYEAR25                  2197-2200   ///
      int    PRYEAR26                  2201-2204   ///
      int    PRYEAR27                  2205-2208   ///
      int    PRYEAR28                  2209-2212   ///
      int    PRYEAR29                  2213-2216   ///
      int    PRYEAR30                  2217-2220   ///
      int    PRYEAR31                  2221-2224   ///
      int    PRYEAR32                  2225-2228   ///
      int    PRYEAR33                  2229-2232   ///
      int    PRYEAR34                  2233-2236   ///
      int    PRYEAR35                  2237-2240   ///
      int    PRYEAR36                  2241-2244   ///
      int    PRYEAR37                  2245-2248   ///
      int    PRYEAR38                  2249-2252   ///
      int    PRYEAR39                  2253-2256   ///
      int    PRYEAR40                  2257-2260   ///
      int    PRYEAR41                  2261-2264   ///
      int    PRYEAR42                  2265-2268   ///
      int    PRYEAR43                  2269-2272   ///
      int    PRYEAR44                  2273-2276   ///
      int    PRYEAR45                  2277-2280   ///
      int    PRYEAR46                  2281-2284   ///
      int    PRYEAR47                  2285-2288   ///
      int    PRYEAR48                  2289-2292   ///
      int    PRYEAR49                  2293-2296   ///
      int    PRYEAR50                  2297-2300   ///
      int    PRYEAR51                  2301-2304   ///
      int    PRYEAR52                  2305-2308   ///
      int    PRYEAR53                  2309-2312   ///
      int    PRYEAR54                  2313-2316   ///
      int    PRYEAR55                  2317-2320   ///
      int    PRYEAR56                  2321-2324   ///
      int    PRYEAR57                  2325-2328   ///
      int    PRYEAR58                  2329-2332   ///
      int    PRYEAR59                  2333-2336   ///
      int    PRYEAR60                  2337-2340   ///
      int    PRYEAR61                  2341-2344   ///
      int    PRYEAR62                  2345-2348   ///
      int    PRYEAR63                  2349-2352   ///
      int    PRYEAR64                  2353-2356   ///
      int    PRYEAR65                  2357-2360   ///
      int    PRYEAR66                  2361-2364   ///
      int    PRYEAR67                  2365-2368   ///
      int    PRYEAR68                  2369-2372   ///
      int    PRYEAR69                  2373-2376   ///
      int    PRYEAR70                  2377-2380   ///
      int    PRYEAR71                  2381-2384   ///
      int    PRYEAR72                  2385-2388   ///
      int    PRYEAR73                  2389-2392   ///
      int    PRYEAR74                  2393-2396   ///
      int    PRYEAR75                  2397-2400   ///
      int    PRYEAR76                  2401-2404   ///
      int    PRYEAR77                  2405-2408   ///
      int    PRYEAR78                  2409-2412   ///
      int    PRYEAR79                  2413-2416   ///
      int    PRYEAR80                  2417-2420   ///
      using  "MN_SID_2019_CORE.ASC"

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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
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
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PrimLang                 "Primary language of patient"
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
label var PRMONTH71                "Month of procedure 71"
label var PRMONTH72                "Month of procedure 72"
label var PRMONTH73                "Month of procedure 73"
label var PRMONTH74                "Month of procedure 74"
label var PRMONTH75                "Month of procedure 75"
label var PRMONTH76                "Month of procedure 76"
label var PRMONTH77                "Month of procedure 77"
label var PRMONTH78                "Month of procedure 78"
label var PRMONTH79                "Month of procedure 79"
label var PRMONTH80                "Month of procedure 80"
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
label var PRYEAR71                 "Year of procedure 71"
label var PRYEAR72                 "Year of procedure 72"
label var PRYEAR73                 "Year of procedure 73"
label var PRYEAR74                 "Year of procedure 74"
label var PRYEAR75                 "Year of procedure 75"
label var PRYEAR76                 "Year of procedure 76"
label var PRYEAR77                 "Year of procedure 77"
label var PRYEAR78                 "Year of procedure 78"
label var PRYEAR79                 "Year of procedure 79"
label var PRYEAR80                 "Year of procedure 80"

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
recode DRGVER                    (-9 -8 -6 -5=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
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
recode PRMONTH71                 (-9 -8 -6 -5=.)
recode PRMONTH72                 (-9 -8 -6 -5=.)
recode PRMONTH73                 (-9 -8 -6 -5=.)
recode PRMONTH74                 (-9 -8 -6 -5=.)
recode PRMONTH75                 (-9 -8 -6 -5=.)
recode PRMONTH76                 (-9 -8 -6 -5=.)
recode PRMONTH77                 (-9 -8 -6 -5=.)
recode PRMONTH78                 (-9 -8 -6 -5=.)
recode PRMONTH79                 (-9 -8 -6 -5=.)
recode PRMONTH80                 (-9 -8 -6 -5=.)
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
recode PRYEAR71                  (-999 -888 -666=.)
recode PRYEAR72                  (-999 -888 -666=.)
recode PRYEAR73                  (-999 -888 -666=.)
recode PRYEAR74                  (-999 -888 -666=.)
recode PRYEAR75                  (-999 -888 -666=.)
recode PRYEAR76                  (-999 -888 -666=.)
recode PRYEAR77                  (-999 -888 -666=.)
recode PRYEAR78                  (-999 -888 -666=.)
recode PRYEAR79                  (-999 -888 -666=.)
recode PRYEAR80                  (-999 -888 -666=.)

save "MN_SID_2019_CORE.dta", replace
