/*****************************************************************************
* Creation Date: 09/19/2022   
* MD_SID_2021_CORE.Do
* This program will load the 2021 MD ASCII CORE File into Stata.
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
      byte   ATYPE                       10-  11   ///
      byte   AWEEKEND                    12-  13   ///
      int    BWT                         14-  17   ///
      int    DaysBurnUnit                18-  20   ///
      int    DaysCCU                     21-  23   ///
      int    DaysICU                     24-  26   ///
      int    DaysNICU                    27-  29   ///
      int    DaysPICU                    30-  32   ///
      int    DaysShockUnit               33-  35   ///
      long   DaysToEvent                 36-  41   ///
      byte   DIED                        42-  43   ///
      str    DISP_X                      44-  45   ///
      byte   DISPUB04                    46-  47   ///
      byte   DISPUNIFORM                 48-  49   ///
      byte   DQTR                        50-  51   ///
      int    DRG                         52-  54   ///
      int    DRG_NoPOA                   55-  57   ///
      byte   DRGVER                      58-  59   ///
      str    DSHOSPID                    60-  76   ///
      str    DXPOA1                      77        ///
      str    DXPOA2                      78        ///
      str    DXPOA3                      79        ///
      str    DXPOA4                      80        ///
      str    DXPOA5                      81        ///
      str    DXPOA6                      82        ///
      str    DXPOA7                      83        ///
      str    DXPOA8                      84        ///
      str    DXPOA9                      85        ///
      str    DXPOA10                     86        ///
      str    DXPOA11                     87        ///
      str    DXPOA12                     88        ///
      str    DXPOA13                     89        ///
      str    DXPOA14                     90        ///
      str    DXPOA15                     91        ///
      str    DXPOA16                     92        ///
      str    DXPOA17                     93        ///
      str    DXPOA18                     94        ///
      str    DXPOA19                     95        ///
      str    DXPOA20                     96        ///
      str    DXPOA21                     97        ///
      str    DXPOA22                     98        ///
      str    DXPOA23                     99        ///
      str    DXPOA24                    100        ///
      str    DXPOA25                    101        ///
      str    DXPOA26                    102        ///
      str    DXPOA27                    103        ///
      str    DXPOA28                    104        ///
      str    DXPOA29                    105        ///
      str    DXPOA30                    106        ///
      str    DXPOA31                    107        ///
      str    DXPOA32                    108        ///
      str    DXPOA33                    109        ///
      str    DXPOA34                    110        ///
      str    DXPOA35                    111        ///
      str    DXPOA36                    112        ///
      str    DXPOA37                    113        ///
      str    DXPOA38                    114        ///
      str    DXPOA39                    115        ///
      str    DXPOA40                    116        ///
      str    DXPOA41                    117        ///
      str    DXPOA42                    118        ///
      str    DXPOA43                    119        ///
      str    DXPOA44                    120        ///
      str    DXPOA45                    121        ///
      str    DXPOA46                    122        ///
      str    DXPOA47                    123        ///
      str    DXPOA48                    124        ///
      str    DXPOA49                    125        ///
      str    DXPOA50                    126        ///
      str    DXPOA51                    127        ///
      str    DXPOA52                    128        ///
      str    DXPOA53                    129        ///
      str    DXPOA54                    130        ///
      str    DXPOA55                    131        ///
      str    DXPOA56                    132        ///
      str    DXPOA57                    133        ///
      str    DXPOA58                    134        ///
      str    DXPOA59                    135        ///
      str    DXPOA60                    136        ///
      str    DXPOA61                    137        ///
      str    DXPOA62                    138        ///
      str    DXPOA63                    139        ///
      str    DXPOA64                    140        ///
      str    DXPOA65                    141        ///
      str    DXPOA66                    142        ///
      str    DXPOA67                    143        ///
      str    DXPOA68                    144        ///
      str    DXPOA69                    145        ///
      str    DXPOA70                    146        ///
      str    DXPOA71                    147        ///
      str    DXPOA72                    148        ///
      str    DXPOA73                    149        ///
      str    DXPOA74                    150        ///
      str    DXPOA75                    151        ///
      str    DXPOA76                    152        ///
      str    DXPOA77                    153        ///
      str    DXPOA78                    154        ///
      str    DXPOA79                    155        ///
      str    DXPOA80                    156        ///
      str    DXPOA81                    157        ///
      str    DXPOA82                    158        ///
      str    DXPOA83                    159        ///
      str    DXPOA84                    160        ///
      byte   FEMALE                     161- 162   ///
      byte   HCUP_ED                    163- 164   ///
      byte   HCUP_OS                    165- 166   ///
      byte   HISPANIC                   167- 168   ///
      str    HISPANIC_X                 169        ///
      byte   Homeless                   170- 171   ///
      byte   HospitalUnit               172- 173   ///
      str    HOSPST                     174- 175   ///
      int    I10_BIRTH                  176- 178   ///
      int    I10_DELIVERY               179- 181   ///
      str    I10_DX1                    182- 188   ///
      str    I10_DX2                    189- 195   ///
      str    I10_DX3                    196- 202   ///
      str    I10_DX4                    203- 209   ///
      str    I10_DX5                    210- 216   ///
      str    I10_DX6                    217- 223   ///
      str    I10_DX7                    224- 230   ///
      str    I10_DX8                    231- 237   ///
      str    I10_DX9                    238- 244   ///
      str    I10_DX10                   245- 251   ///
      str    I10_DX11                   252- 258   ///
      str    I10_DX12                   259- 265   ///
      str    I10_DX13                   266- 272   ///
      str    I10_DX14                   273- 279   ///
      str    I10_DX15                   280- 286   ///
      str    I10_DX16                   287- 293   ///
      str    I10_DX17                   294- 300   ///
      str    I10_DX18                   301- 307   ///
      str    I10_DX19                   308- 314   ///
      str    I10_DX20                   315- 321   ///
      str    I10_DX21                   322- 328   ///
      str    I10_DX22                   329- 335   ///
      str    I10_DX23                   336- 342   ///
      str    I10_DX24                   343- 349   ///
      str    I10_DX25                   350- 356   ///
      str    I10_DX26                   357- 363   ///
      str    I10_DX27                   364- 370   ///
      str    I10_DX28                   371- 377   ///
      str    I10_DX29                   378- 384   ///
      str    I10_DX30                   385- 391   ///
      str    I10_DX31                   392- 398   ///
      str    I10_DX32                   399- 405   ///
      str    I10_DX33                   406- 412   ///
      str    I10_DX34                   413- 419   ///
      str    I10_DX35                   420- 426   ///
      str    I10_DX36                   427- 433   ///
      str    I10_DX37                   434- 440   ///
      str    I10_DX38                   441- 447   ///
      str    I10_DX39                   448- 454   ///
      str    I10_DX40                   455- 461   ///
      str    I10_DX41                   462- 468   ///
      str    I10_DX42                   469- 475   ///
      str    I10_DX43                   476- 482   ///
      str    I10_DX44                   483- 489   ///
      str    I10_DX45                   490- 496   ///
      str    I10_DX46                   497- 503   ///
      str    I10_DX47                   504- 510   ///
      str    I10_DX48                   511- 517   ///
      str    I10_DX49                   518- 524   ///
      str    I10_DX50                   525- 531   ///
      str    I10_DX51                   532- 538   ///
      str    I10_DX52                   539- 545   ///
      str    I10_DX53                   546- 552   ///
      str    I10_DX54                   553- 559   ///
      str    I10_DX55                   560- 566   ///
      str    I10_DX56                   567- 573   ///
      str    I10_DX57                   574- 580   ///
      str    I10_DX58                   581- 587   ///
      str    I10_DX59                   588- 594   ///
      str    I10_DX60                   595- 601   ///
      str    I10_DX61                   602- 608   ///
      str    I10_DX62                   609- 615   ///
      str    I10_DX63                   616- 622   ///
      str    I10_DX64                   623- 629   ///
      str    I10_DX65                   630- 636   ///
      str    I10_DX66                   637- 643   ///
      str    I10_DX67                   644- 650   ///
      str    I10_DX68                   651- 657   ///
      str    I10_DX69                   658- 664   ///
      str    I10_DX70                   665- 671   ///
      str    I10_DX71                   672- 678   ///
      str    I10_DX72                   679- 685   ///
      str    I10_DX73                   686- 692   ///
      str    I10_DX74                   693- 699   ///
      str    I10_DX75                   700- 706   ///
      str    I10_DX76                   707- 713   ///
      str    I10_DX77                   714- 720   ///
      str    I10_DX78                   721- 727   ///
      str    I10_DX79                   728- 734   ///
      str    I10_DX80                   735- 741   ///
      str    I10_DX81                   742- 748   ///
      str    I10_DX82                   749- 755   ///
      str    I10_DX83                   756- 762   ///
      str    I10_DX84                   763- 769   ///
      int    I10_NDX                    770- 772   ///
      int    I10_NPR                    773- 775   ///
      str    I10_PR1                    776- 782   ///
      str    I10_PR2                    783- 789   ///
      str    I10_PR3                    790- 796   ///
      str    I10_PR4                    797- 803   ///
      str    I10_PR5                    804- 810   ///
      str    I10_PR6                    811- 817   ///
      str    I10_PR7                    818- 824   ///
      str    I10_PR8                    825- 831   ///
      str    I10_PR9                    832- 838   ///
      str    I10_PR10                   839- 845   ///
      str    I10_PR11                   846- 852   ///
      str    I10_PR12                   853- 859   ///
      str    I10_PR13                   860- 866   ///
      str    I10_PR14                   867- 873   ///
      str    I10_PR15                   874- 880   ///
      str    I10_PR16                   881- 887   ///
      str    I10_PR17                   888- 894   ///
      str    I10_PR18                   895- 901   ///
      str    I10_PR19                   902- 908   ///
      str    I10_PR20                   909- 915   ///
      str    I10_PR21                   916- 922   ///
      str    I10_PR22                   923- 929   ///
      str    I10_PR23                   930- 936   ///
      str    I10_PR24                   937- 943   ///
      str    I10_PR25                   944- 950   ///
      str    I10_PR26                   951- 957   ///
      str    I10_PR27                   958- 964   ///
      str    I10_PR28                   965- 971   ///
      str    I10_PR29                   972- 978   ///
      str    I10_PR30                   979- 985   ///
      str    I10_PR31                   986- 992   ///
      str    I10_PR32                   993- 999   ///
      str    I10_PR33                  1000-1006   ///
      str    I10_PR34                  1007-1013   ///
      str    I10_PR35                  1014-1020   ///
      str    I10_PR36                  1021-1027   ///
      str    I10_PR37                  1028-1034   ///
      str    I10_PR38                  1035-1041   ///
      str    I10_PR39                  1042-1048   ///
      str    I10_PR40                  1049-1055   ///
      str    I10_PR41                  1056-1062   ///
      str    I10_PR42                  1063-1069   ///
      str    I10_PR43                  1070-1076   ///
      str    I10_PR44                  1077-1083   ///
      str    I10_PR45                  1084-1090   ///
      str    I10_PR46                  1091-1097   ///
      str    I10_PR47                  1098-1104   ///
      str    I10_PR48                  1105-1111   ///
      str    I10_PR49                  1112-1118   ///
      str    I10_PR50                  1119-1125   ///
      str    I10_PR51                  1126-1132   ///
      str    I10_PR52                  1133-1139   ///
      str    I10_PR53                  1140-1146   ///
      str    I10_PR54                  1147-1153   ///
      str    I10_PR55                  1154-1160   ///
      str    I10_PR56                  1161-1167   ///
      str    I10_PR57                  1168-1174   ///
      str    I10_PR58                  1175-1181   ///
      str    I10_PR59                  1182-1188   ///
      str    I10_PR60                  1189-1195   ///
      str    I10_PR61                  1196-1202   ///
      str    I10_PR62                  1203-1209   ///
      str    I10_PR63                  1210-1216   ///
      str    I10_PR64                  1217-1223   ///
      str    I10_PR65                  1224-1230   ///
      str    I10_PR66                  1231-1237   ///
      str    I10_PR67                  1238-1244   ///
      str    I10_PR68                  1245-1251   ///
      str    I10_PR69                  1252-1258   ///
      str    I10_PR70                  1259-1265   ///
      str    I10_PR71                  1266-1272   ///
      str    I10_PR72                  1273-1279   ///
      str    I10_PR73                  1280-1286   ///
      str    I10_PR74                  1287-1293   ///
      int    I10_PROCTYPE              1294-1296   ///
      byte   I10_SERVICELINE           1297-1298   ///
      double KEY                       1299-1313   ///
      long   LOS                       1314-1318   ///
      long   LOS_X                     1319-1324   ///
      str    MARITALSTATUS_X           1325        ///
      str    MARITALSTATUSUB04         1326        ///
      byte   MDC                       1327-1328   ///
      byte   MDC_NoPOA                 1329-1330   ///
      long   MDNUM1_R                  1331-1339   ///
      long   MDNUM2_R                  1340-1348   ///
      byte   MEDINCSTQ                 1349-1350   ///
      long   MRN_R                     1351-1359   ///
      double OS_TIME                   1360-1370   ///
      str    P7EDSRC_X                 1371-1372   ///
      byte   PAY1                      1373-1374   ///
      str    PAY1_X                    1375-1376   ///
      byte   PAY2                      1377-1378   ///
      str    PAY2_X                    1379-1380   ///
      byte   PAY3                      1381-1382   ///
      str    PAY3_X                    1383-1384   ///
      str    PAYER1_X                  1385-1387   ///
      str    PAYER2_X                  1388-1390   ///
      str    PAYER3_X                  1391-1393   ///
      byte   PCLASS_ORPROC             1394-1395   ///
      int    PL_CBSA                   1396-1398   ///
      byte   PL_NCHS                   1399-1400   ///
      byte   PL_RUCC                   1401-1402   ///
      byte   PL_UIC                    1403-1404   ///
      byte   PL_UR_CAT4                1405-1406   ///
      byte   POA_Disch_Edit1           1407-1408   ///
      byte   POA_Disch_Edit2           1409-1410   ///
      byte   POA_Hosp_Edit1            1411-1412   ///
      byte   POA_Hosp_Edit2            1413-1414   ///
      byte   POA_Hosp_Edit3            1415-1416   ///
      double POA_Hosp_Edit3_Value      1417-1424   ///
      str    PointOfOrigin_X           1425-1426   ///
      str    PointOfOriginUB04         1427        ///
      long   PRDAY1                    1428-1432   ///
      long   PRDAY2                    1433-1437   ///
      long   PRDAY3                    1438-1442   ///
      long   PRDAY4                    1443-1447   ///
      long   PRDAY5                    1448-1452   ///
      long   PRDAY6                    1453-1457   ///
      long   PRDAY7                    1458-1462   ///
      long   PRDAY8                    1463-1467   ///
      long   PRDAY9                    1468-1472   ///
      long   PRDAY10                   1473-1477   ///
      long   PRDAY11                   1478-1482   ///
      long   PRDAY12                   1483-1487   ///
      long   PRDAY13                   1488-1492   ///
      long   PRDAY14                   1493-1497   ///
      long   PRDAY15                   1498-1502   ///
      long   PRDAY16                   1503-1507   ///
      long   PRDAY17                   1508-1512   ///
      long   PRDAY18                   1513-1517   ///
      long   PRDAY19                   1518-1522   ///
      long   PRDAY20                   1523-1527   ///
      long   PRDAY21                   1528-1532   ///
      long   PRDAY22                   1533-1537   ///
      long   PRDAY23                   1538-1542   ///
      long   PRDAY24                   1543-1547   ///
      long   PRDAY25                   1548-1552   ///
      long   PRDAY26                   1553-1557   ///
      long   PRDAY27                   1558-1562   ///
      long   PRDAY28                   1563-1567   ///
      long   PRDAY29                   1568-1572   ///
      long   PRDAY30                   1573-1577   ///
      long   PRDAY31                   1578-1582   ///
      long   PRDAY32                   1583-1587   ///
      long   PRDAY33                   1588-1592   ///
      long   PRDAY34                   1593-1597   ///
      long   PRDAY35                   1598-1602   ///
      long   PRDAY36                   1603-1607   ///
      long   PRDAY37                   1608-1612   ///
      long   PRDAY38                   1613-1617   ///
      long   PRDAY39                   1618-1622   ///
      long   PRDAY40                   1623-1627   ///
      long   PRDAY41                   1628-1632   ///
      long   PRDAY42                   1633-1637   ///
      long   PRDAY43                   1638-1642   ///
      long   PRDAY44                   1643-1647   ///
      long   PRDAY45                   1648-1652   ///
      long   PRDAY46                   1653-1657   ///
      long   PRDAY47                   1658-1662   ///
      long   PRDAY48                   1663-1667   ///
      long   PRDAY49                   1668-1672   ///
      long   PRDAY50                   1673-1677   ///
      long   PRDAY51                   1678-1682   ///
      long   PRDAY52                   1683-1687   ///
      long   PRDAY53                   1688-1692   ///
      long   PRDAY54                   1693-1697   ///
      long   PRDAY55                   1698-1702   ///
      long   PRDAY56                   1703-1707   ///
      long   PRDAY57                   1708-1712   ///
      long   PRDAY58                   1713-1717   ///
      long   PRDAY59                   1718-1722   ///
      long   PRDAY60                   1723-1727   ///
      long   PRDAY61                   1728-1732   ///
      long   PRDAY62                   1733-1737   ///
      long   PRDAY63                   1738-1742   ///
      long   PRDAY64                   1743-1747   ///
      long   PRDAY65                   1748-1752   ///
      long   PRDAY66                   1753-1757   ///
      long   PRDAY67                   1758-1762   ///
      long   PRDAY68                   1763-1767   ///
      long   PRDAY69                   1768-1772   ///
      long   PRDAY70                   1773-1777   ///
      long   PRDAY71                   1778-1782   ///
      long   PRDAY72                   1783-1787   ///
      long   PRDAY73                   1788-1792   ///
      long   PRDAY74                   1793-1797   ///
      str    PrimLang                  1798-1800   ///
      str    PSTATE                    1801-1802   ///
      str    PSTATE_GEO                1803-1804   ///
      long   PSTCO                     1805-1809   ///
      long   PSTCO_GEO                 1810-1814   ///
      byte   RACE                      1815-1816   ///
      float  RACE_PCT_MISS_HOSP        1817-1823   ///
      str    RACE_X                    1824        ///
      byte   READMIT                   1825-1826   ///
      double TOTCHG                    1827-1836   ///
      double TOTCHG_X                  1837-1851   ///
      byte   TRAN_IN                   1852-1853   ///
      byte   TRAN_OUT                  1854-1855   ///
      long   VisitLink                 1856-1864   ///
      int    YEAR                      1865-1868   ///
      str    ZIP                       1869-1873   ///
      str    ZIP3                      1874-1876   ///
      int    ZIPINC_QRTL               1877-1879   ///
      int    AYEAR                     1880-1883   ///
      using  "MD_SID_2021_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
label var DaysBurnUnit             "Days in burn care unit (as received from source)"
label var DaysCCU                  "Days in coronary care unit (as received from source)"
label var DaysICU                  "Days in medical/surgical intensive care unit (as received from source)"
label var DaysNICU                 "Days in neonetal care unit (as received from source)"
label var DaysPICU                 "Days in pediatric care unit (as received from source)"
label var DaysShockUnit            "Days in shock trauma unit (as received from source"
label var DaysToEvent              "Days from 'start date' to admission"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
label var HospitalUnit             "Patient was discharged from a special unit within an acute care hospital (reported by source)"
label var HOSPST                   "Hospital state postal code"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MARITALSTATUS_X          "Patient's marital status (as received from source)"
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
label var PAY3                     "Tertiary expected payer (uniform)"
label var PAY3_X                   "Tertiary expected payer (as received from source)"
label var PAYER1_X                 "Primary expected payer plan identifier (as received from source)"
label var PAYER2_X                 "Secondary expected payer plan identifier (as received from source)"
label var PAYER3_X                 "Tertiary expected payer plan identifier (as received from source)"
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
label var PrimLang                 "Primary language of patient"
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
label var RACE                     "Race (uniform)"
label var RACE_PCT_MISS_HOSP       "Hospital percentage of missing or invalid race values"
label var RACE_X                   "Race (as received from source)"
label var READMIT                  "Readmission"
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

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
recode DaysBurnUnit              (-99 -88 -66=.)
recode DaysCCU                   (-99 -88 -66=.)
recode DaysICU                   (-99 -88 -66=.)
recode DaysNICU                  (-99 -88 -66=.)
recode DaysPICU                  (-99 -88 -66=.)
recode DaysShockUnit             (-99 -88 -66=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
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
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
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
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_PCT_MISS_HOSP        (-999.99 -888.88 -666.66=.)
recode READMIT                   (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
recode VisitLink                 (-99999999 -88888888 -66666666=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)

save "MD_SID_2021_CORE.dta", replace
