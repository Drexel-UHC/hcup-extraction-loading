/*****************************************************************************
* Creation Date: 03/17/2017   
* IA_SID_2015q4_CORE.Do
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
      str    DXPOA1                      47        ///
      str    DXPOA2                      48        ///
      str    DXPOA3                      49        ///
      str    DXPOA4                      50        ///
      str    DXPOA5                      51        ///
      str    DXPOA6                      52        ///
      str    DXPOA7                      53        ///
      str    DXPOA8                      54        ///
      str    DXPOA9                      55        ///
      str    DXPOA10                     56        ///
      str    DXPOA11                     57        ///
      str    DXPOA12                     58        ///
      str    DXPOA13                     59        ///
      str    DXPOA14                     60        ///
      str    DXPOA15                     61        ///
      str    DXPOA16                     62        ///
      str    DXPOA17                     63        ///
      str    DXPOA18                     64        ///
      str    DXPOA19                     65        ///
      str    DXPOA20                     66        ///
      str    DXPOA21                     67        ///
      str    DXPOA22                     68        ///
      str    DXPOA23                     69        ///
      str    DXPOA24                     70        ///
      str    DXPOA25                     71        ///
      str    DXPOA26                     72        ///
      str    DXPOA27                     73        ///
      str    DXPOA28                     74        ///
      str    DXPOA29                     75        ///
      str    DXPOA30                     76        ///
      str    DXPOA31                     77        ///
      str    DXPOA32                     78        ///
      str    DXPOA33                     79        ///
      str    DXPOA34                     80        ///
      str    DXPOA35                     81        ///
      str    DXPOA36                     82        ///
      str    DXPOA37                     83        ///
      str    DXPOA38                     84        ///
      str    DXPOA39                     85        ///
      str    DXPOA40                     86        ///
      str    DXPOA41                     87        ///
      str    DXPOA42                     88        ///
      str    DXPOA43                     89        ///
      str    DXPOA44                     90        ///
      str    DXPOA45                     91        ///
      str    DXPOA46                     92        ///
      str    DXPOA47                     93        ///
      str    DXPOA48                     94        ///
      str    DXPOA49                     95        ///
      str    DXPOA50                     96        ///
      int    DXVER                       97-  99   ///
      str    E_POA1                     100        ///
      str    E_POA2                     101        ///
      str    E_POA3                     102        ///
      str    E_POA4                     103        ///
      str    E_POA5                     104        ///
      str    E_POA6                     105        ///
      byte   FEMALE                     106- 107   ///
      byte   HCUP_ED                    108- 109   ///
      byte   HCUP_OS                    110- 111   ///
      byte   HISPANIC                   112- 113   ///
      str    HISPANIC_X                 114        ///
      byte   HospitalUnit               115- 116   ///
      str    HOSPST                     117- 118   ///
      str    I10_DX_Admitting           119- 125   ///
      str    I10_DX1                    126- 132   ///
      str    I10_DX2                    133- 139   ///
      str    I10_DX3                    140- 146   ///
      str    I10_DX4                    147- 153   ///
      str    I10_DX5                    154- 160   ///
      str    I10_DX6                    161- 167   ///
      str    I10_DX7                    168- 174   ///
      str    I10_DX8                    175- 181   ///
      str    I10_DX9                    182- 188   ///
      str    I10_DX10                   189- 195   ///
      str    I10_DX11                   196- 202   ///
      str    I10_DX12                   203- 209   ///
      str    I10_DX13                   210- 216   ///
      str    I10_DX14                   217- 223   ///
      str    I10_DX15                   224- 230   ///
      str    I10_DX16                   231- 237   ///
      str    I10_DX17                   238- 244   ///
      str    I10_DX18                   245- 251   ///
      str    I10_DX19                   252- 258   ///
      str    I10_DX20                   259- 265   ///
      str    I10_DX21                   266- 272   ///
      str    I10_DX22                   273- 279   ///
      str    I10_DX23                   280- 286   ///
      str    I10_DX24                   287- 293   ///
      str    I10_DX25                   294- 300   ///
      str    I10_DX26                   301- 307   ///
      str    I10_DX27                   308- 314   ///
      str    I10_DX28                   315- 321   ///
      str    I10_DX29                   322- 328   ///
      str    I10_DX30                   329- 335   ///
      str    I10_DX31                   336- 342   ///
      str    I10_DX32                   343- 349   ///
      str    I10_DX33                   350- 356   ///
      str    I10_DX34                   357- 363   ///
      str    I10_DX35                   364- 370   ///
      str    I10_DX36                   371- 377   ///
      str    I10_DX37                   378- 384   ///
      str    I10_DX38                   385- 391   ///
      str    I10_DX39                   392- 398   ///
      str    I10_DX40                   399- 405   ///
      str    I10_DX41                   406- 412   ///
      str    I10_DX42                   413- 419   ///
      str    I10_DX43                   420- 426   ///
      str    I10_DX44                   427- 433   ///
      str    I10_DX45                   434- 440   ///
      str    I10_DX46                   441- 447   ///
      str    I10_DX47                   448- 454   ///
      str    I10_DX48                   455- 461   ///
      str    I10_DX49                   462- 468   ///
      str    I10_DX50                   469- 475   ///
      int    I10_DXCCS1                 476- 479   ///
      int    I10_DXCCS2                 480- 483   ///
      int    I10_DXCCS3                 484- 487   ///
      int    I10_DXCCS4                 488- 491   ///
      int    I10_DXCCS5                 492- 495   ///
      int    I10_DXCCS6                 496- 499   ///
      int    I10_DXCCS7                 500- 503   ///
      int    I10_DXCCS8                 504- 507   ///
      int    I10_DXCCS9                 508- 511   ///
      int    I10_DXCCS10                512- 515   ///
      int    I10_DXCCS11                516- 519   ///
      int    I10_DXCCS12                520- 523   ///
      int    I10_DXCCS13                524- 527   ///
      int    I10_DXCCS14                528- 531   ///
      int    I10_DXCCS15                532- 535   ///
      int    I10_DXCCS16                536- 539   ///
      int    I10_DXCCS17                540- 543   ///
      int    I10_DXCCS18                544- 547   ///
      int    I10_DXCCS19                548- 551   ///
      int    I10_DXCCS20                552- 555   ///
      int    I10_DXCCS21                556- 559   ///
      int    I10_DXCCS22                560- 563   ///
      int    I10_DXCCS23                564- 567   ///
      int    I10_DXCCS24                568- 571   ///
      int    I10_DXCCS25                572- 575   ///
      int    I10_DXCCS26                576- 579   ///
      int    I10_DXCCS27                580- 583   ///
      int    I10_DXCCS28                584- 587   ///
      int    I10_DXCCS29                588- 591   ///
      int    I10_DXCCS30                592- 595   ///
      int    I10_DXCCS31                596- 599   ///
      int    I10_DXCCS32                600- 603   ///
      int    I10_DXCCS33                604- 607   ///
      int    I10_DXCCS34                608- 611   ///
      int    I10_DXCCS35                612- 615   ///
      int    I10_DXCCS36                616- 619   ///
      int    I10_DXCCS37                620- 623   ///
      int    I10_DXCCS38                624- 627   ///
      int    I10_DXCCS39                628- 631   ///
      int    I10_DXCCS40                632- 635   ///
      int    I10_DXCCS41                636- 639   ///
      int    I10_DXCCS42                640- 643   ///
      int    I10_DXCCS43                644- 647   ///
      int    I10_DXCCS44                648- 651   ///
      int    I10_DXCCS45                652- 655   ///
      int    I10_DXCCS46                656- 659   ///
      int    I10_DXCCS47                660- 663   ///
      int    I10_DXCCS48                664- 667   ///
      int    I10_DXCCS49                668- 671   ///
      int    I10_DXCCS50                672- 675   ///
      str    I10_ECAUSE1                676- 682   ///
      str    I10_ECAUSE2                683- 689   ///
      str    I10_ECAUSE3                690- 696   ///
      str    I10_ECAUSE4                697- 703   ///
      str    I10_ECAUSE5                704- 710   ///
      str    I10_ECAUSE6                711- 717   ///
      int    I10_ECauseCCS1             718- 721   ///
      int    I10_ECauseCCS2             722- 725   ///
      int    I10_ECauseCCS3             726- 729   ///
      int    I10_ECauseCCS4             730- 733   ///
      int    I10_ECauseCCS5             734- 737   ///
      int    I10_ECauseCCS6             738- 741   ///
      int    I10_HOSPBRTH               742- 744   ///
      int    I10_NCHRONIC               745- 747   ///
      int    I10_NDX                    748- 750   ///
      byte   I10_NECAUSE                751- 752   ///
      byte   I10_NEOMAT                 753- 754   ///
      int    I10_NPR                    755- 757   ///
      byte   I10_ORPROC                 758- 759   ///
      str    I10_PR1                    760- 766   ///
      str    I10_PR2                    767- 773   ///
      str    I10_PR3                    774- 780   ///
      str    I10_PR4                    781- 787   ///
      str    I10_PR5                    788- 794   ///
      str    I10_PR6                    795- 801   ///
      str    I10_PR7                    802- 808   ///
      str    I10_PR8                    809- 815   ///
      str    I10_PR9                    816- 822   ///
      str    I10_PR10                   823- 829   ///
      str    I10_PR11                   830- 836   ///
      str    I10_PR12                   837- 843   ///
      str    I10_PR13                   844- 850   ///
      str    I10_PR14                   851- 857   ///
      str    I10_PR15                   858- 864   ///
      str    I10_PR16                   865- 871   ///
      str    I10_PR17                   872- 878   ///
      str    I10_PR18                   879- 885   ///
      str    I10_PR19                   886- 892   ///
      str    I10_PR20                   893- 899   ///
      str    I10_PR21                   900- 906   ///
      str    I10_PR22                   907- 913   ///
      str    I10_PR23                   914- 920   ///
      str    I10_PR24                   921- 927   ///
      str    I10_PR25                   928- 934   ///
      str    I10_PR26                   935- 941   ///
      str    I10_PR27                   942- 948   ///
      str    I10_PR28                   949- 955   ///
      str    I10_PR29                   956- 962   ///
      str    I10_PR30                   963- 969   ///
      str    I10_PR31                   970- 976   ///
      str    I10_PR32                   977- 983   ///
      str    I10_PR33                   984- 990   ///
      str    I10_PR34                   991- 997   ///
      str    I10_PR35                   998-1004   ///
      int    I10_PRCCS1                1005-1007   ///
      int    I10_PRCCS2                1008-1010   ///
      int    I10_PRCCS3                1011-1013   ///
      int    I10_PRCCS4                1014-1016   ///
      int    I10_PRCCS5                1017-1019   ///
      int    I10_PRCCS6                1020-1022   ///
      int    I10_PRCCS7                1023-1025   ///
      int    I10_PRCCS8                1026-1028   ///
      int    I10_PRCCS9                1029-1031   ///
      int    I10_PRCCS10               1032-1034   ///
      int    I10_PRCCS11               1035-1037   ///
      int    I10_PRCCS12               1038-1040   ///
      int    I10_PRCCS13               1041-1043   ///
      int    I10_PRCCS14               1044-1046   ///
      int    I10_PRCCS15               1047-1049   ///
      int    I10_PRCCS16               1050-1052   ///
      int    I10_PRCCS17               1053-1055   ///
      int    I10_PRCCS18               1056-1058   ///
      int    I10_PRCCS19               1059-1061   ///
      int    I10_PRCCS20               1062-1064   ///
      int    I10_PRCCS21               1065-1067   ///
      int    I10_PRCCS22               1068-1070   ///
      int    I10_PRCCS23               1071-1073   ///
      int    I10_PRCCS24               1074-1076   ///
      int    I10_PRCCS25               1077-1079   ///
      int    I10_PRCCS26               1080-1082   ///
      int    I10_PRCCS27               1083-1085   ///
      int    I10_PRCCS28               1086-1088   ///
      int    I10_PRCCS29               1089-1091   ///
      int    I10_PRCCS30               1092-1094   ///
      int    I10_PRCCS31               1095-1097   ///
      int    I10_PRCCS32               1098-1100   ///
      int    I10_PRCCS33               1101-1103   ///
      int    I10_PRCCS34               1104-1106   ///
      int    I10_PRCCS35               1107-1109   ///
      int    I10_PROCTYPE              1110-1112   ///
      byte   I10_SERVICELINE           1113-1114   ///
      double KEY                       1115-1129   ///
      long   LOS                       1130-1134   ///
      long   LOS_X                     1135-1140   ///
      byte   MDC                       1141-1142   ///
      byte   MDC_NoPOA                 1143-1144   ///
      byte   MDC32                     1145-1146   ///
      long   MDNUM1_R                  1147-1155   ///
      long   MDNUM2_R                  1156-1164   ///
      long   MDNUM3_R                  1165-1173   ///
      byte   MEDINCSTQ                 1174-1175   ///
      long   MRN_R                     1176-1184   ///
      str    P7EDSRC_X                 1185-1186   ///
      byte   PAY1                      1187-1188   ///
      str    PAY1_X                    1189-1192   ///
      byte   PAY2                      1193-1194   ///
      str    PAY2_X                    1195-1198   ///
      byte   PAY3                      1199-1200   ///
      str    PAY3_X                    1201-1204   ///
      int    PL_CBSA                   1205-1207   ///
      byte   PL_NCHS                   1208-1209   ///
      byte   PL_RUCC                   1210-1211   ///
      byte   PL_UIC                    1212-1213   ///
      byte   PL_UR_CAT4                1214-1215   ///
      byte   POA_Disch_Edit1           1216-1217   ///
      byte   POA_Disch_Edit2           1218-1219   ///
      byte   POA_Hosp_Edit1            1220-1221   ///
      byte   POA_Hosp_Edit2            1222-1223   ///
      byte   POA_Hosp_Edit3            1224-1225   ///
      double POA_Hosp_Edit3_Value      1226-1233   ///
      str    PointOfOrigin_X           1234        ///
      str    PointOfOriginUB04         1235        ///
      long   PRDAY1                    1236-1240   ///
      long   PRDAY2                    1241-1245   ///
      long   PRDAY3                    1246-1250   ///
      long   PRDAY4                    1251-1255   ///
      long   PRDAY5                    1256-1260   ///
      long   PRDAY6                    1261-1265   ///
      long   PRDAY7                    1266-1270   ///
      long   PRDAY8                    1271-1275   ///
      long   PRDAY9                    1276-1280   ///
      long   PRDAY10                   1281-1285   ///
      long   PRDAY11                   1286-1290   ///
      long   PRDAY12                   1291-1295   ///
      long   PRDAY13                   1296-1300   ///
      long   PRDAY14                   1301-1305   ///
      long   PRDAY15                   1306-1310   ///
      long   PRDAY16                   1311-1315   ///
      long   PRDAY17                   1316-1320   ///
      long   PRDAY18                   1321-1325   ///
      long   PRDAY19                   1326-1330   ///
      long   PRDAY20                   1331-1335   ///
      long   PRDAY21                   1336-1340   ///
      long   PRDAY22                   1341-1345   ///
      long   PRDAY23                   1346-1350   ///
      long   PRDAY24                   1351-1355   ///
      long   PRDAY25                   1356-1360   ///
      long   PRDAY26                   1361-1365   ///
      long   PRDAY27                   1366-1370   ///
      long   PRDAY28                   1371-1375   ///
      long   PRDAY29                   1376-1380   ///
      long   PRDAY30                   1381-1385   ///
      long   PRDAY31                   1386-1390   ///
      long   PRDAY32                   1391-1395   ///
      long   PRDAY33                   1396-1400   ///
      long   PRDAY34                   1401-1405   ///
      long   PRDAY35                   1406-1410   ///
      int    PRVER                     1411-1413   ///
      str    PSTATE                    1414-1415   ///
      long   PSTCO                     1416-1420   ///
      long   PSTCO2                    1421-1425   ///
      byte   RACE                      1426-1427   ///
      str    RACE_X                    1428-1431   ///
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
      using  "IA_SID_2015q4_CORE.ASC"

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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HospitalUnit             "Patient was discharged from a special unit within an acute care hospital (reported by source)"
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
label var I10_ECauseCCS1           "ICD-10-CM CCS: E Cause 1"
label var I10_ECauseCCS2           "ICD-10-CM CCS: E Cause 2"
label var I10_ECauseCCS3           "ICD-10-CM CCS: E Cause 3"
label var I10_ECauseCCS4           "ICD-10-CM CCS: E Cause 4"
label var I10_ECauseCCS5           "ICD-10-CM CCS: E Cause 5"
label var I10_ECauseCCS6           "ICD-10-CM CCS: E Cause 6"
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
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
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
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
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

save "IA_SID_2015q4_CORE.dta", replace
