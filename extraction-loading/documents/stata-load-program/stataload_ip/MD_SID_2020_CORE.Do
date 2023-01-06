/*****************************************************************************
* Creation Date: 11/15/2021   
* MD_SID_2020_CORE.Do
* This program will load the 2020 MD ASCII CORE File into Stata.
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
      byte   FEMALE                     160- 161   ///
      byte   HCUP_ED                    162- 163   ///
      byte   HCUP_OS                    164- 165   ///
      byte   HISPANIC                   166- 167   ///
      str    HISPANIC_X                 168        ///
      byte   Homeless                   169- 170   ///
      byte   HospitalUnit               171- 172   ///
      str    HOSPST                     173- 174   ///
      int    I10_BIRTH                  175- 177   ///
      int    I10_DELIVERY               178- 180   ///
      str    I10_DX1                    181- 187   ///
      str    I10_DX2                    188- 194   ///
      str    I10_DX3                    195- 201   ///
      str    I10_DX4                    202- 208   ///
      str    I10_DX5                    209- 215   ///
      str    I10_DX6                    216- 222   ///
      str    I10_DX7                    223- 229   ///
      str    I10_DX8                    230- 236   ///
      str    I10_DX9                    237- 243   ///
      str    I10_DX10                   244- 250   ///
      str    I10_DX11                   251- 257   ///
      str    I10_DX12                   258- 264   ///
      str    I10_DX13                   265- 271   ///
      str    I10_DX14                   272- 278   ///
      str    I10_DX15                   279- 285   ///
      str    I10_DX16                   286- 292   ///
      str    I10_DX17                   293- 299   ///
      str    I10_DX18                   300- 306   ///
      str    I10_DX19                   307- 313   ///
      str    I10_DX20                   314- 320   ///
      str    I10_DX21                   321- 327   ///
      str    I10_DX22                   328- 334   ///
      str    I10_DX23                   335- 341   ///
      str    I10_DX24                   342- 348   ///
      str    I10_DX25                   349- 355   ///
      str    I10_DX26                   356- 362   ///
      str    I10_DX27                   363- 369   ///
      str    I10_DX28                   370- 376   ///
      str    I10_DX29                   377- 383   ///
      str    I10_DX30                   384- 390   ///
      str    I10_DX31                   391- 397   ///
      str    I10_DX32                   398- 404   ///
      str    I10_DX33                   405- 411   ///
      str    I10_DX34                   412- 418   ///
      str    I10_DX35                   419- 425   ///
      str    I10_DX36                   426- 432   ///
      str    I10_DX37                   433- 439   ///
      str    I10_DX38                   440- 446   ///
      str    I10_DX39                   447- 453   ///
      str    I10_DX40                   454- 460   ///
      str    I10_DX41                   461- 467   ///
      str    I10_DX42                   468- 474   ///
      str    I10_DX43                   475- 481   ///
      str    I10_DX44                   482- 488   ///
      str    I10_DX45                   489- 495   ///
      str    I10_DX46                   496- 502   ///
      str    I10_DX47                   503- 509   ///
      str    I10_DX48                   510- 516   ///
      str    I10_DX49                   517- 523   ///
      str    I10_DX50                   524- 530   ///
      str    I10_DX51                   531- 537   ///
      str    I10_DX52                   538- 544   ///
      str    I10_DX53                   545- 551   ///
      str    I10_DX54                   552- 558   ///
      str    I10_DX55                   559- 565   ///
      str    I10_DX56                   566- 572   ///
      str    I10_DX57                   573- 579   ///
      str    I10_DX58                   580- 586   ///
      str    I10_DX59                   587- 593   ///
      str    I10_DX60                   594- 600   ///
      str    I10_DX61                   601- 607   ///
      str    I10_DX62                   608- 614   ///
      str    I10_DX63                   615- 621   ///
      str    I10_DX64                   622- 628   ///
      str    I10_DX65                   629- 635   ///
      str    I10_DX66                   636- 642   ///
      str    I10_DX67                   643- 649   ///
      str    I10_DX68                   650- 656   ///
      str    I10_DX69                   657- 663   ///
      str    I10_DX70                   664- 670   ///
      str    I10_DX71                   671- 677   ///
      str    I10_DX72                   678- 684   ///
      str    I10_DX73                   685- 691   ///
      str    I10_DX74                   692- 698   ///
      str    I10_DX75                   699- 705   ///
      str    I10_DX76                   706- 712   ///
      str    I10_DX77                   713- 719   ///
      str    I10_DX78                   720- 726   ///
      str    I10_DX79                   727- 733   ///
      str    I10_DX80                   734- 740   ///
      str    I10_DX81                   741- 747   ///
      str    I10_DX82                   748- 754   ///
      str    I10_DX83                   755- 761   ///
      int    I10_NDX                    762- 764   ///
      int    I10_NPR                    765- 767   ///
      str    I10_PR1                    768- 774   ///
      str    I10_PR2                    775- 781   ///
      str    I10_PR3                    782- 788   ///
      str    I10_PR4                    789- 795   ///
      str    I10_PR5                    796- 802   ///
      str    I10_PR6                    803- 809   ///
      str    I10_PR7                    810- 816   ///
      str    I10_PR8                    817- 823   ///
      str    I10_PR9                    824- 830   ///
      str    I10_PR10                   831- 837   ///
      str    I10_PR11                   838- 844   ///
      str    I10_PR12                   845- 851   ///
      str    I10_PR13                   852- 858   ///
      str    I10_PR14                   859- 865   ///
      str    I10_PR15                   866- 872   ///
      str    I10_PR16                   873- 879   ///
      str    I10_PR17                   880- 886   ///
      str    I10_PR18                   887- 893   ///
      str    I10_PR19                   894- 900   ///
      str    I10_PR20                   901- 907   ///
      str    I10_PR21                   908- 914   ///
      str    I10_PR22                   915- 921   ///
      str    I10_PR23                   922- 928   ///
      str    I10_PR24                   929- 935   ///
      str    I10_PR25                   936- 942   ///
      str    I10_PR26                   943- 949   ///
      str    I10_PR27                   950- 956   ///
      str    I10_PR28                   957- 963   ///
      str    I10_PR29                   964- 970   ///
      str    I10_PR30                   971- 977   ///
      str    I10_PR31                   978- 984   ///
      str    I10_PR32                   985- 991   ///
      str    I10_PR33                   992- 998   ///
      str    I10_PR34                   999-1005   ///
      str    I10_PR35                  1006-1012   ///
      str    I10_PR36                  1013-1019   ///
      str    I10_PR37                  1020-1026   ///
      str    I10_PR38                  1027-1033   ///
      str    I10_PR39                  1034-1040   ///
      str    I10_PR40                  1041-1047   ///
      str    I10_PR41                  1048-1054   ///
      str    I10_PR42                  1055-1061   ///
      str    I10_PR43                  1062-1068   ///
      str    I10_PR44                  1069-1075   ///
      str    I10_PR45                  1076-1082   ///
      str    I10_PR46                  1083-1089   ///
      str    I10_PR47                  1090-1096   ///
      str    I10_PR48                  1097-1103   ///
      str    I10_PR49                  1104-1110   ///
      str    I10_PR50                  1111-1117   ///
      str    I10_PR51                  1118-1124   ///
      str    I10_PR52                  1125-1131   ///
      str    I10_PR53                  1132-1138   ///
      str    I10_PR54                  1139-1145   ///
      str    I10_PR55                  1146-1152   ///
      str    I10_PR56                  1153-1159   ///
      str    I10_PR57                  1160-1166   ///
      str    I10_PR58                  1167-1173   ///
      str    I10_PR59                  1174-1180   ///
      str    I10_PR60                  1181-1187   ///
      str    I10_PR61                  1188-1194   ///
      str    I10_PR62                  1195-1201   ///
      str    I10_PR63                  1202-1208   ///
      int    I10_PROCTYPE              1209-1211   ///
      byte   I10_SERVICELINE           1212-1213   ///
      double KEY                       1214-1228   ///
      long   LOS                       1229-1233   ///
      long   LOS_X                     1234-1239   ///
      str    MARITALSTATUS_X           1240        ///
      str    MARITALSTATUSUB04         1241        ///
      byte   MDC                       1242-1243   ///
      byte   MDC_NoPOA                 1244-1245   ///
      long   MDNUM1_R                  1246-1254   ///
      long   MDNUM2_R                  1255-1263   ///
      byte   MEDINCSTQ                 1264-1265   ///
      long   MRN_R                     1266-1274   ///
      double OS_TIME                   1275-1285   ///
      str    P7EDSRC_X                 1286-1287   ///
      byte   PAY1                      1288-1289   ///
      str    PAY1_X                    1290-1291   ///
      byte   PAY2                      1292-1293   ///
      str    PAY2_X                    1294-1295   ///
      byte   PAY3                      1296-1297   ///
      str    PAY3_X                    1298-1299   ///
      str    PAYER1_X                  1300-1301   ///
      str    PAYER2_X                  1302-1303   ///
      str    PAYER3_X                  1304-1305   ///
      byte   PCLASS_ORPROC             1306-1307   ///
      int    PL_CBSA                   1308-1310   ///
      byte   PL_NCHS                   1311-1312   ///
      byte   PL_RUCC                   1313-1314   ///
      byte   PL_UIC                    1315-1316   ///
      byte   PL_UR_CAT4                1317-1318   ///
      byte   POA_Disch_Edit1           1319-1320   ///
      byte   POA_Disch_Edit2           1321-1322   ///
      byte   POA_Hosp_Edit1            1323-1324   ///
      byte   POA_Hosp_Edit2            1325-1326   ///
      byte   POA_Hosp_Edit3            1327-1328   ///
      double POA_Hosp_Edit3_Value      1329-1336   ///
      str    PointOfOrigin_X           1337-1338   ///
      str    PointOfOriginUB04         1339        ///
      long   PRDAY1                    1340-1344   ///
      long   PRDAY2                    1345-1349   ///
      long   PRDAY3                    1350-1354   ///
      long   PRDAY4                    1355-1359   ///
      long   PRDAY5                    1360-1364   ///
      long   PRDAY6                    1365-1369   ///
      long   PRDAY7                    1370-1374   ///
      long   PRDAY8                    1375-1379   ///
      long   PRDAY9                    1380-1384   ///
      long   PRDAY10                   1385-1389   ///
      long   PRDAY11                   1390-1394   ///
      long   PRDAY12                   1395-1399   ///
      long   PRDAY13                   1400-1404   ///
      long   PRDAY14                   1405-1409   ///
      long   PRDAY15                   1410-1414   ///
      long   PRDAY16                   1415-1419   ///
      long   PRDAY17                   1420-1424   ///
      long   PRDAY18                   1425-1429   ///
      long   PRDAY19                   1430-1434   ///
      long   PRDAY20                   1435-1439   ///
      long   PRDAY21                   1440-1444   ///
      long   PRDAY22                   1445-1449   ///
      long   PRDAY23                   1450-1454   ///
      long   PRDAY24                   1455-1459   ///
      long   PRDAY25                   1460-1464   ///
      long   PRDAY26                   1465-1469   ///
      long   PRDAY27                   1470-1474   ///
      long   PRDAY28                   1475-1479   ///
      long   PRDAY29                   1480-1484   ///
      long   PRDAY30                   1485-1489   ///
      long   PRDAY31                   1490-1494   ///
      long   PRDAY32                   1495-1499   ///
      long   PRDAY33                   1500-1504   ///
      long   PRDAY34                   1505-1509   ///
      long   PRDAY35                   1510-1514   ///
      long   PRDAY36                   1515-1519   ///
      long   PRDAY37                   1520-1524   ///
      long   PRDAY38                   1525-1529   ///
      long   PRDAY39                   1530-1534   ///
      long   PRDAY40                   1535-1539   ///
      long   PRDAY41                   1540-1544   ///
      long   PRDAY42                   1545-1549   ///
      long   PRDAY43                   1550-1554   ///
      long   PRDAY44                   1555-1559   ///
      long   PRDAY45                   1560-1564   ///
      long   PRDAY46                   1565-1569   ///
      long   PRDAY47                   1570-1574   ///
      long   PRDAY48                   1575-1579   ///
      long   PRDAY49                   1580-1584   ///
      long   PRDAY50                   1585-1589   ///
      long   PRDAY51                   1590-1594   ///
      long   PRDAY52                   1595-1599   ///
      long   PRDAY53                   1600-1604   ///
      long   PRDAY54                   1605-1609   ///
      long   PRDAY55                   1610-1614   ///
      long   PRDAY56                   1615-1619   ///
      long   PRDAY57                   1620-1624   ///
      long   PRDAY58                   1625-1629   ///
      long   PRDAY59                   1630-1634   ///
      long   PRDAY60                   1635-1639   ///
      long   PRDAY61                   1640-1644   ///
      long   PRDAY62                   1645-1649   ///
      long   PRDAY63                   1650-1654   ///
      str    PrimLang                  1655-1657   ///
      str    PSTATE                    1658-1659   ///
      str    PSTATE_GEO                1660-1661   ///
      long   PSTCO                     1662-1666   ///
      long   PSTCO_GEO                 1667-1671   ///
      byte   RACE                      1672-1673   ///
      float  RACE_PCT_MISS_HOSP        1674-1680   ///
      str    RACE_X                    1681        ///
      byte   READMIT                   1682-1683   ///
      double TOTCHG                    1684-1693   ///
      double TOTCHG_X                  1694-1708   ///
      byte   TRAN_IN                   1709-1710   ///
      byte   TRAN_OUT                  1711-1712   ///
      long   VisitLink                 1713-1721   ///
      int    YEAR                      1722-1725   ///
      str    ZIP                       1726-1730   ///
      str    ZIP3                      1731-1733   ///
      int    ZIPINC_QRTL               1734-1736   ///
      int    AYEAR                     1737-1740   ///
      using  "MD_SID_2020_CORE.ASC"

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

save "MD_SID_2020_CORE.dta", replace
