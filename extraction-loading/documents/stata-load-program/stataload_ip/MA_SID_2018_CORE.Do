/*****************************************************************************
* Creation Date: 10/07/2020   
* MA_SID_2018_CORE.Do
* This program will load the 2018 MA ASCII CORE File into Stata.
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
      str    DXPOA72                    150        ///
      str    DXPOA73                    151        ///
      str    DXPOA74                    152        ///
      str    DXPOA75                    153        ///
      str    DXPOA76                    154        ///
      str    DXPOA77                    155        ///
      str    DXPOA78                    156        ///
      str    DXPOA79                    157        ///
      str    DXPOA80                    158        ///
      str    DXPOA81                    159        ///
      str    DXPOA82                    160        ///
      str    DXPOA83                    161        ///
      str    DXPOA84                    162        ///
      str    DXPOA85                    163        ///
      str    DXPOA86                    164        ///
      str    DXPOA87                    165        ///
      str    DXPOA88                    166        ///
      str    DXPOA89                    167        ///
      str    DXPOA90                    168        ///
      byte   FEMALE                     169- 170   ///
      byte   HCUP_ED                    171- 172   ///
      byte   HCUP_OS                    173- 174   ///
      byte   HISPANIC                   175- 176   ///
      str    HISPANIC_X                 177- 191   ///
      byte   Homeless                   192- 193   ///
      str    HOSPST                     194- 195   ///
      str    I10_DX_Admitting           196- 202   ///
      str    I10_DX1                    203- 209   ///
      str    I10_DX2                    210- 216   ///
      str    I10_DX3                    217- 223   ///
      str    I10_DX4                    224- 230   ///
      str    I10_DX5                    231- 237   ///
      str    I10_DX6                    238- 244   ///
      str    I10_DX7                    245- 251   ///
      str    I10_DX8                    252- 258   ///
      str    I10_DX9                    259- 265   ///
      str    I10_DX10                   266- 272   ///
      str    I10_DX11                   273- 279   ///
      str    I10_DX12                   280- 286   ///
      str    I10_DX13                   287- 293   ///
      str    I10_DX14                   294- 300   ///
      str    I10_DX15                   301- 307   ///
      str    I10_DX16                   308- 314   ///
      str    I10_DX17                   315- 321   ///
      str    I10_DX18                   322- 328   ///
      str    I10_DX19                   329- 335   ///
      str    I10_DX20                   336- 342   ///
      str    I10_DX21                   343- 349   ///
      str    I10_DX22                   350- 356   ///
      str    I10_DX23                   357- 363   ///
      str    I10_DX24                   364- 370   ///
      str    I10_DX25                   371- 377   ///
      str    I10_DX26                   378- 384   ///
      str    I10_DX27                   385- 391   ///
      str    I10_DX28                   392- 398   ///
      str    I10_DX29                   399- 405   ///
      str    I10_DX30                   406- 412   ///
      str    I10_DX31                   413- 419   ///
      str    I10_DX32                   420- 426   ///
      str    I10_DX33                   427- 433   ///
      str    I10_DX34                   434- 440   ///
      str    I10_DX35                   441- 447   ///
      str    I10_DX36                   448- 454   ///
      str    I10_DX37                   455- 461   ///
      str    I10_DX38                   462- 468   ///
      str    I10_DX39                   469- 475   ///
      str    I10_DX40                   476- 482   ///
      str    I10_DX41                   483- 489   ///
      str    I10_DX42                   490- 496   ///
      str    I10_DX43                   497- 503   ///
      str    I10_DX44                   504- 510   ///
      str    I10_DX45                   511- 517   ///
      str    I10_DX46                   518- 524   ///
      str    I10_DX47                   525- 531   ///
      str    I10_DX48                   532- 538   ///
      str    I10_DX49                   539- 545   ///
      str    I10_DX50                   546- 552   ///
      str    I10_DX51                   553- 559   ///
      str    I10_DX52                   560- 566   ///
      str    I10_DX53                   567- 573   ///
      str    I10_DX54                   574- 580   ///
      str    I10_DX55                   581- 587   ///
      str    I10_DX56                   588- 594   ///
      str    I10_DX57                   595- 601   ///
      str    I10_DX58                   602- 608   ///
      str    I10_DX59                   609- 615   ///
      str    I10_DX60                   616- 622   ///
      str    I10_DX61                   623- 629   ///
      str    I10_DX62                   630- 636   ///
      str    I10_DX63                   637- 643   ///
      str    I10_DX64                   644- 650   ///
      str    I10_DX65                   651- 657   ///
      str    I10_DX66                   658- 664   ///
      str    I10_DX67                   665- 671   ///
      str    I10_DX68                   672- 678   ///
      str    I10_DX69                   679- 685   ///
      str    I10_DX70                   686- 692   ///
      str    I10_DX71                   693- 699   ///
      str    I10_DX72                   700- 706   ///
      str    I10_DX73                   707- 713   ///
      str    I10_DX74                   714- 720   ///
      str    I10_DX75                   721- 727   ///
      str    I10_DX76                   728- 734   ///
      str    I10_DX77                   735- 741   ///
      str    I10_DX78                   742- 748   ///
      str    I10_DX79                   749- 755   ///
      str    I10_DX80                   756- 762   ///
      str    I10_DX81                   763- 769   ///
      str    I10_DX82                   770- 776   ///
      str    I10_DX83                   777- 783   ///
      str    I10_DX84                   784- 790   ///
      str    I10_DX85                   791- 797   ///
      str    I10_DX86                   798- 804   ///
      str    I10_DX87                   805- 811   ///
      str    I10_DX88                   812- 818   ///
      str    I10_DX89                   819- 825   ///
      str    I10_DX90                   826- 832   ///
      int    I10_NDX                    833- 835   ///
      int    I10_NPR                    836- 838   ///
      str    I10_PR1                    839- 845   ///
      str    I10_PR2                    846- 852   ///
      str    I10_PR3                    853- 859   ///
      str    I10_PR4                    860- 866   ///
      str    I10_PR5                    867- 873   ///
      str    I10_PR6                    874- 880   ///
      str    I10_PR7                    881- 887   ///
      str    I10_PR8                    888- 894   ///
      str    I10_PR9                    895- 901   ///
      str    I10_PR10                   902- 908   ///
      str    I10_PR11                   909- 915   ///
      str    I10_PR12                   916- 922   ///
      str    I10_PR13                   923- 929   ///
      str    I10_PR14                   930- 936   ///
      str    I10_PR15                   937- 943   ///
      str    I10_PR16                   944- 950   ///
      str    I10_PR17                   951- 957   ///
      str    I10_PR18                   958- 964   ///
      str    I10_PR19                   965- 971   ///
      str    I10_PR20                   972- 978   ///
      str    I10_PR21                   979- 985   ///
      str    I10_PR22                   986- 992   ///
      str    I10_PR23                   993- 999   ///
      str    I10_PR24                  1000-1006   ///
      str    I10_PR25                  1007-1013   ///
      str    I10_PR26                  1014-1020   ///
      str    I10_PR27                  1021-1027   ///
      str    I10_PR28                  1028-1034   ///
      str    I10_PR29                  1035-1041   ///
      str    I10_PR30                  1042-1048   ///
      str    I10_PR31                  1049-1055   ///
      str    I10_PR32                  1056-1062   ///
      str    I10_PR33                  1063-1069   ///
      str    I10_PR34                  1070-1076   ///
      str    I10_PR35                  1077-1083   ///
      str    I10_PR36                  1084-1090   ///
      str    I10_PR37                  1091-1097   ///
      str    I10_PR38                  1098-1104   ///
      str    I10_PR39                  1105-1111   ///
      str    I10_PR40                  1112-1118   ///
      str    I10_PR41                  1119-1125   ///
      str    I10_PR42                  1126-1132   ///
      str    I10_PR43                  1133-1139   ///
      str    I10_PR44                  1140-1146   ///
      str    I10_PR45                  1147-1153   ///
      str    I10_PR46                  1154-1160   ///
      str    I10_PR47                  1161-1167   ///
      str    I10_PR48                  1168-1174   ///
      str    I10_PR49                  1175-1181   ///
      str    I10_PR50                  1182-1188   ///
      str    I10_PR51                  1189-1195   ///
      str    I10_PR52                  1196-1202   ///
      str    I10_PR53                  1203-1209   ///
      str    I10_PR54                  1210-1216   ///
      str    I10_PR55                  1217-1223   ///
      str    I10_PR56                  1224-1230   ///
      str    I10_PR57                  1231-1237   ///
      str    I10_PR58                  1238-1244   ///
      str    I10_PR59                  1245-1251   ///
      str    I10_PR60                  1252-1258   ///
      str    I10_PR61                  1259-1265   ///
      str    I10_PR62                  1266-1272   ///
      str    I10_PR63                  1273-1279   ///
      str    I10_PR64                  1280-1286   ///
      str    I10_PR65                  1287-1293   ///
      str    I10_PR66                  1294-1300   ///
      str    I10_PR67                  1301-1307   ///
      str    I10_PR68                  1308-1314   ///
      str    I10_PR69                  1315-1321   ///
      str    I10_PR70                  1322-1328   ///
      str    I10_PR71                  1329-1335   ///
      str    I10_PR72                  1336-1342   ///
      str    I10_PR73                  1343-1349   ///
      str    I10_PR74                  1350-1356   ///
      str    I10_PR75                  1357-1363   ///
      str    I10_PR76                  1364-1370   ///
      str    I10_PR77                  1371-1377   ///
      str    I10_PR78                  1378-1384   ///
      str    I10_PR79                  1385-1391   ///
      str    I10_PR80                  1392-1398   ///
      str    I10_PR81                  1399-1405   ///
      str    I10_PR82                  1406-1412   ///
      str    I10_PR83                  1413-1419   ///
      str    I10_PR84                  1420-1426   ///
      str    I10_PR85                  1427-1433   ///
      str    I10_PR86                  1434-1440   ///
      str    I10_PR87                  1441-1447   ///
      str    I10_PR88                  1448-1454   ///
      str    I10_PR89                  1455-1461   ///
      str    I10_PR90                  1462-1468   ///
      str    I10_PR91                  1469-1475   ///
      str    I10_PR92                  1476-1482   ///
      str    I10_PR93                  1483-1489   ///
      str    I10_PR94                  1490-1496   ///
      str    I10_PR95                  1497-1503   ///
      str    I10_PR96                  1504-1510   ///
      str    I10_PR97                  1511-1517   ///
      str    I10_PR98                  1518-1524   ///
      str    I10_PR99                  1525-1531   ///
      str    I10_PR100                 1532-1538   ///
      str    I10_PR101                 1539-1545   ///
      str    I10_PR102                 1546-1552   ///
      str    I10_PR103                 1553-1559   ///
      str    I10_PR104                 1560-1566   ///
      str    I10_PR105                 1567-1573   ///
      str    I10_PR106                 1574-1580   ///
      str    I10_PR107                 1581-1587   ///
      str    I10_PR108                 1588-1594   ///
      str    I10_PR109                 1595-1601   ///
      str    I10_PR110                 1602-1608   ///
      str    I10_PR111                 1609-1615   ///
      str    I10_PR112                 1616-1622   ///
      str    I10_PR113                 1623-1629   ///
      str    I10_PR114                 1630-1636   ///
      str    I10_PR115                 1637-1643   ///
      str    I10_PR116                 1644-1650   ///
      str    I10_PR117                 1651-1657   ///
      str    I10_PR118                 1658-1664   ///
      str    I10_PR119                 1665-1671   ///
      str    I10_PR120                 1672-1678   ///
      str    I10_PR121                 1679-1685   ///
      str    I10_PR122                 1686-1692   ///
      str    I10_PR123                 1693-1699   ///
      str    I10_PR124                 1700-1706   ///
      str    I10_PR125                 1707-1713   ///
      str    I10_PR126                 1714-1720   ///
      str    I10_PR127                 1721-1727   ///
      int    I10_PROCTYPE              1728-1730   ///
      double KEY                       1731-1745   ///
      long   LOS                       1746-1750   ///
      long   LOS_X                     1751-1756   ///
      byte   MDC                       1757-1758   ///
      byte   MDC_NoPOA                 1759-1760   ///
      byte   MEDINCSTQ                 1761-1762   ///
      double OS_TIME                   1763-1773   ///
      byte   PAY1                      1774-1775   ///
      str    PAY1_X                    1776        ///
      byte   PAY2                      1777-1778   ///
      str    PAY2_X                    1779        ///
      str    PAYER1_X                  1780-1782   ///
      str    PAYER2_X                  1783-1785   ///
      int    PL_CBSA                   1786-1788   ///
      byte   PL_UR_CAT4                1789-1790   ///
      byte   POA_Disch_Edit1           1791-1792   ///
      byte   POA_Disch_Edit2           1793-1794   ///
      byte   POA_Hosp_Edit1            1795-1796   ///
      byte   POA_Hosp_Edit2            1797-1798   ///
      byte   POA_Hosp_Edit3            1799-1800   ///
      double POA_Hosp_Edit3_Value      1801-1808   ///
      long   PRDAY1                    1809-1813   ///
      long   PRDAY2                    1814-1818   ///
      long   PRDAY3                    1819-1823   ///
      long   PRDAY4                    1824-1828   ///
      long   PRDAY5                    1829-1833   ///
      long   PRDAY6                    1834-1838   ///
      long   PRDAY7                    1839-1843   ///
      long   PRDAY8                    1844-1848   ///
      long   PRDAY9                    1849-1853   ///
      long   PRDAY10                   1854-1858   ///
      long   PRDAY11                   1859-1863   ///
      long   PRDAY12                   1864-1868   ///
      long   PRDAY13                   1869-1873   ///
      long   PRDAY14                   1874-1878   ///
      long   PRDAY15                   1879-1883   ///
      long   PRDAY16                   1884-1888   ///
      long   PRDAY17                   1889-1893   ///
      long   PRDAY18                   1894-1898   ///
      long   PRDAY19                   1899-1903   ///
      long   PRDAY20                   1904-1908   ///
      long   PRDAY21                   1909-1913   ///
      long   PRDAY22                   1914-1918   ///
      long   PRDAY23                   1919-1923   ///
      long   PRDAY24                   1924-1928   ///
      long   PRDAY25                   1929-1933   ///
      long   PRDAY26                   1934-1938   ///
      long   PRDAY27                   1939-1943   ///
      long   PRDAY28                   1944-1948   ///
      long   PRDAY29                   1949-1953   ///
      long   PRDAY30                   1954-1958   ///
      long   PRDAY31                   1959-1963   ///
      long   PRDAY32                   1964-1968   ///
      long   PRDAY33                   1969-1973   ///
      long   PRDAY34                   1974-1978   ///
      long   PRDAY35                   1979-1983   ///
      long   PRDAY36                   1984-1988   ///
      long   PRDAY37                   1989-1993   ///
      long   PRDAY38                   1994-1998   ///
      long   PRDAY39                   1999-2003   ///
      long   PRDAY40                   2004-2008   ///
      long   PRDAY41                   2009-2013   ///
      long   PRDAY42                   2014-2018   ///
      long   PRDAY43                   2019-2023   ///
      long   PRDAY44                   2024-2028   ///
      long   PRDAY45                   2029-2033   ///
      long   PRDAY46                   2034-2038   ///
      long   PRDAY47                   2039-2043   ///
      long   PRDAY48                   2044-2048   ///
      long   PRDAY49                   2049-2053   ///
      long   PRDAY50                   2054-2058   ///
      long   PRDAY51                   2059-2063   ///
      long   PRDAY52                   2064-2068   ///
      long   PRDAY53                   2069-2073   ///
      long   PRDAY54                   2074-2078   ///
      long   PRDAY55                   2079-2083   ///
      long   PRDAY56                   2084-2088   ///
      long   PRDAY57                   2089-2093   ///
      long   PRDAY58                   2094-2098   ///
      long   PRDAY59                   2099-2103   ///
      long   PRDAY60                   2104-2108   ///
      long   PRDAY61                   2109-2113   ///
      long   PRDAY62                   2114-2118   ///
      long   PRDAY63                   2119-2123   ///
      long   PRDAY64                   2124-2128   ///
      long   PRDAY65                   2129-2133   ///
      long   PRDAY66                   2134-2138   ///
      long   PRDAY67                   2139-2143   ///
      long   PRDAY68                   2144-2148   ///
      long   PRDAY69                   2149-2153   ///
      long   PRDAY70                   2154-2158   ///
      long   PRDAY71                   2159-2163   ///
      long   PRDAY72                   2164-2168   ///
      long   PRDAY73                   2169-2173   ///
      long   PRDAY74                   2174-2178   ///
      long   PRDAY75                   2179-2183   ///
      long   PRDAY76                   2184-2188   ///
      long   PRDAY77                   2189-2193   ///
      long   PRDAY78                   2194-2198   ///
      long   PRDAY79                   2199-2203   ///
      long   PRDAY80                   2204-2208   ///
      long   PRDAY81                   2209-2213   ///
      long   PRDAY82                   2214-2218   ///
      long   PRDAY83                   2219-2223   ///
      long   PRDAY84                   2224-2228   ///
      long   PRDAY85                   2229-2233   ///
      long   PRDAY86                   2234-2238   ///
      long   PRDAY87                   2239-2243   ///
      long   PRDAY88                   2244-2248   ///
      long   PRDAY89                   2249-2253   ///
      long   PRDAY90                   2254-2258   ///
      long   PRDAY91                   2259-2263   ///
      long   PRDAY92                   2264-2268   ///
      long   PRDAY93                   2269-2273   ///
      long   PRDAY94                   2274-2278   ///
      long   PRDAY95                   2279-2283   ///
      long   PRDAY96                   2284-2288   ///
      long   PRDAY97                   2289-2293   ///
      long   PRDAY98                   2294-2298   ///
      long   PRDAY99                   2299-2303   ///
      long   PRDAY100                  2304-2308   ///
      long   PRDAY101                  2309-2313   ///
      long   PRDAY102                  2314-2318   ///
      long   PRDAY103                  2319-2323   ///
      long   PRDAY104                  2324-2328   ///
      long   PRDAY105                  2329-2333   ///
      long   PRDAY106                  2334-2338   ///
      long   PRDAY107                  2339-2343   ///
      long   PRDAY108                  2344-2348   ///
      long   PRDAY109                  2349-2353   ///
      long   PRDAY110                  2354-2358   ///
      long   PRDAY111                  2359-2363   ///
      long   PRDAY112                  2364-2368   ///
      long   PRDAY113                  2369-2373   ///
      long   PRDAY114                  2374-2378   ///
      long   PRDAY115                  2379-2383   ///
      long   PRDAY116                  2384-2388   ///
      long   PRDAY117                  2389-2393   ///
      long   PRDAY118                  2394-2398   ///
      long   PRDAY119                  2399-2403   ///
      long   PRDAY120                  2404-2408   ///
      long   PRDAY121                  2409-2413   ///
      long   PRDAY122                  2414-2418   ///
      long   PRDAY123                  2419-2423   ///
      long   PRDAY124                  2424-2428   ///
      long   PRDAY125                  2429-2433   ///
      long   PRDAY126                  2434-2438   ///
      long   PRDAY127                  2439-2443   ///
      str    PSTATE                    2444-2445   ///
      long   PSTCO2                    2446-2450   ///
      byte   RACE                      2451-2452   ///
      byte   RACE_EDIT                 2453-2454   ///
      str    RACE_X                    2455-2467   ///
      double TOTCHG                    2468-2477   ///
      double TOTCHG_X                  2478-2492   ///
      byte   TRAN_IN                   2493-2494   ///
      byte   TRAN_OUT                  2495-2496   ///
      long   VisitLink                 2497-2505   ///
      int    YEAR                      2506-2509   ///
      str    ZIP3                      2510-2512   ///
      int    ZIPINC_QRTL               2513-2515   ///
      int    AYEAR                     2516-2519   ///
      byte   PRMONTH1                  2520-2521   ///
      byte   PRMONTH2                  2522-2523   ///
      byte   PRMONTH3                  2524-2525   ///
      byte   PRMONTH4                  2526-2527   ///
      byte   PRMONTH5                  2528-2529   ///
      byte   PRMONTH6                  2530-2531   ///
      byte   PRMONTH7                  2532-2533   ///
      byte   PRMONTH8                  2534-2535   ///
      byte   PRMONTH9                  2536-2537   ///
      byte   PRMONTH10                 2538-2539   ///
      byte   PRMONTH11                 2540-2541   ///
      byte   PRMONTH12                 2542-2543   ///
      byte   PRMONTH13                 2544-2545   ///
      byte   PRMONTH14                 2546-2547   ///
      byte   PRMONTH15                 2548-2549   ///
      byte   PRMONTH16                 2550-2551   ///
      byte   PRMONTH17                 2552-2553   ///
      byte   PRMONTH18                 2554-2555   ///
      byte   PRMONTH19                 2556-2557   ///
      byte   PRMONTH20                 2558-2559   ///
      byte   PRMONTH21                 2560-2561   ///
      byte   PRMONTH22                 2562-2563   ///
      byte   PRMONTH23                 2564-2565   ///
      byte   PRMONTH24                 2566-2567   ///
      byte   PRMONTH25                 2568-2569   ///
      byte   PRMONTH26                 2570-2571   ///
      byte   PRMONTH27                 2572-2573   ///
      byte   PRMONTH28                 2574-2575   ///
      byte   PRMONTH29                 2576-2577   ///
      byte   PRMONTH30                 2578-2579   ///
      byte   PRMONTH31                 2580-2581   ///
      byte   PRMONTH32                 2582-2583   ///
      byte   PRMONTH33                 2584-2585   ///
      byte   PRMONTH34                 2586-2587   ///
      byte   PRMONTH35                 2588-2589   ///
      byte   PRMONTH36                 2590-2591   ///
      byte   PRMONTH37                 2592-2593   ///
      byte   PRMONTH38                 2594-2595   ///
      byte   PRMONTH39                 2596-2597   ///
      byte   PRMONTH40                 2598-2599   ///
      byte   PRMONTH41                 2600-2601   ///
      byte   PRMONTH42                 2602-2603   ///
      byte   PRMONTH43                 2604-2605   ///
      byte   PRMONTH44                 2606-2607   ///
      byte   PRMONTH45                 2608-2609   ///
      byte   PRMONTH46                 2610-2611   ///
      byte   PRMONTH47                 2612-2613   ///
      byte   PRMONTH48                 2614-2615   ///
      byte   PRMONTH49                 2616-2617   ///
      byte   PRMONTH50                 2618-2619   ///
      byte   PRMONTH51                 2620-2621   ///
      byte   PRMONTH52                 2622-2623   ///
      byte   PRMONTH53                 2624-2625   ///
      byte   PRMONTH54                 2626-2627   ///
      byte   PRMONTH55                 2628-2629   ///
      byte   PRMONTH56                 2630-2631   ///
      byte   PRMONTH57                 2632-2633   ///
      byte   PRMONTH58                 2634-2635   ///
      byte   PRMONTH59                 2636-2637   ///
      byte   PRMONTH60                 2638-2639   ///
      byte   PRMONTH61                 2640-2641   ///
      byte   PRMONTH62                 2642-2643   ///
      byte   PRMONTH63                 2644-2645   ///
      byte   PRMONTH64                 2646-2647   ///
      byte   PRMONTH65                 2648-2649   ///
      byte   PRMONTH66                 2650-2651   ///
      byte   PRMONTH67                 2652-2653   ///
      byte   PRMONTH68                 2654-2655   ///
      byte   PRMONTH69                 2656-2657   ///
      byte   PRMONTH70                 2658-2659   ///
      byte   PRMONTH71                 2660-2661   ///
      byte   PRMONTH72                 2662-2663   ///
      byte   PRMONTH73                 2664-2665   ///
      byte   PRMONTH74                 2666-2667   ///
      byte   PRMONTH75                 2668-2669   ///
      byte   PRMONTH76                 2670-2671   ///
      byte   PRMONTH77                 2672-2673   ///
      byte   PRMONTH78                 2674-2675   ///
      byte   PRMONTH79                 2676-2677   ///
      byte   PRMONTH80                 2678-2679   ///
      byte   PRMONTH81                 2680-2681   ///
      byte   PRMONTH82                 2682-2683   ///
      byte   PRMONTH83                 2684-2685   ///
      byte   PRMONTH84                 2686-2687   ///
      byte   PRMONTH85                 2688-2689   ///
      byte   PRMONTH86                 2690-2691   ///
      byte   PRMONTH87                 2692-2693   ///
      byte   PRMONTH88                 2694-2695   ///
      byte   PRMONTH89                 2696-2697   ///
      byte   PRMONTH90                 2698-2699   ///
      byte   PRMONTH91                 2700-2701   ///
      byte   PRMONTH92                 2702-2703   ///
      byte   PRMONTH93                 2704-2705   ///
      byte   PRMONTH94                 2706-2707   ///
      byte   PRMONTH95                 2708-2709   ///
      byte   PRMONTH96                 2710-2711   ///
      byte   PRMONTH97                 2712-2713   ///
      byte   PRMONTH98                 2714-2715   ///
      byte   PRMONTH99                 2716-2717   ///
      byte   PRMONTH100                2718-2719   ///
      byte   PRMONTH101                2720-2721   ///
      byte   PRMONTH102                2722-2723   ///
      byte   PRMONTH103                2724-2725   ///
      byte   PRMONTH104                2726-2727   ///
      byte   PRMONTH105                2728-2729   ///
      byte   PRMONTH106                2730-2731   ///
      byte   PRMONTH107                2732-2733   ///
      byte   PRMONTH108                2734-2735   ///
      byte   PRMONTH109                2736-2737   ///
      byte   PRMONTH110                2738-2739   ///
      byte   PRMONTH111                2740-2741   ///
      byte   PRMONTH112                2742-2743   ///
      byte   PRMONTH113                2744-2745   ///
      byte   PRMONTH114                2746-2747   ///
      byte   PRMONTH115                2748-2749   ///
      byte   PRMONTH116                2750-2751   ///
      byte   PRMONTH117                2752-2753   ///
      byte   PRMONTH118                2754-2755   ///
      byte   PRMONTH119                2756-2757   ///
      byte   PRMONTH120                2758-2759   ///
      byte   PRMONTH121                2760-2761   ///
      byte   PRMONTH122                2762-2763   ///
      byte   PRMONTH123                2764-2765   ///
      byte   PRMONTH124                2766-2767   ///
      byte   PRMONTH125                2768-2769   ///
      byte   PRMONTH126                2770-2771   ///
      byte   PRMONTH127                2772-2773   ///
      int    PRYEAR1                   2774-2777   ///
      int    PRYEAR2                   2778-2781   ///
      int    PRYEAR3                   2782-2785   ///
      int    PRYEAR4                   2786-2789   ///
      int    PRYEAR5                   2790-2793   ///
      int    PRYEAR6                   2794-2797   ///
      int    PRYEAR7                   2798-2801   ///
      int    PRYEAR8                   2802-2805   ///
      int    PRYEAR9                   2806-2809   ///
      int    PRYEAR10                  2810-2813   ///
      int    PRYEAR11                  2814-2817   ///
      int    PRYEAR12                  2818-2821   ///
      int    PRYEAR13                  2822-2825   ///
      int    PRYEAR14                  2826-2829   ///
      int    PRYEAR15                  2830-2833   ///
      int    PRYEAR16                  2834-2837   ///
      int    PRYEAR17                  2838-2841   ///
      int    PRYEAR18                  2842-2845   ///
      int    PRYEAR19                  2846-2849   ///
      int    PRYEAR20                  2850-2853   ///
      int    PRYEAR21                  2854-2857   ///
      int    PRYEAR22                  2858-2861   ///
      int    PRYEAR23                  2862-2865   ///
      int    PRYEAR24                  2866-2869   ///
      int    PRYEAR25                  2870-2873   ///
      int    PRYEAR26                  2874-2877   ///
      int    PRYEAR27                  2878-2881   ///
      int    PRYEAR28                  2882-2885   ///
      int    PRYEAR29                  2886-2889   ///
      int    PRYEAR30                  2890-2893   ///
      int    PRYEAR31                  2894-2897   ///
      int    PRYEAR32                  2898-2901   ///
      int    PRYEAR33                  2902-2905   ///
      int    PRYEAR34                  2906-2909   ///
      int    PRYEAR35                  2910-2913   ///
      int    PRYEAR36                  2914-2917   ///
      int    PRYEAR37                  2918-2921   ///
      int    PRYEAR38                  2922-2925   ///
      int    PRYEAR39                  2926-2929   ///
      int    PRYEAR40                  2930-2933   ///
      int    PRYEAR41                  2934-2937   ///
      int    PRYEAR42                  2938-2941   ///
      int    PRYEAR43                  2942-2945   ///
      int    PRYEAR44                  2946-2949   ///
      int    PRYEAR45                  2950-2953   ///
      int    PRYEAR46                  2954-2957   ///
      int    PRYEAR47                  2958-2961   ///
      int    PRYEAR48                  2962-2965   ///
      int    PRYEAR49                  2966-2969   ///
      int    PRYEAR50                  2970-2973   ///
      int    PRYEAR51                  2974-2977   ///
      int    PRYEAR52                  2978-2981   ///
      int    PRYEAR53                  2982-2985   ///
      int    PRYEAR54                  2986-2989   ///
      int    PRYEAR55                  2990-2993   ///
      int    PRYEAR56                  2994-2997   ///
      int    PRYEAR57                  2998-3001   ///
      int    PRYEAR58                  3002-3005   ///
      int    PRYEAR59                  3006-3009   ///
      int    PRYEAR60                  3010-3013   ///
      int    PRYEAR61                  3014-3017   ///
      int    PRYEAR62                  3018-3021   ///
      int    PRYEAR63                  3022-3025   ///
      int    PRYEAR64                  3026-3029   ///
      int    PRYEAR65                  3030-3033   ///
      int    PRYEAR66                  3034-3037   ///
      int    PRYEAR67                  3038-3041   ///
      int    PRYEAR68                  3042-3045   ///
      int    PRYEAR69                  3046-3049   ///
      int    PRYEAR70                  3050-3053   ///
      int    PRYEAR71                  3054-3057   ///
      int    PRYEAR72                  3058-3061   ///
      int    PRYEAR73                  3062-3065   ///
      int    PRYEAR74                  3066-3069   ///
      int    PRYEAR75                  3070-3073   ///
      int    PRYEAR76                  3074-3077   ///
      int    PRYEAR77                  3078-3081   ///
      int    PRYEAR78                  3082-3085   ///
      int    PRYEAR79                  3086-3089   ///
      int    PRYEAR80                  3090-3093   ///
      int    PRYEAR81                  3094-3097   ///
      int    PRYEAR82                  3098-3101   ///
      int    PRYEAR83                  3102-3105   ///
      int    PRYEAR84                  3106-3109   ///
      int    PRYEAR85                  3110-3113   ///
      int    PRYEAR86                  3114-3117   ///
      int    PRYEAR87                  3118-3121   ///
      int    PRYEAR88                  3122-3125   ///
      int    PRYEAR89                  3126-3129   ///
      int    PRYEAR90                  3130-3133   ///
      int    PRYEAR91                  3134-3137   ///
      int    PRYEAR92                  3138-3141   ///
      int    PRYEAR93                  3142-3145   ///
      int    PRYEAR94                  3146-3149   ///
      int    PRYEAR95                  3150-3153   ///
      int    PRYEAR96                  3154-3157   ///
      int    PRYEAR97                  3158-3161   ///
      int    PRYEAR98                  3162-3165   ///
      int    PRYEAR99                  3166-3169   ///
      int    PRYEAR100                 3170-3173   ///
      int    PRYEAR101                 3174-3177   ///
      int    PRYEAR102                 3178-3181   ///
      int    PRYEAR103                 3182-3185   ///
      int    PRYEAR104                 3186-3189   ///
      int    PRYEAR105                 3190-3193   ///
      int    PRYEAR106                 3194-3197   ///
      int    PRYEAR107                 3198-3201   ///
      int    PRYEAR108                 3202-3205   ///
      int    PRYEAR109                 3206-3209   ///
      int    PRYEAR110                 3210-3213   ///
      int    PRYEAR111                 3214-3217   ///
      int    PRYEAR112                 3218-3221   ///
      int    PRYEAR113                 3222-3225   ///
      int    PRYEAR114                 3226-3229   ///
      int    PRYEAR115                 3230-3233   ///
      int    PRYEAR116                 3234-3237   ///
      int    PRYEAR117                 3238-3241   ///
      int    PRYEAR118                 3242-3245   ///
      int    PRYEAR119                 3246-3249   ///
      int    PRYEAR120                 3250-3253   ///
      int    PRYEAR121                 3254-3257   ///
      int    PRYEAR122                 3258-3261   ///
      int    PRYEAR123                 3262-3265   ///
      int    PRYEAR124                 3266-3269   ///
      int    PRYEAR125                 3270-3273   ///
      int    PRYEAR126                 3274-3277   ///
      int    PRYEAR127                 3278-3281   ///
      using  "MA_SID_2018_CORE.ASC"

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
label var I10_PR101                "ICD-10-PCS Procedure 101"
label var I10_PR102                "ICD-10-PCS Procedure 102"
label var I10_PR103                "ICD-10-PCS Procedure 103"
label var I10_PR104                "ICD-10-PCS Procedure 104"
label var I10_PR105                "ICD-10-PCS Procedure 105"
label var I10_PR106                "ICD-10-PCS Procedure 106"
label var I10_PR107                "ICD-10-PCS Procedure 107"
label var I10_PR108                "ICD-10-PCS Procedure 108"
label var I10_PR109                "ICD-10-PCS Procedure 109"
label var I10_PR110                "ICD-10-PCS Procedure 110"
label var I10_PR111                "ICD-10-PCS Procedure 111"
label var I10_PR112                "ICD-10-PCS Procedure 112"
label var I10_PR113                "ICD-10-PCS Procedure 113"
label var I10_PR114                "ICD-10-PCS Procedure 114"
label var I10_PR115                "ICD-10-PCS Procedure 115"
label var I10_PR116                "ICD-10-PCS Procedure 116"
label var I10_PR117                "ICD-10-PCS Procedure 117"
label var I10_PR118                "ICD-10-PCS Procedure 118"
label var I10_PR119                "ICD-10-PCS Procedure 119"
label var I10_PR120                "ICD-10-PCS Procedure 120"
label var I10_PR121                "ICD-10-PCS Procedure 121"
label var I10_PR122                "ICD-10-PCS Procedure 122"
label var I10_PR123                "ICD-10-PCS Procedure 123"
label var I10_PR124                "ICD-10-PCS Procedure 124"
label var I10_PR125                "ICD-10-PCS Procedure 125"
label var I10_PR126                "ICD-10-PCS Procedure 126"
label var I10_PR127                "ICD-10-PCS Procedure 127"
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
label var PRDAY101                 "Number of days from admission to I10_PR101"
label var PRDAY102                 "Number of days from admission to I10_PR102"
label var PRDAY103                 "Number of days from admission to I10_PR103"
label var PRDAY104                 "Number of days from admission to I10_PR104"
label var PRDAY105                 "Number of days from admission to I10_PR105"
label var PRDAY106                 "Number of days from admission to I10_PR106"
label var PRDAY107                 "Number of days from admission to I10_PR107"
label var PRDAY108                 "Number of days from admission to I10_PR108"
label var PRDAY109                 "Number of days from admission to I10_PR109"
label var PRDAY110                 "Number of days from admission to I10_PR110"
label var PRDAY111                 "Number of days from admission to I10_PR111"
label var PRDAY112                 "Number of days from admission to I10_PR112"
label var PRDAY113                 "Number of days from admission to I10_PR113"
label var PRDAY114                 "Number of days from admission to I10_PR114"
label var PRDAY115                 "Number of days from admission to I10_PR115"
label var PRDAY116                 "Number of days from admission to I10_PR116"
label var PRDAY117                 "Number of days from admission to I10_PR117"
label var PRDAY118                 "Number of days from admission to I10_PR118"
label var PRDAY119                 "Number of days from admission to I10_PR119"
label var PRDAY120                 "Number of days from admission to I10_PR120"
label var PRDAY121                 "Number of days from admission to I10_PR121"
label var PRDAY122                 "Number of days from admission to I10_PR122"
label var PRDAY123                 "Number of days from admission to I10_PR123"
label var PRDAY124                 "Number of days from admission to I10_PR124"
label var PRDAY125                 "Number of days from admission to I10_PR125"
label var PRDAY126                 "Number of days from admission to I10_PR126"
label var PRDAY127                 "Number of days from admission to I10_PR127"
label var PSTATE                   "Patient State postal code"
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
label var PRMONTH81                "Month of procedure 81"
label var PRMONTH82                "Month of procedure 82"
label var PRMONTH83                "Month of procedure 83"
label var PRMONTH84                "Month of procedure 84"
label var PRMONTH85                "Month of procedure 85"
label var PRMONTH86                "Month of procedure 86"
label var PRMONTH87                "Month of procedure 87"
label var PRMONTH88                "Month of procedure 88"
label var PRMONTH89                "Month of procedure 89"
label var PRMONTH90                "Month of procedure 90"
label var PRMONTH91                "Month of procedure 91"
label var PRMONTH92                "Month of procedure 92"
label var PRMONTH93                "Month of procedure 93"
label var PRMONTH94                "Month of procedure 94"
label var PRMONTH95                "Month of procedure 95"
label var PRMONTH96                "Month of procedure 96"
label var PRMONTH97                "Month of procedure 97"
label var PRMONTH98                "Month of procedure 98"
label var PRMONTH99                "Month of procedure 99"
label var PRMONTH100               "Month of procedure 100"
label var PRMONTH101               "Month of procedure 101"
label var PRMONTH102               "Month of procedure 102"
label var PRMONTH103               "Month of procedure 103"
label var PRMONTH104               "Month of procedure 104"
label var PRMONTH105               "Month of procedure 105"
label var PRMONTH106               "Month of procedure 106"
label var PRMONTH107               "Month of procedure 107"
label var PRMONTH108               "Month of procedure 108"
label var PRMONTH109               "Month of procedure 109"
label var PRMONTH110               "Month of procedure 110"
label var PRMONTH111               "Month of procedure 111"
label var PRMONTH112               "Month of procedure 112"
label var PRMONTH113               "Month of procedure 113"
label var PRMONTH114               "Month of procedure 114"
label var PRMONTH115               "Month of procedure 115"
label var PRMONTH116               "Month of procedure 116"
label var PRMONTH117               "Month of procedure 117"
label var PRMONTH118               "Month of procedure 118"
label var PRMONTH119               "Month of procedure 119"
label var PRMONTH120               "Month of procedure 120"
label var PRMONTH121               "Month of procedure 121"
label var PRMONTH122               "Month of procedure 122"
label var PRMONTH123               "Month of procedure 123"
label var PRMONTH124               "Month of procedure 124"
label var PRMONTH125               "Month of procedure 125"
label var PRMONTH126               "Month of procedure 126"
label var PRMONTH127               "Month of procedure 127"
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
label var PRYEAR81                 "Year of procedure 81"
label var PRYEAR82                 "Year of procedure 82"
label var PRYEAR83                 "Year of procedure 83"
label var PRYEAR84                 "Year of procedure 84"
label var PRYEAR85                 "Year of procedure 85"
label var PRYEAR86                 "Year of procedure 86"
label var PRYEAR87                 "Year of procedure 87"
label var PRYEAR88                 "Year of procedure 88"
label var PRYEAR89                 "Year of procedure 89"
label var PRYEAR90                 "Year of procedure 90"
label var PRYEAR91                 "Year of procedure 91"
label var PRYEAR92                 "Year of procedure 92"
label var PRYEAR93                 "Year of procedure 93"
label var PRYEAR94                 "Year of procedure 94"
label var PRYEAR95                 "Year of procedure 95"
label var PRYEAR96                 "Year of procedure 96"
label var PRYEAR97                 "Year of procedure 97"
label var PRYEAR98                 "Year of procedure 98"
label var PRYEAR99                 "Year of procedure 99"
label var PRYEAR100                "Year of procedure 100"
label var PRYEAR101                "Year of procedure 101"
label var PRYEAR102                "Year of procedure 102"
label var PRYEAR103                "Year of procedure 103"
label var PRYEAR104                "Year of procedure 104"
label var PRYEAR105                "Year of procedure 105"
label var PRYEAR106                "Year of procedure 106"
label var PRYEAR107                "Year of procedure 107"
label var PRYEAR108                "Year of procedure 108"
label var PRYEAR109                "Year of procedure 109"
label var PRYEAR110                "Year of procedure 110"
label var PRYEAR111                "Year of procedure 111"
label var PRYEAR112                "Year of procedure 112"
label var PRYEAR113                "Year of procedure 113"
label var PRYEAR114                "Year of procedure 114"
label var PRYEAR115                "Year of procedure 115"
label var PRYEAR116                "Year of procedure 116"
label var PRYEAR117                "Year of procedure 117"
label var PRYEAR118                "Year of procedure 118"
label var PRYEAR119                "Year of procedure 119"
label var PRYEAR120                "Year of procedure 120"
label var PRYEAR121                "Year of procedure 121"
label var PRYEAR122                "Year of procedure 122"
label var PRYEAR123                "Year of procedure 123"
label var PRYEAR124                "Year of procedure 124"
label var PRYEAR125                "Year of procedure 125"
label var PRYEAR126                "Year of procedure 126"
label var PRYEAR127                "Year of procedure 127"

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
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
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
recode PRDAY101                  (-9999 -8888 -6666=.)
recode PRDAY102                  (-9999 -8888 -6666=.)
recode PRDAY103                  (-9999 -8888 -6666=.)
recode PRDAY104                  (-9999 -8888 -6666=.)
recode PRDAY105                  (-9999 -8888 -6666=.)
recode PRDAY106                  (-9999 -8888 -6666=.)
recode PRDAY107                  (-9999 -8888 -6666=.)
recode PRDAY108                  (-9999 -8888 -6666=.)
recode PRDAY109                  (-9999 -8888 -6666=.)
recode PRDAY110                  (-9999 -8888 -6666=.)
recode PRDAY111                  (-9999 -8888 -6666=.)
recode PRDAY112                  (-9999 -8888 -6666=.)
recode PRDAY113                  (-9999 -8888 -6666=.)
recode PRDAY114                  (-9999 -8888 -6666=.)
recode PRDAY115                  (-9999 -8888 -6666=.)
recode PRDAY116                  (-9999 -8888 -6666=.)
recode PRDAY117                  (-9999 -8888 -6666=.)
recode PRDAY118                  (-9999 -8888 -6666=.)
recode PRDAY119                  (-9999 -8888 -6666=.)
recode PRDAY120                  (-9999 -8888 -6666=.)
recode PRDAY121                  (-9999 -8888 -6666=.)
recode PRDAY122                  (-9999 -8888 -6666=.)
recode PRDAY123                  (-9999 -8888 -6666=.)
recode PRDAY124                  (-9999 -8888 -6666=.)
recode PRDAY125                  (-9999 -8888 -6666=.)
recode PRDAY126                  (-9999 -8888 -6666=.)
recode PRDAY127                  (-9999 -8888 -6666=.)
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
recode PRMONTH81                 (-9 -8 -6 -5=.)
recode PRMONTH82                 (-9 -8 -6 -5=.)
recode PRMONTH83                 (-9 -8 -6 -5=.)
recode PRMONTH84                 (-9 -8 -6 -5=.)
recode PRMONTH85                 (-9 -8 -6 -5=.)
recode PRMONTH86                 (-9 -8 -6 -5=.)
recode PRMONTH87                 (-9 -8 -6 -5=.)
recode PRMONTH88                 (-9 -8 -6 -5=.)
recode PRMONTH89                 (-9 -8 -6 -5=.)
recode PRMONTH90                 (-9 -8 -6 -5=.)
recode PRMONTH91                 (-9 -8 -6 -5=.)
recode PRMONTH92                 (-9 -8 -6 -5=.)
recode PRMONTH93                 (-9 -8 -6 -5=.)
recode PRMONTH94                 (-9 -8 -6 -5=.)
recode PRMONTH95                 (-9 -8 -6 -5=.)
recode PRMONTH96                 (-9 -8 -6 -5=.)
recode PRMONTH97                 (-9 -8 -6 -5=.)
recode PRMONTH98                 (-9 -8 -6 -5=.)
recode PRMONTH99                 (-9 -8 -6 -5=.)
recode PRMONTH100                (-9 -8 -6 -5=.)
recode PRMONTH101                (-9 -8 -6 -5=.)
recode PRMONTH102                (-9 -8 -6 -5=.)
recode PRMONTH103                (-9 -8 -6 -5=.)
recode PRMONTH104                (-9 -8 -6 -5=.)
recode PRMONTH105                (-9 -8 -6 -5=.)
recode PRMONTH106                (-9 -8 -6 -5=.)
recode PRMONTH107                (-9 -8 -6 -5=.)
recode PRMONTH108                (-9 -8 -6 -5=.)
recode PRMONTH109                (-9 -8 -6 -5=.)
recode PRMONTH110                (-9 -8 -6 -5=.)
recode PRMONTH111                (-9 -8 -6 -5=.)
recode PRMONTH112                (-9 -8 -6 -5=.)
recode PRMONTH113                (-9 -8 -6 -5=.)
recode PRMONTH114                (-9 -8 -6 -5=.)
recode PRMONTH115                (-9 -8 -6 -5=.)
recode PRMONTH116                (-9 -8 -6 -5=.)
recode PRMONTH117                (-9 -8 -6 -5=.)
recode PRMONTH118                (-9 -8 -6 -5=.)
recode PRMONTH119                (-9 -8 -6 -5=.)
recode PRMONTH120                (-9 -8 -6 -5=.)
recode PRMONTH121                (-9 -8 -6 -5=.)
recode PRMONTH122                (-9 -8 -6 -5=.)
recode PRMONTH123                (-9 -8 -6 -5=.)
recode PRMONTH124                (-9 -8 -6 -5=.)
recode PRMONTH125                (-9 -8 -6 -5=.)
recode PRMONTH126                (-9 -8 -6 -5=.)
recode PRMONTH127                (-9 -8 -6 -5=.)
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
recode PRYEAR81                  (-999 -888 -666=.)
recode PRYEAR82                  (-999 -888 -666=.)
recode PRYEAR83                  (-999 -888 -666=.)
recode PRYEAR84                  (-999 -888 -666=.)
recode PRYEAR85                  (-999 -888 -666=.)
recode PRYEAR86                  (-999 -888 -666=.)
recode PRYEAR87                  (-999 -888 -666=.)
recode PRYEAR88                  (-999 -888 -666=.)
recode PRYEAR89                  (-999 -888 -666=.)
recode PRYEAR90                  (-999 -888 -666=.)
recode PRYEAR91                  (-999 -888 -666=.)
recode PRYEAR92                  (-999 -888 -666=.)
recode PRYEAR93                  (-999 -888 -666=.)
recode PRYEAR94                  (-999 -888 -666=.)
recode PRYEAR95                  (-999 -888 -666=.)
recode PRYEAR96                  (-999 -888 -666=.)
recode PRYEAR97                  (-999 -888 -666=.)
recode PRYEAR98                  (-999 -888 -666=.)
recode PRYEAR99                  (-999 -888 -666=.)
recode PRYEAR100                 (-999 -888 -666=.)
recode PRYEAR101                 (-999 -888 -666=.)
recode PRYEAR102                 (-999 -888 -666=.)
recode PRYEAR103                 (-999 -888 -666=.)
recode PRYEAR104                 (-999 -888 -666=.)
recode PRYEAR105                 (-999 -888 -666=.)
recode PRYEAR106                 (-999 -888 -666=.)
recode PRYEAR107                 (-999 -888 -666=.)
recode PRYEAR108                 (-999 -888 -666=.)
recode PRYEAR109                 (-999 -888 -666=.)
recode PRYEAR110                 (-999 -888 -666=.)
recode PRYEAR111                 (-999 -888 -666=.)
recode PRYEAR112                 (-999 -888 -666=.)
recode PRYEAR113                 (-999 -888 -666=.)
recode PRYEAR114                 (-999 -888 -666=.)
recode PRYEAR115                 (-999 -888 -666=.)
recode PRYEAR116                 (-999 -888 -666=.)
recode PRYEAR117                 (-999 -888 -666=.)
recode PRYEAR118                 (-999 -888 -666=.)
recode PRYEAR119                 (-999 -888 -666=.)
recode PRYEAR120                 (-999 -888 -666=.)
recode PRYEAR121                 (-999 -888 -666=.)
recode PRYEAR122                 (-999 -888 -666=.)
recode PRYEAR123                 (-999 -888 -666=.)
recode PRYEAR124                 (-999 -888 -666=.)
recode PRYEAR125                 (-999 -888 -666=.)
recode PRYEAR126                 (-999 -888 -666=.)
recode PRYEAR127                 (-999 -888 -666=.)

save "MA_SID_2018_CORE.dta", replace
