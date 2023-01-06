/*****************************************************************************
* Creation Date: 11/29/2017   
* DC_SID_2015q4_CORE.Do
* This program will load the 2015 DC ASCII CORE File into Stata.
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
      int    DRG32                       50-  52   ///
      byte   DRGVER                      53-  54   ///
      str    DXPOA1                      55        ///
      str    DXPOA2                      56        ///
      str    DXPOA3                      57        ///
      str    DXPOA4                      58        ///
      str    DXPOA5                      59        ///
      str    DXPOA6                      60        ///
      str    DXPOA7                      61        ///
      str    DXPOA8                      62        ///
      str    DXPOA9                      63        ///
      str    DXPOA10                     64        ///
      str    DXPOA11                     65        ///
      str    DXPOA12                     66        ///
      str    DXPOA13                     67        ///
      str    DXPOA14                     68        ///
      str    DXPOA15                     69        ///
      str    DXPOA16                     70        ///
      str    DXPOA17                     71        ///
      str    DXPOA18                     72        ///
      str    DXPOA19                     73        ///
      str    DXPOA20                     74        ///
      str    DXPOA21                     75        ///
      str    DXPOA22                     76        ///
      str    DXPOA23                     77        ///
      str    DXPOA24                     78        ///
      str    DXPOA25                     79        ///
      str    DXPOA26                     80        ///
      str    DXPOA27                     81        ///
      str    DXPOA28                     82        ///
      str    DXPOA29                     83        ///
      str    DXPOA30                     84        ///
      str    DXPOA31                     85        ///
      str    DXPOA32                     86        ///
      str    DXPOA33                     87        ///
      str    DXPOA34                     88        ///
      str    DXPOA35                     89        ///
      str    DXPOA36                     90        ///
      str    DXPOA37                     91        ///
      str    DXPOA38                     92        ///
      str    DXPOA39                     93        ///
      str    DXPOA40                     94        ///
      str    DXPOA41                     95        ///
      str    DXPOA42                     96        ///
      str    DXPOA43                     97        ///
      str    DXPOA44                     98        ///
      str    DXPOA45                     99        ///
      str    DXPOA46                    100        ///
      str    DXPOA47                    101        ///
      str    DXPOA48                    102        ///
      str    DXPOA49                    103        ///
      str    DXPOA50                    104        ///
      int    DXVER                      105- 107   ///
      str    E_POA1                     108        ///
      str    E_POA2                     109        ///
      str    E_POA3                     110        ///
      str    E_POA4                     111        ///
      str    E_POA5                     112        ///
      str    E_POA6                     113        ///
      str    E_POA7                     114        ///
      byte   FEMALE                     115- 116   ///
      byte   HCUP_ED                    117- 118   ///
      byte   HCUP_OS                    119- 120   ///
      str    HOSPST                     121- 122   ///
      str    I10_DX_Admitting           123- 129   ///
      str    I10_DX1                    130- 136   ///
      str    I10_DX2                    137- 143   ///
      str    I10_DX3                    144- 150   ///
      str    I10_DX4                    151- 157   ///
      str    I10_DX5                    158- 164   ///
      str    I10_DX6                    165- 171   ///
      str    I10_DX7                    172- 178   ///
      str    I10_DX8                    179- 185   ///
      str    I10_DX9                    186- 192   ///
      str    I10_DX10                   193- 199   ///
      str    I10_DX11                   200- 206   ///
      str    I10_DX12                   207- 213   ///
      str    I10_DX13                   214- 220   ///
      str    I10_DX14                   221- 227   ///
      str    I10_DX15                   228- 234   ///
      str    I10_DX16                   235- 241   ///
      str    I10_DX17                   242- 248   ///
      str    I10_DX18                   249- 255   ///
      str    I10_DX19                   256- 262   ///
      str    I10_DX20                   263- 269   ///
      str    I10_DX21                   270- 276   ///
      str    I10_DX22                   277- 283   ///
      str    I10_DX23                   284- 290   ///
      str    I10_DX24                   291- 297   ///
      str    I10_DX25                   298- 304   ///
      str    I10_DX26                   305- 311   ///
      str    I10_DX27                   312- 318   ///
      str    I10_DX28                   319- 325   ///
      str    I10_DX29                   326- 332   ///
      str    I10_DX30                   333- 339   ///
      str    I10_DX31                   340- 346   ///
      str    I10_DX32                   347- 353   ///
      str    I10_DX33                   354- 360   ///
      str    I10_DX34                   361- 367   ///
      str    I10_DX35                   368- 374   ///
      str    I10_DX36                   375- 381   ///
      str    I10_DX37                   382- 388   ///
      str    I10_DX38                   389- 395   ///
      str    I10_DX39                   396- 402   ///
      str    I10_DX40                   403- 409   ///
      str    I10_DX41                   410- 416   ///
      str    I10_DX42                   417- 423   ///
      str    I10_DX43                   424- 430   ///
      str    I10_DX44                   431- 437   ///
      str    I10_DX45                   438- 444   ///
      str    I10_DX46                   445- 451   ///
      str    I10_DX47                   452- 458   ///
      str    I10_DX48                   459- 465   ///
      str    I10_DX49                   466- 472   ///
      str    I10_DX50                   473- 479   ///
      int    I10_DXCCS1                 480- 483   ///
      int    I10_DXCCS2                 484- 487   ///
      int    I10_DXCCS3                 488- 491   ///
      int    I10_DXCCS4                 492- 495   ///
      int    I10_DXCCS5                 496- 499   ///
      int    I10_DXCCS6                 500- 503   ///
      int    I10_DXCCS7                 504- 507   ///
      int    I10_DXCCS8                 508- 511   ///
      int    I10_DXCCS9                 512- 515   ///
      int    I10_DXCCS10                516- 519   ///
      int    I10_DXCCS11                520- 523   ///
      int    I10_DXCCS12                524- 527   ///
      int    I10_DXCCS13                528- 531   ///
      int    I10_DXCCS14                532- 535   ///
      int    I10_DXCCS15                536- 539   ///
      int    I10_DXCCS16                540- 543   ///
      int    I10_DXCCS17                544- 547   ///
      int    I10_DXCCS18                548- 551   ///
      int    I10_DXCCS19                552- 555   ///
      int    I10_DXCCS20                556- 559   ///
      int    I10_DXCCS21                560- 563   ///
      int    I10_DXCCS22                564- 567   ///
      int    I10_DXCCS23                568- 571   ///
      int    I10_DXCCS24                572- 575   ///
      int    I10_DXCCS25                576- 579   ///
      int    I10_DXCCS26                580- 583   ///
      int    I10_DXCCS27                584- 587   ///
      int    I10_DXCCS28                588- 591   ///
      int    I10_DXCCS29                592- 595   ///
      int    I10_DXCCS30                596- 599   ///
      int    I10_DXCCS31                600- 603   ///
      int    I10_DXCCS32                604- 607   ///
      int    I10_DXCCS33                608- 611   ///
      int    I10_DXCCS34                612- 615   ///
      int    I10_DXCCS35                616- 619   ///
      int    I10_DXCCS36                620- 623   ///
      int    I10_DXCCS37                624- 627   ///
      int    I10_DXCCS38                628- 631   ///
      int    I10_DXCCS39                632- 635   ///
      int    I10_DXCCS40                636- 639   ///
      int    I10_DXCCS41                640- 643   ///
      int    I10_DXCCS42                644- 647   ///
      int    I10_DXCCS43                648- 651   ///
      int    I10_DXCCS44                652- 655   ///
      int    I10_DXCCS45                656- 659   ///
      int    I10_DXCCS46                660- 663   ///
      int    I10_DXCCS47                664- 667   ///
      int    I10_DXCCS48                668- 671   ///
      int    I10_DXCCS49                672- 675   ///
      int    I10_DXCCS50                676- 679   ///
      str    I10_ECAUSE1                680- 686   ///
      str    I10_ECAUSE2                687- 693   ///
      str    I10_ECAUSE3                694- 700   ///
      str    I10_ECAUSE4                701- 707   ///
      str    I10_ECAUSE5                708- 714   ///
      str    I10_ECAUSE6                715- 721   ///
      str    I10_ECAUSE7                722- 728   ///
      int    I10_ECauseCCS1             729- 732   ///
      int    I10_ECauseCCS2             733- 736   ///
      int    I10_ECauseCCS3             737- 740   ///
      int    I10_ECauseCCS4             741- 744   ///
      int    I10_ECauseCCS5             745- 748   ///
      int    I10_ECauseCCS6             749- 752   ///
      int    I10_ECauseCCS7             753- 756   ///
      int    I10_HOSPBRTH               757- 759   ///
      int    I10_NCHRONIC               760- 762   ///
      int    I10_NDX                    763- 765   ///
      byte   I10_NECAUSE                766- 767   ///
      byte   I10_NEOMAT                 768- 769   ///
      int    I10_NPR                    770- 772   ///
      byte   I10_ORPROC                 773- 774   ///
      str    I10_PR1                    775- 781   ///
      str    I10_PR2                    782- 788   ///
      str    I10_PR3                    789- 795   ///
      str    I10_PR4                    796- 802   ///
      str    I10_PR5                    803- 809   ///
      str    I10_PR6                    810- 816   ///
      str    I10_PR7                    817- 823   ///
      str    I10_PR8                    824- 830   ///
      str    I10_PR9                    831- 837   ///
      str    I10_PR10                   838- 844   ///
      str    I10_PR11                   845- 851   ///
      str    I10_PR12                   852- 858   ///
      str    I10_PR13                   859- 865   ///
      str    I10_PR14                   866- 872   ///
      str    I10_PR15                   873- 879   ///
      str    I10_PR16                   880- 886   ///
      str    I10_PR17                   887- 893   ///
      str    I10_PR18                   894- 900   ///
      str    I10_PR19                   901- 907   ///
      str    I10_PR20                   908- 914   ///
      str    I10_PR21                   915- 921   ///
      str    I10_PR22                   922- 928   ///
      str    I10_PR23                   929- 935   ///
      str    I10_PR24                   936- 942   ///
      str    I10_PR25                   943- 949   ///
      str    I10_PR26                   950- 956   ///
      str    I10_PR27                   957- 963   ///
      str    I10_PR28                   964- 970   ///
      str    I10_PR29                   971- 977   ///
      str    I10_PR30                   978- 984   ///
      str    I10_PR31                   985- 991   ///
      str    I10_PR32                   992- 998   ///
      str    I10_PR33                   999-1005   ///
      str    I10_PR34                  1006-1012   ///
      str    I10_PR35                  1013-1019   ///
      str    I10_PR36                  1020-1026   ///
      str    I10_PR37                  1027-1033   ///
      str    I10_PR38                  1034-1040   ///
      str    I10_PR39                  1041-1047   ///
      str    I10_PR40                  1048-1054   ///
      str    I10_PR41                  1055-1061   ///
      str    I10_PR42                  1062-1068   ///
      str    I10_PR43                  1069-1075   ///
      str    I10_PR44                  1076-1082   ///
      str    I10_PR45                  1083-1089   ///
      str    I10_PR46                  1090-1096   ///
      str    I10_PR47                  1097-1103   ///
      str    I10_PR48                  1104-1110   ///
      str    I10_PR49                  1111-1117   ///
      str    I10_PR50                  1118-1124   ///
      int    I10_PRCCS1                1125-1127   ///
      int    I10_PRCCS2                1128-1130   ///
      int    I10_PRCCS3                1131-1133   ///
      int    I10_PRCCS4                1134-1136   ///
      int    I10_PRCCS5                1137-1139   ///
      int    I10_PRCCS6                1140-1142   ///
      int    I10_PRCCS7                1143-1145   ///
      int    I10_PRCCS8                1146-1148   ///
      int    I10_PRCCS9                1149-1151   ///
      int    I10_PRCCS10               1152-1154   ///
      int    I10_PRCCS11               1155-1157   ///
      int    I10_PRCCS12               1158-1160   ///
      int    I10_PRCCS13               1161-1163   ///
      int    I10_PRCCS14               1164-1166   ///
      int    I10_PRCCS15               1167-1169   ///
      int    I10_PRCCS16               1170-1172   ///
      int    I10_PRCCS17               1173-1175   ///
      int    I10_PRCCS18               1176-1178   ///
      int    I10_PRCCS19               1179-1181   ///
      int    I10_PRCCS20               1182-1184   ///
      int    I10_PRCCS21               1185-1187   ///
      int    I10_PRCCS22               1188-1190   ///
      int    I10_PRCCS23               1191-1193   ///
      int    I10_PRCCS24               1194-1196   ///
      int    I10_PRCCS25               1197-1199   ///
      int    I10_PRCCS26               1200-1202   ///
      int    I10_PRCCS27               1203-1205   ///
      int    I10_PRCCS28               1206-1208   ///
      int    I10_PRCCS29               1209-1211   ///
      int    I10_PRCCS30               1212-1214   ///
      int    I10_PRCCS31               1215-1217   ///
      int    I10_PRCCS32               1218-1220   ///
      int    I10_PRCCS33               1221-1223   ///
      int    I10_PRCCS34               1224-1226   ///
      int    I10_PRCCS35               1227-1229   ///
      int    I10_PRCCS36               1230-1232   ///
      int    I10_PRCCS37               1233-1235   ///
      int    I10_PRCCS38               1236-1238   ///
      int    I10_PRCCS39               1239-1241   ///
      int    I10_PRCCS40               1242-1244   ///
      int    I10_PRCCS41               1245-1247   ///
      int    I10_PRCCS42               1248-1250   ///
      int    I10_PRCCS43               1251-1253   ///
      int    I10_PRCCS44               1254-1256   ///
      int    I10_PRCCS45               1257-1259   ///
      int    I10_PRCCS46               1260-1262   ///
      int    I10_PRCCS47               1263-1265   ///
      int    I10_PRCCS48               1266-1268   ///
      int    I10_PRCCS49               1269-1271   ///
      int    I10_PRCCS50               1272-1274   ///
      int    I10_PROCTYPE              1275-1277   ///
      byte   I10_SERVICELINE           1278-1279   ///
      double KEY                       1280-1294   ///
      long   LOS                       1295-1299   ///
      long   LOS_X                     1300-1305   ///
      byte   MDC                       1306-1307   ///
      byte   MDC_NoPOA                 1308-1309   ///
      byte   MDC32                     1310-1311   ///
      long   MDNUM1_R                  1312-1320   ///
      long   MDNUM2_R                  1321-1329   ///
      long   MDNUM3_R                  1330-1338   ///
      long   MDNUM4_R                  1339-1347   ///
      byte   MEDINCSTQ                 1348-1349   ///
      byte   PAY1                      1350-1351   ///
      str    PAY1_X                    1352-1359   ///
      byte   PAY2                      1360-1361   ///
      str    PAY2_X                    1362-1369   ///
      byte   PAY3                      1370-1371   ///
      str    PAY3_X                    1372-1379   ///
      int    PL_CBSA                   1380-1382   ///
      byte   PL_NCHS                   1383-1384   ///
      byte   PL_RUCC                   1385-1386   ///
      byte   PL_UIC                    1387-1388   ///
      byte   PL_UR_CAT4                1389-1390   ///
      byte   POA_Disch_Edit1           1391-1392   ///
      byte   POA_Disch_Edit2           1393-1394   ///
      byte   POA_Hosp_Edit1            1395-1396   ///
      byte   POA_Hosp_Edit2            1397-1398   ///
      byte   POA_Hosp_Edit3            1399-1400   ///
      double POA_Hosp_Edit3_Value      1401-1408   ///
      str    PointOfOrigin_X           1409-1411   ///
      str    PointOfOriginUB04         1412        ///
      long   PRDAY1                    1413-1417   ///
      long   PRDAY2                    1418-1422   ///
      long   PRDAY3                    1423-1427   ///
      long   PRDAY4                    1428-1432   ///
      long   PRDAY5                    1433-1437   ///
      long   PRDAY6                    1438-1442   ///
      long   PRDAY7                    1443-1447   ///
      long   PRDAY8                    1448-1452   ///
      long   PRDAY9                    1453-1457   ///
      long   PRDAY10                   1458-1462   ///
      long   PRDAY11                   1463-1467   ///
      long   PRDAY12                   1468-1472   ///
      long   PRDAY13                   1473-1477   ///
      long   PRDAY14                   1478-1482   ///
      long   PRDAY15                   1483-1487   ///
      long   PRDAY16                   1488-1492   ///
      long   PRDAY17                   1493-1497   ///
      long   PRDAY18                   1498-1502   ///
      long   PRDAY19                   1503-1507   ///
      long   PRDAY20                   1508-1512   ///
      long   PRDAY21                   1513-1517   ///
      long   PRDAY22                   1518-1522   ///
      long   PRDAY23                   1523-1527   ///
      long   PRDAY24                   1528-1532   ///
      long   PRDAY25                   1533-1537   ///
      long   PRDAY26                   1538-1542   ///
      long   PRDAY27                   1543-1547   ///
      long   PRDAY28                   1548-1552   ///
      long   PRDAY29                   1553-1557   ///
      long   PRDAY30                   1558-1562   ///
      long   PRDAY31                   1563-1567   ///
      long   PRDAY32                   1568-1572   ///
      long   PRDAY33                   1573-1577   ///
      long   PRDAY34                   1578-1582   ///
      long   PRDAY35                   1583-1587   ///
      long   PRDAY36                   1588-1592   ///
      long   PRDAY37                   1593-1597   ///
      long   PRDAY38                   1598-1602   ///
      long   PRDAY39                   1603-1607   ///
      long   PRDAY40                   1608-1612   ///
      long   PRDAY41                   1613-1617   ///
      long   PRDAY42                   1618-1622   ///
      long   PRDAY43                   1623-1627   ///
      long   PRDAY44                   1628-1632   ///
      long   PRDAY45                   1633-1637   ///
      long   PRDAY46                   1638-1642   ///
      long   PRDAY47                   1643-1647   ///
      long   PRDAY48                   1648-1652   ///
      long   PRDAY49                   1653-1657   ///
      long   PRDAY50                   1658-1662   ///
      int    PRVER                     1663-1665   ///
      str    PSTATE                    1666-1667   ///
      long   PSTCO                     1668-1672   ///
      long   PSTCO2                    1673-1677   ///
      byte   RACE                      1678-1679   ///
      str    RACE_X                    1680-1682   ///
      double TOTCHG                    1683-1692   ///
      double TOTCHG_X                  1693-1707   ///
      byte   TRAN_IN                   1708-1709   ///
      byte   TRAN_OUT                  1710-1711   ///
      int    YEAR                      1712-1715   ///
      str    ZIP                       1716-1720   ///
      str    ZIP3                      1721-1723   ///
      int    ZIPINC_QRTL               1724-1726   ///
      long   HOSPID                    1727-1731   ///
      int    AYEAR                     1732-1735   ///
      byte   BMONTH                    1736-1737   ///
      int    BYEAR                     1738-1741   ///
      using  "DC_SID_2015q4_CORE.ASC"

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
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
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
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM4_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
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
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)
recode BMONTH                    (-9 -8 -6 -5=.)
recode BYEAR                     (-999 -888 -666=.)

save "DC_SID_2015q4_CORE.dta", replace
