/*****************************************************************************
* Creation Date: 11/28/2018   
* MN_SID_2017_CORE.Do
* This program will load the 2017 MN ASCII CORE File into Stata.
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
      str    DISP_X                      39-  40   ///
      byte   DISPUB04                    41-  42   ///
      byte   DISPUNIFORM                 43-  44   ///
      byte   DMONTH                      45-  46   ///
      byte   DQTR                        47-  48   ///
      int    DRG                         49-  51   ///
      int    DRG_NoPOA                   52-  54   ///
      byte   DRGVER                      55-  56   ///
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
      str    DXPOA87                    143        ///
      str    DXPOA88                    144        ///
      str    DXPOA89                    145        ///
      str    DXPOA90                    146        ///
      str    DXPOA91                    147        ///
      str    DXPOA92                    148        ///
      str    DXPOA93                    149        ///
      str    DXPOA94                    150        ///
      str    DXPOA95                    151        ///
      str    DXPOA96                    152        ///
      str    DXPOA97                    153        ///
      str    DXPOA98                    154        ///
      str    DXPOA99                    155        ///
      str    DXPOA100                   156        ///
      str    DXPOA101                   157        ///
      str    DXPOA102                   158        ///
      str    DXPOA103                   159        ///
      str    DXPOA104                   160        ///
      str    DXPOA105                   161        ///
      str    DXPOA106                   162        ///
      str    DXPOA107                   163        ///
      str    DXPOA108                   164        ///
      str    DXPOA109                   165        ///
      str    DXPOA110                   166        ///
      str    DXPOA111                   167        ///
      str    DXPOA112                   168        ///
      str    DXPOA113                   169        ///
      str    DXPOA114                   170        ///
      str    DXPOA115                   171        ///
      str    DXPOA116                   172        ///
      str    DXPOA117                   173        ///
      str    DXPOA118                   174        ///
      str    DXPOA119                   175        ///
      int    DXVER                      176- 178   ///
      byte   FEMALE                     179- 180   ///
      byte   HCUP_ED                    181- 182   ///
      byte   HCUP_OS                    183- 184   ///
      byte   HISPANIC                   185- 186   ///
      str    HISPANIC_X                 187- 206   ///
      str    HOSPST                     207- 208   ///
      str    I10_DX_Admitting           209- 215   ///
      str    I10_DX1                    216- 222   ///
      str    I10_DX2                    223- 229   ///
      str    I10_DX3                    230- 236   ///
      str    I10_DX4                    237- 243   ///
      str    I10_DX5                    244- 250   ///
      str    I10_DX6                    251- 257   ///
      str    I10_DX7                    258- 264   ///
      str    I10_DX8                    265- 271   ///
      str    I10_DX9                    272- 278   ///
      str    I10_DX10                   279- 285   ///
      str    I10_DX11                   286- 292   ///
      str    I10_DX12                   293- 299   ///
      str    I10_DX13                   300- 306   ///
      str    I10_DX14                   307- 313   ///
      str    I10_DX15                   314- 320   ///
      str    I10_DX16                   321- 327   ///
      str    I10_DX17                   328- 334   ///
      str    I10_DX18                   335- 341   ///
      str    I10_DX19                   342- 348   ///
      str    I10_DX20                   349- 355   ///
      str    I10_DX21                   356- 362   ///
      str    I10_DX22                   363- 369   ///
      str    I10_DX23                   370- 376   ///
      str    I10_DX24                   377- 383   ///
      str    I10_DX25                   384- 390   ///
      str    I10_DX26                   391- 397   ///
      str    I10_DX27                   398- 404   ///
      str    I10_DX28                   405- 411   ///
      str    I10_DX29                   412- 418   ///
      str    I10_DX30                   419- 425   ///
      str    I10_DX31                   426- 432   ///
      str    I10_DX32                   433- 439   ///
      str    I10_DX33                   440- 446   ///
      str    I10_DX34                   447- 453   ///
      str    I10_DX35                   454- 460   ///
      str    I10_DX36                   461- 467   ///
      str    I10_DX37                   468- 474   ///
      str    I10_DX38                   475- 481   ///
      str    I10_DX39                   482- 488   ///
      str    I10_DX40                   489- 495   ///
      str    I10_DX41                   496- 502   ///
      str    I10_DX42                   503- 509   ///
      str    I10_DX43                   510- 516   ///
      str    I10_DX44                   517- 523   ///
      str    I10_DX45                   524- 530   ///
      str    I10_DX46                   531- 537   ///
      str    I10_DX47                   538- 544   ///
      str    I10_DX48                   545- 551   ///
      str    I10_DX49                   552- 558   ///
      str    I10_DX50                   559- 565   ///
      str    I10_DX51                   566- 572   ///
      str    I10_DX52                   573- 579   ///
      str    I10_DX53                   580- 586   ///
      str    I10_DX54                   587- 593   ///
      str    I10_DX55                   594- 600   ///
      str    I10_DX56                   601- 607   ///
      str    I10_DX57                   608- 614   ///
      str    I10_DX58                   615- 621   ///
      str    I10_DX59                   622- 628   ///
      str    I10_DX60                   629- 635   ///
      str    I10_DX61                   636- 642   ///
      str    I10_DX62                   643- 649   ///
      str    I10_DX63                   650- 656   ///
      str    I10_DX64                   657- 663   ///
      str    I10_DX65                   664- 670   ///
      str    I10_DX66                   671- 677   ///
      str    I10_DX67                   678- 684   ///
      str    I10_DX68                   685- 691   ///
      str    I10_DX69                   692- 698   ///
      str    I10_DX70                   699- 705   ///
      str    I10_DX71                   706- 712   ///
      str    I10_DX72                   713- 719   ///
      str    I10_DX73                   720- 726   ///
      str    I10_DX74                   727- 733   ///
      str    I10_DX75                   734- 740   ///
      str    I10_DX76                   741- 747   ///
      str    I10_DX77                   748- 754   ///
      str    I10_DX78                   755- 761   ///
      str    I10_DX79                   762- 768   ///
      str    I10_DX80                   769- 775   ///
      str    I10_DX81                   776- 782   ///
      str    I10_DX82                   783- 789   ///
      str    I10_DX83                   790- 796   ///
      str    I10_DX84                   797- 803   ///
      str    I10_DX85                   804- 810   ///
      str    I10_DX86                   811- 817   ///
      str    I10_DX87                   818- 824   ///
      str    I10_DX88                   825- 831   ///
      str    I10_DX89                   832- 838   ///
      str    I10_DX90                   839- 845   ///
      str    I10_DX91                   846- 852   ///
      str    I10_DX92                   853- 859   ///
      str    I10_DX93                   860- 866   ///
      str    I10_DX94                   867- 873   ///
      str    I10_DX95                   874- 880   ///
      str    I10_DX96                   881- 887   ///
      str    I10_DX97                   888- 894   ///
      str    I10_DX98                   895- 901   ///
      str    I10_DX99                   902- 908   ///
      str    I10_DX100                  909- 915   ///
      str    I10_DX101                  916- 922   ///
      str    I10_DX102                  923- 929   ///
      str    I10_DX103                  930- 936   ///
      str    I10_DX104                  937- 943   ///
      str    I10_DX105                  944- 950   ///
      str    I10_DX106                  951- 957   ///
      str    I10_DX107                  958- 964   ///
      str    I10_DX108                  965- 971   ///
      str    I10_DX109                  972- 978   ///
      str    I10_DX110                  979- 985   ///
      str    I10_DX111                  986- 992   ///
      str    I10_DX112                  993- 999   ///
      str    I10_DX113                 1000-1006   ///
      str    I10_DX114                 1007-1013   ///
      str    I10_DX115                 1014-1020   ///
      str    I10_DX116                 1021-1027   ///
      str    I10_DX117                 1028-1034   ///
      str    I10_DX118                 1035-1041   ///
      str    I10_DX119                 1042-1048   ///
      int    I10_NDX                   1049-1051   ///
      int    I10_NPR                   1052-1054   ///
      str    I10_PR1                   1055-1061   ///
      str    I10_PR2                   1062-1068   ///
      str    I10_PR3                   1069-1075   ///
      str    I10_PR4                   1076-1082   ///
      str    I10_PR5                   1083-1089   ///
      str    I10_PR6                   1090-1096   ///
      str    I10_PR7                   1097-1103   ///
      str    I10_PR8                   1104-1110   ///
      str    I10_PR9                   1111-1117   ///
      str    I10_PR10                  1118-1124   ///
      str    I10_PR11                  1125-1131   ///
      str    I10_PR12                  1132-1138   ///
      str    I10_PR13                  1139-1145   ///
      str    I10_PR14                  1146-1152   ///
      str    I10_PR15                  1153-1159   ///
      str    I10_PR16                  1160-1166   ///
      str    I10_PR17                  1167-1173   ///
      str    I10_PR18                  1174-1180   ///
      str    I10_PR19                  1181-1187   ///
      str    I10_PR20                  1188-1194   ///
      str    I10_PR21                  1195-1201   ///
      str    I10_PR22                  1202-1208   ///
      str    I10_PR23                  1209-1215   ///
      str    I10_PR24                  1216-1222   ///
      str    I10_PR25                  1223-1229   ///
      str    I10_PR26                  1230-1236   ///
      str    I10_PR27                  1237-1243   ///
      str    I10_PR28                  1244-1250   ///
      str    I10_PR29                  1251-1257   ///
      str    I10_PR30                  1258-1264   ///
      str    I10_PR31                  1265-1271   ///
      str    I10_PR32                  1272-1278   ///
      str    I10_PR33                  1279-1285   ///
      str    I10_PR34                  1286-1292   ///
      str    I10_PR35                  1293-1299   ///
      str    I10_PR36                  1300-1306   ///
      str    I10_PR37                  1307-1313   ///
      str    I10_PR38                  1314-1320   ///
      str    I10_PR39                  1321-1327   ///
      str    I10_PR40                  1328-1334   ///
      str    I10_PR41                  1335-1341   ///
      str    I10_PR42                  1342-1348   ///
      str    I10_PR43                  1349-1355   ///
      str    I10_PR44                  1356-1362   ///
      str    I10_PR45                  1363-1369   ///
      str    I10_PR46                  1370-1376   ///
      str    I10_PR47                  1377-1383   ///
      str    I10_PR48                  1384-1390   ///
      str    I10_PR49                  1391-1397   ///
      str    I10_PR50                  1398-1404   ///
      str    I10_PR51                  1405-1411   ///
      str    I10_PR52                  1412-1418   ///
      str    I10_PR53                  1419-1425   ///
      str    I10_PR54                  1426-1432   ///
      str    I10_PR55                  1433-1439   ///
      str    I10_PR56                  1440-1446   ///
      str    I10_PR57                  1447-1453   ///
      str    I10_PR58                  1454-1460   ///
      str    I10_PR59                  1461-1467   ///
      str    I10_PR60                  1468-1474   ///
      str    I10_PR61                  1475-1481   ///
      str    I10_PR62                  1482-1488   ///
      str    I10_PR63                  1489-1495   ///
      str    I10_PR64                  1496-1502   ///
      str    I10_PR65                  1503-1509   ///
      str    I10_PR66                  1510-1516   ///
      str    I10_PR67                  1517-1523   ///
      str    I10_PR68                  1524-1530   ///
      str    I10_PR69                  1531-1537   ///
      str    I10_PR70                  1538-1544   ///
      str    I10_PR71                  1545-1551   ///
      str    I10_PR72                  1552-1558   ///
      str    I10_PR73                  1559-1565   ///
      str    I10_PR74                  1566-1572   ///
      str    I10_PR75                  1573-1579   ///
      str    I10_PR76                  1580-1586   ///
      str    I10_PR77                  1587-1593   ///
      str    I10_PR78                  1594-1600   ///
      str    I10_PR79                  1601-1607   ///
      str    I10_PR80                  1608-1614   ///
      str    I10_PR81                  1615-1621   ///
      str    I10_PR82                  1622-1628   ///
      str    I10_PR83                  1629-1635   ///
      str    I10_PR84                  1636-1642   ///
      str    I10_PR85                  1643-1649   ///
      str    I10_PR86                  1650-1656   ///
      str    I10_PR87                  1657-1663   ///
      str    I10_PR88                  1664-1670   ///
      str    I10_PR89                  1671-1677   ///
      str    I10_PR90                  1678-1684   ///
      int    I10_PROCTYPE              1685-1687   ///
      double KEY                       1688-1702   ///
      long   LOS                       1703-1707   ///
      long   LOS_X                     1708-1713   ///
      byte   MDC                       1714-1715   ///
      byte   MDC_NoPOA                 1716-1717   ///
      byte   MEDINCSTQ                 1718-1719   ///
      long   MRN_R                     1720-1728   ///
      double OS_TIME                   1729-1739   ///
      byte   PAY1                      1740-1741   ///
      str    PAY1_X                    1742-1748   ///
      byte   PAY2                      1749-1750   ///
      str    PAY2_X                    1751-1757   ///
      byte   PAY3                      1758-1759   ///
      str    PAY3_X                    1760-1766   ///
      int    PL_CBSA                   1767-1769   ///
      byte   PL_NCHS                   1770-1771   ///
      byte   PL_RUCC                   1772-1773   ///
      byte   PL_UIC                    1774-1775   ///
      byte   PL_UR_CAT4                1776-1777   ///
      byte   POA_Disch_Edit1           1778-1779   ///
      byte   POA_Disch_Edit2           1780-1781   ///
      byte   POA_Hosp_Edit1            1782-1783   ///
      byte   POA_Hosp_Edit2            1784-1785   ///
      byte   POA_Hosp_Edit3            1786-1787   ///
      double POA_Hosp_Edit3_Value      1788-1795   ///
      str    PointOfOrigin_X           1796        ///
      str    PointOfOriginUB04         1797        ///
      long   PRDAY1                    1798-1802   ///
      long   PRDAY2                    1803-1807   ///
      long   PRDAY3                    1808-1812   ///
      long   PRDAY4                    1813-1817   ///
      long   PRDAY5                    1818-1822   ///
      long   PRDAY6                    1823-1827   ///
      long   PRDAY7                    1828-1832   ///
      long   PRDAY8                    1833-1837   ///
      long   PRDAY9                    1838-1842   ///
      long   PRDAY10                   1843-1847   ///
      long   PRDAY11                   1848-1852   ///
      long   PRDAY12                   1853-1857   ///
      long   PRDAY13                   1858-1862   ///
      long   PRDAY14                   1863-1867   ///
      long   PRDAY15                   1868-1872   ///
      long   PRDAY16                   1873-1877   ///
      long   PRDAY17                   1878-1882   ///
      long   PRDAY18                   1883-1887   ///
      long   PRDAY19                   1888-1892   ///
      long   PRDAY20                   1893-1897   ///
      long   PRDAY21                   1898-1902   ///
      long   PRDAY22                   1903-1907   ///
      long   PRDAY23                   1908-1912   ///
      long   PRDAY24                   1913-1917   ///
      long   PRDAY25                   1918-1922   ///
      long   PRDAY26                   1923-1927   ///
      long   PRDAY27                   1928-1932   ///
      long   PRDAY28                   1933-1937   ///
      long   PRDAY29                   1938-1942   ///
      long   PRDAY30                   1943-1947   ///
      long   PRDAY31                   1948-1952   ///
      long   PRDAY32                   1953-1957   ///
      long   PRDAY33                   1958-1962   ///
      long   PRDAY34                   1963-1967   ///
      long   PRDAY35                   1968-1972   ///
      long   PRDAY36                   1973-1977   ///
      long   PRDAY37                   1978-1982   ///
      long   PRDAY38                   1983-1987   ///
      long   PRDAY39                   1988-1992   ///
      long   PRDAY40                   1993-1997   ///
      long   PRDAY41                   1998-2002   ///
      long   PRDAY42                   2003-2007   ///
      long   PRDAY43                   2008-2012   ///
      long   PRDAY44                   2013-2017   ///
      long   PRDAY45                   2018-2022   ///
      long   PRDAY46                   2023-2027   ///
      long   PRDAY47                   2028-2032   ///
      long   PRDAY48                   2033-2037   ///
      long   PRDAY49                   2038-2042   ///
      long   PRDAY50                   2043-2047   ///
      long   PRDAY51                   2048-2052   ///
      long   PRDAY52                   2053-2057   ///
      long   PRDAY53                   2058-2062   ///
      long   PRDAY54                   2063-2067   ///
      long   PRDAY55                   2068-2072   ///
      long   PRDAY56                   2073-2077   ///
      long   PRDAY57                   2078-2082   ///
      long   PRDAY58                   2083-2087   ///
      long   PRDAY59                   2088-2092   ///
      long   PRDAY60                   2093-2097   ///
      long   PRDAY61                   2098-2102   ///
      long   PRDAY62                   2103-2107   ///
      long   PRDAY63                   2108-2112   ///
      long   PRDAY64                   2113-2117   ///
      long   PRDAY65                   2118-2122   ///
      long   PRDAY66                   2123-2127   ///
      long   PRDAY67                   2128-2132   ///
      long   PRDAY68                   2133-2137   ///
      long   PRDAY69                   2138-2142   ///
      long   PRDAY70                   2143-2147   ///
      long   PRDAY71                   2148-2152   ///
      long   PRDAY72                   2153-2157   ///
      long   PRDAY73                   2158-2162   ///
      long   PRDAY74                   2163-2167   ///
      long   PRDAY75                   2168-2172   ///
      long   PRDAY76                   2173-2177   ///
      long   PRDAY77                   2178-2182   ///
      long   PRDAY78                   2183-2187   ///
      long   PRDAY79                   2188-2192   ///
      long   PRDAY80                   2193-2197   ///
      long   PRDAY81                   2198-2202   ///
      long   PRDAY82                   2203-2207   ///
      long   PRDAY83                   2208-2212   ///
      long   PRDAY84                   2213-2217   ///
      long   PRDAY85                   2218-2222   ///
      long   PRDAY86                   2223-2227   ///
      long   PRDAY87                   2228-2232   ///
      long   PRDAY88                   2233-2237   ///
      long   PRDAY89                   2238-2242   ///
      long   PRDAY90                   2243-2247   ///
      str    PrimLang                  2248-2250   ///
      int    PRVER                     2251-2253   ///
      str    PSTATE                    2254-2255   ///
      long   PSTCO2                    2256-2260   ///
      byte   RACE                      2261-2262   ///
      byte   RACE_EDIT                 2263-2264   ///
      str    RACE_X                    2265-2284   ///
      double TOTCHG                    2285-2294   ///
      double TOTCHG_X                  2295-2309   ///
      byte   TRAN_IN                   2310-2311   ///
      byte   TRAN_OUT                  2312-2313   ///
      int    YEAR                      2314-2317   ///
      str    ZIP                       2318-2322   ///
      str    ZIP3                      2323-2325   ///
      int    ZIPINC_QRTL               2326-2328   ///
      int    AYEAR                     2329-2332   ///
      byte   BMONTH                    2333-2334   ///
      int    BYEAR                     2335-2338   ///
      byte   PRMONTH1                  2339-2340   ///
      byte   PRMONTH2                  2341-2342   ///
      byte   PRMONTH3                  2343-2344   ///
      byte   PRMONTH4                  2345-2346   ///
      byte   PRMONTH5                  2347-2348   ///
      byte   PRMONTH6                  2349-2350   ///
      byte   PRMONTH7                  2351-2352   ///
      byte   PRMONTH8                  2353-2354   ///
      byte   PRMONTH9                  2355-2356   ///
      byte   PRMONTH10                 2357-2358   ///
      byte   PRMONTH11                 2359-2360   ///
      byte   PRMONTH12                 2361-2362   ///
      byte   PRMONTH13                 2363-2364   ///
      byte   PRMONTH14                 2365-2366   ///
      byte   PRMONTH15                 2367-2368   ///
      byte   PRMONTH16                 2369-2370   ///
      byte   PRMONTH17                 2371-2372   ///
      byte   PRMONTH18                 2373-2374   ///
      byte   PRMONTH19                 2375-2376   ///
      byte   PRMONTH20                 2377-2378   ///
      byte   PRMONTH21                 2379-2380   ///
      byte   PRMONTH22                 2381-2382   ///
      byte   PRMONTH23                 2383-2384   ///
      byte   PRMONTH24                 2385-2386   ///
      byte   PRMONTH25                 2387-2388   ///
      byte   PRMONTH26                 2389-2390   ///
      byte   PRMONTH27                 2391-2392   ///
      byte   PRMONTH28                 2393-2394   ///
      byte   PRMONTH29                 2395-2396   ///
      byte   PRMONTH30                 2397-2398   ///
      byte   PRMONTH31                 2399-2400   ///
      byte   PRMONTH32                 2401-2402   ///
      byte   PRMONTH33                 2403-2404   ///
      byte   PRMONTH34                 2405-2406   ///
      byte   PRMONTH35                 2407-2408   ///
      byte   PRMONTH36                 2409-2410   ///
      byte   PRMONTH37                 2411-2412   ///
      byte   PRMONTH38                 2413-2414   ///
      byte   PRMONTH39                 2415-2416   ///
      byte   PRMONTH40                 2417-2418   ///
      byte   PRMONTH41                 2419-2420   ///
      byte   PRMONTH42                 2421-2422   ///
      byte   PRMONTH43                 2423-2424   ///
      byte   PRMONTH44                 2425-2426   ///
      byte   PRMONTH45                 2427-2428   ///
      byte   PRMONTH46                 2429-2430   ///
      byte   PRMONTH47                 2431-2432   ///
      byte   PRMONTH48                 2433-2434   ///
      byte   PRMONTH49                 2435-2436   ///
      byte   PRMONTH50                 2437-2438   ///
      byte   PRMONTH51                 2439-2440   ///
      byte   PRMONTH52                 2441-2442   ///
      byte   PRMONTH53                 2443-2444   ///
      byte   PRMONTH54                 2445-2446   ///
      byte   PRMONTH55                 2447-2448   ///
      byte   PRMONTH56                 2449-2450   ///
      byte   PRMONTH57                 2451-2452   ///
      byte   PRMONTH58                 2453-2454   ///
      byte   PRMONTH59                 2455-2456   ///
      byte   PRMONTH60                 2457-2458   ///
      byte   PRMONTH61                 2459-2460   ///
      byte   PRMONTH62                 2461-2462   ///
      byte   PRMONTH63                 2463-2464   ///
      byte   PRMONTH64                 2465-2466   ///
      byte   PRMONTH65                 2467-2468   ///
      byte   PRMONTH66                 2469-2470   ///
      byte   PRMONTH67                 2471-2472   ///
      byte   PRMONTH68                 2473-2474   ///
      byte   PRMONTH69                 2475-2476   ///
      byte   PRMONTH70                 2477-2478   ///
      byte   PRMONTH71                 2479-2480   ///
      byte   PRMONTH72                 2481-2482   ///
      byte   PRMONTH73                 2483-2484   ///
      byte   PRMONTH74                 2485-2486   ///
      byte   PRMONTH75                 2487-2488   ///
      byte   PRMONTH76                 2489-2490   ///
      byte   PRMONTH77                 2491-2492   ///
      byte   PRMONTH78                 2493-2494   ///
      byte   PRMONTH79                 2495-2496   ///
      byte   PRMONTH80                 2497-2498   ///
      byte   PRMONTH81                 2499-2500   ///
      byte   PRMONTH82                 2501-2502   ///
      byte   PRMONTH83                 2503-2504   ///
      byte   PRMONTH84                 2505-2506   ///
      byte   PRMONTH85                 2507-2508   ///
      byte   PRMONTH86                 2509-2510   ///
      byte   PRMONTH87                 2511-2512   ///
      byte   PRMONTH88                 2513-2514   ///
      byte   PRMONTH89                 2515-2516   ///
      byte   PRMONTH90                 2517-2518   ///
      int    PRYEAR1                   2519-2522   ///
      int    PRYEAR2                   2523-2526   ///
      int    PRYEAR3                   2527-2530   ///
      int    PRYEAR4                   2531-2534   ///
      int    PRYEAR5                   2535-2538   ///
      int    PRYEAR6                   2539-2542   ///
      int    PRYEAR7                   2543-2546   ///
      int    PRYEAR8                   2547-2550   ///
      int    PRYEAR9                   2551-2554   ///
      int    PRYEAR10                  2555-2558   ///
      int    PRYEAR11                  2559-2562   ///
      int    PRYEAR12                  2563-2566   ///
      int    PRYEAR13                  2567-2570   ///
      int    PRYEAR14                  2571-2574   ///
      int    PRYEAR15                  2575-2578   ///
      int    PRYEAR16                  2579-2582   ///
      int    PRYEAR17                  2583-2586   ///
      int    PRYEAR18                  2587-2590   ///
      int    PRYEAR19                  2591-2594   ///
      int    PRYEAR20                  2595-2598   ///
      int    PRYEAR21                  2599-2602   ///
      int    PRYEAR22                  2603-2606   ///
      int    PRYEAR23                  2607-2610   ///
      int    PRYEAR24                  2611-2614   ///
      int    PRYEAR25                  2615-2618   ///
      int    PRYEAR26                  2619-2622   ///
      int    PRYEAR27                  2623-2626   ///
      int    PRYEAR28                  2627-2630   ///
      int    PRYEAR29                  2631-2634   ///
      int    PRYEAR30                  2635-2638   ///
      int    PRYEAR31                  2639-2642   ///
      int    PRYEAR32                  2643-2646   ///
      int    PRYEAR33                  2647-2650   ///
      int    PRYEAR34                  2651-2654   ///
      int    PRYEAR35                  2655-2658   ///
      int    PRYEAR36                  2659-2662   ///
      int    PRYEAR37                  2663-2666   ///
      int    PRYEAR38                  2667-2670   ///
      int    PRYEAR39                  2671-2674   ///
      int    PRYEAR40                  2675-2678   ///
      int    PRYEAR41                  2679-2682   ///
      int    PRYEAR42                  2683-2686   ///
      int    PRYEAR43                  2687-2690   ///
      int    PRYEAR44                  2691-2694   ///
      int    PRYEAR45                  2695-2698   ///
      int    PRYEAR46                  2699-2702   ///
      int    PRYEAR47                  2703-2706   ///
      int    PRYEAR48                  2707-2710   ///
      int    PRYEAR49                  2711-2714   ///
      int    PRYEAR50                  2715-2718   ///
      int    PRYEAR51                  2719-2722   ///
      int    PRYEAR52                  2723-2726   ///
      int    PRYEAR53                  2727-2730   ///
      int    PRYEAR54                  2731-2734   ///
      int    PRYEAR55                  2735-2738   ///
      int    PRYEAR56                  2739-2742   ///
      int    PRYEAR57                  2743-2746   ///
      int    PRYEAR58                  2747-2750   ///
      int    PRYEAR59                  2751-2754   ///
      int    PRYEAR60                  2755-2758   ///
      int    PRYEAR61                  2759-2762   ///
      int    PRYEAR62                  2763-2766   ///
      int    PRYEAR63                  2767-2770   ///
      int    PRYEAR64                  2771-2774   ///
      int    PRYEAR65                  2775-2778   ///
      int    PRYEAR66                  2779-2782   ///
      int    PRYEAR67                  2783-2786   ///
      int    PRYEAR68                  2787-2790   ///
      int    PRYEAR69                  2791-2794   ///
      int    PRYEAR70                  2795-2798   ///
      int    PRYEAR71                  2799-2802   ///
      int    PRYEAR72                  2803-2806   ///
      int    PRYEAR73                  2807-2810   ///
      int    PRYEAR74                  2811-2814   ///
      int    PRYEAR75                  2815-2818   ///
      int    PRYEAR76                  2819-2822   ///
      int    PRYEAR77                  2823-2826   ///
      int    PRYEAR78                  2827-2830   ///
      int    PRYEAR79                  2831-2834   ///
      int    PRYEAR80                  2835-2838   ///
      int    PRYEAR81                  2839-2842   ///
      int    PRYEAR82                  2843-2846   ///
      int    PRYEAR83                  2847-2850   ///
      int    PRYEAR84                  2851-2854   ///
      int    PRYEAR85                  2855-2858   ///
      int    PRYEAR86                  2859-2862   ///
      int    PRYEAR87                  2863-2866   ///
      int    PRYEAR88                  2867-2870   ///
      int    PRYEAR89                  2871-2874   ///
      int    PRYEAR90                  2875-2878   ///
      using  "MN_SID_2017_CORE.ASC"

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
label var DXPOA104                 "Diagnosis 104, present on admission indicator"
label var DXPOA105                 "Diagnosis 105, present on admission indicator"
label var DXPOA106                 "Diagnosis 106, present on admission indicator"
label var DXPOA107                 "Diagnosis 107, present on admission indicator"
label var DXPOA108                 "Diagnosis 108, present on admission indicator"
label var DXPOA109                 "Diagnosis 109, present on admission indicator"
label var DXPOA110                 "Diagnosis 110, present on admission indicator"
label var DXPOA111                 "Diagnosis 111, present on admission indicator"
label var DXPOA112                 "Diagnosis 112, present on admission indicator"
label var DXPOA113                 "Diagnosis 113, present on admission indicator"
label var DXPOA114                 "Diagnosis 114, present on admission indicator"
label var DXPOA115                 "Diagnosis 115, present on admission indicator"
label var DXPOA116                 "Diagnosis 116, present on admission indicator"
label var DXPOA117                 "Diagnosis 117, present on admission indicator"
label var DXPOA118                 "Diagnosis 118, present on admission indicator"
label var DXPOA119                 "Diagnosis 119, present on admission indicator"
label var DXVER                    "Diagnosis Version"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
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
label var I10_DX109                "ICD-10-CM Diagnosis 109"
label var I10_DX110                "ICD-10-CM Diagnosis 110"
label var I10_DX111                "ICD-10-CM Diagnosis 111"
label var I10_DX112                "ICD-10-CM Diagnosis 112"
label var I10_DX113                "ICD-10-CM Diagnosis 113"
label var I10_DX114                "ICD-10-CM Diagnosis 114"
label var I10_DX115                "ICD-10-CM Diagnosis 115"
label var I10_DX116                "ICD-10-CM Diagnosis 116"
label var I10_DX117                "ICD-10-CM Diagnosis 117"
label var I10_DX118                "ICD-10-CM Diagnosis 118"
label var I10_DX119                "ICD-10-CM Diagnosis 119"
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
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes(RUCC)"
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
label var PrimLang                 "Primary language of patient"
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
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
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

save "MN_SID_2017_CORE.dta", replace
