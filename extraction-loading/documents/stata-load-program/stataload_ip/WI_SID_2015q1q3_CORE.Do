/*****************************************************************************
* Creation Date: 02/03/2017   
* WI_SID_2015q1q3_CORE.Do
* This program will load the 2015 WI ASCII CORE File into Stata.
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
      str    CPT51                      270- 274   ///
      str    CPT52                      275- 279   ///
      str    CPT53                      280- 284   ///
      int    CPTCCS1                    285- 287   ///
      int    CPTCCS2                    288- 290   ///
      int    CPTCCS3                    291- 293   ///
      int    CPTCCS4                    294- 296   ///
      int    CPTCCS5                    297- 299   ///
      int    CPTCCS6                    300- 302   ///
      int    CPTCCS7                    303- 305   ///
      int    CPTCCS8                    306- 308   ///
      int    CPTCCS9                    309- 311   ///
      int    CPTCCS10                   312- 314   ///
      int    CPTCCS11                   315- 317   ///
      int    CPTCCS12                   318- 320   ///
      int    CPTCCS13                   321- 323   ///
      int    CPTCCS14                   324- 326   ///
      int    CPTCCS15                   327- 329   ///
      int    CPTCCS16                   330- 332   ///
      int    CPTCCS17                   333- 335   ///
      int    CPTCCS18                   336- 338   ///
      int    CPTCCS19                   339- 341   ///
      int    CPTCCS20                   342- 344   ///
      int    CPTCCS21                   345- 347   ///
      int    CPTCCS22                   348- 350   ///
      int    CPTCCS23                   351- 353   ///
      int    CPTCCS24                   354- 356   ///
      int    CPTCCS25                   357- 359   ///
      int    CPTCCS26                   360- 362   ///
      int    CPTCCS27                   363- 365   ///
      int    CPTCCS28                   366- 368   ///
      int    CPTCCS29                   369- 371   ///
      int    CPTCCS30                   372- 374   ///
      int    CPTCCS31                   375- 377   ///
      int    CPTCCS32                   378- 380   ///
      int    CPTCCS33                   381- 383   ///
      int    CPTCCS34                   384- 386   ///
      int    CPTCCS35                   387- 389   ///
      int    CPTCCS36                   390- 392   ///
      int    CPTCCS37                   393- 395   ///
      int    CPTCCS38                   396- 398   ///
      int    CPTCCS39                   399- 401   ///
      int    CPTCCS40                   402- 404   ///
      int    CPTCCS41                   405- 407   ///
      int    CPTCCS42                   408- 410   ///
      int    CPTCCS43                   411- 413   ///
      int    CPTCCS44                   414- 416   ///
      int    CPTCCS45                   417- 419   ///
      int    CPTCCS46                   420- 422   ///
      int    CPTCCS47                   423- 425   ///
      int    CPTCCS48                   426- 428   ///
      int    CPTCCS49                   429- 431   ///
      int    CPTCCS50                   432- 434   ///
      int    CPTCCS51                   435- 437   ///
      int    CPTCCS52                   438- 440   ///
      int    CPTCCS53                   441- 443   ///
      long   DaysToEvent                444- 449   ///
      byte   DIED                       450- 451   ///
      str    DISP_X                     452- 453   ///
      byte   DISPUB04                   454- 455   ///
      byte   DISPUNIFORM                456- 457   ///
      byte   DMONTH                     458- 459   ///
      byte   DQTR                       460- 461   ///
      int    DRG                        462- 464   ///
      int    DRG_NoPOA                  465- 467   ///
      int    DRG32                      468- 470   ///
      byte   DRGVER                     471- 472   ///
      str    DSHOSPID                   473- 489   ///
      str    DX_Admitting               490- 496   ///
      str    DX1                        497- 503   ///
      str    DX2                        504- 510   ///
      str    DX3                        511- 517   ///
      str    DX4                        518- 524   ///
      str    DX5                        525- 531   ///
      str    DX6                        532- 538   ///
      str    DX7                        539- 545   ///
      str    DX8                        546- 552   ///
      str    DX9                        553- 559   ///
      str    DX10                       560- 566   ///
      str    DX11                       567- 573   ///
      str    DX12                       574- 580   ///
      str    DX13                       581- 587   ///
      str    DX14                       588- 594   ///
      str    DX15                       595- 601   ///
      str    DX16                       602- 608   ///
      str    DX17                       609- 615   ///
      str    DX18                       616- 622   ///
      str    DX19                       623- 629   ///
      str    DX20                       630- 636   ///
      str    DX21                       637- 643   ///
      str    DX22                       644- 650   ///
      str    DX23                       651- 657   ///
      str    DX24                       658- 664   ///
      str    DX25                       665- 671   ///
      str    DX26                       672- 678   ///
      str    DX27                       679- 685   ///
      str    DX28                       686- 692   ///
      str    DX29                       693- 699   ///
      str    DX30                       700- 706   ///
      str    DX31                       707- 713   ///
      str    DX32                       714- 720   ///
      str    DX33                       721- 727   ///
      str    DX34                       728- 734   ///
      str    DX35                       735- 741   ///
      str    DX36                       742- 748   ///
      str    DX37                       749- 755   ///
      str    DX38                       756- 762   ///
      str    DX39                       763- 769   ///
      str    DX40                       770- 776   ///
      str    DX41                       777- 783   ///
      str    DX42                       784- 790   ///
      str    DX43                       791- 797   ///
      str    DX44                       798- 804   ///
      str    DX45                       805- 811   ///
      str    DX46                       812- 818   ///
      str    DX47                       819- 825   ///
      str    DX48                       826- 832   ///
      str    DX49                       833- 839   ///
      str    DX50                       840- 846   ///
      str    DX51                       847- 853   ///
      str    DX52                       854- 860   ///
      str    DX53                       861- 867   ///
      str    DX54                       868- 874   ///
      str    DX55                       875- 881   ///
      str    DX56                       882- 888   ///
      str    DX57                       889- 895   ///
      str    DX58                       896- 902   ///
      str    DX59                       903- 909   ///
      str    DX60                       910- 916   ///
      str    DX61                       917- 923   ///
      str    DX62                       924- 930   ///
      str    DX63                       931- 937   ///
      str    DX64                       938- 944   ///
      str    DX65                       945- 951   ///
      str    DX66                       952- 958   ///
      str    DX67                       959- 965   ///
      int    DXCCS1                     966- 969   ///
      int    DXCCS2                     970- 973   ///
      int    DXCCS3                     974- 977   ///
      int    DXCCS4                     978- 981   ///
      int    DXCCS5                     982- 985   ///
      int    DXCCS6                     986- 989   ///
      int    DXCCS7                     990- 993   ///
      int    DXCCS8                     994- 997   ///
      int    DXCCS9                     998-1001   ///
      int    DXCCS10                   1002-1005   ///
      int    DXCCS11                   1006-1009   ///
      int    DXCCS12                   1010-1013   ///
      int    DXCCS13                   1014-1017   ///
      int    DXCCS14                   1018-1021   ///
      int    DXCCS15                   1022-1025   ///
      int    DXCCS16                   1026-1029   ///
      int    DXCCS17                   1030-1033   ///
      int    DXCCS18                   1034-1037   ///
      int    DXCCS19                   1038-1041   ///
      int    DXCCS20                   1042-1045   ///
      int    DXCCS21                   1046-1049   ///
      int    DXCCS22                   1050-1053   ///
      int    DXCCS23                   1054-1057   ///
      int    DXCCS24                   1058-1061   ///
      int    DXCCS25                   1062-1065   ///
      int    DXCCS26                   1066-1069   ///
      int    DXCCS27                   1070-1073   ///
      int    DXCCS28                   1074-1077   ///
      int    DXCCS29                   1078-1081   ///
      int    DXCCS30                   1082-1085   ///
      int    DXCCS31                   1086-1089   ///
      int    DXCCS32                   1090-1093   ///
      int    DXCCS33                   1094-1097   ///
      int    DXCCS34                   1098-1101   ///
      int    DXCCS35                   1102-1105   ///
      int    DXCCS36                   1106-1109   ///
      int    DXCCS37                   1110-1113   ///
      int    DXCCS38                   1114-1117   ///
      int    DXCCS39                   1118-1121   ///
      int    DXCCS40                   1122-1125   ///
      int    DXCCS41                   1126-1129   ///
      int    DXCCS42                   1130-1133   ///
      int    DXCCS43                   1134-1137   ///
      int    DXCCS44                   1138-1141   ///
      int    DXCCS45                   1142-1145   ///
      int    DXCCS46                   1146-1149   ///
      int    DXCCS47                   1150-1153   ///
      int    DXCCS48                   1154-1157   ///
      int    DXCCS49                   1158-1161   ///
      int    DXCCS50                   1162-1165   ///
      int    DXCCS51                   1166-1169   ///
      int    DXCCS52                   1170-1173   ///
      int    DXCCS53                   1174-1177   ///
      int    DXCCS54                   1178-1181   ///
      int    DXCCS55                   1182-1185   ///
      int    DXCCS56                   1186-1189   ///
      int    DXCCS57                   1190-1193   ///
      int    DXCCS58                   1194-1197   ///
      int    DXCCS59                   1198-1201   ///
      int    DXCCS60                   1202-1205   ///
      int    DXCCS61                   1206-1209   ///
      int    DXCCS62                   1210-1213   ///
      int    DXCCS63                   1214-1217   ///
      int    DXCCS64                   1218-1221   ///
      int    DXCCS65                   1222-1225   ///
      int    DXCCS66                   1226-1229   ///
      int    DXCCS67                   1230-1233   ///
      str    DXPOA1                    1234        ///
      str    DXPOA2                    1235        ///
      str    DXPOA3                    1236        ///
      str    DXPOA4                    1237        ///
      str    DXPOA5                    1238        ///
      str    DXPOA6                    1239        ///
      str    DXPOA7                    1240        ///
      str    DXPOA8                    1241        ///
      str    DXPOA9                    1242        ///
      str    DXPOA10                   1243        ///
      str    DXPOA11                   1244        ///
      str    DXPOA12                   1245        ///
      str    DXPOA13                   1246        ///
      str    DXPOA14                   1247        ///
      str    DXPOA15                   1248        ///
      str    DXPOA16                   1249        ///
      str    DXPOA17                   1250        ///
      str    DXPOA18                   1251        ///
      str    DXPOA19                   1252        ///
      str    DXPOA20                   1253        ///
      str    DXPOA21                   1254        ///
      str    DXPOA22                   1255        ///
      str    DXPOA23                   1256        ///
      str    DXPOA24                   1257        ///
      str    DXPOA25                   1258        ///
      str    DXPOA26                   1259        ///
      str    DXPOA27                   1260        ///
      str    DXPOA28                   1261        ///
      str    DXPOA29                   1262        ///
      str    DXPOA30                   1263        ///
      str    DXPOA31                   1264        ///
      str    DXPOA32                   1265        ///
      str    DXPOA33                   1266        ///
      str    DXPOA34                   1267        ///
      str    DXPOA35                   1268        ///
      str    DXPOA36                   1269        ///
      str    DXPOA37                   1270        ///
      str    DXPOA38                   1271        ///
      str    DXPOA39                   1272        ///
      str    DXPOA40                   1273        ///
      str    DXPOA41                   1274        ///
      str    DXPOA42                   1275        ///
      str    DXPOA43                   1276        ///
      str    DXPOA44                   1277        ///
      str    DXPOA45                   1278        ///
      str    DXPOA46                   1279        ///
      str    DXPOA47                   1280        ///
      str    DXPOA48                   1281        ///
      str    DXPOA49                   1282        ///
      str    DXPOA50                   1283        ///
      str    DXPOA51                   1284        ///
      str    DXPOA52                   1285        ///
      str    DXPOA53                   1286        ///
      str    DXPOA54                   1287        ///
      str    DXPOA55                   1288        ///
      str    DXPOA56                   1289        ///
      str    DXPOA57                   1290        ///
      str    DXPOA58                   1291        ///
      str    DXPOA59                   1292        ///
      str    DXPOA60                   1293        ///
      str    DXPOA61                   1294        ///
      str    DXPOA62                   1295        ///
      str    DXPOA63                   1296        ///
      str    DXPOA64                   1297        ///
      str    DXPOA65                   1298        ///
      str    DXPOA66                   1299        ///
      str    DXPOA67                   1300        ///
      int    DXVER                     1301-1303   ///
      int    E_CCS1                    1304-1307   ///
      int    E_CCS2                    1308-1311   ///
      int    E_CCS3                    1312-1315   ///
      int    E_CCS4                    1316-1319   ///
      int    E_CCS5                    1320-1323   ///
      int    E_CCS6                    1324-1327   ///
      int    E_CCS7                    1328-1331   ///
      int    E_CCS8                    1332-1335   ///
      int    E_CCS9                    1336-1339   ///
      str    E_POA1                    1340        ///
      str    E_POA2                    1341        ///
      str    E_POA3                    1342        ///
      str    E_POA4                    1343        ///
      str    E_POA5                    1344        ///
      str    E_POA6                    1345        ///
      str    E_POA7                    1346        ///
      str    E_POA8                    1347        ///
      str    E_POA9                    1348        ///
      str    ECODE1                    1349-1355   ///
      str    ECODE2                    1356-1362   ///
      str    ECODE3                    1363-1369   ///
      str    ECODE4                    1370-1376   ///
      str    ECODE5                    1377-1383   ///
      str    ECODE6                    1384-1390   ///
      str    ECODE7                    1391-1397   ///
      str    ECODE8                    1398-1404   ///
      str    ECODE9                    1405-1411   ///
      byte   FEMALE                    1412-1413   ///
      byte   HCUP_ED                   1414-1415   ///
      byte   HCUP_OS                   1416-1417   ///
      byte   HISPANIC                  1418-1419   ///
      str    HISPANIC_X                1420        ///
      byte   Homeless                  1421-1422   ///
      str    HOSP_NPI                  1423-1432   ///
      int    HOSPBRTH                  1433-1435   ///
      str    HOSPST                    1436-1437   ///
      double KEY                       1438-1452   ///
      long   LOS                       1453-1457   ///
      long   LOS_X                     1458-1463   ///
      byte   MDC                       1464-1465   ///
      byte   MDC_NoPOA                 1466-1467   ///
      byte   MDC32                     1468-1469   ///
      str    MDSPEC1                   1470-1472   ///
      str    MDSPEC2                   1473-1475   ///
      byte   MEDINCSTQ                 1476-1477   ///
      long   MRN_R                     1478-1486   ///
      int    NCHRONIC                  1487-1489   ///
      int    NCPT                      1490-1493   ///
      int    NDX                       1494-1496   ///
      byte   NECODE                    1497-1498   ///
      byte   NEOMAT                    1499-1500   ///
      int    NPR                       1501-1503   ///
      byte   ORPROC                    1504-1505   ///
      double OS_TIME                   1506-1516   ///
      byte   PAY1                      1517-1518   ///
      str    PAY1_X                    1519-1523   ///
      byte   PAY2                      1524-1525   ///
      str    PAY2_X                    1526-1530   ///
      int    PL_CBSA                   1531-1533   ///
      byte   PL_NCHS                   1534-1535   ///
      byte   PL_RUCC                   1536-1537   ///
      byte   PL_UIC                    1538-1539   ///
      byte   PL_UR_CAT4                1540-1541   ///
      byte   POA_Disch_Edit1           1542-1543   ///
      byte   POA_Disch_Edit2           1544-1545   ///
      byte   POA_Hosp_Edit1            1546-1547   ///
      byte   POA_Hosp_Edit2            1548-1549   ///
      byte   POA_Hosp_Edit3            1550-1551   ///
      double POA_Hosp_Edit3_Value      1552-1559   ///
      str    PointOfOrigin_X           1560        ///
      str    PointOfOriginUB04         1561        ///
      str    PR1                       1562-1568   ///
      str    PR2                       1569-1575   ///
      str    PR3                       1576-1582   ///
      str    PR4                       1583-1589   ///
      str    PR5                       1590-1596   ///
      str    PR6                       1597-1603   ///
      str    PR7                       1604-1610   ///
      str    PR8                       1611-1617   ///
      str    PR9                       1618-1624   ///
      str    PR10                      1625-1631   ///
      str    PR11                      1632-1638   ///
      str    PR12                      1639-1645   ///
      str    PR13                      1646-1652   ///
      str    PR14                      1653-1659   ///
      str    PR15                      1660-1666   ///
      str    PR16                      1667-1673   ///
      str    PR17                      1674-1680   ///
      str    PR18                      1681-1687   ///
      str    PR19                      1688-1694   ///
      str    PR20                      1695-1701   ///
      str    PR21                      1702-1708   ///
      str    PR22                      1709-1715   ///
      str    PR23                      1716-1722   ///
      str    PR24                      1723-1729   ///
      str    PR25                      1730-1736   ///
      str    PR26                      1737-1743   ///
      str    PR27                      1744-1750   ///
      str    PR28                      1751-1757   ///
      str    PR29                      1758-1764   ///
      str    PR30                      1765-1771   ///
      str    PR31                      1772-1778   ///
      str    PR32                      1779-1785   ///
      str    PR33                      1786-1792   ///
      str    PR34                      1793-1799   ///
      str    PR35                      1800-1806   ///
      str    PR36                      1807-1813   ///
      str    PR37                      1814-1820   ///
      str    PR38                      1821-1827   ///
      str    PR39                      1828-1834   ///
      str    PR40                      1835-1841   ///
      str    PR41                      1842-1848   ///
      str    PR42                      1849-1855   ///
      str    PR43                      1856-1862   ///
      str    PR44                      1863-1869   ///
      str    PR45                      1870-1876   ///
      str    PR46                      1877-1883   ///
      str    PR47                      1884-1890   ///
      str    PR48                      1891-1897   ///
      str    PR49                      1898-1904   ///
      str    PR50                      1905-1911   ///
      int    PRCCS1                    1912-1914   ///
      int    PRCCS2                    1915-1917   ///
      int    PRCCS3                    1918-1920   ///
      int    PRCCS4                    1921-1923   ///
      int    PRCCS5                    1924-1926   ///
      int    PRCCS6                    1927-1929   ///
      int    PRCCS7                    1930-1932   ///
      int    PRCCS8                    1933-1935   ///
      int    PRCCS9                    1936-1938   ///
      int    PRCCS10                   1939-1941   ///
      int    PRCCS11                   1942-1944   ///
      int    PRCCS12                   1945-1947   ///
      int    PRCCS13                   1948-1950   ///
      int    PRCCS14                   1951-1953   ///
      int    PRCCS15                   1954-1956   ///
      int    PRCCS16                   1957-1959   ///
      int    PRCCS17                   1960-1962   ///
      int    PRCCS18                   1963-1965   ///
      int    PRCCS19                   1966-1968   ///
      int    PRCCS20                   1969-1971   ///
      int    PRCCS21                   1972-1974   ///
      int    PRCCS22                   1975-1977   ///
      int    PRCCS23                   1978-1980   ///
      int    PRCCS24                   1981-1983   ///
      int    PRCCS25                   1984-1986   ///
      int    PRCCS26                   1987-1989   ///
      int    PRCCS27                   1990-1992   ///
      int    PRCCS28                   1993-1995   ///
      int    PRCCS29                   1996-1998   ///
      int    PRCCS30                   1999-2001   ///
      int    PRCCS31                   2002-2004   ///
      int    PRCCS32                   2005-2007   ///
      int    PRCCS33                   2008-2010   ///
      int    PRCCS34                   2011-2013   ///
      int    PRCCS35                   2014-2016   ///
      int    PRCCS36                   2017-2019   ///
      int    PRCCS37                   2020-2022   ///
      int    PRCCS38                   2023-2025   ///
      int    PRCCS39                   2026-2028   ///
      int    PRCCS40                   2029-2031   ///
      int    PRCCS41                   2032-2034   ///
      int    PRCCS42                   2035-2037   ///
      int    PRCCS43                   2038-2040   ///
      int    PRCCS44                   2041-2043   ///
      int    PRCCS45                   2044-2046   ///
      int    PRCCS46                   2047-2049   ///
      int    PRCCS47                   2050-2052   ///
      int    PRCCS48                   2053-2055   ///
      int    PRCCS49                   2056-2058   ///
      int    PRCCS50                   2059-2061   ///
      long   PRDAY1                    2062-2066   ///
      int    PROCTYPE                  2067-2069   ///
      int    PRVER                     2070-2072   ///
      str    PSTATE                    2073-2074   ///
      long   PSTCO2                    2075-2079   ///
      byte   RACE                      2080-2081   ///
      str    RACE_X                    2082-2083   ///
      byte   SERVICELINE               2084-2085   ///
      double TOTCHG                    2086-2095   ///
      double TOTCHG_X                  2096-2110   ///
      byte   TRAN_IN                   2111-2112   ///
      byte   TRAN_OUT                  2113-2114   ///
      long   VisitLink                 2115-2123   ///
      int    YEAR                      2124-2127   ///
      str    ZIP                       2128-2132   ///
      str    ZIP3                      2133-2135   ///
      int    ZIPINC_QRTL               2136-2138   ///
      int    AYEAR                     2139-2142   ///
      byte   BMONTH                    2143-2144   ///
      int    BYEAR                     2145-2148   ///
      byte   PRMONTH1                  2149-2150   ///
      int    PRYEAR1                   2151-2154   ///
      using  "WI_SID_2015q1q3_CORE.ASC"

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
label var CPT51                    "CPT/HCPCS procedure code 51"
label var CPT52                    "CPT/HCPCS procedure code 52"
label var CPT53                    "CPT/HCPCS procedure code 53"
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
label var CPTCCS51                 "CCS: CPT 51"
label var CPTCCS52                 "CCS: CPT 52"
label var CPTCCS53                 "CCS: CPT 53"
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
label var DSHOSPID                 "Data source hospital identifier"
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
label var DX51                     "Diagnosis 51"
label var DX52                     "Diagnosis 52"
label var DX53                     "Diagnosis 53"
label var DX54                     "Diagnosis 54"
label var DX55                     "Diagnosis 55"
label var DX56                     "Diagnosis 56"
label var DX57                     "Diagnosis 57"
label var DX58                     "Diagnosis 58"
label var DX59                     "Diagnosis 59"
label var DX60                     "Diagnosis 60"
label var DX61                     "Diagnosis 61"
label var DX62                     "Diagnosis 62"
label var DX63                     "Diagnosis 63"
label var DX64                     "Diagnosis 64"
label var DX65                     "Diagnosis 65"
label var DX66                     "Diagnosis 66"
label var DX67                     "Diagnosis 67"
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
label var DXCCS51                  "CCS: diagnosis 51"
label var DXCCS52                  "CCS: diagnosis 52"
label var DXCCS53                  "CCS: diagnosis 53"
label var DXCCS54                  "CCS: diagnosis 54"
label var DXCCS55                  "CCS: diagnosis 55"
label var DXCCS56                  "CCS: diagnosis 56"
label var DXCCS57                  "CCS: diagnosis 57"
label var DXCCS58                  "CCS: diagnosis 58"
label var DXCCS59                  "CCS: diagnosis 59"
label var DXCCS60                  "CCS: diagnosis 60"
label var DXCCS61                  "CCS: diagnosis 61"
label var DXCCS62                  "CCS: diagnosis 62"
label var DXCCS63                  "CCS: diagnosis 63"
label var DXCCS64                  "CCS: diagnosis 64"
label var DXCCS65                  "CCS: diagnosis 65"
label var DXCCS66                  "CCS: diagnosis 66"
label var DXCCS67                  "CCS: diagnosis 67"
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
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var E_POA7                   "E Code 7, present on admission indicator"
label var E_POA8                   "E Code 8, present on admission indicator"
label var E_POA9                   "E Code 9, present on admission indicator"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var ECODE8                   "E code 8"
label var ECODE9                   "E code 9"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
label var HOSP_NPI                 "Hospital NPI"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDC32                    "MDC, version 32"
label var MDSPEC1                  "Physician 1 specialty (as received from source)"
label var MDSPEC2                  "Physician 2 specialty (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var NCHRONIC                 "Number of chronic conditions"
label var NCPT                     "Number of CPT/HCPCS procedures on this record"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
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
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
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
label var PRYEAR1                  "Year of procedure 1"

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
recode CPTCCS51                  (-99 -88 -66=.)
recode CPTCCS52                  (-99 -88 -66=.)
recode CPTCCS53                  (-99 -88 -66=.)
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
recode DXCCS51                   (-999 -888 -666=.)
recode DXCCS52                   (-999 -888 -666=.)
recode DXCCS53                   (-999 -888 -666=.)
recode DXCCS54                   (-999 -888 -666=.)
recode DXCCS55                   (-999 -888 -666=.)
recode DXCCS56                   (-999 -888 -666=.)
recode DXCCS57                   (-999 -888 -666=.)
recode DXCCS58                   (-999 -888 -666=.)
recode DXCCS59                   (-999 -888 -666=.)
recode DXCCS60                   (-999 -888 -666=.)
recode DXCCS61                   (-999 -888 -666=.)
recode DXCCS62                   (-999 -888 -666=.)
recode DXCCS63                   (-999 -888 -666=.)
recode DXCCS64                   (-999 -888 -666=.)
recode DXCCS65                   (-999 -888 -666=.)
recode DXCCS66                   (-999 -888 -666=.)
recode DXCCS67                   (-999 -888 -666=.)
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
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDC32                     (-9 -8 -6 -5=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
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
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
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
recode PRYEAR1                   (-999 -888 -666=.)

save "WI_SID_2015q1q3_CORE.dta", replace
