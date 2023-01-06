/*****************************************************************************
* Creation Date: 04/27/2022   
* DC_SID_2020_CORE.Do
* This program will load the 2020 DC ASCII CORE File into Stata.
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
      int    AHOUR                       10-  13   ///
      byte   AMONTH                      14-  15   ///
      byte   ATYPE                       16-  17   ///
      byte   AWEEKEND                    18-  19   ///
      str    BILLTYPE                    20-  23   ///
      int    BWT                         24-  27   ///
      int    DHOUR                       28-  31   ///
      byte   DIED                        32-  33   ///
      str    DISP_X                      34-  35   ///
      byte   DISPUB04                    36-  37   ///
      byte   DISPUNIFORM                 38-  39   ///
      byte   DMONTH                      40-  41   ///
      byte   DQTR                        42-  43   ///
      int    DRG                         44-  46   ///
      int    DRG_NoPOA                   47-  49   ///
      byte   DRGVER                      50-  51   ///
      str    DXPOA1                      52        ///
      str    DXPOA2                      53        ///
      str    DXPOA3                      54        ///
      str    DXPOA4                      55        ///
      str    DXPOA5                      56        ///
      str    DXPOA6                      57        ///
      str    DXPOA7                      58        ///
      str    DXPOA8                      59        ///
      str    DXPOA9                      60        ///
      str    DXPOA10                     61        ///
      str    DXPOA11                     62        ///
      str    DXPOA12                     63        ///
      str    DXPOA13                     64        ///
      str    DXPOA14                     65        ///
      str    DXPOA15                     66        ///
      str    DXPOA16                     67        ///
      str    DXPOA17                     68        ///
      str    DXPOA18                     69        ///
      str    DXPOA19                     70        ///
      str    DXPOA20                     71        ///
      str    DXPOA21                     72        ///
      str    DXPOA22                     73        ///
      str    DXPOA23                     74        ///
      str    DXPOA24                     75        ///
      str    DXPOA25                     76        ///
      str    DXPOA26                     77        ///
      str    DXPOA27                     78        ///
      str    DXPOA28                     79        ///
      str    DXPOA29                     80        ///
      str    DXPOA30                     81        ///
      str    DXPOA31                     82        ///
      str    DXPOA32                     83        ///
      str    DXPOA33                     84        ///
      str    DXPOA34                     85        ///
      str    DXPOA35                     86        ///
      str    DXPOA36                     87        ///
      str    DXPOA37                     88        ///
      str    DXPOA38                     89        ///
      str    DXPOA39                     90        ///
      str    DXPOA40                     91        ///
      str    DXPOA41                     92        ///
      str    DXPOA42                     93        ///
      str    DXPOA43                     94        ///
      str    DXPOA44                     95        ///
      str    DXPOA45                     96        ///
      str    DXPOA46                     97        ///
      str    DXPOA47                     98        ///
      str    DXPOA48                     99        ///
      str    DXPOA49                    100        ///
      str    DXPOA50                    101        ///
      str    DXPOA51                    102        ///
      str    DXPOA52                    103        ///
      str    DXPOA53                    104        ///
      str    DXPOA54                    105        ///
      str    DXPOA55                    106        ///
      str    DXPOA56                    107        ///
      str    DXPOA57                    108        ///
      str    DXPOA58                    109        ///
      str    DXPOA59                    110        ///
      str    DXPOA60                    111        ///
      str    DXPOA61                    112        ///
      str    DXPOA62                    113        ///
      str    DXPOA63                    114        ///
      str    DXPOA64                    115        ///
      str    DXPOA65                    116        ///
      str    DXPOA66                    117        ///
      byte   FEMALE                     118- 119   ///
      byte   HCUP_ED                    120- 121   ///
      byte   HCUP_OS                    122- 123   ///
      str    HOSPST                     124- 125   ///
      int    I10_BIRTH                  126- 128   ///
      int    I10_DELIVERY               129- 131   ///
      str    I10_DX_Admitting           132- 138   ///
      str    I10_DX1                    139- 145   ///
      str    I10_DX2                    146- 152   ///
      str    I10_DX3                    153- 159   ///
      str    I10_DX4                    160- 166   ///
      str    I10_DX5                    167- 173   ///
      str    I10_DX6                    174- 180   ///
      str    I10_DX7                    181- 187   ///
      str    I10_DX8                    188- 194   ///
      str    I10_DX9                    195- 201   ///
      str    I10_DX10                   202- 208   ///
      str    I10_DX11                   209- 215   ///
      str    I10_DX12                   216- 222   ///
      str    I10_DX13                   223- 229   ///
      str    I10_DX14                   230- 236   ///
      str    I10_DX15                   237- 243   ///
      str    I10_DX16                   244- 250   ///
      str    I10_DX17                   251- 257   ///
      str    I10_DX18                   258- 264   ///
      str    I10_DX19                   265- 271   ///
      str    I10_DX20                   272- 278   ///
      str    I10_DX21                   279- 285   ///
      str    I10_DX22                   286- 292   ///
      str    I10_DX23                   293- 299   ///
      str    I10_DX24                   300- 306   ///
      str    I10_DX25                   307- 313   ///
      str    I10_DX26                   314- 320   ///
      str    I10_DX27                   321- 327   ///
      str    I10_DX28                   328- 334   ///
      str    I10_DX29                   335- 341   ///
      str    I10_DX30                   342- 348   ///
      str    I10_DX31                   349- 355   ///
      str    I10_DX32                   356- 362   ///
      str    I10_DX33                   363- 369   ///
      str    I10_DX34                   370- 376   ///
      str    I10_DX35                   377- 383   ///
      str    I10_DX36                   384- 390   ///
      str    I10_DX37                   391- 397   ///
      str    I10_DX38                   398- 404   ///
      str    I10_DX39                   405- 411   ///
      str    I10_DX40                   412- 418   ///
      str    I10_DX41                   419- 425   ///
      str    I10_DX42                   426- 432   ///
      str    I10_DX43                   433- 439   ///
      str    I10_DX44                   440- 446   ///
      str    I10_DX45                   447- 453   ///
      str    I10_DX46                   454- 460   ///
      str    I10_DX47                   461- 467   ///
      str    I10_DX48                   468- 474   ///
      str    I10_DX49                   475- 481   ///
      str    I10_DX50                   482- 488   ///
      str    I10_DX51                   489- 495   ///
      str    I10_DX52                   496- 502   ///
      str    I10_DX53                   503- 509   ///
      str    I10_DX54                   510- 516   ///
      str    I10_DX55                   517- 523   ///
      str    I10_DX56                   524- 530   ///
      str    I10_DX57                   531- 537   ///
      str    I10_DX58                   538- 544   ///
      str    I10_DX59                   545- 551   ///
      str    I10_DX60                   552- 558   ///
      str    I10_DX61                   559- 565   ///
      str    I10_DX62                   566- 572   ///
      str    I10_DX63                   573- 579   ///
      str    I10_DX64                   580- 586   ///
      str    I10_DX65                   587- 593   ///
      str    I10_DX66                   594- 600   ///
      int    I10_NDX                    601- 603   ///
      int    I10_NPR                    604- 606   ///
      str    I10_PR1                    607- 613   ///
      str    I10_PR2                    614- 620   ///
      str    I10_PR3                    621- 627   ///
      str    I10_PR4                    628- 634   ///
      str    I10_PR5                    635- 641   ///
      str    I10_PR6                    642- 648   ///
      str    I10_PR7                    649- 655   ///
      str    I10_PR8                    656- 662   ///
      str    I10_PR9                    663- 669   ///
      str    I10_PR10                   670- 676   ///
      str    I10_PR11                   677- 683   ///
      str    I10_PR12                   684- 690   ///
      str    I10_PR13                   691- 697   ///
      str    I10_PR14                   698- 704   ///
      str    I10_PR15                   705- 711   ///
      str    I10_PR16                   712- 718   ///
      str    I10_PR17                   719- 725   ///
      str    I10_PR18                   726- 732   ///
      str    I10_PR19                   733- 739   ///
      str    I10_PR20                   740- 746   ///
      str    I10_PR21                   747- 753   ///
      str    I10_PR22                   754- 760   ///
      str    I10_PR23                   761- 767   ///
      str    I10_PR24                   768- 774   ///
      str    I10_PR25                   775- 781   ///
      str    I10_PR26                   782- 788   ///
      str    I10_PR27                   789- 795   ///
      str    I10_PR28                   796- 802   ///
      str    I10_PR29                   803- 809   ///
      str    I10_PR30                   810- 816   ///
      str    I10_PR31                   817- 823   ///
      str    I10_PR32                   824- 830   ///
      str    I10_PR33                   831- 837   ///
      str    I10_PR34                   838- 844   ///
      str    I10_PR35                   845- 851   ///
      str    I10_PR36                   852- 858   ///
      str    I10_PR37                   859- 865   ///
      str    I10_PR38                   866- 872   ///
      str    I10_PR39                   873- 879   ///
      str    I10_PR40                   880- 886   ///
      str    I10_PR41                   887- 893   ///
      str    I10_PR42                   894- 900   ///
      str    I10_PR43                   901- 907   ///
      str    I10_PR44                   908- 914   ///
      str    I10_PR45                   915- 921   ///
      str    I10_PR46                   922- 928   ///
      str    I10_PR47                   929- 935   ///
      str    I10_PR48                   936- 942   ///
      str    I10_PR49                   943- 949   ///
      str    I10_PR50                   950- 956   ///
      str    I10_PR51                   957- 963   ///
      str    I10_PR52                   964- 970   ///
      str    I10_PR53                   971- 977   ///
      str    I10_PR54                   978- 984   ///
      str    I10_PR55                   985- 991   ///
      str    I10_PR56                   992- 998   ///
      str    I10_PR57                   999-1005   ///
      str    I10_PR58                  1006-1012   ///
      str    I10_PR59                  1013-1019   ///
      str    I10_PR60                  1020-1026   ///
      str    I10_PR61                  1027-1033   ///
      str    I10_PR62                  1034-1040   ///
      str    I10_PR63                  1041-1047   ///
      str    I10_PR64                  1048-1054   ///
      str    I10_PR65                  1055-1061   ///
      str    I10_PR66                  1062-1068   ///
      str    I10_PR67                  1069-1075   ///
      str    I10_PR68                  1076-1082   ///
      str    I10_PR69                  1083-1089   ///
      str    I10_PR70                  1090-1096   ///
      str    I10_PR71                  1097-1103   ///
      str    I10_PR72                  1104-1110   ///
      str    I10_PR73                  1111-1117   ///
      str    I10_PR74                  1118-1124   ///
      str    I10_PR75                  1125-1131   ///
      str    I10_PR76                  1132-1138   ///
      str    I10_PR77                  1139-1145   ///
      str    I10_PR78                  1146-1152   ///
      str    I10_PR79                  1153-1159   ///
      str    I10_PR80                  1160-1166   ///
      str    I10_PR81                  1167-1173   ///
      str    I10_PR82                  1174-1180   ///
      str    I10_PR83                  1181-1187   ///
      int    I10_PROCTYPE              1188-1190   ///
      byte   I10_SERVICELINE           1191-1192   ///
      double KEY                       1193-1207   ///
      long   LOS                       1208-1212   ///
      long   LOS_X                     1213-1218   ///
      byte   MDC                       1219-1220   ///
      byte   MDC_NoPOA                 1221-1222   ///
      long   MDNUM1_R                  1223-1231   ///
      long   MDNUM2_R                  1232-1240   ///
      long   MDNUM3_R                  1241-1249   ///
      long   MDNUM4_R                  1250-1258   ///
      byte   MEDINCSTQ                 1259-1260   ///
      byte   PAY1                      1261-1262   ///
      str    PAY1_X                    1263-1270   ///
      byte   PAY2                      1271-1272   ///
      str    PAY2_X                    1273-1280   ///
      byte   PAY3                      1281-1282   ///
      str    PAY3_X                    1283-1290   ///
      byte   PCLASS_ORPROC             1291-1292   ///
      int    PL_CBSA                   1293-1295   ///
      byte   PL_NCHS                   1296-1297   ///
      byte   PL_RUCC                   1298-1299   ///
      byte   PL_UIC                    1300-1301   ///
      byte   PL_UR_CAT4                1302-1303   ///
      byte   POA_Disch_Edit1           1304-1305   ///
      byte   POA_Disch_Edit2           1306-1307   ///
      byte   POA_Hosp_Edit1            1308-1309   ///
      byte   POA_Hosp_Edit2            1310-1311   ///
      byte   POA_Hosp_Edit3            1312-1313   ///
      double POA_Hosp_Edit3_Value      1314-1321   ///
      str    PointOfOrigin_X           1322-1324   ///
      str    PointOfOriginUB04         1325        ///
      long   PRDAY1                    1326-1330   ///
      long   PRDAY2                    1331-1335   ///
      long   PRDAY3                    1336-1340   ///
      long   PRDAY4                    1341-1345   ///
      long   PRDAY5                    1346-1350   ///
      long   PRDAY6                    1351-1355   ///
      long   PRDAY7                    1356-1360   ///
      long   PRDAY8                    1361-1365   ///
      long   PRDAY9                    1366-1370   ///
      long   PRDAY10                   1371-1375   ///
      long   PRDAY11                   1376-1380   ///
      long   PRDAY12                   1381-1385   ///
      long   PRDAY13                   1386-1390   ///
      long   PRDAY14                   1391-1395   ///
      long   PRDAY15                   1396-1400   ///
      long   PRDAY16                   1401-1405   ///
      long   PRDAY17                   1406-1410   ///
      long   PRDAY18                   1411-1415   ///
      long   PRDAY19                   1416-1420   ///
      long   PRDAY20                   1421-1425   ///
      long   PRDAY21                   1426-1430   ///
      long   PRDAY22                   1431-1435   ///
      long   PRDAY23                   1436-1440   ///
      long   PRDAY24                   1441-1445   ///
      long   PRDAY25                   1446-1450   ///
      long   PRDAY26                   1451-1455   ///
      long   PRDAY27                   1456-1460   ///
      long   PRDAY28                   1461-1465   ///
      long   PRDAY29                   1466-1470   ///
      long   PRDAY30                   1471-1475   ///
      long   PRDAY31                   1476-1480   ///
      long   PRDAY32                   1481-1485   ///
      long   PRDAY33                   1486-1490   ///
      long   PRDAY34                   1491-1495   ///
      long   PRDAY35                   1496-1500   ///
      long   PRDAY36                   1501-1505   ///
      long   PRDAY37                   1506-1510   ///
      long   PRDAY38                   1511-1515   ///
      long   PRDAY39                   1516-1520   ///
      long   PRDAY40                   1521-1525   ///
      long   PRDAY41                   1526-1530   ///
      long   PRDAY42                   1531-1535   ///
      long   PRDAY43                   1536-1540   ///
      long   PRDAY44                   1541-1545   ///
      long   PRDAY45                   1546-1550   ///
      long   PRDAY46                   1551-1555   ///
      long   PRDAY47                   1556-1560   ///
      long   PRDAY48                   1561-1565   ///
      long   PRDAY49                   1566-1570   ///
      long   PRDAY50                   1571-1575   ///
      long   PRDAY51                   1576-1580   ///
      long   PRDAY52                   1581-1585   ///
      long   PRDAY53                   1586-1590   ///
      long   PRDAY54                   1591-1595   ///
      long   PRDAY55                   1596-1600   ///
      long   PRDAY56                   1601-1605   ///
      long   PRDAY57                   1606-1610   ///
      long   PRDAY58                   1611-1615   ///
      long   PRDAY59                   1616-1620   ///
      long   PRDAY60                   1621-1625   ///
      long   PRDAY61                   1626-1630   ///
      long   PRDAY62                   1631-1635   ///
      long   PRDAY63                   1636-1640   ///
      long   PRDAY64                   1641-1645   ///
      long   PRDAY65                   1646-1650   ///
      long   PRDAY66                   1651-1655   ///
      long   PRDAY67                   1656-1660   ///
      long   PRDAY68                   1661-1665   ///
      long   PRDAY69                   1666-1670   ///
      long   PRDAY70                   1671-1675   ///
      long   PRDAY71                   1676-1680   ///
      long   PRDAY72                   1681-1685   ///
      long   PRDAY73                   1686-1690   ///
      long   PRDAY74                   1691-1695   ///
      long   PRDAY75                   1696-1700   ///
      long   PRDAY76                   1701-1705   ///
      long   PRDAY77                   1706-1710   ///
      long   PRDAY78                   1711-1715   ///
      long   PRDAY79                   1716-1720   ///
      long   PRDAY80                   1721-1725   ///
      long   PRDAY81                   1726-1730   ///
      long   PRDAY82                   1731-1735   ///
      long   PRDAY83                   1736-1740   ///
      str    PSTATE                    1741-1742   ///
      str    PSTATE_GEO                1743-1744   ///
      long   PSTCO                     1745-1749   ///
      long   PSTCO_GEO                 1750-1754   ///
      byte   RACE                      1755-1756   ///
      float  RACE_PCT_MISS_HOSP        1757-1763   ///
      str    RACE_X                    1764-1766   ///
      double TOTCHG                    1767-1776   ///
      double TOTCHG_X                  1777-1791   ///
      byte   TRAN_IN                   1792-1793   ///
      byte   TRAN_OUT                  1794-1795   ///
      int    YEAR                      1796-1799   ///
      str    ZIP                       1800-1804   ///
      str    ZIP3                      1805-1807   ///
      int    ZIPINC_QRTL               1808-1810   ///
      long   HOSPID                    1811-1815   ///
      int    AYEAR                     1816-1819   ///
      byte   BMONTH                    1820-1821   ///
      int    BYEAR                     1822-1825   ///
      using  "DC_SID_2020_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var BWT                      "Birth weight in grams"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
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
label var MDNUM4_R                 "Physician 4 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
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
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var HOSPID                   "HCUP hospital identification number"
label var AYEAR                    "Admission year"
label var BMONTH                   "Birth month"
label var BYEAR                    "Birth year"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
recode DHOUR                     (-999 -888 -666=.)
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
recode MDNUM4_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
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
recode PRDAY75                   (-9999 -8888 -6666=.)
recode PRDAY76                   (-9999 -8888 -6666=.)
recode PRDAY77                   (-9999 -8888 -6666=.)
recode PRDAY78                   (-9999 -8888 -6666=.)
recode PRDAY79                   (-9999 -8888 -6666=.)
recode PRDAY80                   (-9999 -8888 -6666=.)
recode PRDAY81                   (-9999 -8888 -6666=.)
recode PRDAY82                   (-9999 -8888 -6666=.)
recode PRDAY83                   (-9999 -8888 -6666=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_PCT_MISS_HOSP        (-999.99 -888.88 -666.66=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)
recode BMONTH                    (-9 -8 -6 -5=.)
recode BYEAR                     (-999 -888 -666=.)

save "DC_SID_2020_CORE.dta", replace
