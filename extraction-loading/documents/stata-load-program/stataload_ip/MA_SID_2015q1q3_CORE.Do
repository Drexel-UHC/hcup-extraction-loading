/*****************************************************************************
* Creation Date: 01/04/2018   
* MA_SID_2015q1q3_CORE.Do
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
      str    DX_Admitting                82-  88   ///
      str    DX1                         89-  95   ///
      str    DX2                         96- 102   ///
      str    DX3                        103- 109   ///
      str    DX4                        110- 116   ///
      str    DX5                        117- 123   ///
      str    DX6                        124- 130   ///
      str    DX7                        131- 137   ///
      str    DX8                        138- 144   ///
      str    DX9                        145- 151   ///
      str    DX10                       152- 158   ///
      str    DX11                       159- 165   ///
      str    DX12                       166- 172   ///
      str    DX13                       173- 179   ///
      str    DX14                       180- 186   ///
      str    DX15                       187- 193   ///
      str    DX16                       194- 200   ///
      str    DX17                       201- 207   ///
      str    DX18                       208- 214   ///
      str    DX19                       215- 221   ///
      str    DX20                       222- 228   ///
      str    DX21                       229- 235   ///
      str    DX22                       236- 242   ///
      str    DX23                       243- 249   ///
      str    DX24                       250- 256   ///
      str    DX25                       257- 263   ///
      str    DX26                       264- 270   ///
      str    DX27                       271- 277   ///
      str    DX28                       278- 284   ///
      str    DX29                       285- 291   ///
      str    DX30                       292- 298   ///
      str    DX31                       299- 305   ///
      str    DX32                       306- 312   ///
      str    DX33                       313- 319   ///
      str    DX34                       320- 326   ///
      str    DX35                       327- 333   ///
      str    DX36                       334- 340   ///
      str    DX37                       341- 347   ///
      str    DX38                       348- 354   ///
      str    DX39                       355- 361   ///
      str    DX40                       362- 368   ///
      str    DX41                       369- 375   ///
      str    DX42                       376- 382   ///
      str    DX43                       383- 389   ///
      str    DX44                       390- 396   ///
      str    DX45                       397- 403   ///
      str    DX46                       404- 410   ///
      str    DX47                       411- 417   ///
      str    DX48                       418- 424   ///
      str    DX49                       425- 431   ///
      str    DX50                       432- 438   ///
      str    DX51                       439- 445   ///
      str    DX52                       446- 452   ///
      str    DX53                       453- 459   ///
      str    DX54                       460- 466   ///
      str    DX55                       467- 473   ///
      str    DX56                       474- 480   ///
      str    DX57                       481- 487   ///
      str    DX58                       488- 494   ///
      str    DX59                       495- 501   ///
      str    DX60                       502- 508   ///
      str    DX61                       509- 515   ///
      str    DX62                       516- 522   ///
      str    DX63                       523- 529   ///
      str    DX64                       530- 536   ///
      str    DX65                       537- 543   ///
      str    DX66                       544- 550   ///
      str    DX67                       551- 557   ///
      str    DX68                       558- 564   ///
      str    DX69                       565- 571   ///
      str    DX70                       572- 578   ///
      str    DX71                       579- 585   ///
      int    DXCCS1                     586- 589   ///
      int    DXCCS2                     590- 593   ///
      int    DXCCS3                     594- 597   ///
      int    DXCCS4                     598- 601   ///
      int    DXCCS5                     602- 605   ///
      int    DXCCS6                     606- 609   ///
      int    DXCCS7                     610- 613   ///
      int    DXCCS8                     614- 617   ///
      int    DXCCS9                     618- 621   ///
      int    DXCCS10                    622- 625   ///
      int    DXCCS11                    626- 629   ///
      int    DXCCS12                    630- 633   ///
      int    DXCCS13                    634- 637   ///
      int    DXCCS14                    638- 641   ///
      int    DXCCS15                    642- 645   ///
      int    DXCCS16                    646- 649   ///
      int    DXCCS17                    650- 653   ///
      int    DXCCS18                    654- 657   ///
      int    DXCCS19                    658- 661   ///
      int    DXCCS20                    662- 665   ///
      int    DXCCS21                    666- 669   ///
      int    DXCCS22                    670- 673   ///
      int    DXCCS23                    674- 677   ///
      int    DXCCS24                    678- 681   ///
      int    DXCCS25                    682- 685   ///
      int    DXCCS26                    686- 689   ///
      int    DXCCS27                    690- 693   ///
      int    DXCCS28                    694- 697   ///
      int    DXCCS29                    698- 701   ///
      int    DXCCS30                    702- 705   ///
      int    DXCCS31                    706- 709   ///
      int    DXCCS32                    710- 713   ///
      int    DXCCS33                    714- 717   ///
      int    DXCCS34                    718- 721   ///
      int    DXCCS35                    722- 725   ///
      int    DXCCS36                    726- 729   ///
      int    DXCCS37                    730- 733   ///
      int    DXCCS38                    734- 737   ///
      int    DXCCS39                    738- 741   ///
      int    DXCCS40                    742- 745   ///
      int    DXCCS41                    746- 749   ///
      int    DXCCS42                    750- 753   ///
      int    DXCCS43                    754- 757   ///
      int    DXCCS44                    758- 761   ///
      int    DXCCS45                    762- 765   ///
      int    DXCCS46                    766- 769   ///
      int    DXCCS47                    770- 773   ///
      int    DXCCS48                    774- 777   ///
      int    DXCCS49                    778- 781   ///
      int    DXCCS50                    782- 785   ///
      int    DXCCS51                    786- 789   ///
      int    DXCCS52                    790- 793   ///
      int    DXCCS53                    794- 797   ///
      int    DXCCS54                    798- 801   ///
      int    DXCCS55                    802- 805   ///
      int    DXCCS56                    806- 809   ///
      int    DXCCS57                    810- 813   ///
      int    DXCCS58                    814- 817   ///
      int    DXCCS59                    818- 821   ///
      int    DXCCS60                    822- 825   ///
      int    DXCCS61                    826- 829   ///
      int    DXCCS62                    830- 833   ///
      int    DXCCS63                    834- 837   ///
      int    DXCCS64                    838- 841   ///
      int    DXCCS65                    842- 845   ///
      int    DXCCS66                    846- 849   ///
      int    DXCCS67                    850- 853   ///
      int    DXCCS68                    854- 857   ///
      int    DXCCS69                    858- 861   ///
      int    DXCCS70                    862- 865   ///
      int    DXCCS71                    866- 869   ///
      str    DXPOA1                     870        ///
      str    DXPOA2                     871        ///
      str    DXPOA3                     872        ///
      str    DXPOA4                     873        ///
      str    DXPOA5                     874        ///
      str    DXPOA6                     875        ///
      str    DXPOA7                     876        ///
      str    DXPOA8                     877        ///
      str    DXPOA9                     878        ///
      str    DXPOA10                    879        ///
      str    DXPOA11                    880        ///
      str    DXPOA12                    881        ///
      str    DXPOA13                    882        ///
      str    DXPOA14                    883        ///
      str    DXPOA15                    884        ///
      str    DXPOA16                    885        ///
      str    DXPOA17                    886        ///
      str    DXPOA18                    887        ///
      str    DXPOA19                    888        ///
      str    DXPOA20                    889        ///
      str    DXPOA21                    890        ///
      str    DXPOA22                    891        ///
      str    DXPOA23                    892        ///
      str    DXPOA24                    893        ///
      str    DXPOA25                    894        ///
      str    DXPOA26                    895        ///
      str    DXPOA27                    896        ///
      str    DXPOA28                    897        ///
      str    DXPOA29                    898        ///
      str    DXPOA30                    899        ///
      str    DXPOA31                    900        ///
      str    DXPOA32                    901        ///
      str    DXPOA33                    902        ///
      str    DXPOA34                    903        ///
      str    DXPOA35                    904        ///
      str    DXPOA36                    905        ///
      str    DXPOA37                    906        ///
      str    DXPOA38                    907        ///
      str    DXPOA39                    908        ///
      str    DXPOA40                    909        ///
      str    DXPOA41                    910        ///
      str    DXPOA42                    911        ///
      str    DXPOA43                    912        ///
      str    DXPOA44                    913        ///
      str    DXPOA45                    914        ///
      str    DXPOA46                    915        ///
      str    DXPOA47                    916        ///
      str    DXPOA48                    917        ///
      str    DXPOA49                    918        ///
      str    DXPOA50                    919        ///
      str    DXPOA51                    920        ///
      str    DXPOA52                    921        ///
      str    DXPOA53                    922        ///
      str    DXPOA54                    923        ///
      str    DXPOA55                    924        ///
      str    DXPOA56                    925        ///
      str    DXPOA57                    926        ///
      str    DXPOA58                    927        ///
      str    DXPOA59                    928        ///
      str    DXPOA60                    929        ///
      str    DXPOA61                    930        ///
      str    DXPOA62                    931        ///
      str    DXPOA63                    932        ///
      str    DXPOA64                    933        ///
      str    DXPOA65                    934        ///
      str    DXPOA66                    935        ///
      str    DXPOA67                    936        ///
      str    DXPOA68                    937        ///
      str    DXPOA69                    938        ///
      str    DXPOA70                    939        ///
      str    DXPOA71                    940        ///
      int    DXVER                      941- 943   ///
      int    E_CCS1                     944- 947   ///
      int    E_CCS2                     948- 951   ///
      int    E_CCS3                     952- 955   ///
      int    E_CCS4                     956- 959   ///
      int    E_CCS5                     960- 963   ///
      int    E_CCS6                     964- 967   ///
      int    E_CCS7                     968- 971   ///
      int    E_CCS8                     972- 975   ///
      int    E_CCS9                     976- 979   ///
      int    E_CCS10                    980- 983   ///
      int    E_CCS11                    984- 987   ///
      str    E_POA1                     988        ///
      str    E_POA2                     989        ///
      str    E_POA3                     990        ///
      str    E_POA4                     991        ///
      str    E_POA5                     992        ///
      str    E_POA6                     993        ///
      str    E_POA7                     994        ///
      str    E_POA8                     995        ///
      str    E_POA9                     996        ///
      str    E_POA10                    997        ///
      str    E_POA11                    998        ///
      str    ECODE1                     999-1005   ///
      str    ECODE2                    1006-1012   ///
      str    ECODE3                    1013-1019   ///
      str    ECODE4                    1020-1026   ///
      str    ECODE5                    1027-1033   ///
      str    ECODE6                    1034-1040   ///
      str    ECODE7                    1041-1047   ///
      str    ECODE8                    1048-1054   ///
      str    ECODE9                    1055-1061   ///
      str    ECODE10                   1062-1068   ///
      str    ECODE11                   1069-1075   ///
      byte   FEMALE                    1076-1077   ///
      byte   HCUP_ED                   1078-1079   ///
      byte   HCUP_OS                   1080-1081   ///
      byte   HISPANIC                  1082-1083   ///
      str    HISPANIC_X                1084-1098   ///
      byte   Homeless                  1099-1100   ///
      int    HOSPBRTH                  1101-1103   ///
      str    HOSPST                    1104-1105   ///
      double KEY                       1106-1120   ///
      long   LOS                       1121-1125   ///
      long   LOS_X                     1126-1131   ///
      byte   MDC                       1132-1133   ///
      byte   MDC_NoPOA                 1134-1135   ///
      byte   MDC32                     1136-1137   ///
      byte   MEDINCSTQ                 1138-1139   ///
      int    NCHRONIC                  1140-1142   ///
      int    NDX                       1143-1145   ///
      byte   NECODE                    1146-1147   ///
      byte   NEOMAT                    1148-1149   ///
      int    NPR                       1150-1152   ///
      byte   ORPROC                    1153-1154   ///
      double OS_TIME                   1155-1165   ///
      byte   PAY1                      1166-1167   ///
      str    PAY1_X                    1168        ///
      byte   PAY2                      1169-1170   ///
      str    PAY2_X                    1171        ///
      str    PAYER1_X                  1172-1174   ///
      str    PAYER2_X                  1175-1177   ///
      int    PL_CBSA                   1178-1180   ///
      byte   PL_UR_CAT4                1181-1182   ///
      byte   POA_Disch_Edit1           1183-1184   ///
      byte   POA_Disch_Edit2           1185-1186   ///
      byte   POA_Hosp_Edit1            1187-1188   ///
      byte   POA_Hosp_Edit2            1189-1190   ///
      byte   POA_Hosp_Edit3            1191-1192   ///
      double POA_Hosp_Edit3_Value      1193-1200   ///
      str    PR1                       1201-1207   ///
      str    PR2                       1208-1214   ///
      str    PR3                       1215-1221   ///
      str    PR4                       1222-1228   ///
      str    PR5                       1229-1235   ///
      str    PR6                       1236-1242   ///
      str    PR7                       1243-1249   ///
      str    PR8                       1250-1256   ///
      str    PR9                       1257-1263   ///
      str    PR10                      1264-1270   ///
      str    PR11                      1271-1277   ///
      str    PR12                      1278-1284   ///
      str    PR13                      1285-1291   ///
      str    PR14                      1292-1298   ///
      str    PR15                      1299-1305   ///
      str    PR16                      1306-1312   ///
      str    PR17                      1313-1319   ///
      str    PR18                      1320-1326   ///
      str    PR19                      1327-1333   ///
      str    PR20                      1334-1340   ///
      str    PR21                      1341-1347   ///
      str    PR22                      1348-1354   ///
      str    PR23                      1355-1361   ///
      str    PR24                      1362-1368   ///
      str    PR25                      1369-1375   ///
      str    PR26                      1376-1382   ///
      str    PR27                      1383-1389   ///
      str    PR28                      1390-1396   ///
      str    PR29                      1397-1403   ///
      str    PR30                      1404-1410   ///
      str    PR31                      1411-1417   ///
      str    PR32                      1418-1424   ///
      str    PR33                      1425-1431   ///
      str    PR34                      1432-1438   ///
      str    PR35                      1439-1445   ///
      str    PR36                      1446-1452   ///
      str    PR37                      1453-1459   ///
      str    PR38                      1460-1466   ///
      str    PR39                      1467-1473   ///
      str    PR40                      1474-1480   ///
      str    PR41                      1481-1487   ///
      str    PR42                      1488-1494   ///
      str    PR43                      1495-1501   ///
      str    PR44                      1502-1508   ///
      str    PR45                      1509-1515   ///
      str    PR46                      1516-1522   ///
      str    PR47                      1523-1529   ///
      str    PR48                      1530-1536   ///
      str    PR49                      1537-1543   ///
      str    PR50                      1544-1550   ///
      str    PR51                      1551-1557   ///
      str    PR52                      1558-1564   ///
      str    PR53                      1565-1571   ///
      str    PR54                      1572-1578   ///
      str    PR55                      1579-1585   ///
      str    PR56                      1586-1592   ///
      str    PR57                      1593-1599   ///
      str    PR58                      1600-1606   ///
      str    PR59                      1607-1613   ///
      str    PR60                      1614-1620   ///
      str    PR61                      1621-1627   ///
      str    PR62                      1628-1634   ///
      str    PR63                      1635-1641   ///
      str    PR64                      1642-1648   ///
      str    PR65                      1649-1655   ///
      str    PR66                      1656-1662   ///
      int    PRCCS1                    1663-1665   ///
      int    PRCCS2                    1666-1668   ///
      int    PRCCS3                    1669-1671   ///
      int    PRCCS4                    1672-1674   ///
      int    PRCCS5                    1675-1677   ///
      int    PRCCS6                    1678-1680   ///
      int    PRCCS7                    1681-1683   ///
      int    PRCCS8                    1684-1686   ///
      int    PRCCS9                    1687-1689   ///
      int    PRCCS10                   1690-1692   ///
      int    PRCCS11                   1693-1695   ///
      int    PRCCS12                   1696-1698   ///
      int    PRCCS13                   1699-1701   ///
      int    PRCCS14                   1702-1704   ///
      int    PRCCS15                   1705-1707   ///
      int    PRCCS16                   1708-1710   ///
      int    PRCCS17                   1711-1713   ///
      int    PRCCS18                   1714-1716   ///
      int    PRCCS19                   1717-1719   ///
      int    PRCCS20                   1720-1722   ///
      int    PRCCS21                   1723-1725   ///
      int    PRCCS22                   1726-1728   ///
      int    PRCCS23                   1729-1731   ///
      int    PRCCS24                   1732-1734   ///
      int    PRCCS25                   1735-1737   ///
      int    PRCCS26                   1738-1740   ///
      int    PRCCS27                   1741-1743   ///
      int    PRCCS28                   1744-1746   ///
      int    PRCCS29                   1747-1749   ///
      int    PRCCS30                   1750-1752   ///
      int    PRCCS31                   1753-1755   ///
      int    PRCCS32                   1756-1758   ///
      int    PRCCS33                   1759-1761   ///
      int    PRCCS34                   1762-1764   ///
      int    PRCCS35                   1765-1767   ///
      int    PRCCS36                   1768-1770   ///
      int    PRCCS37                   1771-1773   ///
      int    PRCCS38                   1774-1776   ///
      int    PRCCS39                   1777-1779   ///
      int    PRCCS40                   1780-1782   ///
      int    PRCCS41                   1783-1785   ///
      int    PRCCS42                   1786-1788   ///
      int    PRCCS43                   1789-1791   ///
      int    PRCCS44                   1792-1794   ///
      int    PRCCS45                   1795-1797   ///
      int    PRCCS46                   1798-1800   ///
      int    PRCCS47                   1801-1803   ///
      int    PRCCS48                   1804-1806   ///
      int    PRCCS49                   1807-1809   ///
      int    PRCCS50                   1810-1812   ///
      int    PRCCS51                   1813-1815   ///
      int    PRCCS52                   1816-1818   ///
      int    PRCCS53                   1819-1821   ///
      int    PRCCS54                   1822-1824   ///
      int    PRCCS55                   1825-1827   ///
      int    PRCCS56                   1828-1830   ///
      int    PRCCS57                   1831-1833   ///
      int    PRCCS58                   1834-1836   ///
      int    PRCCS59                   1837-1839   ///
      int    PRCCS60                   1840-1842   ///
      int    PRCCS61                   1843-1845   ///
      int    PRCCS62                   1846-1848   ///
      int    PRCCS63                   1849-1851   ///
      int    PRCCS64                   1852-1854   ///
      int    PRCCS65                   1855-1857   ///
      int    PRCCS66                   1858-1860   ///
      long   PRDAY1                    1861-1865   ///
      long   PRDAY2                    1866-1870   ///
      long   PRDAY3                    1871-1875   ///
      long   PRDAY4                    1876-1880   ///
      long   PRDAY5                    1881-1885   ///
      long   PRDAY6                    1886-1890   ///
      long   PRDAY7                    1891-1895   ///
      long   PRDAY8                    1896-1900   ///
      long   PRDAY9                    1901-1905   ///
      long   PRDAY10                   1906-1910   ///
      long   PRDAY11                   1911-1915   ///
      long   PRDAY12                   1916-1920   ///
      long   PRDAY13                   1921-1925   ///
      long   PRDAY14                   1926-1930   ///
      long   PRDAY15                   1931-1935   ///
      long   PRDAY16                   1936-1940   ///
      long   PRDAY17                   1941-1945   ///
      long   PRDAY18                   1946-1950   ///
      long   PRDAY19                   1951-1955   ///
      long   PRDAY20                   1956-1960   ///
      long   PRDAY21                   1961-1965   ///
      long   PRDAY22                   1966-1970   ///
      long   PRDAY23                   1971-1975   ///
      long   PRDAY24                   1976-1980   ///
      long   PRDAY25                   1981-1985   ///
      long   PRDAY26                   1986-1990   ///
      long   PRDAY27                   1991-1995   ///
      long   PRDAY28                   1996-2000   ///
      long   PRDAY29                   2001-2005   ///
      long   PRDAY30                   2006-2010   ///
      long   PRDAY31                   2011-2015   ///
      long   PRDAY32                   2016-2020   ///
      long   PRDAY33                   2021-2025   ///
      long   PRDAY34                   2026-2030   ///
      long   PRDAY35                   2031-2035   ///
      long   PRDAY36                   2036-2040   ///
      long   PRDAY37                   2041-2045   ///
      long   PRDAY38                   2046-2050   ///
      long   PRDAY39                   2051-2055   ///
      long   PRDAY40                   2056-2060   ///
      long   PRDAY41                   2061-2065   ///
      long   PRDAY42                   2066-2070   ///
      long   PRDAY43                   2071-2075   ///
      long   PRDAY44                   2076-2080   ///
      long   PRDAY45                   2081-2085   ///
      long   PRDAY46                   2086-2090   ///
      long   PRDAY47                   2091-2095   ///
      long   PRDAY48                   2096-2100   ///
      long   PRDAY49                   2101-2105   ///
      long   PRDAY50                   2106-2110   ///
      long   PRDAY51                   2111-2115   ///
      long   PRDAY52                   2116-2120   ///
      long   PRDAY53                   2121-2125   ///
      long   PRDAY54                   2126-2130   ///
      long   PRDAY55                   2131-2135   ///
      long   PRDAY56                   2136-2140   ///
      long   PRDAY57                   2141-2145   ///
      long   PRDAY58                   2146-2150   ///
      long   PRDAY59                   2151-2155   ///
      long   PRDAY60                   2156-2160   ///
      long   PRDAY61                   2161-2165   ///
      long   PRDAY62                   2166-2170   ///
      long   PRDAY63                   2171-2175   ///
      long   PRDAY64                   2176-2180   ///
      long   PRDAY65                   2181-2185   ///
      long   PRDAY66                   2186-2190   ///
      int    PROCTYPE                  2191-2193   ///
      int    PRVER                     2194-2196   ///
      str    PSTATE                    2197-2198   ///
      long   PSTCO2                    2199-2203   ///
      byte   RACE                      2204-2205   ///
      str    RACE_X                    2206-2218   ///
      byte   SERVICELINE               2219-2220   ///
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
      using  "MA_SID_2015q1q3_CORE.ASC"

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
label var DX_Admitting             "Admitting Diagnosis Code"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDC32                    "MDC, version 32"
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
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDC32                     (-9 -8 -6 -5=.)
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

save "MA_SID_2015q1q3_CORE.dta", replace
