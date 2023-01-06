/*****************************************************************************
* Creation Date: 03/28/2017   
* MN_SID_2015q4_CORE.Do
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
      str    DXPOA1                      60        ///
      str    DXPOA2                      61        ///
      str    DXPOA3                      62        ///
      str    DXPOA4                      63        ///
      str    DXPOA5                      64        ///
      str    DXPOA6                      65        ///
      str    DXPOA7                      66        ///
      str    DXPOA8                      67        ///
      str    DXPOA9                      68        ///
      str    DXPOA10                     69        ///
      str    DXPOA11                     70        ///
      str    DXPOA12                     71        ///
      str    DXPOA13                     72        ///
      str    DXPOA14                     73        ///
      str    DXPOA15                     74        ///
      str    DXPOA16                     75        ///
      str    DXPOA17                     76        ///
      str    DXPOA18                     77        ///
      str    DXPOA19                     78        ///
      str    DXPOA20                     79        ///
      str    DXPOA21                     80        ///
      str    DXPOA22                     81        ///
      str    DXPOA23                     82        ///
      str    DXPOA24                     83        ///
      str    DXPOA25                     84        ///
      str    DXPOA26                     85        ///
      str    DXPOA27                     86        ///
      str    DXPOA28                     87        ///
      str    DXPOA29                     88        ///
      str    DXPOA30                     89        ///
      str    DXPOA31                     90        ///
      str    DXPOA32                     91        ///
      str    DXPOA33                     92        ///
      str    DXPOA34                     93        ///
      str    DXPOA35                     94        ///
      str    DXPOA36                     95        ///
      str    DXPOA37                     96        ///
      str    DXPOA38                     97        ///
      str    DXPOA39                     98        ///
      str    DXPOA40                     99        ///
      str    DXPOA41                    100        ///
      str    DXPOA42                    101        ///
      str    DXPOA43                    102        ///
      str    DXPOA44                    103        ///
      str    DXPOA45                    104        ///
      str    DXPOA46                    105        ///
      str    DXPOA47                    106        ///
      str    DXPOA48                    107        ///
      str    DXPOA49                    108        ///
      str    DXPOA50                    109        ///
      int    DXVER                      110- 112   ///
      str    E_POA1                     113        ///
      str    E_POA2                     114        ///
      str    E_POA3                     115        ///
      str    E_POA4                     116        ///
      str    E_POA5                     117        ///
      str    E_POA6                     118        ///
      str    E_POA7                     119        ///
      byte   FEMALE                     120- 121   ///
      byte   HCUP_ED                    122- 123   ///
      byte   HCUP_OS                    124- 125   ///
      str    HOSPST                     126- 127   ///
      str    I10_DX_Admitting           128- 134   ///
      str    I10_DX1                    135- 141   ///
      str    I10_DX2                    142- 148   ///
      str    I10_DX3                    149- 155   ///
      str    I10_DX4                    156- 162   ///
      str    I10_DX5                    163- 169   ///
      str    I10_DX6                    170- 176   ///
      str    I10_DX7                    177- 183   ///
      str    I10_DX8                    184- 190   ///
      str    I10_DX9                    191- 197   ///
      str    I10_DX10                   198- 204   ///
      str    I10_DX11                   205- 211   ///
      str    I10_DX12                   212- 218   ///
      str    I10_DX13                   219- 225   ///
      str    I10_DX14                   226- 232   ///
      str    I10_DX15                   233- 239   ///
      str    I10_DX16                   240- 246   ///
      str    I10_DX17                   247- 253   ///
      str    I10_DX18                   254- 260   ///
      str    I10_DX19                   261- 267   ///
      str    I10_DX20                   268- 274   ///
      str    I10_DX21                   275- 281   ///
      str    I10_DX22                   282- 288   ///
      str    I10_DX23                   289- 295   ///
      str    I10_DX24                   296- 302   ///
      str    I10_DX25                   303- 309   ///
      str    I10_DX26                   310- 316   ///
      str    I10_DX27                   317- 323   ///
      str    I10_DX28                   324- 330   ///
      str    I10_DX29                   331- 337   ///
      str    I10_DX30                   338- 344   ///
      str    I10_DX31                   345- 351   ///
      str    I10_DX32                   352- 358   ///
      str    I10_DX33                   359- 365   ///
      str    I10_DX34                   366- 372   ///
      str    I10_DX35                   373- 379   ///
      str    I10_DX36                   380- 386   ///
      str    I10_DX37                   387- 393   ///
      str    I10_DX38                   394- 400   ///
      str    I10_DX39                   401- 407   ///
      str    I10_DX40                   408- 414   ///
      str    I10_DX41                   415- 421   ///
      str    I10_DX42                   422- 428   ///
      str    I10_DX43                   429- 435   ///
      str    I10_DX44                   436- 442   ///
      str    I10_DX45                   443- 449   ///
      str    I10_DX46                   450- 456   ///
      str    I10_DX47                   457- 463   ///
      str    I10_DX48                   464- 470   ///
      str    I10_DX49                   471- 477   ///
      str    I10_DX50                   478- 484   ///
      int    I10_DXCCS1                 485- 488   ///
      int    I10_DXCCS2                 489- 492   ///
      int    I10_DXCCS3                 493- 496   ///
      int    I10_DXCCS4                 497- 500   ///
      int    I10_DXCCS5                 501- 504   ///
      int    I10_DXCCS6                 505- 508   ///
      int    I10_DXCCS7                 509- 512   ///
      int    I10_DXCCS8                 513- 516   ///
      int    I10_DXCCS9                 517- 520   ///
      int    I10_DXCCS10                521- 524   ///
      int    I10_DXCCS11                525- 528   ///
      int    I10_DXCCS12                529- 532   ///
      int    I10_DXCCS13                533- 536   ///
      int    I10_DXCCS14                537- 540   ///
      int    I10_DXCCS15                541- 544   ///
      int    I10_DXCCS16                545- 548   ///
      int    I10_DXCCS17                549- 552   ///
      int    I10_DXCCS18                553- 556   ///
      int    I10_DXCCS19                557- 560   ///
      int    I10_DXCCS20                561- 564   ///
      int    I10_DXCCS21                565- 568   ///
      int    I10_DXCCS22                569- 572   ///
      int    I10_DXCCS23                573- 576   ///
      int    I10_DXCCS24                577- 580   ///
      int    I10_DXCCS25                581- 584   ///
      int    I10_DXCCS26                585- 588   ///
      int    I10_DXCCS27                589- 592   ///
      int    I10_DXCCS28                593- 596   ///
      int    I10_DXCCS29                597- 600   ///
      int    I10_DXCCS30                601- 604   ///
      int    I10_DXCCS31                605- 608   ///
      int    I10_DXCCS32                609- 612   ///
      int    I10_DXCCS33                613- 616   ///
      int    I10_DXCCS34                617- 620   ///
      int    I10_DXCCS35                621- 624   ///
      int    I10_DXCCS36                625- 628   ///
      int    I10_DXCCS37                629- 632   ///
      int    I10_DXCCS38                633- 636   ///
      int    I10_DXCCS39                637- 640   ///
      int    I10_DXCCS40                641- 644   ///
      int    I10_DXCCS41                645- 648   ///
      int    I10_DXCCS42                649- 652   ///
      int    I10_DXCCS43                653- 656   ///
      int    I10_DXCCS44                657- 660   ///
      int    I10_DXCCS45                661- 664   ///
      int    I10_DXCCS46                665- 668   ///
      int    I10_DXCCS47                669- 672   ///
      int    I10_DXCCS48                673- 676   ///
      int    I10_DXCCS49                677- 680   ///
      int    I10_DXCCS50                681- 684   ///
      str    I10_ECAUSE1                685- 691   ///
      str    I10_ECAUSE2                692- 698   ///
      str    I10_ECAUSE3                699- 705   ///
      str    I10_ECAUSE4                706- 712   ///
      str    I10_ECAUSE5                713- 719   ///
      str    I10_ECAUSE6                720- 726   ///
      str    I10_ECAUSE7                727- 733   ///
      int    I10_ECauseCCS1             734- 737   ///
      int    I10_ECauseCCS2             738- 741   ///
      int    I10_ECauseCCS3             742- 745   ///
      int    I10_ECauseCCS4             746- 749   ///
      int    I10_ECauseCCS5             750- 753   ///
      int    I10_ECauseCCS6             754- 757   ///
      int    I10_ECauseCCS7             758- 761   ///
      int    I10_HOSPBRTH               762- 764   ///
      int    I10_NCHRONIC               765- 767   ///
      int    I10_NDX                    768- 770   ///
      byte   I10_NECAUSE                771- 772   ///
      byte   I10_NEOMAT                 773- 774   ///
      int    I10_NPR                    775- 777   ///
      byte   I10_ORPROC                 778- 779   ///
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
      int    I10_PRCCS1                1130-1132   ///
      int    I10_PRCCS2                1133-1135   ///
      int    I10_PRCCS3                1136-1138   ///
      int    I10_PRCCS4                1139-1141   ///
      int    I10_PRCCS5                1142-1144   ///
      int    I10_PRCCS6                1145-1147   ///
      int    I10_PRCCS7                1148-1150   ///
      int    I10_PRCCS8                1151-1153   ///
      int    I10_PRCCS9                1154-1156   ///
      int    I10_PRCCS10               1157-1159   ///
      int    I10_PRCCS11               1160-1162   ///
      int    I10_PRCCS12               1163-1165   ///
      int    I10_PRCCS13               1166-1168   ///
      int    I10_PRCCS14               1169-1171   ///
      int    I10_PRCCS15               1172-1174   ///
      int    I10_PRCCS16               1175-1177   ///
      int    I10_PRCCS17               1178-1180   ///
      int    I10_PRCCS18               1181-1183   ///
      int    I10_PRCCS19               1184-1186   ///
      int    I10_PRCCS20               1187-1189   ///
      int    I10_PRCCS21               1190-1192   ///
      int    I10_PRCCS22               1193-1195   ///
      int    I10_PRCCS23               1196-1198   ///
      int    I10_PRCCS24               1199-1201   ///
      int    I10_PRCCS25               1202-1204   ///
      int    I10_PRCCS26               1205-1207   ///
      int    I10_PRCCS27               1208-1210   ///
      int    I10_PRCCS28               1211-1213   ///
      int    I10_PRCCS29               1214-1216   ///
      int    I10_PRCCS30               1217-1219   ///
      int    I10_PRCCS31               1220-1222   ///
      int    I10_PRCCS32               1223-1225   ///
      int    I10_PRCCS33               1226-1228   ///
      int    I10_PRCCS34               1229-1231   ///
      int    I10_PRCCS35               1232-1234   ///
      int    I10_PRCCS36               1235-1237   ///
      int    I10_PRCCS37               1238-1240   ///
      int    I10_PRCCS38               1241-1243   ///
      int    I10_PRCCS39               1244-1246   ///
      int    I10_PRCCS40               1247-1249   ///
      int    I10_PRCCS41               1250-1252   ///
      int    I10_PRCCS42               1253-1255   ///
      int    I10_PRCCS43               1256-1258   ///
      int    I10_PRCCS44               1259-1261   ///
      int    I10_PRCCS45               1262-1264   ///
      int    I10_PRCCS46               1265-1267   ///
      int    I10_PRCCS47               1268-1270   ///
      int    I10_PRCCS48               1271-1273   ///
      int    I10_PRCCS49               1274-1276   ///
      int    I10_PRCCS50               1277-1279   ///
      int    I10_PROCTYPE              1280-1282   ///
      byte   I10_SERVICELINE           1283-1284   ///
      double KEY                       1285-1299   ///
      long   LOS                       1300-1304   ///
      long   LOS_X                     1305-1310   ///
      byte   MDC                       1311-1312   ///
      byte   MDC_NoPOA                 1313-1314   ///
      byte   MDC32                     1315-1316   ///
      byte   MEDINCSTQ                 1317-1318   ///
      long   MRN_R                     1319-1327   ///
      double OS_TIME                   1328-1338   ///
      byte   PAY1                      1339-1340   ///
      str    PAY1_X                    1341-1347   ///
      byte   PAY2                      1348-1349   ///
      str    PAY2_X                    1350-1356   ///
      byte   PAY3                      1357-1358   ///
      str    PAY3_X                    1359-1365   ///
      int    PL_CBSA                   1366-1368   ///
      byte   PL_NCHS                   1369-1370   ///
      byte   PL_RUCC                   1371-1372   ///
      byte   PL_UIC                    1373-1374   ///
      byte   PL_UR_CAT4                1375-1376   ///
      byte   POA_Disch_Edit1           1377-1378   ///
      byte   POA_Disch_Edit2           1379-1380   ///
      byte   POA_Hosp_Edit1            1381-1382   ///
      byte   POA_Hosp_Edit2            1383-1384   ///
      byte   POA_Hosp_Edit3            1385-1386   ///
      double POA_Hosp_Edit3_Value      1387-1394   ///
      str    PointOfOrigin_X           1395        ///
      str    PointOfOriginUB04         1396        ///
      long   PRDAY1                    1397-1401   ///
      long   PRDAY2                    1402-1406   ///
      long   PRDAY3                    1407-1411   ///
      long   PRDAY4                    1412-1416   ///
      long   PRDAY5                    1417-1421   ///
      long   PRDAY6                    1422-1426   ///
      long   PRDAY7                    1427-1431   ///
      long   PRDAY8                    1432-1436   ///
      long   PRDAY9                    1437-1441   ///
      long   PRDAY10                   1442-1446   ///
      long   PRDAY11                   1447-1451   ///
      long   PRDAY12                   1452-1456   ///
      long   PRDAY13                   1457-1461   ///
      long   PRDAY14                   1462-1466   ///
      long   PRDAY15                   1467-1471   ///
      long   PRDAY16                   1472-1476   ///
      long   PRDAY17                   1477-1481   ///
      long   PRDAY18                   1482-1486   ///
      long   PRDAY19                   1487-1491   ///
      long   PRDAY20                   1492-1496   ///
      long   PRDAY21                   1497-1501   ///
      long   PRDAY22                   1502-1506   ///
      long   PRDAY23                   1507-1511   ///
      long   PRDAY24                   1512-1516   ///
      long   PRDAY25                   1517-1521   ///
      long   PRDAY26                   1522-1526   ///
      long   PRDAY27                   1527-1531   ///
      long   PRDAY28                   1532-1536   ///
      long   PRDAY29                   1537-1541   ///
      long   PRDAY30                   1542-1546   ///
      long   PRDAY31                   1547-1551   ///
      long   PRDAY32                   1552-1556   ///
      long   PRDAY33                   1557-1561   ///
      long   PRDAY34                   1562-1566   ///
      long   PRDAY35                   1567-1571   ///
      long   PRDAY36                   1572-1576   ///
      long   PRDAY37                   1577-1581   ///
      long   PRDAY38                   1582-1586   ///
      long   PRDAY39                   1587-1591   ///
      long   PRDAY40                   1592-1596   ///
      long   PRDAY41                   1597-1601   ///
      long   PRDAY42                   1602-1606   ///
      long   PRDAY43                   1607-1611   ///
      long   PRDAY44                   1612-1616   ///
      long   PRDAY45                   1617-1621   ///
      long   PRDAY46                   1622-1626   ///
      long   PRDAY47                   1627-1631   ///
      long   PRDAY48                   1632-1636   ///
      long   PRDAY49                   1637-1641   ///
      long   PRDAY50                   1642-1646   ///
      int    PRVER                     1647-1649   ///
      str    PSTATE                    1650-1651   ///
      long   PSTCO2                    1652-1656   ///
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
      using  "MN_SID_2015q4_CORE.ASC"

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
label var E_POA1                   "E Cause 1, present on admission indicator"
label var E_POA2                   "E Cause 2, present on admission indicator"
label var E_POA3                   "E Cause 3, present on admission indicator"
label var E_POA4                   "E Cause 4, present on admission indicator"
label var E_POA5                   "E Cause 5, present on admission indicator"
label var E_POA6                   "E Cause 6, present on admission indicator"
label var E_POA7                   "E Cause 7, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
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
label var I10_DXCCS1               "ICD-10-CM CCS: diagnosis 1"
label var I10_DXCCS2               "ICD-10-CM CCS: diagnosis 2"
label var I10_DXCCS3               "ICD-10-CM CCS: diagnosis 3"
label var I10_DXCCS4               "ICD-10-CM CCS: diagnosis 4"
label var I10_DXCCS5               "ICD-10-CM CCS: diagnosis 5"
label var I10_DXCCS6               "ICD-10-CM CCS: diagnosis 6"
label var I10_DXCCS7               "ICD-10-CM CCS: diagnosis 7"
label var I10_DXCCS8               "ICD-10-CM CCS: diagnosis 8"
label var I10_DXCCS9               "ICD-10-CM CCS: diagnosis 9"
label var I10_DXCCS10              "ICD-10-CM CCS: diagnosis 10"
label var I10_DXCCS11              "ICD-10-CM CCS: diagnosis 11"
label var I10_DXCCS12              "ICD-10-CM CCS: diagnosis 12"
label var I10_DXCCS13              "ICD-10-CM CCS: diagnosis 13"
label var I10_DXCCS14              "ICD-10-CM CCS: diagnosis 14"
label var I10_DXCCS15              "ICD-10-CM CCS: diagnosis 15"
label var I10_DXCCS16              "ICD-10-CM CCS: diagnosis 16"
label var I10_DXCCS17              "ICD-10-CM CCS: diagnosis 17"
label var I10_DXCCS18              "ICD-10-CM CCS: diagnosis 18"
label var I10_DXCCS19              "ICD-10-CM CCS: diagnosis 19"
label var I10_DXCCS20              "ICD-10-CM CCS: diagnosis 20"
label var I10_DXCCS21              "ICD-10-CM CCS: diagnosis 21"
label var I10_DXCCS22              "ICD-10-CM CCS: diagnosis 22"
label var I10_DXCCS23              "ICD-10-CM CCS: diagnosis 23"
label var I10_DXCCS24              "ICD-10-CM CCS: diagnosis 24"
label var I10_DXCCS25              "ICD-10-CM CCS: diagnosis 25"
label var I10_DXCCS26              "ICD-10-CM CCS: diagnosis 26"
label var I10_DXCCS27              "ICD-10-CM CCS: diagnosis 27"
label var I10_DXCCS28              "ICD-10-CM CCS: diagnosis 28"
label var I10_DXCCS29              "ICD-10-CM CCS: diagnosis 29"
label var I10_DXCCS30              "ICD-10-CM CCS: diagnosis 30"
label var I10_DXCCS31              "ICD-10-CM CCS: diagnosis 31"
label var I10_DXCCS32              "ICD-10-CM CCS: diagnosis 32"
label var I10_DXCCS33              "ICD-10-CM CCS: diagnosis 33"
label var I10_DXCCS34              "ICD-10-CM CCS: diagnosis 34"
label var I10_DXCCS35              "ICD-10-CM CCS: diagnosis 35"
label var I10_DXCCS36              "ICD-10-CM CCS: diagnosis 36"
label var I10_DXCCS37              "ICD-10-CM CCS: diagnosis 37"
label var I10_DXCCS38              "ICD-10-CM CCS: diagnosis 38"
label var I10_DXCCS39              "ICD-10-CM CCS: diagnosis 39"
label var I10_DXCCS40              "ICD-10-CM CCS: diagnosis 40"
label var I10_DXCCS41              "ICD-10-CM CCS: diagnosis 41"
label var I10_DXCCS42              "ICD-10-CM CCS: diagnosis 42"
label var I10_DXCCS43              "ICD-10-CM CCS: diagnosis 43"
label var I10_DXCCS44              "ICD-10-CM CCS: diagnosis 44"
label var I10_DXCCS45              "ICD-10-CM CCS: diagnosis 45"
label var I10_DXCCS46              "ICD-10-CM CCS: diagnosis 46"
label var I10_DXCCS47              "ICD-10-CM CCS: diagnosis 47"
label var I10_DXCCS48              "ICD-10-CM CCS: diagnosis 48"
label var I10_DXCCS49              "ICD-10-CM CCS: diagnosis 49"
label var I10_DXCCS50              "ICD-10-CM CCS: diagnosis 50"
label var I10_ECAUSE1              "ICD-10-CM E Cause 1"
label var I10_ECAUSE2              "ICD-10-CM E Cause 2"
label var I10_ECAUSE3              "ICD-10-CM E Cause 3"
label var I10_ECAUSE4              "ICD-10-CM E Cause 4"
label var I10_ECAUSE5              "ICD-10-CM E Cause 5"
label var I10_ECAUSE6              "ICD-10-CM E Cause 6"
label var I10_ECAUSE7              "ICD-10-CM E Cause 7"
label var I10_ECauseCCS1           "ICD-10-CM CCS: E Cause 1"
label var I10_ECauseCCS2           "ICD-10-CM CCS: E Cause 2"
label var I10_ECauseCCS3           "ICD-10-CM CCS: E Cause 3"
label var I10_ECauseCCS4           "ICD-10-CM CCS: E Cause 4"
label var I10_ECauseCCS5           "ICD-10-CM CCS: E Cause 5"
label var I10_ECauseCCS6           "ICD-10-CM CCS: E Cause 6"
label var I10_ECauseCCS7           "ICD-10-CM CCS: E Cause 7"
label var I10_HOSPBRTH             "ICD-10-CM Indicator of birth in this hospital"
label var I10_NCHRONIC             "ICD-10-CM Number of chronic conditions"
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_NECAUSE              "ICD-10-CM Number of E Causes on this record"
label var I10_NEOMAT               "ICD-10-CM/PCS Neonatal and/or maternal I10_DX and/or I10_PR"
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
label var I10_PRCCS1               "ICD-10-PCS CCS: procedure 1"
label var I10_PRCCS2               "ICD-10-PCS CCS: procedure 2"
label var I10_PRCCS3               "ICD-10-PCS CCS: procedure 3"
label var I10_PRCCS4               "ICD-10-PCS CCS: procedure 4"
label var I10_PRCCS5               "ICD-10-PCS CCS: procedure 5"
label var I10_PRCCS6               "ICD-10-PCS CCS: procedure 6"
label var I10_PRCCS7               "ICD-10-PCS CCS: procedure 7"
label var I10_PRCCS8               "ICD-10-PCS CCS: procedure 8"
label var I10_PRCCS9               "ICD-10-PCS CCS: procedure 9"
label var I10_PRCCS10              "ICD-10-PCS CCS: procedure 10"
label var I10_PRCCS11              "ICD-10-PCS CCS: procedure 11"
label var I10_PRCCS12              "ICD-10-PCS CCS: procedure 12"
label var I10_PRCCS13              "ICD-10-PCS CCS: procedure 13"
label var I10_PRCCS14              "ICD-10-PCS CCS: procedure 14"
label var I10_PRCCS15              "ICD-10-PCS CCS: procedure 15"
label var I10_PRCCS16              "ICD-10-PCS CCS: procedure 16"
label var I10_PRCCS17              "ICD-10-PCS CCS: procedure 17"
label var I10_PRCCS18              "ICD-10-PCS CCS: procedure 18"
label var I10_PRCCS19              "ICD-10-PCS CCS: procedure 19"
label var I10_PRCCS20              "ICD-10-PCS CCS: procedure 20"
label var I10_PRCCS21              "ICD-10-PCS CCS: procedure 21"
label var I10_PRCCS22              "ICD-10-PCS CCS: procedure 22"
label var I10_PRCCS23              "ICD-10-PCS CCS: procedure 23"
label var I10_PRCCS24              "ICD-10-PCS CCS: procedure 24"
label var I10_PRCCS25              "ICD-10-PCS CCS: procedure 25"
label var I10_PRCCS26              "ICD-10-PCS CCS: procedure 26"
label var I10_PRCCS27              "ICD-10-PCS CCS: procedure 27"
label var I10_PRCCS28              "ICD-10-PCS CCS: procedure 28"
label var I10_PRCCS29              "ICD-10-PCS CCS: procedure 29"
label var I10_PRCCS30              "ICD-10-PCS CCS: procedure 30"
label var I10_PRCCS31              "ICD-10-PCS CCS: procedure 31"
label var I10_PRCCS32              "ICD-10-PCS CCS: procedure 32"
label var I10_PRCCS33              "ICD-10-PCS CCS: procedure 33"
label var I10_PRCCS34              "ICD-10-PCS CCS: procedure 34"
label var I10_PRCCS35              "ICD-10-PCS CCS: procedure 35"
label var I10_PRCCS36              "ICD-10-PCS CCS: procedure 36"
label var I10_PRCCS37              "ICD-10-PCS CCS: procedure 37"
label var I10_PRCCS38              "ICD-10-PCS CCS: procedure 38"
label var I10_PRCCS39              "ICD-10-PCS CCS: procedure 39"
label var I10_PRCCS40              "ICD-10-PCS CCS: procedure 40"
label var I10_PRCCS41              "ICD-10-PCS CCS: procedure 41"
label var I10_PRCCS42              "ICD-10-PCS CCS: procedure 42"
label var I10_PRCCS43              "ICD-10-PCS CCS: procedure 43"
label var I10_PRCCS44              "ICD-10-PCS CCS: procedure 44"
label var I10_PRCCS45              "ICD-10-PCS CCS: procedure 45"
label var I10_PRCCS46              "ICD-10-PCS CCS: procedure 46"
label var I10_PRCCS47              "ICD-10-PCS CCS: procedure 47"
label var I10_PRCCS48              "ICD-10-PCS CCS: procedure 48"
label var I10_PRCCS49              "ICD-10-PCS CCS: procedure 49"
label var I10_PRCCS50              "ICD-10-PCS CCS: procedure 50"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDC32                    "MDC, version 32"
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
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
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
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode I10_DXCCS1                (-999 -888 -666=.)
recode I10_DXCCS2                (-999 -888 -666=.)
recode I10_DXCCS3                (-999 -888 -666=.)
recode I10_DXCCS4                (-999 -888 -666=.)
recode I10_DXCCS5                (-999 -888 -666=.)
recode I10_DXCCS6                (-999 -888 -666=.)
recode I10_DXCCS7                (-999 -888 -666=.)
recode I10_DXCCS8                (-999 -888 -666=.)
recode I10_DXCCS9                (-999 -888 -666=.)
recode I10_DXCCS10               (-999 -888 -666=.)
recode I10_DXCCS11               (-999 -888 -666=.)
recode I10_DXCCS12               (-999 -888 -666=.)
recode I10_DXCCS13               (-999 -888 -666=.)
recode I10_DXCCS14               (-999 -888 -666=.)
recode I10_DXCCS15               (-999 -888 -666=.)
recode I10_DXCCS16               (-999 -888 -666=.)
recode I10_DXCCS17               (-999 -888 -666=.)
recode I10_DXCCS18               (-999 -888 -666=.)
recode I10_DXCCS19               (-999 -888 -666=.)
recode I10_DXCCS20               (-999 -888 -666=.)
recode I10_DXCCS21               (-999 -888 -666=.)
recode I10_DXCCS22               (-999 -888 -666=.)
recode I10_DXCCS23               (-999 -888 -666=.)
recode I10_DXCCS24               (-999 -888 -666=.)
recode I10_DXCCS25               (-999 -888 -666=.)
recode I10_DXCCS26               (-999 -888 -666=.)
recode I10_DXCCS27               (-999 -888 -666=.)
recode I10_DXCCS28               (-999 -888 -666=.)
recode I10_DXCCS29               (-999 -888 -666=.)
recode I10_DXCCS30               (-999 -888 -666=.)
recode I10_DXCCS31               (-999 -888 -666=.)
recode I10_DXCCS32               (-999 -888 -666=.)
recode I10_DXCCS33               (-999 -888 -666=.)
recode I10_DXCCS34               (-999 -888 -666=.)
recode I10_DXCCS35               (-999 -888 -666=.)
recode I10_DXCCS36               (-999 -888 -666=.)
recode I10_DXCCS37               (-999 -888 -666=.)
recode I10_DXCCS38               (-999 -888 -666=.)
recode I10_DXCCS39               (-999 -888 -666=.)
recode I10_DXCCS40               (-999 -888 -666=.)
recode I10_DXCCS41               (-999 -888 -666=.)
recode I10_DXCCS42               (-999 -888 -666=.)
recode I10_DXCCS43               (-999 -888 -666=.)
recode I10_DXCCS44               (-999 -888 -666=.)
recode I10_DXCCS45               (-999 -888 -666=.)
recode I10_DXCCS46               (-999 -888 -666=.)
recode I10_DXCCS47               (-999 -888 -666=.)
recode I10_DXCCS48               (-999 -888 -666=.)
recode I10_DXCCS49               (-999 -888 -666=.)
recode I10_DXCCS50               (-999 -888 -666=.)
recode I10_ECauseCCS1            (-999 -888 -666=.)
recode I10_ECauseCCS2            (-999 -888 -666=.)
recode I10_ECauseCCS3            (-999 -888 -666=.)
recode I10_ECauseCCS4            (-999 -888 -666=.)
recode I10_ECauseCCS5            (-999 -888 -666=.)
recode I10_ECauseCCS6            (-999 -888 -666=.)
recode I10_ECauseCCS7            (-999 -888 -666=.)
recode I10_HOSPBRTH              (-99 -88 -66=.)
recode I10_NCHRONIC              (-99 -88 -66=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NECAUSE               (-9 -8 -6 -5=.)
recode I10_NEOMAT                (-9 -8 -6 -5=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_ORPROC                (-9 -8 -6 -5=.)
recode I10_PRCCS1                (-99 -88 -66=.)
recode I10_PRCCS2                (-99 -88 -66=.)
recode I10_PRCCS3                (-99 -88 -66=.)
recode I10_PRCCS4                (-99 -88 -66=.)
recode I10_PRCCS5                (-99 -88 -66=.)
recode I10_PRCCS6                (-99 -88 -66=.)
recode I10_PRCCS7                (-99 -88 -66=.)
recode I10_PRCCS8                (-99 -88 -66=.)
recode I10_PRCCS9                (-99 -88 -66=.)
recode I10_PRCCS10               (-99 -88 -66=.)
recode I10_PRCCS11               (-99 -88 -66=.)
recode I10_PRCCS12               (-99 -88 -66=.)
recode I10_PRCCS13               (-99 -88 -66=.)
recode I10_PRCCS14               (-99 -88 -66=.)
recode I10_PRCCS15               (-99 -88 -66=.)
recode I10_PRCCS16               (-99 -88 -66=.)
recode I10_PRCCS17               (-99 -88 -66=.)
recode I10_PRCCS18               (-99 -88 -66=.)
recode I10_PRCCS19               (-99 -88 -66=.)
recode I10_PRCCS20               (-99 -88 -66=.)
recode I10_PRCCS21               (-99 -88 -66=.)
recode I10_PRCCS22               (-99 -88 -66=.)
recode I10_PRCCS23               (-99 -88 -66=.)
recode I10_PRCCS24               (-99 -88 -66=.)
recode I10_PRCCS25               (-99 -88 -66=.)
recode I10_PRCCS26               (-99 -88 -66=.)
recode I10_PRCCS27               (-99 -88 -66=.)
recode I10_PRCCS28               (-99 -88 -66=.)
recode I10_PRCCS29               (-99 -88 -66=.)
recode I10_PRCCS30               (-99 -88 -66=.)
recode I10_PRCCS31               (-99 -88 -66=.)
recode I10_PRCCS32               (-99 -88 -66=.)
recode I10_PRCCS33               (-99 -88 -66=.)
recode I10_PRCCS34               (-99 -88 -66=.)
recode I10_PRCCS35               (-99 -88 -66=.)
recode I10_PRCCS36               (-99 -88 -66=.)
recode I10_PRCCS37               (-99 -88 -66=.)
recode I10_PRCCS38               (-99 -88 -66=.)
recode I10_PRCCS39               (-99 -88 -66=.)
recode I10_PRCCS40               (-99 -88 -66=.)
recode I10_PRCCS41               (-99 -88 -66=.)
recode I10_PRCCS42               (-99 -88 -66=.)
recode I10_PRCCS43               (-99 -88 -66=.)
recode I10_PRCCS44               (-99 -88 -66=.)
recode I10_PRCCS45               (-99 -88 -66=.)
recode I10_PRCCS46               (-99 -88 -66=.)
recode I10_PRCCS47               (-99 -88 -66=.)
recode I10_PRCCS48               (-99 -88 -66=.)
recode I10_PRCCS49               (-99 -88 -66=.)
recode I10_PRCCS50               (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode I10_SERVICELINE           (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDC32                     (-9 -8 -6 -5=.)
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
recode PRVER                     (-99 -88 -66=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
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

save "MN_SID_2015q4_CORE.dta", replace
