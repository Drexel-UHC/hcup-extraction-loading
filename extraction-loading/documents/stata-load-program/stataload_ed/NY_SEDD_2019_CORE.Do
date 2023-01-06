/*****************************************************************************
* Creation Date: 07/29/2022   
* NY_SEDD_2019_CORE.Do
* This program will load the 2019 NY ASCII CORE File into Stata.
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
      long   BLOOD                       20-  25   ///
      int    BP_DIASTOLIC_X              26-  29   ///
      int    BP_SYSTOLIC_X               30-  33   ///
      str    CPT1                        34-  38   ///
      str    CPT2                        39-  43   ///
      str    CPT3                        44-  48   ///
      str    CPT4                        49-  53   ///
      str    CPT5                        54-  58   ///
      str    CPT6                        59-  63   ///
      str    CPT7                        64-  68   ///
      str    CPT8                        69-  73   ///
      str    CPT9                        74-  78   ///
      str    CPT10                       79-  83   ///
      str    CPT11                       84-  88   ///
      str    CPT12                       89-  93   ///
      str    CPT13                       94-  98   ///
      str    CPT14                       99- 103   ///
      str    CPT15                      104- 108   ///
      str    CPT16                      109- 113   ///
      str    CPT17                      114- 118   ///
      str    CPT18                      119- 123   ///
      str    CPT19                      124- 128   ///
      str    CPT20                      129- 133   ///
      str    CPT21                      134- 138   ///
      str    CPT22                      139- 143   ///
      str    CPT23                      144- 148   ///
      str    CPT24                      149- 153   ///
      str    CPT25                      154- 158   ///
      str    CPT26                      159- 163   ///
      str    CPT27                      164- 168   ///
      str    CPT28                      169- 173   ///
      str    CPT29                      174- 178   ///
      str    CPT30                      179- 183   ///
      str    CPT31                      184- 188   ///
      str    CPT32                      189- 193   ///
      str    CPT33                      194- 198   ///
      str    CPT34                      199- 203   ///
      str    CPT35                      204- 208   ///
      str    CPT36                      209- 213   ///
      str    CPT37                      214- 218   ///
      str    CPT38                      219- 223   ///
      str    CPT39                      224- 228   ///
      str    CPT40                      229- 233   ///
      str    CPT41                      234- 238   ///
      str    CPT42                      239- 243   ///
      str    CPT43                      244- 248   ///
      str    CPT44                      249- 253   ///
      str    CPT45                      254- 258   ///
      str    CPT46                      259- 263   ///
      str    CPT47                      264- 268   ///
      str    CPT48                      269- 273   ///
      str    CPT49                      274- 278   ///
      str    CPT50                      279- 283   ///
      str    CPT51                      284- 288   ///
      str    CPT52                      289- 293   ///
      str    CPT53                      294- 298   ///
      str    CPT54                      299- 303   ///
      str    CPT55                      304- 308   ///
      str    CPT56                      309- 313   ///
      str    CPT57                      314- 318   ///
      str    CPT58                      319- 323   ///
      str    CPT59                      324- 328   ///
      str    CPT60                      329- 333   ///
      str    CPT61                      334- 338   ///
      str    CPT62                      339- 343   ///
      str    CPT63                      344- 348   ///
      str    CPT64                      349- 353   ///
      str    CPT65                      354- 358   ///
      str    CPT66                      359- 363   ///
      str    CPT67                      364- 368   ///
      str    CPT68                      369- 373   ///
      str    CPT69                      374- 378   ///
      str    CPT70                      379- 383   ///
      str    CPT71                      384- 388   ///
      str    CPT72                      389- 393   ///
      str    CPT73                      394- 398   ///
      str    CPT74                      399- 403   ///
      str    CPT75                      404- 408   ///
      str    CPT76                      409- 413   ///
      str    CPT77                      414- 418   ///
      str    CPT78                      419- 423   ///
      str    CPT79                      424- 428   ///
      str    CPT80                      429- 433   ///
      str    CPT81                      434- 438   ///
      str    CPT82                      439- 443   ///
      str    CPT83                      444- 448   ///
      str    CPT84                      449- 453   ///
      str    CPT85                      454- 458   ///
      str    CPT86                      459- 463   ///
      str    CPT87                      464- 468   ///
      str    CPT88                      469- 473   ///
      str    CPT89                      474- 478   ///
      str    CPT90                      479- 483   ///
      str    CPT91                      484- 488   ///
      str    CPT92                      489- 493   ///
      str    CPT93                      494- 498   ///
      str    CPT94                      499- 503   ///
      str    CPT95                      504- 508   ///
      str    CPT96                      509- 513   ///
      str    CPT97                      514- 518   ///
      str    CPT98                      519- 523   ///
      str    CPT99                      524- 528   ///
      str    CPT100                     529- 533   ///
      str    CPT101                     534- 538   ///
      str    CPT102                     539- 543   ///
      str    CPT103                     544- 548   ///
      str    CPT104                     549- 553   ///
      str    CPT105                     554- 558   ///
      str    CPT106                     559- 563   ///
      str    CPT107                     564- 568   ///
      str    CPT108                     569- 573   ///
      str    CPT109                     574- 578   ///
      str    CPT110                     579- 583   ///
      str    CPT111                     584- 588   ///
      str    CPT112                     589- 593   ///
      str    CPT113                     594- 598   ///
      str    CPT114                     599- 603   ///
      str    CPT115                     604- 608   ///
      str    CPT116                     609- 613   ///
      str    CPT117                     614- 618   ///
      str    CPT118                     619- 623   ///
      str    CPT119                     624- 628   ///
      str    CPT120                     629- 633   ///
      str    CPT121                     634- 638   ///
      str    CPT122                     639- 643   ///
      str    CPT123                     644- 648   ///
      str    CPT124                     649- 653   ///
      str    CPT125                     654- 658   ///
      str    CPT126                     659- 663   ///
      str    CPT127                     664- 668   ///
      str    CPT128                     669- 673   ///
      str    CPT129                     674- 678   ///
      str    CPT130                     679- 683   ///
      str    CPT131                     684- 688   ///
      str    CPT132                     689- 693   ///
      str    CPT133                     694- 698   ///
      str    CPT134                     699- 703   ///
      str    CPT135                     704- 708   ///
      str    CPT136                     709- 713   ///
      str    CPT137                     714- 718   ///
      str    CPT138                     719- 723   ///
      str    CPT139                     724- 728   ///
      str    CPT140                     729- 733   ///
      str    CPT141                     734- 738   ///
      str    CPT142                     739- 743   ///
      str    CPT143                     744- 748   ///
      str    CPT144                     749- 753   ///
      str    CPT145                     754- 758   ///
      str    CPT146                     759- 763   ///
      str    CPT147                     764- 768   ///
      str    CPT148                     769- 773   ///
      str    CPT149                     774- 778   ///
      str    CPT150                     779- 783   ///
      str    CPT151                     784- 788   ///
      str    CPT152                     789- 793   ///
      str    CPT153                     794- 798   ///
      str    CPT154                     799- 803   ///
      str    CPT155                     804- 808   ///
      str    CPT156                     809- 813   ///
      str    CPT157                     814- 818   ///
      str    CPT158                     819- 823   ///
      str    CPT159                     824- 828   ///
      str    CPT160                     829- 833   ///
      str    CPT161                     834- 838   ///
      str    CPT162                     839- 843   ///
      str    CPT163                     844- 848   ///
      str    CPT164                     849- 853   ///
      str    CPT165                     854- 858   ///
      str    CPT166                     859- 863   ///
      str    CPT167                     864- 868   ///
      str    CPT168                     869- 873   ///
      str    CPT169                     874- 878   ///
      str    CPT170                     879- 883   ///
      str    CPT171                     884- 888   ///
      str    CPT172                     889- 893   ///
      str    CPT173                     894- 898   ///
      str    CPT174                     899- 903   ///
      str    CPT175                     904- 908   ///
      str    CPT176                     909- 913   ///
      str    CPT177                     914- 918   ///
      str    CPT178                     919- 923   ///
      str    CPT179                     924- 928   ///
      str    CPT180                     929- 933   ///
      str    CPT181                     934- 938   ///
      str    CPT182                     939- 943   ///
      str    CPT183                     944- 948   ///
      str    CPT184                     949- 953   ///
      str    CPT185                     954- 958   ///
      str    CPT186                     959- 963   ///
      str    CPT187                     964- 968   ///
      str    CPT188                     969- 973   ///
      str    CPT189                     974- 978   ///
      str    CPT190                     979- 983   ///
      str    CPT191                     984- 988   ///
      str    CPT192                     989- 993   ///
      str    CPT193                     994- 998   ///
      str    CPT194                     999-1003   ///
      str    CPT195                    1004-1008   ///
      str    CPT196                    1009-1013   ///
      str    CPT197                    1014-1018   ///
      str    CPT198                    1019-1023   ///
      str    CPT199                    1024-1028   ///
      str    CPT200                    1029-1033   ///
      int    CPTCCS1                   1034-1036   ///
      int    CPTCCS2                   1037-1039   ///
      int    CPTCCS3                   1040-1042   ///
      int    CPTCCS4                   1043-1045   ///
      int    CPTCCS5                   1046-1048   ///
      int    CPTCCS6                   1049-1051   ///
      int    CPTCCS7                   1052-1054   ///
      int    CPTCCS8                   1055-1057   ///
      int    CPTCCS9                   1058-1060   ///
      int    CPTCCS10                  1061-1063   ///
      int    CPTCCS11                  1064-1066   ///
      int    CPTCCS12                  1067-1069   ///
      int    CPTCCS13                  1070-1072   ///
      int    CPTCCS14                  1073-1075   ///
      int    CPTCCS15                  1076-1078   ///
      int    CPTCCS16                  1079-1081   ///
      int    CPTCCS17                  1082-1084   ///
      int    CPTCCS18                  1085-1087   ///
      int    CPTCCS19                  1088-1090   ///
      int    CPTCCS20                  1091-1093   ///
      int    CPTCCS21                  1094-1096   ///
      int    CPTCCS22                  1097-1099   ///
      int    CPTCCS23                  1100-1102   ///
      int    CPTCCS24                  1103-1105   ///
      int    CPTCCS25                  1106-1108   ///
      int    CPTCCS26                  1109-1111   ///
      int    CPTCCS27                  1112-1114   ///
      int    CPTCCS28                  1115-1117   ///
      int    CPTCCS29                  1118-1120   ///
      int    CPTCCS30                  1121-1123   ///
      int    CPTCCS31                  1124-1126   ///
      int    CPTCCS32                  1127-1129   ///
      int    CPTCCS33                  1130-1132   ///
      int    CPTCCS34                  1133-1135   ///
      int    CPTCCS35                  1136-1138   ///
      int    CPTCCS36                  1139-1141   ///
      int    CPTCCS37                  1142-1144   ///
      int    CPTCCS38                  1145-1147   ///
      int    CPTCCS39                  1148-1150   ///
      int    CPTCCS40                  1151-1153   ///
      int    CPTCCS41                  1154-1156   ///
      int    CPTCCS42                  1157-1159   ///
      int    CPTCCS43                  1160-1162   ///
      int    CPTCCS44                  1163-1165   ///
      int    CPTCCS45                  1166-1168   ///
      int    CPTCCS46                  1169-1171   ///
      int    CPTCCS47                  1172-1174   ///
      int    CPTCCS48                  1175-1177   ///
      int    CPTCCS49                  1178-1180   ///
      int    CPTCCS50                  1181-1183   ///
      int    CPTCCS51                  1184-1186   ///
      int    CPTCCS52                  1187-1189   ///
      int    CPTCCS53                  1190-1192   ///
      int    CPTCCS54                  1193-1195   ///
      int    CPTCCS55                  1196-1198   ///
      int    CPTCCS56                  1199-1201   ///
      int    CPTCCS57                  1202-1204   ///
      int    CPTCCS58                  1205-1207   ///
      int    CPTCCS59                  1208-1210   ///
      int    CPTCCS60                  1211-1213   ///
      int    CPTCCS61                  1214-1216   ///
      int    CPTCCS62                  1217-1219   ///
      int    CPTCCS63                  1220-1222   ///
      int    CPTCCS64                  1223-1225   ///
      int    CPTCCS65                  1226-1228   ///
      int    CPTCCS66                  1229-1231   ///
      int    CPTCCS67                  1232-1234   ///
      int    CPTCCS68                  1235-1237   ///
      int    CPTCCS69                  1238-1240   ///
      int    CPTCCS70                  1241-1243   ///
      int    CPTCCS71                  1244-1246   ///
      int    CPTCCS72                  1247-1249   ///
      int    CPTCCS73                  1250-1252   ///
      int    CPTCCS74                  1253-1255   ///
      int    CPTCCS75                  1256-1258   ///
      int    CPTCCS76                  1259-1261   ///
      int    CPTCCS77                  1262-1264   ///
      int    CPTCCS78                  1265-1267   ///
      int    CPTCCS79                  1268-1270   ///
      int    CPTCCS80                  1271-1273   ///
      int    CPTCCS81                  1274-1276   ///
      int    CPTCCS82                  1277-1279   ///
      int    CPTCCS83                  1280-1282   ///
      int    CPTCCS84                  1283-1285   ///
      int    CPTCCS85                  1286-1288   ///
      int    CPTCCS86                  1289-1291   ///
      int    CPTCCS87                  1292-1294   ///
      int    CPTCCS88                  1295-1297   ///
      int    CPTCCS89                  1298-1300   ///
      int    CPTCCS90                  1301-1303   ///
      int    CPTCCS91                  1304-1306   ///
      int    CPTCCS92                  1307-1309   ///
      int    CPTCCS93                  1310-1312   ///
      int    CPTCCS94                  1313-1315   ///
      int    CPTCCS95                  1316-1318   ///
      int    CPTCCS96                  1319-1321   ///
      int    CPTCCS97                  1322-1324   ///
      int    CPTCCS98                  1325-1327   ///
      int    CPTCCS99                  1328-1330   ///
      int    CPTCCS100                 1331-1333   ///
      int    CPTCCS101                 1334-1336   ///
      int    CPTCCS102                 1337-1339   ///
      int    CPTCCS103                 1340-1342   ///
      int    CPTCCS104                 1343-1345   ///
      int    CPTCCS105                 1346-1348   ///
      int    CPTCCS106                 1349-1351   ///
      int    CPTCCS107                 1352-1354   ///
      int    CPTCCS108                 1355-1357   ///
      int    CPTCCS109                 1358-1360   ///
      int    CPTCCS110                 1361-1363   ///
      int    CPTCCS111                 1364-1366   ///
      int    CPTCCS112                 1367-1369   ///
      int    CPTCCS113                 1370-1372   ///
      int    CPTCCS114                 1373-1375   ///
      int    CPTCCS115                 1376-1378   ///
      int    CPTCCS116                 1379-1381   ///
      int    CPTCCS117                 1382-1384   ///
      int    CPTCCS118                 1385-1387   ///
      int    CPTCCS119                 1388-1390   ///
      int    CPTCCS120                 1391-1393   ///
      int    CPTCCS121                 1394-1396   ///
      int    CPTCCS122                 1397-1399   ///
      int    CPTCCS123                 1400-1402   ///
      int    CPTCCS124                 1403-1405   ///
      int    CPTCCS125                 1406-1408   ///
      int    CPTCCS126                 1409-1411   ///
      int    CPTCCS127                 1412-1414   ///
      int    CPTCCS128                 1415-1417   ///
      int    CPTCCS129                 1418-1420   ///
      int    CPTCCS130                 1421-1423   ///
      int    CPTCCS131                 1424-1426   ///
      int    CPTCCS132                 1427-1429   ///
      int    CPTCCS133                 1430-1432   ///
      int    CPTCCS134                 1433-1435   ///
      int    CPTCCS135                 1436-1438   ///
      int    CPTCCS136                 1439-1441   ///
      int    CPTCCS137                 1442-1444   ///
      int    CPTCCS138                 1445-1447   ///
      int    CPTCCS139                 1448-1450   ///
      int    CPTCCS140                 1451-1453   ///
      int    CPTCCS141                 1454-1456   ///
      int    CPTCCS142                 1457-1459   ///
      int    CPTCCS143                 1460-1462   ///
      int    CPTCCS144                 1463-1465   ///
      int    CPTCCS145                 1466-1468   ///
      int    CPTCCS146                 1469-1471   ///
      int    CPTCCS147                 1472-1474   ///
      int    CPTCCS148                 1475-1477   ///
      int    CPTCCS149                 1478-1480   ///
      int    CPTCCS150                 1481-1483   ///
      int    CPTCCS151                 1484-1486   ///
      int    CPTCCS152                 1487-1489   ///
      int    CPTCCS153                 1490-1492   ///
      int    CPTCCS154                 1493-1495   ///
      int    CPTCCS155                 1496-1498   ///
      int    CPTCCS156                 1499-1501   ///
      int    CPTCCS157                 1502-1504   ///
      int    CPTCCS158                 1505-1507   ///
      int    CPTCCS159                 1508-1510   ///
      int    CPTCCS160                 1511-1513   ///
      int    CPTCCS161                 1514-1516   ///
      int    CPTCCS162                 1517-1519   ///
      int    CPTCCS163                 1520-1522   ///
      int    CPTCCS164                 1523-1525   ///
      int    CPTCCS165                 1526-1528   ///
      int    CPTCCS166                 1529-1531   ///
      int    CPTCCS167                 1532-1534   ///
      int    CPTCCS168                 1535-1537   ///
      int    CPTCCS169                 1538-1540   ///
      int    CPTCCS170                 1541-1543   ///
      int    CPTCCS171                 1544-1546   ///
      int    CPTCCS172                 1547-1549   ///
      int    CPTCCS173                 1550-1552   ///
      int    CPTCCS174                 1553-1555   ///
      int    CPTCCS175                 1556-1558   ///
      int    CPTCCS176                 1559-1561   ///
      int    CPTCCS177                 1562-1564   ///
      int    CPTCCS178                 1565-1567   ///
      int    CPTCCS179                 1568-1570   ///
      int    CPTCCS180                 1571-1573   ///
      int    CPTCCS181                 1574-1576   ///
      int    CPTCCS182                 1577-1579   ///
      int    CPTCCS183                 1580-1582   ///
      int    CPTCCS184                 1583-1585   ///
      int    CPTCCS185                 1586-1588   ///
      int    CPTCCS186                 1589-1591   ///
      int    CPTCCS187                 1592-1594   ///
      int    CPTCCS188                 1595-1597   ///
      int    CPTCCS189                 1598-1600   ///
      int    CPTCCS190                 1601-1603   ///
      int    CPTCCS191                 1604-1606   ///
      int    CPTCCS192                 1607-1609   ///
      int    CPTCCS193                 1610-1612   ///
      int    CPTCCS194                 1613-1615   ///
      int    CPTCCS195                 1616-1618   ///
      int    CPTCCS196                 1619-1621   ///
      int    CPTCCS197                 1622-1624   ///
      int    CPTCCS198                 1625-1627   ///
      int    CPTCCS199                 1628-1630   ///
      int    CPTCCS200                 1631-1633   ///
      int    CPTDAY1                   1634-1636   ///
      int    CPTDAY2                   1637-1639   ///
      int    CPTDAY3                   1640-1642   ///
      int    CPTDAY4                   1643-1645   ///
      int    CPTDAY5                   1646-1648   ///
      int    CPTDAY6                   1649-1651   ///
      int    CPTDAY7                   1652-1654   ///
      int    CPTDAY8                   1655-1657   ///
      int    CPTDAY9                   1658-1660   ///
      int    CPTDAY10                  1661-1663   ///
      int    CPTDAY11                  1664-1666   ///
      int    CPTDAY12                  1667-1669   ///
      int    CPTDAY13                  1670-1672   ///
      int    CPTDAY14                  1673-1675   ///
      int    CPTDAY15                  1676-1678   ///
      int    CPTDAY16                  1679-1681   ///
      int    CPTDAY17                  1682-1684   ///
      int    CPTDAY18                  1685-1687   ///
      int    CPTDAY19                  1688-1690   ///
      int    CPTDAY20                  1691-1693   ///
      int    CPTDAY21                  1694-1696   ///
      int    CPTDAY22                  1697-1699   ///
      int    CPTDAY23                  1700-1702   ///
      int    CPTDAY24                  1703-1705   ///
      int    CPTDAY25                  1706-1708   ///
      int    CPTDAY26                  1709-1711   ///
      int    CPTDAY27                  1712-1714   ///
      int    CPTDAY28                  1715-1717   ///
      int    CPTDAY29                  1718-1720   ///
      int    CPTDAY30                  1721-1723   ///
      int    CPTDAY31                  1724-1726   ///
      int    CPTDAY32                  1727-1729   ///
      int    CPTDAY33                  1730-1732   ///
      int    CPTDAY34                  1733-1735   ///
      int    CPTDAY35                  1736-1738   ///
      int    CPTDAY36                  1739-1741   ///
      int    CPTDAY37                  1742-1744   ///
      int    CPTDAY38                  1745-1747   ///
      int    CPTDAY39                  1748-1750   ///
      int    CPTDAY40                  1751-1753   ///
      int    CPTDAY41                  1754-1756   ///
      int    CPTDAY42                  1757-1759   ///
      int    CPTDAY43                  1760-1762   ///
      int    CPTDAY44                  1763-1765   ///
      int    CPTDAY45                  1766-1768   ///
      int    CPTDAY46                  1769-1771   ///
      int    CPTDAY47                  1772-1774   ///
      int    CPTDAY48                  1775-1777   ///
      int    CPTDAY49                  1778-1780   ///
      int    CPTDAY50                  1781-1783   ///
      int    CPTDAY51                  1784-1786   ///
      int    CPTDAY52                  1787-1789   ///
      int    CPTDAY53                  1790-1792   ///
      int    CPTDAY54                  1793-1795   ///
      int    CPTDAY55                  1796-1798   ///
      int    CPTDAY56                  1799-1801   ///
      int    CPTDAY57                  1802-1804   ///
      int    CPTDAY58                  1805-1807   ///
      int    CPTDAY59                  1808-1810   ///
      int    CPTDAY60                  1811-1813   ///
      int    CPTDAY61                  1814-1816   ///
      int    CPTDAY62                  1817-1819   ///
      int    CPTDAY63                  1820-1822   ///
      int    CPTDAY64                  1823-1825   ///
      int    CPTDAY65                  1826-1828   ///
      int    CPTDAY66                  1829-1831   ///
      int    CPTDAY67                  1832-1834   ///
      int    CPTDAY68                  1835-1837   ///
      int    CPTDAY69                  1838-1840   ///
      int    CPTDAY70                  1841-1843   ///
      int    CPTDAY71                  1844-1846   ///
      int    CPTDAY72                  1847-1849   ///
      int    CPTDAY73                  1850-1852   ///
      int    CPTDAY74                  1853-1855   ///
      int    CPTDAY75                  1856-1858   ///
      int    CPTDAY76                  1859-1861   ///
      int    CPTDAY77                  1862-1864   ///
      int    CPTDAY78                  1865-1867   ///
      int    CPTDAY79                  1868-1870   ///
      int    CPTDAY80                  1871-1873   ///
      int    CPTDAY81                  1874-1876   ///
      int    CPTDAY82                  1877-1879   ///
      int    CPTDAY83                  1880-1882   ///
      int    CPTDAY84                  1883-1885   ///
      int    CPTDAY85                  1886-1888   ///
      int    CPTDAY86                  1889-1891   ///
      int    CPTDAY87                  1892-1894   ///
      int    CPTDAY88                  1895-1897   ///
      int    CPTDAY89                  1898-1900   ///
      int    CPTDAY90                  1901-1903   ///
      int    CPTDAY91                  1904-1906   ///
      int    CPTDAY92                  1907-1909   ///
      int    CPTDAY93                  1910-1912   ///
      int    CPTDAY94                  1913-1915   ///
      int    CPTDAY95                  1916-1918   ///
      int    CPTDAY96                  1919-1921   ///
      int    CPTDAY97                  1922-1924   ///
      int    CPTDAY98                  1925-1927   ///
      int    CPTDAY99                  1928-1930   ///
      int    CPTDAY100                 1931-1933   ///
      int    CPTDAY101                 1934-1936   ///
      int    CPTDAY102                 1937-1939   ///
      int    CPTDAY103                 1940-1942   ///
      int    CPTDAY104                 1943-1945   ///
      int    CPTDAY105                 1946-1948   ///
      int    CPTDAY106                 1949-1951   ///
      int    CPTDAY107                 1952-1954   ///
      int    CPTDAY108                 1955-1957   ///
      int    CPTDAY109                 1958-1960   ///
      int    CPTDAY110                 1961-1963   ///
      int    CPTDAY111                 1964-1966   ///
      int    CPTDAY112                 1967-1969   ///
      int    CPTDAY113                 1970-1972   ///
      int    CPTDAY114                 1973-1975   ///
      int    CPTDAY115                 1976-1978   ///
      int    CPTDAY116                 1979-1981   ///
      int    CPTDAY117                 1982-1984   ///
      int    CPTDAY118                 1985-1987   ///
      int    CPTDAY119                 1988-1990   ///
      int    CPTDAY120                 1991-1993   ///
      int    CPTDAY121                 1994-1996   ///
      int    CPTDAY122                 1997-1999   ///
      int    CPTDAY123                 2000-2002   ///
      int    CPTDAY124                 2003-2005   ///
      int    CPTDAY125                 2006-2008   ///
      int    CPTDAY126                 2009-2011   ///
      int    CPTDAY127                 2012-2014   ///
      int    CPTDAY128                 2015-2017   ///
      int    CPTDAY129                 2018-2020   ///
      int    CPTDAY130                 2021-2023   ///
      int    CPTDAY131                 2024-2026   ///
      int    CPTDAY132                 2027-2029   ///
      int    CPTDAY133                 2030-2032   ///
      int    CPTDAY134                 2033-2035   ///
      int    CPTDAY135                 2036-2038   ///
      int    CPTDAY136                 2039-2041   ///
      int    CPTDAY137                 2042-2044   ///
      int    CPTDAY138                 2045-2047   ///
      int    CPTDAY139                 2048-2050   ///
      int    CPTDAY140                 2051-2053   ///
      int    CPTDAY141                 2054-2056   ///
      int    CPTDAY142                 2057-2059   ///
      int    CPTDAY143                 2060-2062   ///
      int    CPTDAY144                 2063-2065   ///
      int    CPTDAY145                 2066-2068   ///
      int    CPTDAY146                 2069-2071   ///
      int    CPTDAY147                 2072-2074   ///
      int    CPTDAY148                 2075-2077   ///
      int    CPTDAY149                 2078-2080   ///
      int    CPTDAY150                 2081-2083   ///
      int    CPTDAY151                 2084-2086   ///
      int    CPTDAY152                 2087-2089   ///
      int    CPTDAY153                 2090-2092   ///
      int    CPTDAY154                 2093-2095   ///
      int    CPTDAY155                 2096-2098   ///
      int    CPTDAY156                 2099-2101   ///
      int    CPTDAY157                 2102-2104   ///
      int    CPTDAY158                 2105-2107   ///
      int    CPTDAY159                 2108-2110   ///
      int    CPTDAY160                 2111-2113   ///
      int    CPTDAY161                 2114-2116   ///
      int    CPTDAY162                 2117-2119   ///
      int    CPTDAY163                 2120-2122   ///
      int    CPTDAY164                 2123-2125   ///
      int    CPTDAY165                 2126-2128   ///
      int    CPTDAY166                 2129-2131   ///
      int    CPTDAY167                 2132-2134   ///
      int    CPTDAY168                 2135-2137   ///
      int    CPTDAY169                 2138-2140   ///
      int    CPTDAY170                 2141-2143   ///
      int    CPTDAY171                 2144-2146   ///
      int    CPTDAY172                 2147-2149   ///
      int    CPTDAY173                 2150-2152   ///
      int    CPTDAY174                 2153-2155   ///
      int    CPTDAY175                 2156-2158   ///
      int    CPTDAY176                 2159-2161   ///
      int    CPTDAY177                 2162-2164   ///
      int    CPTDAY178                 2165-2167   ///
      int    CPTDAY179                 2168-2170   ///
      int    CPTDAY180                 2171-2173   ///
      int    CPTDAY181                 2174-2176   ///
      int    CPTDAY182                 2177-2179   ///
      int    CPTDAY183                 2180-2182   ///
      int    CPTDAY184                 2183-2185   ///
      int    CPTDAY185                 2186-2188   ///
      int    CPTDAY186                 2189-2191   ///
      int    CPTDAY187                 2192-2194   ///
      int    CPTDAY188                 2195-2197   ///
      int    CPTDAY189                 2198-2200   ///
      int    CPTDAY190                 2201-2203   ///
      int    CPTDAY191                 2204-2206   ///
      int    CPTDAY192                 2207-2209   ///
      int    CPTDAY193                 2210-2212   ///
      int    CPTDAY194                 2213-2215   ///
      int    CPTDAY195                 2216-2218   ///
      int    CPTDAY196                 2219-2221   ///
      int    CPTDAY197                 2222-2224   ///
      int    CPTDAY198                 2225-2227   ///
      int    CPTDAY199                 2228-2230   ///
      int    CPTDAY200                 2231-2233   ///
      str    CPTM1_1                   2234-2235   ///
      str    CPTM1_2                   2236-2237   ///
      str    CPTM1_3                   2238-2239   ///
      str    CPTM1_4                   2240-2241   ///
      str    CPTM1_5                   2242-2243   ///
      str    CPTM1_6                   2244-2245   ///
      str    CPTM1_7                   2246-2247   ///
      str    CPTM1_8                   2248-2249   ///
      str    CPTM1_9                   2250-2251   ///
      str    CPTM1_10                  2252-2253   ///
      str    CPTM1_11                  2254-2255   ///
      str    CPTM1_12                  2256-2257   ///
      str    CPTM1_13                  2258-2259   ///
      str    CPTM1_14                  2260-2261   ///
      str    CPTM1_15                  2262-2263   ///
      str    CPTM1_16                  2264-2265   ///
      str    CPTM1_17                  2266-2267   ///
      str    CPTM1_18                  2268-2269   ///
      str    CPTM1_19                  2270-2271   ///
      str    CPTM1_20                  2272-2273   ///
      str    CPTM1_21                  2274-2275   ///
      str    CPTM1_22                  2276-2277   ///
      str    CPTM1_23                  2278-2279   ///
      str    CPTM1_24                  2280-2281   ///
      str    CPTM1_25                  2282-2283   ///
      str    CPTM1_26                  2284-2285   ///
      str    CPTM1_27                  2286-2287   ///
      str    CPTM1_28                  2288-2289   ///
      str    CPTM1_29                  2290-2291   ///
      str    CPTM1_30                  2292-2293   ///
      str    CPTM1_31                  2294-2295   ///
      str    CPTM1_32                  2296-2297   ///
      str    CPTM1_33                  2298-2299   ///
      str    CPTM1_34                  2300-2301   ///
      str    CPTM1_35                  2302-2303   ///
      str    CPTM1_36                  2304-2305   ///
      str    CPTM1_37                  2306-2307   ///
      str    CPTM1_38                  2308-2309   ///
      str    CPTM1_39                  2310-2311   ///
      str    CPTM1_40                  2312-2313   ///
      str    CPTM1_41                  2314-2315   ///
      str    CPTM1_42                  2316-2317   ///
      str    CPTM1_43                  2318-2319   ///
      str    CPTM1_44                  2320-2321   ///
      str    CPTM1_45                  2322-2323   ///
      str    CPTM1_46                  2324-2325   ///
      str    CPTM1_47                  2326-2327   ///
      str    CPTM1_48                  2328-2329   ///
      str    CPTM1_49                  2330-2331   ///
      str    CPTM1_50                  2332-2333   ///
      str    CPTM1_51                  2334-2335   ///
      str    CPTM1_52                  2336-2337   ///
      str    CPTM1_53                  2338-2339   ///
      str    CPTM1_54                  2340-2341   ///
      str    CPTM1_55                  2342-2343   ///
      str    CPTM1_56                  2344-2345   ///
      str    CPTM1_57                  2346-2347   ///
      str    CPTM1_58                  2348-2349   ///
      str    CPTM1_59                  2350-2351   ///
      str    CPTM1_60                  2352-2353   ///
      str    CPTM1_61                  2354-2355   ///
      str    CPTM1_62                  2356-2357   ///
      str    CPTM1_63                  2358-2359   ///
      str    CPTM1_64                  2360-2361   ///
      str    CPTM1_65                  2362-2363   ///
      str    CPTM1_66                  2364-2365   ///
      str    CPTM1_67                  2366-2367   ///
      str    CPTM1_68                  2368-2369   ///
      str    CPTM1_69                  2370-2371   ///
      str    CPTM1_70                  2372-2373   ///
      str    CPTM1_71                  2374-2375   ///
      str    CPTM1_72                  2376-2377   ///
      str    CPTM1_73                  2378-2379   ///
      str    CPTM1_74                  2380-2381   ///
      str    CPTM1_75                  2382-2383   ///
      str    CPTM1_76                  2384-2385   ///
      str    CPTM1_77                  2386-2387   ///
      str    CPTM1_78                  2388-2389   ///
      str    CPTM1_79                  2390-2391   ///
      str    CPTM1_80                  2392-2393   ///
      str    CPTM1_81                  2394-2395   ///
      str    CPTM1_82                  2396-2397   ///
      str    CPTM1_83                  2398-2399   ///
      str    CPTM1_84                  2400-2401   ///
      str    CPTM1_85                  2402-2403   ///
      str    CPTM1_86                  2404-2405   ///
      str    CPTM1_87                  2406-2407   ///
      str    CPTM1_88                  2408-2409   ///
      str    CPTM1_89                  2410-2411   ///
      str    CPTM1_90                  2412-2413   ///
      str    CPTM1_91                  2414-2415   ///
      str    CPTM1_92                  2416-2417   ///
      str    CPTM1_93                  2418-2419   ///
      str    CPTM1_94                  2420-2421   ///
      str    CPTM1_95                  2422-2423   ///
      str    CPTM1_96                  2424-2425   ///
      str    CPTM1_97                  2426-2427   ///
      str    CPTM1_98                  2428-2429   ///
      str    CPTM1_99                  2430-2431   ///
      str    CPTM1_100                 2432-2433   ///
      str    CPTM1_101                 2434-2435   ///
      str    CPTM1_102                 2436-2437   ///
      str    CPTM1_103                 2438-2439   ///
      str    CPTM1_104                 2440-2441   ///
      str    CPTM1_105                 2442-2443   ///
      str    CPTM1_106                 2444-2445   ///
      str    CPTM1_107                 2446-2447   ///
      str    CPTM1_108                 2448-2449   ///
      str    CPTM1_109                 2450-2451   ///
      str    CPTM1_110                 2452-2453   ///
      str    CPTM1_111                 2454-2455   ///
      str    CPTM1_112                 2456-2457   ///
      str    CPTM1_113                 2458-2459   ///
      str    CPTM1_114                 2460-2461   ///
      str    CPTM1_115                 2462-2463   ///
      str    CPTM1_116                 2464-2465   ///
      str    CPTM1_117                 2466-2467   ///
      str    CPTM1_118                 2468-2469   ///
      str    CPTM1_119                 2470-2471   ///
      str    CPTM1_120                 2472-2473   ///
      str    CPTM1_121                 2474-2475   ///
      str    CPTM1_122                 2476-2477   ///
      str    CPTM1_123                 2478-2479   ///
      str    CPTM1_124                 2480-2481   ///
      str    CPTM1_125                 2482-2483   ///
      str    CPTM1_126                 2484-2485   ///
      str    CPTM1_127                 2486-2487   ///
      str    CPTM1_128                 2488-2489   ///
      str    CPTM1_129                 2490-2491   ///
      str    CPTM1_130                 2492-2493   ///
      str    CPTM1_131                 2494-2495   ///
      str    CPTM1_132                 2496-2497   ///
      str    CPTM1_133                 2498-2499   ///
      str    CPTM1_134                 2500-2501   ///
      str    CPTM1_135                 2502-2503   ///
      str    CPTM1_136                 2504-2505   ///
      str    CPTM1_137                 2506-2507   ///
      str    CPTM1_138                 2508-2509   ///
      str    CPTM1_139                 2510-2511   ///
      str    CPTM1_140                 2512-2513   ///
      str    CPTM1_141                 2514-2515   ///
      str    CPTM1_142                 2516-2517   ///
      str    CPTM1_143                 2518-2519   ///
      str    CPTM1_144                 2520-2521   ///
      str    CPTM1_145                 2522-2523   ///
      str    CPTM1_146                 2524-2525   ///
      str    CPTM1_147                 2526-2527   ///
      str    CPTM1_148                 2528-2529   ///
      str    CPTM1_149                 2530-2531   ///
      str    CPTM1_150                 2532-2533   ///
      str    CPTM1_151                 2534-2535   ///
      str    CPTM1_152                 2536-2537   ///
      str    CPTM1_153                 2538-2539   ///
      str    CPTM1_154                 2540-2541   ///
      str    CPTM1_155                 2542-2543   ///
      str    CPTM1_156                 2544-2545   ///
      str    CPTM1_157                 2546-2547   ///
      str    CPTM1_158                 2548-2549   ///
      str    CPTM1_159                 2550-2551   ///
      str    CPTM1_160                 2552-2553   ///
      str    CPTM1_161                 2554-2555   ///
      str    CPTM1_162                 2556-2557   ///
      str    CPTM1_163                 2558-2559   ///
      str    CPTM1_164                 2560-2561   ///
      str    CPTM1_165                 2562-2563   ///
      str    CPTM1_166                 2564-2565   ///
      str    CPTM1_167                 2566-2567   ///
      str    CPTM1_168                 2568-2569   ///
      str    CPTM1_169                 2570-2571   ///
      str    CPTM1_170                 2572-2573   ///
      str    CPTM1_171                 2574-2575   ///
      str    CPTM1_172                 2576-2577   ///
      str    CPTM1_173                 2578-2579   ///
      str    CPTM1_174                 2580-2581   ///
      str    CPTM1_175                 2582-2583   ///
      str    CPTM1_176                 2584-2585   ///
      str    CPTM1_177                 2586-2587   ///
      str    CPTM1_178                 2588-2589   ///
      str    CPTM1_179                 2590-2591   ///
      str    CPTM1_180                 2592-2593   ///
      str    CPTM1_181                 2594-2595   ///
      str    CPTM1_182                 2596-2597   ///
      str    CPTM1_183                 2598-2599   ///
      str    CPTM1_184                 2600-2601   ///
      str    CPTM1_185                 2602-2603   ///
      str    CPTM1_186                 2604-2605   ///
      str    CPTM1_187                 2606-2607   ///
      str    CPTM1_188                 2608-2609   ///
      str    CPTM1_189                 2610-2611   ///
      str    CPTM1_190                 2612-2613   ///
      str    CPTM1_191                 2614-2615   ///
      str    CPTM1_192                 2616-2617   ///
      str    CPTM1_193                 2618-2619   ///
      str    CPTM1_194                 2620-2621   ///
      str    CPTM1_195                 2622-2623   ///
      str    CPTM1_196                 2624-2625   ///
      str    CPTM1_197                 2626-2627   ///
      str    CPTM1_198                 2628-2629   ///
      str    CPTM1_199                 2630-2631   ///
      str    CPTM1_200                 2632-2633   ///
      str    CPTM2_1                   2634-2635   ///
      str    CPTM2_2                   2636-2637   ///
      str    CPTM2_3                   2638-2639   ///
      str    CPTM2_4                   2640-2641   ///
      str    CPTM2_5                   2642-2643   ///
      str    CPTM2_6                   2644-2645   ///
      str    CPTM2_7                   2646-2647   ///
      str    CPTM2_8                   2648-2649   ///
      str    CPTM2_9                   2650-2651   ///
      str    CPTM2_10                  2652-2653   ///
      str    CPTM2_11                  2654-2655   ///
      str    CPTM2_12                  2656-2657   ///
      str    CPTM2_13                  2658-2659   ///
      str    CPTM2_14                  2660-2661   ///
      str    CPTM2_15                  2662-2663   ///
      str    CPTM2_16                  2664-2665   ///
      str    CPTM2_17                  2666-2667   ///
      str    CPTM2_18                  2668-2669   ///
      str    CPTM2_19                  2670-2671   ///
      str    CPTM2_20                  2672-2673   ///
      str    CPTM2_21                  2674-2675   ///
      str    CPTM2_22                  2676-2677   ///
      str    CPTM2_23                  2678-2679   ///
      str    CPTM2_24                  2680-2681   ///
      str    CPTM2_25                  2682-2683   ///
      str    CPTM2_26                  2684-2685   ///
      str    CPTM2_27                  2686-2687   ///
      str    CPTM2_28                  2688-2689   ///
      str    CPTM2_29                  2690-2691   ///
      str    CPTM2_30                  2692-2693   ///
      str    CPTM2_31                  2694-2695   ///
      str    CPTM2_32                  2696-2697   ///
      str    CPTM2_33                  2698-2699   ///
      str    CPTM2_34                  2700-2701   ///
      str    CPTM2_35                  2702-2703   ///
      str    CPTM2_36                  2704-2705   ///
      str    CPTM2_37                  2706-2707   ///
      str    CPTM2_38                  2708-2709   ///
      str    CPTM2_39                  2710-2711   ///
      str    CPTM2_40                  2712-2713   ///
      str    CPTM2_41                  2714-2715   ///
      str    CPTM2_42                  2716-2717   ///
      str    CPTM2_43                  2718-2719   ///
      str    CPTM2_44                  2720-2721   ///
      str    CPTM2_45                  2722-2723   ///
      str    CPTM2_46                  2724-2725   ///
      str    CPTM2_47                  2726-2727   ///
      str    CPTM2_48                  2728-2729   ///
      str    CPTM2_49                  2730-2731   ///
      str    CPTM2_50                  2732-2733   ///
      str    CPTM2_51                  2734-2735   ///
      str    CPTM2_52                  2736-2737   ///
      str    CPTM2_53                  2738-2739   ///
      str    CPTM2_54                  2740-2741   ///
      str    CPTM2_55                  2742-2743   ///
      str    CPTM2_56                  2744-2745   ///
      str    CPTM2_57                  2746-2747   ///
      str    CPTM2_58                  2748-2749   ///
      str    CPTM2_59                  2750-2751   ///
      str    CPTM2_60                  2752-2753   ///
      str    CPTM2_61                  2754-2755   ///
      str    CPTM2_62                  2756-2757   ///
      str    CPTM2_63                  2758-2759   ///
      str    CPTM2_64                  2760-2761   ///
      str    CPTM2_65                  2762-2763   ///
      str    CPTM2_66                  2764-2765   ///
      str    CPTM2_67                  2766-2767   ///
      str    CPTM2_68                  2768-2769   ///
      str    CPTM2_69                  2770-2771   ///
      str    CPTM2_70                  2772-2773   ///
      str    CPTM2_71                  2774-2775   ///
      str    CPTM2_72                  2776-2777   ///
      str    CPTM2_73                  2778-2779   ///
      str    CPTM2_74                  2780-2781   ///
      str    CPTM2_75                  2782-2783   ///
      str    CPTM2_76                  2784-2785   ///
      str    CPTM2_77                  2786-2787   ///
      str    CPTM2_78                  2788-2789   ///
      str    CPTM2_79                  2790-2791   ///
      str    CPTM2_80                  2792-2793   ///
      str    CPTM2_81                  2794-2795   ///
      str    CPTM2_82                  2796-2797   ///
      str    CPTM2_83                  2798-2799   ///
      str    CPTM2_84                  2800-2801   ///
      str    CPTM2_85                  2802-2803   ///
      str    CPTM2_86                  2804-2805   ///
      str    CPTM2_87                  2806-2807   ///
      str    CPTM2_88                  2808-2809   ///
      str    CPTM2_89                  2810-2811   ///
      str    CPTM2_90                  2812-2813   ///
      str    CPTM2_91                  2814-2815   ///
      str    CPTM2_92                  2816-2817   ///
      str    CPTM2_93                  2818-2819   ///
      str    CPTM2_94                  2820-2821   ///
      str    CPTM2_95                  2822-2823   ///
      str    CPTM2_96                  2824-2825   ///
      str    CPTM2_97                  2826-2827   ///
      str    CPTM2_98                  2828-2829   ///
      str    CPTM2_99                  2830-2831   ///
      str    CPTM2_100                 2832-2833   ///
      str    CPTM2_101                 2834-2835   ///
      str    CPTM2_102                 2836-2837   ///
      str    CPTM2_103                 2838-2839   ///
      str    CPTM2_104                 2840-2841   ///
      str    CPTM2_105                 2842-2843   ///
      str    CPTM2_106                 2844-2845   ///
      str    CPTM2_107                 2846-2847   ///
      str    CPTM2_108                 2848-2849   ///
      str    CPTM2_109                 2850-2851   ///
      str    CPTM2_110                 2852-2853   ///
      str    CPTM2_111                 2854-2855   ///
      str    CPTM2_112                 2856-2857   ///
      str    CPTM2_113                 2858-2859   ///
      str    CPTM2_114                 2860-2861   ///
      str    CPTM2_115                 2862-2863   ///
      str    CPTM2_116                 2864-2865   ///
      str    CPTM2_117                 2866-2867   ///
      str    CPTM2_118                 2868-2869   ///
      str    CPTM2_119                 2870-2871   ///
      str    CPTM2_120                 2872-2873   ///
      str    CPTM2_121                 2874-2875   ///
      str    CPTM2_122                 2876-2877   ///
      str    CPTM2_123                 2878-2879   ///
      str    CPTM2_124                 2880-2881   ///
      str    CPTM2_125                 2882-2883   ///
      str    CPTM2_126                 2884-2885   ///
      str    CPTM2_127                 2886-2887   ///
      str    CPTM2_128                 2888-2889   ///
      str    CPTM2_129                 2890-2891   ///
      str    CPTM2_130                 2892-2893   ///
      str    CPTM2_131                 2894-2895   ///
      str    CPTM2_132                 2896-2897   ///
      str    CPTM2_133                 2898-2899   ///
      str    CPTM2_134                 2900-2901   ///
      str    CPTM2_135                 2902-2903   ///
      str    CPTM2_136                 2904-2905   ///
      str    CPTM2_137                 2906-2907   ///
      str    CPTM2_138                 2908-2909   ///
      str    CPTM2_139                 2910-2911   ///
      str    CPTM2_140                 2912-2913   ///
      str    CPTM2_141                 2914-2915   ///
      str    CPTM2_142                 2916-2917   ///
      str    CPTM2_143                 2918-2919   ///
      str    CPTM2_144                 2920-2921   ///
      str    CPTM2_145                 2922-2923   ///
      str    CPTM2_146                 2924-2925   ///
      str    CPTM2_147                 2926-2927   ///
      str    CPTM2_148                 2928-2929   ///
      str    CPTM2_149                 2930-2931   ///
      str    CPTM2_150                 2932-2933   ///
      str    CPTM2_151                 2934-2935   ///
      str    CPTM2_152                 2936-2937   ///
      str    CPTM2_153                 2938-2939   ///
      str    CPTM2_154                 2940-2941   ///
      str    CPTM2_155                 2942-2943   ///
      str    CPTM2_156                 2944-2945   ///
      str    CPTM2_157                 2946-2947   ///
      str    CPTM2_158                 2948-2949   ///
      str    CPTM2_159                 2950-2951   ///
      str    CPTM2_160                 2952-2953   ///
      str    CPTM2_161                 2954-2955   ///
      str    CPTM2_162                 2956-2957   ///
      str    CPTM2_163                 2958-2959   ///
      str    CPTM2_164                 2960-2961   ///
      str    CPTM2_165                 2962-2963   ///
      str    CPTM2_166                 2964-2965   ///
      str    CPTM2_167                 2966-2967   ///
      str    CPTM2_168                 2968-2969   ///
      str    CPTM2_169                 2970-2971   ///
      str    CPTM2_170                 2972-2973   ///
      str    CPTM2_171                 2974-2975   ///
      str    CPTM2_172                 2976-2977   ///
      str    CPTM2_173                 2978-2979   ///
      str    CPTM2_174                 2980-2981   ///
      str    CPTM2_175                 2982-2983   ///
      str    CPTM2_176                 2984-2985   ///
      str    CPTM2_177                 2986-2987   ///
      str    CPTM2_178                 2988-2989   ///
      str    CPTM2_179                 2990-2991   ///
      str    CPTM2_180                 2992-2993   ///
      str    CPTM2_181                 2994-2995   ///
      str    CPTM2_182                 2996-2997   ///
      str    CPTM2_183                 2998-2999   ///
      str    CPTM2_184                 3000-3001   ///
      str    CPTM2_185                 3002-3003   ///
      str    CPTM2_186                 3004-3005   ///
      str    CPTM2_187                 3006-3007   ///
      str    CPTM2_188                 3008-3009   ///
      str    CPTM2_189                 3010-3011   ///
      str    CPTM2_190                 3012-3013   ///
      str    CPTM2_191                 3014-3015   ///
      str    CPTM2_192                 3016-3017   ///
      str    CPTM2_193                 3018-3019   ///
      str    CPTM2_194                 3020-3021   ///
      str    CPTM2_195                 3022-3023   ///
      str    CPTM2_196                 3024-3025   ///
      str    CPTM2_197                 3026-3027   ///
      str    CPTM2_198                 3028-3029   ///
      str    CPTM2_199                 3030-3031   ///
      str    CPTM2_200                 3032-3033   ///
      long   DaysToEvent               3034-3039   ///
      int    DHOUR                     3040-3043   ///
      byte   DIED                      3044-3045   ///
      str    DISP_X                    3046-3047   ///
      byte   DISPUB04                  3048-3049   ///
      byte   DISPUNIFORM               3050-3051   ///
      byte   DMONTH                    3052-3053   ///
      byte   DQTR                      3054-3055   ///
      str    DSHOSPID                  3056-3072   ///
      long   DURATION                  3073-3078   ///
      byte   FEMALE                    3079-3080   ///
      byte   HCUP_ED                   3081-3082   ///
      byte   HCUP_OS                   3083-3084   ///
      int    HEART_RATE_X              3085-3088   ///
      byte   HISPANIC                  3089-3090   ///
      str    HISPANIC_X                3091-3165   ///
      byte   Homeless                  3166-3167   ///
      str    HOSP_NPI                  3168-3177   ///
      str    HOSPST                    3178-3179   ///
      str    I10_DX_Visit_Reason1      3180-3186   ///
      str    I10_DX_Visit_Reason2      3187-3193   ///
      str    I10_DX_Visit_Reason3      3194-3200   ///
      str    I10_DX1                   3201-3207   ///
      str    I10_DX2                   3208-3214   ///
      str    I10_DX3                   3215-3221   ///
      str    I10_DX4                   3222-3228   ///
      str    I10_DX5                   3229-3235   ///
      str    I10_DX6                   3236-3242   ///
      str    I10_DX7                   3243-3249   ///
      str    I10_DX8                   3250-3256   ///
      str    I10_DX9                   3257-3263   ///
      str    I10_DX10                  3264-3270   ///
      str    I10_DX11                  3271-3277   ///
      str    I10_DX12                  3278-3284   ///
      str    I10_DX13                  3285-3291   ///
      str    I10_DX14                  3292-3298   ///
      str    I10_DX15                  3299-3305   ///
      str    I10_DX16                  3306-3312   ///
      str    I10_DX17                  3313-3319   ///
      str    I10_DX18                  3320-3326   ///
      str    I10_DX19                  3327-3333   ///
      str    I10_DX20                  3334-3340   ///
      str    I10_DX21                  3341-3347   ///
      str    I10_DX22                  3348-3354   ///
      str    I10_DX23                  3355-3361   ///
      str    I10_DX24                  3362-3368   ///
      str    I10_DX25                  3369-3375   ///
      str    I10_DX26                  3376-3382   ///
      str    I10_DX27                  3383-3389   ///
      str    I10_DX28                  3390-3396   ///
      str    I10_DX29                  3397-3403   ///
      str    I10_DX30                  3404-3410   ///
      str    I10_DX31                  3411-3417   ///
      str    I10_DX32                  3418-3424   ///
      str    I10_DX33                  3425-3431   ///
      str    I10_DX34                  3432-3438   ///
      int    I10_NDX                   3439-3441   ///
      int    I10_PROCTYPE              3442-3444   ///
      double KEY                       3445-3459   ///
      long   LOS                       3460-3464   ///
      long   LOS_X                     3465-3470   ///
      str    MARITALSTATUS_X           3471        ///
      str    MARITALSTATUSUB04         3472        ///
      long   MDNUM1_R                  3473-3481   ///
      long   MDNUM2_R                  3482-3490   ///
      byte   MEDINCSTQ                 3491-3492   ///
      int    NCPT                      3493-3496   ///
      str    OPservice                 3497        ///
      double OS_TIME                   3498-3508   ///
      byte   PAY1                      3509-3510   ///
      str    PAY1_X                    3511-3515   ///
      byte   PAY2                      3516-3517   ///
      str    PAY2_X                    3518-3522   ///
      byte   PAY3                      3523-3524   ///
      str    PAY3_X                    3525-3529   ///
      int    PL_CBSA                   3530-3532   ///
      byte   PL_NCHS                   3533-3534   ///
      byte   PL_RUCC                   3535-3536   ///
      byte   PL_UIC                    3537-3538   ///
      byte   PL_UR_CAT4                3539-3540   ///
      str    PointOfOrigin_X           3541        ///
      str    PointOfOriginUB04         3542        ///
      str    PSTATE                    3543-3544   ///
      str    PSTATE_GEO                3545-3546   ///
      long   PSTCO                     3547-3551   ///
      long   PSTCO_GEO                 3552-3556   ///
      byte   RACE                      3557-3558   ///
      str    RACE_X                    3559-3609   ///
      byte   STATE_AS                  3610-3611   ///
      byte   STATE_ED                  3612-3613   ///
      byte   STATE_OS                  3614-3615   ///
      double TOTCHG                    3616-3625   ///
      double TOTCHG_X                  3626-3640   ///
      long   VisitLink                 3641-3649   ///
      int    YEAR                      3650-3653   ///
      str    ZIP                       3654-3658   ///
      str    ZIP3                      3659-3661   ///
      int    ZIPINC_QRTL               3662-3664   ///
      int    AYEAR                     3665-3668   ///
      byte   BMONTH                    3669-3670   ///
      int    BYEAR                     3671-3674   ///
      using  "NY_SEDD_2019_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BLOOD                    "Pints of blood furnished to the patient"
label var BP_DIASTOLIC_X           "Diastolic blood pressure of the patient, as received from data source"
label var BP_SYSTOLIC_X            "Systolic blood pressure of the patient, as received from data source"
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
label var DaysToEvent              "Days from 'start date' to admission"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DSHOSPID                 "Data source hospital identifier"
label var DURATION                 "Elapsed time for hospital care in hours and minutes"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HEART_RATE_X             "Heart rate of the patient, as received from data source"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
label var HOSP_NPI                 "Hospital NPI"
label var HOSPST                   "Hospital state postal code"
label var I10_DX_Visit_Reason1     "ICD-10-CM Reason for visit diagnosis 1"
label var I10_DX_Visit_Reason2     "ICD-10-CM Reason for visit diagnosis 2"
label var I10_DX_Visit_Reason3     "ICD-10-CM Reason for visit diagnosis 3"
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
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MARITALSTATUS_X          "Patient's marital status (as received from source)"
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
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
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes (RUCC)"
label var PL_UIC                   "Patient location: Urban Influence Codes"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
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
recode BLOOD                     (-99999 -88888 -66666=.)
recode BP_DIASTOLIC_X            (-999 -888 -666=.)
recode BP_SYSTOLIC_X             (-999 -888 -666=.)
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
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HEART_RATE_X              (-999 -888 -666=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
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
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
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

save "NY_SEDD_2019_CORE.dta", replace
