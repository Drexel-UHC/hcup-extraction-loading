/*****************************************************************************
* Creation Date: 11/29/2017   
* DC_SID_2015q1q3_CORE.Do
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
      str    DX_Admitting                55-  61   ///
      str    DX1                         62-  68   ///
      str    DX2                         69-  75   ///
      str    DX3                         76-  82   ///
      str    DX4                         83-  89   ///
      str    DX5                         90-  96   ///
      str    DX6                         97- 103   ///
      str    DX7                        104- 110   ///
      str    DX8                        111- 117   ///
      str    DX9                        118- 124   ///
      str    DX10                       125- 131   ///
      str    DX11                       132- 138   ///
      str    DX12                       139- 145   ///
      str    DX13                       146- 152   ///
      str    DX14                       153- 159   ///
      str    DX15                       160- 166   ///
      str    DX16                       167- 173   ///
      str    DX17                       174- 180   ///
      str    DX18                       181- 187   ///
      str    DX19                       188- 194   ///
      str    DX20                       195- 201   ///
      str    DX21                       202- 208   ///
      str    DX22                       209- 215   ///
      str    DX23                       216- 222   ///
      str    DX24                       223- 229   ///
      str    DX25                       230- 236   ///
      str    DX26                       237- 243   ///
      str    DX27                       244- 250   ///
      str    DX28                       251- 257   ///
      str    DX29                       258- 264   ///
      str    DX30                       265- 271   ///
      str    DX31                       272- 278   ///
      str    DX32                       279- 285   ///
      str    DX33                       286- 292   ///
      str    DX34                       293- 299   ///
      str    DX35                       300- 306   ///
      str    DX36                       307- 313   ///
      str    DX37                       314- 320   ///
      str    DX38                       321- 327   ///
      str    DX39                       328- 334   ///
      str    DX40                       335- 341   ///
      str    DX41                       342- 348   ///
      str    DX42                       349- 355   ///
      str    DX43                       356- 362   ///
      str    DX44                       363- 369   ///
      str    DX45                       370- 376   ///
      str    DX46                       377- 383   ///
      str    DX47                       384- 390   ///
      str    DX48                       391- 397   ///
      str    DX49                       398- 404   ///
      str    DX50                       405- 411   ///
      int    DXCCS1                     412- 415   ///
      int    DXCCS2                     416- 419   ///
      int    DXCCS3                     420- 423   ///
      int    DXCCS4                     424- 427   ///
      int    DXCCS5                     428- 431   ///
      int    DXCCS6                     432- 435   ///
      int    DXCCS7                     436- 439   ///
      int    DXCCS8                     440- 443   ///
      int    DXCCS9                     444- 447   ///
      int    DXCCS10                    448- 451   ///
      int    DXCCS11                    452- 455   ///
      int    DXCCS12                    456- 459   ///
      int    DXCCS13                    460- 463   ///
      int    DXCCS14                    464- 467   ///
      int    DXCCS15                    468- 471   ///
      int    DXCCS16                    472- 475   ///
      int    DXCCS17                    476- 479   ///
      int    DXCCS18                    480- 483   ///
      int    DXCCS19                    484- 487   ///
      int    DXCCS20                    488- 491   ///
      int    DXCCS21                    492- 495   ///
      int    DXCCS22                    496- 499   ///
      int    DXCCS23                    500- 503   ///
      int    DXCCS24                    504- 507   ///
      int    DXCCS25                    508- 511   ///
      int    DXCCS26                    512- 515   ///
      int    DXCCS27                    516- 519   ///
      int    DXCCS28                    520- 523   ///
      int    DXCCS29                    524- 527   ///
      int    DXCCS30                    528- 531   ///
      int    DXCCS31                    532- 535   ///
      int    DXCCS32                    536- 539   ///
      int    DXCCS33                    540- 543   ///
      int    DXCCS34                    544- 547   ///
      int    DXCCS35                    548- 551   ///
      int    DXCCS36                    552- 555   ///
      int    DXCCS37                    556- 559   ///
      int    DXCCS38                    560- 563   ///
      int    DXCCS39                    564- 567   ///
      int    DXCCS40                    568- 571   ///
      int    DXCCS41                    572- 575   ///
      int    DXCCS42                    576- 579   ///
      int    DXCCS43                    580- 583   ///
      int    DXCCS44                    584- 587   ///
      int    DXCCS45                    588- 591   ///
      int    DXCCS46                    592- 595   ///
      int    DXCCS47                    596- 599   ///
      int    DXCCS48                    600- 603   ///
      int    DXCCS49                    604- 607   ///
      int    DXCCS50                    608- 611   ///
      str    DXPOA1                     612        ///
      str    DXPOA2                     613        ///
      str    DXPOA3                     614        ///
      str    DXPOA4                     615        ///
      str    DXPOA5                     616        ///
      str    DXPOA6                     617        ///
      str    DXPOA7                     618        ///
      str    DXPOA8                     619        ///
      str    DXPOA9                     620        ///
      str    DXPOA10                    621        ///
      str    DXPOA11                    622        ///
      str    DXPOA12                    623        ///
      str    DXPOA13                    624        ///
      str    DXPOA14                    625        ///
      str    DXPOA15                    626        ///
      str    DXPOA16                    627        ///
      str    DXPOA17                    628        ///
      str    DXPOA18                    629        ///
      str    DXPOA19                    630        ///
      str    DXPOA20                    631        ///
      str    DXPOA21                    632        ///
      str    DXPOA22                    633        ///
      str    DXPOA23                    634        ///
      str    DXPOA24                    635        ///
      str    DXPOA25                    636        ///
      str    DXPOA26                    637        ///
      str    DXPOA27                    638        ///
      str    DXPOA28                    639        ///
      str    DXPOA29                    640        ///
      str    DXPOA30                    641        ///
      str    DXPOA31                    642        ///
      str    DXPOA32                    643        ///
      str    DXPOA33                    644        ///
      str    DXPOA34                    645        ///
      str    DXPOA35                    646        ///
      str    DXPOA36                    647        ///
      str    DXPOA37                    648        ///
      str    DXPOA38                    649        ///
      str    DXPOA39                    650        ///
      str    DXPOA40                    651        ///
      str    DXPOA41                    652        ///
      str    DXPOA42                    653        ///
      str    DXPOA43                    654        ///
      str    DXPOA44                    655        ///
      str    DXPOA45                    656        ///
      str    DXPOA46                    657        ///
      str    DXPOA47                    658        ///
      str    DXPOA48                    659        ///
      str    DXPOA49                    660        ///
      str    DXPOA50                    661        ///
      int    DXVER                      662- 664   ///
      int    E_CCS1                     665- 668   ///
      int    E_CCS2                     669- 672   ///
      int    E_CCS3                     673- 676   ///
      int    E_CCS4                     677- 680   ///
      int    E_CCS5                     681- 684   ///
      int    E_CCS6                     685- 688   ///
      int    E_CCS7                     689- 692   ///
      str    E_POA1                     693        ///
      str    E_POA2                     694        ///
      str    E_POA3                     695        ///
      str    E_POA4                     696        ///
      str    E_POA5                     697        ///
      str    E_POA6                     698        ///
      str    E_POA7                     699        ///
      str    ECODE1                     700- 706   ///
      str    ECODE2                     707- 713   ///
      str    ECODE3                     714- 720   ///
      str    ECODE4                     721- 727   ///
      str    ECODE5                     728- 734   ///
      str    ECODE6                     735- 741   ///
      str    ECODE7                     742- 748   ///
      byte   FEMALE                     749- 750   ///
      byte   HCUP_ED                    751- 752   ///
      byte   HCUP_OS                    753- 754   ///
      int    HOSPBRTH                   755- 757   ///
      str    HOSPST                     758- 759   ///
      double KEY                        760- 774   ///
      long   LOS                        775- 779   ///
      long   LOS_X                      780- 785   ///
      byte   MDC                        786- 787   ///
      byte   MDC_NoPOA                  788- 789   ///
      byte   MDC32                      790- 791   ///
      long   MDNUM1_R                   792- 800   ///
      long   MDNUM2_R                   801- 809   ///
      long   MDNUM3_R                   810- 818   ///
      long   MDNUM4_R                   819- 827   ///
      byte   MEDINCSTQ                  828- 829   ///
      int    NCHRONIC                   830- 832   ///
      int    NDX                        833- 835   ///
      byte   NECODE                     836- 837   ///
      byte   NEOMAT                     838- 839   ///
      int    NPR                        840- 842   ///
      byte   ORPROC                     843- 844   ///
      byte   PAY1                       845- 846   ///
      str    PAY1_X                     847- 854   ///
      byte   PAY2                       855- 856   ///
      str    PAY2_X                     857- 864   ///
      byte   PAY3                       865- 866   ///
      str    PAY3_X                     867- 874   ///
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
      str    PointOfOrigin_X            904- 906   ///
      str    PointOfOriginUB04          907        ///
      str    PR1                        908- 914   ///
      str    PR2                        915- 921   ///
      str    PR3                        922- 928   ///
      str    PR4                        929- 935   ///
      str    PR5                        936- 942   ///
      str    PR6                        943- 949   ///
      str    PR7                        950- 956   ///
      str    PR8                        957- 963   ///
      str    PR9                        964- 970   ///
      str    PR10                       971- 977   ///
      str    PR11                       978- 984   ///
      str    PR12                       985- 991   ///
      str    PR13                       992- 998   ///
      str    PR14                       999-1005   ///
      str    PR15                      1006-1012   ///
      str    PR16                      1013-1019   ///
      str    PR17                      1020-1026   ///
      str    PR18                      1027-1033   ///
      str    PR19                      1034-1040   ///
      str    PR20                      1041-1047   ///
      str    PR21                      1048-1054   ///
      str    PR22                      1055-1061   ///
      str    PR23                      1062-1068   ///
      str    PR24                      1069-1075   ///
      str    PR25                      1076-1082   ///
      str    PR26                      1083-1089   ///
      str    PR27                      1090-1096   ///
      str    PR28                      1097-1103   ///
      str    PR29                      1104-1110   ///
      str    PR30                      1111-1117   ///
      str    PR31                      1118-1124   ///
      str    PR32                      1125-1131   ///
      str    PR33                      1132-1138   ///
      str    PR34                      1139-1145   ///
      str    PR35                      1146-1152   ///
      str    PR36                      1153-1159   ///
      str    PR37                      1160-1166   ///
      str    PR38                      1167-1173   ///
      str    PR39                      1174-1180   ///
      str    PR40                      1181-1187   ///
      str    PR41                      1188-1194   ///
      str    PR42                      1195-1201   ///
      str    PR43                      1202-1208   ///
      str    PR44                      1209-1215   ///
      str    PR45                      1216-1222   ///
      str    PR46                      1223-1229   ///
      str    PR47                      1230-1236   ///
      str    PR48                      1237-1243   ///
      str    PR49                      1244-1250   ///
      str    PR50                      1251-1257   ///
      int    PRCCS1                    1258-1260   ///
      int    PRCCS2                    1261-1263   ///
      int    PRCCS3                    1264-1266   ///
      int    PRCCS4                    1267-1269   ///
      int    PRCCS5                    1270-1272   ///
      int    PRCCS6                    1273-1275   ///
      int    PRCCS7                    1276-1278   ///
      int    PRCCS8                    1279-1281   ///
      int    PRCCS9                    1282-1284   ///
      int    PRCCS10                   1285-1287   ///
      int    PRCCS11                   1288-1290   ///
      int    PRCCS12                   1291-1293   ///
      int    PRCCS13                   1294-1296   ///
      int    PRCCS14                   1297-1299   ///
      int    PRCCS15                   1300-1302   ///
      int    PRCCS16                   1303-1305   ///
      int    PRCCS17                   1306-1308   ///
      int    PRCCS18                   1309-1311   ///
      int    PRCCS19                   1312-1314   ///
      int    PRCCS20                   1315-1317   ///
      int    PRCCS21                   1318-1320   ///
      int    PRCCS22                   1321-1323   ///
      int    PRCCS23                   1324-1326   ///
      int    PRCCS24                   1327-1329   ///
      int    PRCCS25                   1330-1332   ///
      int    PRCCS26                   1333-1335   ///
      int    PRCCS27                   1336-1338   ///
      int    PRCCS28                   1339-1341   ///
      int    PRCCS29                   1342-1344   ///
      int    PRCCS30                   1345-1347   ///
      int    PRCCS31                   1348-1350   ///
      int    PRCCS32                   1351-1353   ///
      int    PRCCS33                   1354-1356   ///
      int    PRCCS34                   1357-1359   ///
      int    PRCCS35                   1360-1362   ///
      int    PRCCS36                   1363-1365   ///
      int    PRCCS37                   1366-1368   ///
      int    PRCCS38                   1369-1371   ///
      int    PRCCS39                   1372-1374   ///
      int    PRCCS40                   1375-1377   ///
      int    PRCCS41                   1378-1380   ///
      int    PRCCS42                   1381-1383   ///
      int    PRCCS43                   1384-1386   ///
      int    PRCCS44                   1387-1389   ///
      int    PRCCS45                   1390-1392   ///
      int    PRCCS46                   1393-1395   ///
      int    PRCCS47                   1396-1398   ///
      int    PRCCS48                   1399-1401   ///
      int    PRCCS49                   1402-1404   ///
      int    PRCCS50                   1405-1407   ///
      long   PRDAY1                    1408-1412   ///
      long   PRDAY2                    1413-1417   ///
      long   PRDAY3                    1418-1422   ///
      long   PRDAY4                    1423-1427   ///
      long   PRDAY5                    1428-1432   ///
      long   PRDAY6                    1433-1437   ///
      long   PRDAY7                    1438-1442   ///
      long   PRDAY8                    1443-1447   ///
      long   PRDAY9                    1448-1452   ///
      long   PRDAY10                   1453-1457   ///
      long   PRDAY11                   1458-1462   ///
      long   PRDAY12                   1463-1467   ///
      long   PRDAY13                   1468-1472   ///
      long   PRDAY14                   1473-1477   ///
      long   PRDAY15                   1478-1482   ///
      long   PRDAY16                   1483-1487   ///
      long   PRDAY17                   1488-1492   ///
      long   PRDAY18                   1493-1497   ///
      long   PRDAY19                   1498-1502   ///
      long   PRDAY20                   1503-1507   ///
      long   PRDAY21                   1508-1512   ///
      long   PRDAY22                   1513-1517   ///
      long   PRDAY23                   1518-1522   ///
      long   PRDAY24                   1523-1527   ///
      long   PRDAY25                   1528-1532   ///
      long   PRDAY26                   1533-1537   ///
      long   PRDAY27                   1538-1542   ///
      long   PRDAY28                   1543-1547   ///
      long   PRDAY29                   1548-1552   ///
      long   PRDAY30                   1553-1557   ///
      long   PRDAY31                   1558-1562   ///
      long   PRDAY32                   1563-1567   ///
      long   PRDAY33                   1568-1572   ///
      long   PRDAY34                   1573-1577   ///
      long   PRDAY35                   1578-1582   ///
      long   PRDAY36                   1583-1587   ///
      long   PRDAY37                   1588-1592   ///
      long   PRDAY38                   1593-1597   ///
      long   PRDAY39                   1598-1602   ///
      long   PRDAY40                   1603-1607   ///
      long   PRDAY41                   1608-1612   ///
      long   PRDAY42                   1613-1617   ///
      long   PRDAY43                   1618-1622   ///
      long   PRDAY44                   1623-1627   ///
      long   PRDAY45                   1628-1632   ///
      long   PRDAY46                   1633-1637   ///
      long   PRDAY47                   1638-1642   ///
      long   PRDAY48                   1643-1647   ///
      long   PRDAY49                   1648-1652   ///
      long   PRDAY50                   1653-1657   ///
      int    PROCTYPE                  1658-1660   ///
      int    PRVER                     1661-1663   ///
      str    PSTATE                    1664-1665   ///
      long   PSTCO                     1666-1670   ///
      long   PSTCO2                    1671-1675   ///
      byte   RACE                      1676-1677   ///
      str    RACE_X                    1678-1680   ///
      byte   SERVICELINE               1681-1682   ///
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
      using  "DC_SID_2015q1q3_CORE.ASC"

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
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MDNUM4_R                 "Physician 4 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCHRONIC                 "Number of chronic conditions"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
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
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var SERVICELINE              "Hospital Service Line"
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
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM4_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
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
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
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

save "DC_SID_2015q1q3_CORE.dta", replace
