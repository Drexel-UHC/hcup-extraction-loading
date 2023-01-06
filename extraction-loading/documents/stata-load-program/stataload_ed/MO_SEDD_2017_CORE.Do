/*****************************************************************************
* Creation Date: 07/02/2021   
* MO_SEDD_2017_CORE.Do
* This program will load the 2017 MO ASCII CORE File into Stata.
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
      byte   AWEEKEND                    16-  17   ///
      str    CPT1                        18-  22   ///
      str    CPT2                        23-  27   ///
      str    CPT3                        28-  32   ///
      str    CPT4                        33-  37   ///
      str    CPT5                        38-  42   ///
      str    CPT6                        43-  47   ///
      str    CPT7                        48-  52   ///
      str    CPT8                        53-  57   ///
      str    CPT9                        58-  62   ///
      str    CPT10                       63-  67   ///
      str    CPT11                       68-  72   ///
      str    CPT12                       73-  77   ///
      str    CPT13                       78-  82   ///
      str    CPT14                       83-  87   ///
      str    CPT15                       88-  92   ///
      str    CPT16                       93-  97   ///
      str    CPT17                       98- 102   ///
      str    CPT18                      103- 107   ///
      str    CPT19                      108- 112   ///
      str    CPT20                      113- 117   ///
      str    CPT21                      118- 122   ///
      str    CPT22                      123- 127   ///
      str    CPT23                      128- 132   ///
      str    CPT24                      133- 137   ///
      str    CPT25                      138- 142   ///
      str    CPT26                      143- 147   ///
      str    CPT27                      148- 152   ///
      str    CPT28                      153- 157   ///
      str    CPT29                      158- 162   ///
      str    CPT30                      163- 167   ///
      str    CPT31                      168- 172   ///
      str    CPT32                      173- 177   ///
      str    CPT33                      178- 182   ///
      str    CPT34                      183- 187   ///
      str    CPT35                      188- 192   ///
      str    CPT36                      193- 197   ///
      str    CPT37                      198- 202   ///
      str    CPT38                      203- 207   ///
      str    CPT39                      208- 212   ///
      str    CPT40                      213- 217   ///
      str    CPT41                      218- 222   ///
      str    CPT42                      223- 227   ///
      str    CPT43                      228- 232   ///
      str    CPT44                      233- 237   ///
      str    CPT45                      238- 242   ///
      str    CPT46                      243- 247   ///
      str    CPT47                      248- 252   ///
      str    CPT48                      253- 257   ///
      str    CPT49                      258- 262   ///
      str    CPT50                      263- 267   ///
      str    CPT51                      268- 272   ///
      str    CPT52                      273- 277   ///
      str    CPT53                      278- 282   ///
      str    CPT54                      283- 287   ///
      str    CPT55                      288- 292   ///
      str    CPT56                      293- 297   ///
      str    CPT57                      298- 302   ///
      str    CPT58                      303- 307   ///
      str    CPT59                      308- 312   ///
      str    CPT60                      313- 317   ///
      str    CPT61                      318- 322   ///
      str    CPT62                      323- 327   ///
      str    CPT63                      328- 332   ///
      str    CPT64                      333- 337   ///
      str    CPT65                      338- 342   ///
      str    CPT66                      343- 347   ///
      str    CPT67                      348- 352   ///
      str    CPT68                      353- 357   ///
      str    CPT69                      358- 362   ///
      str    CPT70                      363- 367   ///
      str    CPT71                      368- 372   ///
      str    CPT72                      373- 377   ///
      str    CPT73                      378- 382   ///
      str    CPT74                      383- 387   ///
      str    CPT75                      388- 392   ///
      str    CPT76                      393- 397   ///
      str    CPT77                      398- 402   ///
      str    CPT78                      403- 407   ///
      str    CPT79                      408- 412   ///
      str    CPT80                      413- 417   ///
      str    CPT81                      418- 422   ///
      str    CPT82                      423- 427   ///
      str    CPT83                      428- 432   ///
      str    CPT84                      433- 437   ///
      str    CPT85                      438- 442   ///
      str    CPT86                      443- 447   ///
      str    CPT87                      448- 452   ///
      str    CPT88                      453- 457   ///
      str    CPT89                      458- 462   ///
      str    CPT90                      463- 467   ///
      str    CPT91                      468- 472   ///
      str    CPT92                      473- 477   ///
      str    CPT93                      478- 482   ///
      str    CPT94                      483- 487   ///
      str    CPT95                      488- 492   ///
      str    CPT96                      493- 497   ///
      str    CPT97                      498- 502   ///
      str    CPT98                      503- 507   ///
      str    CPT99                      508- 512   ///
      str    CPT100                     513- 517   ///
      str    CPT101                     518- 522   ///
      str    CPT102                     523- 527   ///
      str    CPT103                     528- 532   ///
      str    CPT104                     533- 537   ///
      str    CPT105                     538- 542   ///
      str    CPT106                     543- 547   ///
      str    CPT107                     548- 552   ///
      str    CPT108                     553- 557   ///
      str    CPT109                     558- 562   ///
      str    CPT110                     563- 567   ///
      str    CPT111                     568- 572   ///
      str    CPT112                     573- 577   ///
      str    CPT113                     578- 582   ///
      str    CPT114                     583- 587   ///
      str    CPT115                     588- 592   ///
      str    CPT116                     593- 597   ///
      str    CPT117                     598- 602   ///
      str    CPT118                     603- 607   ///
      str    CPT119                     608- 612   ///
      str    CPT120                     613- 617   ///
      str    CPT121                     618- 622   ///
      str    CPT122                     623- 627   ///
      str    CPT123                     628- 632   ///
      str    CPT124                     633- 637   ///
      str    CPT125                     638- 642   ///
      str    CPT126                     643- 647   ///
      str    CPT127                     648- 652   ///
      str    CPT128                     653- 657   ///
      str    CPT129                     658- 662   ///
      str    CPT130                     663- 667   ///
      str    CPT131                     668- 672   ///
      str    CPT132                     673- 677   ///
      str    CPT133                     678- 682   ///
      str    CPT134                     683- 687   ///
      str    CPT135                     688- 692   ///
      str    CPT136                     693- 697   ///
      str    CPT137                     698- 702   ///
      str    CPT138                     703- 707   ///
      str    CPT139                     708- 712   ///
      str    CPT140                     713- 717   ///
      str    CPT141                     718- 722   ///
      str    CPT142                     723- 727   ///
      str    CPT143                     728- 732   ///
      str    CPT144                     733- 737   ///
      str    CPT145                     738- 742   ///
      str    CPT146                     743- 747   ///
      str    CPT147                     748- 752   ///
      str    CPT148                     753- 757   ///
      str    CPT149                     758- 762   ///
      str    CPT150                     763- 767   ///
      str    CPT151                     768- 772   ///
      str    CPT152                     773- 777   ///
      str    CPT153                     778- 782   ///
      str    CPT154                     783- 787   ///
      str    CPT155                     788- 792   ///
      str    CPT156                     793- 797   ///
      str    CPT157                     798- 802   ///
      str    CPT158                     803- 807   ///
      str    CPT159                     808- 812   ///
      str    CPT160                     813- 817   ///
      str    CPT161                     818- 822   ///
      str    CPT162                     823- 827   ///
      str    CPT163                     828- 832   ///
      str    CPT164                     833- 837   ///
      str    CPT165                     838- 842   ///
      str    CPT166                     843- 847   ///
      str    CPT167                     848- 852   ///
      str    CPT168                     853- 857   ///
      str    CPT169                     858- 862   ///
      str    CPT170                     863- 867   ///
      str    CPT171                     868- 872   ///
      str    CPT172                     873- 877   ///
      str    CPT173                     878- 882   ///
      str    CPT174                     883- 887   ///
      str    CPT175                     888- 892   ///
      str    CPT176                     893- 897   ///
      str    CPT177                     898- 902   ///
      str    CPT178                     903- 907   ///
      str    CPT179                     908- 912   ///
      str    CPT180                     913- 917   ///
      str    CPT181                     918- 922   ///
      str    CPT182                     923- 927   ///
      str    CPT183                     928- 932   ///
      str    CPT184                     933- 937   ///
      str    CPT185                     938- 942   ///
      str    CPT186                     943- 947   ///
      str    CPT187                     948- 952   ///
      str    CPT188                     953- 957   ///
      str    CPT189                     958- 962   ///
      str    CPT190                     963- 967   ///
      str    CPT191                     968- 972   ///
      str    CPT192                     973- 977   ///
      str    CPT193                     978- 982   ///
      str    CPT194                     983- 987   ///
      str    CPT195                     988- 992   ///
      str    CPT196                     993- 997   ///
      str    CPT197                     998-1002   ///
      str    CPT198                    1003-1007   ///
      str    CPT199                    1008-1012   ///
      str    CPT200                    1013-1017   ///
      int    CPTCCS1                   1018-1020   ///
      int    CPTCCS2                   1021-1023   ///
      int    CPTCCS3                   1024-1026   ///
      int    CPTCCS4                   1027-1029   ///
      int    CPTCCS5                   1030-1032   ///
      int    CPTCCS6                   1033-1035   ///
      int    CPTCCS7                   1036-1038   ///
      int    CPTCCS8                   1039-1041   ///
      int    CPTCCS9                   1042-1044   ///
      int    CPTCCS10                  1045-1047   ///
      int    CPTCCS11                  1048-1050   ///
      int    CPTCCS12                  1051-1053   ///
      int    CPTCCS13                  1054-1056   ///
      int    CPTCCS14                  1057-1059   ///
      int    CPTCCS15                  1060-1062   ///
      int    CPTCCS16                  1063-1065   ///
      int    CPTCCS17                  1066-1068   ///
      int    CPTCCS18                  1069-1071   ///
      int    CPTCCS19                  1072-1074   ///
      int    CPTCCS20                  1075-1077   ///
      int    CPTCCS21                  1078-1080   ///
      int    CPTCCS22                  1081-1083   ///
      int    CPTCCS23                  1084-1086   ///
      int    CPTCCS24                  1087-1089   ///
      int    CPTCCS25                  1090-1092   ///
      int    CPTCCS26                  1093-1095   ///
      int    CPTCCS27                  1096-1098   ///
      int    CPTCCS28                  1099-1101   ///
      int    CPTCCS29                  1102-1104   ///
      int    CPTCCS30                  1105-1107   ///
      int    CPTCCS31                  1108-1110   ///
      int    CPTCCS32                  1111-1113   ///
      int    CPTCCS33                  1114-1116   ///
      int    CPTCCS34                  1117-1119   ///
      int    CPTCCS35                  1120-1122   ///
      int    CPTCCS36                  1123-1125   ///
      int    CPTCCS37                  1126-1128   ///
      int    CPTCCS38                  1129-1131   ///
      int    CPTCCS39                  1132-1134   ///
      int    CPTCCS40                  1135-1137   ///
      int    CPTCCS41                  1138-1140   ///
      int    CPTCCS42                  1141-1143   ///
      int    CPTCCS43                  1144-1146   ///
      int    CPTCCS44                  1147-1149   ///
      int    CPTCCS45                  1150-1152   ///
      int    CPTCCS46                  1153-1155   ///
      int    CPTCCS47                  1156-1158   ///
      int    CPTCCS48                  1159-1161   ///
      int    CPTCCS49                  1162-1164   ///
      int    CPTCCS50                  1165-1167   ///
      int    CPTCCS51                  1168-1170   ///
      int    CPTCCS52                  1171-1173   ///
      int    CPTCCS53                  1174-1176   ///
      int    CPTCCS54                  1177-1179   ///
      int    CPTCCS55                  1180-1182   ///
      int    CPTCCS56                  1183-1185   ///
      int    CPTCCS57                  1186-1188   ///
      int    CPTCCS58                  1189-1191   ///
      int    CPTCCS59                  1192-1194   ///
      int    CPTCCS60                  1195-1197   ///
      int    CPTCCS61                  1198-1200   ///
      int    CPTCCS62                  1201-1203   ///
      int    CPTCCS63                  1204-1206   ///
      int    CPTCCS64                  1207-1209   ///
      int    CPTCCS65                  1210-1212   ///
      int    CPTCCS66                  1213-1215   ///
      int    CPTCCS67                  1216-1218   ///
      int    CPTCCS68                  1219-1221   ///
      int    CPTCCS69                  1222-1224   ///
      int    CPTCCS70                  1225-1227   ///
      int    CPTCCS71                  1228-1230   ///
      int    CPTCCS72                  1231-1233   ///
      int    CPTCCS73                  1234-1236   ///
      int    CPTCCS74                  1237-1239   ///
      int    CPTCCS75                  1240-1242   ///
      int    CPTCCS76                  1243-1245   ///
      int    CPTCCS77                  1246-1248   ///
      int    CPTCCS78                  1249-1251   ///
      int    CPTCCS79                  1252-1254   ///
      int    CPTCCS80                  1255-1257   ///
      int    CPTCCS81                  1258-1260   ///
      int    CPTCCS82                  1261-1263   ///
      int    CPTCCS83                  1264-1266   ///
      int    CPTCCS84                  1267-1269   ///
      int    CPTCCS85                  1270-1272   ///
      int    CPTCCS86                  1273-1275   ///
      int    CPTCCS87                  1276-1278   ///
      int    CPTCCS88                  1279-1281   ///
      int    CPTCCS89                  1282-1284   ///
      int    CPTCCS90                  1285-1287   ///
      int    CPTCCS91                  1288-1290   ///
      int    CPTCCS92                  1291-1293   ///
      int    CPTCCS93                  1294-1296   ///
      int    CPTCCS94                  1297-1299   ///
      int    CPTCCS95                  1300-1302   ///
      int    CPTCCS96                  1303-1305   ///
      int    CPTCCS97                  1306-1308   ///
      int    CPTCCS98                  1309-1311   ///
      int    CPTCCS99                  1312-1314   ///
      int    CPTCCS100                 1315-1317   ///
      int    CPTCCS101                 1318-1320   ///
      int    CPTCCS102                 1321-1323   ///
      int    CPTCCS103                 1324-1326   ///
      int    CPTCCS104                 1327-1329   ///
      int    CPTCCS105                 1330-1332   ///
      int    CPTCCS106                 1333-1335   ///
      int    CPTCCS107                 1336-1338   ///
      int    CPTCCS108                 1339-1341   ///
      int    CPTCCS109                 1342-1344   ///
      int    CPTCCS110                 1345-1347   ///
      int    CPTCCS111                 1348-1350   ///
      int    CPTCCS112                 1351-1353   ///
      int    CPTCCS113                 1354-1356   ///
      int    CPTCCS114                 1357-1359   ///
      int    CPTCCS115                 1360-1362   ///
      int    CPTCCS116                 1363-1365   ///
      int    CPTCCS117                 1366-1368   ///
      int    CPTCCS118                 1369-1371   ///
      int    CPTCCS119                 1372-1374   ///
      int    CPTCCS120                 1375-1377   ///
      int    CPTCCS121                 1378-1380   ///
      int    CPTCCS122                 1381-1383   ///
      int    CPTCCS123                 1384-1386   ///
      int    CPTCCS124                 1387-1389   ///
      int    CPTCCS125                 1390-1392   ///
      int    CPTCCS126                 1393-1395   ///
      int    CPTCCS127                 1396-1398   ///
      int    CPTCCS128                 1399-1401   ///
      int    CPTCCS129                 1402-1404   ///
      int    CPTCCS130                 1405-1407   ///
      int    CPTCCS131                 1408-1410   ///
      int    CPTCCS132                 1411-1413   ///
      int    CPTCCS133                 1414-1416   ///
      int    CPTCCS134                 1417-1419   ///
      int    CPTCCS135                 1420-1422   ///
      int    CPTCCS136                 1423-1425   ///
      int    CPTCCS137                 1426-1428   ///
      int    CPTCCS138                 1429-1431   ///
      int    CPTCCS139                 1432-1434   ///
      int    CPTCCS140                 1435-1437   ///
      int    CPTCCS141                 1438-1440   ///
      int    CPTCCS142                 1441-1443   ///
      int    CPTCCS143                 1444-1446   ///
      int    CPTCCS144                 1447-1449   ///
      int    CPTCCS145                 1450-1452   ///
      int    CPTCCS146                 1453-1455   ///
      int    CPTCCS147                 1456-1458   ///
      int    CPTCCS148                 1459-1461   ///
      int    CPTCCS149                 1462-1464   ///
      int    CPTCCS150                 1465-1467   ///
      int    CPTCCS151                 1468-1470   ///
      int    CPTCCS152                 1471-1473   ///
      int    CPTCCS153                 1474-1476   ///
      int    CPTCCS154                 1477-1479   ///
      int    CPTCCS155                 1480-1482   ///
      int    CPTCCS156                 1483-1485   ///
      int    CPTCCS157                 1486-1488   ///
      int    CPTCCS158                 1489-1491   ///
      int    CPTCCS159                 1492-1494   ///
      int    CPTCCS160                 1495-1497   ///
      int    CPTCCS161                 1498-1500   ///
      int    CPTCCS162                 1501-1503   ///
      int    CPTCCS163                 1504-1506   ///
      int    CPTCCS164                 1507-1509   ///
      int    CPTCCS165                 1510-1512   ///
      int    CPTCCS166                 1513-1515   ///
      int    CPTCCS167                 1516-1518   ///
      int    CPTCCS168                 1519-1521   ///
      int    CPTCCS169                 1522-1524   ///
      int    CPTCCS170                 1525-1527   ///
      int    CPTCCS171                 1528-1530   ///
      int    CPTCCS172                 1531-1533   ///
      int    CPTCCS173                 1534-1536   ///
      int    CPTCCS174                 1537-1539   ///
      int    CPTCCS175                 1540-1542   ///
      int    CPTCCS176                 1543-1545   ///
      int    CPTCCS177                 1546-1548   ///
      int    CPTCCS178                 1549-1551   ///
      int    CPTCCS179                 1552-1554   ///
      int    CPTCCS180                 1555-1557   ///
      int    CPTCCS181                 1558-1560   ///
      int    CPTCCS182                 1561-1563   ///
      int    CPTCCS183                 1564-1566   ///
      int    CPTCCS184                 1567-1569   ///
      int    CPTCCS185                 1570-1572   ///
      int    CPTCCS186                 1573-1575   ///
      int    CPTCCS187                 1576-1578   ///
      int    CPTCCS188                 1579-1581   ///
      int    CPTCCS189                 1582-1584   ///
      int    CPTCCS190                 1585-1587   ///
      int    CPTCCS191                 1588-1590   ///
      int    CPTCCS192                 1591-1593   ///
      int    CPTCCS193                 1594-1596   ///
      int    CPTCCS194                 1597-1599   ///
      int    CPTCCS195                 1600-1602   ///
      int    CPTCCS196                 1603-1605   ///
      int    CPTCCS197                 1606-1608   ///
      int    CPTCCS198                 1609-1611   ///
      int    CPTCCS199                 1612-1614   ///
      int    CPTCCS200                 1615-1617   ///
      int    CPTDAY1                   1618-1620   ///
      int    CPTDAY2                   1621-1623   ///
      int    CPTDAY3                   1624-1626   ///
      int    CPTDAY4                   1627-1629   ///
      int    CPTDAY5                   1630-1632   ///
      int    CPTDAY6                   1633-1635   ///
      int    CPTDAY7                   1636-1638   ///
      int    CPTDAY8                   1639-1641   ///
      int    CPTDAY9                   1642-1644   ///
      int    CPTDAY10                  1645-1647   ///
      int    CPTDAY11                  1648-1650   ///
      int    CPTDAY12                  1651-1653   ///
      int    CPTDAY13                  1654-1656   ///
      int    CPTDAY14                  1657-1659   ///
      int    CPTDAY15                  1660-1662   ///
      int    CPTDAY16                  1663-1665   ///
      int    CPTDAY17                  1666-1668   ///
      int    CPTDAY18                  1669-1671   ///
      int    CPTDAY19                  1672-1674   ///
      int    CPTDAY20                  1675-1677   ///
      int    CPTDAY21                  1678-1680   ///
      int    CPTDAY22                  1681-1683   ///
      int    CPTDAY23                  1684-1686   ///
      int    CPTDAY24                  1687-1689   ///
      int    CPTDAY25                  1690-1692   ///
      int    CPTDAY26                  1693-1695   ///
      int    CPTDAY27                  1696-1698   ///
      int    CPTDAY28                  1699-1701   ///
      int    CPTDAY29                  1702-1704   ///
      int    CPTDAY30                  1705-1707   ///
      int    CPTDAY31                  1708-1710   ///
      int    CPTDAY32                  1711-1713   ///
      int    CPTDAY33                  1714-1716   ///
      int    CPTDAY34                  1717-1719   ///
      int    CPTDAY35                  1720-1722   ///
      int    CPTDAY36                  1723-1725   ///
      int    CPTDAY37                  1726-1728   ///
      int    CPTDAY38                  1729-1731   ///
      int    CPTDAY39                  1732-1734   ///
      int    CPTDAY40                  1735-1737   ///
      int    CPTDAY41                  1738-1740   ///
      int    CPTDAY42                  1741-1743   ///
      int    CPTDAY43                  1744-1746   ///
      int    CPTDAY44                  1747-1749   ///
      int    CPTDAY45                  1750-1752   ///
      int    CPTDAY46                  1753-1755   ///
      int    CPTDAY47                  1756-1758   ///
      int    CPTDAY48                  1759-1761   ///
      int    CPTDAY49                  1762-1764   ///
      int    CPTDAY50                  1765-1767   ///
      int    CPTDAY51                  1768-1770   ///
      int    CPTDAY52                  1771-1773   ///
      int    CPTDAY53                  1774-1776   ///
      int    CPTDAY54                  1777-1779   ///
      int    CPTDAY55                  1780-1782   ///
      int    CPTDAY56                  1783-1785   ///
      int    CPTDAY57                  1786-1788   ///
      int    CPTDAY58                  1789-1791   ///
      int    CPTDAY59                  1792-1794   ///
      int    CPTDAY60                  1795-1797   ///
      int    CPTDAY61                  1798-1800   ///
      int    CPTDAY62                  1801-1803   ///
      int    CPTDAY63                  1804-1806   ///
      int    CPTDAY64                  1807-1809   ///
      int    CPTDAY65                  1810-1812   ///
      int    CPTDAY66                  1813-1815   ///
      int    CPTDAY67                  1816-1818   ///
      int    CPTDAY68                  1819-1821   ///
      int    CPTDAY69                  1822-1824   ///
      int    CPTDAY70                  1825-1827   ///
      int    CPTDAY71                  1828-1830   ///
      int    CPTDAY72                  1831-1833   ///
      int    CPTDAY73                  1834-1836   ///
      int    CPTDAY74                  1837-1839   ///
      int    CPTDAY75                  1840-1842   ///
      int    CPTDAY76                  1843-1845   ///
      int    CPTDAY77                  1846-1848   ///
      int    CPTDAY78                  1849-1851   ///
      int    CPTDAY79                  1852-1854   ///
      int    CPTDAY80                  1855-1857   ///
      int    CPTDAY81                  1858-1860   ///
      int    CPTDAY82                  1861-1863   ///
      int    CPTDAY83                  1864-1866   ///
      int    CPTDAY84                  1867-1869   ///
      int    CPTDAY85                  1870-1872   ///
      int    CPTDAY86                  1873-1875   ///
      int    CPTDAY87                  1876-1878   ///
      int    CPTDAY88                  1879-1881   ///
      int    CPTDAY89                  1882-1884   ///
      int    CPTDAY90                  1885-1887   ///
      int    CPTDAY91                  1888-1890   ///
      int    CPTDAY92                  1891-1893   ///
      int    CPTDAY93                  1894-1896   ///
      int    CPTDAY94                  1897-1899   ///
      int    CPTDAY95                  1900-1902   ///
      int    CPTDAY96                  1903-1905   ///
      int    CPTDAY97                  1906-1908   ///
      int    CPTDAY98                  1909-1911   ///
      int    CPTDAY99                  1912-1914   ///
      int    CPTDAY100                 1915-1917   ///
      int    CPTDAY101                 1918-1920   ///
      int    CPTDAY102                 1921-1923   ///
      int    CPTDAY103                 1924-1926   ///
      int    CPTDAY104                 1927-1929   ///
      int    CPTDAY105                 1930-1932   ///
      int    CPTDAY106                 1933-1935   ///
      int    CPTDAY107                 1936-1938   ///
      int    CPTDAY108                 1939-1941   ///
      int    CPTDAY109                 1942-1944   ///
      int    CPTDAY110                 1945-1947   ///
      int    CPTDAY111                 1948-1950   ///
      int    CPTDAY112                 1951-1953   ///
      int    CPTDAY113                 1954-1956   ///
      int    CPTDAY114                 1957-1959   ///
      int    CPTDAY115                 1960-1962   ///
      int    CPTDAY116                 1963-1965   ///
      int    CPTDAY117                 1966-1968   ///
      int    CPTDAY118                 1969-1971   ///
      int    CPTDAY119                 1972-1974   ///
      int    CPTDAY120                 1975-1977   ///
      int    CPTDAY121                 1978-1980   ///
      int    CPTDAY122                 1981-1983   ///
      int    CPTDAY123                 1984-1986   ///
      int    CPTDAY124                 1987-1989   ///
      int    CPTDAY125                 1990-1992   ///
      int    CPTDAY126                 1993-1995   ///
      int    CPTDAY127                 1996-1998   ///
      int    CPTDAY128                 1999-2001   ///
      int    CPTDAY129                 2002-2004   ///
      int    CPTDAY130                 2005-2007   ///
      int    CPTDAY131                 2008-2010   ///
      int    CPTDAY132                 2011-2013   ///
      int    CPTDAY133                 2014-2016   ///
      int    CPTDAY134                 2017-2019   ///
      int    CPTDAY135                 2020-2022   ///
      int    CPTDAY136                 2023-2025   ///
      int    CPTDAY137                 2026-2028   ///
      int    CPTDAY138                 2029-2031   ///
      int    CPTDAY139                 2032-2034   ///
      int    CPTDAY140                 2035-2037   ///
      int    CPTDAY141                 2038-2040   ///
      int    CPTDAY142                 2041-2043   ///
      int    CPTDAY143                 2044-2046   ///
      int    CPTDAY144                 2047-2049   ///
      int    CPTDAY145                 2050-2052   ///
      int    CPTDAY146                 2053-2055   ///
      int    CPTDAY147                 2056-2058   ///
      int    CPTDAY148                 2059-2061   ///
      int    CPTDAY149                 2062-2064   ///
      int    CPTDAY150                 2065-2067   ///
      int    CPTDAY151                 2068-2070   ///
      int    CPTDAY152                 2071-2073   ///
      int    CPTDAY153                 2074-2076   ///
      int    CPTDAY154                 2077-2079   ///
      int    CPTDAY155                 2080-2082   ///
      int    CPTDAY156                 2083-2085   ///
      int    CPTDAY157                 2086-2088   ///
      int    CPTDAY158                 2089-2091   ///
      int    CPTDAY159                 2092-2094   ///
      int    CPTDAY160                 2095-2097   ///
      int    CPTDAY161                 2098-2100   ///
      int    CPTDAY162                 2101-2103   ///
      int    CPTDAY163                 2104-2106   ///
      int    CPTDAY164                 2107-2109   ///
      int    CPTDAY165                 2110-2112   ///
      int    CPTDAY166                 2113-2115   ///
      int    CPTDAY167                 2116-2118   ///
      int    CPTDAY168                 2119-2121   ///
      int    CPTDAY169                 2122-2124   ///
      int    CPTDAY170                 2125-2127   ///
      int    CPTDAY171                 2128-2130   ///
      int    CPTDAY172                 2131-2133   ///
      int    CPTDAY173                 2134-2136   ///
      int    CPTDAY174                 2137-2139   ///
      int    CPTDAY175                 2140-2142   ///
      int    CPTDAY176                 2143-2145   ///
      int    CPTDAY177                 2146-2148   ///
      int    CPTDAY178                 2149-2151   ///
      int    CPTDAY179                 2152-2154   ///
      int    CPTDAY180                 2155-2157   ///
      int    CPTDAY181                 2158-2160   ///
      int    CPTDAY182                 2161-2163   ///
      int    CPTDAY183                 2164-2166   ///
      int    CPTDAY184                 2167-2169   ///
      int    CPTDAY185                 2170-2172   ///
      int    CPTDAY186                 2173-2175   ///
      int    CPTDAY187                 2176-2178   ///
      int    CPTDAY188                 2179-2181   ///
      int    CPTDAY189                 2182-2184   ///
      int    CPTDAY190                 2185-2187   ///
      int    CPTDAY191                 2188-2190   ///
      int    CPTDAY192                 2191-2193   ///
      int    CPTDAY193                 2194-2196   ///
      int    CPTDAY194                 2197-2199   ///
      int    CPTDAY195                 2200-2202   ///
      int    CPTDAY196                 2203-2205   ///
      int    CPTDAY197                 2206-2208   ///
      int    CPTDAY198                 2209-2211   ///
      int    CPTDAY199                 2212-2214   ///
      int    CPTDAY200                 2215-2217   ///
      long   DaysToEvent               2218-2223   ///
      int    DHOUR                     2224-2227   ///
      byte   DIED                      2228-2229   ///
      str    DISP_X                    2230-2231   ///
      byte   DISPUB04                  2232-2233   ///
      byte   DISPUNIFORM               2234-2235   ///
      byte   DMONTH                    2236-2237   ///
      byte   DQTR                      2238-2239   ///
      long   DURATION                  2240-2245   ///
      int    DXVER                     2246-2248   ///
      byte   FEMALE                    2249-2250   ///
      byte   HCUP_ED                   2251-2252   ///
      byte   HCUP_OS                   2253-2254   ///
      byte   HISPANIC                  2255-2256   ///
      str    HISPANIC_X                2257        ///
      byte   Homeless                  2258-2259   ///
      str    HOSPST                    2260-2261   ///
      str    I10_DX1                   2262-2268   ///
      str    I10_DX2                   2269-2275   ///
      str    I10_DX3                   2276-2282   ///
      str    I10_DX4                   2283-2289   ///
      str    I10_DX5                   2290-2296   ///
      str    I10_DX6                   2297-2303   ///
      str    I10_DX7                   2304-2310   ///
      str    I10_DX8                   2311-2317   ///
      str    I10_DX9                   2318-2324   ///
      str    I10_DX10                  2325-2331   ///
      str    I10_DX11                  2332-2338   ///
      str    I10_DX12                  2339-2345   ///
      str    I10_DX13                  2346-2352   ///
      str    I10_DX14                  2353-2359   ///
      str    I10_DX15                  2360-2366   ///
      str    I10_DX16                  2367-2373   ///
      str    I10_DX17                  2374-2380   ///
      str    I10_DX18                  2381-2387   ///
      str    I10_DX19                  2388-2394   ///
      str    I10_DX20                  2395-2401   ///
      str    I10_DX21                  2402-2408   ///
      str    I10_DX22                  2409-2415   ///
      str    I10_DX23                  2416-2422   ///
      str    I10_DX24                  2423-2429   ///
      str    I10_DX25                  2430-2436   ///
      str    I10_DX26                  2437-2443   ///
      str    I10_DX27                  2444-2450   ///
      str    I10_DX28                  2451-2457   ///
      str    I10_DX29                  2458-2464   ///
      str    I10_DX30                  2465-2471   ///
      int    I10_NDX                   2472-2474   ///
      int    I10_NPR                   2475-2477   ///
      str    I10_PR1                   2478-2484   ///
      str    I10_PR2                   2485-2491   ///
      str    I10_PR3                   2492-2498   ///
      str    I10_PR4                   2499-2505   ///
      str    I10_PR5                   2506-2512   ///
      str    I10_PR6                   2513-2519   ///
      str    I10_PR7                   2520-2526   ///
      str    I10_PR8                   2527-2533   ///
      str    I10_PR9                   2534-2540   ///
      str    I10_PR10                  2541-2547   ///
      str    I10_PR11                  2548-2554   ///
      str    I10_PR12                  2555-2561   ///
      str    I10_PR13                  2562-2568   ///
      str    I10_PR14                  2569-2575   ///
      str    I10_PR15                  2576-2582   ///
      str    I10_PR16                  2583-2589   ///
      str    I10_PR17                  2590-2596   ///
      str    I10_PR18                  2597-2603   ///
      str    I10_PR19                  2604-2610   ///
      str    I10_PR20                  2611-2617   ///
      str    I10_PR21                  2618-2624   ///
      str    I10_PR22                  2625-2631   ///
      str    I10_PR23                  2632-2638   ///
      str    I10_PR24                  2639-2645   ///
      str    I10_PR25                  2646-2652   ///
      int    I10_PROCTYPE              2653-2655   ///
      double KEY                       2656-2670   ///
      long   LOS                       2671-2675   ///
      long   LOS_X                     2676-2681   ///
      long   MDNUM1_R                  2682-2690   ///
      long   MDNUM2_R                  2691-2699   ///
      byte   MEDINCSTQ                 2700-2701   ///
      int    NCPT                      2702-2705   ///
      int    OBSERVATION               2706-2709   ///
      str    OPservice                 2710        ///
      double OS_TIME                   2711-2721   ///
      byte   PAY1                      2722-2723   ///
      str    PAY1_X                    2724-2725   ///
      byte   PAY2                      2726-2727   ///
      str    PAY2_X                    2728-2729   ///
      byte   PAY3                      2730-2731   ///
      str    PAY3_X                    2732-2733   ///
      int    PL_CBSA                   2734-2736   ///
      byte   PL_NCHS                   2737-2738   ///
      byte   PL_RUCC                   2739-2740   ///
      byte   PL_UIC                    2741-2742   ///
      byte   PL_UR_CAT4                2743-2744   ///
      str    PointOfOrigin_X           2745        ///
      str    PointOfOriginUB04         2746        ///
      long   PRDAY1                    2747-2751   ///
      long   PRDAY2                    2752-2756   ///
      long   PRDAY3                    2757-2761   ///
      long   PRDAY4                    2762-2766   ///
      long   PRDAY5                    2767-2771   ///
      long   PRDAY6                    2772-2776   ///
      long   PRDAY7                    2777-2781   ///
      long   PRDAY8                    2782-2786   ///
      long   PRDAY9                    2787-2791   ///
      long   PRDAY10                   2792-2796   ///
      long   PRDAY11                   2797-2801   ///
      long   PRDAY12                   2802-2806   ///
      long   PRDAY13                   2807-2811   ///
      long   PRDAY14                   2812-2816   ///
      long   PRDAY15                   2817-2821   ///
      long   PRDAY16                   2822-2826   ///
      long   PRDAY17                   2827-2831   ///
      long   PRDAY18                   2832-2836   ///
      long   PRDAY19                   2837-2841   ///
      long   PRDAY20                   2842-2846   ///
      long   PRDAY21                   2847-2851   ///
      long   PRDAY22                   2852-2856   ///
      long   PRDAY23                   2857-2861   ///
      long   PRDAY24                   2862-2866   ///
      long   PRDAY25                   2867-2871   ///
      int    PRVER                     2872-2874   ///
      str    PSTATE                    2875-2876   ///
      long   PSTCO                     2877-2881   ///
      long   PSTCO2                    2882-2886   ///
      byte   RACE                      2887-2888   ///
      str    RACE_X                    2889        ///
      byte   STATE_AS                  2890-2891   ///
      byte   STATE_ED                  2892-2893   ///
      byte   STATE_OS                  2894-2895   ///
      long   VisitLink                 2896-2904   ///
      int    YEAR                      2905-2908   ///
      str    ZIP                       2909-2913   ///
      str    ZIP3                      2914-2916   ///
      int    ZIPINC_QRTL               2917-2919   ///
      long   HOSPID                    2920-2924   ///
      int    AYEAR                     2925-2928   ///
      byte   BMONTH                    2929-2930   ///
      int    BYEAR                     2931-2934   ///
      byte   PRMONTH1                  2935-2936   ///
      byte   PRMONTH2                  2937-2938   ///
      byte   PRMONTH3                  2939-2940   ///
      byte   PRMONTH4                  2941-2942   ///
      byte   PRMONTH5                  2943-2944   ///
      byte   PRMONTH6                  2945-2946   ///
      byte   PRMONTH7                  2947-2948   ///
      byte   PRMONTH8                  2949-2950   ///
      byte   PRMONTH9                  2951-2952   ///
      byte   PRMONTH10                 2953-2954   ///
      byte   PRMONTH11                 2955-2956   ///
      byte   PRMONTH12                 2957-2958   ///
      byte   PRMONTH13                 2959-2960   ///
      byte   PRMONTH14                 2961-2962   ///
      byte   PRMONTH15                 2963-2964   ///
      byte   PRMONTH16                 2965-2966   ///
      byte   PRMONTH17                 2967-2968   ///
      byte   PRMONTH18                 2969-2970   ///
      byte   PRMONTH19                 2971-2972   ///
      byte   PRMONTH20                 2973-2974   ///
      byte   PRMONTH21                 2975-2976   ///
      byte   PRMONTH22                 2977-2978   ///
      byte   PRMONTH23                 2979-2980   ///
      byte   PRMONTH24                 2981-2982   ///
      byte   PRMONTH25                 2983-2984   ///
      int    PRYEAR1                   2985-2988   ///
      int    PRYEAR2                   2989-2992   ///
      int    PRYEAR3                   2993-2996   ///
      int    PRYEAR4                   2997-3000   ///
      int    PRYEAR5                   3001-3004   ///
      int    PRYEAR6                   3005-3008   ///
      int    PRYEAR7                   3009-3012   ///
      int    PRYEAR8                   3013-3016   ///
      int    PRYEAR9                   3017-3020   ///
      int    PRYEAR10                  3021-3024   ///
      int    PRYEAR11                  3025-3028   ///
      int    PRYEAR12                  3029-3032   ///
      int    PRYEAR13                  3033-3036   ///
      int    PRYEAR14                  3037-3040   ///
      int    PRYEAR15                  3041-3044   ///
      int    PRYEAR16                  3045-3048   ///
      int    PRYEAR17                  3049-3052   ///
      int    PRYEAR18                  3053-3056   ///
      int    PRYEAR19                  3057-3060   ///
      int    PRYEAR20                  3061-3064   ///
      int    PRYEAR21                  3065-3068   ///
      int    PRYEAR22                  3069-3072   ///
      int    PRYEAR23                  3073-3076   ///
      int    PRYEAR24                  3077-3080   ///
      int    PRYEAR25                  3081-3084   ///
      using  "MO_SEDD_2017_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var AWEEKEND                 "Admission day is a weekend"
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
label var CPT54                    "CPT/HCPCS procedure code 54"
label var CPT55                    "CPT/HCPCS procedure code 55"
label var CPT56                    "CPT/HCPCS procedure code 56"
label var CPT57                    "CPT/HCPCS procedure code 57"
label var CPT58                    "CPT/HCPCS procedure code 58"
label var CPT59                    "CPT/HCPCS procedure code 59"
label var CPT60                    "CPT/HCPCS procedure code 60"
label var CPT61                    "CPT/HCPCS procedure code 61"
label var CPT62                    "CPT/HCPCS procedure code 62"
label var CPT63                    "CPT/HCPCS procedure code 63"
label var CPT64                    "CPT/HCPCS procedure code 64"
label var CPT65                    "CPT/HCPCS procedure code 65"
label var CPT66                    "CPT/HCPCS procedure code 66"
label var CPT67                    "CPT/HCPCS procedure code 67"
label var CPT68                    "CPT/HCPCS procedure code 68"
label var CPT69                    "CPT/HCPCS procedure code 69"
label var CPT70                    "CPT/HCPCS procedure code 70"
label var CPT71                    "CPT/HCPCS procedure code 71"
label var CPT72                    "CPT/HCPCS procedure code 72"
label var CPT73                    "CPT/HCPCS procedure code 73"
label var CPT74                    "CPT/HCPCS procedure code 74"
label var CPT75                    "CPT/HCPCS procedure code 75"
label var CPT76                    "CPT/HCPCS procedure code 76"
label var CPT77                    "CPT/HCPCS procedure code 77"
label var CPT78                    "CPT/HCPCS procedure code 78"
label var CPT79                    "CPT/HCPCS procedure code 79"
label var CPT80                    "CPT/HCPCS procedure code 80"
label var CPT81                    "CPT/HCPCS procedure code 81"
label var CPT82                    "CPT/HCPCS procedure code 82"
label var CPT83                    "CPT/HCPCS procedure code 83"
label var CPT84                    "CPT/HCPCS procedure code 84"
label var CPT85                    "CPT/HCPCS procedure code 85"
label var CPT86                    "CPT/HCPCS procedure code 86"
label var CPT87                    "CPT/HCPCS procedure code 87"
label var CPT88                    "CPT/HCPCS procedure code 88"
label var CPT89                    "CPT/HCPCS procedure code 89"
label var CPT90                    "CPT/HCPCS procedure code 90"
label var CPT91                    "CPT/HCPCS procedure code 91"
label var CPT92                    "CPT/HCPCS procedure code 92"
label var CPT93                    "CPT/HCPCS procedure code 93"
label var CPT94                    "CPT/HCPCS procedure code 94"
label var CPT95                    "CPT/HCPCS procedure code 95"
label var CPT96                    "CPT/HCPCS procedure code 96"
label var CPT97                    "CPT/HCPCS procedure code 97"
label var CPT98                    "CPT/HCPCS procedure code 98"
label var CPT99                    "CPT/HCPCS procedure code 99"
label var CPT100                   "CPT/HCPCS procedure code 100"
label var CPT101                   "CPT/HCPCS procedure code 101"
label var CPT102                   "CPT/HCPCS procedure code 102"
label var CPT103                   "CPT/HCPCS procedure code 103"
label var CPT104                   "CPT/HCPCS procedure code 104"
label var CPT105                   "CPT/HCPCS procedure code 105"
label var CPT106                   "CPT/HCPCS procedure code 106"
label var CPT107                   "CPT/HCPCS procedure code 107"
label var CPT108                   "CPT/HCPCS procedure code 108"
label var CPT109                   "CPT/HCPCS procedure code 109"
label var CPT110                   "CPT/HCPCS procedure code 110"
label var CPT111                   "CPT/HCPCS procedure code 111"
label var CPT112                   "CPT/HCPCS procedure code 112"
label var CPT113                   "CPT/HCPCS procedure code 113"
label var CPT114                   "CPT/HCPCS procedure code 114"
label var CPT115                   "CPT/HCPCS procedure code 115"
label var CPT116                   "CPT/HCPCS procedure code 116"
label var CPT117                   "CPT/HCPCS procedure code 117"
label var CPT118                   "CPT/HCPCS procedure code 118"
label var CPT119                   "CPT/HCPCS procedure code 119"
label var CPT120                   "CPT/HCPCS procedure code 120"
label var CPT121                   "CPT/HCPCS procedure code 121"
label var CPT122                   "CPT/HCPCS procedure code 122"
label var CPT123                   "CPT/HCPCS procedure code 123"
label var CPT124                   "CPT/HCPCS procedure code 124"
label var CPT125                   "CPT/HCPCS procedure code 125"
label var CPT126                   "CPT/HCPCS procedure code 126"
label var CPT127                   "CPT/HCPCS procedure code 127"
label var CPT128                   "CPT/HCPCS procedure code 128"
label var CPT129                   "CPT/HCPCS procedure code 129"
label var CPT130                   "CPT/HCPCS procedure code 130"
label var CPT131                   "CPT/HCPCS procedure code 131"
label var CPT132                   "CPT/HCPCS procedure code 132"
label var CPT133                   "CPT/HCPCS procedure code 133"
label var CPT134                   "CPT/HCPCS procedure code 134"
label var CPT135                   "CPT/HCPCS procedure code 135"
label var CPT136                   "CPT/HCPCS procedure code 136"
label var CPT137                   "CPT/HCPCS procedure code 137"
label var CPT138                   "CPT/HCPCS procedure code 138"
label var CPT139                   "CPT/HCPCS procedure code 139"
label var CPT140                   "CPT/HCPCS procedure code 140"
label var CPT141                   "CPT/HCPCS procedure code 141"
label var CPT142                   "CPT/HCPCS procedure code 142"
label var CPT143                   "CPT/HCPCS procedure code 143"
label var CPT144                   "CPT/HCPCS procedure code 144"
label var CPT145                   "CPT/HCPCS procedure code 145"
label var CPT146                   "CPT/HCPCS procedure code 146"
label var CPT147                   "CPT/HCPCS procedure code 147"
label var CPT148                   "CPT/HCPCS procedure code 148"
label var CPT149                   "CPT/HCPCS procedure code 149"
label var CPT150                   "CPT/HCPCS procedure code 150"
label var CPT151                   "CPT/HCPCS procedure code 151"
label var CPT152                   "CPT/HCPCS procedure code 152"
label var CPT153                   "CPT/HCPCS procedure code 153"
label var CPT154                   "CPT/HCPCS procedure code 154"
label var CPT155                   "CPT/HCPCS procedure code 155"
label var CPT156                   "CPT/HCPCS procedure code 156"
label var CPT157                   "CPT/HCPCS procedure code 157"
label var CPT158                   "CPT/HCPCS procedure code 158"
label var CPT159                   "CPT/HCPCS procedure code 159"
label var CPT160                   "CPT/HCPCS procedure code 160"
label var CPT161                   "CPT/HCPCS procedure code 161"
label var CPT162                   "CPT/HCPCS procedure code 162"
label var CPT163                   "CPT/HCPCS procedure code 163"
label var CPT164                   "CPT/HCPCS procedure code 164"
label var CPT165                   "CPT/HCPCS procedure code 165"
label var CPT166                   "CPT/HCPCS procedure code 166"
label var CPT167                   "CPT/HCPCS procedure code 167"
label var CPT168                   "CPT/HCPCS procedure code 168"
label var CPT169                   "CPT/HCPCS procedure code 169"
label var CPT170                   "CPT/HCPCS procedure code 170"
label var CPT171                   "CPT/HCPCS procedure code 171"
label var CPT172                   "CPT/HCPCS procedure code 172"
label var CPT173                   "CPT/HCPCS procedure code 173"
label var CPT174                   "CPT/HCPCS procedure code 174"
label var CPT175                   "CPT/HCPCS procedure code 175"
label var CPT176                   "CPT/HCPCS procedure code 176"
label var CPT177                   "CPT/HCPCS procedure code 177"
label var CPT178                   "CPT/HCPCS procedure code 178"
label var CPT179                   "CPT/HCPCS procedure code 179"
label var CPT180                   "CPT/HCPCS procedure code 180"
label var CPT181                   "CPT/HCPCS procedure code 181"
label var CPT182                   "CPT/HCPCS procedure code 182"
label var CPT183                   "CPT/HCPCS procedure code 183"
label var CPT184                   "CPT/HCPCS procedure code 184"
label var CPT185                   "CPT/HCPCS procedure code 185"
label var CPT186                   "CPT/HCPCS procedure code 186"
label var CPT187                   "CPT/HCPCS procedure code 187"
label var CPT188                   "CPT/HCPCS procedure code 188"
label var CPT189                   "CPT/HCPCS procedure code 189"
label var CPT190                   "CPT/HCPCS procedure code 190"
label var CPT191                   "CPT/HCPCS procedure code 191"
label var CPT192                   "CPT/HCPCS procedure code 192"
label var CPT193                   "CPT/HCPCS procedure code 193"
label var CPT194                   "CPT/HCPCS procedure code 194"
label var CPT195                   "CPT/HCPCS procedure code 195"
label var CPT196                   "CPT/HCPCS procedure code 196"
label var CPT197                   "CPT/HCPCS procedure code 197"
label var CPT198                   "CPT/HCPCS procedure code 198"
label var CPT199                   "CPT/HCPCS procedure code 199"
label var CPT200                   "CPT/HCPCS procedure code 200"
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
label var CPTCCS54                 "CCS: CPT 54"
label var CPTCCS55                 "CCS: CPT 55"
label var CPTCCS56                 "CCS: CPT 56"
label var CPTCCS57                 "CCS: CPT 57"
label var CPTCCS58                 "CCS: CPT 58"
label var CPTCCS59                 "CCS: CPT 59"
label var CPTCCS60                 "CCS: CPT 60"
label var CPTCCS61                 "CCS: CPT 61"
label var CPTCCS62                 "CCS: CPT 62"
label var CPTCCS63                 "CCS: CPT 63"
label var CPTCCS64                 "CCS: CPT 64"
label var CPTCCS65                 "CCS: CPT 65"
label var CPTCCS66                 "CCS: CPT 66"
label var CPTCCS67                 "CCS: CPT 67"
label var CPTCCS68                 "CCS: CPT 68"
label var CPTCCS69                 "CCS: CPT 69"
label var CPTCCS70                 "CCS: CPT 70"
label var CPTCCS71                 "CCS: CPT 71"
label var CPTCCS72                 "CCS: CPT 72"
label var CPTCCS73                 "CCS: CPT 73"
label var CPTCCS74                 "CCS: CPT 74"
label var CPTCCS75                 "CCS: CPT 75"
label var CPTCCS76                 "CCS: CPT 76"
label var CPTCCS77                 "CCS: CPT 77"
label var CPTCCS78                 "CCS: CPT 78"
label var CPTCCS79                 "CCS: CPT 79"
label var CPTCCS80                 "CCS: CPT 80"
label var CPTCCS81                 "CCS: CPT 81"
label var CPTCCS82                 "CCS: CPT 82"
label var CPTCCS83                 "CCS: CPT 83"
label var CPTCCS84                 "CCS: CPT 84"
label var CPTCCS85                 "CCS: CPT 85"
label var CPTCCS86                 "CCS: CPT 86"
label var CPTCCS87                 "CCS: CPT 87"
label var CPTCCS88                 "CCS: CPT 88"
label var CPTCCS89                 "CCS: CPT 89"
label var CPTCCS90                 "CCS: CPT 90"
label var CPTCCS91                 "CCS: CPT 91"
label var CPTCCS92                 "CCS: CPT 92"
label var CPTCCS93                 "CCS: CPT 93"
label var CPTCCS94                 "CCS: CPT 94"
label var CPTCCS95                 "CCS: CPT 95"
label var CPTCCS96                 "CCS: CPT 96"
label var CPTCCS97                 "CCS: CPT 97"
label var CPTCCS98                 "CCS: CPT 98"
label var CPTCCS99                 "CCS: CPT 99"
label var CPTCCS100                "CCS: CPT 100"
label var CPTCCS101                "CCS: CPT 101"
label var CPTCCS102                "CCS: CPT 102"
label var CPTCCS103                "CCS: CPT 103"
label var CPTCCS104                "CCS: CPT 104"
label var CPTCCS105                "CCS: CPT 105"
label var CPTCCS106                "CCS: CPT 106"
label var CPTCCS107                "CCS: CPT 107"
label var CPTCCS108                "CCS: CPT 108"
label var CPTCCS109                "CCS: CPT 109"
label var CPTCCS110                "CCS: CPT 110"
label var CPTCCS111                "CCS: CPT 111"
label var CPTCCS112                "CCS: CPT 112"
label var CPTCCS113                "CCS: CPT 113"
label var CPTCCS114                "CCS: CPT 114"
label var CPTCCS115                "CCS: CPT 115"
label var CPTCCS116                "CCS: CPT 116"
label var CPTCCS117                "CCS: CPT 117"
label var CPTCCS118                "CCS: CPT 118"
label var CPTCCS119                "CCS: CPT 119"
label var CPTCCS120                "CCS: CPT 120"
label var CPTCCS121                "CCS: CPT 121"
label var CPTCCS122                "CCS: CPT 122"
label var CPTCCS123                "CCS: CPT 123"
label var CPTCCS124                "CCS: CPT 124"
label var CPTCCS125                "CCS: CPT 125"
label var CPTCCS126                "CCS: CPT 126"
label var CPTCCS127                "CCS: CPT 127"
label var CPTCCS128                "CCS: CPT 128"
label var CPTCCS129                "CCS: CPT 129"
label var CPTCCS130                "CCS: CPT 130"
label var CPTCCS131                "CCS: CPT 131"
label var CPTCCS132                "CCS: CPT 132"
label var CPTCCS133                "CCS: CPT 133"
label var CPTCCS134                "CCS: CPT 134"
label var CPTCCS135                "CCS: CPT 135"
label var CPTCCS136                "CCS: CPT 136"
label var CPTCCS137                "CCS: CPT 137"
label var CPTCCS138                "CCS: CPT 138"
label var CPTCCS139                "CCS: CPT 139"
label var CPTCCS140                "CCS: CPT 140"
label var CPTCCS141                "CCS: CPT 141"
label var CPTCCS142                "CCS: CPT 142"
label var CPTCCS143                "CCS: CPT 143"
label var CPTCCS144                "CCS: CPT 144"
label var CPTCCS145                "CCS: CPT 145"
label var CPTCCS146                "CCS: CPT 146"
label var CPTCCS147                "CCS: CPT 147"
label var CPTCCS148                "CCS: CPT 148"
label var CPTCCS149                "CCS: CPT 149"
label var CPTCCS150                "CCS: CPT 150"
label var CPTCCS151                "CCS: CPT 151"
label var CPTCCS152                "CCS: CPT 152"
label var CPTCCS153                "CCS: CPT 153"
label var CPTCCS154                "CCS: CPT 154"
label var CPTCCS155                "CCS: CPT 155"
label var CPTCCS156                "CCS: CPT 156"
label var CPTCCS157                "CCS: CPT 157"
label var CPTCCS158                "CCS: CPT 158"
label var CPTCCS159                "CCS: CPT 159"
label var CPTCCS160                "CCS: CPT 160"
label var CPTCCS161                "CCS: CPT 161"
label var CPTCCS162                "CCS: CPT 162"
label var CPTCCS163                "CCS: CPT 163"
label var CPTCCS164                "CCS: CPT 164"
label var CPTCCS165                "CCS: CPT 165"
label var CPTCCS166                "CCS: CPT 166"
label var CPTCCS167                "CCS: CPT 167"
label var CPTCCS168                "CCS: CPT 168"
label var CPTCCS169                "CCS: CPT 169"
label var CPTCCS170                "CCS: CPT 170"
label var CPTCCS171                "CCS: CPT 171"
label var CPTCCS172                "CCS: CPT 172"
label var CPTCCS173                "CCS: CPT 173"
label var CPTCCS174                "CCS: CPT 174"
label var CPTCCS175                "CCS: CPT 175"
label var CPTCCS176                "CCS: CPT 176"
label var CPTCCS177                "CCS: CPT 177"
label var CPTCCS178                "CCS: CPT 178"
label var CPTCCS179                "CCS: CPT 179"
label var CPTCCS180                "CCS: CPT 180"
label var CPTCCS181                "CCS: CPT 181"
label var CPTCCS182                "CCS: CPT 182"
label var CPTCCS183                "CCS: CPT 183"
label var CPTCCS184                "CCS: CPT 184"
label var CPTCCS185                "CCS: CPT 185"
label var CPTCCS186                "CCS: CPT 186"
label var CPTCCS187                "CCS: CPT 187"
label var CPTCCS188                "CCS: CPT 188"
label var CPTCCS189                "CCS: CPT 189"
label var CPTCCS190                "CCS: CPT 190"
label var CPTCCS191                "CCS: CPT 191"
label var CPTCCS192                "CCS: CPT 192"
label var CPTCCS193                "CCS: CPT 193"
label var CPTCCS194                "CCS: CPT 194"
label var CPTCCS195                "CCS: CPT 195"
label var CPTCCS196                "CCS: CPT 196"
label var CPTCCS197                "CCS: CPT 197"
label var CPTCCS198                "CCS: CPT 198"
label var CPTCCS199                "CCS: CPT 199"
label var CPTCCS200                "CCS: CPT 200"
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
label var CPTDAY51                 "Number of days from admission to CPT51"
label var CPTDAY52                 "Number of days from admission to CPT52"
label var CPTDAY53                 "Number of days from admission to CPT53"
label var CPTDAY54                 "Number of days from admission to CPT54"
label var CPTDAY55                 "Number of days from admission to CPT55"
label var CPTDAY56                 "Number of days from admission to CPT56"
label var CPTDAY57                 "Number of days from admission to CPT57"
label var CPTDAY58                 "Number of days from admission to CPT58"
label var CPTDAY59                 "Number of days from admission to CPT59"
label var CPTDAY60                 "Number of days from admission to CPT60"
label var CPTDAY61                 "Number of days from admission to CPT61"
label var CPTDAY62                 "Number of days from admission to CPT62"
label var CPTDAY63                 "Number of days from admission to CPT63"
label var CPTDAY64                 "Number of days from admission to CPT64"
label var CPTDAY65                 "Number of days from admission to CPT65"
label var CPTDAY66                 "Number of days from admission to CPT66"
label var CPTDAY67                 "Number of days from admission to CPT67"
label var CPTDAY68                 "Number of days from admission to CPT68"
label var CPTDAY69                 "Number of days from admission to CPT69"
label var CPTDAY70                 "Number of days from admission to CPT70"
label var CPTDAY71                 "Number of days from admission to CPT71"
label var CPTDAY72                 "Number of days from admission to CPT72"
label var CPTDAY73                 "Number of days from admission to CPT73"
label var CPTDAY74                 "Number of days from admission to CPT74"
label var CPTDAY75                 "Number of days from admission to CPT75"
label var CPTDAY76                 "Number of days from admission to CPT76"
label var CPTDAY77                 "Number of days from admission to CPT77"
label var CPTDAY78                 "Number of days from admission to CPT78"
label var CPTDAY79                 "Number of days from admission to CPT79"
label var CPTDAY80                 "Number of days from admission to CPT80"
label var CPTDAY81                 "Number of days from admission to CPT81"
label var CPTDAY82                 "Number of days from admission to CPT82"
label var CPTDAY83                 "Number of days from admission to CPT83"
label var CPTDAY84                 "Number of days from admission to CPT84"
label var CPTDAY85                 "Number of days from admission to CPT85"
label var CPTDAY86                 "Number of days from admission to CPT86"
label var CPTDAY87                 "Number of days from admission to CPT87"
label var CPTDAY88                 "Number of days from admission to CPT88"
label var CPTDAY89                 "Number of days from admission to CPT89"
label var CPTDAY90                 "Number of days from admission to CPT90"
label var CPTDAY91                 "Number of days from admission to CPT91"
label var CPTDAY92                 "Number of days from admission to CPT92"
label var CPTDAY93                 "Number of days from admission to CPT93"
label var CPTDAY94                 "Number of days from admission to CPT94"
label var CPTDAY95                 "Number of days from admission to CPT95"
label var CPTDAY96                 "Number of days from admission to CPT96"
label var CPTDAY97                 "Number of days from admission to CPT97"
label var CPTDAY98                 "Number of days from admission to CPT98"
label var CPTDAY99                 "Number of days from admission to CPT99"
label var CPTDAY100                "Number of days from admission to CPT100"
label var CPTDAY101                "Number of days from admission to CPT101"
label var CPTDAY102                "Number of days from admission to CPT102"
label var CPTDAY103                "Number of days from admission to CPT103"
label var CPTDAY104                "Number of days from admission to CPT104"
label var CPTDAY105                "Number of days from admission to CPT105"
label var CPTDAY106                "Number of days from admission to CPT106"
label var CPTDAY107                "Number of days from admission to CPT107"
label var CPTDAY108                "Number of days from admission to CPT108"
label var CPTDAY109                "Number of days from admission to CPT109"
label var CPTDAY110                "Number of days from admission to CPT110"
label var CPTDAY111                "Number of days from admission to CPT111"
label var CPTDAY112                "Number of days from admission to CPT112"
label var CPTDAY113                "Number of days from admission to CPT113"
label var CPTDAY114                "Number of days from admission to CPT114"
label var CPTDAY115                "Number of days from admission to CPT115"
label var CPTDAY116                "Number of days from admission to CPT116"
label var CPTDAY117                "Number of days from admission to CPT117"
label var CPTDAY118                "Number of days from admission to CPT118"
label var CPTDAY119                "Number of days from admission to CPT119"
label var CPTDAY120                "Number of days from admission to CPT120"
label var CPTDAY121                "Number of days from admission to CPT121"
label var CPTDAY122                "Number of days from admission to CPT122"
label var CPTDAY123                "Number of days from admission to CPT123"
label var CPTDAY124                "Number of days from admission to CPT124"
label var CPTDAY125                "Number of days from admission to CPT125"
label var CPTDAY126                "Number of days from admission to CPT126"
label var CPTDAY127                "Number of days from admission to CPT127"
label var CPTDAY128                "Number of days from admission to CPT128"
label var CPTDAY129                "Number of days from admission to CPT129"
label var CPTDAY130                "Number of days from admission to CPT130"
label var CPTDAY131                "Number of days from admission to CPT131"
label var CPTDAY132                "Number of days from admission to CPT132"
label var CPTDAY133                "Number of days from admission to CPT133"
label var CPTDAY134                "Number of days from admission to CPT134"
label var CPTDAY135                "Number of days from admission to CPT135"
label var CPTDAY136                "Number of days from admission to CPT136"
label var CPTDAY137                "Number of days from admission to CPT137"
label var CPTDAY138                "Number of days from admission to CPT138"
label var CPTDAY139                "Number of days from admission to CPT139"
label var CPTDAY140                "Number of days from admission to CPT140"
label var CPTDAY141                "Number of days from admission to CPT141"
label var CPTDAY142                "Number of days from admission to CPT142"
label var CPTDAY143                "Number of days from admission to CPT143"
label var CPTDAY144                "Number of days from admission to CPT144"
label var CPTDAY145                "Number of days from admission to CPT145"
label var CPTDAY146                "Number of days from admission to CPT146"
label var CPTDAY147                "Number of days from admission to CPT147"
label var CPTDAY148                "Number of days from admission to CPT148"
label var CPTDAY149                "Number of days from admission to CPT149"
label var CPTDAY150                "Number of days from admission to CPT150"
label var CPTDAY151                "Number of days from admission to CPT151"
label var CPTDAY152                "Number of days from admission to CPT152"
label var CPTDAY153                "Number of days from admission to CPT153"
label var CPTDAY154                "Number of days from admission to CPT154"
label var CPTDAY155                "Number of days from admission to CPT155"
label var CPTDAY156                "Number of days from admission to CPT156"
label var CPTDAY157                "Number of days from admission to CPT157"
label var CPTDAY158                "Number of days from admission to CPT158"
label var CPTDAY159                "Number of days from admission to CPT159"
label var CPTDAY160                "Number of days from admission to CPT160"
label var CPTDAY161                "Number of days from admission to CPT161"
label var CPTDAY162                "Number of days from admission to CPT162"
label var CPTDAY163                "Number of days from admission to CPT163"
label var CPTDAY164                "Number of days from admission to CPT164"
label var CPTDAY165                "Number of days from admission to CPT165"
label var CPTDAY166                "Number of days from admission to CPT166"
label var CPTDAY167                "Number of days from admission to CPT167"
label var CPTDAY168                "Number of days from admission to CPT168"
label var CPTDAY169                "Number of days from admission to CPT169"
label var CPTDAY170                "Number of days from admission to CPT170"
label var CPTDAY171                "Number of days from admission to CPT171"
label var CPTDAY172                "Number of days from admission to CPT172"
label var CPTDAY173                "Number of days from admission to CPT173"
label var CPTDAY174                "Number of days from admission to CPT174"
label var CPTDAY175                "Number of days from admission to CPT175"
label var CPTDAY176                "Number of days from admission to CPT176"
label var CPTDAY177                "Number of days from admission to CPT177"
label var CPTDAY178                "Number of days from admission to CPT178"
label var CPTDAY179                "Number of days from admission to CPT179"
label var CPTDAY180                "Number of days from admission to CPT180"
label var CPTDAY181                "Number of days from admission to CPT181"
label var CPTDAY182                "Number of days from admission to CPT182"
label var CPTDAY183                "Number of days from admission to CPT183"
label var CPTDAY184                "Number of days from admission to CPT184"
label var CPTDAY185                "Number of days from admission to CPT185"
label var CPTDAY186                "Number of days from admission to CPT186"
label var CPTDAY187                "Number of days from admission to CPT187"
label var CPTDAY188                "Number of days from admission to CPT188"
label var CPTDAY189                "Number of days from admission to CPT189"
label var CPTDAY190                "Number of days from admission to CPT190"
label var CPTDAY191                "Number of days from admission to CPT191"
label var CPTDAY192                "Number of days from admission to CPT192"
label var CPTDAY193                "Number of days from admission to CPT193"
label var CPTDAY194                "Number of days from admission to CPT194"
label var CPTDAY195                "Number of days from admission to CPT195"
label var CPTDAY196                "Number of days from admission to CPT196"
label var CPTDAY197                "Number of days from admission to CPT197"
label var CPTDAY198                "Number of days from admission to CPT198"
label var CPTDAY199                "Number of days from admission to CPT199"
label var CPTDAY200                "Number of days from admission to CPT200"
label var DaysToEvent              "Days from 'start date' to admission"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DURATION                 "Elapsed time for hospital care in hours and minutes"
label var DXVER                    "Diagnosis Version"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var OBSERVATION              "Time for observation services (as received from source)"
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
recode AHOUR                     (-999 -888 -666=.)
recode AMONTH                    (-9 -8 -6 -5=.)
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
recode CPTCCS54                  (-99 -88 -66=.)
recode CPTCCS55                  (-99 -88 -66=.)
recode CPTCCS56                  (-99 -88 -66=.)
recode CPTCCS57                  (-99 -88 -66=.)
recode CPTCCS58                  (-99 -88 -66=.)
recode CPTCCS59                  (-99 -88 -66=.)
recode CPTCCS60                  (-99 -88 -66=.)
recode CPTCCS61                  (-99 -88 -66=.)
recode CPTCCS62                  (-99 -88 -66=.)
recode CPTCCS63                  (-99 -88 -66=.)
recode CPTCCS64                  (-99 -88 -66=.)
recode CPTCCS65                  (-99 -88 -66=.)
recode CPTCCS66                  (-99 -88 -66=.)
recode CPTCCS67                  (-99 -88 -66=.)
recode CPTCCS68                  (-99 -88 -66=.)
recode CPTCCS69                  (-99 -88 -66=.)
recode CPTCCS70                  (-99 -88 -66=.)
recode CPTCCS71                  (-99 -88 -66=.)
recode CPTCCS72                  (-99 -88 -66=.)
recode CPTCCS73                  (-99 -88 -66=.)
recode CPTCCS74                  (-99 -88 -66=.)
recode CPTCCS75                  (-99 -88 -66=.)
recode CPTCCS76                  (-99 -88 -66=.)
recode CPTCCS77                  (-99 -88 -66=.)
recode CPTCCS78                  (-99 -88 -66=.)
recode CPTCCS79                  (-99 -88 -66=.)
recode CPTCCS80                  (-99 -88 -66=.)
recode CPTCCS81                  (-99 -88 -66=.)
recode CPTCCS82                  (-99 -88 -66=.)
recode CPTCCS83                  (-99 -88 -66=.)
recode CPTCCS84                  (-99 -88 -66=.)
recode CPTCCS85                  (-99 -88 -66=.)
recode CPTCCS86                  (-99 -88 -66=.)
recode CPTCCS87                  (-99 -88 -66=.)
recode CPTCCS88                  (-99 -88 -66=.)
recode CPTCCS89                  (-99 -88 -66=.)
recode CPTCCS90                  (-99 -88 -66=.)
recode CPTCCS91                  (-99 -88 -66=.)
recode CPTCCS92                  (-99 -88 -66=.)
recode CPTCCS93                  (-99 -88 -66=.)
recode CPTCCS94                  (-99 -88 -66=.)
recode CPTCCS95                  (-99 -88 -66=.)
recode CPTCCS96                  (-99 -88 -66=.)
recode CPTCCS97                  (-99 -88 -66=.)
recode CPTCCS98                  (-99 -88 -66=.)
recode CPTCCS99                  (-99 -88 -66=.)
recode CPTCCS100                 (-99 -88 -66=.)
recode CPTCCS101                 (-99 -88 -66=.)
recode CPTCCS102                 (-99 -88 -66=.)
recode CPTCCS103                 (-99 -88 -66=.)
recode CPTCCS104                 (-99 -88 -66=.)
recode CPTCCS105                 (-99 -88 -66=.)
recode CPTCCS106                 (-99 -88 -66=.)
recode CPTCCS107                 (-99 -88 -66=.)
recode CPTCCS108                 (-99 -88 -66=.)
recode CPTCCS109                 (-99 -88 -66=.)
recode CPTCCS110                 (-99 -88 -66=.)
recode CPTCCS111                 (-99 -88 -66=.)
recode CPTCCS112                 (-99 -88 -66=.)
recode CPTCCS113                 (-99 -88 -66=.)
recode CPTCCS114                 (-99 -88 -66=.)
recode CPTCCS115                 (-99 -88 -66=.)
recode CPTCCS116                 (-99 -88 -66=.)
recode CPTCCS117                 (-99 -88 -66=.)
recode CPTCCS118                 (-99 -88 -66=.)
recode CPTCCS119                 (-99 -88 -66=.)
recode CPTCCS120                 (-99 -88 -66=.)
recode CPTCCS121                 (-99 -88 -66=.)
recode CPTCCS122                 (-99 -88 -66=.)
recode CPTCCS123                 (-99 -88 -66=.)
recode CPTCCS124                 (-99 -88 -66=.)
recode CPTCCS125                 (-99 -88 -66=.)
recode CPTCCS126                 (-99 -88 -66=.)
recode CPTCCS127                 (-99 -88 -66=.)
recode CPTCCS128                 (-99 -88 -66=.)
recode CPTCCS129                 (-99 -88 -66=.)
recode CPTCCS130                 (-99 -88 -66=.)
recode CPTCCS131                 (-99 -88 -66=.)
recode CPTCCS132                 (-99 -88 -66=.)
recode CPTCCS133                 (-99 -88 -66=.)
recode CPTCCS134                 (-99 -88 -66=.)
recode CPTCCS135                 (-99 -88 -66=.)
recode CPTCCS136                 (-99 -88 -66=.)
recode CPTCCS137                 (-99 -88 -66=.)
recode CPTCCS138                 (-99 -88 -66=.)
recode CPTCCS139                 (-99 -88 -66=.)
recode CPTCCS140                 (-99 -88 -66=.)
recode CPTCCS141                 (-99 -88 -66=.)
recode CPTCCS142                 (-99 -88 -66=.)
recode CPTCCS143                 (-99 -88 -66=.)
recode CPTCCS144                 (-99 -88 -66=.)
recode CPTCCS145                 (-99 -88 -66=.)
recode CPTCCS146                 (-99 -88 -66=.)
recode CPTCCS147                 (-99 -88 -66=.)
recode CPTCCS148                 (-99 -88 -66=.)
recode CPTCCS149                 (-99 -88 -66=.)
recode CPTCCS150                 (-99 -88 -66=.)
recode CPTCCS151                 (-99 -88 -66=.)
recode CPTCCS152                 (-99 -88 -66=.)
recode CPTCCS153                 (-99 -88 -66=.)
recode CPTCCS154                 (-99 -88 -66=.)
recode CPTCCS155                 (-99 -88 -66=.)
recode CPTCCS156                 (-99 -88 -66=.)
recode CPTCCS157                 (-99 -88 -66=.)
recode CPTCCS158                 (-99 -88 -66=.)
recode CPTCCS159                 (-99 -88 -66=.)
recode CPTCCS160                 (-99 -88 -66=.)
recode CPTCCS161                 (-99 -88 -66=.)
recode CPTCCS162                 (-99 -88 -66=.)
recode CPTCCS163                 (-99 -88 -66=.)
recode CPTCCS164                 (-99 -88 -66=.)
recode CPTCCS165                 (-99 -88 -66=.)
recode CPTCCS166                 (-99 -88 -66=.)
recode CPTCCS167                 (-99 -88 -66=.)
recode CPTCCS168                 (-99 -88 -66=.)
recode CPTCCS169                 (-99 -88 -66=.)
recode CPTCCS170                 (-99 -88 -66=.)
recode CPTCCS171                 (-99 -88 -66=.)
recode CPTCCS172                 (-99 -88 -66=.)
recode CPTCCS173                 (-99 -88 -66=.)
recode CPTCCS174                 (-99 -88 -66=.)
recode CPTCCS175                 (-99 -88 -66=.)
recode CPTCCS176                 (-99 -88 -66=.)
recode CPTCCS177                 (-99 -88 -66=.)
recode CPTCCS178                 (-99 -88 -66=.)
recode CPTCCS179                 (-99 -88 -66=.)
recode CPTCCS180                 (-99 -88 -66=.)
recode CPTCCS181                 (-99 -88 -66=.)
recode CPTCCS182                 (-99 -88 -66=.)
recode CPTCCS183                 (-99 -88 -66=.)
recode CPTCCS184                 (-99 -88 -66=.)
recode CPTCCS185                 (-99 -88 -66=.)
recode CPTCCS186                 (-99 -88 -66=.)
recode CPTCCS187                 (-99 -88 -66=.)
recode CPTCCS188                 (-99 -88 -66=.)
recode CPTCCS189                 (-99 -88 -66=.)
recode CPTCCS190                 (-99 -88 -66=.)
recode CPTCCS191                 (-99 -88 -66=.)
recode CPTCCS192                 (-99 -88 -66=.)
recode CPTCCS193                 (-99 -88 -66=.)
recode CPTCCS194                 (-99 -88 -66=.)
recode CPTCCS195                 (-99 -88 -66=.)
recode CPTCCS196                 (-99 -88 -66=.)
recode CPTCCS197                 (-99 -88 -66=.)
recode CPTCCS198                 (-99 -88 -66=.)
recode CPTCCS199                 (-99 -88 -66=.)
recode CPTCCS200                 (-99 -88 -66=.)
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
recode CPTDAY51                  (-99 -88 -66=.)
recode CPTDAY52                  (-99 -88 -66=.)
recode CPTDAY53                  (-99 -88 -66=.)
recode CPTDAY54                  (-99 -88 -66=.)
recode CPTDAY55                  (-99 -88 -66=.)
recode CPTDAY56                  (-99 -88 -66=.)
recode CPTDAY57                  (-99 -88 -66=.)
recode CPTDAY58                  (-99 -88 -66=.)
recode CPTDAY59                  (-99 -88 -66=.)
recode CPTDAY60                  (-99 -88 -66=.)
recode CPTDAY61                  (-99 -88 -66=.)
recode CPTDAY62                  (-99 -88 -66=.)
recode CPTDAY63                  (-99 -88 -66=.)
recode CPTDAY64                  (-99 -88 -66=.)
recode CPTDAY65                  (-99 -88 -66=.)
recode CPTDAY66                  (-99 -88 -66=.)
recode CPTDAY67                  (-99 -88 -66=.)
recode CPTDAY68                  (-99 -88 -66=.)
recode CPTDAY69                  (-99 -88 -66=.)
recode CPTDAY70                  (-99 -88 -66=.)
recode CPTDAY71                  (-99 -88 -66=.)
recode CPTDAY72                  (-99 -88 -66=.)
recode CPTDAY73                  (-99 -88 -66=.)
recode CPTDAY74                  (-99 -88 -66=.)
recode CPTDAY75                  (-99 -88 -66=.)
recode CPTDAY76                  (-99 -88 -66=.)
recode CPTDAY77                  (-99 -88 -66=.)
recode CPTDAY78                  (-99 -88 -66=.)
recode CPTDAY79                  (-99 -88 -66=.)
recode CPTDAY80                  (-99 -88 -66=.)
recode CPTDAY81                  (-99 -88 -66=.)
recode CPTDAY82                  (-99 -88 -66=.)
recode CPTDAY83                  (-99 -88 -66=.)
recode CPTDAY84                  (-99 -88 -66=.)
recode CPTDAY85                  (-99 -88 -66=.)
recode CPTDAY86                  (-99 -88 -66=.)
recode CPTDAY87                  (-99 -88 -66=.)
recode CPTDAY88                  (-99 -88 -66=.)
recode CPTDAY89                  (-99 -88 -66=.)
recode CPTDAY90                  (-99 -88 -66=.)
recode CPTDAY91                  (-99 -88 -66=.)
recode CPTDAY92                  (-99 -88 -66=.)
recode CPTDAY93                  (-99 -88 -66=.)
recode CPTDAY94                  (-99 -88 -66=.)
recode CPTDAY95                  (-99 -88 -66=.)
recode CPTDAY96                  (-99 -88 -66=.)
recode CPTDAY97                  (-99 -88 -66=.)
recode CPTDAY98                  (-99 -88 -66=.)
recode CPTDAY99                  (-99 -88 -66=.)
recode CPTDAY100                 (-99 -88 -66=.)
recode CPTDAY101                 (-99 -88 -66=.)
recode CPTDAY102                 (-99 -88 -66=.)
recode CPTDAY103                 (-99 -88 -66=.)
recode CPTDAY104                 (-99 -88 -66=.)
recode CPTDAY105                 (-99 -88 -66=.)
recode CPTDAY106                 (-99 -88 -66=.)
recode CPTDAY107                 (-99 -88 -66=.)
recode CPTDAY108                 (-99 -88 -66=.)
recode CPTDAY109                 (-99 -88 -66=.)
recode CPTDAY110                 (-99 -88 -66=.)
recode CPTDAY111                 (-99 -88 -66=.)
recode CPTDAY112                 (-99 -88 -66=.)
recode CPTDAY113                 (-99 -88 -66=.)
recode CPTDAY114                 (-99 -88 -66=.)
recode CPTDAY115                 (-99 -88 -66=.)
recode CPTDAY116                 (-99 -88 -66=.)
recode CPTDAY117                 (-99 -88 -66=.)
recode CPTDAY118                 (-99 -88 -66=.)
recode CPTDAY119                 (-99 -88 -66=.)
recode CPTDAY120                 (-99 -88 -66=.)
recode CPTDAY121                 (-99 -88 -66=.)
recode CPTDAY122                 (-99 -88 -66=.)
recode CPTDAY123                 (-99 -88 -66=.)
recode CPTDAY124                 (-99 -88 -66=.)
recode CPTDAY125                 (-99 -88 -66=.)
recode CPTDAY126                 (-99 -88 -66=.)
recode CPTDAY127                 (-99 -88 -66=.)
recode CPTDAY128                 (-99 -88 -66=.)
recode CPTDAY129                 (-99 -88 -66=.)
recode CPTDAY130                 (-99 -88 -66=.)
recode CPTDAY131                 (-99 -88 -66=.)
recode CPTDAY132                 (-99 -88 -66=.)
recode CPTDAY133                 (-99 -88 -66=.)
recode CPTDAY134                 (-99 -88 -66=.)
recode CPTDAY135                 (-99 -88 -66=.)
recode CPTDAY136                 (-99 -88 -66=.)
recode CPTDAY137                 (-99 -88 -66=.)
recode CPTDAY138                 (-99 -88 -66=.)
recode CPTDAY139                 (-99 -88 -66=.)
recode CPTDAY140                 (-99 -88 -66=.)
recode CPTDAY141                 (-99 -88 -66=.)
recode CPTDAY142                 (-99 -88 -66=.)
recode CPTDAY143                 (-99 -88 -66=.)
recode CPTDAY144                 (-99 -88 -66=.)
recode CPTDAY145                 (-99 -88 -66=.)
recode CPTDAY146                 (-99 -88 -66=.)
recode CPTDAY147                 (-99 -88 -66=.)
recode CPTDAY148                 (-99 -88 -66=.)
recode CPTDAY149                 (-99 -88 -66=.)
recode CPTDAY150                 (-99 -88 -66=.)
recode CPTDAY151                 (-99 -88 -66=.)
recode CPTDAY152                 (-99 -88 -66=.)
recode CPTDAY153                 (-99 -88 -66=.)
recode CPTDAY154                 (-99 -88 -66=.)
recode CPTDAY155                 (-99 -88 -66=.)
recode CPTDAY156                 (-99 -88 -66=.)
recode CPTDAY157                 (-99 -88 -66=.)
recode CPTDAY158                 (-99 -88 -66=.)
recode CPTDAY159                 (-99 -88 -66=.)
recode CPTDAY160                 (-99 -88 -66=.)
recode CPTDAY161                 (-99 -88 -66=.)
recode CPTDAY162                 (-99 -88 -66=.)
recode CPTDAY163                 (-99 -88 -66=.)
recode CPTDAY164                 (-99 -88 -66=.)
recode CPTDAY165                 (-99 -88 -66=.)
recode CPTDAY166                 (-99 -88 -66=.)
recode CPTDAY167                 (-99 -88 -66=.)
recode CPTDAY168                 (-99 -88 -66=.)
recode CPTDAY169                 (-99 -88 -66=.)
recode CPTDAY170                 (-99 -88 -66=.)
recode CPTDAY171                 (-99 -88 -66=.)
recode CPTDAY172                 (-99 -88 -66=.)
recode CPTDAY173                 (-99 -88 -66=.)
recode CPTDAY174                 (-99 -88 -66=.)
recode CPTDAY175                 (-99 -88 -66=.)
recode CPTDAY176                 (-99 -88 -66=.)
recode CPTDAY177                 (-99 -88 -66=.)
recode CPTDAY178                 (-99 -88 -66=.)
recode CPTDAY179                 (-99 -88 -66=.)
recode CPTDAY180                 (-99 -88 -66=.)
recode CPTDAY181                 (-99 -88 -66=.)
recode CPTDAY182                 (-99 -88 -66=.)
recode CPTDAY183                 (-99 -88 -66=.)
recode CPTDAY184                 (-99 -88 -66=.)
recode CPTDAY185                 (-99 -88 -66=.)
recode CPTDAY186                 (-99 -88 -66=.)
recode CPTDAY187                 (-99 -88 -66=.)
recode CPTDAY188                 (-99 -88 -66=.)
recode CPTDAY189                 (-99 -88 -66=.)
recode CPTDAY190                 (-99 -88 -66=.)
recode CPTDAY191                 (-99 -88 -66=.)
recode CPTDAY192                 (-99 -88 -66=.)
recode CPTDAY193                 (-99 -88 -66=.)
recode CPTDAY194                 (-99 -88 -66=.)
recode CPTDAY195                 (-99 -88 -66=.)
recode CPTDAY196                 (-99 -88 -66=.)
recode CPTDAY197                 (-99 -88 -66=.)
recode CPTDAY198                 (-99 -88 -66=.)
recode CPTDAY199                 (-99 -88 -66=.)
recode CPTDAY200                 (-99 -88 -66=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DURATION                  (-99999 -88888 -66666=.)
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCPT                      (-999 -888 -666=.)
recode OBSERVATION               (-999 -888 -666=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
recode PAY3                      (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
recode PL_RUCC                   (-9 -8 -6 -5=.)
recode PL_UIC                    (-9 -8 -6 -5=.)
recode PL_UR_CAT4                (-9 -8 -6 -5=.)
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

save "MO_SEDD_2017_CORE.dta", replace
