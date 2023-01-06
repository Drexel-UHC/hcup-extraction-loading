/*****************************************************************************
* Creation Date: 09/02/2020   
* IA_SID_2019_CORE.Do
* This program will load the 2019 IA ASCII CORE File into Stata.
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
      int    AGE                          1-   3   ///
      int    AGEDAY                       4-   6   ///
      int    AGEMONTH                     7-   9   ///
      byte   AMONTH                      10-  11   ///
      byte   ATYPE                       12-  13   ///
      byte   AWEEKEND                    14-  15   ///
      int    BWT                         16-  19   ///
      byte   DIED                        20-  21   ///
      byte   DISPUB04                    22-  23   ///
      byte   DISPUNIFORM                 24-  25   ///
      str    DISP_X                      26-  29   ///
      byte   DMONTH                      30-  31   ///
      byte   DQTR                        32-  33   ///
      int    DRG                         34-  36   ///
      byte   DRGVER                      37-  38   ///
      int    DRG_NoPOA                   39-  41   ///
      str    DXPOA1                      42        ///
      str    DXPOA2                      43        ///
      str    DXPOA3                      44        ///
      str    DXPOA4                      45        ///
      str    DXPOA5                      46        ///
      str    DXPOA6                      47        ///
      str    DXPOA7                      48        ///
      str    DXPOA8                      49        ///
      str    DXPOA9                      50        ///
      str    DXPOA10                     51        ///
      str    DXPOA11                     52        ///
      str    DXPOA12                     53        ///
      str    DXPOA13                     54        ///
      str    DXPOA14                     55        ///
      str    DXPOA15                     56        ///
      str    DXPOA16                     57        ///
      str    DXPOA17                     58        ///
      str    DXPOA18                     59        ///
      str    DXPOA19                     60        ///
      str    DXPOA20                     61        ///
      str    DXPOA21                     62        ///
      str    DXPOA22                     63        ///
      str    DXPOA23                     64        ///
      str    DXPOA24                     65        ///
      str    DXPOA25                     66        ///
      str    DXPOA26                     67        ///
      str    DXPOA27                     68        ///
      str    DXPOA28                     69        ///
      str    DXPOA29                     70        ///
      str    DXPOA30                     71        ///
      str    DXPOA31                     72        ///
      str    DXPOA32                     73        ///
      str    DXPOA33                     74        ///
      str    DXPOA34                     75        ///
      str    DXPOA35                     76        ///
      str    DXPOA36                     77        ///
      str    DXPOA37                     78        ///
      str    DXPOA38                     79        ///
      str    DXPOA39                     80        ///
      str    DXPOA40                     81        ///
      str    DXPOA41                     82        ///
      str    DXPOA42                     83        ///
      str    DXPOA43                     84        ///
      str    DXPOA44                     85        ///
      str    DXPOA45                     86        ///
      str    DXPOA46                     87        ///
      str    DXPOA47                     88        ///
      str    DXPOA48                     89        ///
      str    DXPOA49                     90        ///
      str    DXPOA50                     91        ///
      str    DXPOA51                     92        ///
      str    DXPOA52                     93        ///
      str    DXPOA53                     94        ///
      str    DXPOA54                     95        ///
      str    DXPOA55                     96        ///
      str    DXPOA56                     97        ///
      str    DXPOA57                     98        ///
      str    DXPOA58                     99        ///
      str    DXPOA59                    100        ///
      str    DXPOA60                    101        ///
      str    DXPOA61                    102        ///
      str    DXPOA62                    103        ///
      str    DXPOA63                    104        ///
      str    DXPOA64                    105        ///
      long   DaysToEvent                106- 111   ///
      byte   FEMALE                     112- 113   ///
      byte   HCUP_ED                    114- 115   ///
      byte   HCUP_OS                    116- 117   ///
      byte   HISPANIC                   118- 119   ///
      str    HISPANIC_X                 120        ///
      str    HOSPST                     121- 122   ///
      byte   HospitalUnit               123- 124   ///
      byte   I10_BIRTH                  125- 126   ///
      byte   I10_DELIVERY               127- 128   ///
      str    I10_DX1                    129- 135   ///
      str    I10_DX2                    136- 142   ///
      str    I10_DX3                    143- 149   ///
      str    I10_DX4                    150- 156   ///
      str    I10_DX5                    157- 163   ///
      str    I10_DX6                    164- 170   ///
      str    I10_DX7                    171- 177   ///
      str    I10_DX8                    178- 184   ///
      str    I10_DX9                    185- 191   ///
      str    I10_DX10                   192- 198   ///
      str    I10_DX11                   199- 205   ///
      str    I10_DX12                   206- 212   ///
      str    I10_DX13                   213- 219   ///
      str    I10_DX14                   220- 226   ///
      str    I10_DX15                   227- 233   ///
      str    I10_DX16                   234- 240   ///
      str    I10_DX17                   241- 247   ///
      str    I10_DX18                   248- 254   ///
      str    I10_DX19                   255- 261   ///
      str    I10_DX20                   262- 268   ///
      str    I10_DX21                   269- 275   ///
      str    I10_DX22                   276- 282   ///
      str    I10_DX23                   283- 289   ///
      str    I10_DX24                   290- 296   ///
      str    I10_DX25                   297- 303   ///
      str    I10_DX26                   304- 310   ///
      str    I10_DX27                   311- 317   ///
      str    I10_DX28                   318- 324   ///
      str    I10_DX29                   325- 331   ///
      str    I10_DX30                   332- 338   ///
      str    I10_DX31                   339- 345   ///
      str    I10_DX32                   346- 352   ///
      str    I10_DX33                   353- 359   ///
      str    I10_DX34                   360- 366   ///
      str    I10_DX35                   367- 373   ///
      str    I10_DX36                   374- 380   ///
      str    I10_DX37                   381- 387   ///
      str    I10_DX38                   388- 394   ///
      str    I10_DX39                   395- 401   ///
      str    I10_DX40                   402- 408   ///
      str    I10_DX41                   409- 415   ///
      str    I10_DX42                   416- 422   ///
      str    I10_DX43                   423- 429   ///
      str    I10_DX44                   430- 436   ///
      str    I10_DX45                   437- 443   ///
      str    I10_DX46                   444- 450   ///
      str    I10_DX47                   451- 457   ///
      str    I10_DX48                   458- 464   ///
      str    I10_DX49                   465- 471   ///
      str    I10_DX50                   472- 478   ///
      str    I10_DX51                   479- 485   ///
      str    I10_DX52                   486- 492   ///
      str    I10_DX53                   493- 499   ///
      str    I10_DX54                   500- 506   ///
      str    I10_DX55                   507- 513   ///
      str    I10_DX56                   514- 520   ///
      str    I10_DX57                   521- 527   ///
      str    I10_DX58                   528- 534   ///
      str    I10_DX59                   535- 541   ///
      str    I10_DX60                   542- 548   ///
      str    I10_DX61                   549- 555   ///
      str    I10_DX62                   556- 562   ///
      str    I10_DX63                   563- 569   ///
      str    I10_DX64                   570- 576   ///
      str    I10_DX_Admitting           577- 583   ///
      int    I10_NDX                    584- 586   ///
      int    I10_NPR                    587- 589   ///
      byte   I10_ORPROC                 590- 591   ///
      str    I10_PR1                    592- 598   ///
      str    I10_PR2                    599- 605   ///
      str    I10_PR3                    606- 612   ///
      str    I10_PR4                    613- 619   ///
      str    I10_PR5                    620- 626   ///
      str    I10_PR6                    627- 633   ///
      str    I10_PR7                    634- 640   ///
      str    I10_PR8                    641- 647   ///
      str    I10_PR9                    648- 654   ///
      str    I10_PR10                   655- 661   ///
      str    I10_PR11                   662- 668   ///
      str    I10_PR12                   669- 675   ///
      str    I10_PR13                   676- 682   ///
      str    I10_PR14                   683- 689   ///
      str    I10_PR15                   690- 696   ///
      str    I10_PR16                   697- 703   ///
      str    I10_PR17                   704- 710   ///
      str    I10_PR18                   711- 717   ///
      str    I10_PR19                   718- 724   ///
      str    I10_PR20                   725- 731   ///
      str    I10_PR21                   732- 738   ///
      str    I10_PR22                   739- 745   ///
      str    I10_PR23                   746- 752   ///
      str    I10_PR24                   753- 759   ///
      str    I10_PR25                   760- 766   ///
      str    I10_PR26                   767- 773   ///
      str    I10_PR27                   774- 780   ///
      str    I10_PR28                   781- 787   ///
      str    I10_PR29                   788- 794   ///
      str    I10_PR30                   795- 801   ///
      str    I10_PR31                   802- 808   ///
      str    I10_PR32                   809- 815   ///
      str    I10_PR33                   816- 822   ///
      str    I10_PR34                   823- 829   ///
      str    I10_PR35                   830- 836   ///
      str    I10_PR36                   837- 843   ///
      str    I10_PR37                   844- 850   ///
      str    I10_PR38                   851- 857   ///
      str    I10_PR39                   858- 864   ///
      str    I10_PR40                   865- 871   ///
      str    I10_PR41                   872- 878   ///
      str    I10_PR42                   879- 885   ///
      str    I10_PR43                   886- 892   ///
      str    I10_PR44                   893- 899   ///
      str    I10_PR45                   900- 906   ///
      str    I10_PR46                   907- 913   ///
      str    I10_PR47                   914- 920   ///
      str    I10_PR48                   921- 927   ///
      str    I10_PR49                   928- 934   ///
      str    I10_PR50                   935- 941   ///
      str    I10_PR51                   942- 948   ///
      str    I10_PR52                   949- 955   ///
      str    I10_PR53                   956- 962   ///
      str    I10_PR54                   963- 969   ///
      str    I10_PR55                   970- 976   ///
      str    I10_PR56                   977- 983   ///
      str    I10_PR57                   984- 990   ///
      str    I10_PR58                   991- 997   ///
      str    I10_PR59                   998-1004   ///
      str    I10_PR60                  1005-1011   ///
      str    I10_PR61                  1012-1018   ///
      int    I10_PROCTYPE              1019-1021   ///
      byte   I10_SERVICELINE           1022-1023   ///
      double KEY                       1024-1038   ///
      long   LOS                       1039-1043   ///
      long   LOS_X                     1044-1049   ///
      byte   MDC                       1050-1051   ///
      byte   MDC_NoPOA                 1052-1053   ///
      long   MDNUM1_R                  1054-1062   ///
      long   MDNUM2_R                  1063-1071   ///
      long   MDNUM3_R                  1072-1080   ///
      byte   MEDINCSTQ                 1081-1082   ///
      long   MRN_R                     1083-1091   ///
      str    P7EDSRC_X                 1092-1093   ///
      byte   PAY1                      1094-1095   ///
      str    PAY1_X                    1096-1099   ///
      byte   PAY2                      1100-1101   ///
      str    PAY2_X                    1102-1105   ///
      byte   PAY3                      1106-1107   ///
      str    PAY3_X                    1108-1111   ///
      int    PL_CBSA                   1112-1114   ///
      byte   PL_NCHS                   1115-1116   ///
      byte   PL_RUCC                   1117-1118   ///
      byte   PL_UIC                    1119-1120   ///
      byte   PL_UR_CAT4                1121-1122   ///
      byte   POA_Disch_Edit1           1123-1124   ///
      byte   POA_Disch_Edit2           1125-1126   ///
      byte   POA_Hosp_Edit1            1127-1128   ///
      byte   POA_Hosp_Edit2            1129-1130   ///
      byte   POA_Hosp_Edit3            1131-1132   ///
      double POA_Hosp_Edit3_Value      1133-1140   ///
      long   PRDAY1                    1141-1145   ///
      long   PRDAY2                    1146-1150   ///
      long   PRDAY3                    1151-1155   ///
      long   PRDAY4                    1156-1160   ///
      long   PRDAY5                    1161-1165   ///
      long   PRDAY6                    1166-1170   ///
      long   PRDAY7                    1171-1175   ///
      long   PRDAY8                    1176-1180   ///
      long   PRDAY9                    1181-1185   ///
      long   PRDAY10                   1186-1190   ///
      long   PRDAY11                   1191-1195   ///
      long   PRDAY12                   1196-1200   ///
      long   PRDAY13                   1201-1205   ///
      long   PRDAY14                   1206-1210   ///
      long   PRDAY15                   1211-1215   ///
      long   PRDAY16                   1216-1220   ///
      long   PRDAY17                   1221-1225   ///
      long   PRDAY18                   1226-1230   ///
      long   PRDAY19                   1231-1235   ///
      long   PRDAY20                   1236-1240   ///
      long   PRDAY21                   1241-1245   ///
      long   PRDAY22                   1246-1250   ///
      long   PRDAY23                   1251-1255   ///
      long   PRDAY24                   1256-1260   ///
      long   PRDAY25                   1261-1265   ///
      long   PRDAY26                   1266-1270   ///
      long   PRDAY27                   1271-1275   ///
      long   PRDAY28                   1276-1280   ///
      long   PRDAY29                   1281-1285   ///
      long   PRDAY30                   1286-1290   ///
      long   PRDAY31                   1291-1295   ///
      long   PRDAY32                   1296-1300   ///
      long   PRDAY33                   1301-1305   ///
      long   PRDAY34                   1306-1310   ///
      long   PRDAY35                   1311-1315   ///
      long   PRDAY36                   1316-1320   ///
      long   PRDAY37                   1321-1325   ///
      long   PRDAY38                   1326-1330   ///
      long   PRDAY39                   1331-1335   ///
      long   PRDAY40                   1336-1340   ///
      long   PRDAY41                   1341-1345   ///
      long   PRDAY42                   1346-1350   ///
      long   PRDAY43                   1351-1355   ///
      long   PRDAY44                   1356-1360   ///
      long   PRDAY45                   1361-1365   ///
      long   PRDAY46                   1366-1370   ///
      long   PRDAY47                   1371-1375   ///
      long   PRDAY48                   1376-1380   ///
      long   PRDAY49                   1381-1385   ///
      long   PRDAY50                   1386-1390   ///
      long   PRDAY51                   1391-1395   ///
      long   PRDAY52                   1396-1400   ///
      long   PRDAY53                   1401-1405   ///
      long   PRDAY54                   1406-1410   ///
      long   PRDAY55                   1411-1415   ///
      long   PRDAY56                   1416-1420   ///
      long   PRDAY57                   1421-1425   ///
      long   PRDAY58                   1426-1430   ///
      long   PRDAY59                   1431-1435   ///
      long   PRDAY60                   1436-1440   ///
      long   PRDAY61                   1441-1445   ///
      str    PSTATE                    1446-1447   ///
      str    PSTATE_GEO                1448-1449   ///
      long   PSTCO                     1450-1454   ///
      long   PSTCO_GEO                 1455-1459   ///
      str    PointOfOriginUB04         1460        ///
      str    PointOfOrigin_X           1461        ///
      str    PrimLang                  1462-1464   ///
      byte   RACE                      1465-1466   ///
      byte   RACE_EDIT                 1467-1468   ///
      str    RACE_X                    1469-1472   ///
      double TOTCHG                    1473-1482   ///
      double TOTCHG_X                  1483-1497   ///
      byte   TRAN_IN                   1498-1499   ///
      byte   TRAN_OUT                  1500-1501   ///
      long   VisitLink                 1502-1510   ///
      int    YEAR                      1511-1514   ///
      str    ZIP                       1515-1519   ///
      str    ZIP3                      1520-1522   ///
      int    ZIPINC_QRTL               1523-1525   ///
      int    AYEAR                     1526-1529   ///
      byte   BMONTH                    1530-1531   ///
      int    BYEAR                     1532-1535   ///
      byte   PRMONTH1                  1536-1537   ///
      byte   PRMONTH2                  1538-1539   ///
      byte   PRMONTH3                  1540-1541   ///
      byte   PRMONTH4                  1542-1543   ///
      byte   PRMONTH5                  1544-1545   ///
      byte   PRMONTH6                  1546-1547   ///
      byte   PRMONTH7                  1548-1549   ///
      byte   PRMONTH8                  1550-1551   ///
      byte   PRMONTH9                  1552-1553   ///
      byte   PRMONTH10                 1554-1555   ///
      byte   PRMONTH11                 1556-1557   ///
      byte   PRMONTH12                 1558-1559   ///
      byte   PRMONTH13                 1560-1561   ///
      byte   PRMONTH14                 1562-1563   ///
      byte   PRMONTH15                 1564-1565   ///
      byte   PRMONTH16                 1566-1567   ///
      byte   PRMONTH17                 1568-1569   ///
      byte   PRMONTH18                 1570-1571   ///
      byte   PRMONTH19                 1572-1573   ///
      byte   PRMONTH20                 1574-1575   ///
      byte   PRMONTH21                 1576-1577   ///
      byte   PRMONTH22                 1578-1579   ///
      byte   PRMONTH23                 1580-1581   ///
      byte   PRMONTH24                 1582-1583   ///
      byte   PRMONTH25                 1584-1585   ///
      byte   PRMONTH26                 1586-1587   ///
      byte   PRMONTH27                 1588-1589   ///
      byte   PRMONTH28                 1590-1591   ///
      byte   PRMONTH29                 1592-1593   ///
      byte   PRMONTH30                 1594-1595   ///
      byte   PRMONTH31                 1596-1597   ///
      byte   PRMONTH32                 1598-1599   ///
      byte   PRMONTH33                 1600-1601   ///
      byte   PRMONTH34                 1602-1603   ///
      byte   PRMONTH35                 1604-1605   ///
      byte   PRMONTH36                 1606-1607   ///
      byte   PRMONTH37                 1608-1609   ///
      byte   PRMONTH38                 1610-1611   ///
      byte   PRMONTH39                 1612-1613   ///
      byte   PRMONTH40                 1614-1615   ///
      byte   PRMONTH41                 1616-1617   ///
      byte   PRMONTH42                 1618-1619   ///
      byte   PRMONTH43                 1620-1621   ///
      byte   PRMONTH44                 1622-1623   ///
      byte   PRMONTH45                 1624-1625   ///
      byte   PRMONTH46                 1626-1627   ///
      byte   PRMONTH47                 1628-1629   ///
      byte   PRMONTH48                 1630-1631   ///
      byte   PRMONTH49                 1632-1633   ///
      byte   PRMONTH50                 1634-1635   ///
      byte   PRMONTH51                 1636-1637   ///
      byte   PRMONTH52                 1638-1639   ///
      byte   PRMONTH53                 1640-1641   ///
      byte   PRMONTH54                 1642-1643   ///
      byte   PRMONTH55                 1644-1645   ///
      byte   PRMONTH56                 1646-1647   ///
      byte   PRMONTH57                 1648-1649   ///
      byte   PRMONTH58                 1650-1651   ///
      byte   PRMONTH59                 1652-1653   ///
      byte   PRMONTH60                 1654-1655   ///
      byte   PRMONTH61                 1656-1657   ///
      int    PRYEAR1                   1658-1661   ///
      int    PRYEAR2                   1662-1665   ///
      int    PRYEAR3                   1666-1669   ///
      int    PRYEAR4                   1670-1673   ///
      int    PRYEAR5                   1674-1677   ///
      int    PRYEAR6                   1678-1681   ///
      int    PRYEAR7                   1682-1685   ///
      int    PRYEAR8                   1686-1689   ///
      int    PRYEAR9                   1690-1693   ///
      int    PRYEAR10                  1694-1697   ///
      int    PRYEAR11                  1698-1701   ///
      int    PRYEAR12                  1702-1705   ///
      int    PRYEAR13                  1706-1709   ///
      int    PRYEAR14                  1710-1713   ///
      int    PRYEAR15                  1714-1717   ///
      int    PRYEAR16                  1718-1721   ///
      int    PRYEAR17                  1722-1725   ///
      int    PRYEAR18                  1726-1729   ///
      int    PRYEAR19                  1730-1733   ///
      int    PRYEAR20                  1734-1737   ///
      int    PRYEAR21                  1738-1741   ///
      int    PRYEAR22                  1742-1745   ///
      int    PRYEAR23                  1746-1749   ///
      int    PRYEAR24                  1750-1753   ///
      int    PRYEAR25                  1754-1757   ///
      int    PRYEAR26                  1758-1761   ///
      int    PRYEAR27                  1762-1765   ///
      int    PRYEAR28                  1766-1769   ///
      int    PRYEAR29                  1770-1773   ///
      int    PRYEAR30                  1774-1777   ///
      int    PRYEAR31                  1778-1781   ///
      int    PRYEAR32                  1782-1785   ///
      int    PRYEAR33                  1786-1789   ///
      int    PRYEAR34                  1790-1793   ///
      int    PRYEAR35                  1794-1797   ///
      int    PRYEAR36                  1798-1801   ///
      int    PRYEAR37                  1802-1805   ///
      int    PRYEAR38                  1806-1809   ///
      int    PRYEAR39                  1810-1813   ///
      int    PRYEAR40                  1814-1817   ///
      int    PRYEAR41                  1818-1821   ///
      int    PRYEAR42                  1822-1825   ///
      int    PRYEAR43                  1826-1829   ///
      int    PRYEAR44                  1830-1833   ///
      int    PRYEAR45                  1834-1837   ///
      int    PRYEAR46                  1838-1841   ///
      int    PRYEAR47                  1842-1845   ///
      int    PRYEAR48                  1846-1849   ///
      int    PRYEAR49                  1850-1853   ///
      int    PRYEAR50                  1854-1857   ///
      int    PRYEAR51                  1858-1861   ///
      int    PRYEAR52                  1862-1865   ///
      int    PRYEAR53                  1866-1869   ///
      int    PRYEAR54                  1870-1873   ///
      int    PRYEAR55                  1874-1877   ///
      int    PRYEAR56                  1878-1881   ///
      int    PRYEAR57                  1882-1885   ///
      int    PRYEAR58                  1886-1889   ///
      int    PRYEAR59                  1890-1893   ///
      int    PRYEAR60                  1894-1897   ///
      int    PRYEAR61                  1898-1901   ///
      using  "IA_SID_2019_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
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
label var DaysToEvent              "Days from 'start date' to admission"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPST                   "Hospital state postal code"
label var HospitalUnit             "Patient was discharged from a special unit within an acute care hospital (reported by source)"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
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
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO                    "Patient state/county FIPS code"
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
label var VisitLink                "Visit linkage variable"
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

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
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
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
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
recode PSTCO                     (-9999 -8888 -6666=.)
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

save "IA_SID_2019_CORE.dta", replace
