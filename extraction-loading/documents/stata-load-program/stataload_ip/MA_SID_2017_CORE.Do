/*****************************************************************************
* Creation Date: 01/14/2020   
* MA_SID_2017_CORE.Do
* This program will load the 2017 MA ASCII CORE File into Stata.
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
      str    DXPOA91                    169        ///
      str    DXPOA92                    170        ///
      str    DXPOA93                    171        ///
      str    DXPOA94                    172        ///
      str    DXPOA95                    173        ///
      str    DXPOA96                    174        ///
      str    DXPOA97                    175        ///
      str    DXPOA98                    176        ///
      str    DXPOA99                    177        ///
      str    DXPOA100                   178        ///
      str    DXPOA101                   179        ///
      str    DXPOA102                   180        ///
      str    DXPOA103                   181        ///
      str    DXPOA104                   182        ///
      str    DXPOA105                   183        ///
      str    DXPOA106                   184        ///
      str    DXPOA107                   185        ///
      str    DXPOA108                   186        ///
      int    DXVER                      187- 189   ///
      byte   FEMALE                     190- 191   ///
      byte   HCUP_ED                    192- 193   ///
      byte   HCUP_OS                    194- 195   ///
      byte   HISPANIC                   196- 197   ///
      str    HISPANIC_X                 198- 212   ///
      byte   Homeless                   213- 214   ///
      str    HOSPST                     215- 216   ///
      str    I10_DX_Admitting           217- 223   ///
      str    I10_DX1                    224- 230   ///
      str    I10_DX2                    231- 237   ///
      str    I10_DX3                    238- 244   ///
      str    I10_DX4                    245- 251   ///
      str    I10_DX5                    252- 258   ///
      str    I10_DX6                    259- 265   ///
      str    I10_DX7                    266- 272   ///
      str    I10_DX8                    273- 279   ///
      str    I10_DX9                    280- 286   ///
      str    I10_DX10                   287- 293   ///
      str    I10_DX11                   294- 300   ///
      str    I10_DX12                   301- 307   ///
      str    I10_DX13                   308- 314   ///
      str    I10_DX14                   315- 321   ///
      str    I10_DX15                   322- 328   ///
      str    I10_DX16                   329- 335   ///
      str    I10_DX17                   336- 342   ///
      str    I10_DX18                   343- 349   ///
      str    I10_DX19                   350- 356   ///
      str    I10_DX20                   357- 363   ///
      str    I10_DX21                   364- 370   ///
      str    I10_DX22                   371- 377   ///
      str    I10_DX23                   378- 384   ///
      str    I10_DX24                   385- 391   ///
      str    I10_DX25                   392- 398   ///
      str    I10_DX26                   399- 405   ///
      str    I10_DX27                   406- 412   ///
      str    I10_DX28                   413- 419   ///
      str    I10_DX29                   420- 426   ///
      str    I10_DX30                   427- 433   ///
      str    I10_DX31                   434- 440   ///
      str    I10_DX32                   441- 447   ///
      str    I10_DX33                   448- 454   ///
      str    I10_DX34                   455- 461   ///
      str    I10_DX35                   462- 468   ///
      str    I10_DX36                   469- 475   ///
      str    I10_DX37                   476- 482   ///
      str    I10_DX38                   483- 489   ///
      str    I10_DX39                   490- 496   ///
      str    I10_DX40                   497- 503   ///
      str    I10_DX41                   504- 510   ///
      str    I10_DX42                   511- 517   ///
      str    I10_DX43                   518- 524   ///
      str    I10_DX44                   525- 531   ///
      str    I10_DX45                   532- 538   ///
      str    I10_DX46                   539- 545   ///
      str    I10_DX47                   546- 552   ///
      str    I10_DX48                   553- 559   ///
      str    I10_DX49                   560- 566   ///
      str    I10_DX50                   567- 573   ///
      str    I10_DX51                   574- 580   ///
      str    I10_DX52                   581- 587   ///
      str    I10_DX53                   588- 594   ///
      str    I10_DX54                   595- 601   ///
      str    I10_DX55                   602- 608   ///
      str    I10_DX56                   609- 615   ///
      str    I10_DX57                   616- 622   ///
      str    I10_DX58                   623- 629   ///
      str    I10_DX59                   630- 636   ///
      str    I10_DX60                   637- 643   ///
      str    I10_DX61                   644- 650   ///
      str    I10_DX62                   651- 657   ///
      str    I10_DX63                   658- 664   ///
      str    I10_DX64                   665- 671   ///
      str    I10_DX65                   672- 678   ///
      str    I10_DX66                   679- 685   ///
      str    I10_DX67                   686- 692   ///
      str    I10_DX68                   693- 699   ///
      str    I10_DX69                   700- 706   ///
      str    I10_DX70                   707- 713   ///
      str    I10_DX71                   714- 720   ///
      str    I10_DX72                   721- 727   ///
      str    I10_DX73                   728- 734   ///
      str    I10_DX74                   735- 741   ///
      str    I10_DX75                   742- 748   ///
      str    I10_DX76                   749- 755   ///
      str    I10_DX77                   756- 762   ///
      str    I10_DX78                   763- 769   ///
      str    I10_DX79                   770- 776   ///
      str    I10_DX80                   777- 783   ///
      str    I10_DX81                   784- 790   ///
      str    I10_DX82                   791- 797   ///
      str    I10_DX83                   798- 804   ///
      str    I10_DX84                   805- 811   ///
      str    I10_DX85                   812- 818   ///
      str    I10_DX86                   819- 825   ///
      str    I10_DX87                   826- 832   ///
      str    I10_DX88                   833- 839   ///
      str    I10_DX89                   840- 846   ///
      str    I10_DX90                   847- 853   ///
      str    I10_DX91                   854- 860   ///
      str    I10_DX92                   861- 867   ///
      str    I10_DX93                   868- 874   ///
      str    I10_DX94                   875- 881   ///
      str    I10_DX95                   882- 888   ///
      str    I10_DX96                   889- 895   ///
      str    I10_DX97                   896- 902   ///
      str    I10_DX98                   903- 909   ///
      str    I10_DX99                   910- 916   ///
      str    I10_DX100                  917- 923   ///
      str    I10_DX101                  924- 930   ///
      str    I10_DX102                  931- 937   ///
      str    I10_DX103                  938- 944   ///
      str    I10_DX104                  945- 951   ///
      str    I10_DX105                  952- 958   ///
      str    I10_DX106                  959- 965   ///
      str    I10_DX107                  966- 972   ///
      str    I10_DX108                  973- 979   ///
      int    I10_NDX                    980- 982   ///
      int    I10_NPR                    983- 985   ///
      str    I10_PR1                    986- 992   ///
      str    I10_PR2                    993- 999   ///
      str    I10_PR3                   1000-1006   ///
      str    I10_PR4                   1007-1013   ///
      str    I10_PR5                   1014-1020   ///
      str    I10_PR6                   1021-1027   ///
      str    I10_PR7                   1028-1034   ///
      str    I10_PR8                   1035-1041   ///
      str    I10_PR9                   1042-1048   ///
      str    I10_PR10                  1049-1055   ///
      str    I10_PR11                  1056-1062   ///
      str    I10_PR12                  1063-1069   ///
      str    I10_PR13                  1070-1076   ///
      str    I10_PR14                  1077-1083   ///
      str    I10_PR15                  1084-1090   ///
      str    I10_PR16                  1091-1097   ///
      str    I10_PR17                  1098-1104   ///
      str    I10_PR18                  1105-1111   ///
      str    I10_PR19                  1112-1118   ///
      str    I10_PR20                  1119-1125   ///
      str    I10_PR21                  1126-1132   ///
      str    I10_PR22                  1133-1139   ///
      str    I10_PR23                  1140-1146   ///
      str    I10_PR24                  1147-1153   ///
      str    I10_PR25                  1154-1160   ///
      str    I10_PR26                  1161-1167   ///
      str    I10_PR27                  1168-1174   ///
      str    I10_PR28                  1175-1181   ///
      str    I10_PR29                  1182-1188   ///
      str    I10_PR30                  1189-1195   ///
      str    I10_PR31                  1196-1202   ///
      str    I10_PR32                  1203-1209   ///
      str    I10_PR33                  1210-1216   ///
      str    I10_PR34                  1217-1223   ///
      str    I10_PR35                  1224-1230   ///
      str    I10_PR36                  1231-1237   ///
      str    I10_PR37                  1238-1244   ///
      str    I10_PR38                  1245-1251   ///
      str    I10_PR39                  1252-1258   ///
      str    I10_PR40                  1259-1265   ///
      str    I10_PR41                  1266-1272   ///
      str    I10_PR42                  1273-1279   ///
      str    I10_PR43                  1280-1286   ///
      str    I10_PR44                  1287-1293   ///
      str    I10_PR45                  1294-1300   ///
      str    I10_PR46                  1301-1307   ///
      str    I10_PR47                  1308-1314   ///
      str    I10_PR48                  1315-1321   ///
      str    I10_PR49                  1322-1328   ///
      str    I10_PR50                  1329-1335   ///
      str    I10_PR51                  1336-1342   ///
      str    I10_PR52                  1343-1349   ///
      str    I10_PR53                  1350-1356   ///
      str    I10_PR54                  1357-1363   ///
      str    I10_PR55                  1364-1370   ///
      str    I10_PR56                  1371-1377   ///
      str    I10_PR57                  1378-1384   ///
      str    I10_PR58                  1385-1391   ///
      str    I10_PR59                  1392-1398   ///
      str    I10_PR60                  1399-1405   ///
      str    I10_PR61                  1406-1412   ///
      str    I10_PR62                  1413-1419   ///
      str    I10_PR63                  1420-1426   ///
      str    I10_PR64                  1427-1433   ///
      str    I10_PR65                  1434-1440   ///
      str    I10_PR66                  1441-1447   ///
      str    I10_PR67                  1448-1454   ///
      str    I10_PR68                  1455-1461   ///
      str    I10_PR69                  1462-1468   ///
      str    I10_PR70                  1469-1475   ///
      str    I10_PR71                  1476-1482   ///
      str    I10_PR72                  1483-1489   ///
      str    I10_PR73                  1490-1496   ///
      str    I10_PR74                  1497-1503   ///
      str    I10_PR75                  1504-1510   ///
      str    I10_PR76                  1511-1517   ///
      str    I10_PR77                  1518-1524   ///
      str    I10_PR78                  1525-1531   ///
      str    I10_PR79                  1532-1538   ///
      str    I10_PR80                  1539-1545   ///
      str    I10_PR81                  1546-1552   ///
      str    I10_PR82                  1553-1559   ///
      str    I10_PR83                  1560-1566   ///
      str    I10_PR84                  1567-1573   ///
      str    I10_PR85                  1574-1580   ///
      str    I10_PR86                  1581-1587   ///
      str    I10_PR87                  1588-1594   ///
      str    I10_PR88                  1595-1601   ///
      str    I10_PR89                  1602-1608   ///
      str    I10_PR90                  1609-1615   ///
      int    I10_PROCTYPE              1616-1618   ///
      double KEY                       1619-1633   ///
      long   LOS                       1634-1638   ///
      long   LOS_X                     1639-1644   ///
      byte   MDC                       1645-1646   ///
      byte   MDC_NoPOA                 1647-1648   ///
      byte   MEDINCSTQ                 1649-1650   ///
      double OS_TIME                   1651-1661   ///
      byte   PAY1                      1662-1663   ///
      str    PAY1_X                    1664        ///
      byte   PAY2                      1665-1666   ///
      str    PAY2_X                    1667        ///
      str    PAYER1_X                  1668-1670   ///
      str    PAYER2_X                  1671-1673   ///
      int    PL_CBSA                   1674-1676   ///
      byte   PL_UR_CAT4                1677-1678   ///
      byte   POA_Disch_Edit1           1679-1680   ///
      byte   POA_Disch_Edit2           1681-1682   ///
      byte   POA_Hosp_Edit1            1683-1684   ///
      byte   POA_Hosp_Edit2            1685-1686   ///
      byte   POA_Hosp_Edit3            1687-1688   ///
      double POA_Hosp_Edit3_Value      1689-1696   ///
      long   PRDAY1                    1697-1701   ///
      long   PRDAY2                    1702-1706   ///
      long   PRDAY3                    1707-1711   ///
      long   PRDAY4                    1712-1716   ///
      long   PRDAY5                    1717-1721   ///
      long   PRDAY6                    1722-1726   ///
      long   PRDAY7                    1727-1731   ///
      long   PRDAY8                    1732-1736   ///
      long   PRDAY9                    1737-1741   ///
      long   PRDAY10                   1742-1746   ///
      long   PRDAY11                   1747-1751   ///
      long   PRDAY12                   1752-1756   ///
      long   PRDAY13                   1757-1761   ///
      long   PRDAY14                   1762-1766   ///
      long   PRDAY15                   1767-1771   ///
      long   PRDAY16                   1772-1776   ///
      long   PRDAY17                   1777-1781   ///
      long   PRDAY18                   1782-1786   ///
      long   PRDAY19                   1787-1791   ///
      long   PRDAY20                   1792-1796   ///
      long   PRDAY21                   1797-1801   ///
      long   PRDAY22                   1802-1806   ///
      long   PRDAY23                   1807-1811   ///
      long   PRDAY24                   1812-1816   ///
      long   PRDAY25                   1817-1821   ///
      long   PRDAY26                   1822-1826   ///
      long   PRDAY27                   1827-1831   ///
      long   PRDAY28                   1832-1836   ///
      long   PRDAY29                   1837-1841   ///
      long   PRDAY30                   1842-1846   ///
      long   PRDAY31                   1847-1851   ///
      long   PRDAY32                   1852-1856   ///
      long   PRDAY33                   1857-1861   ///
      long   PRDAY34                   1862-1866   ///
      long   PRDAY35                   1867-1871   ///
      long   PRDAY36                   1872-1876   ///
      long   PRDAY37                   1877-1881   ///
      long   PRDAY38                   1882-1886   ///
      long   PRDAY39                   1887-1891   ///
      long   PRDAY40                   1892-1896   ///
      long   PRDAY41                   1897-1901   ///
      long   PRDAY42                   1902-1906   ///
      long   PRDAY43                   1907-1911   ///
      long   PRDAY44                   1912-1916   ///
      long   PRDAY45                   1917-1921   ///
      long   PRDAY46                   1922-1926   ///
      long   PRDAY47                   1927-1931   ///
      long   PRDAY48                   1932-1936   ///
      long   PRDAY49                   1937-1941   ///
      long   PRDAY50                   1942-1946   ///
      long   PRDAY51                   1947-1951   ///
      long   PRDAY52                   1952-1956   ///
      long   PRDAY53                   1957-1961   ///
      long   PRDAY54                   1962-1966   ///
      long   PRDAY55                   1967-1971   ///
      long   PRDAY56                   1972-1976   ///
      long   PRDAY57                   1977-1981   ///
      long   PRDAY58                   1982-1986   ///
      long   PRDAY59                   1987-1991   ///
      long   PRDAY60                   1992-1996   ///
      long   PRDAY61                   1997-2001   ///
      long   PRDAY62                   2002-2006   ///
      long   PRDAY63                   2007-2011   ///
      long   PRDAY64                   2012-2016   ///
      long   PRDAY65                   2017-2021   ///
      long   PRDAY66                   2022-2026   ///
      long   PRDAY67                   2027-2031   ///
      long   PRDAY68                   2032-2036   ///
      long   PRDAY69                   2037-2041   ///
      long   PRDAY70                   2042-2046   ///
      long   PRDAY71                   2047-2051   ///
      long   PRDAY72                   2052-2056   ///
      long   PRDAY73                   2057-2061   ///
      long   PRDAY74                   2062-2066   ///
      long   PRDAY75                   2067-2071   ///
      long   PRDAY76                   2072-2076   ///
      long   PRDAY77                   2077-2081   ///
      long   PRDAY78                   2082-2086   ///
      long   PRDAY79                   2087-2091   ///
      long   PRDAY80                   2092-2096   ///
      long   PRDAY81                   2097-2101   ///
      long   PRDAY82                   2102-2106   ///
      long   PRDAY83                   2107-2111   ///
      long   PRDAY84                   2112-2116   ///
      long   PRDAY85                   2117-2121   ///
      long   PRDAY86                   2122-2126   ///
      long   PRDAY87                   2127-2131   ///
      long   PRDAY88                   2132-2136   ///
      long   PRDAY89                   2137-2141   ///
      long   PRDAY90                   2142-2146   ///
      int    PRVER                     2147-2149   ///
      str    PSTATE                    2150-2151   ///
      long   PSTCO2                    2152-2156   ///
      byte   RACE                      2157-2158   ///
      byte   RACE_EDIT                 2159-2160   ///
      str    RACE_X                    2161-2173   ///
      double TOTCHG                    2174-2183   ///
      double TOTCHG_X                  2184-2198   ///
      byte   TRAN_IN                   2199-2200   ///
      byte   TRAN_OUT                  2201-2202   ///
      long   VisitLink                 2203-2211   ///
      int    YEAR                      2212-2215   ///
      str    ZIP3                      2216-2218   ///
      int    ZIPINC_QRTL               2219-2221   ///
      int    AYEAR                     2222-2225   ///
      byte   PRMONTH1                  2226-2227   ///
      byte   PRMONTH2                  2228-2229   ///
      byte   PRMONTH3                  2230-2231   ///
      byte   PRMONTH4                  2232-2233   ///
      byte   PRMONTH5                  2234-2235   ///
      byte   PRMONTH6                  2236-2237   ///
      byte   PRMONTH7                  2238-2239   ///
      byte   PRMONTH8                  2240-2241   ///
      byte   PRMONTH9                  2242-2243   ///
      byte   PRMONTH10                 2244-2245   ///
      byte   PRMONTH11                 2246-2247   ///
      byte   PRMONTH12                 2248-2249   ///
      byte   PRMONTH13                 2250-2251   ///
      byte   PRMONTH14                 2252-2253   ///
      byte   PRMONTH15                 2254-2255   ///
      byte   PRMONTH16                 2256-2257   ///
      byte   PRMONTH17                 2258-2259   ///
      byte   PRMONTH18                 2260-2261   ///
      byte   PRMONTH19                 2262-2263   ///
      byte   PRMONTH20                 2264-2265   ///
      byte   PRMONTH21                 2266-2267   ///
      byte   PRMONTH22                 2268-2269   ///
      byte   PRMONTH23                 2270-2271   ///
      byte   PRMONTH24                 2272-2273   ///
      byte   PRMONTH25                 2274-2275   ///
      byte   PRMONTH26                 2276-2277   ///
      byte   PRMONTH27                 2278-2279   ///
      byte   PRMONTH28                 2280-2281   ///
      byte   PRMONTH29                 2282-2283   ///
      byte   PRMONTH30                 2284-2285   ///
      byte   PRMONTH31                 2286-2287   ///
      byte   PRMONTH32                 2288-2289   ///
      byte   PRMONTH33                 2290-2291   ///
      byte   PRMONTH34                 2292-2293   ///
      byte   PRMONTH35                 2294-2295   ///
      byte   PRMONTH36                 2296-2297   ///
      byte   PRMONTH37                 2298-2299   ///
      byte   PRMONTH38                 2300-2301   ///
      byte   PRMONTH39                 2302-2303   ///
      byte   PRMONTH40                 2304-2305   ///
      byte   PRMONTH41                 2306-2307   ///
      byte   PRMONTH42                 2308-2309   ///
      byte   PRMONTH43                 2310-2311   ///
      byte   PRMONTH44                 2312-2313   ///
      byte   PRMONTH45                 2314-2315   ///
      byte   PRMONTH46                 2316-2317   ///
      byte   PRMONTH47                 2318-2319   ///
      byte   PRMONTH48                 2320-2321   ///
      byte   PRMONTH49                 2322-2323   ///
      byte   PRMONTH50                 2324-2325   ///
      byte   PRMONTH51                 2326-2327   ///
      byte   PRMONTH52                 2328-2329   ///
      byte   PRMONTH53                 2330-2331   ///
      byte   PRMONTH54                 2332-2333   ///
      byte   PRMONTH55                 2334-2335   ///
      byte   PRMONTH56                 2336-2337   ///
      byte   PRMONTH57                 2338-2339   ///
      byte   PRMONTH58                 2340-2341   ///
      byte   PRMONTH59                 2342-2343   ///
      byte   PRMONTH60                 2344-2345   ///
      byte   PRMONTH61                 2346-2347   ///
      byte   PRMONTH62                 2348-2349   ///
      byte   PRMONTH63                 2350-2351   ///
      byte   PRMONTH64                 2352-2353   ///
      byte   PRMONTH65                 2354-2355   ///
      byte   PRMONTH66                 2356-2357   ///
      byte   PRMONTH67                 2358-2359   ///
      byte   PRMONTH68                 2360-2361   ///
      byte   PRMONTH69                 2362-2363   ///
      byte   PRMONTH70                 2364-2365   ///
      byte   PRMONTH71                 2366-2367   ///
      byte   PRMONTH72                 2368-2369   ///
      byte   PRMONTH73                 2370-2371   ///
      byte   PRMONTH74                 2372-2373   ///
      byte   PRMONTH75                 2374-2375   ///
      byte   PRMONTH76                 2376-2377   ///
      byte   PRMONTH77                 2378-2379   ///
      byte   PRMONTH78                 2380-2381   ///
      byte   PRMONTH79                 2382-2383   ///
      byte   PRMONTH80                 2384-2385   ///
      byte   PRMONTH81                 2386-2387   ///
      byte   PRMONTH82                 2388-2389   ///
      byte   PRMONTH83                 2390-2391   ///
      byte   PRMONTH84                 2392-2393   ///
      byte   PRMONTH85                 2394-2395   ///
      byte   PRMONTH86                 2396-2397   ///
      byte   PRMONTH87                 2398-2399   ///
      byte   PRMONTH88                 2400-2401   ///
      byte   PRMONTH89                 2402-2403   ///
      byte   PRMONTH90                 2404-2405   ///
      int    PRYEAR1                   2406-2409   ///
      int    PRYEAR2                   2410-2413   ///
      int    PRYEAR3                   2414-2417   ///
      int    PRYEAR4                   2418-2421   ///
      int    PRYEAR5                   2422-2425   ///
      int    PRYEAR6                   2426-2429   ///
      int    PRYEAR7                   2430-2433   ///
      int    PRYEAR8                   2434-2437   ///
      int    PRYEAR9                   2438-2441   ///
      int    PRYEAR10                  2442-2445   ///
      int    PRYEAR11                  2446-2449   ///
      int    PRYEAR12                  2450-2453   ///
      int    PRYEAR13                  2454-2457   ///
      int    PRYEAR14                  2458-2461   ///
      int    PRYEAR15                  2462-2465   ///
      int    PRYEAR16                  2466-2469   ///
      int    PRYEAR17                  2470-2473   ///
      int    PRYEAR18                  2474-2477   ///
      int    PRYEAR19                  2478-2481   ///
      int    PRYEAR20                  2482-2485   ///
      int    PRYEAR21                  2486-2489   ///
      int    PRYEAR22                  2490-2493   ///
      int    PRYEAR23                  2494-2497   ///
      int    PRYEAR24                  2498-2501   ///
      int    PRYEAR25                  2502-2505   ///
      int    PRYEAR26                  2506-2509   ///
      int    PRYEAR27                  2510-2513   ///
      int    PRYEAR28                  2514-2517   ///
      int    PRYEAR29                  2518-2521   ///
      int    PRYEAR30                  2522-2525   ///
      int    PRYEAR31                  2526-2529   ///
      int    PRYEAR32                  2530-2533   ///
      int    PRYEAR33                  2534-2537   ///
      int    PRYEAR34                  2538-2541   ///
      int    PRYEAR35                  2542-2545   ///
      int    PRYEAR36                  2546-2549   ///
      int    PRYEAR37                  2550-2553   ///
      int    PRYEAR38                  2554-2557   ///
      int    PRYEAR39                  2558-2561   ///
      int    PRYEAR40                  2562-2565   ///
      int    PRYEAR41                  2566-2569   ///
      int    PRYEAR42                  2570-2573   ///
      int    PRYEAR43                  2574-2577   ///
      int    PRYEAR44                  2578-2581   ///
      int    PRYEAR45                  2582-2585   ///
      int    PRYEAR46                  2586-2589   ///
      int    PRYEAR47                  2590-2593   ///
      int    PRYEAR48                  2594-2597   ///
      int    PRYEAR49                  2598-2601   ///
      int    PRYEAR50                  2602-2605   ///
      int    PRYEAR51                  2606-2609   ///
      int    PRYEAR52                  2610-2613   ///
      int    PRYEAR53                  2614-2617   ///
      int    PRYEAR54                  2618-2621   ///
      int    PRYEAR55                  2622-2625   ///
      int    PRYEAR56                  2626-2629   ///
      int    PRYEAR57                  2630-2633   ///
      int    PRYEAR58                  2634-2637   ///
      int    PRYEAR59                  2638-2641   ///
      int    PRYEAR60                  2642-2645   ///
      int    PRYEAR61                  2646-2649   ///
      int    PRYEAR62                  2650-2653   ///
      int    PRYEAR63                  2654-2657   ///
      int    PRYEAR64                  2658-2661   ///
      int    PRYEAR65                  2662-2665   ///
      int    PRYEAR66                  2666-2669   ///
      int    PRYEAR67                  2670-2673   ///
      int    PRYEAR68                  2674-2677   ///
      int    PRYEAR69                  2678-2681   ///
      int    PRYEAR70                  2682-2685   ///
      int    PRYEAR71                  2686-2689   ///
      int    PRYEAR72                  2690-2693   ///
      int    PRYEAR73                  2694-2697   ///
      int    PRYEAR74                  2698-2701   ///
      int    PRYEAR75                  2702-2705   ///
      int    PRYEAR76                  2706-2709   ///
      int    PRYEAR77                  2710-2713   ///
      int    PRYEAR78                  2714-2717   ///
      int    PRYEAR79                  2718-2721   ///
      int    PRYEAR80                  2722-2725   ///
      int    PRYEAR81                  2726-2729   ///
      int    PRYEAR82                  2730-2733   ///
      int    PRYEAR83                  2734-2737   ///
      int    PRYEAR84                  2738-2741   ///
      int    PRYEAR85                  2742-2745   ///
      int    PRYEAR86                  2746-2749   ///
      int    PRYEAR87                  2750-2753   ///
      int    PRYEAR88                  2754-2757   ///
      int    PRYEAR89                  2758-2761   ///
      int    PRYEAR90                  2762-2765   ///
      using  "MA_SID_2017_CORE.ASC"

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
label var DXPOA104                 "Diagnosis 104, present on admission indicator"
label var DXPOA105                 "Diagnosis 105, present on admission indicator"
label var DXPOA106                 "Diagnosis 106, present on admission indicator"
label var DXPOA107                 "Diagnosis 107, present on admission indicator"
label var DXPOA108                 "Diagnosis 108, present on admission indicator"
label var DXVER                    "Diagnosis Version"
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
label var I10_DX104                "ICD-10-CM Diagnosis 104"
label var I10_DX105                "ICD-10-CM Diagnosis 105"
label var I10_DX106                "ICD-10-CM Diagnosis 106"
label var I10_DX107                "ICD-10-CM Diagnosis 107"
label var I10_DX108                "ICD-10-CM Diagnosis 108"
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
label var PRVER                    "Procedure Version"
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
recode PRVER                     (-99 -88 -66=.)
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

save "MA_SID_2017_CORE.dta", replace
