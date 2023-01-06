/*****************************************************************************
* Creation Date: 03/17/2017   
* IA_SID_2015q1q3_CORE.Do
* This program will load the 2015 IA ASCII CORE File into Stata.
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
      long   DaysToEvent                 16-  21   ///
      byte   DIED                        22-  23   ///
      str    DISP_X                      24-  27   ///
      byte   DISPUB04                    28-  29   ///
      byte   DISPUNIFORM                 30-  31   ///
      byte   DMONTH                      32-  33   ///
      byte   DQTR                        34-  35   ///
      int    DRG                         36-  38   ///
      int    DRG_NoPOA                   39-  41   ///
      int    DRG32                       42-  44   ///
      byte   DRGVER                      45-  46   ///
      str    DX_Admitting                47-  53   ///
      str    DX1                         54-  60   ///
      str    DX2                         61-  67   ///
      str    DX3                         68-  74   ///
      str    DX4                         75-  81   ///
      str    DX5                         82-  88   ///
      str    DX6                         89-  95   ///
      str    DX7                         96- 102   ///
      str    DX8                        103- 109   ///
      str    DX9                        110- 116   ///
      str    DX10                       117- 123   ///
      str    DX11                       124- 130   ///
      str    DX12                       131- 137   ///
      str    DX13                       138- 144   ///
      str    DX14                       145- 151   ///
      str    DX15                       152- 158   ///
      str    DX16                       159- 165   ///
      str    DX17                       166- 172   ///
      str    DX18                       173- 179   ///
      str    DX19                       180- 186   ///
      str    DX20                       187- 193   ///
      str    DX21                       194- 200   ///
      str    DX22                       201- 207   ///
      str    DX23                       208- 214   ///
      str    DX24                       215- 221   ///
      str    DX25                       222- 228   ///
      str    DX26                       229- 235   ///
      str    DX27                       236- 242   ///
      str    DX28                       243- 249   ///
      str    DX29                       250- 256   ///
      str    DX30                       257- 263   ///
      str    DX31                       264- 270   ///
      str    DX32                       271- 277   ///
      str    DX33                       278- 284   ///
      str    DX34                       285- 291   ///
      str    DX35                       292- 298   ///
      str    DX36                       299- 305   ///
      str    DX37                       306- 312   ///
      str    DX38                       313- 319   ///
      str    DX39                       320- 326   ///
      str    DX40                       327- 333   ///
      str    DX41                       334- 340   ///
      str    DX42                       341- 347   ///
      str    DX43                       348- 354   ///
      str    DX44                       355- 361   ///
      str    DX45                       362- 368   ///
      str    DX46                       369- 375   ///
      str    DX47                       376- 382   ///
      str    DX48                       383- 389   ///
      str    DX49                       390- 396   ///
      str    DX50                       397- 403   ///
      int    DXCCS1                     404- 407   ///
      int    DXCCS2                     408- 411   ///
      int    DXCCS3                     412- 415   ///
      int    DXCCS4                     416- 419   ///
      int    DXCCS5                     420- 423   ///
      int    DXCCS6                     424- 427   ///
      int    DXCCS7                     428- 431   ///
      int    DXCCS8                     432- 435   ///
      int    DXCCS9                     436- 439   ///
      int    DXCCS10                    440- 443   ///
      int    DXCCS11                    444- 447   ///
      int    DXCCS12                    448- 451   ///
      int    DXCCS13                    452- 455   ///
      int    DXCCS14                    456- 459   ///
      int    DXCCS15                    460- 463   ///
      int    DXCCS16                    464- 467   ///
      int    DXCCS17                    468- 471   ///
      int    DXCCS18                    472- 475   ///
      int    DXCCS19                    476- 479   ///
      int    DXCCS20                    480- 483   ///
      int    DXCCS21                    484- 487   ///
      int    DXCCS22                    488- 491   ///
      int    DXCCS23                    492- 495   ///
      int    DXCCS24                    496- 499   ///
      int    DXCCS25                    500- 503   ///
      int    DXCCS26                    504- 507   ///
      int    DXCCS27                    508- 511   ///
      int    DXCCS28                    512- 515   ///
      int    DXCCS29                    516- 519   ///
      int    DXCCS30                    520- 523   ///
      int    DXCCS31                    524- 527   ///
      int    DXCCS32                    528- 531   ///
      int    DXCCS33                    532- 535   ///
      int    DXCCS34                    536- 539   ///
      int    DXCCS35                    540- 543   ///
      int    DXCCS36                    544- 547   ///
      int    DXCCS37                    548- 551   ///
      int    DXCCS38                    552- 555   ///
      int    DXCCS39                    556- 559   ///
      int    DXCCS40                    560- 563   ///
      int    DXCCS41                    564- 567   ///
      int    DXCCS42                    568- 571   ///
      int    DXCCS43                    572- 575   ///
      int    DXCCS44                    576- 579   ///
      int    DXCCS45                    580- 583   ///
      int    DXCCS46                    584- 587   ///
      int    DXCCS47                    588- 591   ///
      int    DXCCS48                    592- 595   ///
      int    DXCCS49                    596- 599   ///
      int    DXCCS50                    600- 603   ///
      str    DXPOA1                     604        ///
      str    DXPOA2                     605        ///
      str    DXPOA3                     606        ///
      str    DXPOA4                     607        ///
      str    DXPOA5                     608        ///
      str    DXPOA6                     609        ///
      str    DXPOA7                     610        ///
      str    DXPOA8                     611        ///
      str    DXPOA9                     612        ///
      str    DXPOA10                    613        ///
      str    DXPOA11                    614        ///
      str    DXPOA12                    615        ///
      str    DXPOA13                    616        ///
      str    DXPOA14                    617        ///
      str    DXPOA15                    618        ///
      str    DXPOA16                    619        ///
      str    DXPOA17                    620        ///
      str    DXPOA18                    621        ///
      str    DXPOA19                    622        ///
      str    DXPOA20                    623        ///
      str    DXPOA21                    624        ///
      str    DXPOA22                    625        ///
      str    DXPOA23                    626        ///
      str    DXPOA24                    627        ///
      str    DXPOA25                    628        ///
      str    DXPOA26                    629        ///
      str    DXPOA27                    630        ///
      str    DXPOA28                    631        ///
      str    DXPOA29                    632        ///
      str    DXPOA30                    633        ///
      str    DXPOA31                    634        ///
      str    DXPOA32                    635        ///
      str    DXPOA33                    636        ///
      str    DXPOA34                    637        ///
      str    DXPOA35                    638        ///
      str    DXPOA36                    639        ///
      str    DXPOA37                    640        ///
      str    DXPOA38                    641        ///
      str    DXPOA39                    642        ///
      str    DXPOA40                    643        ///
      str    DXPOA41                    644        ///
      str    DXPOA42                    645        ///
      str    DXPOA43                    646        ///
      str    DXPOA44                    647        ///
      str    DXPOA45                    648        ///
      str    DXPOA46                    649        ///
      str    DXPOA47                    650        ///
      str    DXPOA48                    651        ///
      str    DXPOA49                    652        ///
      str    DXPOA50                    653        ///
      int    DXVER                      654- 656   ///
      int    E_CCS1                     657- 660   ///
      int    E_CCS2                     661- 664   ///
      int    E_CCS3                     665- 668   ///
      int    E_CCS4                     669- 672   ///
      int    E_CCS5                     673- 676   ///
      int    E_CCS6                     677- 680   ///
      str    E_POA1                     681        ///
      str    E_POA2                     682        ///
      str    E_POA3                     683        ///
      str    E_POA4                     684        ///
      str    E_POA5                     685        ///
      str    E_POA6                     686        ///
      str    ECODE1                     687- 693   ///
      str    ECODE2                     694- 700   ///
      str    ECODE3                     701- 707   ///
      str    ECODE4                     708- 714   ///
      str    ECODE5                     715- 721   ///
      str    ECODE6                     722- 728   ///
      byte   FEMALE                     729- 730   ///
      byte   HCUP_ED                    731- 732   ///
      byte   HCUP_OS                    733- 734   ///
      byte   HISPANIC                   735- 736   ///
      str    HISPANIC_X                 737        ///
      int    HOSPBRTH                   738- 740   ///
      byte   HospitalUnit               741- 742   ///
      str    HOSPST                     743- 744   ///
      double KEY                        745- 759   ///
      long   LOS                        760- 764   ///
      long   LOS_X                      765- 770   ///
      byte   MDC                        771- 772   ///
      byte   MDC_NoPOA                  773- 774   ///
      byte   MDC32                      775- 776   ///
      long   MDNUM1_R                   777- 785   ///
      long   MDNUM2_R                   786- 794   ///
      long   MDNUM3_R                   795- 803   ///
      byte   MEDINCSTQ                  804- 805   ///
      long   MRN_R                      806- 814   ///
      int    NCHRONIC                   815- 817   ///
      int    NDX                        818- 820   ///
      byte   NECODE                     821- 822   ///
      byte   NEOMAT                     823- 824   ///
      int    NPR                        825- 827   ///
      byte   ORPROC                     828- 829   ///
      str    P7EDSRC_X                  830- 831   ///
      byte   PAY1                       832- 833   ///
      str    PAY1_X                     834- 837   ///
      byte   PAY2                       838- 839   ///
      str    PAY2_X                     840- 843   ///
      byte   PAY3                       844- 845   ///
      str    PAY3_X                     846- 849   ///
      int    PL_CBSA                    850- 852   ///
      byte   PL_NCHS                    853- 854   ///
      byte   PL_RUCC                    855- 856   ///
      byte   PL_UIC                     857- 858   ///
      byte   PL_UR_CAT4                 859- 860   ///
      byte   POA_Disch_Edit1            861- 862   ///
      byte   POA_Disch_Edit2            863- 864   ///
      byte   POA_Hosp_Edit1             865- 866   ///
      byte   POA_Hosp_Edit2             867- 868   ///
      byte   POA_Hosp_Edit3             869- 870   ///
      double POA_Hosp_Edit3_Value       871- 878   ///
      str    PointOfOrigin_X            879        ///
      str    PointOfOriginUB04          880        ///
      str    PR1                        881- 887   ///
      str    PR2                        888- 894   ///
      str    PR3                        895- 901   ///
      str    PR4                        902- 908   ///
      str    PR5                        909- 915   ///
      str    PR6                        916- 922   ///
      str    PR7                        923- 929   ///
      str    PR8                        930- 936   ///
      str    PR9                        937- 943   ///
      str    PR10                       944- 950   ///
      str    PR11                       951- 957   ///
      str    PR12                       958- 964   ///
      str    PR13                       965- 971   ///
      str    PR14                       972- 978   ///
      str    PR15                       979- 985   ///
      str    PR16                       986- 992   ///
      str    PR17                       993- 999   ///
      str    PR18                      1000-1006   ///
      str    PR19                      1007-1013   ///
      str    PR20                      1014-1020   ///
      str    PR21                      1021-1027   ///
      str    PR22                      1028-1034   ///
      str    PR23                      1035-1041   ///
      str    PR24                      1042-1048   ///
      str    PR25                      1049-1055   ///
      str    PR26                      1056-1062   ///
      str    PR27                      1063-1069   ///
      str    PR28                      1070-1076   ///
      str    PR29                      1077-1083   ///
      str    PR30                      1084-1090   ///
      str    PR31                      1091-1097   ///
      str    PR32                      1098-1104   ///
      str    PR33                      1105-1111   ///
      str    PR34                      1112-1118   ///
      str    PR35                      1119-1125   ///
      int    PRCCS1                    1126-1128   ///
      int    PRCCS2                    1129-1131   ///
      int    PRCCS3                    1132-1134   ///
      int    PRCCS4                    1135-1137   ///
      int    PRCCS5                    1138-1140   ///
      int    PRCCS6                    1141-1143   ///
      int    PRCCS7                    1144-1146   ///
      int    PRCCS8                    1147-1149   ///
      int    PRCCS9                    1150-1152   ///
      int    PRCCS10                   1153-1155   ///
      int    PRCCS11                   1156-1158   ///
      int    PRCCS12                   1159-1161   ///
      int    PRCCS13                   1162-1164   ///
      int    PRCCS14                   1165-1167   ///
      int    PRCCS15                   1168-1170   ///
      int    PRCCS16                   1171-1173   ///
      int    PRCCS17                   1174-1176   ///
      int    PRCCS18                   1177-1179   ///
      int    PRCCS19                   1180-1182   ///
      int    PRCCS20                   1183-1185   ///
      int    PRCCS21                   1186-1188   ///
      int    PRCCS22                   1189-1191   ///
      int    PRCCS23                   1192-1194   ///
      int    PRCCS24                   1195-1197   ///
      int    PRCCS25                   1198-1200   ///
      int    PRCCS26                   1201-1203   ///
      int    PRCCS27                   1204-1206   ///
      int    PRCCS28                   1207-1209   ///
      int    PRCCS29                   1210-1212   ///
      int    PRCCS30                   1213-1215   ///
      int    PRCCS31                   1216-1218   ///
      int    PRCCS32                   1219-1221   ///
      int    PRCCS33                   1222-1224   ///
      int    PRCCS34                   1225-1227   ///
      int    PRCCS35                   1228-1230   ///
      long   PRDAY1                    1231-1235   ///
      long   PRDAY2                    1236-1240   ///
      long   PRDAY3                    1241-1245   ///
      long   PRDAY4                    1246-1250   ///
      long   PRDAY5                    1251-1255   ///
      long   PRDAY6                    1256-1260   ///
      long   PRDAY7                    1261-1265   ///
      long   PRDAY8                    1266-1270   ///
      long   PRDAY9                    1271-1275   ///
      long   PRDAY10                   1276-1280   ///
      long   PRDAY11                   1281-1285   ///
      long   PRDAY12                   1286-1290   ///
      long   PRDAY13                   1291-1295   ///
      long   PRDAY14                   1296-1300   ///
      long   PRDAY15                   1301-1305   ///
      long   PRDAY16                   1306-1310   ///
      long   PRDAY17                   1311-1315   ///
      long   PRDAY18                   1316-1320   ///
      long   PRDAY19                   1321-1325   ///
      long   PRDAY20                   1326-1330   ///
      long   PRDAY21                   1331-1335   ///
      long   PRDAY22                   1336-1340   ///
      long   PRDAY23                   1341-1345   ///
      long   PRDAY24                   1346-1350   ///
      long   PRDAY25                   1351-1355   ///
      long   PRDAY26                   1356-1360   ///
      long   PRDAY27                   1361-1365   ///
      long   PRDAY28                   1366-1370   ///
      long   PRDAY29                   1371-1375   ///
      long   PRDAY30                   1376-1380   ///
      long   PRDAY31                   1381-1385   ///
      long   PRDAY32                   1386-1390   ///
      long   PRDAY33                   1391-1395   ///
      long   PRDAY34                   1396-1400   ///
      long   PRDAY35                   1401-1405   ///
      int    PROCTYPE                  1406-1408   ///
      int    PRVER                     1409-1411   ///
      str    PSTATE                    1412-1413   ///
      long   PSTCO                     1414-1418   ///
      long   PSTCO2                    1419-1423   ///
      byte   RACE                      1424-1425   ///
      str    RACE_X                    1426-1429   ///
      byte   SERVICELINE               1430-1431   ///
      double TOTCHG                    1432-1441   ///
      double TOTCHG_X                  1442-1456   ///
      byte   TRAN_IN                   1457-1458   ///
      byte   TRAN_OUT                  1459-1460   ///
      long   VisitLink                 1461-1469   ///
      int    YEAR                      1470-1473   ///
      str    ZIP                       1474-1478   ///
      str    ZIP3                      1479-1481   ///
      int    ZIPINC_QRTL               1482-1484   ///
      int    AYEAR                     1485-1488   ///
      byte   BMONTH                    1489-1490   ///
      int    BYEAR                     1491-1494   ///
      byte   PRMONTH1                  1495-1496   ///
      byte   PRMONTH2                  1497-1498   ///
      byte   PRMONTH3                  1499-1500   ///
      byte   PRMONTH4                  1501-1502   ///
      byte   PRMONTH5                  1503-1504   ///
      byte   PRMONTH6                  1505-1506   ///
      byte   PRMONTH7                  1507-1508   ///
      byte   PRMONTH8                  1509-1510   ///
      byte   PRMONTH9                  1511-1512   ///
      byte   PRMONTH10                 1513-1514   ///
      byte   PRMONTH11                 1515-1516   ///
      byte   PRMONTH12                 1517-1518   ///
      byte   PRMONTH13                 1519-1520   ///
      byte   PRMONTH14                 1521-1522   ///
      byte   PRMONTH15                 1523-1524   ///
      byte   PRMONTH16                 1525-1526   ///
      byte   PRMONTH17                 1527-1528   ///
      byte   PRMONTH18                 1529-1530   ///
      byte   PRMONTH19                 1531-1532   ///
      byte   PRMONTH20                 1533-1534   ///
      byte   PRMONTH21                 1535-1536   ///
      byte   PRMONTH22                 1537-1538   ///
      byte   PRMONTH23                 1539-1540   ///
      byte   PRMONTH24                 1541-1542   ///
      byte   PRMONTH25                 1543-1544   ///
      byte   PRMONTH26                 1545-1546   ///
      byte   PRMONTH27                 1547-1548   ///
      byte   PRMONTH28                 1549-1550   ///
      byte   PRMONTH29                 1551-1552   ///
      byte   PRMONTH30                 1553-1554   ///
      byte   PRMONTH31                 1555-1556   ///
      byte   PRMONTH32                 1557-1558   ///
      byte   PRMONTH33                 1559-1560   ///
      byte   PRMONTH34                 1561-1562   ///
      byte   PRMONTH35                 1563-1564   ///
      int    PRYEAR1                   1565-1568   ///
      int    PRYEAR2                   1569-1572   ///
      int    PRYEAR3                   1573-1576   ///
      int    PRYEAR4                   1577-1580   ///
      int    PRYEAR5                   1581-1584   ///
      int    PRYEAR6                   1585-1588   ///
      int    PRYEAR7                   1589-1592   ///
      int    PRYEAR8                   1593-1596   ///
      int    PRYEAR9                   1597-1600   ///
      int    PRYEAR10                  1601-1604   ///
      int    PRYEAR11                  1605-1608   ///
      int    PRYEAR12                  1609-1612   ///
      int    PRYEAR13                  1613-1616   ///
      int    PRYEAR14                  1617-1620   ///
      int    PRYEAR15                  1621-1624   ///
      int    PRYEAR16                  1625-1628   ///
      int    PRYEAR17                  1629-1632   ///
      int    PRYEAR18                  1633-1636   ///
      int    PRYEAR19                  1637-1640   ///
      int    PRYEAR20                  1641-1644   ///
      int    PRYEAR21                  1645-1648   ///
      int    PRYEAR22                  1649-1652   ///
      int    PRYEAR23                  1653-1656   ///
      int    PRYEAR24                  1657-1660   ///
      int    PRYEAR25                  1661-1664   ///
      int    PRYEAR26                  1665-1668   ///
      int    PRYEAR27                  1669-1672   ///
      int    PRYEAR28                  1673-1676   ///
      int    PRYEAR29                  1677-1680   ///
      int    PRYEAR30                  1681-1684   ///
      int    PRYEAR31                  1685-1688   ///
      int    PRYEAR32                  1689-1692   ///
      int    PRYEAR33                  1693-1696   ///
      int    PRYEAR34                  1697-1700   ///
      int    PRYEAR35                  1701-1704   ///
      using  "IA_SID_2015q1q3_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var DaysToEvent              "Days from 'start date' to admission"
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
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HospitalUnit             "Patient was discharged from a special unit within an acute care hospital (reported by source)"
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
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var NCHRONIC                 "Number of chronic conditions"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
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

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
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
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDC32                     (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
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

save "IA_SID_2015q1q3_CORE.dta", replace
