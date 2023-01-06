/*****************************************************************************
* Creation Date: 03/28/2017   
* MA_SID_2014_CORE.Do
* This program will load the 2014 MA ASCII CORE File into Stata.
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
      str    ASOURCEUB92                 20        ///
      str    ASOURCE_X                   21        ///
      byte   ATYPE                       22-  23   ///
      byte   AWEEKEND                    24-  25   ///
      int    BWT                         26-  29   ///
      byte   DIED                        30-  31   ///
      byte   DISPUB04                    32-  33   ///
      byte   DISPUNIFORM                 34-  35   ///
      str    DISP_X                      36-  37   ///
      byte   DMONTH                      38-  39   ///
      byte   DNR                         40-  41   ///
      byte   DQTR                        42-  43   ///
      int    DRG                         44-  46   ///
      int    DRG24                       47-  49   ///
      byte   DRGVER                      50-  51   ///
      int    DRG_NoPOA                   52-  54   ///
      str    DSHOSPID                    55-  71   ///
      str    DX1                         72-  78   ///
      str    DX2                         79-  85   ///
      str    DX3                         86-  92   ///
      str    DX4                         93-  99   ///
      str    DX5                        100- 106   ///
      str    DX6                        107- 113   ///
      str    DX7                        114- 120   ///
      str    DX8                        121- 127   ///
      str    DX9                        128- 134   ///
      str    DX10                       135- 141   ///
      str    DX11                       142- 148   ///
      str    DX12                       149- 155   ///
      str    DX13                       156- 162   ///
      str    DX14                       163- 169   ///
      str    DX15                       170- 176   ///
      str    DX16                       177- 183   ///
      str    DX17                       184- 190   ///
      str    DX18                       191- 197   ///
      str    DX19                       198- 204   ///
      str    DX20                       205- 211   ///
      str    DX21                       212- 218   ///
      str    DX22                       219- 225   ///
      str    DX23                       226- 232   ///
      str    DX24                       233- 239   ///
      str    DX25                       240- 246   ///
      str    DX26                       247- 253   ///
      str    DX27                       254- 260   ///
      str    DX28                       261- 267   ///
      str    DX29                       268- 274   ///
      str    DX30                       275- 281   ///
      str    DX31                       282- 288   ///
      str    DX32                       289- 295   ///
      str    DX33                       296- 302   ///
      str    DX34                       303- 309   ///
      str    DX35                       310- 316   ///
      str    DX36                       317- 323   ///
      str    DX37                       324- 330   ///
      str    DX38                       331- 337   ///
      str    DX39                       338- 344   ///
      str    DX40                       345- 351   ///
      str    DX41                       352- 358   ///
      str    DX42                       359- 365   ///
      str    DX43                       366- 372   ///
      str    DX44                       373- 379   ///
      str    DX45                       380- 386   ///
      str    DX46                       387- 393   ///
      str    DX47                       394- 400   ///
      str    DX48                       401- 407   ///
      str    DX49                       408- 414   ///
      str    DX50                       415- 421   ///
      str    DX51                       422- 428   ///
      str    DX52                       429- 435   ///
      str    DX53                       436- 442   ///
      str    DX54                       443- 449   ///
      str    DX55                       450- 456   ///
      str    DX56                       457- 463   ///
      str    DX57                       464- 470   ///
      str    DX58                       471- 477   ///
      str    DX59                       478- 484   ///
      str    DX60                       485- 491   ///
      str    DX61                       492- 498   ///
      str    DX62                       499- 505   ///
      str    DX63                       506- 512   ///
      str    DX64                       513- 519   ///
      str    DX65                       520- 526   ///
      str    DX66                       527- 533   ///
      str    DX67                       534- 540   ///
      str    DX68                       541- 547   ///
      str    DX69                       548- 554   ///
      str    DX70                       555- 561   ///
      str    DX71                       562- 568   ///
      int    DXCCS1                     569- 572   ///
      int    DXCCS2                     573- 576   ///
      int    DXCCS3                     577- 580   ///
      int    DXCCS4                     581- 584   ///
      int    DXCCS5                     585- 588   ///
      int    DXCCS6                     589- 592   ///
      int    DXCCS7                     593- 596   ///
      int    DXCCS8                     597- 600   ///
      int    DXCCS9                     601- 604   ///
      int    DXCCS10                    605- 608   ///
      int    DXCCS11                    609- 612   ///
      int    DXCCS12                    613- 616   ///
      int    DXCCS13                    617- 620   ///
      int    DXCCS14                    621- 624   ///
      int    DXCCS15                    625- 628   ///
      int    DXCCS16                    629- 632   ///
      int    DXCCS17                    633- 636   ///
      int    DXCCS18                    637- 640   ///
      int    DXCCS19                    641- 644   ///
      int    DXCCS20                    645- 648   ///
      int    DXCCS21                    649- 652   ///
      int    DXCCS22                    653- 656   ///
      int    DXCCS23                    657- 660   ///
      int    DXCCS24                    661- 664   ///
      int    DXCCS25                    665- 668   ///
      int    DXCCS26                    669- 672   ///
      int    DXCCS27                    673- 676   ///
      int    DXCCS28                    677- 680   ///
      int    DXCCS29                    681- 684   ///
      int    DXCCS30                    685- 688   ///
      int    DXCCS31                    689- 692   ///
      int    DXCCS32                    693- 696   ///
      int    DXCCS33                    697- 700   ///
      int    DXCCS34                    701- 704   ///
      int    DXCCS35                    705- 708   ///
      int    DXCCS36                    709- 712   ///
      int    DXCCS37                    713- 716   ///
      int    DXCCS38                    717- 720   ///
      int    DXCCS39                    721- 724   ///
      int    DXCCS40                    725- 728   ///
      int    DXCCS41                    729- 732   ///
      int    DXCCS42                    733- 736   ///
      int    DXCCS43                    737- 740   ///
      int    DXCCS44                    741- 744   ///
      int    DXCCS45                    745- 748   ///
      int    DXCCS46                    749- 752   ///
      int    DXCCS47                    753- 756   ///
      int    DXCCS48                    757- 760   ///
      int    DXCCS49                    761- 764   ///
      int    DXCCS50                    765- 768   ///
      int    DXCCS51                    769- 772   ///
      int    DXCCS52                    773- 776   ///
      int    DXCCS53                    777- 780   ///
      int    DXCCS54                    781- 784   ///
      int    DXCCS55                    785- 788   ///
      int    DXCCS56                    789- 792   ///
      int    DXCCS57                    793- 796   ///
      int    DXCCS58                    797- 800   ///
      int    DXCCS59                    801- 804   ///
      int    DXCCS60                    805- 808   ///
      int    DXCCS61                    809- 812   ///
      int    DXCCS62                    813- 816   ///
      int    DXCCS63                    817- 820   ///
      int    DXCCS64                    821- 824   ///
      int    DXCCS65                    825- 828   ///
      int    DXCCS66                    829- 832   ///
      int    DXCCS67                    833- 836   ///
      int    DXCCS68                    837- 840   ///
      int    DXCCS69                    841- 844   ///
      int    DXCCS70                    845- 848   ///
      int    DXCCS71                    849- 852   ///
      str    DXPOA1                     853        ///
      str    DXPOA2                     854        ///
      str    DXPOA3                     855        ///
      str    DXPOA4                     856        ///
      str    DXPOA5                     857        ///
      str    DXPOA6                     858        ///
      str    DXPOA7                     859        ///
      str    DXPOA8                     860        ///
      str    DXPOA9                     861        ///
      str    DXPOA10                    862        ///
      str    DXPOA11                    863        ///
      str    DXPOA12                    864        ///
      str    DXPOA13                    865        ///
      str    DXPOA14                    866        ///
      str    DXPOA15                    867        ///
      str    DXPOA16                    868        ///
      str    DXPOA17                    869        ///
      str    DXPOA18                    870        ///
      str    DXPOA19                    871        ///
      str    DXPOA20                    872        ///
      str    DXPOA21                    873        ///
      str    DXPOA22                    874        ///
      str    DXPOA23                    875        ///
      str    DXPOA24                    876        ///
      str    DXPOA25                    877        ///
      str    DXPOA26                    878        ///
      str    DXPOA27                    879        ///
      str    DXPOA28                    880        ///
      str    DXPOA29                    881        ///
      str    DXPOA30                    882        ///
      str    DXPOA31                    883        ///
      str    DXPOA32                    884        ///
      str    DXPOA33                    885        ///
      str    DXPOA34                    886        ///
      str    DXPOA35                    887        ///
      str    DXPOA36                    888        ///
      str    DXPOA37                    889        ///
      str    DXPOA38                    890        ///
      str    DXPOA39                    891        ///
      str    DXPOA40                    892        ///
      str    DXPOA41                    893        ///
      str    DXPOA42                    894        ///
      str    DXPOA43                    895        ///
      str    DXPOA44                    896        ///
      str    DXPOA45                    897        ///
      str    DXPOA46                    898        ///
      str    DXPOA47                    899        ///
      str    DXPOA48                    900        ///
      str    DXPOA49                    901        ///
      str    DXPOA50                    902        ///
      str    DXPOA51                    903        ///
      str    DXPOA52                    904        ///
      str    DXPOA53                    905        ///
      str    DXPOA54                    906        ///
      str    DXPOA55                    907        ///
      str    DXPOA56                    908        ///
      str    DXPOA57                    909        ///
      str    DXPOA58                    910        ///
      str    DXPOA59                    911        ///
      str    DXPOA60                    912        ///
      str    DXPOA61                    913        ///
      str    DXPOA62                    914        ///
      str    DXPOA63                    915        ///
      str    DXPOA64                    916        ///
      str    DXPOA65                    917        ///
      str    DXPOA66                    918        ///
      str    DXPOA67                    919        ///
      str    DXPOA68                    920        ///
      str    DXPOA69                    921        ///
      str    DXPOA70                    922        ///
      str    DXPOA71                    923        ///
      int    DXVER                      924- 926   ///
      str    DX_Admitting               927- 933   ///
      int    DaysBetweenVisits          934- 937   ///
      long   DaysToEvent                938- 943   ///
      str    ECODE1                     944- 950   ///
      str    ECODE2                     951- 957   ///
      str    ECODE3                     958- 964   ///
      str    ECODE4                     965- 971   ///
      str    ECODE5                     972- 978   ///
      str    ECODE6                     979- 985   ///
      str    ECODE7                     986- 992   ///
      str    ECODE8                     993- 999   ///
      str    ECODE9                    1000-1006   ///
      str    ECODE10                   1007-1013   ///
      str    ECODE11                   1014-1020   ///
      str    ECODE12                   1021-1027   ///
      str    ECODE13                   1028-1034   ///
      str    ECODE14                   1035-1041   ///
      int    E_CCS1                    1042-1045   ///
      int    E_CCS2                    1046-1049   ///
      int    E_CCS3                    1050-1053   ///
      int    E_CCS4                    1054-1057   ///
      int    E_CCS5                    1058-1061   ///
      int    E_CCS6                    1062-1065   ///
      int    E_CCS7                    1066-1069   ///
      int    E_CCS8                    1070-1073   ///
      int    E_CCS9                    1074-1077   ///
      int    E_CCS10                   1078-1081   ///
      int    E_CCS11                   1082-1085   ///
      int    E_CCS12                   1086-1089   ///
      int    E_CCS13                   1090-1093   ///
      int    E_CCS14                   1094-1097   ///
      str    E_POA1                    1098        ///
      str    E_POA2                    1099        ///
      str    E_POA3                    1100        ///
      str    E_POA4                    1101        ///
      str    E_POA5                    1102        ///
      str    E_POA6                    1103        ///
      str    E_POA7                    1104        ///
      str    E_POA8                    1105        ///
      str    E_POA9                    1106        ///
      str    E_POA10                   1107        ///
      str    E_POA11                   1108        ///
      str    E_POA12                   1109        ///
      str    E_POA13                   1110        ///
      str    E_POA14                   1111        ///
      byte   FEMALE                    1112-1113   ///
      byte   HCUP_ED                   1114-1115   ///
      byte   HCUP_OS                   1116-1117   ///
      str    HISPANIC_X                1118-1132   ///
      int    HOSPBRTH                  1133-1135   ///
      str    HOSPST                    1136-1137   ///
      byte   Homeless                  1138-1139   ///
      double KEY                       1140-1154   ///
      long   LOS                       1155-1159   ///
      long   LOS_X                     1160-1165   ///
      byte   MDC                       1166-1167   ///
      byte   MDC24                     1168-1169   ///
      byte   MDC_NoPOA                 1170-1171   ///
      byte   MEDINCSTQ                 1172-1173   ///
      int    NCHRONIC                  1174-1176   ///
      int    NDX                       1177-1179   ///
      byte   NECODE                    1180-1181   ///
      byte   NEOMAT                    1182-1183   ///
      int    NPR                       1184-1186   ///
      byte   ORPROC                    1187-1188   ///
      double OS_TIME                   1189-1199   ///
      byte   PAY1                      1200-1201   ///
      str    PAY1_X                    1202        ///
      byte   PAY2                      1203-1204   ///
      str    PAY2_X                    1205        ///
      str    PAYER1_X                  1206-1208   ///
      str    PAYER2_X                  1209-1211   ///
      int    PL_CBSA                   1212-1214   ///
      byte   PL_UR_CAT4                1215-1216   ///
      byte   POA_Disch_Edit1           1217-1218   ///
      byte   POA_Disch_Edit2           1219-1220   ///
      byte   POA_Hosp_Edit1            1221-1222   ///
      byte   POA_Hosp_Edit2            1223-1224   ///
      byte   POA_Hosp_Edit3            1225-1226   ///
      double POA_Hosp_Edit3_Value      1227-1234   ///
      str    PR1                       1235-1241   ///
      str    PR2                       1242-1248   ///
      str    PR3                       1249-1255   ///
      str    PR4                       1256-1262   ///
      str    PR5                       1263-1269   ///
      str    PR6                       1270-1276   ///
      str    PR7                       1277-1283   ///
      str    PR8                       1284-1290   ///
      str    PR9                       1291-1297   ///
      str    PR10                      1298-1304   ///
      str    PR11                      1305-1311   ///
      str    PR12                      1312-1318   ///
      str    PR13                      1319-1325   ///
      str    PR14                      1326-1332   ///
      str    PR15                      1333-1339   ///
      str    PR16                      1340-1346   ///
      str    PR17                      1347-1353   ///
      str    PR18                      1354-1360   ///
      str    PR19                      1361-1367   ///
      str    PR20                      1368-1374   ///
      str    PR21                      1375-1381   ///
      str    PR22                      1382-1388   ///
      str    PR23                      1389-1395   ///
      str    PR24                      1396-1402   ///
      str    PR25                      1403-1409   ///
      str    PR26                      1410-1416   ///
      str    PR27                      1417-1423   ///
      str    PR28                      1424-1430   ///
      str    PR29                      1431-1437   ///
      str    PR30                      1438-1444   ///
      str    PR31                      1445-1451   ///
      str    PR32                      1452-1458   ///
      str    PR33                      1459-1465   ///
      str    PR34                      1466-1472   ///
      str    PR35                      1473-1479   ///
      str    PR36                      1480-1486   ///
      str    PR37                      1487-1493   ///
      str    PR38                      1494-1500   ///
      str    PR39                      1501-1507   ///
      str    PR40                      1508-1514   ///
      str    PR41                      1515-1521   ///
      str    PR42                      1522-1528   ///
      str    PR43                      1529-1535   ///
      str    PR44                      1536-1542   ///
      str    PR45                      1543-1549   ///
      str    PR46                      1550-1556   ///
      str    PR47                      1557-1563   ///
      str    PR48                      1564-1570   ///
      str    PR49                      1571-1577   ///
      str    PR50                      1578-1584   ///
      str    PR51                      1585-1591   ///
      str    PR52                      1592-1598   ///
      str    PR53                      1599-1605   ///
      str    PR54                      1606-1612   ///
      str    PR55                      1613-1619   ///
      str    PR56                      1620-1626   ///
      str    PR57                      1627-1633   ///
      str    PR58                      1634-1640   ///
      str    PR59                      1641-1647   ///
      str    PR60                      1648-1654   ///
      str    PR61                      1655-1661   ///
      str    PR62                      1662-1668   ///
      str    PR63                      1669-1675   ///
      str    PR64                      1676-1682   ///
      str    PR65                      1683-1689   ///
      str    PR66                      1690-1696   ///
      int    PRCCS1                    1697-1699   ///
      int    PRCCS2                    1700-1702   ///
      int    PRCCS3                    1703-1705   ///
      int    PRCCS4                    1706-1708   ///
      int    PRCCS5                    1709-1711   ///
      int    PRCCS6                    1712-1714   ///
      int    PRCCS7                    1715-1717   ///
      int    PRCCS8                    1718-1720   ///
      int    PRCCS9                    1721-1723   ///
      int    PRCCS10                   1724-1726   ///
      int    PRCCS11                   1727-1729   ///
      int    PRCCS12                   1730-1732   ///
      int    PRCCS13                   1733-1735   ///
      int    PRCCS14                   1736-1738   ///
      int    PRCCS15                   1739-1741   ///
      int    PRCCS16                   1742-1744   ///
      int    PRCCS17                   1745-1747   ///
      int    PRCCS18                   1748-1750   ///
      int    PRCCS19                   1751-1753   ///
      int    PRCCS20                   1754-1756   ///
      int    PRCCS21                   1757-1759   ///
      int    PRCCS22                   1760-1762   ///
      int    PRCCS23                   1763-1765   ///
      int    PRCCS24                   1766-1768   ///
      int    PRCCS25                   1769-1771   ///
      int    PRCCS26                   1772-1774   ///
      int    PRCCS27                   1775-1777   ///
      int    PRCCS28                   1778-1780   ///
      int    PRCCS29                   1781-1783   ///
      int    PRCCS30                   1784-1786   ///
      int    PRCCS31                   1787-1789   ///
      int    PRCCS32                   1790-1792   ///
      int    PRCCS33                   1793-1795   ///
      int    PRCCS34                   1796-1798   ///
      int    PRCCS35                   1799-1801   ///
      int    PRCCS36                   1802-1804   ///
      int    PRCCS37                   1805-1807   ///
      int    PRCCS38                   1808-1810   ///
      int    PRCCS39                   1811-1813   ///
      int    PRCCS40                   1814-1816   ///
      int    PRCCS41                   1817-1819   ///
      int    PRCCS42                   1820-1822   ///
      int    PRCCS43                   1823-1825   ///
      int    PRCCS44                   1826-1828   ///
      int    PRCCS45                   1829-1831   ///
      int    PRCCS46                   1832-1834   ///
      int    PRCCS47                   1835-1837   ///
      int    PRCCS48                   1838-1840   ///
      int    PRCCS49                   1841-1843   ///
      int    PRCCS50                   1844-1846   ///
      int    PRCCS51                   1847-1849   ///
      int    PRCCS52                   1850-1852   ///
      int    PRCCS53                   1853-1855   ///
      int    PRCCS54                   1856-1858   ///
      int    PRCCS55                   1859-1861   ///
      int    PRCCS56                   1862-1864   ///
      int    PRCCS57                   1865-1867   ///
      int    PRCCS58                   1868-1870   ///
      int    PRCCS59                   1871-1873   ///
      int    PRCCS60                   1874-1876   ///
      int    PRCCS61                   1877-1879   ///
      int    PRCCS62                   1880-1882   ///
      int    PRCCS63                   1883-1885   ///
      int    PRCCS64                   1886-1888   ///
      int    PRCCS65                   1889-1891   ///
      int    PRCCS66                   1892-1894   ///
      long   PRDAY1                    1895-1899   ///
      long   PRDAY2                    1900-1904   ///
      long   PRDAY3                    1905-1909   ///
      long   PRDAY4                    1910-1914   ///
      long   PRDAY5                    1915-1919   ///
      long   PRDAY6                    1920-1924   ///
      long   PRDAY7                    1925-1929   ///
      long   PRDAY8                    1930-1934   ///
      long   PRDAY9                    1935-1939   ///
      long   PRDAY10                   1940-1944   ///
      long   PRDAY11                   1945-1949   ///
      long   PRDAY12                   1950-1954   ///
      long   PRDAY13                   1955-1959   ///
      long   PRDAY14                   1960-1964   ///
      long   PRDAY15                   1965-1969   ///
      long   PRDAY16                   1970-1974   ///
      long   PRDAY17                   1975-1979   ///
      long   PRDAY18                   1980-1984   ///
      long   PRDAY19                   1985-1989   ///
      long   PRDAY20                   1990-1994   ///
      long   PRDAY21                   1995-1999   ///
      long   PRDAY22                   2000-2004   ///
      long   PRDAY23                   2005-2009   ///
      long   PRDAY24                   2010-2014   ///
      long   PRDAY25                   2015-2019   ///
      long   PRDAY26                   2020-2024   ///
      long   PRDAY27                   2025-2029   ///
      long   PRDAY28                   2030-2034   ///
      long   PRDAY29                   2035-2039   ///
      long   PRDAY30                   2040-2044   ///
      long   PRDAY31                   2045-2049   ///
      long   PRDAY32                   2050-2054   ///
      long   PRDAY33                   2055-2059   ///
      long   PRDAY34                   2060-2064   ///
      long   PRDAY35                   2065-2069   ///
      long   PRDAY36                   2070-2074   ///
      long   PRDAY37                   2075-2079   ///
      long   PRDAY38                   2080-2084   ///
      long   PRDAY39                   2085-2089   ///
      long   PRDAY40                   2090-2094   ///
      long   PRDAY41                   2095-2099   ///
      long   PRDAY42                   2100-2104   ///
      long   PRDAY43                   2105-2109   ///
      long   PRDAY44                   2110-2114   ///
      long   PRDAY45                   2115-2119   ///
      long   PRDAY46                   2120-2124   ///
      long   PRDAY47                   2125-2129   ///
      long   PRDAY48                   2130-2134   ///
      long   PRDAY49                   2135-2139   ///
      long   PRDAY50                   2140-2144   ///
      long   PRDAY51                   2145-2149   ///
      long   PRDAY52                   2150-2154   ///
      long   PRDAY53                   2155-2159   ///
      long   PRDAY54                   2160-2164   ///
      long   PRDAY55                   2165-2169   ///
      long   PRDAY56                   2170-2174   ///
      long   PRDAY57                   2175-2179   ///
      long   PRDAY58                   2180-2184   ///
      long   PRDAY59                   2185-2189   ///
      long   PRDAY60                   2190-2194   ///
      long   PRDAY61                   2195-2199   ///
      long   PRDAY62                   2200-2204   ///
      long   PRDAY63                   2205-2209   ///
      long   PRDAY64                   2210-2214   ///
      long   PRDAY65                   2215-2219   ///
      long   PRDAY66                   2220-2224   ///
      int    PROCTYPE                  2225-2227   ///
      int    PRVER                     2228-2230   ///
      str    PSTATE                    2231-2232   ///
      long   PSTCO2                    2233-2237   ///
      byte   RACE                      2238-2239   ///
      str    RACE_X                    2240-2252   ///
      byte   SERVICELINE               2253-2254   ///
      double TOTCHG                    2255-2264   ///
      double TOTCHG_X                  2265-2279   ///
      byte   TRAN_IN                   2280-2281   ///
      byte   TRAN_OUT                  2282-2283   ///
      long   VisitLink                 2284-2292   ///
      int    YEAR                      2293-2296   ///
      str    ZIP3                      2297-2299   ///
      int    ZIPINC_QRTL               2300-2302   ///
      int    AYEAR                     2303-2306   ///
      byte   PRMONTH1                  2307-2308   ///
      byte   PRMONTH2                  2309-2310   ///
      byte   PRMONTH3                  2311-2312   ///
      byte   PRMONTH4                  2313-2314   ///
      byte   PRMONTH5                  2315-2316   ///
      byte   PRMONTH6                  2317-2318   ///
      byte   PRMONTH7                  2319-2320   ///
      byte   PRMONTH8                  2321-2322   ///
      byte   PRMONTH9                  2323-2324   ///
      byte   PRMONTH10                 2325-2326   ///
      byte   PRMONTH11                 2327-2328   ///
      byte   PRMONTH12                 2329-2330   ///
      byte   PRMONTH13                 2331-2332   ///
      byte   PRMONTH14                 2333-2334   ///
      byte   PRMONTH15                 2335-2336   ///
      byte   PRMONTH16                 2337-2338   ///
      byte   PRMONTH17                 2339-2340   ///
      byte   PRMONTH18                 2341-2342   ///
      byte   PRMONTH19                 2343-2344   ///
      byte   PRMONTH20                 2345-2346   ///
      byte   PRMONTH21                 2347-2348   ///
      byte   PRMONTH22                 2349-2350   ///
      byte   PRMONTH23                 2351-2352   ///
      byte   PRMONTH24                 2353-2354   ///
      byte   PRMONTH25                 2355-2356   ///
      byte   PRMONTH26                 2357-2358   ///
      byte   PRMONTH27                 2359-2360   ///
      byte   PRMONTH28                 2361-2362   ///
      byte   PRMONTH29                 2363-2364   ///
      byte   PRMONTH30                 2365-2366   ///
      byte   PRMONTH31                 2367-2368   ///
      byte   PRMONTH32                 2369-2370   ///
      byte   PRMONTH33                 2371-2372   ///
      byte   PRMONTH34                 2373-2374   ///
      byte   PRMONTH35                 2375-2376   ///
      byte   PRMONTH36                 2377-2378   ///
      byte   PRMONTH37                 2379-2380   ///
      byte   PRMONTH38                 2381-2382   ///
      byte   PRMONTH39                 2383-2384   ///
      byte   PRMONTH40                 2385-2386   ///
      byte   PRMONTH41                 2387-2388   ///
      byte   PRMONTH42                 2389-2390   ///
      byte   PRMONTH43                 2391-2392   ///
      byte   PRMONTH44                 2393-2394   ///
      byte   PRMONTH45                 2395-2396   ///
      byte   PRMONTH46                 2397-2398   ///
      byte   PRMONTH47                 2399-2400   ///
      byte   PRMONTH48                 2401-2402   ///
      byte   PRMONTH49                 2403-2404   ///
      byte   PRMONTH50                 2405-2406   ///
      byte   PRMONTH51                 2407-2408   ///
      byte   PRMONTH52                 2409-2410   ///
      byte   PRMONTH53                 2411-2412   ///
      byte   PRMONTH54                 2413-2414   ///
      byte   PRMONTH55                 2415-2416   ///
      byte   PRMONTH56                 2417-2418   ///
      byte   PRMONTH57                 2419-2420   ///
      byte   PRMONTH58                 2421-2422   ///
      byte   PRMONTH59                 2423-2424   ///
      byte   PRMONTH60                 2425-2426   ///
      byte   PRMONTH61                 2427-2428   ///
      byte   PRMONTH62                 2429-2430   ///
      byte   PRMONTH63                 2431-2432   ///
      byte   PRMONTH64                 2433-2434   ///
      byte   PRMONTH65                 2435-2436   ///
      byte   PRMONTH66                 2437-2438   ///
      int    PRYEAR1                   2439-2442   ///
      int    PRYEAR2                   2443-2446   ///
      int    PRYEAR3                   2447-2450   ///
      int    PRYEAR4                   2451-2454   ///
      int    PRYEAR5                   2455-2458   ///
      int    PRYEAR6                   2459-2462   ///
      int    PRYEAR7                   2463-2466   ///
      int    PRYEAR8                   2467-2470   ///
      int    PRYEAR9                   2471-2474   ///
      int    PRYEAR10                  2475-2478   ///
      int    PRYEAR11                  2479-2482   ///
      int    PRYEAR12                  2483-2486   ///
      int    PRYEAR13                  2487-2490   ///
      int    PRYEAR14                  2491-2494   ///
      int    PRYEAR15                  2495-2498   ///
      int    PRYEAR16                  2499-2502   ///
      int    PRYEAR17                  2503-2506   ///
      int    PRYEAR18                  2507-2510   ///
      int    PRYEAR19                  2511-2514   ///
      int    PRYEAR20                  2515-2518   ///
      int    PRYEAR21                  2519-2522   ///
      int    PRYEAR22                  2523-2526   ///
      int    PRYEAR23                  2527-2530   ///
      int    PRYEAR24                  2531-2534   ///
      int    PRYEAR25                  2535-2538   ///
      int    PRYEAR26                  2539-2542   ///
      int    PRYEAR27                  2543-2546   ///
      int    PRYEAR28                  2547-2550   ///
      int    PRYEAR29                  2551-2554   ///
      int    PRYEAR30                  2555-2558   ///
      int    PRYEAR31                  2559-2562   ///
      int    PRYEAR32                  2563-2566   ///
      int    PRYEAR33                  2567-2570   ///
      int    PRYEAR34                  2571-2574   ///
      int    PRYEAR35                  2575-2578   ///
      int    PRYEAR36                  2579-2582   ///
      int    PRYEAR37                  2583-2586   ///
      int    PRYEAR38                  2587-2590   ///
      int    PRYEAR39                  2591-2594   ///
      int    PRYEAR40                  2595-2598   ///
      int    PRYEAR41                  2599-2602   ///
      int    PRYEAR42                  2603-2606   ///
      int    PRYEAR43                  2607-2610   ///
      int    PRYEAR44                  2611-2614   ///
      int    PRYEAR45                  2615-2618   ///
      int    PRYEAR46                  2619-2622   ///
      int    PRYEAR47                  2623-2626   ///
      int    PRYEAR48                  2627-2630   ///
      int    PRYEAR49                  2631-2634   ///
      int    PRYEAR50                  2635-2638   ///
      int    PRYEAR51                  2639-2642   ///
      int    PRYEAR52                  2643-2646   ///
      int    PRYEAR53                  2647-2650   ///
      int    PRYEAR54                  2651-2654   ///
      int    PRYEAR55                  2655-2658   ///
      int    PRYEAR56                  2659-2662   ///
      int    PRYEAR57                  2663-2666   ///
      int    PRYEAR58                  2667-2670   ///
      int    PRYEAR59                  2671-2674   ///
      int    PRYEAR60                  2675-2678   ///
      int    PRYEAR61                  2679-2682   ///
      int    PRYEAR62                  2683-2686   ///
      int    PRYEAR63                  2687-2690   ///
      int    PRYEAR64                  2691-2694   ///
      int    PRYEAR65                  2695-2698   ///
      int    PRYEAR66                  2699-2702   ///
      using  "MA_SID_2014_CORE.ASC"

***  Assign labels to the data elements ***
label var ADRG                     "All Patient Refined DRG"
label var ADRGRISKMORTALITY        "All Patient Refined DRG mortality risk"
label var ADRGSEV                  "All Patient Refined DRG severity level"
label var AGE                      "Age in years at admission"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMDC                     "All Patient Refined MDC"
label var AMONTH                   "Admission month"
label var ASOURCE                  "Admission source (uniform)"
label var ASOURCEUB92              "Admission source (UB-92 standard coding)"
label var ASOURCE_X                "Admission source (as received from source)"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DMONTH                   "Discharge month"
label var DNR                      "Do not resuscitate indicator"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRG24                    "DRG, version 24"
label var DRGVER                   "DRG grouper version used on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
label var DSHOSPID                 "Data source hospital identifier"
label var DX1                      "Diagnosis 1"
label var DX2                      "Diagnosis 2"
label var DX3                      "Diagnosis 3"
label var DX4                      "Diagnosis 4"
label var DX5                      "Diagnosis 5"
label var DX6                      "Diagnosis 6"
label var DX7                      "Diagnosis 7"
label var DX8                      "Diagnosis 8"
label var DX9                      "Diagnosis 9"
label var DX10                     "Diagnosis 10"
label var DX11                     "Diagnosis 11"
label var DX12                     "Diagnosis 12"
label var DX13                     "Diagnosis 13"
label var DX14                     "Diagnosis 14"
label var DX15                     "Diagnosis 15"
label var DX16                     "Diagnosis 16"
label var DX17                     "Diagnosis 17"
label var DX18                     "Diagnosis 18"
label var DX19                     "Diagnosis 19"
label var DX20                     "Diagnosis 20"
label var DX21                     "Diagnosis 21"
label var DX22                     "Diagnosis 22"
label var DX23                     "Diagnosis 23"
label var DX24                     "Diagnosis 24"
label var DX25                     "Diagnosis 25"
label var DX26                     "Diagnosis 26"
label var DX27                     "Diagnosis 27"
label var DX28                     "Diagnosis 28"
label var DX29                     "Diagnosis 29"
label var DX30                     "Diagnosis 30"
label var DX31                     "Diagnosis 31"
label var DX32                     "Diagnosis 32"
label var DX33                     "Diagnosis 33"
label var DX34                     "Diagnosis 34"
label var DX35                     "Diagnosis 35"
label var DX36                     "Diagnosis 36"
label var DX37                     "Diagnosis 37"
label var DX38                     "Diagnosis 38"
label var DX39                     "Diagnosis 39"
label var DX40                     "Diagnosis 40"
label var DX41                     "Diagnosis 41"
label var DX42                     "Diagnosis 42"
label var DX43                     "Diagnosis 43"
label var DX44                     "Diagnosis 44"
label var DX45                     "Diagnosis 45"
label var DX46                     "Diagnosis 46"
label var DX47                     "Diagnosis 47"
label var DX48                     "Diagnosis 48"
label var DX49                     "Diagnosis 49"
label var DX50                     "Diagnosis 50"
label var DX51                     "Diagnosis 51"
label var DX52                     "Diagnosis 52"
label var DX53                     "Diagnosis 53"
label var DX54                     "Diagnosis 54"
label var DX55                     "Diagnosis 55"
label var DX56                     "Diagnosis 56"
label var DX57                     "Diagnosis 57"
label var DX58                     "Diagnosis 58"
label var DX59                     "Diagnosis 59"
label var DX60                     "Diagnosis 60"
label var DX61                     "Diagnosis 61"
label var DX62                     "Diagnosis 62"
label var DX63                     "Diagnosis 63"
label var DX64                     "Diagnosis 64"
label var DX65                     "Diagnosis 65"
label var DX66                     "Diagnosis 66"
label var DX67                     "Diagnosis 67"
label var DX68                     "Diagnosis 68"
label var DX69                     "Diagnosis 69"
label var DX70                     "Diagnosis 70"
label var DX71                     "Diagnosis 71"
label var DXCCS1                   "CCS: diagnosis 1"
label var DXCCS2                   "CCS: diagnosis 2"
label var DXCCS3                   "CCS: diagnosis 3"
label var DXCCS4                   "CCS: diagnosis 4"
label var DXCCS5                   "CCS: diagnosis 5"
label var DXCCS6                   "CCS: diagnosis 6"
label var DXCCS7                   "CCS: diagnosis 7"
label var DXCCS8                   "CCS: diagnosis 8"
label var DXCCS9                   "CCS: diagnosis 9"
label var DXCCS10                  "CCS: diagnosis 10"
label var DXCCS11                  "CCS: diagnosis 11"
label var DXCCS12                  "CCS: diagnosis 12"
label var DXCCS13                  "CCS: diagnosis 13"
label var DXCCS14                  "CCS: diagnosis 14"
label var DXCCS15                  "CCS: diagnosis 15"
label var DXCCS16                  "CCS: diagnosis 16"
label var DXCCS17                  "CCS: diagnosis 17"
label var DXCCS18                  "CCS: diagnosis 18"
label var DXCCS19                  "CCS: diagnosis 19"
label var DXCCS20                  "CCS: diagnosis 20"
label var DXCCS21                  "CCS: diagnosis 21"
label var DXCCS22                  "CCS: diagnosis 22"
label var DXCCS23                  "CCS: diagnosis 23"
label var DXCCS24                  "CCS: diagnosis 24"
label var DXCCS25                  "CCS: diagnosis 25"
label var DXCCS26                  "CCS: diagnosis 26"
label var DXCCS27                  "CCS: diagnosis 27"
label var DXCCS28                  "CCS: diagnosis 28"
label var DXCCS29                  "CCS: diagnosis 29"
label var DXCCS30                  "CCS: diagnosis 30"
label var DXCCS31                  "CCS: diagnosis 31"
label var DXCCS32                  "CCS: diagnosis 32"
label var DXCCS33                  "CCS: diagnosis 33"
label var DXCCS34                  "CCS: diagnosis 34"
label var DXCCS35                  "CCS: diagnosis 35"
label var DXCCS36                  "CCS: diagnosis 36"
label var DXCCS37                  "CCS: diagnosis 37"
label var DXCCS38                  "CCS: diagnosis 38"
label var DXCCS39                  "CCS: diagnosis 39"
label var DXCCS40                  "CCS: diagnosis 40"
label var DXCCS41                  "CCS: diagnosis 41"
label var DXCCS42                  "CCS: diagnosis 42"
label var DXCCS43                  "CCS: diagnosis 43"
label var DXCCS44                  "CCS: diagnosis 44"
label var DXCCS45                  "CCS: diagnosis 45"
label var DXCCS46                  "CCS: diagnosis 46"
label var DXCCS47                  "CCS: diagnosis 47"
label var DXCCS48                  "CCS: diagnosis 48"
label var DXCCS49                  "CCS: diagnosis 49"
label var DXCCS50                  "CCS: diagnosis 50"
label var DXCCS51                  "CCS: diagnosis 51"
label var DXCCS52                  "CCS: diagnosis 52"
label var DXCCS53                  "CCS: diagnosis 53"
label var DXCCS54                  "CCS: diagnosis 54"
label var DXCCS55                  "CCS: diagnosis 55"
label var DXCCS56                  "CCS: diagnosis 56"
label var DXCCS57                  "CCS: diagnosis 57"
label var DXCCS58                  "CCS: diagnosis 58"
label var DXCCS59                  "CCS: diagnosis 59"
label var DXCCS60                  "CCS: diagnosis 60"
label var DXCCS61                  "CCS: diagnosis 61"
label var DXCCS62                  "CCS: diagnosis 62"
label var DXCCS63                  "CCS: diagnosis 63"
label var DXCCS64                  "CCS: diagnosis 64"
label var DXCCS65                  "CCS: diagnosis 65"
label var DXCCS66                  "CCS: diagnosis 66"
label var DXCCS67                  "CCS: diagnosis 67"
label var DXCCS68                  "CCS: diagnosis 68"
label var DXCCS69                  "CCS: diagnosis 69"
label var DXCCS70                  "CCS: diagnosis 70"
label var DXCCS71                  "CCS: diagnosis 71"
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
label var DX_Admitting             "Admitting Diagnosis Code"
label var DaysBetweenVisits        "Number of days between visits"
label var DaysToEvent              "Days from 'start date' to admission"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var ECODE8                   "E code 8"
label var ECODE9                   "E code 9"
label var ECODE10                  "E code 10"
label var ECODE11                  "E code 11"
label var ECODE12                  "E code 12"
label var ECODE13                  "E code 13"
label var ECODE14                  "E code 14"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_CCS7                   "CCS: E Code 7"
label var E_CCS8                   "CCS: E Code 8"
label var E_CCS9                   "CCS: E Code 9"
label var E_CCS10                  "CCS: E Code 10"
label var E_CCS11                  "CCS: E Code 11"
label var E_CCS12                  "CCS: E Code 12"
label var E_CCS13                  "CCS: E Code 13"
label var E_CCS14                  "CCS: E Code 14"
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var E_POA7                   "E Code 7, present on admission indicator"
label var E_POA8                   "E Code 8, present on admission indicator"
label var E_POA9                   "E Code 9, present on admission indicator"
label var E_POA10                  "E Code 10, present on admission indicator"
label var E_POA11                  "E Code 11, present on admission indicator"
label var E_POA12                  "E Code 12, present on admission indicator"
label var E_POA13                  "E Code 13, present on admission indicator"
label var E_POA14                  "E Code 14, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var Homeless                 "Indicator that patient is homeless"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC24                    "MDC, version 24"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCHRONIC                 "Number of chronic conditions"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
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
label var PR1                      "Procedure 1"
label var PR2                      "Procedure 2"
label var PR3                      "Procedure 3"
label var PR4                      "Procedure 4"
label var PR5                      "Procedure 5"
label var PR6                      "Procedure 6"
label var PR7                      "Procedure 7"
label var PR8                      "Procedure 8"
label var PR9                      "Procedure 9"
label var PR10                     "Procedure 10"
label var PR11                     "Procedure 11"
label var PR12                     "Procedure 12"
label var PR13                     "Procedure 13"
label var PR14                     "Procedure 14"
label var PR15                     "Procedure 15"
label var PR16                     "Procedure 16"
label var PR17                     "Procedure 17"
label var PR18                     "Procedure 18"
label var PR19                     "Procedure 19"
label var PR20                     "Procedure 20"
label var PR21                     "Procedure 21"
label var PR22                     "Procedure 22"
label var PR23                     "Procedure 23"
label var PR24                     "Procedure 24"
label var PR25                     "Procedure 25"
label var PR26                     "Procedure 26"
label var PR27                     "Procedure 27"
label var PR28                     "Procedure 28"
label var PR29                     "Procedure 29"
label var PR30                     "Procedure 30"
label var PR31                     "Procedure 31"
label var PR32                     "Procedure 32"
label var PR33                     "Procedure 33"
label var PR34                     "Procedure 34"
label var PR35                     "Procedure 35"
label var PR36                     "Procedure 36"
label var PR37                     "Procedure 37"
label var PR38                     "Procedure 38"
label var PR39                     "Procedure 39"
label var PR40                     "Procedure 40"
label var PR41                     "Procedure 41"
label var PR42                     "Procedure 42"
label var PR43                     "Procedure 43"
label var PR44                     "Procedure 44"
label var PR45                     "Procedure 45"
label var PR46                     "Procedure 46"
label var PR47                     "Procedure 47"
label var PR48                     "Procedure 48"
label var PR49                     "Procedure 49"
label var PR50                     "Procedure 50"
label var PR51                     "Procedure 51"
label var PR52                     "Procedure 52"
label var PR53                     "Procedure 53"
label var PR54                     "Procedure 54"
label var PR55                     "Procedure 55"
label var PR56                     "Procedure 56"
label var PR57                     "Procedure 57"
label var PR58                     "Procedure 58"
label var PR59                     "Procedure 59"
label var PR60                     "Procedure 60"
label var PR61                     "Procedure 61"
label var PR62                     "Procedure 62"
label var PR63                     "Procedure 63"
label var PR64                     "Procedure 64"
label var PR65                     "Procedure 65"
label var PR66                     "Procedure 66"
label var PRCCS1                   "CCS: procedure 1"
label var PRCCS2                   "CCS: procedure 2"
label var PRCCS3                   "CCS: procedure 3"
label var PRCCS4                   "CCS: procedure 4"
label var PRCCS5                   "CCS: procedure 5"
label var PRCCS6                   "CCS: procedure 6"
label var PRCCS7                   "CCS: procedure 7"
label var PRCCS8                   "CCS: procedure 8"
label var PRCCS9                   "CCS: procedure 9"
label var PRCCS10                  "CCS: procedure 10"
label var PRCCS11                  "CCS: procedure 11"
label var PRCCS12                  "CCS: procedure 12"
label var PRCCS13                  "CCS: procedure 13"
label var PRCCS14                  "CCS: procedure 14"
label var PRCCS15                  "CCS: procedure 15"
label var PRCCS16                  "CCS: procedure 16"
label var PRCCS17                  "CCS: procedure 17"
label var PRCCS18                  "CCS: procedure 18"
label var PRCCS19                  "CCS: procedure 19"
label var PRCCS20                  "CCS: procedure 20"
label var PRCCS21                  "CCS: procedure 21"
label var PRCCS22                  "CCS: procedure 22"
label var PRCCS23                  "CCS: procedure 23"
label var PRCCS24                  "CCS: procedure 24"
label var PRCCS25                  "CCS: procedure 25"
label var PRCCS26                  "CCS: procedure 26"
label var PRCCS27                  "CCS: procedure 27"
label var PRCCS28                  "CCS: procedure 28"
label var PRCCS29                  "CCS: procedure 29"
label var PRCCS30                  "CCS: procedure 30"
label var PRCCS31                  "CCS: procedure 31"
label var PRCCS32                  "CCS: procedure 32"
label var PRCCS33                  "CCS: procedure 33"
label var PRCCS34                  "CCS: procedure 34"
label var PRCCS35                  "CCS: procedure 35"
label var PRCCS36                  "CCS: procedure 36"
label var PRCCS37                  "CCS: procedure 37"
label var PRCCS38                  "CCS: procedure 38"
label var PRCCS39                  "CCS: procedure 39"
label var PRCCS40                  "CCS: procedure 40"
label var PRCCS41                  "CCS: procedure 41"
label var PRCCS42                  "CCS: procedure 42"
label var PRCCS43                  "CCS: procedure 43"
label var PRCCS44                  "CCS: procedure 44"
label var PRCCS45                  "CCS: procedure 45"
label var PRCCS46                  "CCS: procedure 46"
label var PRCCS47                  "CCS: procedure 47"
label var PRCCS48                  "CCS: procedure 48"
label var PRCCS49                  "CCS: procedure 49"
label var PRCCS50                  "CCS: procedure 50"
label var PRCCS51                  "CCS: procedure 51"
label var PRCCS52                  "CCS: procedure 52"
label var PRCCS53                  "CCS: procedure 53"
label var PRCCS54                  "CCS: procedure 54"
label var PRCCS55                  "CCS: procedure 55"
label var PRCCS56                  "CCS: procedure 56"
label var PRCCS57                  "CCS: procedure 57"
label var PRCCS58                  "CCS: procedure 58"
label var PRCCS59                  "CCS: procedure 59"
label var PRCCS60                  "CCS: procedure 60"
label var PRCCS61                  "CCS: procedure 61"
label var PRCCS62                  "CCS: procedure 62"
label var PRCCS63                  "CCS: procedure 63"
label var PRCCS64                  "CCS: procedure 64"
label var PRCCS65                  "CCS: procedure 65"
label var PRCCS66                  "CCS: procedure 66"
label var PRDAY1                   "Number of days from admission to PR1"
label var PRDAY2                   "Number of days from admission to PR2"
label var PRDAY3                   "Number of days from admission to PR3"
label var PRDAY4                   "Number of days from admission to PR4"
label var PRDAY5                   "Number of days from admission to PR5"
label var PRDAY6                   "Number of days from admission to PR6"
label var PRDAY7                   "Number of days from admission to PR7"
label var PRDAY8                   "Number of days from admission to PR8"
label var PRDAY9                   "Number of days from admission to PR9"
label var PRDAY10                  "Number of days from admission to PR10"
label var PRDAY11                  "Number of days from admission to PR11"
label var PRDAY12                  "Number of days from admission to PR12"
label var PRDAY13                  "Number of days from admission to PR13"
label var PRDAY14                  "Number of days from admission to PR14"
label var PRDAY15                  "Number of days from admission to PR15"
label var PRDAY16                  "Number of days from admission to PR16"
label var PRDAY17                  "Number of days from admission to PR17"
label var PRDAY18                  "Number of days from admission to PR18"
label var PRDAY19                  "Number of days from admission to PR19"
label var PRDAY20                  "Number of days from admission to PR20"
label var PRDAY21                  "Number of days from admission to PR21"
label var PRDAY22                  "Number of days from admission to PR22"
label var PRDAY23                  "Number of days from admission to PR23"
label var PRDAY24                  "Number of days from admission to PR24"
label var PRDAY25                  "Number of days from admission to PR25"
label var PRDAY26                  "Number of days from admission to PR26"
label var PRDAY27                  "Number of days from admission to PR27"
label var PRDAY28                  "Number of days from admission to PR28"
label var PRDAY29                  "Number of days from admission to PR29"
label var PRDAY30                  "Number of days from admission to PR30"
label var PRDAY31                  "Number of days from admission to PR31"
label var PRDAY32                  "Number of days from admission to PR32"
label var PRDAY33                  "Number of days from admission to PR33"
label var PRDAY34                  "Number of days from admission to PR34"
label var PRDAY35                  "Number of days from admission to PR35"
label var PRDAY36                  "Number of days from admission to PR36"
label var PRDAY37                  "Number of days from admission to PR37"
label var PRDAY38                  "Number of days from admission to PR38"
label var PRDAY39                  "Number of days from admission to PR39"
label var PRDAY40                  "Number of days from admission to PR40"
label var PRDAY41                  "Number of days from admission to PR41"
label var PRDAY42                  "Number of days from admission to PR42"
label var PRDAY43                  "Number of days from admission to PR43"
label var PRDAY44                  "Number of days from admission to PR44"
label var PRDAY45                  "Number of days from admission to PR45"
label var PRDAY46                  "Number of days from admission to PR46"
label var PRDAY47                  "Number of days from admission to PR47"
label var PRDAY48                  "Number of days from admission to PR48"
label var PRDAY49                  "Number of days from admission to PR49"
label var PRDAY50                  "Number of days from admission to PR50"
label var PRDAY51                  "Number of days from admission to PR51"
label var PRDAY52                  "Number of days from admission to PR52"
label var PRDAY53                  "Number of days from admission to PR53"
label var PRDAY54                  "Number of days from admission to PR54"
label var PRDAY55                  "Number of days from admission to PR55"
label var PRDAY56                  "Number of days from admission to PR56"
label var PRDAY57                  "Number of days from admission to PR57"
label var PRDAY58                  "Number of days from admission to PR58"
label var PRDAY59                  "Number of days from admission to PR59"
label var PRDAY60                  "Number of days from admission to PR60"
label var PRDAY61                  "Number of days from admission to PR61"
label var PRDAY62                  "Number of days from admission to PR62"
label var PRDAY63                  "Number of days from admission to PR63"
label var PRDAY64                  "Number of days from admission to PR64"
label var PRDAY65                  "Number of days from admission to PR65"
label var PRDAY66                  "Number of days from admission to PR66"
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var SERVICELINE              "Hospital Service Line"
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
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DNR                       (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG24                     (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DXCCS1                    (-999 -888 -666=.)
recode DXCCS2                    (-999 -888 -666=.)
recode DXCCS3                    (-999 -888 -666=.)
recode DXCCS4                    (-999 -888 -666=.)
recode DXCCS5                    (-999 -888 -666=.)
recode DXCCS6                    (-999 -888 -666=.)
recode DXCCS7                    (-999 -888 -666=.)
recode DXCCS8                    (-999 -888 -666=.)
recode DXCCS9                    (-999 -888 -666=.)
recode DXCCS10                   (-999 -888 -666=.)
recode DXCCS11                   (-999 -888 -666=.)
recode DXCCS12                   (-999 -888 -666=.)
recode DXCCS13                   (-999 -888 -666=.)
recode DXCCS14                   (-999 -888 -666=.)
recode DXCCS15                   (-999 -888 -666=.)
recode DXCCS16                   (-999 -888 -666=.)
recode DXCCS17                   (-999 -888 -666=.)
recode DXCCS18                   (-999 -888 -666=.)
recode DXCCS19                   (-999 -888 -666=.)
recode DXCCS20                   (-999 -888 -666=.)
recode DXCCS21                   (-999 -888 -666=.)
recode DXCCS22                   (-999 -888 -666=.)
recode DXCCS23                   (-999 -888 -666=.)
recode DXCCS24                   (-999 -888 -666=.)
recode DXCCS25                   (-999 -888 -666=.)
recode DXCCS26                   (-999 -888 -666=.)
recode DXCCS27                   (-999 -888 -666=.)
recode DXCCS28                   (-999 -888 -666=.)
recode DXCCS29                   (-999 -888 -666=.)
recode DXCCS30                   (-999 -888 -666=.)
recode DXCCS31                   (-999 -888 -666=.)
recode DXCCS32                   (-999 -888 -666=.)
recode DXCCS33                   (-999 -888 -666=.)
recode DXCCS34                   (-999 -888 -666=.)
recode DXCCS35                   (-999 -888 -666=.)
recode DXCCS36                   (-999 -888 -666=.)
recode DXCCS37                   (-999 -888 -666=.)
recode DXCCS38                   (-999 -888 -666=.)
recode DXCCS39                   (-999 -888 -666=.)
recode DXCCS40                   (-999 -888 -666=.)
recode DXCCS41                   (-999 -888 -666=.)
recode DXCCS42                   (-999 -888 -666=.)
recode DXCCS43                   (-999 -888 -666=.)
recode DXCCS44                   (-999 -888 -666=.)
recode DXCCS45                   (-999 -888 -666=.)
recode DXCCS46                   (-999 -888 -666=.)
recode DXCCS47                   (-999 -888 -666=.)
recode DXCCS48                   (-999 -888 -666=.)
recode DXCCS49                   (-999 -888 -666=.)
recode DXCCS50                   (-999 -888 -666=.)
recode DXCCS51                   (-999 -888 -666=.)
recode DXCCS52                   (-999 -888 -666=.)
recode DXCCS53                   (-999 -888 -666=.)
recode DXCCS54                   (-999 -888 -666=.)
recode DXCCS55                   (-999 -888 -666=.)
recode DXCCS56                   (-999 -888 -666=.)
recode DXCCS57                   (-999 -888 -666=.)
recode DXCCS58                   (-999 -888 -666=.)
recode DXCCS59                   (-999 -888 -666=.)
recode DXCCS60                   (-999 -888 -666=.)
recode DXCCS61                   (-999 -888 -666=.)
recode DXCCS62                   (-999 -888 -666=.)
recode DXCCS63                   (-999 -888 -666=.)
recode DXCCS64                   (-999 -888 -666=.)
recode DXCCS65                   (-999 -888 -666=.)
recode DXCCS66                   (-999 -888 -666=.)
recode DXCCS67                   (-999 -888 -666=.)
recode DXCCS68                   (-999 -888 -666=.)
recode DXCCS69                   (-999 -888 -666=.)
recode DXCCS70                   (-999 -888 -666=.)
recode DXCCS71                   (-999 -888 -666=.)
recode DXVER                     (-99 -88 -66=.)
recode DaysBetweenVisits         (-999 -888 -666=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode E_CCS1                    (-999 -888 -666=.)
recode E_CCS2                    (-999 -888 -666=.)
recode E_CCS3                    (-999 -888 -666=.)
recode E_CCS4                    (-999 -888 -666=.)
recode E_CCS5                    (-999 -888 -666=.)
recode E_CCS6                    (-999 -888 -666=.)
recode E_CCS7                    (-999 -888 -666=.)
recode E_CCS8                    (-999 -888 -666=.)
recode E_CCS9                    (-999 -888 -666=.)
recode E_CCS10                   (-999 -888 -666=.)
recode E_CCS11                   (-999 -888 -666=.)
recode E_CCS12                   (-999 -888 -666=.)
recode E_CCS13                   (-999 -888 -666=.)
recode E_CCS14                   (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC24                     (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
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
recode PRCCS1                    (-99 -88 -66=.)
recode PRCCS2                    (-99 -88 -66=.)
recode PRCCS3                    (-99 -88 -66=.)
recode PRCCS4                    (-99 -88 -66=.)
recode PRCCS5                    (-99 -88 -66=.)
recode PRCCS6                    (-99 -88 -66=.)
recode PRCCS7                    (-99 -88 -66=.)
recode PRCCS8                    (-99 -88 -66=.)
recode PRCCS9                    (-99 -88 -66=.)
recode PRCCS10                   (-99 -88 -66=.)
recode PRCCS11                   (-99 -88 -66=.)
recode PRCCS12                   (-99 -88 -66=.)
recode PRCCS13                   (-99 -88 -66=.)
recode PRCCS14                   (-99 -88 -66=.)
recode PRCCS15                   (-99 -88 -66=.)
recode PRCCS16                   (-99 -88 -66=.)
recode PRCCS17                   (-99 -88 -66=.)
recode PRCCS18                   (-99 -88 -66=.)
recode PRCCS19                   (-99 -88 -66=.)
recode PRCCS20                   (-99 -88 -66=.)
recode PRCCS21                   (-99 -88 -66=.)
recode PRCCS22                   (-99 -88 -66=.)
recode PRCCS23                   (-99 -88 -66=.)
recode PRCCS24                   (-99 -88 -66=.)
recode PRCCS25                   (-99 -88 -66=.)
recode PRCCS26                   (-99 -88 -66=.)
recode PRCCS27                   (-99 -88 -66=.)
recode PRCCS28                   (-99 -88 -66=.)
recode PRCCS29                   (-99 -88 -66=.)
recode PRCCS30                   (-99 -88 -66=.)
recode PRCCS31                   (-99 -88 -66=.)
recode PRCCS32                   (-99 -88 -66=.)
recode PRCCS33                   (-99 -88 -66=.)
recode PRCCS34                   (-99 -88 -66=.)
recode PRCCS35                   (-99 -88 -66=.)
recode PRCCS36                   (-99 -88 -66=.)
recode PRCCS37                   (-99 -88 -66=.)
recode PRCCS38                   (-99 -88 -66=.)
recode PRCCS39                   (-99 -88 -66=.)
recode PRCCS40                   (-99 -88 -66=.)
recode PRCCS41                   (-99 -88 -66=.)
recode PRCCS42                   (-99 -88 -66=.)
recode PRCCS43                   (-99 -88 -66=.)
recode PRCCS44                   (-99 -88 -66=.)
recode PRCCS45                   (-99 -88 -66=.)
recode PRCCS46                   (-99 -88 -66=.)
recode PRCCS47                   (-99 -88 -66=.)
recode PRCCS48                   (-99 -88 -66=.)
recode PRCCS49                   (-99 -88 -66=.)
recode PRCCS50                   (-99 -88 -66=.)
recode PRCCS51                   (-99 -88 -66=.)
recode PRCCS52                   (-99 -88 -66=.)
recode PRCCS53                   (-99 -88 -66=.)
recode PRCCS54                   (-99 -88 -66=.)
recode PRCCS55                   (-99 -88 -66=.)
recode PRCCS56                   (-99 -88 -66=.)
recode PRCCS57                   (-99 -88 -66=.)
recode PRCCS58                   (-99 -88 -66=.)
recode PRCCS59                   (-99 -88 -66=.)
recode PRCCS60                   (-99 -88 -66=.)
recode PRCCS61                   (-99 -88 -66=.)
recode PRCCS62                   (-99 -88 -66=.)
recode PRCCS63                   (-99 -88 -66=.)
recode PRCCS64                   (-99 -88 -66=.)
recode PRCCS65                   (-99 -88 -66=.)
recode PRCCS66                   (-99 -88 -66=.)
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
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode SERVICELINE               (-9 -8 -6 -5=.)
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

save "MA_SID_2014_CORE.dta", replace
