/*****************************************************************************
* Creation Date: 04/19/2018   
* GA_SEDD_2015q4_CORE.Do
* This program will load the 2015 GA ASCII CORE File into Stata.
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
      str    BILLTYPE                    16-  19   ///
      str    CPT1                        20-  24   ///
      str    CPT2                        25-  29   ///
      str    CPT3                        30-  34   ///
      str    CPT4                        35-  39   ///
      str    CPT5                        40-  44   ///
      str    CPT6                        45-  49   ///
      str    CPT7                        50-  54   ///
      str    CPT8                        55-  59   ///
      str    CPT9                        60-  64   ///
      str    CPT10                       65-  69   ///
      str    CPT11                       70-  74   ///
      str    CPT12                       75-  79   ///
      str    CPT13                       80-  84   ///
      str    CPT14                       85-  89   ///
      str    CPT15                       90-  94   ///
      str    CPT16                       95-  99   ///
      str    CPT17                      100- 104   ///
      str    CPT18                      105- 109   ///
      str    CPT19                      110- 114   ///
      str    CPT20                      115- 119   ///
      str    CPT21                      120- 124   ///
      str    CPT22                      125- 129   ///
      str    CPT23                      130- 134   ///
      str    CPT24                      135- 139   ///
      str    CPT25                      140- 144   ///
      str    CPT26                      145- 149   ///
      str    CPT27                      150- 154   ///
      str    CPT28                      155- 159   ///
      str    CPT29                      160- 164   ///
      str    CPT30                      165- 169   ///
      str    CPT31                      170- 174   ///
      str    CPT32                      175- 179   ///
      str    CPT33                      180- 184   ///
      str    CPT34                      185- 189   ///
      str    CPT35                      190- 194   ///
      str    CPT36                      195- 199   ///
      str    CPT37                      200- 204   ///
      str    CPT38                      205- 209   ///
      str    CPT39                      210- 214   ///
      str    CPT40                      215- 219   ///
      str    CPT41                      220- 224   ///
      str    CPT42                      225- 229   ///
      str    CPT43                      230- 234   ///
      str    CPT44                      235- 239   ///
      str    CPT45                      240- 244   ///
      str    CPT46                      245- 249   ///
      str    CPT47                      250- 254   ///
      str    CPT48                      255- 259   ///
      str    CPT49                      260- 264   ///
      str    CPT50                      265- 269   ///
      int    CPTCCS1                    270- 272   ///
      int    CPTCCS2                    273- 275   ///
      int    CPTCCS3                    276- 278   ///
      int    CPTCCS4                    279- 281   ///
      int    CPTCCS5                    282- 284   ///
      int    CPTCCS6                    285- 287   ///
      int    CPTCCS7                    288- 290   ///
      int    CPTCCS8                    291- 293   ///
      int    CPTCCS9                    294- 296   ///
      int    CPTCCS10                   297- 299   ///
      int    CPTCCS11                   300- 302   ///
      int    CPTCCS12                   303- 305   ///
      int    CPTCCS13                   306- 308   ///
      int    CPTCCS14                   309- 311   ///
      int    CPTCCS15                   312- 314   ///
      int    CPTCCS16                   315- 317   ///
      int    CPTCCS17                   318- 320   ///
      int    CPTCCS18                   321- 323   ///
      int    CPTCCS19                   324- 326   ///
      int    CPTCCS20                   327- 329   ///
      int    CPTCCS21                   330- 332   ///
      int    CPTCCS22                   333- 335   ///
      int    CPTCCS23                   336- 338   ///
      int    CPTCCS24                   339- 341   ///
      int    CPTCCS25                   342- 344   ///
      int    CPTCCS26                   345- 347   ///
      int    CPTCCS27                   348- 350   ///
      int    CPTCCS28                   351- 353   ///
      int    CPTCCS29                   354- 356   ///
      int    CPTCCS30                   357- 359   ///
      int    CPTCCS31                   360- 362   ///
      int    CPTCCS32                   363- 365   ///
      int    CPTCCS33                   366- 368   ///
      int    CPTCCS34                   369- 371   ///
      int    CPTCCS35                   372- 374   ///
      int    CPTCCS36                   375- 377   ///
      int    CPTCCS37                   378- 380   ///
      int    CPTCCS38                   381- 383   ///
      int    CPTCCS39                   384- 386   ///
      int    CPTCCS40                   387- 389   ///
      int    CPTCCS41                   390- 392   ///
      int    CPTCCS42                   393- 395   ///
      int    CPTCCS43                   396- 398   ///
      int    CPTCCS44                   399- 401   ///
      int    CPTCCS45                   402- 404   ///
      int    CPTCCS46                   405- 407   ///
      int    CPTCCS47                   408- 410   ///
      int    CPTCCS48                   411- 413   ///
      int    CPTCCS49                   414- 416   ///
      int    CPTCCS50                   417- 419   ///
      int    CPTDAY1                    420- 422   ///
      int    CPTDAY2                    423- 425   ///
      int    CPTDAY3                    426- 428   ///
      int    CPTDAY4                    429- 431   ///
      int    CPTDAY5                    432- 434   ///
      int    CPTDAY6                    435- 437   ///
      int    CPTDAY7                    438- 440   ///
      int    CPTDAY8                    441- 443   ///
      int    CPTDAY9                    444- 446   ///
      int    CPTDAY10                   447- 449   ///
      int    CPTDAY11                   450- 452   ///
      int    CPTDAY12                   453- 455   ///
      int    CPTDAY13                   456- 458   ///
      int    CPTDAY14                   459- 461   ///
      int    CPTDAY15                   462- 464   ///
      int    CPTDAY16                   465- 467   ///
      int    CPTDAY17                   468- 470   ///
      int    CPTDAY18                   471- 473   ///
      int    CPTDAY19                   474- 476   ///
      int    CPTDAY20                   477- 479   ///
      int    CPTDAY21                   480- 482   ///
      int    CPTDAY22                   483- 485   ///
      int    CPTDAY23                   486- 488   ///
      int    CPTDAY24                   489- 491   ///
      int    CPTDAY25                   492- 494   ///
      int    CPTDAY26                   495- 497   ///
      int    CPTDAY27                   498- 500   ///
      int    CPTDAY28                   501- 503   ///
      int    CPTDAY29                   504- 506   ///
      int    CPTDAY30                   507- 509   ///
      int    CPTDAY31                   510- 512   ///
      int    CPTDAY32                   513- 515   ///
      int    CPTDAY33                   516- 518   ///
      int    CPTDAY34                   519- 521   ///
      int    CPTDAY35                   522- 524   ///
      int    CPTDAY36                   525- 527   ///
      int    CPTDAY37                   528- 530   ///
      int    CPTDAY38                   531- 533   ///
      int    CPTDAY39                   534- 536   ///
      int    CPTDAY40                   537- 539   ///
      int    CPTDAY41                   540- 542   ///
      int    CPTDAY42                   543- 545   ///
      int    CPTDAY43                   546- 548   ///
      int    CPTDAY44                   549- 551   ///
      int    CPTDAY45                   552- 554   ///
      int    CPTDAY46                   555- 557   ///
      int    CPTDAY47                   558- 560   ///
      int    CPTDAY48                   561- 563   ///
      int    CPTDAY49                   564- 566   ///
      int    CPTDAY50                   567- 569   ///
      long   DaysToEvent                570- 575   ///
      byte   DIED                       576- 577   ///
      str    DISP_X                     578- 579   ///
      byte   DISPUB04                   580- 581   ///
      byte   DISPUNIFORM                582- 583   ///
      byte   DMONTH                     584- 585   ///
      byte   DQTR                       586- 587   ///
      str    DXPOA1                     588        ///
      str    DXPOA2                     589        ///
      str    DXPOA3                     590        ///
      str    DXPOA4                     591        ///
      str    DXPOA5                     592        ///
      str    DXPOA6                     593        ///
      str    DXPOA7                     594        ///
      str    DXPOA8                     595        ///
      str    DXPOA9                     596        ///
      str    DXPOA10                    597        ///
      str    DXPOA11                    598        ///
      str    DXPOA12                    599        ///
      str    DXPOA13                    600        ///
      str    DXPOA14                    601        ///
      str    DXPOA15                    602        ///
      str    DXPOA16                    603        ///
      str    DXPOA17                    604        ///
      str    DXPOA18                    605        ///
      str    DXPOA19                    606        ///
      str    DXPOA20                    607        ///
      str    DXPOA21                    608        ///
      str    DXPOA22                    609        ///
      str    DXPOA23                    610        ///
      str    DXPOA24                    611        ///
      str    DXPOA25                    612        ///
      str    DXPOA26                    613        ///
      str    DXPOA27                    614        ///
      str    DXPOA28                    615        ///
      str    DXPOA29                    616        ///
      str    DXPOA30                    617        ///
      str    DXPOA31                    618        ///
      str    DXPOA32                    619        ///
      str    DXPOA33                    620        ///
      str    DXPOA34                    621        ///
      str    DXPOA35                    622        ///
      str    DXPOA36                    623        ///
      str    DXPOA37                    624        ///
      str    DXPOA38                    625        ///
      str    DXPOA39                    626        ///
      str    DXPOA40                    627        ///
      str    DXPOA41                    628        ///
      str    DXPOA42                    629        ///
      str    DXPOA43                    630        ///
      str    DXPOA44                    631        ///
      str    DXPOA45                    632        ///
      str    DXPOA46                    633        ///
      str    DXPOA47                    634        ///
      str    DXPOA48                    635        ///
      str    DXPOA49                    636        ///
      str    DXPOA50                    637        ///
      int    DXVER                      638- 640   ///
      str    E_POA1                     641        ///
      str    E_POA2                     642        ///
      str    E_POA3                     643        ///
      str    E_POA4                     644        ///
      str    E_POA5                     645        ///
      str    E_POA6                     646        ///
      str    E_POA7                     647        ///
      str    E_POA8                     648        ///
      str    E_POA9                     649        ///
      str    E_POA10                    650        ///
      byte   FEMALE                     651- 652   ///
      byte   HCUP_ED                    653- 654   ///
      byte   HCUP_OS                    655- 656   ///
      byte   HISPANIC                   657- 658   ///
      str    HISPANIC_X                 659        ///
      byte   Homeless                   660- 661   ///
      str    HOSPST                     662- 663   ///
      str    I10_DX1                    664- 670   ///
      str    I10_DX2                    671- 677   ///
      str    I10_DX3                    678- 684   ///
      str    I10_DX4                    685- 691   ///
      str    I10_DX5                    692- 698   ///
      str    I10_DX6                    699- 705   ///
      str    I10_DX7                    706- 712   ///
      str    I10_DX8                    713- 719   ///
      str    I10_DX9                    720- 726   ///
      str    I10_DX10                   727- 733   ///
      str    I10_DX11                   734- 740   ///
      str    I10_DX12                   741- 747   ///
      str    I10_DX13                   748- 754   ///
      str    I10_DX14                   755- 761   ///
      str    I10_DX15                   762- 768   ///
      str    I10_DX16                   769- 775   ///
      str    I10_DX17                   776- 782   ///
      str    I10_DX18                   783- 789   ///
      str    I10_DX19                   790- 796   ///
      str    I10_DX20                   797- 803   ///
      str    I10_DX21                   804- 810   ///
      str    I10_DX22                   811- 817   ///
      str    I10_DX23                   818- 824   ///
      str    I10_DX24                   825- 831   ///
      str    I10_DX25                   832- 838   ///
      str    I10_DX26                   839- 845   ///
      str    I10_DX27                   846- 852   ///
      str    I10_DX28                   853- 859   ///
      str    I10_DX29                   860- 866   ///
      str    I10_DX30                   867- 873   ///
      str    I10_DX31                   874- 880   ///
      str    I10_DX32                   881- 887   ///
      str    I10_DX33                   888- 894   ///
      str    I10_DX34                   895- 901   ///
      str    I10_DX35                   902- 908   ///
      str    I10_DX36                   909- 915   ///
      str    I10_DX37                   916- 922   ///
      str    I10_DX38                   923- 929   ///
      str    I10_DX39                   930- 936   ///
      str    I10_DX40                   937- 943   ///
      str    I10_DX41                   944- 950   ///
      str    I10_DX42                   951- 957   ///
      str    I10_DX43                   958- 964   ///
      str    I10_DX44                   965- 971   ///
      str    I10_DX45                   972- 978   ///
      str    I10_DX46                   979- 985   ///
      str    I10_DX47                   986- 992   ///
      str    I10_DX48                   993- 999   ///
      str    I10_DX49                  1000-1006   ///
      str    I10_DX50                  1007-1013   ///
      int    I10_DXCCS1                1014-1017   ///
      int    I10_DXCCS2                1018-1021   ///
      int    I10_DXCCS3                1022-1025   ///
      int    I10_DXCCS4                1026-1029   ///
      int    I10_DXCCS5                1030-1033   ///
      int    I10_DXCCS6                1034-1037   ///
      int    I10_DXCCS7                1038-1041   ///
      int    I10_DXCCS8                1042-1045   ///
      int    I10_DXCCS9                1046-1049   ///
      int    I10_DXCCS10               1050-1053   ///
      int    I10_DXCCS11               1054-1057   ///
      int    I10_DXCCS12               1058-1061   ///
      int    I10_DXCCS13               1062-1065   ///
      int    I10_DXCCS14               1066-1069   ///
      int    I10_DXCCS15               1070-1073   ///
      int    I10_DXCCS16               1074-1077   ///
      int    I10_DXCCS17               1078-1081   ///
      int    I10_DXCCS18               1082-1085   ///
      int    I10_DXCCS19               1086-1089   ///
      int    I10_DXCCS20               1090-1093   ///
      int    I10_DXCCS21               1094-1097   ///
      int    I10_DXCCS22               1098-1101   ///
      int    I10_DXCCS23               1102-1105   ///
      int    I10_DXCCS24               1106-1109   ///
      int    I10_DXCCS25               1110-1113   ///
      int    I10_DXCCS26               1114-1117   ///
      int    I10_DXCCS27               1118-1121   ///
      int    I10_DXCCS28               1122-1125   ///
      int    I10_DXCCS29               1126-1129   ///
      int    I10_DXCCS30               1130-1133   ///
      int    I10_DXCCS31               1134-1137   ///
      int    I10_DXCCS32               1138-1141   ///
      int    I10_DXCCS33               1142-1145   ///
      int    I10_DXCCS34               1146-1149   ///
      int    I10_DXCCS35               1150-1153   ///
      int    I10_DXCCS36               1154-1157   ///
      int    I10_DXCCS37               1158-1161   ///
      int    I10_DXCCS38               1162-1165   ///
      int    I10_DXCCS39               1166-1169   ///
      int    I10_DXCCS40               1170-1173   ///
      int    I10_DXCCS41               1174-1177   ///
      int    I10_DXCCS42               1178-1181   ///
      int    I10_DXCCS43               1182-1185   ///
      int    I10_DXCCS44               1186-1189   ///
      int    I10_DXCCS45               1190-1193   ///
      int    I10_DXCCS46               1194-1197   ///
      int    I10_DXCCS47               1198-1201   ///
      int    I10_DXCCS48               1202-1205   ///
      int    I10_DXCCS49               1206-1209   ///
      int    I10_DXCCS50               1210-1213   ///
      str    I10_ECAUSE1               1214-1220   ///
      str    I10_ECAUSE2               1221-1227   ///
      str    I10_ECAUSE3               1228-1234   ///
      str    I10_ECAUSE4               1235-1241   ///
      str    I10_ECAUSE5               1242-1248   ///
      str    I10_ECAUSE6               1249-1255   ///
      str    I10_ECAUSE7               1256-1262   ///
      str    I10_ECAUSE8               1263-1269   ///
      str    I10_ECAUSE9               1270-1276   ///
      str    I10_ECAUSE10              1277-1283   ///
      int    I10_ECauseCCS1            1284-1287   ///
      int    I10_ECauseCCS2            1288-1291   ///
      int    I10_ECauseCCS3            1292-1295   ///
      int    I10_ECauseCCS4            1296-1299   ///
      int    I10_ECauseCCS5            1300-1303   ///
      int    I10_ECauseCCS6            1304-1307   ///
      int    I10_ECauseCCS7            1308-1311   ///
      int    I10_ECauseCCS8            1312-1315   ///
      int    I10_ECauseCCS9            1316-1319   ///
      int    I10_ECauseCCS10           1320-1323   ///
      int    I10_HOSPBRTH              1324-1326   ///
      int    I10_NCHRONIC              1327-1329   ///
      int    I10_NDX                   1330-1332   ///
      byte   I10_NECAUSE               1333-1334   ///
      byte   I10_NEOMAT                1335-1336   ///
      int    I10_NPR                   1337-1339   ///
      byte   I10_ORPROC                1340-1341   ///
      str    I10_PR1                   1342-1348   ///
      str    I10_PR2                   1349-1355   ///
      str    I10_PR3                   1356-1362   ///
      str    I10_PR4                   1363-1369   ///
      str    I10_PR5                   1370-1376   ///
      str    I10_PR6                   1377-1383   ///
      str    I10_PR7                   1384-1390   ///
      str    I10_PR8                   1391-1397   ///
      str    I10_PR9                   1398-1404   ///
      str    I10_PR10                  1405-1411   ///
      str    I10_PR11                  1412-1418   ///
      str    I10_PR12                  1419-1425   ///
      str    I10_PR13                  1426-1432   ///
      str    I10_PR14                  1433-1439   ///
      str    I10_PR15                  1440-1446   ///
      str    I10_PR16                  1447-1453   ///
      str    I10_PR17                  1454-1460   ///
      str    I10_PR18                  1461-1467   ///
      str    I10_PR19                  1468-1474   ///
      str    I10_PR20                  1475-1481   ///
      str    I10_PR21                  1482-1488   ///
      str    I10_PR22                  1489-1495   ///
      str    I10_PR23                  1496-1502   ///
      str    I10_PR24                  1503-1509   ///
      str    I10_PR25                  1510-1516   ///
      int    I10_PRCCS1                1517-1519   ///
      int    I10_PRCCS2                1520-1522   ///
      int    I10_PRCCS3                1523-1525   ///
      int    I10_PRCCS4                1526-1528   ///
      int    I10_PRCCS5                1529-1531   ///
      int    I10_PRCCS6                1532-1534   ///
      int    I10_PRCCS7                1535-1537   ///
      int    I10_PRCCS8                1538-1540   ///
      int    I10_PRCCS9                1541-1543   ///
      int    I10_PRCCS10               1544-1546   ///
      int    I10_PRCCS11               1547-1549   ///
      int    I10_PRCCS12               1550-1552   ///
      int    I10_PRCCS13               1553-1555   ///
      int    I10_PRCCS14               1556-1558   ///
      int    I10_PRCCS15               1559-1561   ///
      int    I10_PRCCS16               1562-1564   ///
      int    I10_PRCCS17               1565-1567   ///
      int    I10_PRCCS18               1568-1570   ///
      int    I10_PRCCS19               1571-1573   ///
      int    I10_PRCCS20               1574-1576   ///
      int    I10_PRCCS21               1577-1579   ///
      int    I10_PRCCS22               1580-1582   ///
      int    I10_PRCCS23               1583-1585   ///
      int    I10_PRCCS24               1586-1588   ///
      int    I10_PRCCS25               1589-1591   ///
      int    I10_PROCTYPE              1592-1594   ///
      double KEY                       1595-1609   ///
      long   LOS                       1610-1614   ///
      long   LOS_X                     1615-1620   ///
      str    MARITALSTATUS_X           1621        ///
      str    MARITALSTATUSUB04         1622        ///
      long   MDNUM1_R                  1623-1631   ///
      long   MDNUM2_R                  1632-1640   ///
      long   MDNUM3_R                  1641-1649   ///
      long   MDNUM4_R                  1650-1658   ///
      byte   MEDINCSTQ                 1659-1660   ///
      int    NCPT                      1661-1664   ///
      str    OPservice                 1665-1666   ///
      double OS_TIME                   1667-1677   ///
      byte   PAY1                      1678-1679   ///
      str    PAY1_X                    1680-1683   ///
      byte   PAY2                      1684-1685   ///
      str    PAY2_X                    1686-1689   ///
      byte   PAY3                      1690-1691   ///
      str    PAY3_X                    1692-1695   ///
      int    PL_CBSA                   1696-1698   ///
      byte   PL_NCHS                   1699-1700   ///
      byte   PL_RUCC                   1701-1702   ///
      byte   PL_UIC                    1703-1704   ///
      byte   PL_UR_CAT4                1705-1706   ///
      byte   POA_Disch_Edit1           1707-1708   ///
      byte   POA_Disch_Edit2           1709-1710   ///
      byte   POA_Hosp_Edit1            1711-1712   ///
      byte   POA_Hosp_Edit2            1713-1714   ///
      byte   POA_Hosp_Edit3            1715-1716   ///
      double POA_Hosp_Edit3_Value      1717-1724   ///
      str    PointOfOrigin_X           1725        ///
      str    PointOfOriginUB04         1726        ///
      long   PRDAY1                    1727-1731   ///
      long   PRDAY2                    1732-1736   ///
      long   PRDAY3                    1737-1741   ///
      long   PRDAY4                    1742-1746   ///
      long   PRDAY5                    1747-1751   ///
      long   PRDAY6                    1752-1756   ///
      long   PRDAY7                    1757-1761   ///
      long   PRDAY8                    1762-1766   ///
      long   PRDAY9                    1767-1771   ///
      long   PRDAY10                   1772-1776   ///
      long   PRDAY11                   1777-1781   ///
      long   PRDAY12                   1782-1786   ///
      long   PRDAY13                   1787-1791   ///
      long   PRDAY14                   1792-1796   ///
      long   PRDAY15                   1797-1801   ///
      long   PRDAY16                   1802-1806   ///
      long   PRDAY17                   1807-1811   ///
      long   PRDAY18                   1812-1816   ///
      long   PRDAY19                   1817-1821   ///
      long   PRDAY20                   1822-1826   ///
      long   PRDAY21                   1827-1831   ///
      long   PRDAY22                   1832-1836   ///
      long   PRDAY23                   1837-1841   ///
      long   PRDAY24                   1842-1846   ///
      long   PRDAY25                   1847-1851   ///
      int    PRVER                     1852-1854   ///
      str    PSTATE                    1855-1856   ///
      long   PSTCO                     1857-1861   ///
      long   PSTCO2                    1862-1866   ///
      byte   RACE                      1867-1868   ///
      str    RACE_X                    1869        ///
      byte   STATE_AS                  1870-1871   ///
      byte   STATE_ED                  1872-1873   ///
      byte   STATE_OS                  1874-1875   ///
      double TOTCHG                    1876-1885   ///
      double TOTCHG_X                  1886-1900   ///
      long   VisitLink                 1901-1909   ///
      int    YEAR                      1910-1913   ///
      str    ZIP                       1914-1918   ///
      str    ZIP3                      1919-1921   ///
      int    ZIPINC_QRTL               1922-1924   ///
      long   HOSPID                    1925-1929   ///
      int    AYEAR                     1930-1933   ///
      byte   BMONTH                    1934-1935   ///
      int    BYEAR                     1936-1939   ///
      byte   PRMONTH1                  1940-1941   ///
      byte   PRMONTH2                  1942-1943   ///
      byte   PRMONTH3                  1944-1945   ///
      byte   PRMONTH4                  1946-1947   ///
      byte   PRMONTH5                  1948-1949   ///
      byte   PRMONTH6                  1950-1951   ///
      byte   PRMONTH7                  1952-1953   ///
      byte   PRMONTH8                  1954-1955   ///
      byte   PRMONTH9                  1956-1957   ///
      byte   PRMONTH10                 1958-1959   ///
      byte   PRMONTH11                 1960-1961   ///
      byte   PRMONTH12                 1962-1963   ///
      byte   PRMONTH13                 1964-1965   ///
      byte   PRMONTH14                 1966-1967   ///
      byte   PRMONTH15                 1968-1969   ///
      byte   PRMONTH16                 1970-1971   ///
      byte   PRMONTH17                 1972-1973   ///
      byte   PRMONTH18                 1974-1975   ///
      byte   PRMONTH19                 1976-1977   ///
      byte   PRMONTH20                 1978-1979   ///
      byte   PRMONTH21                 1980-1981   ///
      byte   PRMONTH22                 1982-1983   ///
      byte   PRMONTH23                 1984-1985   ///
      byte   PRMONTH24                 1986-1987   ///
      byte   PRMONTH25                 1988-1989   ///
      int    PRYEAR1                   1990-1993   ///
      int    PRYEAR2                   1994-1997   ///
      int    PRYEAR3                   1998-2001   ///
      int    PRYEAR4                   2002-2005   ///
      int    PRYEAR5                   2006-2009   ///
      int    PRYEAR6                   2010-2013   ///
      int    PRYEAR7                   2014-2017   ///
      int    PRYEAR8                   2018-2021   ///
      int    PRYEAR9                   2022-2025   ///
      int    PRYEAR10                  2026-2029   ///
      int    PRYEAR11                  2030-2033   ///
      int    PRYEAR12                  2034-2037   ///
      int    PRYEAR13                  2038-2041   ///
      int    PRYEAR14                  2042-2045   ///
      int    PRYEAR15                  2046-2049   ///
      int    PRYEAR16                  2050-2053   ///
      int    PRYEAR17                  2054-2057   ///
      int    PRYEAR18                  2058-2061   ///
      int    PRYEAR19                  2062-2065   ///
      int    PRYEAR20                  2066-2069   ///
      int    PRYEAR21                  2070-2073   ///
      int    PRYEAR22                  2074-2077   ///
      int    PRYEAR23                  2078-2081   ///
      int    PRYEAR24                  2082-2085   ///
      int    PRYEAR25                  2086-2089   ///
      using  "GA_SEDD_2015q4_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var CPT1                     "CPT/HCPCS procedure code 1"
label var CPT2                     "CPT/HCPCS procedure code 2"
label var CPT3                     "CPT/HCPCS procedure code 3"
label var CPT4                     "CPT/HCPCS procedure code 4"
label var CPT5                     "CPT/HCPCS procedure code 5"
label var CPT6                     "CPT/HCPCS procedure code 6"
label var CPT7                     "CPT/HCPCS procedure code 7"
label var CPT8                     "CPT/HCPCS procedure code 8"
label var CPT9                     "CPT/HCPCS procedure code 9"
label var CPT10                    "CPT/HCPCS procedure code 10"
label var CPT11                    "CPT/HCPCS procedure code 11"
label var CPT12                    "CPT/HCPCS procedure code 12"
label var CPT13                    "CPT/HCPCS procedure code 13"
label var CPT14                    "CPT/HCPCS procedure code 14"
label var CPT15                    "CPT/HCPCS procedure code 15"
label var CPT16                    "CPT/HCPCS procedure code 16"
label var CPT17                    "CPT/HCPCS procedure code 17"
label var CPT18                    "CPT/HCPCS procedure code 18"
label var CPT19                    "CPT/HCPCS procedure code 19"
label var CPT20                    "CPT/HCPCS procedure code 20"
label var CPT21                    "CPT/HCPCS procedure code 21"
label var CPT22                    "CPT/HCPCS procedure code 22"
label var CPT23                    "CPT/HCPCS procedure code 23"
label var CPT24                    "CPT/HCPCS procedure code 24"
label var CPT25                    "CPT/HCPCS procedure code 25"
label var CPT26                    "CPT/HCPCS procedure code 26"
label var CPT27                    "CPT/HCPCS procedure code 27"
label var CPT28                    "CPT/HCPCS procedure code 28"
label var CPT29                    "CPT/HCPCS procedure code 29"
label var CPT30                    "CPT/HCPCS procedure code 30"
label var CPT31                    "CPT/HCPCS procedure code 31"
label var CPT32                    "CPT/HCPCS procedure code 32"
label var CPT33                    "CPT/HCPCS procedure code 33"
label var CPT34                    "CPT/HCPCS procedure code 34"
label var CPT35                    "CPT/HCPCS procedure code 35"
label var CPT36                    "CPT/HCPCS procedure code 36"
label var CPT37                    "CPT/HCPCS procedure code 37"
label var CPT38                    "CPT/HCPCS procedure code 38"
label var CPT39                    "CPT/HCPCS procedure code 39"
label var CPT40                    "CPT/HCPCS procedure code 40"
label var CPT41                    "CPT/HCPCS procedure code 41"
label var CPT42                    "CPT/HCPCS procedure code 42"
label var CPT43                    "CPT/HCPCS procedure code 43"
label var CPT44                    "CPT/HCPCS procedure code 44"
label var CPT45                    "CPT/HCPCS procedure code 45"
label var CPT46                    "CPT/HCPCS procedure code 46"
label var CPT47                    "CPT/HCPCS procedure code 47"
label var CPT48                    "CPT/HCPCS procedure code 48"
label var CPT49                    "CPT/HCPCS procedure code 49"
label var CPT50                    "CPT/HCPCS procedure code 50"
label var CPTCCS1                  "CCS: CPT 1"
label var CPTCCS2                  "CCS: CPT 2"
label var CPTCCS3                  "CCS: CPT 3"
label var CPTCCS4                  "CCS: CPT 4"
label var CPTCCS5                  "CCS: CPT 5"
label var CPTCCS6                  "CCS: CPT 6"
label var CPTCCS7                  "CCS: CPT 7"
label var CPTCCS8                  "CCS: CPT 8"
label var CPTCCS9                  "CCS: CPT 9"
label var CPTCCS10                 "CCS: CPT 10"
label var CPTCCS11                 "CCS: CPT 11"
label var CPTCCS12                 "CCS: CPT 12"
label var CPTCCS13                 "CCS: CPT 13"
label var CPTCCS14                 "CCS: CPT 14"
label var CPTCCS15                 "CCS: CPT 15"
label var CPTCCS16                 "CCS: CPT 16"
label var CPTCCS17                 "CCS: CPT 17"
label var CPTCCS18                 "CCS: CPT 18"
label var CPTCCS19                 "CCS: CPT 19"
label var CPTCCS20                 "CCS: CPT 20"
label var CPTCCS21                 "CCS: CPT 21"
label var CPTCCS22                 "CCS: CPT 22"
label var CPTCCS23                 "CCS: CPT 23"
label var CPTCCS24                 "CCS: CPT 24"
label var CPTCCS25                 "CCS: CPT 25"
label var CPTCCS26                 "CCS: CPT 26"
label var CPTCCS27                 "CCS: CPT 27"
label var CPTCCS28                 "CCS: CPT 28"
label var CPTCCS29                 "CCS: CPT 29"
label var CPTCCS30                 "CCS: CPT 30"
label var CPTCCS31                 "CCS: CPT 31"
label var CPTCCS32                 "CCS: CPT 32"
label var CPTCCS33                 "CCS: CPT 33"
label var CPTCCS34                 "CCS: CPT 34"
label var CPTCCS35                 "CCS: CPT 35"
label var CPTCCS36                 "CCS: CPT 36"
label var CPTCCS37                 "CCS: CPT 37"
label var CPTCCS38                 "CCS: CPT 38"
label var CPTCCS39                 "CCS: CPT 39"
label var CPTCCS40                 "CCS: CPT 40"
label var CPTCCS41                 "CCS: CPT 41"
label var CPTCCS42                 "CCS: CPT 42"
label var CPTCCS43                 "CCS: CPT 43"
label var CPTCCS44                 "CCS: CPT 44"
label var CPTCCS45                 "CCS: CPT 45"
label var CPTCCS46                 "CCS: CPT 46"
label var CPTCCS47                 "CCS: CPT 47"
label var CPTCCS48                 "CCS: CPT 48"
label var CPTCCS49                 "CCS: CPT 49"
label var CPTCCS50                 "CCS: CPT 50"
label var CPTDAY1                  "Number of days from admission to CPT1"
label var CPTDAY2                  "Number of days from admission to CPT2"
label var CPTDAY3                  "Number of days from admission to CPT3"
label var CPTDAY4                  "Number of days from admission to CPT4"
label var CPTDAY5                  "Number of days from admission to CPT5"
label var CPTDAY6                  "Number of days from admission to CPT6"
label var CPTDAY7                  "Number of days from admission to CPT7"
label var CPTDAY8                  "Number of days from admission to CPT8"
label var CPTDAY9                  "Number of days from admission to CPT9"
label var CPTDAY10                 "Number of days from admission to CPT10"
label var CPTDAY11                 "Number of days from admission to CPT11"
label var CPTDAY12                 "Number of days from admission to CPT12"
label var CPTDAY13                 "Number of days from admission to CPT13"
label var CPTDAY14                 "Number of days from admission to CPT14"
label var CPTDAY15                 "Number of days from admission to CPT15"
label var CPTDAY16                 "Number of days from admission to CPT16"
label var CPTDAY17                 "Number of days from admission to CPT17"
label var CPTDAY18                 "Number of days from admission to CPT18"
label var CPTDAY19                 "Number of days from admission to CPT19"
label var CPTDAY20                 "Number of days from admission to CPT20"
label var CPTDAY21                 "Number of days from admission to CPT21"
label var CPTDAY22                 "Number of days from admission to CPT22"
label var CPTDAY23                 "Number of days from admission to CPT23"
label var CPTDAY24                 "Number of days from admission to CPT24"
label var CPTDAY25                 "Number of days from admission to CPT25"
label var CPTDAY26                 "Number of days from admission to CPT26"
label var CPTDAY27                 "Number of days from admission to CPT27"
label var CPTDAY28                 "Number of days from admission to CPT28"
label var CPTDAY29                 "Number of days from admission to CPT29"
label var CPTDAY30                 "Number of days from admission to CPT30"
label var CPTDAY31                 "Number of days from admission to CPT31"
label var CPTDAY32                 "Number of days from admission to CPT32"
label var CPTDAY33                 "Number of days from admission to CPT33"
label var CPTDAY34                 "Number of days from admission to CPT34"
label var CPTDAY35                 "Number of days from admission to CPT35"
label var CPTDAY36                 "Number of days from admission to CPT36"
label var CPTDAY37                 "Number of days from admission to CPT37"
label var CPTDAY38                 "Number of days from admission to CPT38"
label var CPTDAY39                 "Number of days from admission to CPT39"
label var CPTDAY40                 "Number of days from admission to CPT40"
label var CPTDAY41                 "Number of days from admission to CPT41"
label var CPTDAY42                 "Number of days from admission to CPT42"
label var CPTDAY43                 "Number of days from admission to CPT43"
label var CPTDAY44                 "Number of days from admission to CPT44"
label var CPTDAY45                 "Number of days from admission to CPT45"
label var CPTDAY46                 "Number of days from admission to CPT46"
label var CPTDAY47                 "Number of days from admission to CPT47"
label var CPTDAY48                 "Number of days from admission to CPT48"
label var CPTDAY49                 "Number of days from admission to CPT49"
label var CPTDAY50                 "Number of days from admission to CPT50"
label var DaysToEvent              "Days from 'start date' to admission"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
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
label var E_POA8                   "E Cause 8, present on admission indicator"
label var E_POA9                   "E Cause 9, present on admission indicator"
label var E_POA10                  "E Cause 10, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
label var HOSPST                   "Hospital state postal code"
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
label var I10_ECAUSE8              "ICD-10-CM E Cause 8"
label var I10_ECAUSE9              "ICD-10-CM E Cause 9"
label var I10_ECAUSE10             "ICD-10-CM E Cause 10"
label var I10_ECauseCCS1           "ICD-10-CM CCS: E Cause 1"
label var I10_ECauseCCS2           "ICD-10-CM CCS: E Cause 2"
label var I10_ECauseCCS3           "ICD-10-CM CCS: E Cause 3"
label var I10_ECauseCCS4           "ICD-10-CM CCS: E Cause 4"
label var I10_ECauseCCS5           "ICD-10-CM CCS: E Cause 5"
label var I10_ECauseCCS6           "ICD-10-CM CCS: E Cause 6"
label var I10_ECauseCCS7           "ICD-10-CM CCS: E Cause 7"
label var I10_ECauseCCS8           "ICD-10-CM CCS: E Cause 8"
label var I10_ECauseCCS9           "ICD-10-CM CCS: E Cause 9"
label var I10_ECauseCCS10          "ICD-10-CM CCS: E Cause 10"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MARITALSTATUS_X          "Patient's marital status (as received from source)"
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MDNUM4_R                 "Physician 4 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var OPservice                "Indicator of outpatient service (as received from source)"
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
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var STATE_AS                 "State Ambulatory Surgery service indicator"
label var STATE_ED                 "State Emergency Department service indicator"
label var STATE_OS                 "State Observation Stay service indicator"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var VisitLink                "Visit linkage variable"
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var HOSPID                   "HCUP hospital identification number"
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

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode CPTCCS1                   (-99 -88 -66=.)
recode CPTCCS2                   (-99 -88 -66=.)
recode CPTCCS3                   (-99 -88 -66=.)
recode CPTCCS4                   (-99 -88 -66=.)
recode CPTCCS5                   (-99 -88 -66=.)
recode CPTCCS6                   (-99 -88 -66=.)
recode CPTCCS7                   (-99 -88 -66=.)
recode CPTCCS8                   (-99 -88 -66=.)
recode CPTCCS9                   (-99 -88 -66=.)
recode CPTCCS10                  (-99 -88 -66=.)
recode CPTCCS11                  (-99 -88 -66=.)
recode CPTCCS12                  (-99 -88 -66=.)
recode CPTCCS13                  (-99 -88 -66=.)
recode CPTCCS14                  (-99 -88 -66=.)
recode CPTCCS15                  (-99 -88 -66=.)
recode CPTCCS16                  (-99 -88 -66=.)
recode CPTCCS17                  (-99 -88 -66=.)
recode CPTCCS18                  (-99 -88 -66=.)
recode CPTCCS19                  (-99 -88 -66=.)
recode CPTCCS20                  (-99 -88 -66=.)
recode CPTCCS21                  (-99 -88 -66=.)
recode CPTCCS22                  (-99 -88 -66=.)
recode CPTCCS23                  (-99 -88 -66=.)
recode CPTCCS24                  (-99 -88 -66=.)
recode CPTCCS25                  (-99 -88 -66=.)
recode CPTCCS26                  (-99 -88 -66=.)
recode CPTCCS27                  (-99 -88 -66=.)
recode CPTCCS28                  (-99 -88 -66=.)
recode CPTCCS29                  (-99 -88 -66=.)
recode CPTCCS30                  (-99 -88 -66=.)
recode CPTCCS31                  (-99 -88 -66=.)
recode CPTCCS32                  (-99 -88 -66=.)
recode CPTCCS33                  (-99 -88 -66=.)
recode CPTCCS34                  (-99 -88 -66=.)
recode CPTCCS35                  (-99 -88 -66=.)
recode CPTCCS36                  (-99 -88 -66=.)
recode CPTCCS37                  (-99 -88 -66=.)
recode CPTCCS38                  (-99 -88 -66=.)
recode CPTCCS39                  (-99 -88 -66=.)
recode CPTCCS40                  (-99 -88 -66=.)
recode CPTCCS41                  (-99 -88 -66=.)
recode CPTCCS42                  (-99 -88 -66=.)
recode CPTCCS43                  (-99 -88 -66=.)
recode CPTCCS44                  (-99 -88 -66=.)
recode CPTCCS45                  (-99 -88 -66=.)
recode CPTCCS46                  (-99 -88 -66=.)
recode CPTCCS47                  (-99 -88 -66=.)
recode CPTCCS48                  (-99 -88 -66=.)
recode CPTCCS49                  (-99 -88 -66=.)
recode CPTCCS50                  (-99 -88 -66=.)
recode CPTDAY1                   (-99 -88 -66=.)
recode CPTDAY2                   (-99 -88 -66=.)
recode CPTDAY3                   (-99 -88 -66=.)
recode CPTDAY4                   (-99 -88 -66=.)
recode CPTDAY5                   (-99 -88 -66=.)
recode CPTDAY6                   (-99 -88 -66=.)
recode CPTDAY7                   (-99 -88 -66=.)
recode CPTDAY8                   (-99 -88 -66=.)
recode CPTDAY9                   (-99 -88 -66=.)
recode CPTDAY10                  (-99 -88 -66=.)
recode CPTDAY11                  (-99 -88 -66=.)
recode CPTDAY12                  (-99 -88 -66=.)
recode CPTDAY13                  (-99 -88 -66=.)
recode CPTDAY14                  (-99 -88 -66=.)
recode CPTDAY15                  (-99 -88 -66=.)
recode CPTDAY16                  (-99 -88 -66=.)
recode CPTDAY17                  (-99 -88 -66=.)
recode CPTDAY18                  (-99 -88 -66=.)
recode CPTDAY19                  (-99 -88 -66=.)
recode CPTDAY20                  (-99 -88 -66=.)
recode CPTDAY21                  (-99 -88 -66=.)
recode CPTDAY22                  (-99 -88 -66=.)
recode CPTDAY23                  (-99 -88 -66=.)
recode CPTDAY24                  (-99 -88 -66=.)
recode CPTDAY25                  (-99 -88 -66=.)
recode CPTDAY26                  (-99 -88 -66=.)
recode CPTDAY27                  (-99 -88 -66=.)
recode CPTDAY28                  (-99 -88 -66=.)
recode CPTDAY29                  (-99 -88 -66=.)
recode CPTDAY30                  (-99 -88 -66=.)
recode CPTDAY31                  (-99 -88 -66=.)
recode CPTDAY32                  (-99 -88 -66=.)
recode CPTDAY33                  (-99 -88 -66=.)
recode CPTDAY34                  (-99 -88 -66=.)
recode CPTDAY35                  (-99 -88 -66=.)
recode CPTDAY36                  (-99 -88 -66=.)
recode CPTDAY37                  (-99 -88 -66=.)
recode CPTDAY38                  (-99 -88 -66=.)
recode CPTDAY39                  (-99 -88 -66=.)
recode CPTDAY40                  (-99 -88 -66=.)
recode CPTDAY41                  (-99 -88 -66=.)
recode CPTDAY42                  (-99 -88 -66=.)
recode CPTDAY43                  (-99 -88 -66=.)
recode CPTDAY44                  (-99 -88 -66=.)
recode CPTDAY45                  (-99 -88 -66=.)
recode CPTDAY46                  (-99 -88 -66=.)
recode CPTDAY47                  (-99 -88 -66=.)
recode CPTDAY48                  (-99 -88 -66=.)
recode CPTDAY49                  (-99 -88 -66=.)
recode CPTDAY50                  (-99 -88 -66=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
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
recode I10_ECauseCCS8            (-999 -888 -666=.)
recode I10_ECauseCCS9            (-999 -888 -666=.)
recode I10_ECauseCCS10           (-999 -888 -666=.)
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
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM4_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCPT                      (-999 -888 -666=.)
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
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode STATE_AS                  (-9 -8 -6 -5=.)
recode STATE_ED                  (-9 -8 -6 -5=.)
recode STATE_OS                  (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
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

save "GA_SEDD_2015q4_CORE.dta", replace
