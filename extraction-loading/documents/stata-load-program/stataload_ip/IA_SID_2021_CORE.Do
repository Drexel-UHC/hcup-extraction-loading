/*****************************************************************************
* Creation Date: 05/17/2022   
* IA_SID_2021_CORE.Do
* This program will load the 2021 IA ASCII CORE File into Stata.
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
      long   DaysToEvent                 20-  25   ///
      byte   DIED                        26-  27   ///
      str    DISP_X                      28-  29   ///
      byte   DISPUB04                    30-  31   ///
      byte   DISPUNIFORM                 32-  33   ///
      byte   DMONTH                      34-  35   ///
      byte   DQTR                        36-  37   ///
      int    DRG                         38-  40   ///
      int    DRG_NoPOA                   41-  43   ///
      byte   DRGVER                      44-  45   ///
      str    DXPOA1                      46        ///
      str    DXPOA2                      47        ///
      str    DXPOA3                      48        ///
      str    DXPOA4                      49        ///
      str    DXPOA5                      50        ///
      str    DXPOA6                      51        ///
      str    DXPOA7                      52        ///
      str    DXPOA8                      53        ///
      str    DXPOA9                      54        ///
      str    DXPOA10                     55        ///
      str    DXPOA11                     56        ///
      str    DXPOA12                     57        ///
      str    DXPOA13                     58        ///
      str    DXPOA14                     59        ///
      str    DXPOA15                     60        ///
      str    DXPOA16                     61        ///
      str    DXPOA17                     62        ///
      str    DXPOA18                     63        ///
      str    DXPOA19                     64        ///
      str    DXPOA20                     65        ///
      str    DXPOA21                     66        ///
      str    DXPOA22                     67        ///
      str    DXPOA23                     68        ///
      str    DXPOA24                     69        ///
      str    DXPOA25                     70        ///
      str    DXPOA26                     71        ///
      str    DXPOA27                     72        ///
      str    DXPOA28                     73        ///
      str    DXPOA29                     74        ///
      str    DXPOA30                     75        ///
      str    DXPOA31                     76        ///
      str    DXPOA32                     77        ///
      str    DXPOA33                     78        ///
      str    DXPOA34                     79        ///
      str    DXPOA35                     80        ///
      str    DXPOA36                     81        ///
      str    DXPOA37                     82        ///
      str    DXPOA38                     83        ///
      str    DXPOA39                     84        ///
      str    DXPOA40                     85        ///
      str    DXPOA41                     86        ///
      str    DXPOA42                     87        ///
      str    DXPOA43                     88        ///
      str    DXPOA44                     89        ///
      str    DXPOA45                     90        ///
      str    DXPOA46                     91        ///
      str    DXPOA47                     92        ///
      str    DXPOA48                     93        ///
      str    DXPOA49                     94        ///
      str    DXPOA50                     95        ///
      str    DXPOA51                     96        ///
      str    DXPOA52                     97        ///
      str    DXPOA53                     98        ///
      str    DXPOA54                     99        ///
      str    DXPOA55                    100        ///
      str    DXPOA56                    101        ///
      str    DXPOA57                    102        ///
      str    DXPOA58                    103        ///
      str    DXPOA59                    104        ///
      str    DXPOA60                    105        ///
      str    DXPOA61                    106        ///
      str    DXPOA62                    107        ///
      str    DXPOA63                    108        ///
      str    DXPOA64                    109        ///
      byte   FEMALE                     110- 111   ///
      byte   HCUP_ED                    112- 113   ///
      byte   HCUP_OS                    114- 115   ///
      byte   HISPANIC                   116- 117   ///
      str    HISPANIC_X                 118        ///
      byte   HospitalUnit               119- 120   ///
      str    HOSPST                     121- 122   ///
      int    I10_BIRTH                  123- 125   ///
      int    I10_DELIVERY               126- 128   ///
      str    I10_DX_Admitting           129- 135   ///
      str    I10_DX1                    136- 142   ///
      str    I10_DX2                    143- 149   ///
      str    I10_DX3                    150- 156   ///
      str    I10_DX4                    157- 163   ///
      str    I10_DX5                    164- 170   ///
      str    I10_DX6                    171- 177   ///
      str    I10_DX7                    178- 184   ///
      str    I10_DX8                    185- 191   ///
      str    I10_DX9                    192- 198   ///
      str    I10_DX10                   199- 205   ///
      str    I10_DX11                   206- 212   ///
      str    I10_DX12                   213- 219   ///
      str    I10_DX13                   220- 226   ///
      str    I10_DX14                   227- 233   ///
      str    I10_DX15                   234- 240   ///
      str    I10_DX16                   241- 247   ///
      str    I10_DX17                   248- 254   ///
      str    I10_DX18                   255- 261   ///
      str    I10_DX19                   262- 268   ///
      str    I10_DX20                   269- 275   ///
      str    I10_DX21                   276- 282   ///
      str    I10_DX22                   283- 289   ///
      str    I10_DX23                   290- 296   ///
      str    I10_DX24                   297- 303   ///
      str    I10_DX25                   304- 310   ///
      str    I10_DX26                   311- 317   ///
      str    I10_DX27                   318- 324   ///
      str    I10_DX28                   325- 331   ///
      str    I10_DX29                   332- 338   ///
      str    I10_DX30                   339- 345   ///
      str    I10_DX31                   346- 352   ///
      str    I10_DX32                   353- 359   ///
      str    I10_DX33                   360- 366   ///
      str    I10_DX34                   367- 373   ///
      str    I10_DX35                   374- 380   ///
      str    I10_DX36                   381- 387   ///
      str    I10_DX37                   388- 394   ///
      str    I10_DX38                   395- 401   ///
      str    I10_DX39                   402- 408   ///
      str    I10_DX40                   409- 415   ///
      str    I10_DX41                   416- 422   ///
      str    I10_DX42                   423- 429   ///
      str    I10_DX43                   430- 436   ///
      str    I10_DX44                   437- 443   ///
      str    I10_DX45                   444- 450   ///
      str    I10_DX46                   451- 457   ///
      str    I10_DX47                   458- 464   ///
      str    I10_DX48                   465- 471   ///
      str    I10_DX49                   472- 478   ///
      str    I10_DX50                   479- 485   ///
      str    I10_DX51                   486- 492   ///
      str    I10_DX52                   493- 499   ///
      str    I10_DX53                   500- 506   ///
      str    I10_DX54                   507- 513   ///
      str    I10_DX55                   514- 520   ///
      str    I10_DX56                   521- 527   ///
      str    I10_DX57                   528- 534   ///
      str    I10_DX58                   535- 541   ///
      str    I10_DX59                   542- 548   ///
      str    I10_DX60                   549- 555   ///
      str    I10_DX61                   556- 562   ///
      str    I10_DX62                   563- 569   ///
      str    I10_DX63                   570- 576   ///
      str    I10_DX64                   577- 583   ///
      int    I10_NDX                    584- 586   ///
      int    I10_NPR                    587- 589   ///
      str    I10_PR1                    590- 596   ///
      str    I10_PR2                    597- 603   ///
      str    I10_PR3                    604- 610   ///
      str    I10_PR4                    611- 617   ///
      str    I10_PR5                    618- 624   ///
      str    I10_PR6                    625- 631   ///
      str    I10_PR7                    632- 638   ///
      str    I10_PR8                    639- 645   ///
      str    I10_PR9                    646- 652   ///
      str    I10_PR10                   653- 659   ///
      str    I10_PR11                   660- 666   ///
      str    I10_PR12                   667- 673   ///
      str    I10_PR13                   674- 680   ///
      str    I10_PR14                   681- 687   ///
      str    I10_PR15                   688- 694   ///
      str    I10_PR16                   695- 701   ///
      str    I10_PR17                   702- 708   ///
      str    I10_PR18                   709- 715   ///
      str    I10_PR19                   716- 722   ///
      str    I10_PR20                   723- 729   ///
      str    I10_PR21                   730- 736   ///
      str    I10_PR22                   737- 743   ///
      str    I10_PR23                   744- 750   ///
      str    I10_PR24                   751- 757   ///
      str    I10_PR25                   758- 764   ///
      str    I10_PR26                   765- 771   ///
      str    I10_PR27                   772- 778   ///
      str    I10_PR28                   779- 785   ///
      str    I10_PR29                   786- 792   ///
      str    I10_PR30                   793- 799   ///
      str    I10_PR31                   800- 806   ///
      str    I10_PR32                   807- 813   ///
      str    I10_PR33                   814- 820   ///
      str    I10_PR34                   821- 827   ///
      str    I10_PR35                   828- 834   ///
      str    I10_PR36                   835- 841   ///
      str    I10_PR37                   842- 848   ///
      str    I10_PR38                   849- 855   ///
      str    I10_PR39                   856- 862   ///
      str    I10_PR40                   863- 869   ///
      str    I10_PR41                   870- 876   ///
      str    I10_PR42                   877- 883   ///
      str    I10_PR43                   884- 890   ///
      str    I10_PR44                   891- 897   ///
      str    I10_PR45                   898- 904   ///
      str    I10_PR46                   905- 911   ///
      str    I10_PR47                   912- 918   ///
      str    I10_PR48                   919- 925   ///
      str    I10_PR49                   926- 932   ///
      str    I10_PR50                   933- 939   ///
      str    I10_PR51                   940- 946   ///
      str    I10_PR52                   947- 953   ///
      str    I10_PR53                   954- 960   ///
      str    I10_PR54                   961- 967   ///
      str    I10_PR55                   968- 974   ///
      str    I10_PR56                   975- 981   ///
      str    I10_PR57                   982- 988   ///
      str    I10_PR58                   989- 995   ///
      str    I10_PR59                   996-1002   ///
      str    I10_PR60                  1003-1009   ///
      str    I10_PR61                  1010-1016   ///
      int    I10_PROCTYPE              1017-1019   ///
      byte   I10_SERVICELINE           1020-1021   ///
      double KEY                       1022-1036   ///
      long   LOS                       1037-1041   ///
      long   LOS_X                     1042-1047   ///
      byte   MDC                       1048-1049   ///
      byte   MDC_NoPOA                 1050-1051   ///
      long   MDNUM1_R                  1052-1060   ///
      long   MDNUM2_R                  1061-1069   ///
      long   MDNUM3_R                  1070-1078   ///
      byte   MEDINCSTQ                 1079-1080   ///
      long   MRN_R                     1081-1089   ///
      str    P7EDSRC_X                 1090-1091   ///
      byte   PAY1                      1092-1093   ///
      str    PAY1_X                    1094-1097   ///
      byte   PAY2                      1098-1099   ///
      str    PAY2_X                    1100-1103   ///
      byte   PAY3                      1104-1105   ///
      str    PAY3_X                    1106-1109   ///
      byte   PCLASS_ORPROC             1110-1111   ///
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
      str    PointOfOrigin_X           1141        ///
      str    PointOfOriginUB04         1142        ///
      long   PRDAY1                    1143-1147   ///
      long   PRDAY2                    1148-1152   ///
      long   PRDAY3                    1153-1157   ///
      long   PRDAY4                    1158-1162   ///
      long   PRDAY5                    1163-1167   ///
      long   PRDAY6                    1168-1172   ///
      long   PRDAY7                    1173-1177   ///
      long   PRDAY8                    1178-1182   ///
      long   PRDAY9                    1183-1187   ///
      long   PRDAY10                   1188-1192   ///
      long   PRDAY11                   1193-1197   ///
      long   PRDAY12                   1198-1202   ///
      long   PRDAY13                   1203-1207   ///
      long   PRDAY14                   1208-1212   ///
      long   PRDAY15                   1213-1217   ///
      long   PRDAY16                   1218-1222   ///
      long   PRDAY17                   1223-1227   ///
      long   PRDAY18                   1228-1232   ///
      long   PRDAY19                   1233-1237   ///
      long   PRDAY20                   1238-1242   ///
      long   PRDAY21                   1243-1247   ///
      long   PRDAY22                   1248-1252   ///
      long   PRDAY23                   1253-1257   ///
      long   PRDAY24                   1258-1262   ///
      long   PRDAY25                   1263-1267   ///
      long   PRDAY26                   1268-1272   ///
      long   PRDAY27                   1273-1277   ///
      long   PRDAY28                   1278-1282   ///
      long   PRDAY29                   1283-1287   ///
      long   PRDAY30                   1288-1292   ///
      long   PRDAY31                   1293-1297   ///
      long   PRDAY32                   1298-1302   ///
      long   PRDAY33                   1303-1307   ///
      long   PRDAY34                   1308-1312   ///
      long   PRDAY35                   1313-1317   ///
      long   PRDAY36                   1318-1322   ///
      long   PRDAY37                   1323-1327   ///
      long   PRDAY38                   1328-1332   ///
      long   PRDAY39                   1333-1337   ///
      long   PRDAY40                   1338-1342   ///
      long   PRDAY41                   1343-1347   ///
      long   PRDAY42                   1348-1352   ///
      long   PRDAY43                   1353-1357   ///
      long   PRDAY44                   1358-1362   ///
      long   PRDAY45                   1363-1367   ///
      long   PRDAY46                   1368-1372   ///
      long   PRDAY47                   1373-1377   ///
      long   PRDAY48                   1378-1382   ///
      long   PRDAY49                   1383-1387   ///
      long   PRDAY50                   1388-1392   ///
      long   PRDAY51                   1393-1397   ///
      long   PRDAY52                   1398-1402   ///
      long   PRDAY53                   1403-1407   ///
      long   PRDAY54                   1408-1412   ///
      long   PRDAY55                   1413-1417   ///
      long   PRDAY56                   1418-1422   ///
      long   PRDAY57                   1423-1427   ///
      long   PRDAY58                   1428-1432   ///
      long   PRDAY59                   1433-1437   ///
      long   PRDAY60                   1438-1442   ///
      long   PRDAY61                   1443-1447   ///
      str    PrimLang                  1448-1450   ///
      str    PSTATE                    1451-1452   ///
      str    PSTATE_GEO                1453-1454   ///
      long   PSTCO                     1455-1459   ///
      long   PSTCO_GEO                 1460-1464   ///
      byte   RACE                      1465-1466   ///
      float  RACE_PCT_MISS_HOSP        1467-1473   ///
      str    RACE_X                    1474-1477   ///
      double TOTCHG                    1478-1487   ///
      double TOTCHG_X                  1488-1502   ///
      byte   TRAN_IN                   1503-1504   ///
      byte   TRAN_OUT                  1505-1506   ///
      long   VisitLink                 1507-1515   ///
      int    YEAR                      1516-1519   ///
      str    ZIP                       1520-1524   ///
      str    ZIP3                      1525-1527   ///
      int    ZIPINC_QRTL               1528-1530   ///
      int    AYEAR                     1531-1534   ///
      byte   BMONTH                    1535-1536   ///
      int    BYEAR                     1537-1540   ///
      byte   PRMONTH1                  1541-1542   ///
      byte   PRMONTH2                  1543-1544   ///
      byte   PRMONTH3                  1545-1546   ///
      byte   PRMONTH4                  1547-1548   ///
      byte   PRMONTH5                  1549-1550   ///
      byte   PRMONTH6                  1551-1552   ///
      byte   PRMONTH7                  1553-1554   ///
      byte   PRMONTH8                  1555-1556   ///
      byte   PRMONTH9                  1557-1558   ///
      byte   PRMONTH10                 1559-1560   ///
      byte   PRMONTH11                 1561-1562   ///
      byte   PRMONTH12                 1563-1564   ///
      byte   PRMONTH13                 1565-1566   ///
      byte   PRMONTH14                 1567-1568   ///
      byte   PRMONTH15                 1569-1570   ///
      byte   PRMONTH16                 1571-1572   ///
      byte   PRMONTH17                 1573-1574   ///
      byte   PRMONTH18                 1575-1576   ///
      byte   PRMONTH19                 1577-1578   ///
      byte   PRMONTH20                 1579-1580   ///
      byte   PRMONTH21                 1581-1582   ///
      byte   PRMONTH22                 1583-1584   ///
      byte   PRMONTH23                 1585-1586   ///
      byte   PRMONTH24                 1587-1588   ///
      byte   PRMONTH25                 1589-1590   ///
      byte   PRMONTH26                 1591-1592   ///
      byte   PRMONTH27                 1593-1594   ///
      byte   PRMONTH28                 1595-1596   ///
      byte   PRMONTH29                 1597-1598   ///
      byte   PRMONTH30                 1599-1600   ///
      byte   PRMONTH31                 1601-1602   ///
      byte   PRMONTH32                 1603-1604   ///
      byte   PRMONTH33                 1605-1606   ///
      byte   PRMONTH34                 1607-1608   ///
      byte   PRMONTH35                 1609-1610   ///
      byte   PRMONTH36                 1611-1612   ///
      byte   PRMONTH37                 1613-1614   ///
      byte   PRMONTH38                 1615-1616   ///
      byte   PRMONTH39                 1617-1618   ///
      byte   PRMONTH40                 1619-1620   ///
      byte   PRMONTH41                 1621-1622   ///
      byte   PRMONTH42                 1623-1624   ///
      int    PRYEAR1                   1625-1628   ///
      int    PRYEAR2                   1629-1632   ///
      int    PRYEAR3                   1633-1636   ///
      int    PRYEAR4                   1637-1640   ///
      int    PRYEAR5                   1641-1644   ///
      int    PRYEAR6                   1645-1648   ///
      int    PRYEAR7                   1649-1652   ///
      int    PRYEAR8                   1653-1656   ///
      int    PRYEAR9                   1657-1660   ///
      int    PRYEAR10                  1661-1664   ///
      int    PRYEAR11                  1665-1668   ///
      int    PRYEAR12                  1669-1672   ///
      int    PRYEAR13                  1673-1676   ///
      int    PRYEAR14                  1677-1680   ///
      int    PRYEAR15                  1681-1684   ///
      int    PRYEAR16                  1685-1688   ///
      int    PRYEAR17                  1689-1692   ///
      int    PRYEAR18                  1693-1696   ///
      int    PRYEAR19                  1697-1700   ///
      int    PRYEAR20                  1701-1704   ///
      int    PRYEAR21                  1705-1708   ///
      int    PRYEAR22                  1709-1712   ///
      int    PRYEAR23                  1713-1716   ///
      int    PRYEAR24                  1717-1720   ///
      int    PRYEAR25                  1721-1724   ///
      int    PRYEAR26                  1725-1728   ///
      int    PRYEAR27                  1729-1732   ///
      int    PRYEAR28                  1733-1736   ///
      int    PRYEAR29                  1737-1740   ///
      int    PRYEAR30                  1741-1744   ///
      int    PRYEAR31                  1745-1748   ///
      int    PRYEAR32                  1749-1752   ///
      int    PRYEAR33                  1753-1756   ///
      int    PRYEAR34                  1757-1760   ///
      int    PRYEAR35                  1761-1764   ///
      int    PRYEAR36                  1765-1768   ///
      int    PRYEAR37                  1769-1772   ///
      int    PRYEAR38                  1773-1776   ///
      int    PRYEAR39                  1777-1780   ///
      int    PRYEAR40                  1781-1784   ///
      int    PRYEAR41                  1785-1788   ///
      int    PRYEAR42                  1789-1792   ///
      using  "IA_SID_2021_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
label var DaysToEvent              "Days from 'start date' to admission"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HospitalUnit             "Patient was discharged from a special unit within an acute care hospital (reported by source)"
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
label var PCLASS_ORPROC            "Indicates operating room (major diagnostic or therapeutic) procedure on the record"
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
label var PrimLang                 "Primary language of patient"
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
label var RACE                     "Race (uniform)"
label var RACE_PCT_MISS_HOSP       "Hospital percentage of missing or invalid race values"
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

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
recode I10_BIRTH                 (-99 -88 -66=.)
recode I10_DELIVERY              (-99 -88 -66=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
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
recode PCLASS_ORPROC             (-9 -8 -6 -5=.)
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
recode RACE_PCT_MISS_HOSP        (-999.99 -888.88 -666.66=.)
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

save "IA_SID_2021_CORE.dta", replace
