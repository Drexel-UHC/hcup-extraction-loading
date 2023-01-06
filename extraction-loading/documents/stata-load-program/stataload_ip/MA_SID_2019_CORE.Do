/*****************************************************************************
* Creation Date: 10/27/2021   
* MA_SID_2019_CORE.Do
* This program will load the 2019 MA ASCII CORE File into Stata.
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
      str    DXPOA109                   187        ///
      str    DXPOA110                   188        ///
      byte   FEMALE                     189- 190   ///
      byte   HCUP_ED                    191- 192   ///
      byte   HCUP_OS                    193- 194   ///
      byte   HISPANIC                   195- 196   ///
      str    HISPANIC_X                 197- 211   ///
      byte   Homeless                   212- 213   ///
      str    HOSPST                     214- 215   ///
      int    I10_BIRTH                  216- 218   ///
      int    I10_DELIVERY               219- 221   ///
      str    I10_DX_Admitting           222- 228   ///
      str    I10_DX1                    229- 235   ///
      str    I10_DX2                    236- 242   ///
      str    I10_DX3                    243- 249   ///
      str    I10_DX4                    250- 256   ///
      str    I10_DX5                    257- 263   ///
      str    I10_DX6                    264- 270   ///
      str    I10_DX7                    271- 277   ///
      str    I10_DX8                    278- 284   ///
      str    I10_DX9                    285- 291   ///
      str    I10_DX10                   292- 298   ///
      str    I10_DX11                   299- 305   ///
      str    I10_DX12                   306- 312   ///
      str    I10_DX13                   313- 319   ///
      str    I10_DX14                   320- 326   ///
      str    I10_DX15                   327- 333   ///
      str    I10_DX16                   334- 340   ///
      str    I10_DX17                   341- 347   ///
      str    I10_DX18                   348- 354   ///
      str    I10_DX19                   355- 361   ///
      str    I10_DX20                   362- 368   ///
      str    I10_DX21                   369- 375   ///
      str    I10_DX22                   376- 382   ///
      str    I10_DX23                   383- 389   ///
      str    I10_DX24                   390- 396   ///
      str    I10_DX25                   397- 403   ///
      str    I10_DX26                   404- 410   ///
      str    I10_DX27                   411- 417   ///
      str    I10_DX28                   418- 424   ///
      str    I10_DX29                   425- 431   ///
      str    I10_DX30                   432- 438   ///
      str    I10_DX31                   439- 445   ///
      str    I10_DX32                   446- 452   ///
      str    I10_DX33                   453- 459   ///
      str    I10_DX34                   460- 466   ///
      str    I10_DX35                   467- 473   ///
      str    I10_DX36                   474- 480   ///
      str    I10_DX37                   481- 487   ///
      str    I10_DX38                   488- 494   ///
      str    I10_DX39                   495- 501   ///
      str    I10_DX40                   502- 508   ///
      str    I10_DX41                   509- 515   ///
      str    I10_DX42                   516- 522   ///
      str    I10_DX43                   523- 529   ///
      str    I10_DX44                   530- 536   ///
      str    I10_DX45                   537- 543   ///
      str    I10_DX46                   544- 550   ///
      str    I10_DX47                   551- 557   ///
      str    I10_DX48                   558- 564   ///
      str    I10_DX49                   565- 571   ///
      str    I10_DX50                   572- 578   ///
      str    I10_DX51                   579- 585   ///
      str    I10_DX52                   586- 592   ///
      str    I10_DX53                   593- 599   ///
      str    I10_DX54                   600- 606   ///
      str    I10_DX55                   607- 613   ///
      str    I10_DX56                   614- 620   ///
      str    I10_DX57                   621- 627   ///
      str    I10_DX58                   628- 634   ///
      str    I10_DX59                   635- 641   ///
      str    I10_DX60                   642- 648   ///
      str    I10_DX61                   649- 655   ///
      str    I10_DX62                   656- 662   ///
      str    I10_DX63                   663- 669   ///
      str    I10_DX64                   670- 676   ///
      str    I10_DX65                   677- 683   ///
      str    I10_DX66                   684- 690   ///
      str    I10_DX67                   691- 697   ///
      str    I10_DX68                   698- 704   ///
      str    I10_DX69                   705- 711   ///
      str    I10_DX70                   712- 718   ///
      str    I10_DX71                   719- 725   ///
      str    I10_DX72                   726- 732   ///
      str    I10_DX73                   733- 739   ///
      str    I10_DX74                   740- 746   ///
      str    I10_DX75                   747- 753   ///
      str    I10_DX76                   754- 760   ///
      str    I10_DX77                   761- 767   ///
      str    I10_DX78                   768- 774   ///
      str    I10_DX79                   775- 781   ///
      str    I10_DX80                   782- 788   ///
      str    I10_DX81                   789- 795   ///
      str    I10_DX82                   796- 802   ///
      str    I10_DX83                   803- 809   ///
      str    I10_DX84                   810- 816   ///
      str    I10_DX85                   817- 823   ///
      str    I10_DX86                   824- 830   ///
      str    I10_DX87                   831- 837   ///
      str    I10_DX88                   838- 844   ///
      str    I10_DX89                   845- 851   ///
      str    I10_DX90                   852- 858   ///
      str    I10_DX91                   859- 865   ///
      str    I10_DX92                   866- 872   ///
      str    I10_DX93                   873- 879   ///
      str    I10_DX94                   880- 886   ///
      str    I10_DX95                   887- 893   ///
      str    I10_DX96                   894- 900   ///
      str    I10_DX97                   901- 907   ///
      str    I10_DX98                   908- 914   ///
      str    I10_DX99                   915- 921   ///
      str    I10_DX100                  922- 928   ///
      str    I10_DX101                  929- 935   ///
      str    I10_DX102                  936- 942   ///
      str    I10_DX103                  943- 949   ///
      str    I10_DX104                  950- 956   ///
      str    I10_DX105                  957- 963   ///
      str    I10_DX106                  964- 970   ///
      str    I10_DX107                  971- 977   ///
      str    I10_DX108                  978- 984   ///
      str    I10_DX109                  985- 991   ///
      str    I10_DX110                  992- 998   ///
      int    I10_NDX                    999-1001   ///
      int    I10_NPR                   1002-1004   ///
      byte   I10_ORPROC                1005-1006   ///
      str    I10_PR1                   1007-1013   ///
      str    I10_PR2                   1014-1020   ///
      str    I10_PR3                   1021-1027   ///
      str    I10_PR4                   1028-1034   ///
      str    I10_PR5                   1035-1041   ///
      str    I10_PR6                   1042-1048   ///
      str    I10_PR7                   1049-1055   ///
      str    I10_PR8                   1056-1062   ///
      str    I10_PR9                   1063-1069   ///
      str    I10_PR10                  1070-1076   ///
      str    I10_PR11                  1077-1083   ///
      str    I10_PR12                  1084-1090   ///
      str    I10_PR13                  1091-1097   ///
      str    I10_PR14                  1098-1104   ///
      str    I10_PR15                  1105-1111   ///
      str    I10_PR16                  1112-1118   ///
      str    I10_PR17                  1119-1125   ///
      str    I10_PR18                  1126-1132   ///
      str    I10_PR19                  1133-1139   ///
      str    I10_PR20                  1140-1146   ///
      str    I10_PR21                  1147-1153   ///
      str    I10_PR22                  1154-1160   ///
      str    I10_PR23                  1161-1167   ///
      str    I10_PR24                  1168-1174   ///
      str    I10_PR25                  1175-1181   ///
      str    I10_PR26                  1182-1188   ///
      str    I10_PR27                  1189-1195   ///
      str    I10_PR28                  1196-1202   ///
      str    I10_PR29                  1203-1209   ///
      str    I10_PR30                  1210-1216   ///
      str    I10_PR31                  1217-1223   ///
      str    I10_PR32                  1224-1230   ///
      str    I10_PR33                  1231-1237   ///
      str    I10_PR34                  1238-1244   ///
      str    I10_PR35                  1245-1251   ///
      str    I10_PR36                  1252-1258   ///
      str    I10_PR37                  1259-1265   ///
      str    I10_PR38                  1266-1272   ///
      str    I10_PR39                  1273-1279   ///
      str    I10_PR40                  1280-1286   ///
      str    I10_PR41                  1287-1293   ///
      str    I10_PR42                  1294-1300   ///
      str    I10_PR43                  1301-1307   ///
      str    I10_PR44                  1308-1314   ///
      str    I10_PR45                  1315-1321   ///
      str    I10_PR46                  1322-1328   ///
      str    I10_PR47                  1329-1335   ///
      str    I10_PR48                  1336-1342   ///
      str    I10_PR49                  1343-1349   ///
      str    I10_PR50                  1350-1356   ///
      str    I10_PR51                  1357-1363   ///
      str    I10_PR52                  1364-1370   ///
      str    I10_PR53                  1371-1377   ///
      str    I10_PR54                  1378-1384   ///
      str    I10_PR55                  1385-1391   ///
      str    I10_PR56                  1392-1398   ///
      str    I10_PR57                  1399-1405   ///
      str    I10_PR58                  1406-1412   ///
      str    I10_PR59                  1413-1419   ///
      str    I10_PR60                  1420-1426   ///
      str    I10_PR61                  1427-1433   ///
      str    I10_PR62                  1434-1440   ///
      str    I10_PR63                  1441-1447   ///
      str    I10_PR64                  1448-1454   ///
      str    I10_PR65                  1455-1461   ///
      str    I10_PR66                  1462-1468   ///
      str    I10_PR67                  1469-1475   ///
      str    I10_PR68                  1476-1482   ///
      str    I10_PR69                  1483-1489   ///
      str    I10_PR70                  1490-1496   ///
      str    I10_PR71                  1497-1503   ///
      str    I10_PR72                  1504-1510   ///
      str    I10_PR73                  1511-1517   ///
      str    I10_PR74                  1518-1524   ///
      str    I10_PR75                  1525-1531   ///
      str    I10_PR76                  1532-1538   ///
      str    I10_PR77                  1539-1545   ///
      str    I10_PR78                  1546-1552   ///
      str    I10_PR79                  1553-1559   ///
      str    I10_PR80                  1560-1566   ///
      str    I10_PR81                  1567-1573   ///
      str    I10_PR82                  1574-1580   ///
      str    I10_PR83                  1581-1587   ///
      str    I10_PR84                  1588-1594   ///
      str    I10_PR85                  1595-1601   ///
      str    I10_PR86                  1602-1608   ///
      str    I10_PR87                  1609-1615   ///
      str    I10_PR88                  1616-1622   ///
      str    I10_PR89                  1623-1629   ///
      str    I10_PR90                  1630-1636   ///
      str    I10_PR91                  1637-1643   ///
      str    I10_PR92                  1644-1650   ///
      str    I10_PR93                  1651-1657   ///
      str    I10_PR94                  1658-1664   ///
      str    I10_PR95                  1665-1671   ///
      str    I10_PR96                  1672-1678   ///
      str    I10_PR97                  1679-1685   ///
      str    I10_PR98                  1686-1692   ///
      str    I10_PR99                  1693-1699   ///
      str    I10_PR100                 1700-1706   ///
      str    I10_PR101                 1707-1713   ///
      str    I10_PR102                 1714-1720   ///
      str    I10_PR103                 1721-1727   ///
      str    I10_PR104                 1728-1734   ///
      str    I10_PR105                 1735-1741   ///
      str    I10_PR106                 1742-1748   ///
      str    I10_PR107                 1749-1755   ///
      str    I10_PR108                 1756-1762   ///
      str    I10_PR109                 1763-1769   ///
      str    I10_PR110                 1770-1776   ///
      str    I10_PR111                 1777-1783   ///
      str    I10_PR112                 1784-1790   ///
      str    I10_PR113                 1791-1797   ///
      str    I10_PR114                 1798-1804   ///
      str    I10_PR115                 1805-1811   ///
      str    I10_PR116                 1812-1818   ///
      str    I10_PR117                 1819-1825   ///
      str    I10_PR118                 1826-1832   ///
      str    I10_PR119                 1833-1839   ///
      str    I10_PR120                 1840-1846   ///
      str    I10_PR121                 1847-1853   ///
      str    I10_PR122                 1854-1860   ///
      str    I10_PR123                 1861-1867   ///
      str    I10_PR124                 1868-1874   ///
      str    I10_PR125                 1875-1881   ///
      str    I10_PR126                 1882-1888   ///
      str    I10_PR127                 1889-1895   ///
      str    I10_PR128                 1896-1902   ///
      str    I10_PR129                 1903-1909   ///
      str    I10_PR130                 1910-1916   ///
      str    I10_PR131                 1917-1923   ///
      str    I10_PR132                 1924-1930   ///
      str    I10_PR133                 1931-1937   ///
      str    I10_PR134                 1938-1944   ///
      str    I10_PR135                 1945-1951   ///
      str    I10_PR136                 1952-1958   ///
      str    I10_PR137                 1959-1965   ///
      str    I10_PR138                 1966-1972   ///
      str    I10_PR139                 1973-1979   ///
      str    I10_PR140                 1980-1986   ///
      str    I10_PR141                 1987-1993   ///
      str    I10_PR142                 1994-2000   ///
      str    I10_PR143                 2001-2007   ///
      int    I10_PROCTYPE              2008-2010   ///
      byte   I10_SERVICELINE           2011-2012   ///
      double KEY                       2013-2027   ///
      long   LOS                       2028-2032   ///
      long   LOS_X                     2033-2038   ///
      byte   MDC                       2039-2040   ///
      byte   MDC_NoPOA                 2041-2042   ///
      byte   MEDINCSTQ                 2043-2044   ///
      double OS_TIME                   2045-2055   ///
      byte   PAY1                      2056-2057   ///
      str    PAY1_X                    2058        ///
      byte   PAY2                      2059-2060   ///
      str    PAY2_X                    2061        ///
      str    PAYER1_X                  2062-2064   ///
      str    PAYER2_X                  2065-2067   ///
      int    PL_CBSA                   2068-2070   ///
      byte   PL_UR_CAT4                2071-2072   ///
      byte   POA_Disch_Edit1           2073-2074   ///
      byte   POA_Disch_Edit2           2075-2076   ///
      byte   POA_Hosp_Edit1            2077-2078   ///
      byte   POA_Hosp_Edit2            2079-2080   ///
      byte   POA_Hosp_Edit3            2081-2082   ///
      double POA_Hosp_Edit3_Value      2083-2090   ///
      long   PRDAY1                    2091-2095   ///
      long   PRDAY2                    2096-2100   ///
      long   PRDAY3                    2101-2105   ///
      long   PRDAY4                    2106-2110   ///
      long   PRDAY5                    2111-2115   ///
      long   PRDAY6                    2116-2120   ///
      long   PRDAY7                    2121-2125   ///
      long   PRDAY8                    2126-2130   ///
      long   PRDAY9                    2131-2135   ///
      long   PRDAY10                   2136-2140   ///
      long   PRDAY11                   2141-2145   ///
      long   PRDAY12                   2146-2150   ///
      long   PRDAY13                   2151-2155   ///
      long   PRDAY14                   2156-2160   ///
      long   PRDAY15                   2161-2165   ///
      long   PRDAY16                   2166-2170   ///
      long   PRDAY17                   2171-2175   ///
      long   PRDAY18                   2176-2180   ///
      long   PRDAY19                   2181-2185   ///
      long   PRDAY20                   2186-2190   ///
      long   PRDAY21                   2191-2195   ///
      long   PRDAY22                   2196-2200   ///
      long   PRDAY23                   2201-2205   ///
      long   PRDAY24                   2206-2210   ///
      long   PRDAY25                   2211-2215   ///
      long   PRDAY26                   2216-2220   ///
      long   PRDAY27                   2221-2225   ///
      long   PRDAY28                   2226-2230   ///
      long   PRDAY29                   2231-2235   ///
      long   PRDAY30                   2236-2240   ///
      long   PRDAY31                   2241-2245   ///
      long   PRDAY32                   2246-2250   ///
      long   PRDAY33                   2251-2255   ///
      long   PRDAY34                   2256-2260   ///
      long   PRDAY35                   2261-2265   ///
      long   PRDAY36                   2266-2270   ///
      long   PRDAY37                   2271-2275   ///
      long   PRDAY38                   2276-2280   ///
      long   PRDAY39                   2281-2285   ///
      long   PRDAY40                   2286-2290   ///
      long   PRDAY41                   2291-2295   ///
      long   PRDAY42                   2296-2300   ///
      long   PRDAY43                   2301-2305   ///
      long   PRDAY44                   2306-2310   ///
      long   PRDAY45                   2311-2315   ///
      long   PRDAY46                   2316-2320   ///
      long   PRDAY47                   2321-2325   ///
      long   PRDAY48                   2326-2330   ///
      long   PRDAY49                   2331-2335   ///
      long   PRDAY50                   2336-2340   ///
      long   PRDAY51                   2341-2345   ///
      long   PRDAY52                   2346-2350   ///
      long   PRDAY53                   2351-2355   ///
      long   PRDAY54                   2356-2360   ///
      long   PRDAY55                   2361-2365   ///
      long   PRDAY56                   2366-2370   ///
      long   PRDAY57                   2371-2375   ///
      long   PRDAY58                   2376-2380   ///
      long   PRDAY59                   2381-2385   ///
      long   PRDAY60                   2386-2390   ///
      long   PRDAY61                   2391-2395   ///
      long   PRDAY62                   2396-2400   ///
      long   PRDAY63                   2401-2405   ///
      long   PRDAY64                   2406-2410   ///
      long   PRDAY65                   2411-2415   ///
      long   PRDAY66                   2416-2420   ///
      long   PRDAY67                   2421-2425   ///
      long   PRDAY68                   2426-2430   ///
      long   PRDAY69                   2431-2435   ///
      long   PRDAY70                   2436-2440   ///
      long   PRDAY71                   2441-2445   ///
      long   PRDAY72                   2446-2450   ///
      long   PRDAY73                   2451-2455   ///
      long   PRDAY74                   2456-2460   ///
      long   PRDAY75                   2461-2465   ///
      long   PRDAY76                   2466-2470   ///
      long   PRDAY77                   2471-2475   ///
      long   PRDAY78                   2476-2480   ///
      long   PRDAY79                   2481-2485   ///
      long   PRDAY80                   2486-2490   ///
      long   PRDAY81                   2491-2495   ///
      long   PRDAY82                   2496-2500   ///
      long   PRDAY83                   2501-2505   ///
      long   PRDAY84                   2506-2510   ///
      long   PRDAY85                   2511-2515   ///
      long   PRDAY86                   2516-2520   ///
      long   PRDAY87                   2521-2525   ///
      long   PRDAY88                   2526-2530   ///
      long   PRDAY89                   2531-2535   ///
      long   PRDAY90                   2536-2540   ///
      long   PRDAY91                   2541-2545   ///
      long   PRDAY92                   2546-2550   ///
      long   PRDAY93                   2551-2555   ///
      long   PRDAY94                   2556-2560   ///
      long   PRDAY95                   2561-2565   ///
      long   PRDAY96                   2566-2570   ///
      long   PRDAY97                   2571-2575   ///
      long   PRDAY98                   2576-2580   ///
      long   PRDAY99                   2581-2585   ///
      long   PRDAY100                  2586-2590   ///
      long   PRDAY101                  2591-2595   ///
      long   PRDAY102                  2596-2600   ///
      long   PRDAY103                  2601-2605   ///
      long   PRDAY104                  2606-2610   ///
      long   PRDAY105                  2611-2615   ///
      long   PRDAY106                  2616-2620   ///
      long   PRDAY107                  2621-2625   ///
      long   PRDAY108                  2626-2630   ///
      long   PRDAY109                  2631-2635   ///
      long   PRDAY110                  2636-2640   ///
      long   PRDAY111                  2641-2645   ///
      long   PRDAY112                  2646-2650   ///
      long   PRDAY113                  2651-2655   ///
      long   PRDAY114                  2656-2660   ///
      long   PRDAY115                  2661-2665   ///
      long   PRDAY116                  2666-2670   ///
      long   PRDAY117                  2671-2675   ///
      long   PRDAY118                  2676-2680   ///
      long   PRDAY119                  2681-2685   ///
      long   PRDAY120                  2686-2690   ///
      long   PRDAY121                  2691-2695   ///
      long   PRDAY122                  2696-2700   ///
      long   PRDAY123                  2701-2705   ///
      long   PRDAY124                  2706-2710   ///
      long   PRDAY125                  2711-2715   ///
      long   PRDAY126                  2716-2720   ///
      long   PRDAY127                  2721-2725   ///
      long   PRDAY128                  2726-2730   ///
      long   PRDAY129                  2731-2735   ///
      long   PRDAY130                  2736-2740   ///
      long   PRDAY131                  2741-2745   ///
      long   PRDAY132                  2746-2750   ///
      long   PRDAY133                  2751-2755   ///
      long   PRDAY134                  2756-2760   ///
      long   PRDAY135                  2761-2765   ///
      long   PRDAY136                  2766-2770   ///
      long   PRDAY137                  2771-2775   ///
      long   PRDAY138                  2776-2780   ///
      long   PRDAY139                  2781-2785   ///
      long   PRDAY140                  2786-2790   ///
      long   PRDAY141                  2791-2795   ///
      long   PRDAY142                  2796-2800   ///
      long   PRDAY143                  2801-2805   ///
      str    PSTATE                    2806-2807   ///
      str    PSTATE_GEO                2808-2809   ///
      long   PSTCO_GEO                 2810-2814   ///
      byte   RACE                      2815-2816   ///
      byte   RACE_EDIT                 2817-2818   ///
      str    RACE_X                    2819-2831   ///
      double TOTCHG                    2832-2841   ///
      double TOTCHG_X                  2842-2856   ///
      byte   TRAN_IN                   2857-2858   ///
      byte   TRAN_OUT                  2859-2860   ///
      long   VisitLink                 2861-2869   ///
      int    YEAR                      2870-2873   ///
      str    ZIP3                      2874-2876   ///
      int    ZIPINC_QRTL               2877-2879   ///
      int    AYEAR                     2880-2883   ///
      byte   PRMONTH1                  2884-2885   ///
      byte   PRMONTH2                  2886-2887   ///
      byte   PRMONTH3                  2888-2889   ///
      byte   PRMONTH4                  2890-2891   ///
      byte   PRMONTH5                  2892-2893   ///
      byte   PRMONTH6                  2894-2895   ///
      byte   PRMONTH7                  2896-2897   ///
      byte   PRMONTH8                  2898-2899   ///
      byte   PRMONTH9                  2900-2901   ///
      byte   PRMONTH10                 2902-2903   ///
      byte   PRMONTH11                 2904-2905   ///
      byte   PRMONTH12                 2906-2907   ///
      byte   PRMONTH13                 2908-2909   ///
      byte   PRMONTH14                 2910-2911   ///
      byte   PRMONTH15                 2912-2913   ///
      byte   PRMONTH16                 2914-2915   ///
      byte   PRMONTH17                 2916-2917   ///
      byte   PRMONTH18                 2918-2919   ///
      byte   PRMONTH19                 2920-2921   ///
      byte   PRMONTH20                 2922-2923   ///
      byte   PRMONTH21                 2924-2925   ///
      byte   PRMONTH22                 2926-2927   ///
      byte   PRMONTH23                 2928-2929   ///
      byte   PRMONTH24                 2930-2931   ///
      byte   PRMONTH25                 2932-2933   ///
      byte   PRMONTH26                 2934-2935   ///
      byte   PRMONTH27                 2936-2937   ///
      byte   PRMONTH28                 2938-2939   ///
      byte   PRMONTH29                 2940-2941   ///
      byte   PRMONTH30                 2942-2943   ///
      byte   PRMONTH31                 2944-2945   ///
      byte   PRMONTH32                 2946-2947   ///
      byte   PRMONTH33                 2948-2949   ///
      byte   PRMONTH34                 2950-2951   ///
      byte   PRMONTH35                 2952-2953   ///
      byte   PRMONTH36                 2954-2955   ///
      byte   PRMONTH37                 2956-2957   ///
      byte   PRMONTH38                 2958-2959   ///
      byte   PRMONTH39                 2960-2961   ///
      byte   PRMONTH40                 2962-2963   ///
      byte   PRMONTH41                 2964-2965   ///
      byte   PRMONTH42                 2966-2967   ///
      byte   PRMONTH43                 2968-2969   ///
      byte   PRMONTH44                 2970-2971   ///
      byte   PRMONTH45                 2972-2973   ///
      byte   PRMONTH46                 2974-2975   ///
      byte   PRMONTH47                 2976-2977   ///
      byte   PRMONTH48                 2978-2979   ///
      byte   PRMONTH49                 2980-2981   ///
      byte   PRMONTH50                 2982-2983   ///
      byte   PRMONTH51                 2984-2985   ///
      byte   PRMONTH52                 2986-2987   ///
      byte   PRMONTH53                 2988-2989   ///
      byte   PRMONTH54                 2990-2991   ///
      byte   PRMONTH55                 2992-2993   ///
      byte   PRMONTH56                 2994-2995   ///
      byte   PRMONTH57                 2996-2997   ///
      byte   PRMONTH58                 2998-2999   ///
      byte   PRMONTH59                 3000-3001   ///
      byte   PRMONTH60                 3002-3003   ///
      byte   PRMONTH61                 3004-3005   ///
      byte   PRMONTH62                 3006-3007   ///
      byte   PRMONTH63                 3008-3009   ///
      byte   PRMONTH64                 3010-3011   ///
      byte   PRMONTH65                 3012-3013   ///
      byte   PRMONTH66                 3014-3015   ///
      byte   PRMONTH67                 3016-3017   ///
      byte   PRMONTH68                 3018-3019   ///
      byte   PRMONTH69                 3020-3021   ///
      byte   PRMONTH70                 3022-3023   ///
      byte   PRMONTH71                 3024-3025   ///
      byte   PRMONTH72                 3026-3027   ///
      byte   PRMONTH73                 3028-3029   ///
      byte   PRMONTH74                 3030-3031   ///
      byte   PRMONTH75                 3032-3033   ///
      byte   PRMONTH76                 3034-3035   ///
      byte   PRMONTH77                 3036-3037   ///
      byte   PRMONTH78                 3038-3039   ///
      byte   PRMONTH79                 3040-3041   ///
      byte   PRMONTH80                 3042-3043   ///
      byte   PRMONTH81                 3044-3045   ///
      byte   PRMONTH82                 3046-3047   ///
      byte   PRMONTH83                 3048-3049   ///
      byte   PRMONTH84                 3050-3051   ///
      byte   PRMONTH85                 3052-3053   ///
      byte   PRMONTH86                 3054-3055   ///
      byte   PRMONTH87                 3056-3057   ///
      byte   PRMONTH88                 3058-3059   ///
      byte   PRMONTH89                 3060-3061   ///
      byte   PRMONTH90                 3062-3063   ///
      byte   PRMONTH91                 3064-3065   ///
      byte   PRMONTH92                 3066-3067   ///
      byte   PRMONTH93                 3068-3069   ///
      byte   PRMONTH94                 3070-3071   ///
      byte   PRMONTH95                 3072-3073   ///
      byte   PRMONTH96                 3074-3075   ///
      byte   PRMONTH97                 3076-3077   ///
      byte   PRMONTH98                 3078-3079   ///
      byte   PRMONTH99                 3080-3081   ///
      byte   PRMONTH100                3082-3083   ///
      byte   PRMONTH101                3084-3085   ///
      byte   PRMONTH102                3086-3087   ///
      byte   PRMONTH103                3088-3089   ///
      byte   PRMONTH104                3090-3091   ///
      byte   PRMONTH105                3092-3093   ///
      byte   PRMONTH106                3094-3095   ///
      byte   PRMONTH107                3096-3097   ///
      byte   PRMONTH108                3098-3099   ///
      byte   PRMONTH109                3100-3101   ///
      byte   PRMONTH110                3102-3103   ///
      byte   PRMONTH111                3104-3105   ///
      byte   PRMONTH112                3106-3107   ///
      byte   PRMONTH113                3108-3109   ///
      byte   PRMONTH114                3110-3111   ///
      byte   PRMONTH115                3112-3113   ///
      byte   PRMONTH116                3114-3115   ///
      byte   PRMONTH117                3116-3117   ///
      byte   PRMONTH118                3118-3119   ///
      byte   PRMONTH119                3120-3121   ///
      byte   PRMONTH120                3122-3123   ///
      byte   PRMONTH121                3124-3125   ///
      byte   PRMONTH122                3126-3127   ///
      byte   PRMONTH123                3128-3129   ///
      byte   PRMONTH124                3130-3131   ///
      byte   PRMONTH125                3132-3133   ///
      byte   PRMONTH126                3134-3135   ///
      byte   PRMONTH127                3136-3137   ///
      byte   PRMONTH128                3138-3139   ///
      byte   PRMONTH129                3140-3141   ///
      byte   PRMONTH130                3142-3143   ///
      byte   PRMONTH131                3144-3145   ///
      byte   PRMONTH132                3146-3147   ///
      byte   PRMONTH133                3148-3149   ///
      byte   PRMONTH134                3150-3151   ///
      byte   PRMONTH135                3152-3153   ///
      byte   PRMONTH136                3154-3155   ///
      byte   PRMONTH137                3156-3157   ///
      byte   PRMONTH138                3158-3159   ///
      byte   PRMONTH139                3160-3161   ///
      byte   PRMONTH140                3162-3163   ///
      byte   PRMONTH141                3164-3165   ///
      byte   PRMONTH142                3166-3167   ///
      byte   PRMONTH143                3168-3169   ///
      int    PRYEAR1                   3170-3173   ///
      int    PRYEAR2                   3174-3177   ///
      int    PRYEAR3                   3178-3181   ///
      int    PRYEAR4                   3182-3185   ///
      int    PRYEAR5                   3186-3189   ///
      int    PRYEAR6                   3190-3193   ///
      int    PRYEAR7                   3194-3197   ///
      int    PRYEAR8                   3198-3201   ///
      int    PRYEAR9                   3202-3205   ///
      int    PRYEAR10                  3206-3209   ///
      int    PRYEAR11                  3210-3213   ///
      int    PRYEAR12                  3214-3217   ///
      int    PRYEAR13                  3218-3221   ///
      int    PRYEAR14                  3222-3225   ///
      int    PRYEAR15                  3226-3229   ///
      int    PRYEAR16                  3230-3233   ///
      int    PRYEAR17                  3234-3237   ///
      int    PRYEAR18                  3238-3241   ///
      int    PRYEAR19                  3242-3245   ///
      int    PRYEAR20                  3246-3249   ///
      int    PRYEAR21                  3250-3253   ///
      int    PRYEAR22                  3254-3257   ///
      int    PRYEAR23                  3258-3261   ///
      int    PRYEAR24                  3262-3265   ///
      int    PRYEAR25                  3266-3269   ///
      int    PRYEAR26                  3270-3273   ///
      int    PRYEAR27                  3274-3277   ///
      int    PRYEAR28                  3278-3281   ///
      int    PRYEAR29                  3282-3285   ///
      int    PRYEAR30                  3286-3289   ///
      int    PRYEAR31                  3290-3293   ///
      int    PRYEAR32                  3294-3297   ///
      int    PRYEAR33                  3298-3301   ///
      int    PRYEAR34                  3302-3305   ///
      int    PRYEAR35                  3306-3309   ///
      int    PRYEAR36                  3310-3313   ///
      int    PRYEAR37                  3314-3317   ///
      int    PRYEAR38                  3318-3321   ///
      int    PRYEAR39                  3322-3325   ///
      int    PRYEAR40                  3326-3329   ///
      int    PRYEAR41                  3330-3333   ///
      int    PRYEAR42                  3334-3337   ///
      int    PRYEAR43                  3338-3341   ///
      int    PRYEAR44                  3342-3345   ///
      int    PRYEAR45                  3346-3349   ///
      int    PRYEAR46                  3350-3353   ///
      int    PRYEAR47                  3354-3357   ///
      int    PRYEAR48                  3358-3361   ///
      int    PRYEAR49                  3362-3365   ///
      int    PRYEAR50                  3366-3369   ///
      int    PRYEAR51                  3370-3373   ///
      int    PRYEAR52                  3374-3377   ///
      int    PRYEAR53                  3378-3381   ///
      int    PRYEAR54                  3382-3385   ///
      int    PRYEAR55                  3386-3389   ///
      int    PRYEAR56                  3390-3393   ///
      int    PRYEAR57                  3394-3397   ///
      int    PRYEAR58                  3398-3401   ///
      int    PRYEAR59                  3402-3405   ///
      int    PRYEAR60                  3406-3409   ///
      int    PRYEAR61                  3410-3413   ///
      int    PRYEAR62                  3414-3417   ///
      int    PRYEAR63                  3418-3421   ///
      int    PRYEAR64                  3422-3425   ///
      int    PRYEAR65                  3426-3429   ///
      int    PRYEAR66                  3430-3433   ///
      int    PRYEAR67                  3434-3437   ///
      int    PRYEAR68                  3438-3441   ///
      int    PRYEAR69                  3442-3445   ///
      int    PRYEAR70                  3446-3449   ///
      int    PRYEAR71                  3450-3453   ///
      int    PRYEAR72                  3454-3457   ///
      int    PRYEAR73                  3458-3461   ///
      int    PRYEAR74                  3462-3465   ///
      int    PRYEAR75                  3466-3469   ///
      int    PRYEAR76                  3470-3473   ///
      int    PRYEAR77                  3474-3477   ///
      int    PRYEAR78                  3478-3481   ///
      int    PRYEAR79                  3482-3485   ///
      int    PRYEAR80                  3486-3489   ///
      int    PRYEAR81                  3490-3493   ///
      int    PRYEAR82                  3494-3497   ///
      int    PRYEAR83                  3498-3501   ///
      int    PRYEAR84                  3502-3505   ///
      int    PRYEAR85                  3506-3509   ///
      int    PRYEAR86                  3510-3513   ///
      int    PRYEAR87                  3514-3517   ///
      int    PRYEAR88                  3518-3521   ///
      int    PRYEAR89                  3522-3525   ///
      int    PRYEAR90                  3526-3529   ///
      int    PRYEAR91                  3530-3533   ///
      int    PRYEAR92                  3534-3537   ///
      int    PRYEAR93                  3538-3541   ///
      int    PRYEAR94                  3542-3545   ///
      int    PRYEAR95                  3546-3549   ///
      int    PRYEAR96                  3550-3553   ///
      int    PRYEAR97                  3554-3557   ///
      int    PRYEAR98                  3558-3561   ///
      int    PRYEAR99                  3562-3565   ///
      int    PRYEAR100                 3566-3569   ///
      int    PRYEAR101                 3570-3573   ///
      int    PRYEAR102                 3574-3577   ///
      int    PRYEAR103                 3578-3581   ///
      int    PRYEAR104                 3582-3585   ///
      int    PRYEAR105                 3586-3589   ///
      int    PRYEAR106                 3590-3593   ///
      int    PRYEAR107                 3594-3597   ///
      int    PRYEAR108                 3598-3601   ///
      int    PRYEAR109                 3602-3605   ///
      int    PRYEAR110                 3606-3609   ///
      int    PRYEAR111                 3610-3613   ///
      int    PRYEAR112                 3614-3617   ///
      int    PRYEAR113                 3618-3621   ///
      int    PRYEAR114                 3622-3625   ///
      int    PRYEAR115                 3626-3629   ///
      int    PRYEAR116                 3630-3633   ///
      int    PRYEAR117                 3634-3637   ///
      int    PRYEAR118                 3638-3641   ///
      int    PRYEAR119                 3642-3645   ///
      int    PRYEAR120                 3646-3649   ///
      int    PRYEAR121                 3650-3653   ///
      int    PRYEAR122                 3654-3657   ///
      int    PRYEAR123                 3658-3661   ///
      int    PRYEAR124                 3662-3665   ///
      int    PRYEAR125                 3666-3669   ///
      int    PRYEAR126                 3670-3673   ///
      int    PRYEAR127                 3674-3677   ///
      int    PRYEAR128                 3678-3681   ///
      int    PRYEAR129                 3682-3685   ///
      int    PRYEAR130                 3686-3689   ///
      int    PRYEAR131                 3690-3693   ///
      int    PRYEAR132                 3694-3697   ///
      int    PRYEAR133                 3698-3701   ///
      int    PRYEAR134                 3702-3705   ///
      int    PRYEAR135                 3706-3709   ///
      int    PRYEAR136                 3710-3713   ///
      int    PRYEAR137                 3714-3717   ///
      int    PRYEAR138                 3718-3721   ///
      int    PRYEAR139                 3722-3725   ///
      int    PRYEAR140                 3726-3729   ///
      int    PRYEAR141                 3730-3733   ///
      int    PRYEAR142                 3734-3737   ///
      int    PRYEAR143                 3738-3741   ///
      using  "MA_SID_2019_CORE.ASC"

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
label var DXPOA109                 "Diagnosis 109, present on admission indicator"
label var DXPOA110                 "Diagnosis 110, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
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
label var I10_DX104                "ICD-10-CM Diagnosis 104"
label var I10_DX105                "ICD-10-CM Diagnosis 105"
label var I10_DX106                "ICD-10-CM Diagnosis 106"
label var I10_DX107                "ICD-10-CM Diagnosis 107"
label var I10_DX108                "ICD-10-CM Diagnosis 108"
label var I10_DX109                "ICD-10-CM Diagnosis 109"
label var I10_DX110                "ICD-10-CM Diagnosis 110"
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
label var I10_PR128                "ICD-10-PCS Procedure 128"
label var I10_PR129                "ICD-10-PCS Procedure 129"
label var I10_PR130                "ICD-10-PCS Procedure 130"
label var I10_PR131                "ICD-10-PCS Procedure 131"
label var I10_PR132                "ICD-10-PCS Procedure 132"
label var I10_PR133                "ICD-10-PCS Procedure 133"
label var I10_PR134                "ICD-10-PCS Procedure 134"
label var I10_PR135                "ICD-10-PCS Procedure 135"
label var I10_PR136                "ICD-10-PCS Procedure 136"
label var I10_PR137                "ICD-10-PCS Procedure 137"
label var I10_PR138                "ICD-10-PCS Procedure 138"
label var I10_PR139                "ICD-10-PCS Procedure 139"
label var I10_PR140                "ICD-10-PCS Procedure 140"
label var I10_PR141                "ICD-10-PCS Procedure 141"
label var I10_PR142                "ICD-10-PCS Procedure 142"
label var I10_PR143                "ICD-10-PCS Procedure 143"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
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
label var PRDAY128                 "Number of days from admission to I10_PR128"
label var PRDAY129                 "Number of days from admission to I10_PR129"
label var PRDAY130                 "Number of days from admission to I10_PR130"
label var PRDAY131                 "Number of days from admission to I10_PR131"
label var PRDAY132                 "Number of days from admission to I10_PR132"
label var PRDAY133                 "Number of days from admission to I10_PR133"
label var PRDAY134                 "Number of days from admission to I10_PR134"
label var PRDAY135                 "Number of days from admission to I10_PR135"
label var PRDAY136                 "Number of days from admission to I10_PR136"
label var PRDAY137                 "Number of days from admission to I10_PR137"
label var PRDAY138                 "Number of days from admission to I10_PR138"
label var PRDAY139                 "Number of days from admission to I10_PR139"
label var PRDAY140                 "Number of days from admission to I10_PR140"
label var PRDAY141                 "Number of days from admission to I10_PR141"
label var PRDAY142                 "Number of days from admission to I10_PR142"
label var PRDAY143                 "Number of days from admission to I10_PR143"
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
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
label var PRMONTH128               "Month of procedure 128"
label var PRMONTH129               "Month of procedure 129"
label var PRMONTH130               "Month of procedure 130"
label var PRMONTH131               "Month of procedure 131"
label var PRMONTH132               "Month of procedure 132"
label var PRMONTH133               "Month of procedure 133"
label var PRMONTH134               "Month of procedure 134"
label var PRMONTH135               "Month of procedure 135"
label var PRMONTH136               "Month of procedure 136"
label var PRMONTH137               "Month of procedure 137"
label var PRMONTH138               "Month of procedure 138"
label var PRMONTH139               "Month of procedure 139"
label var PRMONTH140               "Month of procedure 140"
label var PRMONTH141               "Month of procedure 141"
label var PRMONTH142               "Month of procedure 142"
label var PRMONTH143               "Month of procedure 143"
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
label var PRYEAR128                "Year of procedure 128"
label var PRYEAR129                "Year of procedure 129"
label var PRYEAR130                "Year of procedure 130"
label var PRYEAR131                "Year of procedure 131"
label var PRYEAR132                "Year of procedure 132"
label var PRYEAR133                "Year of procedure 133"
label var PRYEAR134                "Year of procedure 134"
label var PRYEAR135                "Year of procedure 135"
label var PRYEAR136                "Year of procedure 136"
label var PRYEAR137                "Year of procedure 137"
label var PRYEAR138                "Year of procedure 138"
label var PRYEAR139                "Year of procedure 139"
label var PRYEAR140                "Year of procedure 140"
label var PRYEAR141                "Year of procedure 141"
label var PRYEAR142                "Year of procedure 142"
label var PRYEAR143                "Year of procedure 143"

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
recode I10_BIRTH                 (-99 -88 -66=.)
recode I10_DELIVERY              (-99 -88 -66=.)
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
recode PRDAY128                  (-9999 -8888 -6666=.)
recode PRDAY129                  (-9999 -8888 -6666=.)
recode PRDAY130                  (-9999 -8888 -6666=.)
recode PRDAY131                  (-9999 -8888 -6666=.)
recode PRDAY132                  (-9999 -8888 -6666=.)
recode PRDAY133                  (-9999 -8888 -6666=.)
recode PRDAY134                  (-9999 -8888 -6666=.)
recode PRDAY135                  (-9999 -8888 -6666=.)
recode PRDAY136                  (-9999 -8888 -6666=.)
recode PRDAY137                  (-9999 -8888 -6666=.)
recode PRDAY138                  (-9999 -8888 -6666=.)
recode PRDAY139                  (-9999 -8888 -6666=.)
recode PRDAY140                  (-9999 -8888 -6666=.)
recode PRDAY141                  (-9999 -8888 -6666=.)
recode PRDAY142                  (-9999 -8888 -6666=.)
recode PRDAY143                  (-9999 -8888 -6666=.)
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
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
recode PRMONTH128                (-9 -8 -6 -5=.)
recode PRMONTH129                (-9 -8 -6 -5=.)
recode PRMONTH130                (-9 -8 -6 -5=.)
recode PRMONTH131                (-9 -8 -6 -5=.)
recode PRMONTH132                (-9 -8 -6 -5=.)
recode PRMONTH133                (-9 -8 -6 -5=.)
recode PRMONTH134                (-9 -8 -6 -5=.)
recode PRMONTH135                (-9 -8 -6 -5=.)
recode PRMONTH136                (-9 -8 -6 -5=.)
recode PRMONTH137                (-9 -8 -6 -5=.)
recode PRMONTH138                (-9 -8 -6 -5=.)
recode PRMONTH139                (-9 -8 -6 -5=.)
recode PRMONTH140                (-9 -8 -6 -5=.)
recode PRMONTH141                (-9 -8 -6 -5=.)
recode PRMONTH142                (-9 -8 -6 -5=.)
recode PRMONTH143                (-9 -8 -6 -5=.)
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
recode PRYEAR128                 (-999 -888 -666=.)
recode PRYEAR129                 (-999 -888 -666=.)
recode PRYEAR130                 (-999 -888 -666=.)
recode PRYEAR131                 (-999 -888 -666=.)
recode PRYEAR132                 (-999 -888 -666=.)
recode PRYEAR133                 (-999 -888 -666=.)
recode PRYEAR134                 (-999 -888 -666=.)
recode PRYEAR135                 (-999 -888 -666=.)
recode PRYEAR136                 (-999 -888 -666=.)
recode PRYEAR137                 (-999 -888 -666=.)
recode PRYEAR138                 (-999 -888 -666=.)
recode PRYEAR139                 (-999 -888 -666=.)
recode PRYEAR140                 (-999 -888 -666=.)
recode PRYEAR141                 (-999 -888 -666=.)
recode PRYEAR142                 (-999 -888 -666=.)
recode PRYEAR143                 (-999 -888 -666=.)

save "MA_SID_2019_CORE.dta", replace
