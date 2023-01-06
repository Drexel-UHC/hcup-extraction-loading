/*****************************************************************************
* Creation Date: 10/18/2016   
* Modify Date:   10/19/2017 - matches data created on date above.
* MN_SID_2014_CORE.Do
* This program will load the 2014 MN ASCII CORE File into Stata.
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
      int    DRG24                       52-  54   ///
      byte   DRGVER                      55-  56   ///
      int    DRG_NoPOA                   57-  59   ///
      str    DX1                         60-  66   ///
      str    DX2                         67-  73   ///
      str    DX3                         74-  80   ///
      str    DX4                         81-  87   ///
      str    DX5                         88-  94   ///
      str    DX6                         95- 101   ///
      str    DX7                        102- 108   ///
      str    DX8                        109- 115   ///
      str    DX9                        116- 122   ///
      str    DX10                       123- 129   ///
      str    DX11                       130- 136   ///
      str    DX12                       137- 143   ///
      str    DX13                       144- 150   ///
      str    DX14                       151- 157   ///
      str    DX15                       158- 164   ///
      str    DX16                       165- 171   ///
      str    DX17                       172- 178   ///
      str    DX18                       179- 185   ///
      str    DX19                       186- 192   ///
      str    DX20                       193- 199   ///
      str    DX21                       200- 206   ///
      str    DX22                       207- 213   ///
      str    DX23                       214- 220   ///
      str    DX24                       221- 227   ///
      str    DX25                       228- 234   ///
      str    DX26                       235- 241   ///
      str    DX27                       242- 248   ///
      str    DX28                       249- 255   ///
      str    DX29                       256- 262   ///
      str    DX30                       263- 269   ///
      str    DX31                       270- 276   ///
      str    DX32                       277- 283   ///
      str    DX33                       284- 290   ///
      str    DX34                       291- 297   ///
      str    DX35                       298- 304   ///
      str    DX36                       305- 311   ///
      str    DX37                       312- 318   ///
      str    DX38                       319- 325   ///
      str    DX39                       326- 332   ///
      str    DX40                       333- 339   ///
      str    DX41                       340- 346   ///
      str    DX42                       347- 353   ///
      str    DX43                       354- 360   ///
      str    DX44                       361- 367   ///
      str    DX45                       368- 374   ///
      str    DX46                       375- 381   ///
      str    DX47                       382- 388   ///
      str    DX48                       389- 395   ///
      str    DX49                       396- 402   ///
      str    DX50                       403- 409   ///
      int    DXCCS1                     410- 413   ///
      int    DXCCS2                     414- 417   ///
      int    DXCCS3                     418- 421   ///
      int    DXCCS4                     422- 425   ///
      int    DXCCS5                     426- 429   ///
      int    DXCCS6                     430- 433   ///
      int    DXCCS7                     434- 437   ///
      int    DXCCS8                     438- 441   ///
      int    DXCCS9                     442- 445   ///
      int    DXCCS10                    446- 449   ///
      int    DXCCS11                    450- 453   ///
      int    DXCCS12                    454- 457   ///
      int    DXCCS13                    458- 461   ///
      int    DXCCS14                    462- 465   ///
      int    DXCCS15                    466- 469   ///
      int    DXCCS16                    470- 473   ///
      int    DXCCS17                    474- 477   ///
      int    DXCCS18                    478- 481   ///
      int    DXCCS19                    482- 485   ///
      int    DXCCS20                    486- 489   ///
      int    DXCCS21                    490- 493   ///
      int    DXCCS22                    494- 497   ///
      int    DXCCS23                    498- 501   ///
      int    DXCCS24                    502- 505   ///
      int    DXCCS25                    506- 509   ///
      int    DXCCS26                    510- 513   ///
      int    DXCCS27                    514- 517   ///
      int    DXCCS28                    518- 521   ///
      int    DXCCS29                    522- 525   ///
      int    DXCCS30                    526- 529   ///
      int    DXCCS31                    530- 533   ///
      int    DXCCS32                    534- 537   ///
      int    DXCCS33                    538- 541   ///
      int    DXCCS34                    542- 545   ///
      int    DXCCS35                    546- 549   ///
      int    DXCCS36                    550- 553   ///
      int    DXCCS37                    554- 557   ///
      int    DXCCS38                    558- 561   ///
      int    DXCCS39                    562- 565   ///
      int    DXCCS40                    566- 569   ///
      int    DXCCS41                    570- 573   ///
      int    DXCCS42                    574- 577   ///
      int    DXCCS43                    578- 581   ///
      int    DXCCS44                    582- 585   ///
      int    DXCCS45                    586- 589   ///
      int    DXCCS46                    590- 593   ///
      int    DXCCS47                    594- 597   ///
      int    DXCCS48                    598- 601   ///
      int    DXCCS49                    602- 605   ///
      int    DXCCS50                    606- 609   ///
      str    DXPOA1                     610        ///
      str    DXPOA2                     611        ///
      str    DXPOA3                     612        ///
      str    DXPOA4                     613        ///
      str    DXPOA5                     614        ///
      str    DXPOA6                     615        ///
      str    DXPOA7                     616        ///
      str    DXPOA8                     617        ///
      str    DXPOA9                     618        ///
      str    DXPOA10                    619        ///
      str    DXPOA11                    620        ///
      str    DXPOA12                    621        ///
      str    DXPOA13                    622        ///
      str    DXPOA14                    623        ///
      str    DXPOA15                    624        ///
      str    DXPOA16                    625        ///
      str    DXPOA17                    626        ///
      str    DXPOA18                    627        ///
      str    DXPOA19                    628        ///
      str    DXPOA20                    629        ///
      str    DXPOA21                    630        ///
      str    DXPOA22                    631        ///
      str    DXPOA23                    632        ///
      str    DXPOA24                    633        ///
      str    DXPOA25                    634        ///
      str    DXPOA26                    635        ///
      str    DXPOA27                    636        ///
      str    DXPOA28                    637        ///
      str    DXPOA29                    638        ///
      str    DXPOA30                    639        ///
      str    DXPOA31                    640        ///
      str    DXPOA32                    641        ///
      str    DXPOA33                    642        ///
      str    DXPOA34                    643        ///
      str    DXPOA35                    644        ///
      str    DXPOA36                    645        ///
      str    DXPOA37                    646        ///
      str    DXPOA38                    647        ///
      str    DXPOA39                    648        ///
      str    DXPOA40                    649        ///
      str    DXPOA41                    650        ///
      str    DXPOA42                    651        ///
      str    DXPOA43                    652        ///
      str    DXPOA44                    653        ///
      str    DXPOA45                    654        ///
      str    DXPOA46                    655        ///
      str    DXPOA47                    656        ///
      str    DXPOA48                    657        ///
      str    DXPOA49                    658        ///
      str    DXPOA50                    659        ///
      int    DXVER                      660- 662   ///
      str    DX_Admitting               663- 669   ///
      str    ECODE1                     670- 676   ///
      str    ECODE2                     677- 683   ///
      str    ECODE3                     684- 690   ///
      str    ECODE4                     691- 697   ///
      str    ECODE5                     698- 704   ///
      str    ECODE6                     705- 711   ///
      str    ECODE7                     712- 718   ///
      str    ECODE8                     719- 725   ///
      int    E_CCS1                     726- 729   ///
      int    E_CCS2                     730- 733   ///
      int    E_CCS3                     734- 737   ///
      int    E_CCS4                     738- 741   ///
      int    E_CCS5                     742- 745   ///
      int    E_CCS6                     746- 749   ///
      int    E_CCS7                     750- 753   ///
      int    E_CCS8                     754- 757   ///
      str    E_POA1                     758        ///
      str    E_POA2                     759        ///
      str    E_POA3                     760        ///
      str    E_POA4                     761        ///
      str    E_POA5                     762        ///
      str    E_POA6                     763        ///
      str    E_POA7                     764        ///
      str    E_POA8                     765        ///
      byte   FEMALE                     766- 767   ///
      byte   HCUP_ED                    768- 769   ///
      byte   HCUP_OS                    770- 771   ///
      int    HOSPBRTH                   772- 774   ///
      str    HOSPST                     775- 776   ///
      double KEY                        777- 791   ///
      long   LOS                        792- 796   ///
      long   LOS_X                      797- 802   ///
      str    MARITALSTATUSUB04          803        ///
      str    MARITALSTATUS_X            804        ///
      byte   MDC                        805- 806   ///
      byte   MDC24                      807- 808   ///
      byte   MDC_NoPOA                  809- 810   ///
      byte   MEDINCSTQ                  811- 812   ///
      long   MRN_R                      813- 821   ///
      int    NCHRONIC                   822- 824   ///
      int    NDX                        825- 827   ///
      byte   NECODE                     828- 829   ///
      byte   NEOMAT                     830- 831   ///
      int    NPR                        832- 834   ///
      byte   ORPROC                     835- 836   ///
      double OS_TIME                    837- 847   ///
      byte   PAY1                       848- 849   ///
      str    PAY1_X                     850- 856   ///
      byte   PAY2                       857- 858   ///
      str    PAY2_X                     859- 865   ///
      byte   PAY3                       866- 867   ///
      str    PAY3_X                     868- 874   ///
      int    PL_CBSA                    875- 877   ///
      byte   PL_NCHS                    878- 879   ///
      byte   PL_RUCC                    880- 881   ///
      byte   PL_UIC                     882- 883   ///
      byte   PL_UR_CAT4                 884- 885   ///
      byte   POA_Disch_Edit1            886- 887   ///
      byte   POA_Disch_Edit2            888- 889   ///
      byte   POA_Hosp_Edit1             890- 891   ///
      byte   POA_Hosp_Edit2             892- 893   ///
      byte   POA_Hosp_Edit3             894- 895   ///
      double POA_Hosp_Edit3_Value       896- 903   ///
      str    PR1                        904- 910   ///
      str    PR2                        911- 917   ///
      str    PR3                        918- 924   ///
      str    PR4                        925- 931   ///
      str    PR5                        932- 938   ///
      str    PR6                        939- 945   ///
      str    PR7                        946- 952   ///
      str    PR8                        953- 959   ///
      str    PR9                        960- 966   ///
      str    PR10                       967- 973   ///
      str    PR11                       974- 980   ///
      str    PR12                       981- 987   ///
      str    PR13                       988- 994   ///
      str    PR14                       995-1001   ///
      str    PR15                      1002-1008   ///
      str    PR16                      1009-1015   ///
      str    PR17                      1016-1022   ///
      str    PR18                      1023-1029   ///
      str    PR19                      1030-1036   ///
      str    PR20                      1037-1043   ///
      str    PR21                      1044-1050   ///
      str    PR22                      1051-1057   ///
      str    PR23                      1058-1064   ///
      str    PR24                      1065-1071   ///
      str    PR25                      1072-1078   ///
      str    PR26                      1079-1085   ///
      str    PR27                      1086-1092   ///
      str    PR28                      1093-1099   ///
      str    PR29                      1100-1106   ///
      str    PR30                      1107-1113   ///
      str    PR31                      1114-1120   ///
      str    PR32                      1121-1127   ///
      str    PR33                      1128-1134   ///
      str    PR34                      1135-1141   ///
      str    PR35                      1142-1148   ///
      str    PR36                      1149-1155   ///
      str    PR37                      1156-1162   ///
      str    PR38                      1163-1169   ///
      str    PR39                      1170-1176   ///
      str    PR40                      1177-1183   ///
      str    PR41                      1184-1190   ///
      str    PR42                      1191-1197   ///
      str    PR43                      1198-1204   ///
      str    PR44                      1205-1211   ///
      str    PR45                      1212-1218   ///
      str    PR46                      1219-1225   ///
      str    PR47                      1226-1232   ///
      str    PR48                      1233-1239   ///
      str    PR49                      1240-1246   ///
      str    PR50                      1247-1253   ///
      int    PRCCS1                    1254-1256   ///
      int    PRCCS2                    1257-1259   ///
      int    PRCCS3                    1260-1262   ///
      int    PRCCS4                    1263-1265   ///
      int    PRCCS5                    1266-1268   ///
      int    PRCCS6                    1269-1271   ///
      int    PRCCS7                    1272-1274   ///
      int    PRCCS8                    1275-1277   ///
      int    PRCCS9                    1278-1280   ///
      int    PRCCS10                   1281-1283   ///
      int    PRCCS11                   1284-1286   ///
      int    PRCCS12                   1287-1289   ///
      int    PRCCS13                   1290-1292   ///
      int    PRCCS14                   1293-1295   ///
      int    PRCCS15                   1296-1298   ///
      int    PRCCS16                   1299-1301   ///
      int    PRCCS17                   1302-1304   ///
      int    PRCCS18                   1305-1307   ///
      int    PRCCS19                   1308-1310   ///
      int    PRCCS20                   1311-1313   ///
      int    PRCCS21                   1314-1316   ///
      int    PRCCS22                   1317-1319   ///
      int    PRCCS23                   1320-1322   ///
      int    PRCCS24                   1323-1325   ///
      int    PRCCS25                   1326-1328   ///
      int    PRCCS26                   1329-1331   ///
      int    PRCCS27                   1332-1334   ///
      int    PRCCS28                   1335-1337   ///
      int    PRCCS29                   1338-1340   ///
      int    PRCCS30                   1341-1343   ///
      int    PRCCS31                   1344-1346   ///
      int    PRCCS32                   1347-1349   ///
      int    PRCCS33                   1350-1352   ///
      int    PRCCS34                   1353-1355   ///
      int    PRCCS35                   1356-1358   ///
      int    PRCCS36                   1359-1361   ///
      int    PRCCS37                   1362-1364   ///
      int    PRCCS38                   1365-1367   ///
      int    PRCCS39                   1368-1370   ///
      int    PRCCS40                   1371-1373   ///
      int    PRCCS41                   1374-1376   ///
      int    PRCCS42                   1377-1379   ///
      int    PRCCS43                   1380-1382   ///
      int    PRCCS44                   1383-1385   ///
      int    PRCCS45                   1386-1388   ///
      int    PRCCS46                   1389-1391   ///
      int    PRCCS47                   1392-1394   ///
      int    PRCCS48                   1395-1397   ///
      int    PRCCS49                   1398-1400   ///
      int    PRCCS50                   1401-1403   ///
      long   PRDAY1                    1404-1408   ///
      long   PRDAY2                    1409-1413   ///
      long   PRDAY3                    1414-1418   ///
      long   PRDAY4                    1419-1423   ///
      long   PRDAY5                    1424-1428   ///
      long   PRDAY6                    1429-1433   ///
      long   PRDAY7                    1434-1438   ///
      long   PRDAY8                    1439-1443   ///
      long   PRDAY9                    1444-1448   ///
      long   PRDAY10                   1449-1453   ///
      long   PRDAY11                   1454-1458   ///
      long   PRDAY12                   1459-1463   ///
      long   PRDAY13                   1464-1468   ///
      long   PRDAY14                   1469-1473   ///
      long   PRDAY15                   1474-1478   ///
      long   PRDAY16                   1479-1483   ///
      long   PRDAY17                   1484-1488   ///
      long   PRDAY18                   1489-1493   ///
      long   PRDAY19                   1494-1498   ///
      long   PRDAY20                   1499-1503   ///
      long   PRDAY21                   1504-1508   ///
      long   PRDAY22                   1509-1513   ///
      long   PRDAY23                   1514-1518   ///
      long   PRDAY24                   1519-1523   ///
      long   PRDAY25                   1524-1528   ///
      long   PRDAY26                   1529-1533   ///
      long   PRDAY27                   1534-1538   ///
      long   PRDAY28                   1539-1543   ///
      long   PRDAY29                   1544-1548   ///
      long   PRDAY30                   1549-1553   ///
      long   PRDAY31                   1554-1558   ///
      long   PRDAY32                   1559-1563   ///
      long   PRDAY33                   1564-1568   ///
      long   PRDAY34                   1569-1573   ///
      long   PRDAY35                   1574-1578   ///
      long   PRDAY36                   1579-1583   ///
      long   PRDAY37                   1584-1588   ///
      long   PRDAY38                   1589-1593   ///
      long   PRDAY39                   1594-1598   ///
      long   PRDAY40                   1599-1603   ///
      long   PRDAY41                   1604-1608   ///
      long   PRDAY42                   1609-1613   ///
      long   PRDAY43                   1614-1618   ///
      long   PRDAY44                   1619-1623   ///
      long   PRDAY45                   1624-1628   ///
      long   PRDAY46                   1629-1633   ///
      long   PRDAY47                   1634-1638   ///
      long   PRDAY48                   1639-1643   ///
      long   PRDAY49                   1644-1648   ///
      long   PRDAY50                   1649-1653   ///
      int    PROCTYPE                  1654-1656   ///
      int    PRVER                     1657-1659   ///
      str    PSTATE                    1660-1661   ///
      long   PSTCO2                    1662-1666   ///
      str    PointOfOriginUB04         1667        ///
      str    PointOfOrigin_X           1668        ///
      byte   SERVICELINE               1669-1670   ///
      double TOTCHG                    1671-1680   ///
      double TOTCHG_X                  1681-1695   ///
      byte   TRAN_IN                   1696-1697   ///
      byte   TRAN_OUT                  1698-1699   ///
      int    YEAR                      1700-1703   ///
      str    ZIP                       1704-1708   ///
      str    ZIP3                      1709-1711   ///
      int    ZIPINC_QRTL               1712-1714   ///
      int    AYEAR                     1715-1718   ///
      byte   BMONTH                    1719-1720   ///
      int    BYEAR                     1721-1724   ///
      byte   PRMONTH1                  1725-1726   ///
      byte   PRMONTH2                  1727-1728   ///
      byte   PRMONTH3                  1729-1730   ///
      byte   PRMONTH4                  1731-1732   ///
      byte   PRMONTH5                  1733-1734   ///
      byte   PRMONTH6                  1735-1736   ///
      byte   PRMONTH7                  1737-1738   ///
      byte   PRMONTH8                  1739-1740   ///
      byte   PRMONTH9                  1741-1742   ///
      byte   PRMONTH10                 1743-1744   ///
      byte   PRMONTH11                 1745-1746   ///
      byte   PRMONTH12                 1747-1748   ///
      byte   PRMONTH13                 1749-1750   ///
      byte   PRMONTH14                 1751-1752   ///
      byte   PRMONTH15                 1753-1754   ///
      byte   PRMONTH16                 1755-1756   ///
      byte   PRMONTH17                 1757-1758   ///
      byte   PRMONTH18                 1759-1760   ///
      byte   PRMONTH19                 1761-1762   ///
      byte   PRMONTH20                 1763-1764   ///
      byte   PRMONTH21                 1765-1766   ///
      byte   PRMONTH22                 1767-1768   ///
      byte   PRMONTH23                 1769-1770   ///
      byte   PRMONTH24                 1771-1772   ///
      byte   PRMONTH25                 1773-1774   ///
      byte   PRMONTH26                 1775-1776   ///
      byte   PRMONTH27                 1777-1778   ///
      byte   PRMONTH28                 1779-1780   ///
      byte   PRMONTH29                 1781-1782   ///
      byte   PRMONTH30                 1783-1784   ///
      byte   PRMONTH31                 1785-1786   ///
      byte   PRMONTH32                 1787-1788   ///
      byte   PRMONTH33                 1789-1790   ///
      byte   PRMONTH34                 1791-1792   ///
      byte   PRMONTH35                 1793-1794   ///
      byte   PRMONTH36                 1795-1796   ///
      byte   PRMONTH37                 1797-1798   ///
      byte   PRMONTH38                 1799-1800   ///
      byte   PRMONTH39                 1801-1802   ///
      byte   PRMONTH40                 1803-1804   ///
      byte   PRMONTH41                 1805-1806   ///
      byte   PRMONTH42                 1807-1808   ///
      byte   PRMONTH43                 1809-1810   ///
      byte   PRMONTH44                 1811-1812   ///
      byte   PRMONTH45                 1813-1814   ///
      byte   PRMONTH46                 1815-1816   ///
      byte   PRMONTH47                 1817-1818   ///
      byte   PRMONTH48                 1819-1820   ///
      byte   PRMONTH49                 1821-1822   ///
      byte   PRMONTH50                 1823-1824   ///
      int    PRYEAR1                   1825-1828   ///
      int    PRYEAR2                   1829-1832   ///
      int    PRYEAR3                   1833-1836   ///
      int    PRYEAR4                   1837-1840   ///
      int    PRYEAR5                   1841-1844   ///
      int    PRYEAR6                   1845-1848   ///
      int    PRYEAR7                   1849-1852   ///
      int    PRYEAR8                   1853-1856   ///
      int    PRYEAR9                   1857-1860   ///
      int    PRYEAR10                  1861-1864   ///
      int    PRYEAR11                  1865-1868   ///
      int    PRYEAR12                  1869-1872   ///
      int    PRYEAR13                  1873-1876   ///
      int    PRYEAR14                  1877-1880   ///
      int    PRYEAR15                  1881-1884   ///
      int    PRYEAR16                  1885-1888   ///
      int    PRYEAR17                  1889-1892   ///
      int    PRYEAR18                  1893-1896   ///
      int    PRYEAR19                  1897-1900   ///
      int    PRYEAR20                  1901-1904   ///
      int    PRYEAR21                  1905-1908   ///
      int    PRYEAR22                  1909-1912   ///
      int    PRYEAR23                  1913-1916   ///
      int    PRYEAR24                  1917-1920   ///
      int    PRYEAR25                  1921-1924   ///
      int    PRYEAR26                  1925-1928   ///
      int    PRYEAR27                  1929-1932   ///
      int    PRYEAR28                  1933-1936   ///
      int    PRYEAR29                  1937-1940   ///
      int    PRYEAR30                  1941-1944   ///
      int    PRYEAR31                  1945-1948   ///
      int    PRYEAR32                  1949-1952   ///
      int    PRYEAR33                  1953-1956   ///
      int    PRYEAR34                  1957-1960   ///
      int    PRYEAR35                  1961-1964   ///
      int    PRYEAR36                  1965-1968   ///
      int    PRYEAR37                  1969-1972   ///
      int    PRYEAR38                  1973-1976   ///
      int    PRYEAR39                  1977-1980   ///
      int    PRYEAR40                  1981-1984   ///
      int    PRYEAR41                  1985-1988   ///
      int    PRYEAR42                  1989-1992   ///
      int    PRYEAR43                  1993-1996   ///
      int    PRYEAR44                  1997-2000   ///
      int    PRYEAR45                  2001-2004   ///
      int    PRYEAR46                  2005-2008   ///
      int    PRYEAR47                  2009-2012   ///
      int    PRYEAR48                  2013-2016   ///
      int    PRYEAR49                  2017-2020   ///
      int    PRYEAR50                  2021-2024   ///
      using  "MN_SID_2014_CORE.ASC"

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
label var DRG24                    "DRG, version 24"
label var DRGVER                   "DRG grouper version used on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
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
label var DX_Admitting             "Admitting Diagnosis Code"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var ECODE8                   "E code 8"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_CCS7                   "CCS: E Code 7"
label var E_CCS8                   "CCS: E Code 8"
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var E_POA7                   "E Code 7, present on admission indicator"
label var E_POA8                   "E Code 8, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MARITALSTATUS_X          "Patient's marital status (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC24                    "MDC, version 24"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
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
label var POA_Disch_Edit1          "Indication that a discharge has POA missing on all nonexempt diagnoses"
label var POA_Disch_Edit2          "Indication that a discharge has POA missing on all nonexempt secondary diagnoses"
label var POA_Hosp_Edit1           "Indication that a hospital has POA reported as Y on all diagnoses on all discharges"
label var POA_Hosp_Edit2           "Indication that a hospital has POA reported as missing on all non-Medicare discharges"
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
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
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
recode DXVER                     (-99 -88 -66=.)
recode E_CCS1                    (-999 -888 -666=.)
recode E_CCS2                    (-999 -888 -666=.)
recode E_CCS3                    (-999 -888 -666=.)
recode E_CCS4                    (-999 -888 -666=.)
recode E_CCS5                    (-999 -888 -666=.)
recode E_CCS6                    (-999 -888 -666=.)
recode E_CCS7                    (-999 -888 -666=.)
recode E_CCS8                    (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC24                     (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
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

save "MN_SID_2014_CORE.dta", replace
