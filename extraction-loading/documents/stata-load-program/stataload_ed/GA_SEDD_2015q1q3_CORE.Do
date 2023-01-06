/*****************************************************************************
* Creation Date: 04/19/2018   
* GA_SEDD_2015q1q3_CORE.Do
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
      str    DX1                        588- 594   ///
      str    DX2                        595- 601   ///
      str    DX3                        602- 608   ///
      str    DX4                        609- 615   ///
      str    DX5                        616- 622   ///
      str    DX6                        623- 629   ///
      str    DX7                        630- 636   ///
      str    DX8                        637- 643   ///
      str    DX9                        644- 650   ///
      str    DX10                       651- 657   ///
      str    DX11                       658- 664   ///
      str    DX12                       665- 671   ///
      str    DX13                       672- 678   ///
      str    DX14                       679- 685   ///
      str    DX15                       686- 692   ///
      str    DX16                       693- 699   ///
      str    DX17                       700- 706   ///
      str    DX18                       707- 713   ///
      str    DX19                       714- 720   ///
      str    DX20                       721- 727   ///
      str    DX21                       728- 734   ///
      str    DX22                       735- 741   ///
      str    DX23                       742- 748   ///
      str    DX24                       749- 755   ///
      str    DX25                       756- 762   ///
      str    DX26                       763- 769   ///
      str    DX27                       770- 776   ///
      str    DX28                       777- 783   ///
      str    DX29                       784- 790   ///
      str    DX30                       791- 797   ///
      str    DX31                       798- 804   ///
      str    DX32                       805- 811   ///
      str    DX33                       812- 818   ///
      str    DX34                       819- 825   ///
      str    DX35                       826- 832   ///
      str    DX36                       833- 839   ///
      str    DX37                       840- 846   ///
      str    DX38                       847- 853   ///
      str    DX39                       854- 860   ///
      str    DX40                       861- 867   ///
      str    DX41                       868- 874   ///
      str    DX42                       875- 881   ///
      str    DX43                       882- 888   ///
      str    DX44                       889- 895   ///
      str    DX45                       896- 902   ///
      str    DX46                       903- 909   ///
      str    DX47                       910- 916   ///
      str    DX48                       917- 923   ///
      str    DX49                       924- 930   ///
      str    DX50                       931- 937   ///
      int    DXCCS1                     938- 941   ///
      int    DXCCS2                     942- 945   ///
      int    DXCCS3                     946- 949   ///
      int    DXCCS4                     950- 953   ///
      int    DXCCS5                     954- 957   ///
      int    DXCCS6                     958- 961   ///
      int    DXCCS7                     962- 965   ///
      int    DXCCS8                     966- 969   ///
      int    DXCCS9                     970- 973   ///
      int    DXCCS10                    974- 977   ///
      int    DXCCS11                    978- 981   ///
      int    DXCCS12                    982- 985   ///
      int    DXCCS13                    986- 989   ///
      int    DXCCS14                    990- 993   ///
      int    DXCCS15                    994- 997   ///
      int    DXCCS16                    998-1001   ///
      int    DXCCS17                   1002-1005   ///
      int    DXCCS18                   1006-1009   ///
      int    DXCCS19                   1010-1013   ///
      int    DXCCS20                   1014-1017   ///
      int    DXCCS21                   1018-1021   ///
      int    DXCCS22                   1022-1025   ///
      int    DXCCS23                   1026-1029   ///
      int    DXCCS24                   1030-1033   ///
      int    DXCCS25                   1034-1037   ///
      int    DXCCS26                   1038-1041   ///
      int    DXCCS27                   1042-1045   ///
      int    DXCCS28                   1046-1049   ///
      int    DXCCS29                   1050-1053   ///
      int    DXCCS30                   1054-1057   ///
      int    DXCCS31                   1058-1061   ///
      int    DXCCS32                   1062-1065   ///
      int    DXCCS33                   1066-1069   ///
      int    DXCCS34                   1070-1073   ///
      int    DXCCS35                   1074-1077   ///
      int    DXCCS36                   1078-1081   ///
      int    DXCCS37                   1082-1085   ///
      int    DXCCS38                   1086-1089   ///
      int    DXCCS39                   1090-1093   ///
      int    DXCCS40                   1094-1097   ///
      int    DXCCS41                   1098-1101   ///
      int    DXCCS42                   1102-1105   ///
      int    DXCCS43                   1106-1109   ///
      int    DXCCS44                   1110-1113   ///
      int    DXCCS45                   1114-1117   ///
      int    DXCCS46                   1118-1121   ///
      int    DXCCS47                   1122-1125   ///
      int    DXCCS48                   1126-1129   ///
      int    DXCCS49                   1130-1133   ///
      int    DXCCS50                   1134-1137   ///
      str    DXPOA1                    1138        ///
      str    DXPOA2                    1139        ///
      str    DXPOA3                    1140        ///
      str    DXPOA4                    1141        ///
      str    DXPOA5                    1142        ///
      str    DXPOA6                    1143        ///
      str    DXPOA7                    1144        ///
      str    DXPOA8                    1145        ///
      str    DXPOA9                    1146        ///
      str    DXPOA10                   1147        ///
      str    DXPOA11                   1148        ///
      str    DXPOA12                   1149        ///
      str    DXPOA13                   1150        ///
      str    DXPOA14                   1151        ///
      str    DXPOA15                   1152        ///
      str    DXPOA16                   1153        ///
      str    DXPOA17                   1154        ///
      str    DXPOA18                   1155        ///
      str    DXPOA19                   1156        ///
      str    DXPOA20                   1157        ///
      str    DXPOA21                   1158        ///
      str    DXPOA22                   1159        ///
      str    DXPOA23                   1160        ///
      str    DXPOA24                   1161        ///
      str    DXPOA25                   1162        ///
      str    DXPOA26                   1163        ///
      str    DXPOA27                   1164        ///
      str    DXPOA28                   1165        ///
      str    DXPOA29                   1166        ///
      str    DXPOA30                   1167        ///
      str    DXPOA31                   1168        ///
      str    DXPOA32                   1169        ///
      str    DXPOA33                   1170        ///
      str    DXPOA34                   1171        ///
      str    DXPOA35                   1172        ///
      str    DXPOA36                   1173        ///
      str    DXPOA37                   1174        ///
      str    DXPOA38                   1175        ///
      str    DXPOA39                   1176        ///
      str    DXPOA40                   1177        ///
      str    DXPOA41                   1178        ///
      str    DXPOA42                   1179        ///
      str    DXPOA43                   1180        ///
      str    DXPOA44                   1181        ///
      str    DXPOA45                   1182        ///
      str    DXPOA46                   1183        ///
      str    DXPOA47                   1184        ///
      str    DXPOA48                   1185        ///
      str    DXPOA49                   1186        ///
      str    DXPOA50                   1187        ///
      int    DXVER                     1188-1190   ///
      int    E_CCS1                    1191-1194   ///
      int    E_CCS2                    1195-1198   ///
      int    E_CCS3                    1199-1202   ///
      int    E_CCS4                    1203-1206   ///
      int    E_CCS5                    1207-1210   ///
      int    E_CCS6                    1211-1214   ///
      int    E_CCS7                    1215-1218   ///
      int    E_CCS8                    1219-1222   ///
      int    E_CCS9                    1223-1226   ///
      int    E_CCS10                   1227-1230   ///
      str    E_POA1                    1231        ///
      str    E_POA2                    1232        ///
      str    E_POA3                    1233        ///
      str    E_POA4                    1234        ///
      str    E_POA5                    1235        ///
      str    E_POA6                    1236        ///
      str    E_POA7                    1237        ///
      str    E_POA8                    1238        ///
      str    E_POA9                    1239        ///
      str    E_POA10                   1240        ///
      str    ECODE1                    1241-1247   ///
      str    ECODE2                    1248-1254   ///
      str    ECODE3                    1255-1261   ///
      str    ECODE4                    1262-1268   ///
      str    ECODE5                    1269-1275   ///
      str    ECODE6                    1276-1282   ///
      str    ECODE7                    1283-1289   ///
      str    ECODE8                    1290-1296   ///
      str    ECODE9                    1297-1303   ///
      str    ECODE10                   1304-1310   ///
      byte   FEMALE                    1311-1312   ///
      byte   HCUP_ED                   1313-1314   ///
      byte   HCUP_OS                   1315-1316   ///
      byte   HISPANIC                  1317-1318   ///
      str    HISPANIC_X                1319        ///
      byte   Homeless                  1320-1321   ///
      int    HOSPBRTH                  1322-1324   ///
      str    HOSPST                    1325-1326   ///
      double KEY                       1327-1341   ///
      long   LOS                       1342-1346   ///
      long   LOS_X                     1347-1352   ///
      str    MARITALSTATUS_X           1353        ///
      str    MARITALSTATUSUB04         1354        ///
      long   MDNUM1_R                  1355-1363   ///
      long   MDNUM2_R                  1364-1372   ///
      long   MDNUM3_R                  1373-1381   ///
      long   MDNUM4_R                  1382-1390   ///
      byte   MEDINCSTQ                 1391-1392   ///
      int    NCHRONIC                  1393-1395   ///
      int    NCPT                      1396-1399   ///
      int    NDX                       1400-1402   ///
      byte   NECODE                    1403-1404   ///
      byte   NEOMAT                    1405-1406   ///
      int    NPR                       1407-1409   ///
      str    OPservice                 1410-1411   ///
      byte   ORPROC                    1412-1413   ///
      double OS_TIME                   1414-1424   ///
      byte   PAY1                      1425-1426   ///
      str    PAY1_X                    1427-1430   ///
      byte   PAY2                      1431-1432   ///
      str    PAY2_X                    1433-1436   ///
      byte   PAY3                      1437-1438   ///
      str    PAY3_X                    1439-1442   ///
      int    PL_CBSA                   1443-1445   ///
      byte   PL_NCHS                   1446-1447   ///
      byte   PL_RUCC                   1448-1449   ///
      byte   PL_UIC                    1450-1451   ///
      byte   PL_UR_CAT4                1452-1453   ///
      byte   POA_Disch_Edit1           1454-1455   ///
      byte   POA_Disch_Edit2           1456-1457   ///
      byte   POA_Hosp_Edit1            1458-1459   ///
      byte   POA_Hosp_Edit2            1460-1461   ///
      byte   POA_Hosp_Edit3            1462-1463   ///
      double POA_Hosp_Edit3_Value      1464-1471   ///
      str    PointOfOrigin_X           1472        ///
      str    PointOfOriginUB04         1473        ///
      str    PR1                       1474-1480   ///
      str    PR2                       1481-1487   ///
      str    PR3                       1488-1494   ///
      str    PR4                       1495-1501   ///
      str    PR5                       1502-1508   ///
      str    PR6                       1509-1515   ///
      str    PR7                       1516-1522   ///
      str    PR8                       1523-1529   ///
      str    PR9                       1530-1536   ///
      str    PR10                      1537-1543   ///
      str    PR11                      1544-1550   ///
      str    PR12                      1551-1557   ///
      str    PR13                      1558-1564   ///
      str    PR14                      1565-1571   ///
      str    PR15                      1572-1578   ///
      str    PR16                      1579-1585   ///
      str    PR17                      1586-1592   ///
      str    PR18                      1593-1599   ///
      str    PR19                      1600-1606   ///
      str    PR20                      1607-1613   ///
      str    PR21                      1614-1620   ///
      str    PR22                      1621-1627   ///
      str    PR23                      1628-1634   ///
      str    PR24                      1635-1641   ///
      str    PR25                      1642-1648   ///
      int    PRCCS1                    1649-1651   ///
      int    PRCCS2                    1652-1654   ///
      int    PRCCS3                    1655-1657   ///
      int    PRCCS4                    1658-1660   ///
      int    PRCCS5                    1661-1663   ///
      int    PRCCS6                    1664-1666   ///
      int    PRCCS7                    1667-1669   ///
      int    PRCCS8                    1670-1672   ///
      int    PRCCS9                    1673-1675   ///
      int    PRCCS10                   1676-1678   ///
      int    PRCCS11                   1679-1681   ///
      int    PRCCS12                   1682-1684   ///
      int    PRCCS13                   1685-1687   ///
      int    PRCCS14                   1688-1690   ///
      int    PRCCS15                   1691-1693   ///
      int    PRCCS16                   1694-1696   ///
      int    PRCCS17                   1697-1699   ///
      int    PRCCS18                   1700-1702   ///
      int    PRCCS19                   1703-1705   ///
      int    PRCCS20                   1706-1708   ///
      int    PRCCS21                   1709-1711   ///
      int    PRCCS22                   1712-1714   ///
      int    PRCCS23                   1715-1717   ///
      int    PRCCS24                   1718-1720   ///
      int    PRCCS25                   1721-1723   ///
      long   PRDAY1                    1724-1728   ///
      long   PRDAY2                    1729-1733   ///
      long   PRDAY3                    1734-1738   ///
      long   PRDAY4                    1739-1743   ///
      long   PRDAY5                    1744-1748   ///
      long   PRDAY6                    1749-1753   ///
      long   PRDAY7                    1754-1758   ///
      long   PRDAY8                    1759-1763   ///
      long   PRDAY9                    1764-1768   ///
      long   PRDAY10                   1769-1773   ///
      long   PRDAY11                   1774-1778   ///
      long   PRDAY12                   1779-1783   ///
      long   PRDAY13                   1784-1788   ///
      long   PRDAY14                   1789-1793   ///
      long   PRDAY15                   1794-1798   ///
      long   PRDAY16                   1799-1803   ///
      long   PRDAY17                   1804-1808   ///
      long   PRDAY18                   1809-1813   ///
      long   PRDAY19                   1814-1818   ///
      long   PRDAY20                   1819-1823   ///
      long   PRDAY21                   1824-1828   ///
      long   PRDAY22                   1829-1833   ///
      long   PRDAY23                   1834-1838   ///
      long   PRDAY24                   1839-1843   ///
      long   PRDAY25                   1844-1848   ///
      int    PROCTYPE                  1849-1851   ///
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
      using  "GA_SEDD_2015q1q3_CORE.ASC"

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
label var E_CCS8                   "CCS: E Code 8"
label var E_CCS9                   "CCS: E Code 9"
label var E_CCS10                  "CCS: E Code 10"
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var E_POA7                   "E Code 7, present on admission indicator"
label var E_POA8                   "E Code 8, present on admission indicator"
label var E_POA9                   "E Code 9, present on admission indicator"
label var E_POA10                  "E Code 10, present on admission indicator"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var ECODE8                   "E code 8"
label var ECODE9                   "E code 9"
label var ECODE10                  "E code 10"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
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
label var NCHRONIC                 "Number of chronic conditions"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var OPservice                "Indicator of outpatient service (as received from source)"
label var ORPROC                   "Major operating room procedure indicator"
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
label var PROCTYPE                 "Procedure type indicator"
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
recode E_CCS8                    (-999 -888 -666=.)
recode E_CCS9                    (-999 -888 -666=.)
recode E_CCS10                   (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM4_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NCPT                      (-999 -888 -666=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
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
recode PROCTYPE                  (-99 -88 -66=.)
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

save "GA_SEDD_2015q1q3_CORE.dta", replace
