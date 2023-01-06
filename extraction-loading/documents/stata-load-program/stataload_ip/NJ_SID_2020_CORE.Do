/*****************************************************************************
* Creation Date: 04/26/2022   
* NJ_SID_2020_CORE.Do
* This program will load the 2020 NJ ASCII CORE File into Stata.
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
      str    CPT1                        28-  32   ///
      str    CPT2                        33-  37   ///
      str    CPT3                        38-  42   ///
      str    CPT4                        43-  47   ///
      str    CPT5                        48-  52   ///
      str    CPT6                        53-  57   ///
      str    CPT7                        58-  62   ///
      str    CPT8                        63-  67   ///
      str    CPT9                        68-  72   ///
      str    CPT10                       73-  77   ///
      str    CPT11                       78-  82   ///
      str    CPT12                       83-  87   ///
      str    CPT13                       88-  92   ///
      str    CPT14                       93-  97   ///
      str    CPT15                       98- 102   ///
      str    CPT16                      103- 107   ///
      str    CPT17                      108- 112   ///
      str    CPT18                      113- 117   ///
      str    CPT19                      118- 122   ///
      str    CPT20                      123- 127   ///
      str    CPT21                      128- 132   ///
      str    CPT22                      133- 137   ///
      str    CPT23                      138- 142   ///
      str    CPT24                      143- 147   ///
      str    CPT25                      148- 152   ///
      str    CPT26                      153- 157   ///
      str    CPT27                      158- 162   ///
      str    CPT28                      163- 167   ///
      str    CPT29                      168- 172   ///
      str    CPT30                      173- 177   ///
      str    CPT31                      178- 182   ///
      str    CPT32                      183- 187   ///
      str    CPT33                      188- 192   ///
      str    CPT34                      193- 197   ///
      str    CPT35                      198- 202   ///
      str    CPT36                      203- 207   ///
      str    CPT37                      208- 212   ///
      str    CPT38                      213- 217   ///
      str    CPT39                      218- 222   ///
      str    CPT40                      223- 227   ///
      str    CPT41                      228- 232   ///
      str    CPT42                      233- 237   ///
      str    CPT43                      238- 242   ///
      str    CPT44                      243- 247   ///
      str    CPT45                      248- 252   ///
      str    CPT46                      253- 257   ///
      str    CPT47                      258- 262   ///
      str    CPT48                      263- 267   ///
      str    CPT49                      268- 272   ///
      str    CPT50                      273- 277   ///
      str    CPT51                      278- 282   ///
      str    CPT52                      283- 287   ///
      str    CPT53                      288- 292   ///
      str    CPT54                      293- 297   ///
      str    CPT55                      298- 302   ///
      str    CPT56                      303- 307   ///
      str    CPT57                      308- 312   ///
      str    CPT58                      313- 317   ///
      str    CPT59                      318- 322   ///
      str    CPT60                      323- 327   ///
      str    CPT61                      328- 332   ///
      str    CPT62                      333- 337   ///
      str    CPT63                      338- 342   ///
      str    CPT64                      343- 347   ///
      str    CPT65                      348- 352   ///
      str    CPT66                      353- 357   ///
      str    CPT67                      358- 362   ///
      str    CPT68                      363- 367   ///
      str    CPT69                      368- 372   ///
      str    CPT70                      373- 377   ///
      str    CPT71                      378- 382   ///
      str    CPT72                      383- 387   ///
      str    CPT73                      388- 392   ///
      str    CPT74                      393- 397   ///
      str    CPT75                      398- 402   ///
      str    CPT76                      403- 407   ///
      str    CPT77                      408- 412   ///
      str    CPT78                      413- 417   ///
      str    CPT79                      418- 422   ///
      str    CPT80                      423- 427   ///
      str    CPT81                      428- 432   ///
      str    CPT82                      433- 437   ///
      str    CPT83                      438- 442   ///
      str    CPT84                      443- 447   ///
      str    CPT85                      448- 452   ///
      str    CPT86                      453- 457   ///
      str    CPT87                      458- 462   ///
      str    CPT88                      463- 467   ///
      str    CPT89                      468- 472   ///
      str    CPT90                      473- 477   ///
      str    CPT91                      478- 482   ///
      str    CPT92                      483- 487   ///
      str    CPT93                      488- 492   ///
      str    CPT94                      493- 497   ///
      str    CPT95                      498- 502   ///
      str    CPT96                      503- 507   ///
      str    CPT97                      508- 512   ///
      str    CPT98                      513- 517   ///
      str    CPT99                      518- 522   ///
      str    CPT100                     523- 527   ///
      str    CPT101                     528- 532   ///
      str    CPT102                     533- 537   ///
      str    CPT103                     538- 542   ///
      str    CPT104                     543- 547   ///
      str    CPT105                     548- 552   ///
      str    CPT106                     553- 557   ///
      str    CPT107                     558- 562   ///
      str    CPT108                     563- 567   ///
      str    CPT109                     568- 572   ///
      str    CPT110                     573- 577   ///
      str    CPT111                     578- 582   ///
      str    CPT112                     583- 587   ///
      str    CPT113                     588- 592   ///
      str    CPT114                     593- 597   ///
      str    CPT115                     598- 602   ///
      str    CPT116                     603- 607   ///
      str    CPT117                     608- 612   ///
      str    CPT118                     613- 617   ///
      str    CPT119                     618- 622   ///
      str    CPT120                     623- 627   ///
      str    CPT121                     628- 632   ///
      str    CPT122                     633- 637   ///
      str    CPT123                     638- 642   ///
      str    CPT124                     643- 647   ///
      str    CPT125                     648- 652   ///
      str    CPT126                     653- 657   ///
      str    CPT127                     658- 662   ///
      str    CPT128                     663- 667   ///
      str    CPT129                     668- 672   ///
      str    CPT130                     673- 677   ///
      str    CPT131                     678- 682   ///
      str    CPT132                     683- 687   ///
      str    CPT133                     688- 692   ///
      str    CPT134                     693- 697   ///
      str    CPT135                     698- 702   ///
      str    CPT136                     703- 707   ///
      str    CPT137                     708- 712   ///
      str    CPT138                     713- 717   ///
      str    CPT139                     718- 722   ///
      str    CPT140                     723- 727   ///
      str    CPT141                     728- 732   ///
      str    CPT142                     733- 737   ///
      str    CPT143                     738- 742   ///
      str    CPT144                     743- 747   ///
      str    CPT145                     748- 752   ///
      str    CPT146                     753- 757   ///
      str    CPT147                     758- 762   ///
      str    CPT148                     763- 767   ///
      str    CPT149                     768- 772   ///
      str    CPT150                     773- 777   ///
      str    CPT151                     778- 782   ///
      str    CPT152                     783- 787   ///
      str    CPT153                     788- 792   ///
      str    CPT154                     793- 797   ///
      str    CPT155                     798- 802   ///
      str    CPT156                     803- 807   ///
      str    CPT157                     808- 812   ///
      str    CPT158                     813- 817   ///
      str    CPT159                     818- 822   ///
      str    CPT160                     823- 827   ///
      str    CPT161                     828- 832   ///
      str    CPT162                     833- 837   ///
      str    CPT163                     838- 842   ///
      str    CPT164                     843- 847   ///
      str    CPT165                     848- 852   ///
      str    CPT166                     853- 857   ///
      str    CPT167                     858- 862   ///
      str    CPT168                     863- 867   ///
      str    CPT169                     868- 872   ///
      str    CPT170                     873- 877   ///
      str    CPT171                     878- 882   ///
      str    CPT172                     883- 887   ///
      str    CPT173                     888- 892   ///
      str    CPT174                     893- 897   ///
      str    CPT175                     898- 902   ///
      str    CPT176                     903- 907   ///
      str    CPT177                     908- 912   ///
      str    CPT178                     913- 917   ///
      str    CPT179                     918- 922   ///
      str    CPT180                     923- 927   ///
      str    CPT181                     928- 932   ///
      str    CPT182                     933- 937   ///
      str    CPT183                     938- 942   ///
      str    CPT184                     943- 947   ///
      str    CPT185                     948- 952   ///
      str    CPT186                     953- 957   ///
      str    CPT187                     958- 962   ///
      str    CPT188                     963- 967   ///
      str    CPT189                     968- 972   ///
      str    CPT190                     973- 977   ///
      str    CPT191                     978- 982   ///
      str    CPT192                     983- 987   ///
      str    CPT193                     988- 992   ///
      str    CPT194                     993- 997   ///
      str    CPT195                     998-1002   ///
      str    CPT196                    1003-1007   ///
      str    CPT197                    1008-1012   ///
      str    CPT198                    1013-1017   ///
      str    CPT199                    1018-1022   ///
      str    CPT200                    1023-1027   ///
      int    CPTCCS1                   1028-1030   ///
      int    CPTCCS2                   1031-1033   ///
      int    CPTCCS3                   1034-1036   ///
      int    CPTCCS4                   1037-1039   ///
      int    CPTCCS5                   1040-1042   ///
      int    CPTCCS6                   1043-1045   ///
      int    CPTCCS7                   1046-1048   ///
      int    CPTCCS8                   1049-1051   ///
      int    CPTCCS9                   1052-1054   ///
      int    CPTCCS10                  1055-1057   ///
      int    CPTCCS11                  1058-1060   ///
      int    CPTCCS12                  1061-1063   ///
      int    CPTCCS13                  1064-1066   ///
      int    CPTCCS14                  1067-1069   ///
      int    CPTCCS15                  1070-1072   ///
      int    CPTCCS16                  1073-1075   ///
      int    CPTCCS17                  1076-1078   ///
      int    CPTCCS18                  1079-1081   ///
      int    CPTCCS19                  1082-1084   ///
      int    CPTCCS20                  1085-1087   ///
      int    CPTCCS21                  1088-1090   ///
      int    CPTCCS22                  1091-1093   ///
      int    CPTCCS23                  1094-1096   ///
      int    CPTCCS24                  1097-1099   ///
      int    CPTCCS25                  1100-1102   ///
      int    CPTCCS26                  1103-1105   ///
      int    CPTCCS27                  1106-1108   ///
      int    CPTCCS28                  1109-1111   ///
      int    CPTCCS29                  1112-1114   ///
      int    CPTCCS30                  1115-1117   ///
      int    CPTCCS31                  1118-1120   ///
      int    CPTCCS32                  1121-1123   ///
      int    CPTCCS33                  1124-1126   ///
      int    CPTCCS34                  1127-1129   ///
      int    CPTCCS35                  1130-1132   ///
      int    CPTCCS36                  1133-1135   ///
      int    CPTCCS37                  1136-1138   ///
      int    CPTCCS38                  1139-1141   ///
      int    CPTCCS39                  1142-1144   ///
      int    CPTCCS40                  1145-1147   ///
      int    CPTCCS41                  1148-1150   ///
      int    CPTCCS42                  1151-1153   ///
      int    CPTCCS43                  1154-1156   ///
      int    CPTCCS44                  1157-1159   ///
      int    CPTCCS45                  1160-1162   ///
      int    CPTCCS46                  1163-1165   ///
      int    CPTCCS47                  1166-1168   ///
      int    CPTCCS48                  1169-1171   ///
      int    CPTCCS49                  1172-1174   ///
      int    CPTCCS50                  1175-1177   ///
      int    CPTCCS51                  1178-1180   ///
      int    CPTCCS52                  1181-1183   ///
      int    CPTCCS53                  1184-1186   ///
      int    CPTCCS54                  1187-1189   ///
      int    CPTCCS55                  1190-1192   ///
      int    CPTCCS56                  1193-1195   ///
      int    CPTCCS57                  1196-1198   ///
      int    CPTCCS58                  1199-1201   ///
      int    CPTCCS59                  1202-1204   ///
      int    CPTCCS60                  1205-1207   ///
      int    CPTCCS61                  1208-1210   ///
      int    CPTCCS62                  1211-1213   ///
      int    CPTCCS63                  1214-1216   ///
      int    CPTCCS64                  1217-1219   ///
      int    CPTCCS65                  1220-1222   ///
      int    CPTCCS66                  1223-1225   ///
      int    CPTCCS67                  1226-1228   ///
      int    CPTCCS68                  1229-1231   ///
      int    CPTCCS69                  1232-1234   ///
      int    CPTCCS70                  1235-1237   ///
      int    CPTCCS71                  1238-1240   ///
      int    CPTCCS72                  1241-1243   ///
      int    CPTCCS73                  1244-1246   ///
      int    CPTCCS74                  1247-1249   ///
      int    CPTCCS75                  1250-1252   ///
      int    CPTCCS76                  1253-1255   ///
      int    CPTCCS77                  1256-1258   ///
      int    CPTCCS78                  1259-1261   ///
      int    CPTCCS79                  1262-1264   ///
      int    CPTCCS80                  1265-1267   ///
      int    CPTCCS81                  1268-1270   ///
      int    CPTCCS82                  1271-1273   ///
      int    CPTCCS83                  1274-1276   ///
      int    CPTCCS84                  1277-1279   ///
      int    CPTCCS85                  1280-1282   ///
      int    CPTCCS86                  1283-1285   ///
      int    CPTCCS87                  1286-1288   ///
      int    CPTCCS88                  1289-1291   ///
      int    CPTCCS89                  1292-1294   ///
      int    CPTCCS90                  1295-1297   ///
      int    CPTCCS91                  1298-1300   ///
      int    CPTCCS92                  1301-1303   ///
      int    CPTCCS93                  1304-1306   ///
      int    CPTCCS94                  1307-1309   ///
      int    CPTCCS95                  1310-1312   ///
      int    CPTCCS96                  1313-1315   ///
      int    CPTCCS97                  1316-1318   ///
      int    CPTCCS98                  1319-1321   ///
      int    CPTCCS99                  1322-1324   ///
      int    CPTCCS100                 1325-1327   ///
      int    CPTCCS101                 1328-1330   ///
      int    CPTCCS102                 1331-1333   ///
      int    CPTCCS103                 1334-1336   ///
      int    CPTCCS104                 1337-1339   ///
      int    CPTCCS105                 1340-1342   ///
      int    CPTCCS106                 1343-1345   ///
      int    CPTCCS107                 1346-1348   ///
      int    CPTCCS108                 1349-1351   ///
      int    CPTCCS109                 1352-1354   ///
      int    CPTCCS110                 1355-1357   ///
      int    CPTCCS111                 1358-1360   ///
      int    CPTCCS112                 1361-1363   ///
      int    CPTCCS113                 1364-1366   ///
      int    CPTCCS114                 1367-1369   ///
      int    CPTCCS115                 1370-1372   ///
      int    CPTCCS116                 1373-1375   ///
      int    CPTCCS117                 1376-1378   ///
      int    CPTCCS118                 1379-1381   ///
      int    CPTCCS119                 1382-1384   ///
      int    CPTCCS120                 1385-1387   ///
      int    CPTCCS121                 1388-1390   ///
      int    CPTCCS122                 1391-1393   ///
      int    CPTCCS123                 1394-1396   ///
      int    CPTCCS124                 1397-1399   ///
      int    CPTCCS125                 1400-1402   ///
      int    CPTCCS126                 1403-1405   ///
      int    CPTCCS127                 1406-1408   ///
      int    CPTCCS128                 1409-1411   ///
      int    CPTCCS129                 1412-1414   ///
      int    CPTCCS130                 1415-1417   ///
      int    CPTCCS131                 1418-1420   ///
      int    CPTCCS132                 1421-1423   ///
      int    CPTCCS133                 1424-1426   ///
      int    CPTCCS134                 1427-1429   ///
      int    CPTCCS135                 1430-1432   ///
      int    CPTCCS136                 1433-1435   ///
      int    CPTCCS137                 1436-1438   ///
      int    CPTCCS138                 1439-1441   ///
      int    CPTCCS139                 1442-1444   ///
      int    CPTCCS140                 1445-1447   ///
      int    CPTCCS141                 1448-1450   ///
      int    CPTCCS142                 1451-1453   ///
      int    CPTCCS143                 1454-1456   ///
      int    CPTCCS144                 1457-1459   ///
      int    CPTCCS145                 1460-1462   ///
      int    CPTCCS146                 1463-1465   ///
      int    CPTCCS147                 1466-1468   ///
      int    CPTCCS148                 1469-1471   ///
      int    CPTCCS149                 1472-1474   ///
      int    CPTCCS150                 1475-1477   ///
      int    CPTCCS151                 1478-1480   ///
      int    CPTCCS152                 1481-1483   ///
      int    CPTCCS153                 1484-1486   ///
      int    CPTCCS154                 1487-1489   ///
      int    CPTCCS155                 1490-1492   ///
      int    CPTCCS156                 1493-1495   ///
      int    CPTCCS157                 1496-1498   ///
      int    CPTCCS158                 1499-1501   ///
      int    CPTCCS159                 1502-1504   ///
      int    CPTCCS160                 1505-1507   ///
      int    CPTCCS161                 1508-1510   ///
      int    CPTCCS162                 1511-1513   ///
      int    CPTCCS163                 1514-1516   ///
      int    CPTCCS164                 1517-1519   ///
      int    CPTCCS165                 1520-1522   ///
      int    CPTCCS166                 1523-1525   ///
      int    CPTCCS167                 1526-1528   ///
      int    CPTCCS168                 1529-1531   ///
      int    CPTCCS169                 1532-1534   ///
      int    CPTCCS170                 1535-1537   ///
      int    CPTCCS171                 1538-1540   ///
      int    CPTCCS172                 1541-1543   ///
      int    CPTCCS173                 1544-1546   ///
      int    CPTCCS174                 1547-1549   ///
      int    CPTCCS175                 1550-1552   ///
      int    CPTCCS176                 1553-1555   ///
      int    CPTCCS177                 1556-1558   ///
      int    CPTCCS178                 1559-1561   ///
      int    CPTCCS179                 1562-1564   ///
      int    CPTCCS180                 1565-1567   ///
      int    CPTCCS181                 1568-1570   ///
      int    CPTCCS182                 1571-1573   ///
      int    CPTCCS183                 1574-1576   ///
      int    CPTCCS184                 1577-1579   ///
      int    CPTCCS185                 1580-1582   ///
      int    CPTCCS186                 1583-1585   ///
      int    CPTCCS187                 1586-1588   ///
      int    CPTCCS188                 1589-1591   ///
      int    CPTCCS189                 1592-1594   ///
      int    CPTCCS190                 1595-1597   ///
      int    CPTCCS191                 1598-1600   ///
      int    CPTCCS192                 1601-1603   ///
      int    CPTCCS193                 1604-1606   ///
      int    CPTCCS194                 1607-1609   ///
      int    CPTCCS195                 1610-1612   ///
      int    CPTCCS196                 1613-1615   ///
      int    CPTCCS197                 1616-1618   ///
      int    CPTCCS198                 1619-1621   ///
      int    CPTCCS199                 1622-1624   ///
      int    CPTCCS200                 1625-1627   ///
      str    CPTM1_1                   1628-1629   ///
      str    CPTM1_2                   1630-1631   ///
      str    CPTM1_3                   1632-1633   ///
      str    CPTM1_4                   1634-1635   ///
      str    CPTM1_5                   1636-1637   ///
      str    CPTM1_6                   1638-1639   ///
      str    CPTM1_7                   1640-1641   ///
      str    CPTM1_8                   1642-1643   ///
      str    CPTM1_9                   1644-1645   ///
      str    CPTM1_10                  1646-1647   ///
      str    CPTM1_11                  1648-1649   ///
      str    CPTM1_12                  1650-1651   ///
      str    CPTM1_13                  1652-1653   ///
      str    CPTM1_14                  1654-1655   ///
      str    CPTM1_15                  1656-1657   ///
      str    CPTM1_16                  1658-1659   ///
      str    CPTM1_17                  1660-1661   ///
      str    CPTM1_18                  1662-1663   ///
      str    CPTM1_19                  1664-1665   ///
      str    CPTM1_20                  1666-1667   ///
      str    CPTM1_21                  1668-1669   ///
      str    CPTM1_22                  1670-1671   ///
      str    CPTM1_23                  1672-1673   ///
      str    CPTM1_24                  1674-1675   ///
      str    CPTM1_25                  1676-1677   ///
      str    CPTM1_26                  1678-1679   ///
      str    CPTM1_27                  1680-1681   ///
      str    CPTM1_28                  1682-1683   ///
      str    CPTM1_29                  1684-1685   ///
      str    CPTM1_30                  1686-1687   ///
      str    CPTM1_31                  1688-1689   ///
      str    CPTM1_32                  1690-1691   ///
      str    CPTM1_33                  1692-1693   ///
      str    CPTM1_34                  1694-1695   ///
      str    CPTM1_35                  1696-1697   ///
      str    CPTM1_36                  1698-1699   ///
      str    CPTM1_37                  1700-1701   ///
      str    CPTM1_38                  1702-1703   ///
      str    CPTM1_39                  1704-1705   ///
      str    CPTM1_40                  1706-1707   ///
      str    CPTM1_41                  1708-1709   ///
      str    CPTM1_42                  1710-1711   ///
      str    CPTM1_43                  1712-1713   ///
      str    CPTM1_44                  1714-1715   ///
      str    CPTM1_45                  1716-1717   ///
      str    CPTM1_46                  1718-1719   ///
      str    CPTM1_47                  1720-1721   ///
      str    CPTM1_48                  1722-1723   ///
      str    CPTM1_49                  1724-1725   ///
      str    CPTM1_50                  1726-1727   ///
      str    CPTM1_51                  1728-1729   ///
      str    CPTM1_52                  1730-1731   ///
      str    CPTM1_53                  1732-1733   ///
      str    CPTM1_54                  1734-1735   ///
      str    CPTM1_55                  1736-1737   ///
      str    CPTM1_56                  1738-1739   ///
      str    CPTM1_57                  1740-1741   ///
      str    CPTM1_58                  1742-1743   ///
      str    CPTM1_59                  1744-1745   ///
      str    CPTM1_60                  1746-1747   ///
      str    CPTM1_61                  1748-1749   ///
      str    CPTM1_62                  1750-1751   ///
      str    CPTM1_63                  1752-1753   ///
      str    CPTM1_64                  1754-1755   ///
      str    CPTM1_65                  1756-1757   ///
      str    CPTM1_66                  1758-1759   ///
      str    CPTM1_67                  1760-1761   ///
      str    CPTM1_68                  1762-1763   ///
      str    CPTM1_69                  1764-1765   ///
      str    CPTM1_70                  1766-1767   ///
      str    CPTM1_71                  1768-1769   ///
      str    CPTM1_72                  1770-1771   ///
      str    CPTM1_73                  1772-1773   ///
      str    CPTM1_74                  1774-1775   ///
      str    CPTM1_75                  1776-1777   ///
      str    CPTM1_76                  1778-1779   ///
      str    CPTM1_77                  1780-1781   ///
      str    CPTM1_78                  1782-1783   ///
      str    CPTM1_79                  1784-1785   ///
      str    CPTM1_80                  1786-1787   ///
      str    CPTM1_81                  1788-1789   ///
      str    CPTM1_82                  1790-1791   ///
      str    CPTM1_83                  1792-1793   ///
      str    CPTM1_84                  1794-1795   ///
      str    CPTM1_85                  1796-1797   ///
      str    CPTM1_86                  1798-1799   ///
      str    CPTM1_87                  1800-1801   ///
      str    CPTM1_88                  1802-1803   ///
      str    CPTM1_89                  1804-1805   ///
      str    CPTM1_90                  1806-1807   ///
      str    CPTM1_91                  1808-1809   ///
      str    CPTM1_92                  1810-1811   ///
      str    CPTM1_93                  1812-1813   ///
      str    CPTM1_94                  1814-1815   ///
      str    CPTM1_95                  1816-1817   ///
      str    CPTM1_96                  1818-1819   ///
      str    CPTM1_97                  1820-1821   ///
      str    CPTM1_98                  1822-1823   ///
      str    CPTM1_99                  1824-1825   ///
      str    CPTM1_100                 1826-1827   ///
      str    CPTM1_101                 1828-1829   ///
      str    CPTM1_102                 1830-1831   ///
      str    CPTM1_103                 1832-1833   ///
      str    CPTM1_104                 1834-1835   ///
      str    CPTM1_105                 1836-1837   ///
      str    CPTM1_106                 1838-1839   ///
      str    CPTM1_107                 1840-1841   ///
      str    CPTM1_108                 1842-1843   ///
      str    CPTM1_109                 1844-1845   ///
      str    CPTM1_110                 1846-1847   ///
      str    CPTM1_111                 1848-1849   ///
      str    CPTM1_112                 1850-1851   ///
      str    CPTM1_113                 1852-1853   ///
      str    CPTM1_114                 1854-1855   ///
      str    CPTM1_115                 1856-1857   ///
      str    CPTM1_116                 1858-1859   ///
      str    CPTM1_117                 1860-1861   ///
      str    CPTM1_118                 1862-1863   ///
      str    CPTM1_119                 1864-1865   ///
      str    CPTM1_120                 1866-1867   ///
      str    CPTM1_121                 1868-1869   ///
      str    CPTM1_122                 1870-1871   ///
      str    CPTM1_123                 1872-1873   ///
      str    CPTM1_124                 1874-1875   ///
      str    CPTM1_125                 1876-1877   ///
      str    CPTM1_126                 1878-1879   ///
      str    CPTM1_127                 1880-1881   ///
      str    CPTM1_128                 1882-1883   ///
      str    CPTM1_129                 1884-1885   ///
      str    CPTM1_130                 1886-1887   ///
      str    CPTM1_131                 1888-1889   ///
      str    CPTM1_132                 1890-1891   ///
      str    CPTM1_133                 1892-1893   ///
      str    CPTM1_134                 1894-1895   ///
      str    CPTM1_135                 1896-1897   ///
      str    CPTM1_136                 1898-1899   ///
      str    CPTM1_137                 1900-1901   ///
      str    CPTM1_138                 1902-1903   ///
      str    CPTM1_139                 1904-1905   ///
      str    CPTM1_140                 1906-1907   ///
      str    CPTM1_141                 1908-1909   ///
      str    CPTM1_142                 1910-1911   ///
      str    CPTM1_143                 1912-1913   ///
      str    CPTM1_144                 1914-1915   ///
      str    CPTM1_145                 1916-1917   ///
      str    CPTM1_146                 1918-1919   ///
      str    CPTM1_147                 1920-1921   ///
      str    CPTM1_148                 1922-1923   ///
      str    CPTM1_149                 1924-1925   ///
      str    CPTM1_150                 1926-1927   ///
      str    CPTM1_151                 1928-1929   ///
      str    CPTM1_152                 1930-1931   ///
      str    CPTM1_153                 1932-1933   ///
      str    CPTM1_154                 1934-1935   ///
      str    CPTM1_155                 1936-1937   ///
      str    CPTM1_156                 1938-1939   ///
      str    CPTM1_157                 1940-1941   ///
      str    CPTM1_158                 1942-1943   ///
      str    CPTM1_159                 1944-1945   ///
      str    CPTM1_160                 1946-1947   ///
      str    CPTM1_161                 1948-1949   ///
      str    CPTM1_162                 1950-1951   ///
      str    CPTM1_163                 1952-1953   ///
      str    CPTM1_164                 1954-1955   ///
      str    CPTM1_165                 1956-1957   ///
      str    CPTM1_166                 1958-1959   ///
      str    CPTM1_167                 1960-1961   ///
      str    CPTM1_168                 1962-1963   ///
      str    CPTM1_169                 1964-1965   ///
      str    CPTM1_170                 1966-1967   ///
      str    CPTM1_171                 1968-1969   ///
      str    CPTM1_172                 1970-1971   ///
      str    CPTM1_173                 1972-1973   ///
      str    CPTM1_174                 1974-1975   ///
      str    CPTM1_175                 1976-1977   ///
      str    CPTM1_176                 1978-1979   ///
      str    CPTM1_177                 1980-1981   ///
      str    CPTM1_178                 1982-1983   ///
      str    CPTM1_179                 1984-1985   ///
      str    CPTM1_180                 1986-1987   ///
      str    CPTM1_181                 1988-1989   ///
      str    CPTM1_182                 1990-1991   ///
      str    CPTM1_183                 1992-1993   ///
      str    CPTM1_184                 1994-1995   ///
      str    CPTM1_185                 1996-1997   ///
      str    CPTM1_186                 1998-1999   ///
      str    CPTM1_187                 2000-2001   ///
      str    CPTM1_188                 2002-2003   ///
      str    CPTM1_189                 2004-2005   ///
      str    CPTM1_190                 2006-2007   ///
      str    CPTM1_191                 2008-2009   ///
      str    CPTM1_192                 2010-2011   ///
      str    CPTM1_193                 2012-2013   ///
      str    CPTM1_194                 2014-2015   ///
      str    CPTM1_195                 2016-2017   ///
      str    CPTM1_196                 2018-2019   ///
      str    CPTM1_197                 2020-2021   ///
      str    CPTM1_198                 2022-2023   ///
      str    CPTM1_199                 2024-2025   ///
      str    CPTM1_200                 2026-2027   ///
      str    CPTM2_1                   2028-2029   ///
      str    CPTM2_2                   2030-2031   ///
      str    CPTM2_3                   2032-2033   ///
      str    CPTM2_4                   2034-2035   ///
      str    CPTM2_5                   2036-2037   ///
      str    CPTM2_6                   2038-2039   ///
      str    CPTM2_7                   2040-2041   ///
      str    CPTM2_8                   2042-2043   ///
      str    CPTM2_9                   2044-2045   ///
      str    CPTM2_10                  2046-2047   ///
      str    CPTM2_11                  2048-2049   ///
      str    CPTM2_12                  2050-2051   ///
      str    CPTM2_13                  2052-2053   ///
      str    CPTM2_14                  2054-2055   ///
      str    CPTM2_15                  2056-2057   ///
      str    CPTM2_16                  2058-2059   ///
      str    CPTM2_17                  2060-2061   ///
      str    CPTM2_18                  2062-2063   ///
      str    CPTM2_19                  2064-2065   ///
      str    CPTM2_20                  2066-2067   ///
      str    CPTM2_21                  2068-2069   ///
      str    CPTM2_22                  2070-2071   ///
      str    CPTM2_23                  2072-2073   ///
      str    CPTM2_24                  2074-2075   ///
      str    CPTM2_25                  2076-2077   ///
      str    CPTM2_26                  2078-2079   ///
      str    CPTM2_27                  2080-2081   ///
      str    CPTM2_28                  2082-2083   ///
      str    CPTM2_29                  2084-2085   ///
      str    CPTM2_30                  2086-2087   ///
      str    CPTM2_31                  2088-2089   ///
      str    CPTM2_32                  2090-2091   ///
      str    CPTM2_33                  2092-2093   ///
      str    CPTM2_34                  2094-2095   ///
      str    CPTM2_35                  2096-2097   ///
      str    CPTM2_36                  2098-2099   ///
      str    CPTM2_37                  2100-2101   ///
      str    CPTM2_38                  2102-2103   ///
      str    CPTM2_39                  2104-2105   ///
      str    CPTM2_40                  2106-2107   ///
      str    CPTM2_41                  2108-2109   ///
      str    CPTM2_42                  2110-2111   ///
      str    CPTM2_43                  2112-2113   ///
      str    CPTM2_44                  2114-2115   ///
      str    CPTM2_45                  2116-2117   ///
      str    CPTM2_46                  2118-2119   ///
      str    CPTM2_47                  2120-2121   ///
      str    CPTM2_48                  2122-2123   ///
      str    CPTM2_49                  2124-2125   ///
      str    CPTM2_50                  2126-2127   ///
      str    CPTM2_51                  2128-2129   ///
      str    CPTM2_52                  2130-2131   ///
      str    CPTM2_53                  2132-2133   ///
      str    CPTM2_54                  2134-2135   ///
      str    CPTM2_55                  2136-2137   ///
      str    CPTM2_56                  2138-2139   ///
      str    CPTM2_57                  2140-2141   ///
      str    CPTM2_58                  2142-2143   ///
      str    CPTM2_59                  2144-2145   ///
      str    CPTM2_60                  2146-2147   ///
      str    CPTM2_61                  2148-2149   ///
      str    CPTM2_62                  2150-2151   ///
      str    CPTM2_63                  2152-2153   ///
      str    CPTM2_64                  2154-2155   ///
      str    CPTM2_65                  2156-2157   ///
      str    CPTM2_66                  2158-2159   ///
      str    CPTM2_67                  2160-2161   ///
      str    CPTM2_68                  2162-2163   ///
      str    CPTM2_69                  2164-2165   ///
      str    CPTM2_70                  2166-2167   ///
      str    CPTM2_71                  2168-2169   ///
      str    CPTM2_72                  2170-2171   ///
      str    CPTM2_73                  2172-2173   ///
      str    CPTM2_74                  2174-2175   ///
      str    CPTM2_75                  2176-2177   ///
      str    CPTM2_76                  2178-2179   ///
      str    CPTM2_77                  2180-2181   ///
      str    CPTM2_78                  2182-2183   ///
      str    CPTM2_79                  2184-2185   ///
      str    CPTM2_80                  2186-2187   ///
      str    CPTM2_81                  2188-2189   ///
      str    CPTM2_82                  2190-2191   ///
      str    CPTM2_83                  2192-2193   ///
      str    CPTM2_84                  2194-2195   ///
      str    CPTM2_85                  2196-2197   ///
      str    CPTM2_86                  2198-2199   ///
      str    CPTM2_87                  2200-2201   ///
      str    CPTM2_88                  2202-2203   ///
      str    CPTM2_89                  2204-2205   ///
      str    CPTM2_90                  2206-2207   ///
      str    CPTM2_91                  2208-2209   ///
      str    CPTM2_92                  2210-2211   ///
      str    CPTM2_93                  2212-2213   ///
      str    CPTM2_94                  2214-2215   ///
      str    CPTM2_95                  2216-2217   ///
      str    CPTM2_96                  2218-2219   ///
      str    CPTM2_97                  2220-2221   ///
      str    CPTM2_98                  2222-2223   ///
      str    CPTM2_99                  2224-2225   ///
      str    CPTM2_100                 2226-2227   ///
      str    CPTM2_101                 2228-2229   ///
      str    CPTM2_102                 2230-2231   ///
      str    CPTM2_103                 2232-2233   ///
      str    CPTM2_104                 2234-2235   ///
      str    CPTM2_105                 2236-2237   ///
      str    CPTM2_106                 2238-2239   ///
      str    CPTM2_107                 2240-2241   ///
      str    CPTM2_108                 2242-2243   ///
      str    CPTM2_109                 2244-2245   ///
      str    CPTM2_110                 2246-2247   ///
      str    CPTM2_111                 2248-2249   ///
      str    CPTM2_112                 2250-2251   ///
      str    CPTM2_113                 2252-2253   ///
      str    CPTM2_114                 2254-2255   ///
      str    CPTM2_115                 2256-2257   ///
      str    CPTM2_116                 2258-2259   ///
      str    CPTM2_117                 2260-2261   ///
      str    CPTM2_118                 2262-2263   ///
      str    CPTM2_119                 2264-2265   ///
      str    CPTM2_120                 2266-2267   ///
      str    CPTM2_121                 2268-2269   ///
      str    CPTM2_122                 2270-2271   ///
      str    CPTM2_123                 2272-2273   ///
      str    CPTM2_124                 2274-2275   ///
      str    CPTM2_125                 2276-2277   ///
      str    CPTM2_126                 2278-2279   ///
      str    CPTM2_127                 2280-2281   ///
      str    CPTM2_128                 2282-2283   ///
      str    CPTM2_129                 2284-2285   ///
      str    CPTM2_130                 2286-2287   ///
      str    CPTM2_131                 2288-2289   ///
      str    CPTM2_132                 2290-2291   ///
      str    CPTM2_133                 2292-2293   ///
      str    CPTM2_134                 2294-2295   ///
      str    CPTM2_135                 2296-2297   ///
      str    CPTM2_136                 2298-2299   ///
      str    CPTM2_137                 2300-2301   ///
      str    CPTM2_138                 2302-2303   ///
      str    CPTM2_139                 2304-2305   ///
      str    CPTM2_140                 2306-2307   ///
      str    CPTM2_141                 2308-2309   ///
      str    CPTM2_142                 2310-2311   ///
      str    CPTM2_143                 2312-2313   ///
      str    CPTM2_144                 2314-2315   ///
      str    CPTM2_145                 2316-2317   ///
      str    CPTM2_146                 2318-2319   ///
      str    CPTM2_147                 2320-2321   ///
      str    CPTM2_148                 2322-2323   ///
      str    CPTM2_149                 2324-2325   ///
      str    CPTM2_150                 2326-2327   ///
      str    CPTM2_151                 2328-2329   ///
      str    CPTM2_152                 2330-2331   ///
      str    CPTM2_153                 2332-2333   ///
      str    CPTM2_154                 2334-2335   ///
      str    CPTM2_155                 2336-2337   ///
      str    CPTM2_156                 2338-2339   ///
      str    CPTM2_157                 2340-2341   ///
      str    CPTM2_158                 2342-2343   ///
      str    CPTM2_159                 2344-2345   ///
      str    CPTM2_160                 2346-2347   ///
      str    CPTM2_161                 2348-2349   ///
      str    CPTM2_162                 2350-2351   ///
      str    CPTM2_163                 2352-2353   ///
      str    CPTM2_164                 2354-2355   ///
      str    CPTM2_165                 2356-2357   ///
      str    CPTM2_166                 2358-2359   ///
      str    CPTM2_167                 2360-2361   ///
      str    CPTM2_168                 2362-2363   ///
      str    CPTM2_169                 2364-2365   ///
      str    CPTM2_170                 2366-2367   ///
      str    CPTM2_171                 2368-2369   ///
      str    CPTM2_172                 2370-2371   ///
      str    CPTM2_173                 2372-2373   ///
      str    CPTM2_174                 2374-2375   ///
      str    CPTM2_175                 2376-2377   ///
      str    CPTM2_176                 2378-2379   ///
      str    CPTM2_177                 2380-2381   ///
      str    CPTM2_178                 2382-2383   ///
      str    CPTM2_179                 2384-2385   ///
      str    CPTM2_180                 2386-2387   ///
      str    CPTM2_181                 2388-2389   ///
      str    CPTM2_182                 2390-2391   ///
      str    CPTM2_183                 2392-2393   ///
      str    CPTM2_184                 2394-2395   ///
      str    CPTM2_185                 2396-2397   ///
      str    CPTM2_186                 2398-2399   ///
      str    CPTM2_187                 2400-2401   ///
      str    CPTM2_188                 2402-2403   ///
      str    CPTM2_189                 2404-2405   ///
      str    CPTM2_190                 2406-2407   ///
      str    CPTM2_191                 2408-2409   ///
      str    CPTM2_192                 2410-2411   ///
      str    CPTM2_193                 2412-2413   ///
      str    CPTM2_194                 2414-2415   ///
      str    CPTM2_195                 2416-2417   ///
      str    CPTM2_196                 2418-2419   ///
      str    CPTM2_197                 2420-2421   ///
      str    CPTM2_198                 2422-2423   ///
      str    CPTM2_199                 2424-2425   ///
      str    CPTM2_200                 2426-2427   ///
      int    DHOUR                     2428-2431   ///
      byte   DIED                      2432-2433   ///
      str    DISP_X                    2434-2435   ///
      byte   DISPUB04                  2436-2437   ///
      byte   DISPUNIFORM               2438-2439   ///
      byte   DMONTH                    2440-2441   ///
      byte   DNR                       2442-2443   ///
      byte   DQTR                      2444-2445   ///
      int    DRG                       2446-2448   ///
      int    DRG_NoPOA                 2449-2451   ///
      byte   DRGVER                    2452-2453   ///
      str    DSHOSPID                  2454-2470   ///
      str    DXPOA1                    2471        ///
      str    DXPOA2                    2472        ///
      str    DXPOA3                    2473        ///
      str    DXPOA4                    2474        ///
      str    DXPOA5                    2475        ///
      str    DXPOA6                    2476        ///
      str    DXPOA7                    2477        ///
      str    DXPOA8                    2478        ///
      str    DXPOA9                    2479        ///
      str    DXPOA10                   2480        ///
      str    DXPOA11                   2481        ///
      str    DXPOA12                   2482        ///
      str    DXPOA13                   2483        ///
      str    DXPOA14                   2484        ///
      str    DXPOA15                   2485        ///
      str    DXPOA16                   2486        ///
      str    DXPOA17                   2487        ///
      str    DXPOA18                   2488        ///
      str    DXPOA19                   2489        ///
      str    DXPOA20                   2490        ///
      str    DXPOA21                   2491        ///
      str    DXPOA22                   2492        ///
      str    DXPOA23                   2493        ///
      str    DXPOA24                   2494        ///
      str    DXPOA25                   2495        ///
      str    DXPOA26                   2496        ///
      str    DXPOA27                   2497        ///
      str    DXPOA28                   2498        ///
      str    DXPOA29                   2499        ///
      str    DXPOA30                   2500        ///
      str    DXPOA31                   2501        ///
      str    DXPOA32                   2502        ///
      byte   FEMALE                    2503-2504   ///
      byte   HCUP_ED                   2505-2506   ///
      byte   HCUP_OS                   2507-2508   ///
      byte   HISPANIC                  2509-2510   ///
      str    HISPANIC_X                2511-2515   ///
      byte   Homeless                  2516-2517   ///
      str    HOSPST                    2518-2519   ///
      int    I10_BIRTH                 2520-2522   ///
      int    I10_DELIVERY              2523-2525   ///
      str    I10_DX_Admitting          2526-2532   ///
      str    I10_DX1                   2533-2539   ///
      str    I10_DX2                   2540-2546   ///
      str    I10_DX3                   2547-2553   ///
      str    I10_DX4                   2554-2560   ///
      str    I10_DX5                   2561-2567   ///
      str    I10_DX6                   2568-2574   ///
      str    I10_DX7                   2575-2581   ///
      str    I10_DX8                   2582-2588   ///
      str    I10_DX9                   2589-2595   ///
      str    I10_DX10                  2596-2602   ///
      str    I10_DX11                  2603-2609   ///
      str    I10_DX12                  2610-2616   ///
      str    I10_DX13                  2617-2623   ///
      str    I10_DX14                  2624-2630   ///
      str    I10_DX15                  2631-2637   ///
      str    I10_DX16                  2638-2644   ///
      str    I10_DX17                  2645-2651   ///
      str    I10_DX18                  2652-2658   ///
      str    I10_DX19                  2659-2665   ///
      str    I10_DX20                  2666-2672   ///
      str    I10_DX21                  2673-2679   ///
      str    I10_DX22                  2680-2686   ///
      str    I10_DX23                  2687-2693   ///
      str    I10_DX24                  2694-2700   ///
      str    I10_DX25                  2701-2707   ///
      str    I10_DX26                  2708-2714   ///
      str    I10_DX27                  2715-2721   ///
      str    I10_DX28                  2722-2728   ///
      str    I10_DX29                  2729-2735   ///
      str    I10_DX30                  2736-2742   ///
      str    I10_DX31                  2743-2749   ///
      str    I10_DX32                  2750-2756   ///
      int    I10_NDX                   2757-2759   ///
      int    I10_NPR                   2760-2762   ///
      str    I10_PR1                   2763-2769   ///
      str    I10_PR2                   2770-2776   ///
      str    I10_PR3                   2777-2783   ///
      str    I10_PR4                   2784-2790   ///
      str    I10_PR5                   2791-2797   ///
      str    I10_PR6                   2798-2804   ///
      str    I10_PR7                   2805-2811   ///
      str    I10_PR8                   2812-2818   ///
      str    I10_PR9                   2819-2825   ///
      str    I10_PR10                  2826-2832   ///
      str    I10_PR11                  2833-2839   ///
      str    I10_PR12                  2840-2846   ///
      str    I10_PR13                  2847-2853   ///
      str    I10_PR14                  2854-2860   ///
      str    I10_PR15                  2861-2867   ///
      str    I10_PR16                  2868-2874   ///
      str    I10_PR17                  2875-2881   ///
      str    I10_PR18                  2882-2888   ///
      str    I10_PR19                  2889-2895   ///
      str    I10_PR20                  2896-2902   ///
      str    I10_PR21                  2903-2909   ///
      str    I10_PR22                  2910-2916   ///
      str    I10_PR23                  2917-2923   ///
      str    I10_PR24                  2924-2930   ///
      str    I10_PR25                  2931-2937   ///
      int    I10_PROCTYPE              2938-2940   ///
      byte   I10_SERVICELINE           2941-2942   ///
      double KEY                       2943-2957   ///
      long   LOS                       2958-2962   ///
      long   LOS_X                     2963-2968   ///
      str    MARITALSTATUS_X           2969        ///
      str    MARITALSTATUSUB04         2970        ///
      byte   MDC                       2971-2972   ///
      byte   MDC_NoPOA                 2973-2974   ///
      long   MDNUM1_R                  2975-2983   ///
      long   MDNUM2_R                  2984-2992   ///
      byte   MEDINCSTQ                 2993-2994   ///
      long   MOMNUM_R                  2995-3003   ///
      long   MRN_R                     3004-3012   ///
      int    NCPT                      3013-3016   ///
      double OS_TIME                   3017-3027   ///
      str    P7EDSRC_X                 3028-3029   ///
      byte   PAY1                      3030-3031   ///
      str    PAY1_X                    3032-3041   ///
      byte   PAY2                      3042-3043   ///
      str    PAY2_X                    3044-3053   ///
      byte   PAY3                      3054-3055   ///
      str    PAY3_X                    3056-3065   ///
      byte   PCLASS_ORPROC             3066-3067   ///
      int    PL_CBSA                   3068-3070   ///
      byte   PL_NCHS                   3071-3072   ///
      byte   PL_RUCC                   3073-3074   ///
      byte   PL_UIC                    3075-3076   ///
      byte   PL_UR_CAT4                3077-3078   ///
      byte   POA_Disch_Edit1           3079-3080   ///
      byte   POA_Disch_Edit2           3081-3082   ///
      byte   POA_Hosp_Edit1            3083-3084   ///
      byte   POA_Hosp_Edit2            3085-3086   ///
      byte   POA_Hosp_Edit3            3087-3088   ///
      double POA_Hosp_Edit3_Value      3089-3096   ///
      str    PointOfOrigin_X           3097        ///
      str    PointOfOriginUB04         3098        ///
      long   PRDAY1                    3099-3103   ///
      long   PRDAY2                    3104-3108   ///
      long   PRDAY3                    3109-3113   ///
      long   PRDAY4                    3114-3118   ///
      long   PRDAY5                    3119-3123   ///
      long   PRDAY6                    3124-3128   ///
      long   PRDAY7                    3129-3133   ///
      long   PRDAY8                    3134-3138   ///
      long   PRDAY9                    3139-3143   ///
      long   PRDAY10                   3144-3148   ///
      long   PRDAY11                   3149-3153   ///
      long   PRDAY12                   3154-3158   ///
      long   PRDAY13                   3159-3163   ///
      long   PRDAY14                   3164-3168   ///
      long   PRDAY15                   3169-3173   ///
      long   PRDAY16                   3174-3178   ///
      long   PRDAY17                   3179-3183   ///
      long   PRDAY18                   3184-3188   ///
      long   PRDAY19                   3189-3193   ///
      long   PRDAY20                   3194-3198   ///
      long   PRDAY21                   3199-3203   ///
      long   PRDAY22                   3204-3208   ///
      long   PRDAY23                   3209-3213   ///
      long   PRDAY24                   3214-3218   ///
      long   PRDAY25                   3219-3223   ///
      str    PrimLang                  3224-3226   ///
      str    PSTATE                    3227-3228   ///
      str    PSTATE_GEO                3229-3230   ///
      long   PSTCO                     3231-3235   ///
      long   PSTCO_GEO                 3236-3240   ///
      byte   RACE                      3241-3242   ///
      float  RACE_PCT_MISS_HOSP        3243-3249   ///
      str    RACE_X                    3250-3254   ///
      byte   READMIT                   3255-3256   ///
      double TOTCHG                    3257-3266   ///
      double TOTCHG_X                  3267-3281   ///
      byte   TRAN_IN                   3282-3283   ///
      byte   TRAN_OUT                  3284-3285   ///
      int    YEAR                      3286-3289   ///
      str    ZIP                       3290-3294   ///
      str    ZIP3                      3295-3297   ///
      int    ZIPINC_QRTL               3298-3300   ///
      str    TOWN                      3301-3304   ///
      int    AYEAR                     3305-3308   ///
      byte   BMONTH                    3309-3310   ///
      int    BYEAR                     3311-3314   ///
      byte   PRMONTH1                  3315-3316   ///
      byte   PRMONTH2                  3317-3318   ///
      byte   PRMONTH3                  3319-3320   ///
      byte   PRMONTH4                  3321-3322   ///
      byte   PRMONTH5                  3323-3324   ///
      byte   PRMONTH6                  3325-3326   ///
      byte   PRMONTH7                  3327-3328   ///
      byte   PRMONTH8                  3329-3330   ///
      byte   PRMONTH9                  3331-3332   ///
      byte   PRMONTH10                 3333-3334   ///
      byte   PRMONTH11                 3335-3336   ///
      byte   PRMONTH12                 3337-3338   ///
      byte   PRMONTH13                 3339-3340   ///
      byte   PRMONTH14                 3341-3342   ///
      byte   PRMONTH15                 3343-3344   ///
      byte   PRMONTH16                 3345-3346   ///
      byte   PRMONTH17                 3347-3348   ///
      byte   PRMONTH18                 3349-3350   ///
      byte   PRMONTH19                 3351-3352   ///
      byte   PRMONTH20                 3353-3354   ///
      byte   PRMONTH21                 3355-3356   ///
      byte   PRMONTH22                 3357-3358   ///
      byte   PRMONTH23                 3359-3360   ///
      byte   PRMONTH24                 3361-3362   ///
      byte   PRMONTH25                 3363-3364   ///
      int    PRYEAR1                   3365-3368   ///
      int    PRYEAR2                   3369-3372   ///
      int    PRYEAR3                   3373-3376   ///
      int    PRYEAR4                   3377-3380   ///
      int    PRYEAR5                   3381-3384   ///
      int    PRYEAR6                   3385-3388   ///
      int    PRYEAR7                   3389-3392   ///
      int    PRYEAR8                   3393-3396   ///
      int    PRYEAR9                   3397-3400   ///
      int    PRYEAR10                  3401-3404   ///
      int    PRYEAR11                  3405-3408   ///
      int    PRYEAR12                  3409-3412   ///
      int    PRYEAR13                  3413-3416   ///
      int    PRYEAR14                  3417-3420   ///
      int    PRYEAR15                  3421-3424   ///
      int    PRYEAR16                  3425-3428   ///
      int    PRYEAR17                  3429-3432   ///
      int    PRYEAR18                  3433-3436   ///
      int    PRYEAR19                  3437-3440   ///
      int    PRYEAR20                  3441-3444   ///
      int    PRYEAR21                  3445-3448   ///
      int    PRYEAR22                  3449-3452   ///
      int    PRYEAR23                  3453-3456   ///
      int    PRYEAR24                  3457-3460   ///
      int    PRYEAR25                  3461-3464   ///
      using  "NJ_SID_2020_CORE.ASC"

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
label var CPTM1_1                  "First CPT-4/HCPCS modifier 1"
label var CPTM1_2                  "First CPT-4/HCPCS modifier 2"
label var CPTM1_3                  "First CPT-4/HCPCS modifier 3"
label var CPTM1_4                  "First CPT-4/HCPCS modifier 4"
label var CPTM1_5                  "First CPT-4/HCPCS modifier 5"
label var CPTM1_6                  "First CPT-4/HCPCS modifier 6"
label var CPTM1_7                  "First CPT-4/HCPCS modifier 7"
label var CPTM1_8                  "First CPT-4/HCPCS modifier 8"
label var CPTM1_9                  "First CPT-4/HCPCS modifier 9"
label var CPTM1_10                 "First CPT-4/HCPCS modifier 10"
label var CPTM1_11                 "First CPT-4/HCPCS modifier 11"
label var CPTM1_12                 "First CPT-4/HCPCS modifier 12"
label var CPTM1_13                 "First CPT-4/HCPCS modifier 13"
label var CPTM1_14                 "First CPT-4/HCPCS modifier 14"
label var CPTM1_15                 "First CPT-4/HCPCS modifier 15"
label var CPTM1_16                 "First CPT-4/HCPCS modifier 16"
label var CPTM1_17                 "First CPT-4/HCPCS modifier 17"
label var CPTM1_18                 "First CPT-4/HCPCS modifier 18"
label var CPTM1_19                 "First CPT-4/HCPCS modifier 19"
label var CPTM1_20                 "First CPT-4/HCPCS modifier 20"
label var CPTM1_21                 "First CPT-4/HCPCS modifier 21"
label var CPTM1_22                 "First CPT-4/HCPCS modifier 22"
label var CPTM1_23                 "First CPT-4/HCPCS modifier 23"
label var CPTM1_24                 "First CPT-4/HCPCS modifier 24"
label var CPTM1_25                 "First CPT-4/HCPCS modifier 25"
label var CPTM1_26                 "First CPT-4/HCPCS modifier 26"
label var CPTM1_27                 "First CPT-4/HCPCS modifier 27"
label var CPTM1_28                 "First CPT-4/HCPCS modifier 28"
label var CPTM1_29                 "First CPT-4/HCPCS modifier 29"
label var CPTM1_30                 "First CPT-4/HCPCS modifier 30"
label var CPTM1_31                 "First CPT-4/HCPCS modifier 31"
label var CPTM1_32                 "First CPT-4/HCPCS modifier 32"
label var CPTM1_33                 "First CPT-4/HCPCS modifier 33"
label var CPTM1_34                 "First CPT-4/HCPCS modifier 34"
label var CPTM1_35                 "First CPT-4/HCPCS modifier 35"
label var CPTM1_36                 "First CPT-4/HCPCS modifier 36"
label var CPTM1_37                 "First CPT-4/HCPCS modifier 37"
label var CPTM1_38                 "First CPT-4/HCPCS modifier 38"
label var CPTM1_39                 "First CPT-4/HCPCS modifier 39"
label var CPTM1_40                 "First CPT-4/HCPCS modifier 40"
label var CPTM1_41                 "First CPT-4/HCPCS modifier 41"
label var CPTM1_42                 "First CPT-4/HCPCS modifier 42"
label var CPTM1_43                 "First CPT-4/HCPCS modifier 43"
label var CPTM1_44                 "First CPT-4/HCPCS modifier 44"
label var CPTM1_45                 "First CPT-4/HCPCS modifier 45"
label var CPTM1_46                 "First CPT-4/HCPCS modifier 46"
label var CPTM1_47                 "First CPT-4/HCPCS modifier 47"
label var CPTM1_48                 "First CPT-4/HCPCS modifier 48"
label var CPTM1_49                 "First CPT-4/HCPCS modifier 49"
label var CPTM1_50                 "First CPT-4/HCPCS modifier 50"
label var CPTM1_51                 "First CPT-4/HCPCS modifier 51"
label var CPTM1_52                 "First CPT-4/HCPCS modifier 52"
label var CPTM1_53                 "First CPT-4/HCPCS modifier 53"
label var CPTM1_54                 "First CPT-4/HCPCS modifier 54"
label var CPTM1_55                 "First CPT-4/HCPCS modifier 55"
label var CPTM1_56                 "First CPT-4/HCPCS modifier 56"
label var CPTM1_57                 "First CPT-4/HCPCS modifier 57"
label var CPTM1_58                 "First CPT-4/HCPCS modifier 58"
label var CPTM1_59                 "First CPT-4/HCPCS modifier 59"
label var CPTM1_60                 "First CPT-4/HCPCS modifier 60"
label var CPTM1_61                 "First CPT-4/HCPCS modifier 61"
label var CPTM1_62                 "First CPT-4/HCPCS modifier 62"
label var CPTM1_63                 "First CPT-4/HCPCS modifier 63"
label var CPTM1_64                 "First CPT-4/HCPCS modifier 64"
label var CPTM1_65                 "First CPT-4/HCPCS modifier 65"
label var CPTM1_66                 "First CPT-4/HCPCS modifier 66"
label var CPTM1_67                 "First CPT-4/HCPCS modifier 67"
label var CPTM1_68                 "First CPT-4/HCPCS modifier 68"
label var CPTM1_69                 "First CPT-4/HCPCS modifier 69"
label var CPTM1_70                 "First CPT-4/HCPCS modifier 70"
label var CPTM1_71                 "First CPT-4/HCPCS modifier 71"
label var CPTM1_72                 "First CPT-4/HCPCS modifier 72"
label var CPTM1_73                 "First CPT-4/HCPCS modifier 73"
label var CPTM1_74                 "First CPT-4/HCPCS modifier 74"
label var CPTM1_75                 "First CPT-4/HCPCS modifier 75"
label var CPTM1_76                 "First CPT-4/HCPCS modifier 76"
label var CPTM1_77                 "First CPT-4/HCPCS modifier 77"
label var CPTM1_78                 "First CPT-4/HCPCS modifier 78"
label var CPTM1_79                 "First CPT-4/HCPCS modifier 79"
label var CPTM1_80                 "First CPT-4/HCPCS modifier 80"
label var CPTM1_81                 "First CPT-4/HCPCS modifier 81"
label var CPTM1_82                 "First CPT-4/HCPCS modifier 82"
label var CPTM1_83                 "First CPT-4/HCPCS modifier 83"
label var CPTM1_84                 "First CPT-4/HCPCS modifier 84"
label var CPTM1_85                 "First CPT-4/HCPCS modifier 85"
label var CPTM1_86                 "First CPT-4/HCPCS modifier 86"
label var CPTM1_87                 "First CPT-4/HCPCS modifier 87"
label var CPTM1_88                 "First CPT-4/HCPCS modifier 88"
label var CPTM1_89                 "First CPT-4/HCPCS modifier 89"
label var CPTM1_90                 "First CPT-4/HCPCS modifier 90"
label var CPTM1_91                 "First CPT-4/HCPCS modifier 91"
label var CPTM1_92                 "First CPT-4/HCPCS modifier 92"
label var CPTM1_93                 "First CPT-4/HCPCS modifier 93"
label var CPTM1_94                 "First CPT-4/HCPCS modifier 94"
label var CPTM1_95                 "First CPT-4/HCPCS modifier 95"
label var CPTM1_96                 "First CPT-4/HCPCS modifier 96"
label var CPTM1_97                 "First CPT-4/HCPCS modifier 97"
label var CPTM1_98                 "First CPT-4/HCPCS modifier 98"
label var CPTM1_99                 "First CPT-4/HCPCS modifier 99"
label var CPTM1_100                "First CPT-4/HCPCS modifier 100"
label var CPTM1_101                "First CPT-4/HCPCS modifier 101"
label var CPTM1_102                "First CPT-4/HCPCS modifier 102"
label var CPTM1_103                "First CPT-4/HCPCS modifier 103"
label var CPTM1_104                "First CPT-4/HCPCS modifier 104"
label var CPTM1_105                "First CPT-4/HCPCS modifier 105"
label var CPTM1_106                "First CPT-4/HCPCS modifier 106"
label var CPTM1_107                "First CPT-4/HCPCS modifier 107"
label var CPTM1_108                "First CPT-4/HCPCS modifier 108"
label var CPTM1_109                "First CPT-4/HCPCS modifier 109"
label var CPTM1_110                "First CPT-4/HCPCS modifier 110"
label var CPTM1_111                "First CPT-4/HCPCS modifier 111"
label var CPTM1_112                "First CPT-4/HCPCS modifier 112"
label var CPTM1_113                "First CPT-4/HCPCS modifier 113"
label var CPTM1_114                "First CPT-4/HCPCS modifier 114"
label var CPTM1_115                "First CPT-4/HCPCS modifier 115"
label var CPTM1_116                "First CPT-4/HCPCS modifier 116"
label var CPTM1_117                "First CPT-4/HCPCS modifier 117"
label var CPTM1_118                "First CPT-4/HCPCS modifier 118"
label var CPTM1_119                "First CPT-4/HCPCS modifier 119"
label var CPTM1_120                "First CPT-4/HCPCS modifier 120"
label var CPTM1_121                "First CPT-4/HCPCS modifier 121"
label var CPTM1_122                "First CPT-4/HCPCS modifier 122"
label var CPTM1_123                "First CPT-4/HCPCS modifier 123"
label var CPTM1_124                "First CPT-4/HCPCS modifier 124"
label var CPTM1_125                "First CPT-4/HCPCS modifier 125"
label var CPTM1_126                "First CPT-4/HCPCS modifier 126"
label var CPTM1_127                "First CPT-4/HCPCS modifier 127"
label var CPTM1_128                "First CPT-4/HCPCS modifier 128"
label var CPTM1_129                "First CPT-4/HCPCS modifier 129"
label var CPTM1_130                "First CPT-4/HCPCS modifier 130"
label var CPTM1_131                "First CPT-4/HCPCS modifier 131"
label var CPTM1_132                "First CPT-4/HCPCS modifier 132"
label var CPTM1_133                "First CPT-4/HCPCS modifier 133"
label var CPTM1_134                "First CPT-4/HCPCS modifier 134"
label var CPTM1_135                "First CPT-4/HCPCS modifier 135"
label var CPTM1_136                "First CPT-4/HCPCS modifier 136"
label var CPTM1_137                "First CPT-4/HCPCS modifier 137"
label var CPTM1_138                "First CPT-4/HCPCS modifier 138"
label var CPTM1_139                "First CPT-4/HCPCS modifier 139"
label var CPTM1_140                "First CPT-4/HCPCS modifier 140"
label var CPTM1_141                "First CPT-4/HCPCS modifier 141"
label var CPTM1_142                "First CPT-4/HCPCS modifier 142"
label var CPTM1_143                "First CPT-4/HCPCS modifier 143"
label var CPTM1_144                "First CPT-4/HCPCS modifier 144"
label var CPTM1_145                "First CPT-4/HCPCS modifier 145"
label var CPTM1_146                "First CPT-4/HCPCS modifier 146"
label var CPTM1_147                "First CPT-4/HCPCS modifier 147"
label var CPTM1_148                "First CPT-4/HCPCS modifier 148"
label var CPTM1_149                "First CPT-4/HCPCS modifier 149"
label var CPTM1_150                "First CPT-4/HCPCS modifier 150"
label var CPTM1_151                "First CPT-4/HCPCS modifier 151"
label var CPTM1_152                "First CPT-4/HCPCS modifier 152"
label var CPTM1_153                "First CPT-4/HCPCS modifier 153"
label var CPTM1_154                "First CPT-4/HCPCS modifier 154"
label var CPTM1_155                "First CPT-4/HCPCS modifier 155"
label var CPTM1_156                "First CPT-4/HCPCS modifier 156"
label var CPTM1_157                "First CPT-4/HCPCS modifier 157"
label var CPTM1_158                "First CPT-4/HCPCS modifier 158"
label var CPTM1_159                "First CPT-4/HCPCS modifier 159"
label var CPTM1_160                "First CPT-4/HCPCS modifier 160"
label var CPTM1_161                "First CPT-4/HCPCS modifier 161"
label var CPTM1_162                "First CPT-4/HCPCS modifier 162"
label var CPTM1_163                "First CPT-4/HCPCS modifier 163"
label var CPTM1_164                "First CPT-4/HCPCS modifier 164"
label var CPTM1_165                "First CPT-4/HCPCS modifier 165"
label var CPTM1_166                "First CPT-4/HCPCS modifier 166"
label var CPTM1_167                "First CPT-4/HCPCS modifier 167"
label var CPTM1_168                "First CPT-4/HCPCS modifier 168"
label var CPTM1_169                "First CPT-4/HCPCS modifier 169"
label var CPTM1_170                "First CPT-4/HCPCS modifier 170"
label var CPTM1_171                "First CPT-4/HCPCS modifier 171"
label var CPTM1_172                "First CPT-4/HCPCS modifier 172"
label var CPTM1_173                "First CPT-4/HCPCS modifier 173"
label var CPTM1_174                "First CPT-4/HCPCS modifier 174"
label var CPTM1_175                "First CPT-4/HCPCS modifier 175"
label var CPTM1_176                "First CPT-4/HCPCS modifier 176"
label var CPTM1_177                "First CPT-4/HCPCS modifier 177"
label var CPTM1_178                "First CPT-4/HCPCS modifier 178"
label var CPTM1_179                "First CPT-4/HCPCS modifier 179"
label var CPTM1_180                "First CPT-4/HCPCS modifier 180"
label var CPTM1_181                "First CPT-4/HCPCS modifier 181"
label var CPTM1_182                "First CPT-4/HCPCS modifier 182"
label var CPTM1_183                "First CPT-4/HCPCS modifier 183"
label var CPTM1_184                "First CPT-4/HCPCS modifier 184"
label var CPTM1_185                "First CPT-4/HCPCS modifier 185"
label var CPTM1_186                "First CPT-4/HCPCS modifier 186"
label var CPTM1_187                "First CPT-4/HCPCS modifier 187"
label var CPTM1_188                "First CPT-4/HCPCS modifier 188"
label var CPTM1_189                "First CPT-4/HCPCS modifier 189"
label var CPTM1_190                "First CPT-4/HCPCS modifier 190"
label var CPTM1_191                "First CPT-4/HCPCS modifier 191"
label var CPTM1_192                "First CPT-4/HCPCS modifier 192"
label var CPTM1_193                "First CPT-4/HCPCS modifier 193"
label var CPTM1_194                "First CPT-4/HCPCS modifier 194"
label var CPTM1_195                "First CPT-4/HCPCS modifier 195"
label var CPTM1_196                "First CPT-4/HCPCS modifier 196"
label var CPTM1_197                "First CPT-4/HCPCS modifier 197"
label var CPTM1_198                "First CPT-4/HCPCS modifier 198"
label var CPTM1_199                "First CPT-4/HCPCS modifier 199"
label var CPTM1_200                "First CPT-4/HCPCS modifier 200"
label var CPTM2_1                  "Second CPT-4/HCPCS modifier 1"
label var CPTM2_2                  "Second CPT-4/HCPCS modifier 2"
label var CPTM2_3                  "Second CPT-4/HCPCS modifier 3"
label var CPTM2_4                  "Second CPT-4/HCPCS modifier 4"
label var CPTM2_5                  "Second CPT-4/HCPCS modifier 5"
label var CPTM2_6                  "Second CPT-4/HCPCS modifier 6"
label var CPTM2_7                  "Second CPT-4/HCPCS modifier 7"
label var CPTM2_8                  "Second CPT-4/HCPCS modifier 8"
label var CPTM2_9                  "Second CPT-4/HCPCS modifier 9"
label var CPTM2_10                 "Second CPT-4/HCPCS modifier 10"
label var CPTM2_11                 "Second CPT-4/HCPCS modifier 11"
label var CPTM2_12                 "Second CPT-4/HCPCS modifier 12"
label var CPTM2_13                 "Second CPT-4/HCPCS modifier 13"
label var CPTM2_14                 "Second CPT-4/HCPCS modifier 14"
label var CPTM2_15                 "Second CPT-4/HCPCS modifier 15"
label var CPTM2_16                 "Second CPT-4/HCPCS modifier 16"
label var CPTM2_17                 "Second CPT-4/HCPCS modifier 17"
label var CPTM2_18                 "Second CPT-4/HCPCS modifier 18"
label var CPTM2_19                 "Second CPT-4/HCPCS modifier 19"
label var CPTM2_20                 "Second CPT-4/HCPCS modifier 20"
label var CPTM2_21                 "Second CPT-4/HCPCS modifier 21"
label var CPTM2_22                 "Second CPT-4/HCPCS modifier 22"
label var CPTM2_23                 "Second CPT-4/HCPCS modifier 23"
label var CPTM2_24                 "Second CPT-4/HCPCS modifier 24"
label var CPTM2_25                 "Second CPT-4/HCPCS modifier 25"
label var CPTM2_26                 "Second CPT-4/HCPCS modifier 26"
label var CPTM2_27                 "Second CPT-4/HCPCS modifier 27"
label var CPTM2_28                 "Second CPT-4/HCPCS modifier 28"
label var CPTM2_29                 "Second CPT-4/HCPCS modifier 29"
label var CPTM2_30                 "Second CPT-4/HCPCS modifier 30"
label var CPTM2_31                 "Second CPT-4/HCPCS modifier 31"
label var CPTM2_32                 "Second CPT-4/HCPCS modifier 32"
label var CPTM2_33                 "Second CPT-4/HCPCS modifier 33"
label var CPTM2_34                 "Second CPT-4/HCPCS modifier 34"
label var CPTM2_35                 "Second CPT-4/HCPCS modifier 35"
label var CPTM2_36                 "Second CPT-4/HCPCS modifier 36"
label var CPTM2_37                 "Second CPT-4/HCPCS modifier 37"
label var CPTM2_38                 "Second CPT-4/HCPCS modifier 38"
label var CPTM2_39                 "Second CPT-4/HCPCS modifier 39"
label var CPTM2_40                 "Second CPT-4/HCPCS modifier 40"
label var CPTM2_41                 "Second CPT-4/HCPCS modifier 41"
label var CPTM2_42                 "Second CPT-4/HCPCS modifier 42"
label var CPTM2_43                 "Second CPT-4/HCPCS modifier 43"
label var CPTM2_44                 "Second CPT-4/HCPCS modifier 44"
label var CPTM2_45                 "Second CPT-4/HCPCS modifier 45"
label var CPTM2_46                 "Second CPT-4/HCPCS modifier 46"
label var CPTM2_47                 "Second CPT-4/HCPCS modifier 47"
label var CPTM2_48                 "Second CPT-4/HCPCS modifier 48"
label var CPTM2_49                 "Second CPT-4/HCPCS modifier 49"
label var CPTM2_50                 "Second CPT-4/HCPCS modifier 50"
label var CPTM2_51                 "Second CPT-4/HCPCS modifier 51"
label var CPTM2_52                 "Second CPT-4/HCPCS modifier 52"
label var CPTM2_53                 "Second CPT-4/HCPCS modifier 53"
label var CPTM2_54                 "Second CPT-4/HCPCS modifier 54"
label var CPTM2_55                 "Second CPT-4/HCPCS modifier 55"
label var CPTM2_56                 "Second CPT-4/HCPCS modifier 56"
label var CPTM2_57                 "Second CPT-4/HCPCS modifier 57"
label var CPTM2_58                 "Second CPT-4/HCPCS modifier 58"
label var CPTM2_59                 "Second CPT-4/HCPCS modifier 59"
label var CPTM2_60                 "Second CPT-4/HCPCS modifier 60"
label var CPTM2_61                 "Second CPT-4/HCPCS modifier 61"
label var CPTM2_62                 "Second CPT-4/HCPCS modifier 62"
label var CPTM2_63                 "Second CPT-4/HCPCS modifier 63"
label var CPTM2_64                 "Second CPT-4/HCPCS modifier 64"
label var CPTM2_65                 "Second CPT-4/HCPCS modifier 65"
label var CPTM2_66                 "Second CPT-4/HCPCS modifier 66"
label var CPTM2_67                 "Second CPT-4/HCPCS modifier 67"
label var CPTM2_68                 "Second CPT-4/HCPCS modifier 68"
label var CPTM2_69                 "Second CPT-4/HCPCS modifier 69"
label var CPTM2_70                 "Second CPT-4/HCPCS modifier 70"
label var CPTM2_71                 "Second CPT-4/HCPCS modifier 71"
label var CPTM2_72                 "Second CPT-4/HCPCS modifier 72"
label var CPTM2_73                 "Second CPT-4/HCPCS modifier 73"
label var CPTM2_74                 "Second CPT-4/HCPCS modifier 74"
label var CPTM2_75                 "Second CPT-4/HCPCS modifier 75"
label var CPTM2_76                 "Second CPT-4/HCPCS modifier 76"
label var CPTM2_77                 "Second CPT-4/HCPCS modifier 77"
label var CPTM2_78                 "Second CPT-4/HCPCS modifier 78"
label var CPTM2_79                 "Second CPT-4/HCPCS modifier 79"
label var CPTM2_80                 "Second CPT-4/HCPCS modifier 80"
label var CPTM2_81                 "Second CPT-4/HCPCS modifier 81"
label var CPTM2_82                 "Second CPT-4/HCPCS modifier 82"
label var CPTM2_83                 "Second CPT-4/HCPCS modifier 83"
label var CPTM2_84                 "Second CPT-4/HCPCS modifier 84"
label var CPTM2_85                 "Second CPT-4/HCPCS modifier 85"
label var CPTM2_86                 "Second CPT-4/HCPCS modifier 86"
label var CPTM2_87                 "Second CPT-4/HCPCS modifier 87"
label var CPTM2_88                 "Second CPT-4/HCPCS modifier 88"
label var CPTM2_89                 "Second CPT-4/HCPCS modifier 89"
label var CPTM2_90                 "Second CPT-4/HCPCS modifier 90"
label var CPTM2_91                 "Second CPT-4/HCPCS modifier 91"
label var CPTM2_92                 "Second CPT-4/HCPCS modifier 92"
label var CPTM2_93                 "Second CPT-4/HCPCS modifier 93"
label var CPTM2_94                 "Second CPT-4/HCPCS modifier 94"
label var CPTM2_95                 "Second CPT-4/HCPCS modifier 95"
label var CPTM2_96                 "Second CPT-4/HCPCS modifier 96"
label var CPTM2_97                 "Second CPT-4/HCPCS modifier 97"
label var CPTM2_98                 "Second CPT-4/HCPCS modifier 98"
label var CPTM2_99                 "Second CPT-4/HCPCS modifier 99"
label var CPTM2_100                "Second CPT-4/HCPCS modifier 100"
label var CPTM2_101                "Second CPT-4/HCPCS modifier 101"
label var CPTM2_102                "Second CPT-4/HCPCS modifier 102"
label var CPTM2_103                "Second CPT-4/HCPCS modifier 103"
label var CPTM2_104                "Second CPT-4/HCPCS modifier 104"
label var CPTM2_105                "Second CPT-4/HCPCS modifier 105"
label var CPTM2_106                "Second CPT-4/HCPCS modifier 106"
label var CPTM2_107                "Second CPT-4/HCPCS modifier 107"
label var CPTM2_108                "Second CPT-4/HCPCS modifier 108"
label var CPTM2_109                "Second CPT-4/HCPCS modifier 109"
label var CPTM2_110                "Second CPT-4/HCPCS modifier 110"
label var CPTM2_111                "Second CPT-4/HCPCS modifier 111"
label var CPTM2_112                "Second CPT-4/HCPCS modifier 112"
label var CPTM2_113                "Second CPT-4/HCPCS modifier 113"
label var CPTM2_114                "Second CPT-4/HCPCS modifier 114"
label var CPTM2_115                "Second CPT-4/HCPCS modifier 115"
label var CPTM2_116                "Second CPT-4/HCPCS modifier 116"
label var CPTM2_117                "Second CPT-4/HCPCS modifier 117"
label var CPTM2_118                "Second CPT-4/HCPCS modifier 118"
label var CPTM2_119                "Second CPT-4/HCPCS modifier 119"
label var CPTM2_120                "Second CPT-4/HCPCS modifier 120"
label var CPTM2_121                "Second CPT-4/HCPCS modifier 121"
label var CPTM2_122                "Second CPT-4/HCPCS modifier 122"
label var CPTM2_123                "Second CPT-4/HCPCS modifier 123"
label var CPTM2_124                "Second CPT-4/HCPCS modifier 124"
label var CPTM2_125                "Second CPT-4/HCPCS modifier 125"
label var CPTM2_126                "Second CPT-4/HCPCS modifier 126"
label var CPTM2_127                "Second CPT-4/HCPCS modifier 127"
label var CPTM2_128                "Second CPT-4/HCPCS modifier 128"
label var CPTM2_129                "Second CPT-4/HCPCS modifier 129"
label var CPTM2_130                "Second CPT-4/HCPCS modifier 130"
label var CPTM2_131                "Second CPT-4/HCPCS modifier 131"
label var CPTM2_132                "Second CPT-4/HCPCS modifier 132"
label var CPTM2_133                "Second CPT-4/HCPCS modifier 133"
label var CPTM2_134                "Second CPT-4/HCPCS modifier 134"
label var CPTM2_135                "Second CPT-4/HCPCS modifier 135"
label var CPTM2_136                "Second CPT-4/HCPCS modifier 136"
label var CPTM2_137                "Second CPT-4/HCPCS modifier 137"
label var CPTM2_138                "Second CPT-4/HCPCS modifier 138"
label var CPTM2_139                "Second CPT-4/HCPCS modifier 139"
label var CPTM2_140                "Second CPT-4/HCPCS modifier 140"
label var CPTM2_141                "Second CPT-4/HCPCS modifier 141"
label var CPTM2_142                "Second CPT-4/HCPCS modifier 142"
label var CPTM2_143                "Second CPT-4/HCPCS modifier 143"
label var CPTM2_144                "Second CPT-4/HCPCS modifier 144"
label var CPTM2_145                "Second CPT-4/HCPCS modifier 145"
label var CPTM2_146                "Second CPT-4/HCPCS modifier 146"
label var CPTM2_147                "Second CPT-4/HCPCS modifier 147"
label var CPTM2_148                "Second CPT-4/HCPCS modifier 148"
label var CPTM2_149                "Second CPT-4/HCPCS modifier 149"
label var CPTM2_150                "Second CPT-4/HCPCS modifier 150"
label var CPTM2_151                "Second CPT-4/HCPCS modifier 151"
label var CPTM2_152                "Second CPT-4/HCPCS modifier 152"
label var CPTM2_153                "Second CPT-4/HCPCS modifier 153"
label var CPTM2_154                "Second CPT-4/HCPCS modifier 154"
label var CPTM2_155                "Second CPT-4/HCPCS modifier 155"
label var CPTM2_156                "Second CPT-4/HCPCS modifier 156"
label var CPTM2_157                "Second CPT-4/HCPCS modifier 157"
label var CPTM2_158                "Second CPT-4/HCPCS modifier 158"
label var CPTM2_159                "Second CPT-4/HCPCS modifier 159"
label var CPTM2_160                "Second CPT-4/HCPCS modifier 160"
label var CPTM2_161                "Second CPT-4/HCPCS modifier 161"
label var CPTM2_162                "Second CPT-4/HCPCS modifier 162"
label var CPTM2_163                "Second CPT-4/HCPCS modifier 163"
label var CPTM2_164                "Second CPT-4/HCPCS modifier 164"
label var CPTM2_165                "Second CPT-4/HCPCS modifier 165"
label var CPTM2_166                "Second CPT-4/HCPCS modifier 166"
label var CPTM2_167                "Second CPT-4/HCPCS modifier 167"
label var CPTM2_168                "Second CPT-4/HCPCS modifier 168"
label var CPTM2_169                "Second CPT-4/HCPCS modifier 169"
label var CPTM2_170                "Second CPT-4/HCPCS modifier 170"
label var CPTM2_171                "Second CPT-4/HCPCS modifier 171"
label var CPTM2_172                "Second CPT-4/HCPCS modifier 172"
label var CPTM2_173                "Second CPT-4/HCPCS modifier 173"
label var CPTM2_174                "Second CPT-4/HCPCS modifier 174"
label var CPTM2_175                "Second CPT-4/HCPCS modifier 175"
label var CPTM2_176                "Second CPT-4/HCPCS modifier 176"
label var CPTM2_177                "Second CPT-4/HCPCS modifier 177"
label var CPTM2_178                "Second CPT-4/HCPCS modifier 178"
label var CPTM2_179                "Second CPT-4/HCPCS modifier 179"
label var CPTM2_180                "Second CPT-4/HCPCS modifier 180"
label var CPTM2_181                "Second CPT-4/HCPCS modifier 181"
label var CPTM2_182                "Second CPT-4/HCPCS modifier 182"
label var CPTM2_183                "Second CPT-4/HCPCS modifier 183"
label var CPTM2_184                "Second CPT-4/HCPCS modifier 184"
label var CPTM2_185                "Second CPT-4/HCPCS modifier 185"
label var CPTM2_186                "Second CPT-4/HCPCS modifier 186"
label var CPTM2_187                "Second CPT-4/HCPCS modifier 187"
label var CPTM2_188                "Second CPT-4/HCPCS modifier 188"
label var CPTM2_189                "Second CPT-4/HCPCS modifier 189"
label var CPTM2_190                "Second CPT-4/HCPCS modifier 190"
label var CPTM2_191                "Second CPT-4/HCPCS modifier 191"
label var CPTM2_192                "Second CPT-4/HCPCS modifier 192"
label var CPTM2_193                "Second CPT-4/HCPCS modifier 193"
label var CPTM2_194                "Second CPT-4/HCPCS modifier 194"
label var CPTM2_195                "Second CPT-4/HCPCS modifier 195"
label var CPTM2_196                "Second CPT-4/HCPCS modifier 196"
label var CPTM2_197                "Second CPT-4/HCPCS modifier 197"
label var CPTM2_198                "Second CPT-4/HCPCS modifier 198"
label var CPTM2_199                "Second CPT-4/HCPCS modifier 199"
label var CPTM2_200                "Second CPT-4/HCPCS modifier 200"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DNR                      "Do not resuscitate indicator"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
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
label var MOMNUM_R                 "Mother's number (re-identified)"
label var MRN_R                    "Medical record number (re-identified)"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
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
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var TOWN                     "Patient town of residence (as received from source)"
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
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
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
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DNR                       (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
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
recode MOMNUM_R                  (-99999999 -88888888 -66666666=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode NCPT                      (-999 -888 -666=.)
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
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_PCT_MISS_HOSP        (-999.99 -888.88 -666.66=.)
recode READMIT                   (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
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

save "NJ_SID_2020_CORE.dta", replace
