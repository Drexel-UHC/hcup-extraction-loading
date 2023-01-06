/*****************************************************************************
* Creation Date: 03/28/2017   
* MN_SID_2015q1q3_CORE.Do
* This program will load the 2015 MN ASCII CORE File into Stata.
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
      int    DRG32                       55-  57   ///
      byte   DRGVER                      58-  59   ///
      str    DX_Admitting                60-  66   ///
      str    DX1                         67-  73   ///
      str    DX2                         74-  80   ///
      str    DX3                         81-  87   ///
      str    DX4                         88-  94   ///
      str    DX5                         95- 101   ///
      str    DX6                        102- 108   ///
      str    DX7                        109- 115   ///
      str    DX8                        116- 122   ///
      str    DX9                        123- 129   ///
      str    DX10                       130- 136   ///
      str    DX11                       137- 143   ///
      str    DX12                       144- 150   ///
      str    DX13                       151- 157   ///
      str    DX14                       158- 164   ///
      str    DX15                       165- 171   ///
      str    DX16                       172- 178   ///
      str    DX17                       179- 185   ///
      str    DX18                       186- 192   ///
      str    DX19                       193- 199   ///
      str    DX20                       200- 206   ///
      str    DX21                       207- 213   ///
      str    DX22                       214- 220   ///
      str    DX23                       221- 227   ///
      str    DX24                       228- 234   ///
      str    DX25                       235- 241   ///
      str    DX26                       242- 248   ///
      str    DX27                       249- 255   ///
      str    DX28                       256- 262   ///
      str    DX29                       263- 269   ///
      str    DX30                       270- 276   ///
      str    DX31                       277- 283   ///
      str    DX32                       284- 290   ///
      str    DX33                       291- 297   ///
      str    DX34                       298- 304   ///
      str    DX35                       305- 311   ///
      str    DX36                       312- 318   ///
      str    DX37                       319- 325   ///
      str    DX38                       326- 332   ///
      str    DX39                       333- 339   ///
      str    DX40                       340- 346   ///
      str    DX41                       347- 353   ///
      str    DX42                       354- 360   ///
      str    DX43                       361- 367   ///
      str    DX44                       368- 374   ///
      str    DX45                       375- 381   ///
      str    DX46                       382- 388   ///
      str    DX47                       389- 395   ///
      str    DX48                       396- 402   ///
      str    DX49                       403- 409   ///
      str    DX50                       410- 416   ///
      int    DXCCS1                     417- 420   ///
      int    DXCCS2                     421- 424   ///
      int    DXCCS3                     425- 428   ///
      int    DXCCS4                     429- 432   ///
      int    DXCCS5                     433- 436   ///
      int    DXCCS6                     437- 440   ///
      int    DXCCS7                     441- 444   ///
      int    DXCCS8                     445- 448   ///
      int    DXCCS9                     449- 452   ///
      int    DXCCS10                    453- 456   ///
      int    DXCCS11                    457- 460   ///
      int    DXCCS12                    461- 464   ///
      int    DXCCS13                    465- 468   ///
      int    DXCCS14                    469- 472   ///
      int    DXCCS15                    473- 476   ///
      int    DXCCS16                    477- 480   ///
      int    DXCCS17                    481- 484   ///
      int    DXCCS18                    485- 488   ///
      int    DXCCS19                    489- 492   ///
      int    DXCCS20                    493- 496   ///
      int    DXCCS21                    497- 500   ///
      int    DXCCS22                    501- 504   ///
      int    DXCCS23                    505- 508   ///
      int    DXCCS24                    509- 512   ///
      int    DXCCS25                    513- 516   ///
      int    DXCCS26                    517- 520   ///
      int    DXCCS27                    521- 524   ///
      int    DXCCS28                    525- 528   ///
      int    DXCCS29                    529- 532   ///
      int    DXCCS30                    533- 536   ///
      int    DXCCS31                    537- 540   ///
      int    DXCCS32                    541- 544   ///
      int    DXCCS33                    545- 548   ///
      int    DXCCS34                    549- 552   ///
      int    DXCCS35                    553- 556   ///
      int    DXCCS36                    557- 560   ///
      int    DXCCS37                    561- 564   ///
      int    DXCCS38                    565- 568   ///
      int    DXCCS39                    569- 572   ///
      int    DXCCS40                    573- 576   ///
      int    DXCCS41                    577- 580   ///
      int    DXCCS42                    581- 584   ///
      int    DXCCS43                    585- 588   ///
      int    DXCCS44                    589- 592   ///
      int    DXCCS45                    593- 596   ///
      int    DXCCS46                    597- 600   ///
      int    DXCCS47                    601- 604   ///
      int    DXCCS48                    605- 608   ///
      int    DXCCS49                    609- 612   ///
      int    DXCCS50                    613- 616   ///
      str    DXPOA1                     617        ///
      str    DXPOA2                     618        ///
      str    DXPOA3                     619        ///
      str    DXPOA4                     620        ///
      str    DXPOA5                     621        ///
      str    DXPOA6                     622        ///
      str    DXPOA7                     623        ///
      str    DXPOA8                     624        ///
      str    DXPOA9                     625        ///
      str    DXPOA10                    626        ///
      str    DXPOA11                    627        ///
      str    DXPOA12                    628        ///
      str    DXPOA13                    629        ///
      str    DXPOA14                    630        ///
      str    DXPOA15                    631        ///
      str    DXPOA16                    632        ///
      str    DXPOA17                    633        ///
      str    DXPOA18                    634        ///
      str    DXPOA19                    635        ///
      str    DXPOA20                    636        ///
      str    DXPOA21                    637        ///
      str    DXPOA22                    638        ///
      str    DXPOA23                    639        ///
      str    DXPOA24                    640        ///
      str    DXPOA25                    641        ///
      str    DXPOA26                    642        ///
      str    DXPOA27                    643        ///
      str    DXPOA28                    644        ///
      str    DXPOA29                    645        ///
      str    DXPOA30                    646        ///
      str    DXPOA31                    647        ///
      str    DXPOA32                    648        ///
      str    DXPOA33                    649        ///
      str    DXPOA34                    650        ///
      str    DXPOA35                    651        ///
      str    DXPOA36                    652        ///
      str    DXPOA37                    653        ///
      str    DXPOA38                    654        ///
      str    DXPOA39                    655        ///
      str    DXPOA40                    656        ///
      str    DXPOA41                    657        ///
      str    DXPOA42                    658        ///
      str    DXPOA43                    659        ///
      str    DXPOA44                    660        ///
      str    DXPOA45                    661        ///
      str    DXPOA46                    662        ///
      str    DXPOA47                    663        ///
      str    DXPOA48                    664        ///
      str    DXPOA49                    665        ///
      str    DXPOA50                    666        ///
      int    DXVER                      667- 669   ///
      int    E_CCS1                     670- 673   ///
      int    E_CCS2                     674- 677   ///
      int    E_CCS3                     678- 681   ///
      int    E_CCS4                     682- 685   ///
      int    E_CCS5                     686- 689   ///
      int    E_CCS6                     690- 693   ///
      int    E_CCS7                     694- 697   ///
      str    E_POA1                     698        ///
      str    E_POA2                     699        ///
      str    E_POA3                     700        ///
      str    E_POA4                     701        ///
      str    E_POA5                     702        ///
      str    E_POA6                     703        ///
      str    E_POA7                     704        ///
      str    ECODE1                     705- 711   ///
      str    ECODE2                     712- 718   ///
      str    ECODE3                     719- 725   ///
      str    ECODE4                     726- 732   ///
      str    ECODE5                     733- 739   ///
      str    ECODE6                     740- 746   ///
      str    ECODE7                     747- 753   ///
      byte   FEMALE                     754- 755   ///
      byte   HCUP_ED                    756- 757   ///
      byte   HCUP_OS                    758- 759   ///
      int    HOSPBRTH                   760- 762   ///
      str    HOSPST                     763- 764   ///
      double KEY                        765- 779   ///
      long   LOS                        780- 784   ///
      long   LOS_X                      785- 790   ///
      byte   MDC                        791- 792   ///
      byte   MDC_NoPOA                  793- 794   ///
      byte   MDC32                      795- 796   ///
      byte   MEDINCSTQ                  797- 798   ///
      long   MRN_R                      799- 807   ///
      int    NCHRONIC                   808- 810   ///
      int    NDX                        811- 813   ///
      byte   NECODE                     814- 815   ///
      byte   NEOMAT                     816- 817   ///
      int    NPR                        818- 820   ///
      byte   ORPROC                     821- 822   ///
      double OS_TIME                    823- 833   ///
      byte   PAY1                       834- 835   ///
      str    PAY1_X                     836- 842   ///
      byte   PAY2                       843- 844   ///
      str    PAY2_X                     845- 851   ///
      byte   PAY3                       852- 853   ///
      str    PAY3_X                     854- 860   ///
      int    PL_CBSA                    861- 863   ///
      byte   PL_NCHS                    864- 865   ///
      byte   PL_RUCC                    866- 867   ///
      byte   PL_UIC                     868- 869   ///
      byte   PL_UR_CAT4                 870- 871   ///
      byte   POA_Disch_Edit1            872- 873   ///
      byte   POA_Disch_Edit2            874- 875   ///
      byte   POA_Hosp_Edit1             876- 877   ///
      byte   POA_Hosp_Edit2             878- 879   ///
      byte   POA_Hosp_Edit3             880- 881   ///
      double POA_Hosp_Edit3_Value       882- 889   ///
      str    PointOfOrigin_X            890        ///
      str    PointOfOriginUB04          891        ///
      str    PR1                        892- 898   ///
      str    PR2                        899- 905   ///
      str    PR3                        906- 912   ///
      str    PR4                        913- 919   ///
      str    PR5                        920- 926   ///
      str    PR6                        927- 933   ///
      str    PR7                        934- 940   ///
      str    PR8                        941- 947   ///
      str    PR9                        948- 954   ///
      str    PR10                       955- 961   ///
      str    PR11                       962- 968   ///
      str    PR12                       969- 975   ///
      str    PR13                       976- 982   ///
      str    PR14                       983- 989   ///
      str    PR15                       990- 996   ///
      str    PR16                       997-1003   ///
      str    PR17                      1004-1010   ///
      str    PR18                      1011-1017   ///
      str    PR19                      1018-1024   ///
      str    PR20                      1025-1031   ///
      str    PR21                      1032-1038   ///
      str    PR22                      1039-1045   ///
      str    PR23                      1046-1052   ///
      str    PR24                      1053-1059   ///
      str    PR25                      1060-1066   ///
      str    PR26                      1067-1073   ///
      str    PR27                      1074-1080   ///
      str    PR28                      1081-1087   ///
      str    PR29                      1088-1094   ///
      str    PR30                      1095-1101   ///
      str    PR31                      1102-1108   ///
      str    PR32                      1109-1115   ///
      str    PR33                      1116-1122   ///
      str    PR34                      1123-1129   ///
      str    PR35                      1130-1136   ///
      str    PR36                      1137-1143   ///
      str    PR37                      1144-1150   ///
      str    PR38                      1151-1157   ///
      str    PR39                      1158-1164   ///
      str    PR40                      1165-1171   ///
      str    PR41                      1172-1178   ///
      str    PR42                      1179-1185   ///
      str    PR43                      1186-1192   ///
      str    PR44                      1193-1199   ///
      str    PR45                      1200-1206   ///
      str    PR46                      1207-1213   ///
      str    PR47                      1214-1220   ///
      str    PR48                      1221-1227   ///
      str    PR49                      1228-1234   ///
      str    PR50                      1235-1241   ///
      int    PRCCS1                    1242-1244   ///
      int    PRCCS2                    1245-1247   ///
      int    PRCCS3                    1248-1250   ///
      int    PRCCS4                    1251-1253   ///
      int    PRCCS5                    1254-1256   ///
      int    PRCCS6                    1257-1259   ///
      int    PRCCS7                    1260-1262   ///
      int    PRCCS8                    1263-1265   ///
      int    PRCCS9                    1266-1268   ///
      int    PRCCS10                   1269-1271   ///
      int    PRCCS11                   1272-1274   ///
      int    PRCCS12                   1275-1277   ///
      int    PRCCS13                   1278-1280   ///
      int    PRCCS14                   1281-1283   ///
      int    PRCCS15                   1284-1286   ///
      int    PRCCS16                   1287-1289   ///
      int    PRCCS17                   1290-1292   ///
      int    PRCCS18                   1293-1295   ///
      int    PRCCS19                   1296-1298   ///
      int    PRCCS20                   1299-1301   ///
      int    PRCCS21                   1302-1304   ///
      int    PRCCS22                   1305-1307   ///
      int    PRCCS23                   1308-1310   ///
      int    PRCCS24                   1311-1313   ///
      int    PRCCS25                   1314-1316   ///
      int    PRCCS26                   1317-1319   ///
      int    PRCCS27                   1320-1322   ///
      int    PRCCS28                   1323-1325   ///
      int    PRCCS29                   1326-1328   ///
      int    PRCCS30                   1329-1331   ///
      int    PRCCS31                   1332-1334   ///
      int    PRCCS32                   1335-1337   ///
      int    PRCCS33                   1338-1340   ///
      int    PRCCS34                   1341-1343   ///
      int    PRCCS35                   1344-1346   ///
      int    PRCCS36                   1347-1349   ///
      int    PRCCS37                   1350-1352   ///
      int    PRCCS38                   1353-1355   ///
      int    PRCCS39                   1356-1358   ///
      int    PRCCS40                   1359-1361   ///
      int    PRCCS41                   1362-1364   ///
      int    PRCCS42                   1365-1367   ///
      int    PRCCS43                   1368-1370   ///
      int    PRCCS44                   1371-1373   ///
      int    PRCCS45                   1374-1376   ///
      int    PRCCS46                   1377-1379   ///
      int    PRCCS47                   1380-1382   ///
      int    PRCCS48                   1383-1385   ///
      int    PRCCS49                   1386-1388   ///
      int    PRCCS50                   1389-1391   ///
      long   PRDAY1                    1392-1396   ///
      long   PRDAY2                    1397-1401   ///
      long   PRDAY3                    1402-1406   ///
      long   PRDAY4                    1407-1411   ///
      long   PRDAY5                    1412-1416   ///
      long   PRDAY6                    1417-1421   ///
      long   PRDAY7                    1422-1426   ///
      long   PRDAY8                    1427-1431   ///
      long   PRDAY9                    1432-1436   ///
      long   PRDAY10                   1437-1441   ///
      long   PRDAY11                   1442-1446   ///
      long   PRDAY12                   1447-1451   ///
      long   PRDAY13                   1452-1456   ///
      long   PRDAY14                   1457-1461   ///
      long   PRDAY15                   1462-1466   ///
      long   PRDAY16                   1467-1471   ///
      long   PRDAY17                   1472-1476   ///
      long   PRDAY18                   1477-1481   ///
      long   PRDAY19                   1482-1486   ///
      long   PRDAY20                   1487-1491   ///
      long   PRDAY21                   1492-1496   ///
      long   PRDAY22                   1497-1501   ///
      long   PRDAY23                   1502-1506   ///
      long   PRDAY24                   1507-1511   ///
      long   PRDAY25                   1512-1516   ///
      long   PRDAY26                   1517-1521   ///
      long   PRDAY27                   1522-1526   ///
      long   PRDAY28                   1527-1531   ///
      long   PRDAY29                   1532-1536   ///
      long   PRDAY30                   1537-1541   ///
      long   PRDAY31                   1542-1546   ///
      long   PRDAY32                   1547-1551   ///
      long   PRDAY33                   1552-1556   ///
      long   PRDAY34                   1557-1561   ///
      long   PRDAY35                   1562-1566   ///
      long   PRDAY36                   1567-1571   ///
      long   PRDAY37                   1572-1576   ///
      long   PRDAY38                   1577-1581   ///
      long   PRDAY39                   1582-1586   ///
      long   PRDAY40                   1587-1591   ///
      long   PRDAY41                   1592-1596   ///
      long   PRDAY42                   1597-1601   ///
      long   PRDAY43                   1602-1606   ///
      long   PRDAY44                   1607-1611   ///
      long   PRDAY45                   1612-1616   ///
      long   PRDAY46                   1617-1621   ///
      long   PRDAY47                   1622-1626   ///
      long   PRDAY48                   1627-1631   ///
      long   PRDAY49                   1632-1636   ///
      long   PRDAY50                   1637-1641   ///
      int    PROCTYPE                  1642-1644   ///
      int    PRVER                     1645-1647   ///
      str    PSTATE                    1648-1649   ///
      long   PSTCO2                    1650-1654   ///
      byte   SERVICELINE               1655-1656   ///
      double TOTCHG                    1657-1666   ///
      double TOTCHG_X                  1667-1681   ///
      byte   TRAN_IN                   1682-1683   ///
      byte   TRAN_OUT                  1684-1685   ///
      int    YEAR                      1686-1689   ///
      str    ZIP                       1690-1694   ///
      str    ZIP3                      1695-1697   ///
      int    ZIPINC_QRTL               1698-1700   ///
      int    AYEAR                     1701-1704   ///
      byte   BMONTH                    1705-1706   ///
      int    BYEAR                     1707-1710   ///
      byte   PRMONTH1                  1711-1712   ///
      byte   PRMONTH2                  1713-1714   ///
      byte   PRMONTH3                  1715-1716   ///
      byte   PRMONTH4                  1717-1718   ///
      byte   PRMONTH5                  1719-1720   ///
      byte   PRMONTH6                  1721-1722   ///
      byte   PRMONTH7                  1723-1724   ///
      byte   PRMONTH8                  1725-1726   ///
      byte   PRMONTH9                  1727-1728   ///
      byte   PRMONTH10                 1729-1730   ///
      byte   PRMONTH11                 1731-1732   ///
      byte   PRMONTH12                 1733-1734   ///
      byte   PRMONTH13                 1735-1736   ///
      byte   PRMONTH14                 1737-1738   ///
      byte   PRMONTH15                 1739-1740   ///
      byte   PRMONTH16                 1741-1742   ///
      byte   PRMONTH17                 1743-1744   ///
      byte   PRMONTH18                 1745-1746   ///
      byte   PRMONTH19                 1747-1748   ///
      byte   PRMONTH20                 1749-1750   ///
      byte   PRMONTH21                 1751-1752   ///
      byte   PRMONTH22                 1753-1754   ///
      byte   PRMONTH23                 1755-1756   ///
      byte   PRMONTH24                 1757-1758   ///
      byte   PRMONTH25                 1759-1760   ///
      byte   PRMONTH26                 1761-1762   ///
      byte   PRMONTH27                 1763-1764   ///
      byte   PRMONTH28                 1765-1766   ///
      byte   PRMONTH29                 1767-1768   ///
      byte   PRMONTH30                 1769-1770   ///
      byte   PRMONTH31                 1771-1772   ///
      byte   PRMONTH32                 1773-1774   ///
      byte   PRMONTH33                 1775-1776   ///
      byte   PRMONTH34                 1777-1778   ///
      byte   PRMONTH35                 1779-1780   ///
      byte   PRMONTH36                 1781-1782   ///
      byte   PRMONTH37                 1783-1784   ///
      byte   PRMONTH38                 1785-1786   ///
      byte   PRMONTH39                 1787-1788   ///
      byte   PRMONTH40                 1789-1790   ///
      byte   PRMONTH41                 1791-1792   ///
      byte   PRMONTH42                 1793-1794   ///
      byte   PRMONTH43                 1795-1796   ///
      byte   PRMONTH44                 1797-1798   ///
      byte   PRMONTH45                 1799-1800   ///
      byte   PRMONTH46                 1801-1802   ///
      byte   PRMONTH47                 1803-1804   ///
      byte   PRMONTH48                 1805-1806   ///
      byte   PRMONTH49                 1807-1808   ///
      byte   PRMONTH50                 1809-1810   ///
      int    PRYEAR1                   1811-1814   ///
      int    PRYEAR2                   1815-1818   ///
      int    PRYEAR3                   1819-1822   ///
      int    PRYEAR4                   1823-1826   ///
      int    PRYEAR5                   1827-1830   ///
      int    PRYEAR6                   1831-1834   ///
      int    PRYEAR7                   1835-1838   ///
      int    PRYEAR8                   1839-1842   ///
      int    PRYEAR9                   1843-1846   ///
      int    PRYEAR10                  1847-1850   ///
      int    PRYEAR11                  1851-1854   ///
      int    PRYEAR12                  1855-1858   ///
      int    PRYEAR13                  1859-1862   ///
      int    PRYEAR14                  1863-1866   ///
      int    PRYEAR15                  1867-1870   ///
      int    PRYEAR16                  1871-1874   ///
      int    PRYEAR17                  1875-1878   ///
      int    PRYEAR18                  1879-1882   ///
      int    PRYEAR19                  1883-1886   ///
      int    PRYEAR20                  1887-1890   ///
      int    PRYEAR21                  1891-1894   ///
      int    PRYEAR22                  1895-1898   ///
      int    PRYEAR23                  1899-1902   ///
      int    PRYEAR24                  1903-1906   ///
      int    PRYEAR25                  1907-1910   ///
      int    PRYEAR26                  1911-1914   ///
      int    PRYEAR27                  1915-1918   ///
      int    PRYEAR28                  1919-1922   ///
      int    PRYEAR29                  1923-1926   ///
      int    PRYEAR30                  1927-1930   ///
      int    PRYEAR31                  1931-1934   ///
      int    PRYEAR32                  1935-1938   ///
      int    PRYEAR33                  1939-1942   ///
      int    PRYEAR34                  1943-1946   ///
      int    PRYEAR35                  1947-1950   ///
      int    PRYEAR36                  1951-1954   ///
      int    PRYEAR37                  1955-1958   ///
      int    PRYEAR38                  1959-1962   ///
      int    PRYEAR39                  1963-1966   ///
      int    PRYEAR40                  1967-1970   ///
      int    PRYEAR41                  1971-1974   ///
      int    PRYEAR42                  1975-1978   ///
      int    PRYEAR43                  1979-1982   ///
      int    PRYEAR44                  1983-1986   ///
      int    PRYEAR45                  1987-1990   ///
      int    PRYEAR46                  1991-1994   ///
      int    PRYEAR47                  1995-1998   ///
      int    PRYEAR48                  1999-2002   ///
      int    PRYEAR49                  2003-2006   ///
      int    PRYEAR50                  2007-2010   ///
      using  "MN_SID_2015q1q3_CORE.ASC"

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
label var DRG32                    "DRG, version 32"
label var DRGVER                   "DRG grouper version used on discharge date"
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
label var DXVER                    "Diagnosis Version"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_CCS7                   "CCS: E Code 7"
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var E_POA7                   "E Code 7, present on admission indicator"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDC32                    "MDC, version 32"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
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
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var SERVICELINE              "Hospital Service Line"
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
recode DXVER                     (-99 -88 -66=.)
recode E_CCS1                    (-999 -888 -666=.)
recode E_CCS2                    (-999 -888 -666=.)
recode E_CCS3                    (-999 -888 -666=.)
recode E_CCS4                    (-999 -888 -666=.)
recode E_CCS5                    (-999 -888 -666=.)
recode E_CCS6                    (-999 -888 -666=.)
recode E_CCS7                    (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDC32                     (-9 -8 -6 -5=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
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
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode SERVICELINE               (-9 -8 -6 -5=.)
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

save "MN_SID_2015q1q3_CORE.dta", replace
