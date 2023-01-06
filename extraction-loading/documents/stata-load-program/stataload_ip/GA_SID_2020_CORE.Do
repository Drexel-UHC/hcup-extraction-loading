/*****************************************************************************
* Creation Date: 08/18/2022   
* GA_SID_2020_CORE.Do
* This program will load the 2020 GA ASCII CORE File into Stata.
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
      long   DaysToEvent               1628-1633   ///
      int    DHOUR                     1634-1637   ///
      byte   DIED                      1638-1639   ///
      str    DISP_X                    1640-1641   ///
      byte   DISPUB04                  1642-1643   ///
      byte   DISPUNIFORM               1644-1645   ///
      byte   DMONTH                    1646-1647   ///
      byte   DQTR                      1648-1649   ///
      int    DRG                       1650-1652   ///
      int    DRG_NoPOA                 1653-1655   ///
      byte   DRGVER                    1656-1657   ///
      str    DXPOA1                    1658        ///
      str    DXPOA2                    1659        ///
      str    DXPOA3                    1660        ///
      str    DXPOA4                    1661        ///
      str    DXPOA5                    1662        ///
      str    DXPOA6                    1663        ///
      str    DXPOA7                    1664        ///
      str    DXPOA8                    1665        ///
      str    DXPOA9                    1666        ///
      str    DXPOA10                   1667        ///
      str    DXPOA11                   1668        ///
      str    DXPOA12                   1669        ///
      str    DXPOA13                   1670        ///
      str    DXPOA14                   1671        ///
      str    DXPOA15                   1672        ///
      str    DXPOA16                   1673        ///
      str    DXPOA17                   1674        ///
      str    DXPOA18                   1675        ///
      str    DXPOA19                   1676        ///
      str    DXPOA20                   1677        ///
      str    DXPOA21                   1678        ///
      str    DXPOA22                   1679        ///
      str    DXPOA23                   1680        ///
      str    DXPOA24                   1681        ///
      str    DXPOA25                   1682        ///
      str    DXPOA26                   1683        ///
      str    DXPOA27                   1684        ///
      str    DXPOA28                   1685        ///
      str    DXPOA29                   1686        ///
      str    DXPOA30                   1687        ///
      str    DXPOA31                   1688        ///
      str    DXPOA32                   1689        ///
      str    DXPOA33                   1690        ///
      str    DXPOA34                   1691        ///
      str    DXPOA35                   1692        ///
      str    DXPOA36                   1693        ///
      str    DXPOA37                   1694        ///
      str    DXPOA38                   1695        ///
      str    DXPOA39                   1696        ///
      str    DXPOA40                   1697        ///
      str    DXPOA41                   1698        ///
      str    DXPOA42                   1699        ///
      str    DXPOA43                   1700        ///
      str    DXPOA44                   1701        ///
      str    DXPOA45                   1702        ///
      str    DXPOA46                   1703        ///
      str    DXPOA47                   1704        ///
      str    DXPOA48                   1705        ///
      str    DXPOA49                   1706        ///
      str    DXPOA50                   1707        ///
      str    DXPOA51                   1708        ///
      str    DXPOA52                   1709        ///
      str    DXPOA53                   1710        ///
      str    DXPOA54                   1711        ///
      str    DXPOA55                   1712        ///
      str    DXPOA56                   1713        ///
      str    DXPOA57                   1714        ///
      str    DXPOA58                   1715        ///
      str    DXPOA59                   1716        ///
      str    DXPOA60                   1717        ///
      str    DXPOA61                   1718        ///
      str    DXPOA62                   1719        ///
      str    DXPOA63                   1720        ///
      str    DXPOA64                   1721        ///
      str    DXPOA65                   1722        ///
      str    DXPOA66                   1723        ///
      str    DXPOA67                   1724        ///
      str    DXPOA68                   1725        ///
      str    DXPOA69                   1726        ///
      str    DXPOA70                   1727        ///
      str    DXPOA71                   1728        ///
      str    DXPOA72                   1729        ///
      str    DXPOA73                   1730        ///
      str    DXPOA74                   1731        ///
      str    DXPOA75                   1732        ///
      str    DXPOA76                   1733        ///
      str    DXPOA77                   1734        ///
      str    DXPOA78                   1735        ///
      str    DXPOA79                   1736        ///
      str    DXPOA80                   1737        ///
      str    DXPOA81                   1738        ///
      str    DXPOA82                   1739        ///
      str    DXPOA83                   1740        ///
      str    DXPOA84                   1741        ///
      str    DXPOA85                   1742        ///
      str    DXPOA86                   1743        ///
      str    DXPOA87                   1744        ///
      str    DXPOA88                   1745        ///
      str    DXPOA89                   1746        ///
      str    DXPOA90                   1747        ///
      str    DXPOA91                   1748        ///
      str    DXPOA92                   1749        ///
      str    DXPOA93                   1750        ///
      str    DXPOA94                   1751        ///
      str    DXPOA95                   1752        ///
      str    DXPOA96                   1753        ///
      str    DXPOA97                   1754        ///
      str    DXPOA98                   1755        ///
      str    DXPOA99                   1756        ///
      str    DXPOA100                  1757        ///
      str    DXPOA101                  1758        ///
      str    DXPOA102                  1759        ///
      str    DXPOA103                  1760        ///
      str    DXPOA104                  1761        ///
      str    DXPOA105                  1762        ///
      str    DXPOA106                  1763        ///
      str    DXPOA107                  1764        ///
      str    DXPOA108                  1765        ///
      str    DXPOA109                  1766        ///
      str    DXPOA110                  1767        ///
      str    DXPOA111                  1768        ///
      str    DXPOA112                  1769        ///
      str    DXPOA113                  1770        ///
      str    DXPOA114                  1771        ///
      str    DXPOA115                  1772        ///
      str    DXPOA116                  1773        ///
      str    DXPOA117                  1774        ///
      byte   FEMALE                    1775-1776   ///
      byte   HCUP_ED                   1777-1778   ///
      byte   HCUP_OS                   1779-1780   ///
      byte   HISPANIC                  1781-1782   ///
      str    HISPANIC_X                1783        ///
      byte   Homeless                  1784-1785   ///
      str    HOSPST                    1786-1787   ///
      int    I10_BIRTH                 1788-1790   ///
      int    I10_DELIVERY              1791-1793   ///
      str    I10_DX1                   1794-1800   ///
      str    I10_DX2                   1801-1807   ///
      str    I10_DX3                   1808-1814   ///
      str    I10_DX4                   1815-1821   ///
      str    I10_DX5                   1822-1828   ///
      str    I10_DX6                   1829-1835   ///
      str    I10_DX7                   1836-1842   ///
      str    I10_DX8                   1843-1849   ///
      str    I10_DX9                   1850-1856   ///
      str    I10_DX10                  1857-1863   ///
      str    I10_DX11                  1864-1870   ///
      str    I10_DX12                  1871-1877   ///
      str    I10_DX13                  1878-1884   ///
      str    I10_DX14                  1885-1891   ///
      str    I10_DX15                  1892-1898   ///
      str    I10_DX16                  1899-1905   ///
      str    I10_DX17                  1906-1912   ///
      str    I10_DX18                  1913-1919   ///
      str    I10_DX19                  1920-1926   ///
      str    I10_DX20                  1927-1933   ///
      str    I10_DX21                  1934-1940   ///
      str    I10_DX22                  1941-1947   ///
      str    I10_DX23                  1948-1954   ///
      str    I10_DX24                  1955-1961   ///
      str    I10_DX25                  1962-1968   ///
      str    I10_DX26                  1969-1975   ///
      str    I10_DX27                  1976-1982   ///
      str    I10_DX28                  1983-1989   ///
      str    I10_DX29                  1990-1996   ///
      str    I10_DX30                  1997-2003   ///
      str    I10_DX31                  2004-2010   ///
      str    I10_DX32                  2011-2017   ///
      str    I10_DX33                  2018-2024   ///
      str    I10_DX34                  2025-2031   ///
      str    I10_DX35                  2032-2038   ///
      str    I10_DX36                  2039-2045   ///
      str    I10_DX37                  2046-2052   ///
      str    I10_DX38                  2053-2059   ///
      str    I10_DX39                  2060-2066   ///
      str    I10_DX40                  2067-2073   ///
      str    I10_DX41                  2074-2080   ///
      str    I10_DX42                  2081-2087   ///
      str    I10_DX43                  2088-2094   ///
      str    I10_DX44                  2095-2101   ///
      str    I10_DX45                  2102-2108   ///
      str    I10_DX46                  2109-2115   ///
      str    I10_DX47                  2116-2122   ///
      str    I10_DX48                  2123-2129   ///
      str    I10_DX49                  2130-2136   ///
      str    I10_DX50                  2137-2143   ///
      str    I10_DX51                  2144-2150   ///
      str    I10_DX52                  2151-2157   ///
      str    I10_DX53                  2158-2164   ///
      str    I10_DX54                  2165-2171   ///
      str    I10_DX55                  2172-2178   ///
      str    I10_DX56                  2179-2185   ///
      str    I10_DX57                  2186-2192   ///
      str    I10_DX58                  2193-2199   ///
      str    I10_DX59                  2200-2206   ///
      str    I10_DX60                  2207-2213   ///
      str    I10_DX61                  2214-2220   ///
      str    I10_DX62                  2221-2227   ///
      str    I10_DX63                  2228-2234   ///
      str    I10_DX64                  2235-2241   ///
      str    I10_DX65                  2242-2248   ///
      str    I10_DX66                  2249-2255   ///
      str    I10_DX67                  2256-2262   ///
      str    I10_DX68                  2263-2269   ///
      str    I10_DX69                  2270-2276   ///
      str    I10_DX70                  2277-2283   ///
      str    I10_DX71                  2284-2290   ///
      str    I10_DX72                  2291-2297   ///
      str    I10_DX73                  2298-2304   ///
      str    I10_DX74                  2305-2311   ///
      str    I10_DX75                  2312-2318   ///
      str    I10_DX76                  2319-2325   ///
      str    I10_DX77                  2326-2332   ///
      str    I10_DX78                  2333-2339   ///
      str    I10_DX79                  2340-2346   ///
      str    I10_DX80                  2347-2353   ///
      str    I10_DX81                  2354-2360   ///
      str    I10_DX82                  2361-2367   ///
      str    I10_DX83                  2368-2374   ///
      str    I10_DX84                  2375-2381   ///
      str    I10_DX85                  2382-2388   ///
      str    I10_DX86                  2389-2395   ///
      str    I10_DX87                  2396-2402   ///
      str    I10_DX88                  2403-2409   ///
      str    I10_DX89                  2410-2416   ///
      str    I10_DX90                  2417-2423   ///
      str    I10_DX91                  2424-2430   ///
      str    I10_DX92                  2431-2437   ///
      str    I10_DX93                  2438-2444   ///
      str    I10_DX94                  2445-2451   ///
      str    I10_DX95                  2452-2458   ///
      str    I10_DX96                  2459-2465   ///
      str    I10_DX97                  2466-2472   ///
      str    I10_DX98                  2473-2479   ///
      str    I10_DX99                  2480-2486   ///
      str    I10_DX100                 2487-2493   ///
      str    I10_DX101                 2494-2500   ///
      str    I10_DX102                 2501-2507   ///
      str    I10_DX103                 2508-2514   ///
      str    I10_DX104                 2515-2521   ///
      str    I10_DX105                 2522-2528   ///
      str    I10_DX106                 2529-2535   ///
      str    I10_DX107                 2536-2542   ///
      str    I10_DX108                 2543-2549   ///
      str    I10_DX109                 2550-2556   ///
      str    I10_DX110                 2557-2563   ///
      str    I10_DX111                 2564-2570   ///
      str    I10_DX112                 2571-2577   ///
      str    I10_DX113                 2578-2584   ///
      str    I10_DX114                 2585-2591   ///
      str    I10_DX115                 2592-2598   ///
      str    I10_DX116                 2599-2605   ///
      str    I10_DX117                 2606-2612   ///
      int    I10_NDX                   2613-2615   ///
      int    I10_NPR                   2616-2618   ///
      str    I10_PR1                   2619-2625   ///
      str    I10_PR2                   2626-2632   ///
      str    I10_PR3                   2633-2639   ///
      str    I10_PR4                   2640-2646   ///
      str    I10_PR5                   2647-2653   ///
      str    I10_PR6                   2654-2660   ///
      str    I10_PR7                   2661-2667   ///
      str    I10_PR8                   2668-2674   ///
      str    I10_PR9                   2675-2681   ///
      str    I10_PR10                  2682-2688   ///
      str    I10_PR11                  2689-2695   ///
      str    I10_PR12                  2696-2702   ///
      str    I10_PR13                  2703-2709   ///
      str    I10_PR14                  2710-2716   ///
      str    I10_PR15                  2717-2723   ///
      str    I10_PR16                  2724-2730   ///
      str    I10_PR17                  2731-2737   ///
      str    I10_PR18                  2738-2744   ///
      str    I10_PR19                  2745-2751   ///
      str    I10_PR20                  2752-2758   ///
      str    I10_PR21                  2759-2765   ///
      str    I10_PR22                  2766-2772   ///
      str    I10_PR23                  2773-2779   ///
      str    I10_PR24                  2780-2786   ///
      str    I10_PR25                  2787-2793   ///
      str    I10_PR26                  2794-2800   ///
      str    I10_PR27                  2801-2807   ///
      str    I10_PR28                  2808-2814   ///
      str    I10_PR29                  2815-2821   ///
      str    I10_PR30                  2822-2828   ///
      str    I10_PR31                  2829-2835   ///
      str    I10_PR32                  2836-2842   ///
      str    I10_PR33                  2843-2849   ///
      str    I10_PR34                  2850-2856   ///
      str    I10_PR35                  2857-2863   ///
      str    I10_PR36                  2864-2870   ///
      str    I10_PR37                  2871-2877   ///
      str    I10_PR38                  2878-2884   ///
      str    I10_PR39                  2885-2891   ///
      str    I10_PR40                  2892-2898   ///
      str    I10_PR41                  2899-2905   ///
      str    I10_PR42                  2906-2912   ///
      str    I10_PR43                  2913-2919   ///
      str    I10_PR44                  2920-2926   ///
      str    I10_PR45                  2927-2933   ///
      str    I10_PR46                  2934-2940   ///
      str    I10_PR47                  2941-2947   ///
      str    I10_PR48                  2948-2954   ///
      str    I10_PR49                  2955-2961   ///
      str    I10_PR50                  2962-2968   ///
      str    I10_PR51                  2969-2975   ///
      str    I10_PR52                  2976-2982   ///
      str    I10_PR53                  2983-2989   ///
      str    I10_PR54                  2990-2996   ///
      str    I10_PR55                  2997-3003   ///
      str    I10_PR56                  3004-3010   ///
      str    I10_PR57                  3011-3017   ///
      str    I10_PR58                  3018-3024   ///
      str    I10_PR59                  3025-3031   ///
      str    I10_PR60                  3032-3038   ///
      str    I10_PR61                  3039-3045   ///
      str    I10_PR62                  3046-3052   ///
      str    I10_PR63                  3053-3059   ///
      str    I10_PR64                  3060-3066   ///
      str    I10_PR65                  3067-3073   ///
      str    I10_PR66                  3074-3080   ///
      str    I10_PR67                  3081-3087   ///
      str    I10_PR68                  3088-3094   ///
      str    I10_PR69                  3095-3101   ///
      str    I10_PR70                  3102-3108   ///
      str    I10_PR71                  3109-3115   ///
      str    I10_PR72                  3116-3122   ///
      str    I10_PR73                  3123-3129   ///
      str    I10_PR74                  3130-3136   ///
      str    I10_PR75                  3137-3143   ///
      str    I10_PR76                  3144-3150   ///
      str    I10_PR77                  3151-3157   ///
      str    I10_PR78                  3158-3164   ///
      str    I10_PR79                  3165-3171   ///
      str    I10_PR80                  3172-3178   ///
      str    I10_PR81                  3179-3185   ///
      str    I10_PR82                  3186-3192   ///
      str    I10_PR83                  3193-3199   ///
      str    I10_PR84                  3200-3206   ///
      str    I10_PR85                  3207-3213   ///
      str    I10_PR86                  3214-3220   ///
      str    I10_PR87                  3221-3227   ///
      str    I10_PR88                  3228-3234   ///
      str    I10_PR89                  3235-3241   ///
      str    I10_PR90                  3242-3248   ///
      str    I10_PR91                  3249-3255   ///
      str    I10_PR92                  3256-3262   ///
      str    I10_PR93                  3263-3269   ///
      str    I10_PR94                  3270-3276   ///
      str    I10_PR95                  3277-3283   ///
      str    I10_PR96                  3284-3290   ///
      str    I10_PR97                  3291-3297   ///
      str    I10_PR98                  3298-3304   ///
      str    I10_PR99                  3305-3311   ///
      str    I10_PR100                 3312-3318   ///
      str    I10_PR101                 3319-3325   ///
      str    I10_PR102                 3326-3332   ///
      str    I10_PR103                 3333-3339   ///
      str    I10_PR104                 3340-3346   ///
      str    I10_PR105                 3347-3353   ///
      str    I10_PR106                 3354-3360   ///
      str    I10_PR107                 3361-3367   ///
      str    I10_PR108                 3368-3374   ///
      str    I10_PR109                 3375-3381   ///
      str    I10_PR110                 3382-3388   ///
      str    I10_PR111                 3389-3395   ///
      str    I10_PR112                 3396-3402   ///
      str    I10_PR113                 3403-3409   ///
      str    I10_PR114                 3410-3416   ///
      str    I10_PR115                 3417-3423   ///
      str    I10_PR116                 3424-3430   ///
      str    I10_PR117                 3431-3437   ///
      str    I10_PR118                 3438-3444   ///
      str    I10_PR119                 3445-3451   ///
      str    I10_PR120                 3452-3458   ///
      str    I10_PR121                 3459-3465   ///
      str    I10_PR122                 3466-3472   ///
      str    I10_PR123                 3473-3479   ///
      str    I10_PR124                 3480-3486   ///
      str    I10_PR125                 3487-3493   ///
      str    I10_PR126                 3494-3500   ///
      str    I10_PR127                 3501-3507   ///
      str    I10_PR128                 3508-3514   ///
      str    I10_PR129                 3515-3521   ///
      str    I10_PR130                 3522-3528   ///
      str    I10_PR131                 3529-3535   ///
      str    I10_PR132                 3536-3542   ///
      str    I10_PR133                 3543-3549   ///
      str    I10_PR134                 3550-3556   ///
      str    I10_PR135                 3557-3563   ///
      str    I10_PR136                 3564-3570   ///
      str    I10_PR137                 3571-3577   ///
      str    I10_PR138                 3578-3584   ///
      str    I10_PR139                 3585-3591   ///
      str    I10_PR140                 3592-3598   ///
      str    I10_PR141                 3599-3605   ///
      str    I10_PR142                 3606-3612   ///
      str    I10_PR143                 3613-3619   ///
      str    I10_PR144                 3620-3626   ///
      str    I10_PR145                 3627-3633   ///
      str    I10_PR146                 3634-3640   ///
      str    I10_PR147                 3641-3647   ///
      str    I10_PR148                 3648-3654   ///
      str    I10_PR149                 3655-3661   ///
      str    I10_PR150                 3662-3668   ///
      str    I10_PR151                 3669-3675   ///
      str    I10_PR152                 3676-3682   ///
      str    I10_PR153                 3683-3689   ///
      str    I10_PR154                 3690-3696   ///
      str    I10_PR155                 3697-3703   ///
      str    I10_PR156                 3704-3710   ///
      str    I10_PR157                 3711-3717   ///
      str    I10_PR158                 3718-3724   ///
      str    I10_PR159                 3725-3731   ///
      str    I10_PR160                 3732-3738   ///
      str    I10_PR161                 3739-3745   ///
      str    I10_PR162                 3746-3752   ///
      str    I10_PR163                 3753-3759   ///
      str    I10_PR164                 3760-3766   ///
      str    I10_PR165                 3767-3773   ///
      str    I10_PR166                 3774-3780   ///
      str    I10_PR167                 3781-3787   ///
      str    I10_PR168                 3788-3794   ///
      str    I10_PR169                 3795-3801   ///
      str    I10_PR170                 3802-3808   ///
      str    I10_PR171                 3809-3815   ///
      str    I10_PR172                 3816-3822   ///
      str    I10_PR173                 3823-3829   ///
      str    I10_PR174                 3830-3836   ///
      str    I10_PR175                 3837-3843   ///
      str    I10_PR176                 3844-3850   ///
      str    I10_PR177                 3851-3857   ///
      str    I10_PR178                 3858-3864   ///
      str    I10_PR179                 3865-3871   ///
      str    I10_PR180                 3872-3878   ///
      str    I10_PR181                 3879-3885   ///
      str    I10_PR182                 3886-3892   ///
      str    I10_PR183                 3893-3899   ///
      str    I10_PR184                 3900-3906   ///
      str    I10_PR185                 3907-3913   ///
      str    I10_PR186                 3914-3920   ///
      str    I10_PR187                 3921-3927   ///
      str    I10_PR188                 3928-3934   ///
      str    I10_PR189                 3935-3941   ///
      str    I10_PR190                 3942-3948   ///
      str    I10_PR191                 3949-3955   ///
      str    I10_PR192                 3956-3962   ///
      str    I10_PR193                 3963-3969   ///
      str    I10_PR194                 3970-3976   ///
      str    I10_PR195                 3977-3983   ///
      str    I10_PR196                 3984-3990   ///
      str    I10_PR197                 3991-3997   ///
      str    I10_PR198                 3998-4004   ///
      str    I10_PR199                 4005-4011   ///
      str    I10_PR200                 4012-4018   ///
      int    I10_PROCTYPE              4019-4021   ///
      byte   I10_SERVICELINE           4022-4023   ///
      double KEY                       4024-4038   ///
      long   LOS                       4039-4043   ///
      long   LOS_X                     4044-4049   ///
      str    MARITALSTATUS_X           4050        ///
      str    MARITALSTATUSUB04         4051        ///
      byte   MDC                       4052-4053   ///
      byte   MDC_NoPOA                 4054-4055   ///
      long   MDNUM1_R                  4056-4064   ///
      long   MDNUM2_R                  4065-4073   ///
      long   MDNUM3_R                  4074-4082   ///
      long   MDNUM4_R                  4083-4091   ///
      byte   MEDINCSTQ                 4092-4093   ///
      int    NCPT                      4094-4097   ///
      double OS_TIME                   4098-4108   ///
      byte   PAY1                      4109-4110   ///
      str    PAY1_X                    4111-4114   ///
      byte   PAY2                      4115-4116   ///
      str    PAY2_X                    4117-4120   ///
      byte   PAY3                      4121-4122   ///
      str    PAY3_X                    4123-4126   ///
      byte   PCLASS_ORPROC             4127-4128   ///
      int    PL_CBSA                   4129-4131   ///
      byte   PL_NCHS                   4132-4133   ///
      byte   PL_RUCC                   4134-4135   ///
      byte   PL_UIC                    4136-4137   ///
      byte   PL_UR_CAT4                4138-4139   ///
      byte   POA_Disch_Edit1           4140-4141   ///
      byte   POA_Disch_Edit2           4142-4143   ///
      byte   POA_Hosp_Edit1            4144-4145   ///
      byte   POA_Hosp_Edit2            4146-4147   ///
      byte   POA_Hosp_Edit3            4148-4149   ///
      double POA_Hosp_Edit3_Value      4150-4157   ///
      str    PointOfOrigin_X           4158        ///
      str    PointOfOriginUB04         4159        ///
      long   PRDAY1                    4160-4164   ///
      long   PRDAY2                    4165-4169   ///
      long   PRDAY3                    4170-4174   ///
      long   PRDAY4                    4175-4179   ///
      long   PRDAY5                    4180-4184   ///
      long   PRDAY6                    4185-4189   ///
      long   PRDAY7                    4190-4194   ///
      long   PRDAY8                    4195-4199   ///
      long   PRDAY9                    4200-4204   ///
      long   PRDAY10                   4205-4209   ///
      long   PRDAY11                   4210-4214   ///
      long   PRDAY12                   4215-4219   ///
      long   PRDAY13                   4220-4224   ///
      long   PRDAY14                   4225-4229   ///
      long   PRDAY15                   4230-4234   ///
      long   PRDAY16                   4235-4239   ///
      long   PRDAY17                   4240-4244   ///
      long   PRDAY18                   4245-4249   ///
      long   PRDAY19                   4250-4254   ///
      long   PRDAY20                   4255-4259   ///
      long   PRDAY21                   4260-4264   ///
      long   PRDAY22                   4265-4269   ///
      long   PRDAY23                   4270-4274   ///
      long   PRDAY24                   4275-4279   ///
      long   PRDAY25                   4280-4284   ///
      long   PRDAY26                   4285-4289   ///
      long   PRDAY27                   4290-4294   ///
      long   PRDAY28                   4295-4299   ///
      long   PRDAY29                   4300-4304   ///
      long   PRDAY30                   4305-4309   ///
      long   PRDAY31                   4310-4314   ///
      long   PRDAY32                   4315-4319   ///
      long   PRDAY33                   4320-4324   ///
      long   PRDAY34                   4325-4329   ///
      long   PRDAY35                   4330-4334   ///
      long   PRDAY36                   4335-4339   ///
      long   PRDAY37                   4340-4344   ///
      long   PRDAY38                   4345-4349   ///
      long   PRDAY39                   4350-4354   ///
      long   PRDAY40                   4355-4359   ///
      long   PRDAY41                   4360-4364   ///
      long   PRDAY42                   4365-4369   ///
      long   PRDAY43                   4370-4374   ///
      long   PRDAY44                   4375-4379   ///
      long   PRDAY45                   4380-4384   ///
      long   PRDAY46                   4385-4389   ///
      long   PRDAY47                   4390-4394   ///
      long   PRDAY48                   4395-4399   ///
      long   PRDAY49                   4400-4404   ///
      long   PRDAY50                   4405-4409   ///
      long   PRDAY51                   4410-4414   ///
      long   PRDAY52                   4415-4419   ///
      long   PRDAY53                   4420-4424   ///
      long   PRDAY54                   4425-4429   ///
      long   PRDAY55                   4430-4434   ///
      long   PRDAY56                   4435-4439   ///
      long   PRDAY57                   4440-4444   ///
      long   PRDAY58                   4445-4449   ///
      long   PRDAY59                   4450-4454   ///
      long   PRDAY60                   4455-4459   ///
      long   PRDAY61                   4460-4464   ///
      long   PRDAY62                   4465-4469   ///
      long   PRDAY63                   4470-4474   ///
      long   PRDAY64                   4475-4479   ///
      long   PRDAY65                   4480-4484   ///
      long   PRDAY66                   4485-4489   ///
      long   PRDAY67                   4490-4494   ///
      long   PRDAY68                   4495-4499   ///
      long   PRDAY69                   4500-4504   ///
      long   PRDAY70                   4505-4509   ///
      long   PRDAY71                   4510-4514   ///
      long   PRDAY72                   4515-4519   ///
      long   PRDAY73                   4520-4524   ///
      long   PRDAY74                   4525-4529   ///
      long   PRDAY75                   4530-4534   ///
      long   PRDAY76                   4535-4539   ///
      long   PRDAY77                   4540-4544   ///
      long   PRDAY78                   4545-4549   ///
      long   PRDAY79                   4550-4554   ///
      long   PRDAY80                   4555-4559   ///
      long   PRDAY81                   4560-4564   ///
      long   PRDAY82                   4565-4569   ///
      long   PRDAY83                   4570-4574   ///
      long   PRDAY84                   4575-4579   ///
      long   PRDAY85                   4580-4584   ///
      long   PRDAY86                   4585-4589   ///
      long   PRDAY87                   4590-4594   ///
      long   PRDAY88                   4595-4599   ///
      long   PRDAY89                   4600-4604   ///
      long   PRDAY90                   4605-4609   ///
      long   PRDAY91                   4610-4614   ///
      long   PRDAY92                   4615-4619   ///
      long   PRDAY93                   4620-4624   ///
      long   PRDAY94                   4625-4629   ///
      long   PRDAY95                   4630-4634   ///
      long   PRDAY96                   4635-4639   ///
      long   PRDAY97                   4640-4644   ///
      long   PRDAY98                   4645-4649   ///
      long   PRDAY99                   4650-4654   ///
      long   PRDAY100                  4655-4659   ///
      long   PRDAY101                  4660-4664   ///
      long   PRDAY102                  4665-4669   ///
      long   PRDAY103                  4670-4674   ///
      long   PRDAY104                  4675-4679   ///
      long   PRDAY105                  4680-4684   ///
      long   PRDAY106                  4685-4689   ///
      long   PRDAY107                  4690-4694   ///
      long   PRDAY108                  4695-4699   ///
      long   PRDAY109                  4700-4704   ///
      long   PRDAY110                  4705-4709   ///
      long   PRDAY111                  4710-4714   ///
      long   PRDAY112                  4715-4719   ///
      long   PRDAY113                  4720-4724   ///
      long   PRDAY114                  4725-4729   ///
      long   PRDAY115                  4730-4734   ///
      long   PRDAY116                  4735-4739   ///
      long   PRDAY117                  4740-4744   ///
      long   PRDAY118                  4745-4749   ///
      long   PRDAY119                  4750-4754   ///
      long   PRDAY120                  4755-4759   ///
      long   PRDAY121                  4760-4764   ///
      long   PRDAY122                  4765-4769   ///
      long   PRDAY123                  4770-4774   ///
      long   PRDAY124                  4775-4779   ///
      long   PRDAY125                  4780-4784   ///
      long   PRDAY126                  4785-4789   ///
      long   PRDAY127                  4790-4794   ///
      long   PRDAY128                  4795-4799   ///
      long   PRDAY129                  4800-4804   ///
      long   PRDAY130                  4805-4809   ///
      long   PRDAY131                  4810-4814   ///
      long   PRDAY132                  4815-4819   ///
      long   PRDAY133                  4820-4824   ///
      long   PRDAY134                  4825-4829   ///
      long   PRDAY135                  4830-4834   ///
      long   PRDAY136                  4835-4839   ///
      long   PRDAY137                  4840-4844   ///
      long   PRDAY138                  4845-4849   ///
      long   PRDAY139                  4850-4854   ///
      long   PRDAY140                  4855-4859   ///
      long   PRDAY141                  4860-4864   ///
      long   PRDAY142                  4865-4869   ///
      long   PRDAY143                  4870-4874   ///
      long   PRDAY144                  4875-4879   ///
      long   PRDAY145                  4880-4884   ///
      long   PRDAY146                  4885-4889   ///
      long   PRDAY147                  4890-4894   ///
      long   PRDAY148                  4895-4899   ///
      long   PRDAY149                  4900-4904   ///
      long   PRDAY150                  4905-4909   ///
      long   PRDAY151                  4910-4914   ///
      long   PRDAY152                  4915-4919   ///
      long   PRDAY153                  4920-4924   ///
      long   PRDAY154                  4925-4929   ///
      long   PRDAY155                  4930-4934   ///
      long   PRDAY156                  4935-4939   ///
      long   PRDAY157                  4940-4944   ///
      long   PRDAY158                  4945-4949   ///
      long   PRDAY159                  4950-4954   ///
      long   PRDAY160                  4955-4959   ///
      long   PRDAY161                  4960-4964   ///
      long   PRDAY162                  4965-4969   ///
      long   PRDAY163                  4970-4974   ///
      long   PRDAY164                  4975-4979   ///
      long   PRDAY165                  4980-4984   ///
      long   PRDAY166                  4985-4989   ///
      long   PRDAY167                  4990-4994   ///
      long   PRDAY168                  4995-4999   ///
      long   PRDAY169                  5000-5004   ///
      long   PRDAY170                  5005-5009   ///
      long   PRDAY171                  5010-5014   ///
      long   PRDAY172                  5015-5019   ///
      long   PRDAY173                  5020-5024   ///
      long   PRDAY174                  5025-5029   ///
      long   PRDAY175                  5030-5034   ///
      long   PRDAY176                  5035-5039   ///
      long   PRDAY177                  5040-5044   ///
      long   PRDAY178                  5045-5049   ///
      long   PRDAY179                  5050-5054   ///
      long   PRDAY180                  5055-5059   ///
      long   PRDAY181                  5060-5064   ///
      long   PRDAY182                  5065-5069   ///
      long   PRDAY183                  5070-5074   ///
      long   PRDAY184                  5075-5079   ///
      long   PRDAY185                  5080-5084   ///
      long   PRDAY186                  5085-5089   ///
      long   PRDAY187                  5090-5094   ///
      long   PRDAY188                  5095-5099   ///
      long   PRDAY189                  5100-5104   ///
      long   PRDAY190                  5105-5109   ///
      long   PRDAY191                  5110-5114   ///
      long   PRDAY192                  5115-5119   ///
      long   PRDAY193                  5120-5124   ///
      long   PRDAY194                  5125-5129   ///
      long   PRDAY195                  5130-5134   ///
      long   PRDAY196                  5135-5139   ///
      long   PRDAY197                  5140-5144   ///
      long   PRDAY198                  5145-5149   ///
      long   PRDAY199                  5150-5154   ///
      long   PRDAY200                  5155-5159   ///
      str    PrimLang                  5160-5162   ///
      str    PSTATE                    5163-5164   ///
      str    PSTATE_GEO                5165-5166   ///
      long   PSTCO                     5167-5171   ///
      long   PSTCO_GEO                 5172-5176   ///
      byte   RACE                      5177-5178   ///
      float  RACE_PCT_MISS_HOSP        5179-5185   ///
      str    RACE_X                    5186        ///
      double TOTCHG                    5187-5196   ///
      double TOTCHG_X                  5197-5211   ///
      byte   TRAN_IN                   5212-5213   ///
      byte   TRAN_OUT                  5214-5215   ///
      long   VisitLink                 5216-5224   ///
      int    YEAR                      5225-5228   ///
      str    ZIP                       5229-5233   ///
      str    ZIP3                      5234-5236   ///
      int    ZIPINC_QRTL               5237-5239   ///
      long   HOSPID                    5240-5244   ///
      int    AYEAR                     5245-5248   ///
      byte   BMONTH                    5249-5250   ///
      int    BYEAR                     5251-5254   ///
      byte   PRMONTH1                  5255-5256   ///
      byte   PRMONTH2                  5257-5258   ///
      byte   PRMONTH3                  5259-5260   ///
      byte   PRMONTH4                  5261-5262   ///
      byte   PRMONTH5                  5263-5264   ///
      byte   PRMONTH6                  5265-5266   ///
      byte   PRMONTH7                  5267-5268   ///
      byte   PRMONTH8                  5269-5270   ///
      byte   PRMONTH9                  5271-5272   ///
      byte   PRMONTH10                 5273-5274   ///
      byte   PRMONTH11                 5275-5276   ///
      byte   PRMONTH12                 5277-5278   ///
      byte   PRMONTH13                 5279-5280   ///
      byte   PRMONTH14                 5281-5282   ///
      byte   PRMONTH15                 5283-5284   ///
      byte   PRMONTH16                 5285-5286   ///
      byte   PRMONTH17                 5287-5288   ///
      byte   PRMONTH18                 5289-5290   ///
      byte   PRMONTH19                 5291-5292   ///
      byte   PRMONTH20                 5293-5294   ///
      byte   PRMONTH21                 5295-5296   ///
      byte   PRMONTH22                 5297-5298   ///
      byte   PRMONTH23                 5299-5300   ///
      byte   PRMONTH24                 5301-5302   ///
      byte   PRMONTH25                 5303-5304   ///
      byte   PRMONTH26                 5305-5306   ///
      byte   PRMONTH27                 5307-5308   ///
      byte   PRMONTH28                 5309-5310   ///
      byte   PRMONTH29                 5311-5312   ///
      byte   PRMONTH30                 5313-5314   ///
      byte   PRMONTH31                 5315-5316   ///
      byte   PRMONTH32                 5317-5318   ///
      byte   PRMONTH33                 5319-5320   ///
      byte   PRMONTH34                 5321-5322   ///
      byte   PRMONTH35                 5323-5324   ///
      byte   PRMONTH36                 5325-5326   ///
      byte   PRMONTH37                 5327-5328   ///
      byte   PRMONTH38                 5329-5330   ///
      byte   PRMONTH39                 5331-5332   ///
      byte   PRMONTH40                 5333-5334   ///
      byte   PRMONTH41                 5335-5336   ///
      byte   PRMONTH42                 5337-5338   ///
      byte   PRMONTH43                 5339-5340   ///
      byte   PRMONTH44                 5341-5342   ///
      byte   PRMONTH45                 5343-5344   ///
      byte   PRMONTH46                 5345-5346   ///
      byte   PRMONTH47                 5347-5348   ///
      byte   PRMONTH48                 5349-5350   ///
      byte   PRMONTH49                 5351-5352   ///
      byte   PRMONTH50                 5353-5354   ///
      byte   PRMONTH51                 5355-5356   ///
      byte   PRMONTH52                 5357-5358   ///
      byte   PRMONTH53                 5359-5360   ///
      byte   PRMONTH54                 5361-5362   ///
      byte   PRMONTH55                 5363-5364   ///
      byte   PRMONTH56                 5365-5366   ///
      byte   PRMONTH57                 5367-5368   ///
      byte   PRMONTH58                 5369-5370   ///
      byte   PRMONTH59                 5371-5372   ///
      byte   PRMONTH60                 5373-5374   ///
      byte   PRMONTH61                 5375-5376   ///
      byte   PRMONTH62                 5377-5378   ///
      byte   PRMONTH63                 5379-5380   ///
      byte   PRMONTH64                 5381-5382   ///
      byte   PRMONTH65                 5383-5384   ///
      byte   PRMONTH66                 5385-5386   ///
      byte   PRMONTH67                 5387-5388   ///
      byte   PRMONTH68                 5389-5390   ///
      byte   PRMONTH69                 5391-5392   ///
      byte   PRMONTH70                 5393-5394   ///
      byte   PRMONTH71                 5395-5396   ///
      byte   PRMONTH72                 5397-5398   ///
      byte   PRMONTH73                 5399-5400   ///
      byte   PRMONTH74                 5401-5402   ///
      byte   PRMONTH75                 5403-5404   ///
      byte   PRMONTH76                 5405-5406   ///
      byte   PRMONTH77                 5407-5408   ///
      byte   PRMONTH78                 5409-5410   ///
      byte   PRMONTH79                 5411-5412   ///
      byte   PRMONTH80                 5413-5414   ///
      byte   PRMONTH81                 5415-5416   ///
      byte   PRMONTH82                 5417-5418   ///
      byte   PRMONTH83                 5419-5420   ///
      byte   PRMONTH84                 5421-5422   ///
      byte   PRMONTH85                 5423-5424   ///
      byte   PRMONTH86                 5425-5426   ///
      byte   PRMONTH87                 5427-5428   ///
      byte   PRMONTH88                 5429-5430   ///
      byte   PRMONTH89                 5431-5432   ///
      byte   PRMONTH90                 5433-5434   ///
      byte   PRMONTH91                 5435-5436   ///
      byte   PRMONTH92                 5437-5438   ///
      byte   PRMONTH93                 5439-5440   ///
      byte   PRMONTH94                 5441-5442   ///
      byte   PRMONTH95                 5443-5444   ///
      byte   PRMONTH96                 5445-5446   ///
      byte   PRMONTH97                 5447-5448   ///
      byte   PRMONTH98                 5449-5450   ///
      byte   PRMONTH99                 5451-5452   ///
      byte   PRMONTH100                5453-5454   ///
      byte   PRMONTH101                5455-5456   ///
      byte   PRMONTH102                5457-5458   ///
      byte   PRMONTH103                5459-5460   ///
      byte   PRMONTH104                5461-5462   ///
      byte   PRMONTH105                5463-5464   ///
      byte   PRMONTH106                5465-5466   ///
      byte   PRMONTH107                5467-5468   ///
      byte   PRMONTH108                5469-5470   ///
      byte   PRMONTH109                5471-5472   ///
      byte   PRMONTH110                5473-5474   ///
      byte   PRMONTH111                5475-5476   ///
      byte   PRMONTH112                5477-5478   ///
      byte   PRMONTH113                5479-5480   ///
      byte   PRMONTH114                5481-5482   ///
      byte   PRMONTH115                5483-5484   ///
      byte   PRMONTH116                5485-5486   ///
      byte   PRMONTH117                5487-5488   ///
      byte   PRMONTH118                5489-5490   ///
      byte   PRMONTH119                5491-5492   ///
      byte   PRMONTH120                5493-5494   ///
      byte   PRMONTH121                5495-5496   ///
      byte   PRMONTH122                5497-5498   ///
      byte   PRMONTH123                5499-5500   ///
      byte   PRMONTH124                5501-5502   ///
      byte   PRMONTH125                5503-5504   ///
      byte   PRMONTH126                5505-5506   ///
      byte   PRMONTH127                5507-5508   ///
      byte   PRMONTH128                5509-5510   ///
      byte   PRMONTH129                5511-5512   ///
      byte   PRMONTH130                5513-5514   ///
      byte   PRMONTH131                5515-5516   ///
      byte   PRMONTH132                5517-5518   ///
      byte   PRMONTH133                5519-5520   ///
      byte   PRMONTH134                5521-5522   ///
      byte   PRMONTH135                5523-5524   ///
      byte   PRMONTH136                5525-5526   ///
      byte   PRMONTH137                5527-5528   ///
      byte   PRMONTH138                5529-5530   ///
      byte   PRMONTH139                5531-5532   ///
      byte   PRMONTH140                5533-5534   ///
      byte   PRMONTH141                5535-5536   ///
      byte   PRMONTH142                5537-5538   ///
      byte   PRMONTH143                5539-5540   ///
      byte   PRMONTH144                5541-5542   ///
      byte   PRMONTH145                5543-5544   ///
      byte   PRMONTH146                5545-5546   ///
      byte   PRMONTH147                5547-5548   ///
      byte   PRMONTH148                5549-5550   ///
      byte   PRMONTH149                5551-5552   ///
      byte   PRMONTH150                5553-5554   ///
      byte   PRMONTH151                5555-5556   ///
      byte   PRMONTH152                5557-5558   ///
      byte   PRMONTH153                5559-5560   ///
      byte   PRMONTH154                5561-5562   ///
      byte   PRMONTH155                5563-5564   ///
      byte   PRMONTH156                5565-5566   ///
      byte   PRMONTH157                5567-5568   ///
      byte   PRMONTH158                5569-5570   ///
      byte   PRMONTH159                5571-5572   ///
      byte   PRMONTH160                5573-5574   ///
      byte   PRMONTH161                5575-5576   ///
      byte   PRMONTH162                5577-5578   ///
      byte   PRMONTH163                5579-5580   ///
      byte   PRMONTH164                5581-5582   ///
      byte   PRMONTH165                5583-5584   ///
      byte   PRMONTH166                5585-5586   ///
      byte   PRMONTH167                5587-5588   ///
      byte   PRMONTH168                5589-5590   ///
      byte   PRMONTH169                5591-5592   ///
      byte   PRMONTH170                5593-5594   ///
      byte   PRMONTH171                5595-5596   ///
      byte   PRMONTH172                5597-5598   ///
      byte   PRMONTH173                5599-5600   ///
      byte   PRMONTH174                5601-5602   ///
      byte   PRMONTH175                5603-5604   ///
      byte   PRMONTH176                5605-5606   ///
      byte   PRMONTH177                5607-5608   ///
      byte   PRMONTH178                5609-5610   ///
      byte   PRMONTH179                5611-5612   ///
      byte   PRMONTH180                5613-5614   ///
      byte   PRMONTH181                5615-5616   ///
      byte   PRMONTH182                5617-5618   ///
      byte   PRMONTH183                5619-5620   ///
      byte   PRMONTH184                5621-5622   ///
      byte   PRMONTH185                5623-5624   ///
      byte   PRMONTH186                5625-5626   ///
      byte   PRMONTH187                5627-5628   ///
      byte   PRMONTH188                5629-5630   ///
      byte   PRMONTH189                5631-5632   ///
      byte   PRMONTH190                5633-5634   ///
      byte   PRMONTH191                5635-5636   ///
      byte   PRMONTH192                5637-5638   ///
      byte   PRMONTH193                5639-5640   ///
      byte   PRMONTH194                5641-5642   ///
      byte   PRMONTH195                5643-5644   ///
      byte   PRMONTH196                5645-5646   ///
      byte   PRMONTH197                5647-5648   ///
      byte   PRMONTH198                5649-5650   ///
      byte   PRMONTH199                5651-5652   ///
      byte   PRMONTH200                5653-5654   ///
      int    PRYEAR1                   5655-5658   ///
      int    PRYEAR2                   5659-5662   ///
      int    PRYEAR3                   5663-5666   ///
      int    PRYEAR4                   5667-5670   ///
      int    PRYEAR5                   5671-5674   ///
      int    PRYEAR6                   5675-5678   ///
      int    PRYEAR7                   5679-5682   ///
      int    PRYEAR8                   5683-5686   ///
      int    PRYEAR9                   5687-5690   ///
      int    PRYEAR10                  5691-5694   ///
      int    PRYEAR11                  5695-5698   ///
      int    PRYEAR12                  5699-5702   ///
      int    PRYEAR13                  5703-5706   ///
      int    PRYEAR14                  5707-5710   ///
      int    PRYEAR15                  5711-5714   ///
      int    PRYEAR16                  5715-5718   ///
      int    PRYEAR17                  5719-5722   ///
      int    PRYEAR18                  5723-5726   ///
      int    PRYEAR19                  5727-5730   ///
      int    PRYEAR20                  5731-5734   ///
      int    PRYEAR21                  5735-5738   ///
      int    PRYEAR22                  5739-5742   ///
      int    PRYEAR23                  5743-5746   ///
      int    PRYEAR24                  5747-5750   ///
      int    PRYEAR25                  5751-5754   ///
      int    PRYEAR26                  5755-5758   ///
      int    PRYEAR27                  5759-5762   ///
      int    PRYEAR28                  5763-5766   ///
      int    PRYEAR29                  5767-5770   ///
      int    PRYEAR30                  5771-5774   ///
      int    PRYEAR31                  5775-5778   ///
      int    PRYEAR32                  5779-5782   ///
      int    PRYEAR33                  5783-5786   ///
      int    PRYEAR34                  5787-5790   ///
      int    PRYEAR35                  5791-5794   ///
      int    PRYEAR36                  5795-5798   ///
      int    PRYEAR37                  5799-5802   ///
      int    PRYEAR38                  5803-5806   ///
      int    PRYEAR39                  5807-5810   ///
      int    PRYEAR40                  5811-5814   ///
      int    PRYEAR41                  5815-5818   ///
      int    PRYEAR42                  5819-5822   ///
      int    PRYEAR43                  5823-5826   ///
      int    PRYEAR44                  5827-5830   ///
      int    PRYEAR45                  5831-5834   ///
      int    PRYEAR46                  5835-5838   ///
      int    PRYEAR47                  5839-5842   ///
      int    PRYEAR48                  5843-5846   ///
      int    PRYEAR49                  5847-5850   ///
      int    PRYEAR50                  5851-5854   ///
      int    PRYEAR51                  5855-5858   ///
      int    PRYEAR52                  5859-5862   ///
      int    PRYEAR53                  5863-5866   ///
      int    PRYEAR54                  5867-5870   ///
      int    PRYEAR55                  5871-5874   ///
      int    PRYEAR56                  5875-5878   ///
      int    PRYEAR57                  5879-5882   ///
      int    PRYEAR58                  5883-5886   ///
      int    PRYEAR59                  5887-5890   ///
      int    PRYEAR60                  5891-5894   ///
      int    PRYEAR61                  5895-5898   ///
      int    PRYEAR62                  5899-5902   ///
      int    PRYEAR63                  5903-5906   ///
      int    PRYEAR64                  5907-5910   ///
      int    PRYEAR65                  5911-5914   ///
      int    PRYEAR66                  5915-5918   ///
      int    PRYEAR67                  5919-5922   ///
      int    PRYEAR68                  5923-5926   ///
      int    PRYEAR69                  5927-5930   ///
      int    PRYEAR70                  5931-5934   ///
      int    PRYEAR71                  5935-5938   ///
      int    PRYEAR72                  5939-5942   ///
      int    PRYEAR73                  5943-5946   ///
      int    PRYEAR74                  5947-5950   ///
      int    PRYEAR75                  5951-5954   ///
      int    PRYEAR76                  5955-5958   ///
      int    PRYEAR77                  5959-5962   ///
      int    PRYEAR78                  5963-5966   ///
      int    PRYEAR79                  5967-5970   ///
      int    PRYEAR80                  5971-5974   ///
      int    PRYEAR81                  5975-5978   ///
      int    PRYEAR82                  5979-5982   ///
      int    PRYEAR83                  5983-5986   ///
      int    PRYEAR84                  5987-5990   ///
      int    PRYEAR85                  5991-5994   ///
      int    PRYEAR86                  5995-5998   ///
      int    PRYEAR87                  5999-6002   ///
      int    PRYEAR88                  6003-6006   ///
      int    PRYEAR89                  6007-6010   ///
      int    PRYEAR90                  6011-6014   ///
      int    PRYEAR91                  6015-6018   ///
      int    PRYEAR92                  6019-6022   ///
      int    PRYEAR93                  6023-6026   ///
      int    PRYEAR94                  6027-6030   ///
      int    PRYEAR95                  6031-6034   ///
      int    PRYEAR96                  6035-6038   ///
      int    PRYEAR97                  6039-6042   ///
      int    PRYEAR98                  6043-6046   ///
      int    PRYEAR99                  6047-6050   ///
      int    PRYEAR100                 6051-6054   ///
      int    PRYEAR101                 6055-6058   ///
      int    PRYEAR102                 6059-6062   ///
      int    PRYEAR103                 6063-6066   ///
      int    PRYEAR104                 6067-6070   ///
      int    PRYEAR105                 6071-6074   ///
      int    PRYEAR106                 6075-6078   ///
      int    PRYEAR107                 6079-6082   ///
      int    PRYEAR108                 6083-6086   ///
      int    PRYEAR109                 6087-6090   ///
      int    PRYEAR110                 6091-6094   ///
      int    PRYEAR111                 6095-6098   ///
      int    PRYEAR112                 6099-6102   ///
      int    PRYEAR113                 6103-6106   ///
      int    PRYEAR114                 6107-6110   ///
      int    PRYEAR115                 6111-6114   ///
      int    PRYEAR116                 6115-6118   ///
      int    PRYEAR117                 6119-6122   ///
      int    PRYEAR118                 6123-6126   ///
      int    PRYEAR119                 6127-6130   ///
      int    PRYEAR120                 6131-6134   ///
      int    PRYEAR121                 6135-6138   ///
      int    PRYEAR122                 6139-6142   ///
      int    PRYEAR123                 6143-6146   ///
      int    PRYEAR124                 6147-6150   ///
      int    PRYEAR125                 6151-6154   ///
      int    PRYEAR126                 6155-6158   ///
      int    PRYEAR127                 6159-6162   ///
      int    PRYEAR128                 6163-6166   ///
      int    PRYEAR129                 6167-6170   ///
      int    PRYEAR130                 6171-6174   ///
      int    PRYEAR131                 6175-6178   ///
      int    PRYEAR132                 6179-6182   ///
      int    PRYEAR133                 6183-6186   ///
      int    PRYEAR134                 6187-6190   ///
      int    PRYEAR135                 6191-6194   ///
      int    PRYEAR136                 6195-6198   ///
      int    PRYEAR137                 6199-6202   ///
      int    PRYEAR138                 6203-6206   ///
      int    PRYEAR139                 6207-6210   ///
      int    PRYEAR140                 6211-6214   ///
      int    PRYEAR141                 6215-6218   ///
      int    PRYEAR142                 6219-6222   ///
      int    PRYEAR143                 6223-6226   ///
      int    PRYEAR144                 6227-6230   ///
      int    PRYEAR145                 6231-6234   ///
      int    PRYEAR146                 6235-6238   ///
      int    PRYEAR147                 6239-6242   ///
      int    PRYEAR148                 6243-6246   ///
      int    PRYEAR149                 6247-6250   ///
      int    PRYEAR150                 6251-6254   ///
      int    PRYEAR151                 6255-6258   ///
      int    PRYEAR152                 6259-6262   ///
      int    PRYEAR153                 6263-6266   ///
      int    PRYEAR154                 6267-6270   ///
      int    PRYEAR155                 6271-6274   ///
      int    PRYEAR156                 6275-6278   ///
      int    PRYEAR157                 6279-6282   ///
      int    PRYEAR158                 6283-6286   ///
      int    PRYEAR159                 6287-6290   ///
      int    PRYEAR160                 6291-6294   ///
      int    PRYEAR161                 6295-6298   ///
      int    PRYEAR162                 6299-6302   ///
      int    PRYEAR163                 6303-6306   ///
      int    PRYEAR164                 6307-6310   ///
      int    PRYEAR165                 6311-6314   ///
      int    PRYEAR166                 6315-6318   ///
      int    PRYEAR167                 6319-6322   ///
      int    PRYEAR168                 6323-6326   ///
      int    PRYEAR169                 6327-6330   ///
      int    PRYEAR170                 6331-6334   ///
      int    PRYEAR171                 6335-6338   ///
      int    PRYEAR172                 6339-6342   ///
      int    PRYEAR173                 6343-6346   ///
      int    PRYEAR174                 6347-6350   ///
      int    PRYEAR175                 6351-6354   ///
      int    PRYEAR176                 6355-6358   ///
      int    PRYEAR177                 6359-6362   ///
      int    PRYEAR178                 6363-6366   ///
      int    PRYEAR179                 6367-6370   ///
      int    PRYEAR180                 6371-6374   ///
      int    PRYEAR181                 6375-6378   ///
      int    PRYEAR182                 6379-6382   ///
      int    PRYEAR183                 6383-6386   ///
      int    PRYEAR184                 6387-6390   ///
      int    PRYEAR185                 6391-6394   ///
      int    PRYEAR186                 6395-6398   ///
      int    PRYEAR187                 6399-6402   ///
      int    PRYEAR188                 6403-6406   ///
      int    PRYEAR189                 6407-6410   ///
      int    PRYEAR190                 6411-6414   ///
      int    PRYEAR191                 6415-6418   ///
      int    PRYEAR192                 6419-6422   ///
      int    PRYEAR193                 6423-6426   ///
      int    PRYEAR194                 6427-6430   ///
      int    PRYEAR195                 6431-6434   ///
      int    PRYEAR196                 6435-6438   ///
      int    PRYEAR197                 6439-6442   ///
      int    PRYEAR198                 6443-6446   ///
      int    PRYEAR199                 6447-6450   ///
      int    PRYEAR200                 6451-6454   ///
      using  "GA_SID_2020_CORE.ASC"

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
label var DaysToEvent              "Days from 'start date' to admission"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
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
label var DXPOA84                  "Diagnosis 84, present on admission indicator"
label var DXPOA85                  "Diagnosis 85, present on admission indicator"
label var DXPOA86                  "Diagnosis 86, present on admission indicator"
label var DXPOA87                  "Diagnosis 87, present on admission indicator"
label var DXPOA88                  "Diagnosis 88, present on admission indicator"
label var DXPOA89                  "Diagnosis 89, present on admission indicator"
label var DXPOA90                  "Diagnosis 90, present on admission indicator"
label var DXPOA91                  "Diagnosis 91, present on admission indicator"
label var DXPOA92                  "Diagnosis 92, present on admission indicator"
label var DXPOA93                  "Diagnosis 93, present on admission indicator"
label var DXPOA94                  "Diagnosis 94, present on admission indicator"
label var DXPOA95                  "Diagnosis 95, present on admission indicator"
label var DXPOA96                  "Diagnosis 96, present on admission indicator"
label var DXPOA97                  "Diagnosis 97, present on admission indicator"
label var DXPOA98                  "Diagnosis 98, present on admission indicator"
label var DXPOA99                  "Diagnosis 99, present on admission indicator"
label var DXPOA100                 "Diagnosis 100, present on admission indicator"
label var DXPOA101                 "Diagnosis 101, present on admission indicator"
label var DXPOA102                 "Diagnosis 102, present on admission indicator"
label var DXPOA103                 "Diagnosis 103, present on admission indicator"
label var DXPOA104                 "Diagnosis 104, present on admission indicator"
label var DXPOA105                 "Diagnosis 105, present on admission indicator"
label var DXPOA106                 "Diagnosis 106, present on admission indicator"
label var DXPOA107                 "Diagnosis 107, present on admission indicator"
label var DXPOA108                 "Diagnosis 108, present on admission indicator"
label var DXPOA109                 "Diagnosis 109, present on admission indicator"
label var DXPOA110                 "Diagnosis 110, present on admission indicator"
label var DXPOA111                 "Diagnosis 111, present on admission indicator"
label var DXPOA112                 "Diagnosis 112, present on admission indicator"
label var DXPOA113                 "Diagnosis 113, present on admission indicator"
label var DXPOA114                 "Diagnosis 114, present on admission indicator"
label var DXPOA115                 "Diagnosis 115, present on admission indicator"
label var DXPOA116                 "Diagnosis 116, present on admission indicator"
label var DXPOA117                 "Diagnosis 117, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
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
label var I10_DX84                 "ICD-10-CM Diagnosis 84"
label var I10_DX85                 "ICD-10-CM Diagnosis 85"
label var I10_DX86                 "ICD-10-CM Diagnosis 86"
label var I10_DX87                 "ICD-10-CM Diagnosis 87"
label var I10_DX88                 "ICD-10-CM Diagnosis 88"
label var I10_DX89                 "ICD-10-CM Diagnosis 89"
label var I10_DX90                 "ICD-10-CM Diagnosis 90"
label var I10_DX91                 "ICD-10-CM Diagnosis 91"
label var I10_DX92                 "ICD-10-CM Diagnosis 92"
label var I10_DX93                 "ICD-10-CM Diagnosis 93"
label var I10_DX94                 "ICD-10-CM Diagnosis 94"
label var I10_DX95                 "ICD-10-CM Diagnosis 95"
label var I10_DX96                 "ICD-10-CM Diagnosis 96"
label var I10_DX97                 "ICD-10-CM Diagnosis 97"
label var I10_DX98                 "ICD-10-CM Diagnosis 98"
label var I10_DX99                 "ICD-10-CM Diagnosis 99"
label var I10_DX100                "ICD-10-CM Diagnosis 100"
label var I10_DX101                "ICD-10-CM Diagnosis 101"
label var I10_DX102                "ICD-10-CM Diagnosis 102"
label var I10_DX103                "ICD-10-CM Diagnosis 103"
label var I10_DX104                "ICD-10-CM Diagnosis 104"
label var I10_DX105                "ICD-10-CM Diagnosis 105"
label var I10_DX106                "ICD-10-CM Diagnosis 106"
label var I10_DX107                "ICD-10-CM Diagnosis 107"
label var I10_DX108                "ICD-10-CM Diagnosis 108"
label var I10_DX109                "ICD-10-CM Diagnosis 109"
label var I10_DX110                "ICD-10-CM Diagnosis 110"
label var I10_DX111                "ICD-10-CM Diagnosis 111"
label var I10_DX112                "ICD-10-CM Diagnosis 112"
label var I10_DX113                "ICD-10-CM Diagnosis 113"
label var I10_DX114                "ICD-10-CM Diagnosis 114"
label var I10_DX115                "ICD-10-CM Diagnosis 115"
label var I10_DX116                "ICD-10-CM Diagnosis 116"
label var I10_DX117                "ICD-10-CM Diagnosis 117"
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
label var I10_PR64                 "ICD-10-PCS Procedure 64"
label var I10_PR65                 "ICD-10-PCS Procedure 65"
label var I10_PR66                 "ICD-10-PCS Procedure 66"
label var I10_PR67                 "ICD-10-PCS Procedure 67"
label var I10_PR68                 "ICD-10-PCS Procedure 68"
label var I10_PR69                 "ICD-10-PCS Procedure 69"
label var I10_PR70                 "ICD-10-PCS Procedure 70"
label var I10_PR71                 "ICD-10-PCS Procedure 71"
label var I10_PR72                 "ICD-10-PCS Procedure 72"
label var I10_PR73                 "ICD-10-PCS Procedure 73"
label var I10_PR74                 "ICD-10-PCS Procedure 74"
label var I10_PR75                 "ICD-10-PCS Procedure 75"
label var I10_PR76                 "ICD-10-PCS Procedure 76"
label var I10_PR77                 "ICD-10-PCS Procedure 77"
label var I10_PR78                 "ICD-10-PCS Procedure 78"
label var I10_PR79                 "ICD-10-PCS Procedure 79"
label var I10_PR80                 "ICD-10-PCS Procedure 80"
label var I10_PR81                 "ICD-10-PCS Procedure 81"
label var I10_PR82                 "ICD-10-PCS Procedure 82"
label var I10_PR83                 "ICD-10-PCS Procedure 83"
label var I10_PR84                 "ICD-10-PCS Procedure 84"
label var I10_PR85                 "ICD-10-PCS Procedure 85"
label var I10_PR86                 "ICD-10-PCS Procedure 86"
label var I10_PR87                 "ICD-10-PCS Procedure 87"
label var I10_PR88                 "ICD-10-PCS Procedure 88"
label var I10_PR89                 "ICD-10-PCS Procedure 89"
label var I10_PR90                 "ICD-10-PCS Procedure 90"
label var I10_PR91                 "ICD-10-PCS Procedure 91"
label var I10_PR92                 "ICD-10-PCS Procedure 92"
label var I10_PR93                 "ICD-10-PCS Procedure 93"
label var I10_PR94                 "ICD-10-PCS Procedure 94"
label var I10_PR95                 "ICD-10-PCS Procedure 95"
label var I10_PR96                 "ICD-10-PCS Procedure 96"
label var I10_PR97                 "ICD-10-PCS Procedure 97"
label var I10_PR98                 "ICD-10-PCS Procedure 98"
label var I10_PR99                 "ICD-10-PCS Procedure 99"
label var I10_PR100                "ICD-10-PCS Procedure 100"
label var I10_PR101                "ICD-10-PCS Procedure 101"
label var I10_PR102                "ICD-10-PCS Procedure 102"
label var I10_PR103                "ICD-10-PCS Procedure 103"
label var I10_PR104                "ICD-10-PCS Procedure 104"
label var I10_PR105                "ICD-10-PCS Procedure 105"
label var I10_PR106                "ICD-10-PCS Procedure 106"
label var I10_PR107                "ICD-10-PCS Procedure 107"
label var I10_PR108                "ICD-10-PCS Procedure 108"
label var I10_PR109                "ICD-10-PCS Procedure 109"
label var I10_PR110                "ICD-10-PCS Procedure 110"
label var I10_PR111                "ICD-10-PCS Procedure 111"
label var I10_PR112                "ICD-10-PCS Procedure 112"
label var I10_PR113                "ICD-10-PCS Procedure 113"
label var I10_PR114                "ICD-10-PCS Procedure 114"
label var I10_PR115                "ICD-10-PCS Procedure 115"
label var I10_PR116                "ICD-10-PCS Procedure 116"
label var I10_PR117                "ICD-10-PCS Procedure 117"
label var I10_PR118                "ICD-10-PCS Procedure 118"
label var I10_PR119                "ICD-10-PCS Procedure 119"
label var I10_PR120                "ICD-10-PCS Procedure 120"
label var I10_PR121                "ICD-10-PCS Procedure 121"
label var I10_PR122                "ICD-10-PCS Procedure 122"
label var I10_PR123                "ICD-10-PCS Procedure 123"
label var I10_PR124                "ICD-10-PCS Procedure 124"
label var I10_PR125                "ICD-10-PCS Procedure 125"
label var I10_PR126                "ICD-10-PCS Procedure 126"
label var I10_PR127                "ICD-10-PCS Procedure 127"
label var I10_PR128                "ICD-10-PCS Procedure 128"
label var I10_PR129                "ICD-10-PCS Procedure 129"
label var I10_PR130                "ICD-10-PCS Procedure 130"
label var I10_PR131                "ICD-10-PCS Procedure 131"
label var I10_PR132                "ICD-10-PCS Procedure 132"
label var I10_PR133                "ICD-10-PCS Procedure 133"
label var I10_PR134                "ICD-10-PCS Procedure 134"
label var I10_PR135                "ICD-10-PCS Procedure 135"
label var I10_PR136                "ICD-10-PCS Procedure 136"
label var I10_PR137                "ICD-10-PCS Procedure 137"
label var I10_PR138                "ICD-10-PCS Procedure 138"
label var I10_PR139                "ICD-10-PCS Procedure 139"
label var I10_PR140                "ICD-10-PCS Procedure 140"
label var I10_PR141                "ICD-10-PCS Procedure 141"
label var I10_PR142                "ICD-10-PCS Procedure 142"
label var I10_PR143                "ICD-10-PCS Procedure 143"
label var I10_PR144                "ICD-10-PCS Procedure 144"
label var I10_PR145                "ICD-10-PCS Procedure 145"
label var I10_PR146                "ICD-10-PCS Procedure 146"
label var I10_PR147                "ICD-10-PCS Procedure 147"
label var I10_PR148                "ICD-10-PCS Procedure 148"
label var I10_PR149                "ICD-10-PCS Procedure 149"
label var I10_PR150                "ICD-10-PCS Procedure 150"
label var I10_PR151                "ICD-10-PCS Procedure 151"
label var I10_PR152                "ICD-10-PCS Procedure 152"
label var I10_PR153                "ICD-10-PCS Procedure 153"
label var I10_PR154                "ICD-10-PCS Procedure 154"
label var I10_PR155                "ICD-10-PCS Procedure 155"
label var I10_PR156                "ICD-10-PCS Procedure 156"
label var I10_PR157                "ICD-10-PCS Procedure 157"
label var I10_PR158                "ICD-10-PCS Procedure 158"
label var I10_PR159                "ICD-10-PCS Procedure 159"
label var I10_PR160                "ICD-10-PCS Procedure 160"
label var I10_PR161                "ICD-10-PCS Procedure 161"
label var I10_PR162                "ICD-10-PCS Procedure 162"
label var I10_PR163                "ICD-10-PCS Procedure 163"
label var I10_PR164                "ICD-10-PCS Procedure 164"
label var I10_PR165                "ICD-10-PCS Procedure 165"
label var I10_PR166                "ICD-10-PCS Procedure 166"
label var I10_PR167                "ICD-10-PCS Procedure 167"
label var I10_PR168                "ICD-10-PCS Procedure 168"
label var I10_PR169                "ICD-10-PCS Procedure 169"
label var I10_PR170                "ICD-10-PCS Procedure 170"
label var I10_PR171                "ICD-10-PCS Procedure 171"
label var I10_PR172                "ICD-10-PCS Procedure 172"
label var I10_PR173                "ICD-10-PCS Procedure 173"
label var I10_PR174                "ICD-10-PCS Procedure 174"
label var I10_PR175                "ICD-10-PCS Procedure 175"
label var I10_PR176                "ICD-10-PCS Procedure 176"
label var I10_PR177                "ICD-10-PCS Procedure 177"
label var I10_PR178                "ICD-10-PCS Procedure 178"
label var I10_PR179                "ICD-10-PCS Procedure 179"
label var I10_PR180                "ICD-10-PCS Procedure 180"
label var I10_PR181                "ICD-10-PCS Procedure 181"
label var I10_PR182                "ICD-10-PCS Procedure 182"
label var I10_PR183                "ICD-10-PCS Procedure 183"
label var I10_PR184                "ICD-10-PCS Procedure 184"
label var I10_PR185                "ICD-10-PCS Procedure 185"
label var I10_PR186                "ICD-10-PCS Procedure 186"
label var I10_PR187                "ICD-10-PCS Procedure 187"
label var I10_PR188                "ICD-10-PCS Procedure 188"
label var I10_PR189                "ICD-10-PCS Procedure 189"
label var I10_PR190                "ICD-10-PCS Procedure 190"
label var I10_PR191                "ICD-10-PCS Procedure 191"
label var I10_PR192                "ICD-10-PCS Procedure 192"
label var I10_PR193                "ICD-10-PCS Procedure 193"
label var I10_PR194                "ICD-10-PCS Procedure 194"
label var I10_PR195                "ICD-10-PCS Procedure 195"
label var I10_PR196                "ICD-10-PCS Procedure 196"
label var I10_PR197                "ICD-10-PCS Procedure 197"
label var I10_PR198                "ICD-10-PCS Procedure 198"
label var I10_PR199                "ICD-10-PCS Procedure 199"
label var I10_PR200                "ICD-10-PCS Procedure 200"
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
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MDNUM4_R                 "Physician 4 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var OS_TIME                  "Observation stay time summed from UNITS"
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
label var PRDAY64                  "Number of days from admission to I10_PR64"
label var PRDAY65                  "Number of days from admission to I10_PR65"
label var PRDAY66                  "Number of days from admission to I10_PR66"
label var PRDAY67                  "Number of days from admission to I10_PR67"
label var PRDAY68                  "Number of days from admission to I10_PR68"
label var PRDAY69                  "Number of days from admission to I10_PR69"
label var PRDAY70                  "Number of days from admission to I10_PR70"
label var PRDAY71                  "Number of days from admission to I10_PR71"
label var PRDAY72                  "Number of days from admission to I10_PR72"
label var PRDAY73                  "Number of days from admission to I10_PR73"
label var PRDAY74                  "Number of days from admission to I10_PR74"
label var PRDAY75                  "Number of days from admission to I10_PR75"
label var PRDAY76                  "Number of days from admission to I10_PR76"
label var PRDAY77                  "Number of days from admission to I10_PR77"
label var PRDAY78                  "Number of days from admission to I10_PR78"
label var PRDAY79                  "Number of days from admission to I10_PR79"
label var PRDAY80                  "Number of days from admission to I10_PR80"
label var PRDAY81                  "Number of days from admission to I10_PR81"
label var PRDAY82                  "Number of days from admission to I10_PR82"
label var PRDAY83                  "Number of days from admission to I10_PR83"
label var PRDAY84                  "Number of days from admission to I10_PR84"
label var PRDAY85                  "Number of days from admission to I10_PR85"
label var PRDAY86                  "Number of days from admission to I10_PR86"
label var PRDAY87                  "Number of days from admission to I10_PR87"
label var PRDAY88                  "Number of days from admission to I10_PR88"
label var PRDAY89                  "Number of days from admission to I10_PR89"
label var PRDAY90                  "Number of days from admission to I10_PR90"
label var PRDAY91                  "Number of days from admission to I10_PR91"
label var PRDAY92                  "Number of days from admission to I10_PR92"
label var PRDAY93                  "Number of days from admission to I10_PR93"
label var PRDAY94                  "Number of days from admission to I10_PR94"
label var PRDAY95                  "Number of days from admission to I10_PR95"
label var PRDAY96                  "Number of days from admission to I10_PR96"
label var PRDAY97                  "Number of days from admission to I10_PR97"
label var PRDAY98                  "Number of days from admission to I10_PR98"
label var PRDAY99                  "Number of days from admission to I10_PR99"
label var PRDAY100                 "Number of days from admission to I10_PR100"
label var PRDAY101                 "Number of days from admission to I10_PR101"
label var PRDAY102                 "Number of days from admission to I10_PR102"
label var PRDAY103                 "Number of days from admission to I10_PR103"
label var PRDAY104                 "Number of days from admission to I10_PR104"
label var PRDAY105                 "Number of days from admission to I10_PR105"
label var PRDAY106                 "Number of days from admission to I10_PR106"
label var PRDAY107                 "Number of days from admission to I10_PR107"
label var PRDAY108                 "Number of days from admission to I10_PR108"
label var PRDAY109                 "Number of days from admission to I10_PR109"
label var PRDAY110                 "Number of days from admission to I10_PR110"
label var PRDAY111                 "Number of days from admission to I10_PR111"
label var PRDAY112                 "Number of days from admission to I10_PR112"
label var PRDAY113                 "Number of days from admission to I10_PR113"
label var PRDAY114                 "Number of days from admission to I10_PR114"
label var PRDAY115                 "Number of days from admission to I10_PR115"
label var PRDAY116                 "Number of days from admission to I10_PR116"
label var PRDAY117                 "Number of days from admission to I10_PR117"
label var PRDAY118                 "Number of days from admission to I10_PR118"
label var PRDAY119                 "Number of days from admission to I10_PR119"
label var PRDAY120                 "Number of days from admission to I10_PR120"
label var PRDAY121                 "Number of days from admission to I10_PR121"
label var PRDAY122                 "Number of days from admission to I10_PR122"
label var PRDAY123                 "Number of days from admission to I10_PR123"
label var PRDAY124                 "Number of days from admission to I10_PR124"
label var PRDAY125                 "Number of days from admission to I10_PR125"
label var PRDAY126                 "Number of days from admission to I10_PR126"
label var PRDAY127                 "Number of days from admission to I10_PR127"
label var PRDAY128                 "Number of days from admission to I10_PR128"
label var PRDAY129                 "Number of days from admission to I10_PR129"
label var PRDAY130                 "Number of days from admission to I10_PR130"
label var PRDAY131                 "Number of days from admission to I10_PR131"
label var PRDAY132                 "Number of days from admission to I10_PR132"
label var PRDAY133                 "Number of days from admission to I10_PR133"
label var PRDAY134                 "Number of days from admission to I10_PR134"
label var PRDAY135                 "Number of days from admission to I10_PR135"
label var PRDAY136                 "Number of days from admission to I10_PR136"
label var PRDAY137                 "Number of days from admission to I10_PR137"
label var PRDAY138                 "Number of days from admission to I10_PR138"
label var PRDAY139                 "Number of days from admission to I10_PR139"
label var PRDAY140                 "Number of days from admission to I10_PR140"
label var PRDAY141                 "Number of days from admission to I10_PR141"
label var PRDAY142                 "Number of days from admission to I10_PR142"
label var PRDAY143                 "Number of days from admission to I10_PR143"
label var PRDAY144                 "Number of days from admission to I10_PR144"
label var PRDAY145                 "Number of days from admission to I10_PR145"
label var PRDAY146                 "Number of days from admission to I10_PR146"
label var PRDAY147                 "Number of days from admission to I10_PR147"
label var PRDAY148                 "Number of days from admission to I10_PR148"
label var PRDAY149                 "Number of days from admission to I10_PR149"
label var PRDAY150                 "Number of days from admission to I10_PR150"
label var PRDAY151                 "Number of days from admission to I10_PR151"
label var PRDAY152                 "Number of days from admission to I10_PR152"
label var PRDAY153                 "Number of days from admission to I10_PR153"
label var PRDAY154                 "Number of days from admission to I10_PR154"
label var PRDAY155                 "Number of days from admission to I10_PR155"
label var PRDAY156                 "Number of days from admission to I10_PR156"
label var PRDAY157                 "Number of days from admission to I10_PR157"
label var PRDAY158                 "Number of days from admission to I10_PR158"
label var PRDAY159                 "Number of days from admission to I10_PR159"
label var PRDAY160                 "Number of days from admission to I10_PR160"
label var PRDAY161                 "Number of days from admission to I10_PR161"
label var PRDAY162                 "Number of days from admission to I10_PR162"
label var PRDAY163                 "Number of days from admission to I10_PR163"
label var PRDAY164                 "Number of days from admission to I10_PR164"
label var PRDAY165                 "Number of days from admission to I10_PR165"
label var PRDAY166                 "Number of days from admission to I10_PR166"
label var PRDAY167                 "Number of days from admission to I10_PR167"
label var PRDAY168                 "Number of days from admission to I10_PR168"
label var PRDAY169                 "Number of days from admission to I10_PR169"
label var PRDAY170                 "Number of days from admission to I10_PR170"
label var PRDAY171                 "Number of days from admission to I10_PR171"
label var PRDAY172                 "Number of days from admission to I10_PR172"
label var PRDAY173                 "Number of days from admission to I10_PR173"
label var PRDAY174                 "Number of days from admission to I10_PR174"
label var PRDAY175                 "Number of days from admission to I10_PR175"
label var PRDAY176                 "Number of days from admission to I10_PR176"
label var PRDAY177                 "Number of days from admission to I10_PR177"
label var PRDAY178                 "Number of days from admission to I10_PR178"
label var PRDAY179                 "Number of days from admission to I10_PR179"
label var PRDAY180                 "Number of days from admission to I10_PR180"
label var PRDAY181                 "Number of days from admission to I10_PR181"
label var PRDAY182                 "Number of days from admission to I10_PR182"
label var PRDAY183                 "Number of days from admission to I10_PR183"
label var PRDAY184                 "Number of days from admission to I10_PR184"
label var PRDAY185                 "Number of days from admission to I10_PR185"
label var PRDAY186                 "Number of days from admission to I10_PR186"
label var PRDAY187                 "Number of days from admission to I10_PR187"
label var PRDAY188                 "Number of days from admission to I10_PR188"
label var PRDAY189                 "Number of days from admission to I10_PR189"
label var PRDAY190                 "Number of days from admission to I10_PR190"
label var PRDAY191                 "Number of days from admission to I10_PR191"
label var PRDAY192                 "Number of days from admission to I10_PR192"
label var PRDAY193                 "Number of days from admission to I10_PR193"
label var PRDAY194                 "Number of days from admission to I10_PR194"
label var PRDAY195                 "Number of days from admission to I10_PR195"
label var PRDAY196                 "Number of days from admission to I10_PR196"
label var PRDAY197                 "Number of days from admission to I10_PR197"
label var PRDAY198                 "Number of days from admission to I10_PR198"
label var PRDAY199                 "Number of days from admission to I10_PR199"
label var PRDAY200                 "Number of days from admission to I10_PR200"
label var PrimLang                 "Primary language of patient"
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
label var RACE                     "Race (uniform)"
label var RACE_PCT_MISS_HOSP       "Hospital percentage of missing or invalid race values"
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
label var PRMONTH36                "Month of procedure 36"
label var PRMONTH37                "Month of procedure 37"
label var PRMONTH38                "Month of procedure 38"
label var PRMONTH39                "Month of procedure 39"
label var PRMONTH40                "Month of procedure 40"
label var PRMONTH41                "Month of procedure 41"
label var PRMONTH42                "Month of procedure 42"
label var PRMONTH43                "Month of procedure 43"
label var PRMONTH44                "Month of procedure 44"
label var PRMONTH45                "Month of procedure 45"
label var PRMONTH46                "Month of procedure 46"
label var PRMONTH47                "Month of procedure 47"
label var PRMONTH48                "Month of procedure 48"
label var PRMONTH49                "Month of procedure 49"
label var PRMONTH50                "Month of procedure 50"
label var PRMONTH51                "Month of procedure 51"
label var PRMONTH52                "Month of procedure 52"
label var PRMONTH53                "Month of procedure 53"
label var PRMONTH54                "Month of procedure 54"
label var PRMONTH55                "Month of procedure 55"
label var PRMONTH56                "Month of procedure 56"
label var PRMONTH57                "Month of procedure 57"
label var PRMONTH58                "Month of procedure 58"
label var PRMONTH59                "Month of procedure 59"
label var PRMONTH60                "Month of procedure 60"
label var PRMONTH61                "Month of procedure 61"
label var PRMONTH62                "Month of procedure 62"
label var PRMONTH63                "Month of procedure 63"
label var PRMONTH64                "Month of procedure 64"
label var PRMONTH65                "Month of procedure 65"
label var PRMONTH66                "Month of procedure 66"
label var PRMONTH67                "Month of procedure 67"
label var PRMONTH68                "Month of procedure 68"
label var PRMONTH69                "Month of procedure 69"
label var PRMONTH70                "Month of procedure 70"
label var PRMONTH71                "Month of procedure 71"
label var PRMONTH72                "Month of procedure 72"
label var PRMONTH73                "Month of procedure 73"
label var PRMONTH74                "Month of procedure 74"
label var PRMONTH75                "Month of procedure 75"
label var PRMONTH76                "Month of procedure 76"
label var PRMONTH77                "Month of procedure 77"
label var PRMONTH78                "Month of procedure 78"
label var PRMONTH79                "Month of procedure 79"
label var PRMONTH80                "Month of procedure 80"
label var PRMONTH81                "Month of procedure 81"
label var PRMONTH82                "Month of procedure 82"
label var PRMONTH83                "Month of procedure 83"
label var PRMONTH84                "Month of procedure 84"
label var PRMONTH85                "Month of procedure 85"
label var PRMONTH86                "Month of procedure 86"
label var PRMONTH87                "Month of procedure 87"
label var PRMONTH88                "Month of procedure 88"
label var PRMONTH89                "Month of procedure 89"
label var PRMONTH90                "Month of procedure 90"
label var PRMONTH91                "Month of procedure 91"
label var PRMONTH92                "Month of procedure 92"
label var PRMONTH93                "Month of procedure 93"
label var PRMONTH94                "Month of procedure 94"
label var PRMONTH95                "Month of procedure 95"
label var PRMONTH96                "Month of procedure 96"
label var PRMONTH97                "Month of procedure 97"
label var PRMONTH98                "Month of procedure 98"
label var PRMONTH99                "Month of procedure 99"
label var PRMONTH100               "Month of procedure 100"
label var PRMONTH101               "Month of procedure 101"
label var PRMONTH102               "Month of procedure 102"
label var PRMONTH103               "Month of procedure 103"
label var PRMONTH104               "Month of procedure 104"
label var PRMONTH105               "Month of procedure 105"
label var PRMONTH106               "Month of procedure 106"
label var PRMONTH107               "Month of procedure 107"
label var PRMONTH108               "Month of procedure 108"
label var PRMONTH109               "Month of procedure 109"
label var PRMONTH110               "Month of procedure 110"
label var PRMONTH111               "Month of procedure 111"
label var PRMONTH112               "Month of procedure 112"
label var PRMONTH113               "Month of procedure 113"
label var PRMONTH114               "Month of procedure 114"
label var PRMONTH115               "Month of procedure 115"
label var PRMONTH116               "Month of procedure 116"
label var PRMONTH117               "Month of procedure 117"
label var PRMONTH118               "Month of procedure 118"
label var PRMONTH119               "Month of procedure 119"
label var PRMONTH120               "Month of procedure 120"
label var PRMONTH121               "Month of procedure 121"
label var PRMONTH122               "Month of procedure 122"
label var PRMONTH123               "Month of procedure 123"
label var PRMONTH124               "Month of procedure 124"
label var PRMONTH125               "Month of procedure 125"
label var PRMONTH126               "Month of procedure 126"
label var PRMONTH127               "Month of procedure 127"
label var PRMONTH128               "Month of procedure 128"
label var PRMONTH129               "Month of procedure 129"
label var PRMONTH130               "Month of procedure 130"
label var PRMONTH131               "Month of procedure 131"
label var PRMONTH132               "Month of procedure 132"
label var PRMONTH133               "Month of procedure 133"
label var PRMONTH134               "Month of procedure 134"
label var PRMONTH135               "Month of procedure 135"
label var PRMONTH136               "Month of procedure 136"
label var PRMONTH137               "Month of procedure 137"
label var PRMONTH138               "Month of procedure 138"
label var PRMONTH139               "Month of procedure 139"
label var PRMONTH140               "Month of procedure 140"
label var PRMONTH141               "Month of procedure 141"
label var PRMONTH142               "Month of procedure 142"
label var PRMONTH143               "Month of procedure 143"
label var PRMONTH144               "Month of procedure 144"
label var PRMONTH145               "Month of procedure 145"
label var PRMONTH146               "Month of procedure 146"
label var PRMONTH147               "Month of procedure 147"
label var PRMONTH148               "Month of procedure 148"
label var PRMONTH149               "Month of procedure 149"
label var PRMONTH150               "Month of procedure 150"
label var PRMONTH151               "Month of procedure 151"
label var PRMONTH152               "Month of procedure 152"
label var PRMONTH153               "Month of procedure 153"
label var PRMONTH154               "Month of procedure 154"
label var PRMONTH155               "Month of procedure 155"
label var PRMONTH156               "Month of procedure 156"
label var PRMONTH157               "Month of procedure 157"
label var PRMONTH158               "Month of procedure 158"
label var PRMONTH159               "Month of procedure 159"
label var PRMONTH160               "Month of procedure 160"
label var PRMONTH161               "Month of procedure 161"
label var PRMONTH162               "Month of procedure 162"
label var PRMONTH163               "Month of procedure 163"
label var PRMONTH164               "Month of procedure 164"
label var PRMONTH165               "Month of procedure 165"
label var PRMONTH166               "Month of procedure 166"
label var PRMONTH167               "Month of procedure 167"
label var PRMONTH168               "Month of procedure 168"
label var PRMONTH169               "Month of procedure 169"
label var PRMONTH170               "Month of procedure 170"
label var PRMONTH171               "Month of procedure 171"
label var PRMONTH172               "Month of procedure 172"
label var PRMONTH173               "Month of procedure 173"
label var PRMONTH174               "Month of procedure 174"
label var PRMONTH175               "Month of procedure 175"
label var PRMONTH176               "Month of procedure 176"
label var PRMONTH177               "Month of procedure 177"
label var PRMONTH178               "Month of procedure 178"
label var PRMONTH179               "Month of procedure 179"
label var PRMONTH180               "Month of procedure 180"
label var PRMONTH181               "Month of procedure 181"
label var PRMONTH182               "Month of procedure 182"
label var PRMONTH183               "Month of procedure 183"
label var PRMONTH184               "Month of procedure 184"
label var PRMONTH185               "Month of procedure 185"
label var PRMONTH186               "Month of procedure 186"
label var PRMONTH187               "Month of procedure 187"
label var PRMONTH188               "Month of procedure 188"
label var PRMONTH189               "Month of procedure 189"
label var PRMONTH190               "Month of procedure 190"
label var PRMONTH191               "Month of procedure 191"
label var PRMONTH192               "Month of procedure 192"
label var PRMONTH193               "Month of procedure 193"
label var PRMONTH194               "Month of procedure 194"
label var PRMONTH195               "Month of procedure 195"
label var PRMONTH196               "Month of procedure 196"
label var PRMONTH197               "Month of procedure 197"
label var PRMONTH198               "Month of procedure 198"
label var PRMONTH199               "Month of procedure 199"
label var PRMONTH200               "Month of procedure 200"
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
label var PRYEAR36                 "Year of procedure 36"
label var PRYEAR37                 "Year of procedure 37"
label var PRYEAR38                 "Year of procedure 38"
label var PRYEAR39                 "Year of procedure 39"
label var PRYEAR40                 "Year of procedure 40"
label var PRYEAR41                 "Year of procedure 41"
label var PRYEAR42                 "Year of procedure 42"
label var PRYEAR43                 "Year of procedure 43"
label var PRYEAR44                 "Year of procedure 44"
label var PRYEAR45                 "Year of procedure 45"
label var PRYEAR46                 "Year of procedure 46"
label var PRYEAR47                 "Year of procedure 47"
label var PRYEAR48                 "Year of procedure 48"
label var PRYEAR49                 "Year of procedure 49"
label var PRYEAR50                 "Year of procedure 50"
label var PRYEAR51                 "Year of procedure 51"
label var PRYEAR52                 "Year of procedure 52"
label var PRYEAR53                 "Year of procedure 53"
label var PRYEAR54                 "Year of procedure 54"
label var PRYEAR55                 "Year of procedure 55"
label var PRYEAR56                 "Year of procedure 56"
label var PRYEAR57                 "Year of procedure 57"
label var PRYEAR58                 "Year of procedure 58"
label var PRYEAR59                 "Year of procedure 59"
label var PRYEAR60                 "Year of procedure 60"
label var PRYEAR61                 "Year of procedure 61"
label var PRYEAR62                 "Year of procedure 62"
label var PRYEAR63                 "Year of procedure 63"
label var PRYEAR64                 "Year of procedure 64"
label var PRYEAR65                 "Year of procedure 65"
label var PRYEAR66                 "Year of procedure 66"
label var PRYEAR67                 "Year of procedure 67"
label var PRYEAR68                 "Year of procedure 68"
label var PRYEAR69                 "Year of procedure 69"
label var PRYEAR70                 "Year of procedure 70"
label var PRYEAR71                 "Year of procedure 71"
label var PRYEAR72                 "Year of procedure 72"
label var PRYEAR73                 "Year of procedure 73"
label var PRYEAR74                 "Year of procedure 74"
label var PRYEAR75                 "Year of procedure 75"
label var PRYEAR76                 "Year of procedure 76"
label var PRYEAR77                 "Year of procedure 77"
label var PRYEAR78                 "Year of procedure 78"
label var PRYEAR79                 "Year of procedure 79"
label var PRYEAR80                 "Year of procedure 80"
label var PRYEAR81                 "Year of procedure 81"
label var PRYEAR82                 "Year of procedure 82"
label var PRYEAR83                 "Year of procedure 83"
label var PRYEAR84                 "Year of procedure 84"
label var PRYEAR85                 "Year of procedure 85"
label var PRYEAR86                 "Year of procedure 86"
label var PRYEAR87                 "Year of procedure 87"
label var PRYEAR88                 "Year of procedure 88"
label var PRYEAR89                 "Year of procedure 89"
label var PRYEAR90                 "Year of procedure 90"
label var PRYEAR91                 "Year of procedure 91"
label var PRYEAR92                 "Year of procedure 92"
label var PRYEAR93                 "Year of procedure 93"
label var PRYEAR94                 "Year of procedure 94"
label var PRYEAR95                 "Year of procedure 95"
label var PRYEAR96                 "Year of procedure 96"
label var PRYEAR97                 "Year of procedure 97"
label var PRYEAR98                 "Year of procedure 98"
label var PRYEAR99                 "Year of procedure 99"
label var PRYEAR100                "Year of procedure 100"
label var PRYEAR101                "Year of procedure 101"
label var PRYEAR102                "Year of procedure 102"
label var PRYEAR103                "Year of procedure 103"
label var PRYEAR104                "Year of procedure 104"
label var PRYEAR105                "Year of procedure 105"
label var PRYEAR106                "Year of procedure 106"
label var PRYEAR107                "Year of procedure 107"
label var PRYEAR108                "Year of procedure 108"
label var PRYEAR109                "Year of procedure 109"
label var PRYEAR110                "Year of procedure 110"
label var PRYEAR111                "Year of procedure 111"
label var PRYEAR112                "Year of procedure 112"
label var PRYEAR113                "Year of procedure 113"
label var PRYEAR114                "Year of procedure 114"
label var PRYEAR115                "Year of procedure 115"
label var PRYEAR116                "Year of procedure 116"
label var PRYEAR117                "Year of procedure 117"
label var PRYEAR118                "Year of procedure 118"
label var PRYEAR119                "Year of procedure 119"
label var PRYEAR120                "Year of procedure 120"
label var PRYEAR121                "Year of procedure 121"
label var PRYEAR122                "Year of procedure 122"
label var PRYEAR123                "Year of procedure 123"
label var PRYEAR124                "Year of procedure 124"
label var PRYEAR125                "Year of procedure 125"
label var PRYEAR126                "Year of procedure 126"
label var PRYEAR127                "Year of procedure 127"
label var PRYEAR128                "Year of procedure 128"
label var PRYEAR129                "Year of procedure 129"
label var PRYEAR130                "Year of procedure 130"
label var PRYEAR131                "Year of procedure 131"
label var PRYEAR132                "Year of procedure 132"
label var PRYEAR133                "Year of procedure 133"
label var PRYEAR134                "Year of procedure 134"
label var PRYEAR135                "Year of procedure 135"
label var PRYEAR136                "Year of procedure 136"
label var PRYEAR137                "Year of procedure 137"
label var PRYEAR138                "Year of procedure 138"
label var PRYEAR139                "Year of procedure 139"
label var PRYEAR140                "Year of procedure 140"
label var PRYEAR141                "Year of procedure 141"
label var PRYEAR142                "Year of procedure 142"
label var PRYEAR143                "Year of procedure 143"
label var PRYEAR144                "Year of procedure 144"
label var PRYEAR145                "Year of procedure 145"
label var PRYEAR146                "Year of procedure 146"
label var PRYEAR147                "Year of procedure 147"
label var PRYEAR148                "Year of procedure 148"
label var PRYEAR149                "Year of procedure 149"
label var PRYEAR150                "Year of procedure 150"
label var PRYEAR151                "Year of procedure 151"
label var PRYEAR152                "Year of procedure 152"
label var PRYEAR153                "Year of procedure 153"
label var PRYEAR154                "Year of procedure 154"
label var PRYEAR155                "Year of procedure 155"
label var PRYEAR156                "Year of procedure 156"
label var PRYEAR157                "Year of procedure 157"
label var PRYEAR158                "Year of procedure 158"
label var PRYEAR159                "Year of procedure 159"
label var PRYEAR160                "Year of procedure 160"
label var PRYEAR161                "Year of procedure 161"
label var PRYEAR162                "Year of procedure 162"
label var PRYEAR163                "Year of procedure 163"
label var PRYEAR164                "Year of procedure 164"
label var PRYEAR165                "Year of procedure 165"
label var PRYEAR166                "Year of procedure 166"
label var PRYEAR167                "Year of procedure 167"
label var PRYEAR168                "Year of procedure 168"
label var PRYEAR169                "Year of procedure 169"
label var PRYEAR170                "Year of procedure 170"
label var PRYEAR171                "Year of procedure 171"
label var PRYEAR172                "Year of procedure 172"
label var PRYEAR173                "Year of procedure 173"
label var PRYEAR174                "Year of procedure 174"
label var PRYEAR175                "Year of procedure 175"
label var PRYEAR176                "Year of procedure 176"
label var PRYEAR177                "Year of procedure 177"
label var PRYEAR178                "Year of procedure 178"
label var PRYEAR179                "Year of procedure 179"
label var PRYEAR180                "Year of procedure 180"
label var PRYEAR181                "Year of procedure 181"
label var PRYEAR182                "Year of procedure 182"
label var PRYEAR183                "Year of procedure 183"
label var PRYEAR184                "Year of procedure 184"
label var PRYEAR185                "Year of procedure 185"
label var PRYEAR186                "Year of procedure 186"
label var PRYEAR187                "Year of procedure 187"
label var PRYEAR188                "Year of procedure 188"
label var PRYEAR189                "Year of procedure 189"
label var PRYEAR190                "Year of procedure 190"
label var PRYEAR191                "Year of procedure 191"
label var PRYEAR192                "Year of procedure 192"
label var PRYEAR193                "Year of procedure 193"
label var PRYEAR194                "Year of procedure 194"
label var PRYEAR195                "Year of procedure 195"
label var PRYEAR196                "Year of procedure 196"
label var PRYEAR197                "Year of procedure 197"
label var PRYEAR198                "Year of procedure 198"
label var PRYEAR199                "Year of procedure 199"
label var PRYEAR200                "Year of procedure 200"

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
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
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
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM4_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
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
recode PRDAY64                   (-9999 -8888 -6666=.)
recode PRDAY65                   (-9999 -8888 -6666=.)
recode PRDAY66                   (-9999 -8888 -6666=.)
recode PRDAY67                   (-9999 -8888 -6666=.)
recode PRDAY68                   (-9999 -8888 -6666=.)
recode PRDAY69                   (-9999 -8888 -6666=.)
recode PRDAY70                   (-9999 -8888 -6666=.)
recode PRDAY71                   (-9999 -8888 -6666=.)
recode PRDAY72                   (-9999 -8888 -6666=.)
recode PRDAY73                   (-9999 -8888 -6666=.)
recode PRDAY74                   (-9999 -8888 -6666=.)
recode PRDAY75                   (-9999 -8888 -6666=.)
recode PRDAY76                   (-9999 -8888 -6666=.)
recode PRDAY77                   (-9999 -8888 -6666=.)
recode PRDAY78                   (-9999 -8888 -6666=.)
recode PRDAY79                   (-9999 -8888 -6666=.)
recode PRDAY80                   (-9999 -8888 -6666=.)
recode PRDAY81                   (-9999 -8888 -6666=.)
recode PRDAY82                   (-9999 -8888 -6666=.)
recode PRDAY83                   (-9999 -8888 -6666=.)
recode PRDAY84                   (-9999 -8888 -6666=.)
recode PRDAY85                   (-9999 -8888 -6666=.)
recode PRDAY86                   (-9999 -8888 -6666=.)
recode PRDAY87                   (-9999 -8888 -6666=.)
recode PRDAY88                   (-9999 -8888 -6666=.)
recode PRDAY89                   (-9999 -8888 -6666=.)
recode PRDAY90                   (-9999 -8888 -6666=.)
recode PRDAY91                   (-9999 -8888 -6666=.)
recode PRDAY92                   (-9999 -8888 -6666=.)
recode PRDAY93                   (-9999 -8888 -6666=.)
recode PRDAY94                   (-9999 -8888 -6666=.)
recode PRDAY95                   (-9999 -8888 -6666=.)
recode PRDAY96                   (-9999 -8888 -6666=.)
recode PRDAY97                   (-9999 -8888 -6666=.)
recode PRDAY98                   (-9999 -8888 -6666=.)
recode PRDAY99                   (-9999 -8888 -6666=.)
recode PRDAY100                  (-9999 -8888 -6666=.)
recode PRDAY101                  (-9999 -8888 -6666=.)
recode PRDAY102                  (-9999 -8888 -6666=.)
recode PRDAY103                  (-9999 -8888 -6666=.)
recode PRDAY104                  (-9999 -8888 -6666=.)
recode PRDAY105                  (-9999 -8888 -6666=.)
recode PRDAY106                  (-9999 -8888 -6666=.)
recode PRDAY107                  (-9999 -8888 -6666=.)
recode PRDAY108                  (-9999 -8888 -6666=.)
recode PRDAY109                  (-9999 -8888 -6666=.)
recode PRDAY110                  (-9999 -8888 -6666=.)
recode PRDAY111                  (-9999 -8888 -6666=.)
recode PRDAY112                  (-9999 -8888 -6666=.)
recode PRDAY113                  (-9999 -8888 -6666=.)
recode PRDAY114                  (-9999 -8888 -6666=.)
recode PRDAY115                  (-9999 -8888 -6666=.)
recode PRDAY116                  (-9999 -8888 -6666=.)
recode PRDAY117                  (-9999 -8888 -6666=.)
recode PRDAY118                  (-9999 -8888 -6666=.)
recode PRDAY119                  (-9999 -8888 -6666=.)
recode PRDAY120                  (-9999 -8888 -6666=.)
recode PRDAY121                  (-9999 -8888 -6666=.)
recode PRDAY122                  (-9999 -8888 -6666=.)
recode PRDAY123                  (-9999 -8888 -6666=.)
recode PRDAY124                  (-9999 -8888 -6666=.)
recode PRDAY125                  (-9999 -8888 -6666=.)
recode PRDAY126                  (-9999 -8888 -6666=.)
recode PRDAY127                  (-9999 -8888 -6666=.)
recode PRDAY128                  (-9999 -8888 -6666=.)
recode PRDAY129                  (-9999 -8888 -6666=.)
recode PRDAY130                  (-9999 -8888 -6666=.)
recode PRDAY131                  (-9999 -8888 -6666=.)
recode PRDAY132                  (-9999 -8888 -6666=.)
recode PRDAY133                  (-9999 -8888 -6666=.)
recode PRDAY134                  (-9999 -8888 -6666=.)
recode PRDAY135                  (-9999 -8888 -6666=.)
recode PRDAY136                  (-9999 -8888 -6666=.)
recode PRDAY137                  (-9999 -8888 -6666=.)
recode PRDAY138                  (-9999 -8888 -6666=.)
recode PRDAY139                  (-9999 -8888 -6666=.)
recode PRDAY140                  (-9999 -8888 -6666=.)
recode PRDAY141                  (-9999 -8888 -6666=.)
recode PRDAY142                  (-9999 -8888 -6666=.)
recode PRDAY143                  (-9999 -8888 -6666=.)
recode PRDAY144                  (-9999 -8888 -6666=.)
recode PRDAY145                  (-9999 -8888 -6666=.)
recode PRDAY146                  (-9999 -8888 -6666=.)
recode PRDAY147                  (-9999 -8888 -6666=.)
recode PRDAY148                  (-9999 -8888 -6666=.)
recode PRDAY149                  (-9999 -8888 -6666=.)
recode PRDAY150                  (-9999 -8888 -6666=.)
recode PRDAY151                  (-9999 -8888 -6666=.)
recode PRDAY152                  (-9999 -8888 -6666=.)
recode PRDAY153                  (-9999 -8888 -6666=.)
recode PRDAY154                  (-9999 -8888 -6666=.)
recode PRDAY155                  (-9999 -8888 -6666=.)
recode PRDAY156                  (-9999 -8888 -6666=.)
recode PRDAY157                  (-9999 -8888 -6666=.)
recode PRDAY158                  (-9999 -8888 -6666=.)
recode PRDAY159                  (-9999 -8888 -6666=.)
recode PRDAY160                  (-9999 -8888 -6666=.)
recode PRDAY161                  (-9999 -8888 -6666=.)
recode PRDAY162                  (-9999 -8888 -6666=.)
recode PRDAY163                  (-9999 -8888 -6666=.)
recode PRDAY164                  (-9999 -8888 -6666=.)
recode PRDAY165                  (-9999 -8888 -6666=.)
recode PRDAY166                  (-9999 -8888 -6666=.)
recode PRDAY167                  (-9999 -8888 -6666=.)
recode PRDAY168                  (-9999 -8888 -6666=.)
recode PRDAY169                  (-9999 -8888 -6666=.)
recode PRDAY170                  (-9999 -8888 -6666=.)
recode PRDAY171                  (-9999 -8888 -6666=.)
recode PRDAY172                  (-9999 -8888 -6666=.)
recode PRDAY173                  (-9999 -8888 -6666=.)
recode PRDAY174                  (-9999 -8888 -6666=.)
recode PRDAY175                  (-9999 -8888 -6666=.)
recode PRDAY176                  (-9999 -8888 -6666=.)
recode PRDAY177                  (-9999 -8888 -6666=.)
recode PRDAY178                  (-9999 -8888 -6666=.)
recode PRDAY179                  (-9999 -8888 -6666=.)
recode PRDAY180                  (-9999 -8888 -6666=.)
recode PRDAY181                  (-9999 -8888 -6666=.)
recode PRDAY182                  (-9999 -8888 -6666=.)
recode PRDAY183                  (-9999 -8888 -6666=.)
recode PRDAY184                  (-9999 -8888 -6666=.)
recode PRDAY185                  (-9999 -8888 -6666=.)
recode PRDAY186                  (-9999 -8888 -6666=.)
recode PRDAY187                  (-9999 -8888 -6666=.)
recode PRDAY188                  (-9999 -8888 -6666=.)
recode PRDAY189                  (-9999 -8888 -6666=.)
recode PRDAY190                  (-9999 -8888 -6666=.)
recode PRDAY191                  (-9999 -8888 -6666=.)
recode PRDAY192                  (-9999 -8888 -6666=.)
recode PRDAY193                  (-9999 -8888 -6666=.)
recode PRDAY194                  (-9999 -8888 -6666=.)
recode PRDAY195                  (-9999 -8888 -6666=.)
recode PRDAY196                  (-9999 -8888 -6666=.)
recode PRDAY197                  (-9999 -8888 -6666=.)
recode PRDAY198                  (-9999 -8888 -6666=.)
recode PRDAY199                  (-9999 -8888 -6666=.)
recode PRDAY200                  (-9999 -8888 -6666=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_PCT_MISS_HOSP        (-999.99 -888.88 -666.66=.)
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
recode PRMONTH36                 (-9 -8 -6 -5=.)
recode PRMONTH37                 (-9 -8 -6 -5=.)
recode PRMONTH38                 (-9 -8 -6 -5=.)
recode PRMONTH39                 (-9 -8 -6 -5=.)
recode PRMONTH40                 (-9 -8 -6 -5=.)
recode PRMONTH41                 (-9 -8 -6 -5=.)
recode PRMONTH42                 (-9 -8 -6 -5=.)
recode PRMONTH43                 (-9 -8 -6 -5=.)
recode PRMONTH44                 (-9 -8 -6 -5=.)
recode PRMONTH45                 (-9 -8 -6 -5=.)
recode PRMONTH46                 (-9 -8 -6 -5=.)
recode PRMONTH47                 (-9 -8 -6 -5=.)
recode PRMONTH48                 (-9 -8 -6 -5=.)
recode PRMONTH49                 (-9 -8 -6 -5=.)
recode PRMONTH50                 (-9 -8 -6 -5=.)
recode PRMONTH51                 (-9 -8 -6 -5=.)
recode PRMONTH52                 (-9 -8 -6 -5=.)
recode PRMONTH53                 (-9 -8 -6 -5=.)
recode PRMONTH54                 (-9 -8 -6 -5=.)
recode PRMONTH55                 (-9 -8 -6 -5=.)
recode PRMONTH56                 (-9 -8 -6 -5=.)
recode PRMONTH57                 (-9 -8 -6 -5=.)
recode PRMONTH58                 (-9 -8 -6 -5=.)
recode PRMONTH59                 (-9 -8 -6 -5=.)
recode PRMONTH60                 (-9 -8 -6 -5=.)
recode PRMONTH61                 (-9 -8 -6 -5=.)
recode PRMONTH62                 (-9 -8 -6 -5=.)
recode PRMONTH63                 (-9 -8 -6 -5=.)
recode PRMONTH64                 (-9 -8 -6 -5=.)
recode PRMONTH65                 (-9 -8 -6 -5=.)
recode PRMONTH66                 (-9 -8 -6 -5=.)
recode PRMONTH67                 (-9 -8 -6 -5=.)
recode PRMONTH68                 (-9 -8 -6 -5=.)
recode PRMONTH69                 (-9 -8 -6 -5=.)
recode PRMONTH70                 (-9 -8 -6 -5=.)
recode PRMONTH71                 (-9 -8 -6 -5=.)
recode PRMONTH72                 (-9 -8 -6 -5=.)
recode PRMONTH73                 (-9 -8 -6 -5=.)
recode PRMONTH74                 (-9 -8 -6 -5=.)
recode PRMONTH75                 (-9 -8 -6 -5=.)
recode PRMONTH76                 (-9 -8 -6 -5=.)
recode PRMONTH77                 (-9 -8 -6 -5=.)
recode PRMONTH78                 (-9 -8 -6 -5=.)
recode PRMONTH79                 (-9 -8 -6 -5=.)
recode PRMONTH80                 (-9 -8 -6 -5=.)
recode PRMONTH81                 (-9 -8 -6 -5=.)
recode PRMONTH82                 (-9 -8 -6 -5=.)
recode PRMONTH83                 (-9 -8 -6 -5=.)
recode PRMONTH84                 (-9 -8 -6 -5=.)
recode PRMONTH85                 (-9 -8 -6 -5=.)
recode PRMONTH86                 (-9 -8 -6 -5=.)
recode PRMONTH87                 (-9 -8 -6 -5=.)
recode PRMONTH88                 (-9 -8 -6 -5=.)
recode PRMONTH89                 (-9 -8 -6 -5=.)
recode PRMONTH90                 (-9 -8 -6 -5=.)
recode PRMONTH91                 (-9 -8 -6 -5=.)
recode PRMONTH92                 (-9 -8 -6 -5=.)
recode PRMONTH93                 (-9 -8 -6 -5=.)
recode PRMONTH94                 (-9 -8 -6 -5=.)
recode PRMONTH95                 (-9 -8 -6 -5=.)
recode PRMONTH96                 (-9 -8 -6 -5=.)
recode PRMONTH97                 (-9 -8 -6 -5=.)
recode PRMONTH98                 (-9 -8 -6 -5=.)
recode PRMONTH99                 (-9 -8 -6 -5=.)
recode PRMONTH100                (-9 -8 -6 -5=.)
recode PRMONTH101                (-9 -8 -6 -5=.)
recode PRMONTH102                (-9 -8 -6 -5=.)
recode PRMONTH103                (-9 -8 -6 -5=.)
recode PRMONTH104                (-9 -8 -6 -5=.)
recode PRMONTH105                (-9 -8 -6 -5=.)
recode PRMONTH106                (-9 -8 -6 -5=.)
recode PRMONTH107                (-9 -8 -6 -5=.)
recode PRMONTH108                (-9 -8 -6 -5=.)
recode PRMONTH109                (-9 -8 -6 -5=.)
recode PRMONTH110                (-9 -8 -6 -5=.)
recode PRMONTH111                (-9 -8 -6 -5=.)
recode PRMONTH112                (-9 -8 -6 -5=.)
recode PRMONTH113                (-9 -8 -6 -5=.)
recode PRMONTH114                (-9 -8 -6 -5=.)
recode PRMONTH115                (-9 -8 -6 -5=.)
recode PRMONTH116                (-9 -8 -6 -5=.)
recode PRMONTH117                (-9 -8 -6 -5=.)
recode PRMONTH118                (-9 -8 -6 -5=.)
recode PRMONTH119                (-9 -8 -6 -5=.)
recode PRMONTH120                (-9 -8 -6 -5=.)
recode PRMONTH121                (-9 -8 -6 -5=.)
recode PRMONTH122                (-9 -8 -6 -5=.)
recode PRMONTH123                (-9 -8 -6 -5=.)
recode PRMONTH124                (-9 -8 -6 -5=.)
recode PRMONTH125                (-9 -8 -6 -5=.)
recode PRMONTH126                (-9 -8 -6 -5=.)
recode PRMONTH127                (-9 -8 -6 -5=.)
recode PRMONTH128                (-9 -8 -6 -5=.)
recode PRMONTH129                (-9 -8 -6 -5=.)
recode PRMONTH130                (-9 -8 -6 -5=.)
recode PRMONTH131                (-9 -8 -6 -5=.)
recode PRMONTH132                (-9 -8 -6 -5=.)
recode PRMONTH133                (-9 -8 -6 -5=.)
recode PRMONTH134                (-9 -8 -6 -5=.)
recode PRMONTH135                (-9 -8 -6 -5=.)
recode PRMONTH136                (-9 -8 -6 -5=.)
recode PRMONTH137                (-9 -8 -6 -5=.)
recode PRMONTH138                (-9 -8 -6 -5=.)
recode PRMONTH139                (-9 -8 -6 -5=.)
recode PRMONTH140                (-9 -8 -6 -5=.)
recode PRMONTH141                (-9 -8 -6 -5=.)
recode PRMONTH142                (-9 -8 -6 -5=.)
recode PRMONTH143                (-9 -8 -6 -5=.)
recode PRMONTH144                (-9 -8 -6 -5=.)
recode PRMONTH145                (-9 -8 -6 -5=.)
recode PRMONTH146                (-9 -8 -6 -5=.)
recode PRMONTH147                (-9 -8 -6 -5=.)
recode PRMONTH148                (-9 -8 -6 -5=.)
recode PRMONTH149                (-9 -8 -6 -5=.)
recode PRMONTH150                (-9 -8 -6 -5=.)
recode PRMONTH151                (-9 -8 -6 -5=.)
recode PRMONTH152                (-9 -8 -6 -5=.)
recode PRMONTH153                (-9 -8 -6 -5=.)
recode PRMONTH154                (-9 -8 -6 -5=.)
recode PRMONTH155                (-9 -8 -6 -5=.)
recode PRMONTH156                (-9 -8 -6 -5=.)
recode PRMONTH157                (-9 -8 -6 -5=.)
recode PRMONTH158                (-9 -8 -6 -5=.)
recode PRMONTH159                (-9 -8 -6 -5=.)
recode PRMONTH160                (-9 -8 -6 -5=.)
recode PRMONTH161                (-9 -8 -6 -5=.)
recode PRMONTH162                (-9 -8 -6 -5=.)
recode PRMONTH163                (-9 -8 -6 -5=.)
recode PRMONTH164                (-9 -8 -6 -5=.)
recode PRMONTH165                (-9 -8 -6 -5=.)
recode PRMONTH166                (-9 -8 -6 -5=.)
recode PRMONTH167                (-9 -8 -6 -5=.)
recode PRMONTH168                (-9 -8 -6 -5=.)
recode PRMONTH169                (-9 -8 -6 -5=.)
recode PRMONTH170                (-9 -8 -6 -5=.)
recode PRMONTH171                (-9 -8 -6 -5=.)
recode PRMONTH172                (-9 -8 -6 -5=.)
recode PRMONTH173                (-9 -8 -6 -5=.)
recode PRMONTH174                (-9 -8 -6 -5=.)
recode PRMONTH175                (-9 -8 -6 -5=.)
recode PRMONTH176                (-9 -8 -6 -5=.)
recode PRMONTH177                (-9 -8 -6 -5=.)
recode PRMONTH178                (-9 -8 -6 -5=.)
recode PRMONTH179                (-9 -8 -6 -5=.)
recode PRMONTH180                (-9 -8 -6 -5=.)
recode PRMONTH181                (-9 -8 -6 -5=.)
recode PRMONTH182                (-9 -8 -6 -5=.)
recode PRMONTH183                (-9 -8 -6 -5=.)
recode PRMONTH184                (-9 -8 -6 -5=.)
recode PRMONTH185                (-9 -8 -6 -5=.)
recode PRMONTH186                (-9 -8 -6 -5=.)
recode PRMONTH187                (-9 -8 -6 -5=.)
recode PRMONTH188                (-9 -8 -6 -5=.)
recode PRMONTH189                (-9 -8 -6 -5=.)
recode PRMONTH190                (-9 -8 -6 -5=.)
recode PRMONTH191                (-9 -8 -6 -5=.)
recode PRMONTH192                (-9 -8 -6 -5=.)
recode PRMONTH193                (-9 -8 -6 -5=.)
recode PRMONTH194                (-9 -8 -6 -5=.)
recode PRMONTH195                (-9 -8 -6 -5=.)
recode PRMONTH196                (-9 -8 -6 -5=.)
recode PRMONTH197                (-9 -8 -6 -5=.)
recode PRMONTH198                (-9 -8 -6 -5=.)
recode PRMONTH199                (-9 -8 -6 -5=.)
recode PRMONTH200                (-9 -8 -6 -5=.)
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
recode PRYEAR36                  (-999 -888 -666=.)
recode PRYEAR37                  (-999 -888 -666=.)
recode PRYEAR38                  (-999 -888 -666=.)
recode PRYEAR39                  (-999 -888 -666=.)
recode PRYEAR40                  (-999 -888 -666=.)
recode PRYEAR41                  (-999 -888 -666=.)
recode PRYEAR42                  (-999 -888 -666=.)
recode PRYEAR43                  (-999 -888 -666=.)
recode PRYEAR44                  (-999 -888 -666=.)
recode PRYEAR45                  (-999 -888 -666=.)
recode PRYEAR46                  (-999 -888 -666=.)
recode PRYEAR47                  (-999 -888 -666=.)
recode PRYEAR48                  (-999 -888 -666=.)
recode PRYEAR49                  (-999 -888 -666=.)
recode PRYEAR50                  (-999 -888 -666=.)
recode PRYEAR51                  (-999 -888 -666=.)
recode PRYEAR52                  (-999 -888 -666=.)
recode PRYEAR53                  (-999 -888 -666=.)
recode PRYEAR54                  (-999 -888 -666=.)
recode PRYEAR55                  (-999 -888 -666=.)
recode PRYEAR56                  (-999 -888 -666=.)
recode PRYEAR57                  (-999 -888 -666=.)
recode PRYEAR58                  (-999 -888 -666=.)
recode PRYEAR59                  (-999 -888 -666=.)
recode PRYEAR60                  (-999 -888 -666=.)
recode PRYEAR61                  (-999 -888 -666=.)
recode PRYEAR62                  (-999 -888 -666=.)
recode PRYEAR63                  (-999 -888 -666=.)
recode PRYEAR64                  (-999 -888 -666=.)
recode PRYEAR65                  (-999 -888 -666=.)
recode PRYEAR66                  (-999 -888 -666=.)
recode PRYEAR67                  (-999 -888 -666=.)
recode PRYEAR68                  (-999 -888 -666=.)
recode PRYEAR69                  (-999 -888 -666=.)
recode PRYEAR70                  (-999 -888 -666=.)
recode PRYEAR71                  (-999 -888 -666=.)
recode PRYEAR72                  (-999 -888 -666=.)
recode PRYEAR73                  (-999 -888 -666=.)
recode PRYEAR74                  (-999 -888 -666=.)
recode PRYEAR75                  (-999 -888 -666=.)
recode PRYEAR76                  (-999 -888 -666=.)
recode PRYEAR77                  (-999 -888 -666=.)
recode PRYEAR78                  (-999 -888 -666=.)
recode PRYEAR79                  (-999 -888 -666=.)
recode PRYEAR80                  (-999 -888 -666=.)
recode PRYEAR81                  (-999 -888 -666=.)
recode PRYEAR82                  (-999 -888 -666=.)
recode PRYEAR83                  (-999 -888 -666=.)
recode PRYEAR84                  (-999 -888 -666=.)
recode PRYEAR85                  (-999 -888 -666=.)
recode PRYEAR86                  (-999 -888 -666=.)
recode PRYEAR87                  (-999 -888 -666=.)
recode PRYEAR88                  (-999 -888 -666=.)
recode PRYEAR89                  (-999 -888 -666=.)
recode PRYEAR90                  (-999 -888 -666=.)
recode PRYEAR91                  (-999 -888 -666=.)
recode PRYEAR92                  (-999 -888 -666=.)
recode PRYEAR93                  (-999 -888 -666=.)
recode PRYEAR94                  (-999 -888 -666=.)
recode PRYEAR95                  (-999 -888 -666=.)
recode PRYEAR96                  (-999 -888 -666=.)
recode PRYEAR97                  (-999 -888 -666=.)
recode PRYEAR98                  (-999 -888 -666=.)
recode PRYEAR99                  (-999 -888 -666=.)
recode PRYEAR100                 (-999 -888 -666=.)
recode PRYEAR101                 (-999 -888 -666=.)
recode PRYEAR102                 (-999 -888 -666=.)
recode PRYEAR103                 (-999 -888 -666=.)
recode PRYEAR104                 (-999 -888 -666=.)
recode PRYEAR105                 (-999 -888 -666=.)
recode PRYEAR106                 (-999 -888 -666=.)
recode PRYEAR107                 (-999 -888 -666=.)
recode PRYEAR108                 (-999 -888 -666=.)
recode PRYEAR109                 (-999 -888 -666=.)
recode PRYEAR110                 (-999 -888 -666=.)
recode PRYEAR111                 (-999 -888 -666=.)
recode PRYEAR112                 (-999 -888 -666=.)
recode PRYEAR113                 (-999 -888 -666=.)
recode PRYEAR114                 (-999 -888 -666=.)
recode PRYEAR115                 (-999 -888 -666=.)
recode PRYEAR116                 (-999 -888 -666=.)
recode PRYEAR117                 (-999 -888 -666=.)
recode PRYEAR118                 (-999 -888 -666=.)
recode PRYEAR119                 (-999 -888 -666=.)
recode PRYEAR120                 (-999 -888 -666=.)
recode PRYEAR121                 (-999 -888 -666=.)
recode PRYEAR122                 (-999 -888 -666=.)
recode PRYEAR123                 (-999 -888 -666=.)
recode PRYEAR124                 (-999 -888 -666=.)
recode PRYEAR125                 (-999 -888 -666=.)
recode PRYEAR126                 (-999 -888 -666=.)
recode PRYEAR127                 (-999 -888 -666=.)
recode PRYEAR128                 (-999 -888 -666=.)
recode PRYEAR129                 (-999 -888 -666=.)
recode PRYEAR130                 (-999 -888 -666=.)
recode PRYEAR131                 (-999 -888 -666=.)
recode PRYEAR132                 (-999 -888 -666=.)
recode PRYEAR133                 (-999 -888 -666=.)
recode PRYEAR134                 (-999 -888 -666=.)
recode PRYEAR135                 (-999 -888 -666=.)
recode PRYEAR136                 (-999 -888 -666=.)
recode PRYEAR137                 (-999 -888 -666=.)
recode PRYEAR138                 (-999 -888 -666=.)
recode PRYEAR139                 (-999 -888 -666=.)
recode PRYEAR140                 (-999 -888 -666=.)
recode PRYEAR141                 (-999 -888 -666=.)
recode PRYEAR142                 (-999 -888 -666=.)
recode PRYEAR143                 (-999 -888 -666=.)
recode PRYEAR144                 (-999 -888 -666=.)
recode PRYEAR145                 (-999 -888 -666=.)
recode PRYEAR146                 (-999 -888 -666=.)
recode PRYEAR147                 (-999 -888 -666=.)
recode PRYEAR148                 (-999 -888 -666=.)
recode PRYEAR149                 (-999 -888 -666=.)
recode PRYEAR150                 (-999 -888 -666=.)
recode PRYEAR151                 (-999 -888 -666=.)
recode PRYEAR152                 (-999 -888 -666=.)
recode PRYEAR153                 (-999 -888 -666=.)
recode PRYEAR154                 (-999 -888 -666=.)
recode PRYEAR155                 (-999 -888 -666=.)
recode PRYEAR156                 (-999 -888 -666=.)
recode PRYEAR157                 (-999 -888 -666=.)
recode PRYEAR158                 (-999 -888 -666=.)
recode PRYEAR159                 (-999 -888 -666=.)
recode PRYEAR160                 (-999 -888 -666=.)
recode PRYEAR161                 (-999 -888 -666=.)
recode PRYEAR162                 (-999 -888 -666=.)
recode PRYEAR163                 (-999 -888 -666=.)
recode PRYEAR164                 (-999 -888 -666=.)
recode PRYEAR165                 (-999 -888 -666=.)
recode PRYEAR166                 (-999 -888 -666=.)
recode PRYEAR167                 (-999 -888 -666=.)
recode PRYEAR168                 (-999 -888 -666=.)
recode PRYEAR169                 (-999 -888 -666=.)
recode PRYEAR170                 (-999 -888 -666=.)
recode PRYEAR171                 (-999 -888 -666=.)
recode PRYEAR172                 (-999 -888 -666=.)
recode PRYEAR173                 (-999 -888 -666=.)
recode PRYEAR174                 (-999 -888 -666=.)
recode PRYEAR175                 (-999 -888 -666=.)
recode PRYEAR176                 (-999 -888 -666=.)
recode PRYEAR177                 (-999 -888 -666=.)
recode PRYEAR178                 (-999 -888 -666=.)
recode PRYEAR179                 (-999 -888 -666=.)
recode PRYEAR180                 (-999 -888 -666=.)
recode PRYEAR181                 (-999 -888 -666=.)
recode PRYEAR182                 (-999 -888 -666=.)
recode PRYEAR183                 (-999 -888 -666=.)
recode PRYEAR184                 (-999 -888 -666=.)
recode PRYEAR185                 (-999 -888 -666=.)
recode PRYEAR186                 (-999 -888 -666=.)
recode PRYEAR187                 (-999 -888 -666=.)
recode PRYEAR188                 (-999 -888 -666=.)
recode PRYEAR189                 (-999 -888 -666=.)
recode PRYEAR190                 (-999 -888 -666=.)
recode PRYEAR191                 (-999 -888 -666=.)
recode PRYEAR192                 (-999 -888 -666=.)
recode PRYEAR193                 (-999 -888 -666=.)
recode PRYEAR194                 (-999 -888 -666=.)
recode PRYEAR195                 (-999 -888 -666=.)
recode PRYEAR196                 (-999 -888 -666=.)
recode PRYEAR197                 (-999 -888 -666=.)
recode PRYEAR198                 (-999 -888 -666=.)
recode PRYEAR199                 (-999 -888 -666=.)
recode PRYEAR200                 (-999 -888 -666=.)

save "GA_SID_2020_CORE.dta", replace
