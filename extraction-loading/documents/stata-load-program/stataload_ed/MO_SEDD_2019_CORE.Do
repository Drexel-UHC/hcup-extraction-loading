/*****************************************************************************
* Creation Date: 09/20/2021   
* MO_SEDD_2019_CORE.Do
* This program will load the 2019 MO ASCII CORE File into Stata.
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
      str    BILLTYPE                    18-  21   ///
      str    CPT1                        22-  26   ///
      str    CPT2                        27-  31   ///
      str    CPT3                        32-  36   ///
      str    CPT4                        37-  41   ///
      str    CPT5                        42-  46   ///
      str    CPT6                        47-  51   ///
      str    CPT7                        52-  56   ///
      str    CPT8                        57-  61   ///
      str    CPT9                        62-  66   ///
      str    CPT10                       67-  71   ///
      str    CPT11                       72-  76   ///
      str    CPT12                       77-  81   ///
      str    CPT13                       82-  86   ///
      str    CPT14                       87-  91   ///
      str    CPT15                       92-  96   ///
      str    CPT16                       97- 101   ///
      str    CPT17                      102- 106   ///
      str    CPT18                      107- 111   ///
      str    CPT19                      112- 116   ///
      str    CPT20                      117- 121   ///
      str    CPT21                      122- 126   ///
      str    CPT22                      127- 131   ///
      str    CPT23                      132- 136   ///
      str    CPT24                      137- 141   ///
      str    CPT25                      142- 146   ///
      str    CPT26                      147- 151   ///
      str    CPT27                      152- 156   ///
      str    CPT28                      157- 161   ///
      str    CPT29                      162- 166   ///
      str    CPT30                      167- 171   ///
      str    CPT31                      172- 176   ///
      str    CPT32                      177- 181   ///
      str    CPT33                      182- 186   ///
      str    CPT34                      187- 191   ///
      str    CPT35                      192- 196   ///
      str    CPT36                      197- 201   ///
      str    CPT37                      202- 206   ///
      str    CPT38                      207- 211   ///
      str    CPT39                      212- 216   ///
      str    CPT40                      217- 221   ///
      str    CPT41                      222- 226   ///
      str    CPT42                      227- 231   ///
      str    CPT43                      232- 236   ///
      str    CPT44                      237- 241   ///
      str    CPT45                      242- 246   ///
      str    CPT46                      247- 251   ///
      str    CPT47                      252- 256   ///
      str    CPT48                      257- 261   ///
      str    CPT49                      262- 266   ///
      str    CPT50                      267- 271   ///
      str    CPT51                      272- 276   ///
      str    CPT52                      277- 281   ///
      str    CPT53                      282- 286   ///
      str    CPT54                      287- 291   ///
      str    CPT55                      292- 296   ///
      str    CPT56                      297- 301   ///
      str    CPT57                      302- 306   ///
      str    CPT58                      307- 311   ///
      str    CPT59                      312- 316   ///
      str    CPT60                      317- 321   ///
      str    CPT61                      322- 326   ///
      str    CPT62                      327- 331   ///
      str    CPT63                      332- 336   ///
      str    CPT64                      337- 341   ///
      str    CPT65                      342- 346   ///
      str    CPT66                      347- 351   ///
      str    CPT67                      352- 356   ///
      str    CPT68                      357- 361   ///
      str    CPT69                      362- 366   ///
      str    CPT70                      367- 371   ///
      str    CPT71                      372- 376   ///
      str    CPT72                      377- 381   ///
      str    CPT73                      382- 386   ///
      str    CPT74                      387- 391   ///
      str    CPT75                      392- 396   ///
      str    CPT76                      397- 401   ///
      str    CPT77                      402- 406   ///
      str    CPT78                      407- 411   ///
      str    CPT79                      412- 416   ///
      str    CPT80                      417- 421   ///
      str    CPT81                      422- 426   ///
      str    CPT82                      427- 431   ///
      str    CPT83                      432- 436   ///
      str    CPT84                      437- 441   ///
      str    CPT85                      442- 446   ///
      str    CPT86                      447- 451   ///
      str    CPT87                      452- 456   ///
      str    CPT88                      457- 461   ///
      str    CPT89                      462- 466   ///
      str    CPT90                      467- 471   ///
      str    CPT91                      472- 476   ///
      str    CPT92                      477- 481   ///
      str    CPT93                      482- 486   ///
      str    CPT94                      487- 491   ///
      str    CPT95                      492- 496   ///
      str    CPT96                      497- 501   ///
      str    CPT97                      502- 506   ///
      str    CPT98                      507- 511   ///
      str    CPT99                      512- 516   ///
      str    CPT100                     517- 521   ///
      str    CPT101                     522- 526   ///
      str    CPT102                     527- 531   ///
      str    CPT103                     532- 536   ///
      str    CPT104                     537- 541   ///
      str    CPT105                     542- 546   ///
      str    CPT106                     547- 551   ///
      str    CPT107                     552- 556   ///
      str    CPT108                     557- 561   ///
      str    CPT109                     562- 566   ///
      str    CPT110                     567- 571   ///
      str    CPT111                     572- 576   ///
      str    CPT112                     577- 581   ///
      str    CPT113                     582- 586   ///
      str    CPT114                     587- 591   ///
      str    CPT115                     592- 596   ///
      str    CPT116                     597- 601   ///
      str    CPT117                     602- 606   ///
      str    CPT118                     607- 611   ///
      str    CPT119                     612- 616   ///
      str    CPT120                     617- 621   ///
      str    CPT121                     622- 626   ///
      str    CPT122                     627- 631   ///
      str    CPT123                     632- 636   ///
      str    CPT124                     637- 641   ///
      str    CPT125                     642- 646   ///
      str    CPT126                     647- 651   ///
      str    CPT127                     652- 656   ///
      str    CPT128                     657- 661   ///
      str    CPT129                     662- 666   ///
      str    CPT130                     667- 671   ///
      str    CPT131                     672- 676   ///
      str    CPT132                     677- 681   ///
      str    CPT133                     682- 686   ///
      str    CPT134                     687- 691   ///
      str    CPT135                     692- 696   ///
      str    CPT136                     697- 701   ///
      str    CPT137                     702- 706   ///
      str    CPT138                     707- 711   ///
      str    CPT139                     712- 716   ///
      str    CPT140                     717- 721   ///
      str    CPT141                     722- 726   ///
      str    CPT142                     727- 731   ///
      str    CPT143                     732- 736   ///
      str    CPT144                     737- 741   ///
      str    CPT145                     742- 746   ///
      str    CPT146                     747- 751   ///
      str    CPT147                     752- 756   ///
      str    CPT148                     757- 761   ///
      str    CPT149                     762- 766   ///
      str    CPT150                     767- 771   ///
      str    CPT151                     772- 776   ///
      str    CPT152                     777- 781   ///
      str    CPT153                     782- 786   ///
      str    CPT154                     787- 791   ///
      str    CPT155                     792- 796   ///
      str    CPT156                     797- 801   ///
      str    CPT157                     802- 806   ///
      str    CPT158                     807- 811   ///
      str    CPT159                     812- 816   ///
      str    CPT160                     817- 821   ///
      str    CPT161                     822- 826   ///
      str    CPT162                     827- 831   ///
      str    CPT163                     832- 836   ///
      str    CPT164                     837- 841   ///
      str    CPT165                     842- 846   ///
      str    CPT166                     847- 851   ///
      str    CPT167                     852- 856   ///
      str    CPT168                     857- 861   ///
      str    CPT169                     862- 866   ///
      str    CPT170                     867- 871   ///
      str    CPT171                     872- 876   ///
      str    CPT172                     877- 881   ///
      str    CPT173                     882- 886   ///
      str    CPT174                     887- 891   ///
      str    CPT175                     892- 896   ///
      str    CPT176                     897- 901   ///
      str    CPT177                     902- 906   ///
      str    CPT178                     907- 911   ///
      str    CPT179                     912- 916   ///
      str    CPT180                     917- 921   ///
      str    CPT181                     922- 926   ///
      str    CPT182                     927- 931   ///
      str    CPT183                     932- 936   ///
      str    CPT184                     937- 941   ///
      str    CPT185                     942- 946   ///
      str    CPT186                     947- 951   ///
      str    CPT187                     952- 956   ///
      str    CPT188                     957- 961   ///
      str    CPT189                     962- 966   ///
      str    CPT190                     967- 971   ///
      str    CPT191                     972- 976   ///
      str    CPT192                     977- 981   ///
      str    CPT193                     982- 986   ///
      str    CPT194                     987- 991   ///
      str    CPT195                     992- 996   ///
      str    CPT196                     997-1001   ///
      str    CPT197                    1002-1006   ///
      str    CPT198                    1007-1011   ///
      str    CPT199                    1012-1016   ///
      str    CPT200                    1017-1021   ///
      int    CPTCCS1                   1022-1024   ///
      int    CPTCCS2                   1025-1027   ///
      int    CPTCCS3                   1028-1030   ///
      int    CPTCCS4                   1031-1033   ///
      int    CPTCCS5                   1034-1036   ///
      int    CPTCCS6                   1037-1039   ///
      int    CPTCCS7                   1040-1042   ///
      int    CPTCCS8                   1043-1045   ///
      int    CPTCCS9                   1046-1048   ///
      int    CPTCCS10                  1049-1051   ///
      int    CPTCCS11                  1052-1054   ///
      int    CPTCCS12                  1055-1057   ///
      int    CPTCCS13                  1058-1060   ///
      int    CPTCCS14                  1061-1063   ///
      int    CPTCCS15                  1064-1066   ///
      int    CPTCCS16                  1067-1069   ///
      int    CPTCCS17                  1070-1072   ///
      int    CPTCCS18                  1073-1075   ///
      int    CPTCCS19                  1076-1078   ///
      int    CPTCCS20                  1079-1081   ///
      int    CPTCCS21                  1082-1084   ///
      int    CPTCCS22                  1085-1087   ///
      int    CPTCCS23                  1088-1090   ///
      int    CPTCCS24                  1091-1093   ///
      int    CPTCCS25                  1094-1096   ///
      int    CPTCCS26                  1097-1099   ///
      int    CPTCCS27                  1100-1102   ///
      int    CPTCCS28                  1103-1105   ///
      int    CPTCCS29                  1106-1108   ///
      int    CPTCCS30                  1109-1111   ///
      int    CPTCCS31                  1112-1114   ///
      int    CPTCCS32                  1115-1117   ///
      int    CPTCCS33                  1118-1120   ///
      int    CPTCCS34                  1121-1123   ///
      int    CPTCCS35                  1124-1126   ///
      int    CPTCCS36                  1127-1129   ///
      int    CPTCCS37                  1130-1132   ///
      int    CPTCCS38                  1133-1135   ///
      int    CPTCCS39                  1136-1138   ///
      int    CPTCCS40                  1139-1141   ///
      int    CPTCCS41                  1142-1144   ///
      int    CPTCCS42                  1145-1147   ///
      int    CPTCCS43                  1148-1150   ///
      int    CPTCCS44                  1151-1153   ///
      int    CPTCCS45                  1154-1156   ///
      int    CPTCCS46                  1157-1159   ///
      int    CPTCCS47                  1160-1162   ///
      int    CPTCCS48                  1163-1165   ///
      int    CPTCCS49                  1166-1168   ///
      int    CPTCCS50                  1169-1171   ///
      int    CPTCCS51                  1172-1174   ///
      int    CPTCCS52                  1175-1177   ///
      int    CPTCCS53                  1178-1180   ///
      int    CPTCCS54                  1181-1183   ///
      int    CPTCCS55                  1184-1186   ///
      int    CPTCCS56                  1187-1189   ///
      int    CPTCCS57                  1190-1192   ///
      int    CPTCCS58                  1193-1195   ///
      int    CPTCCS59                  1196-1198   ///
      int    CPTCCS60                  1199-1201   ///
      int    CPTCCS61                  1202-1204   ///
      int    CPTCCS62                  1205-1207   ///
      int    CPTCCS63                  1208-1210   ///
      int    CPTCCS64                  1211-1213   ///
      int    CPTCCS65                  1214-1216   ///
      int    CPTCCS66                  1217-1219   ///
      int    CPTCCS67                  1220-1222   ///
      int    CPTCCS68                  1223-1225   ///
      int    CPTCCS69                  1226-1228   ///
      int    CPTCCS70                  1229-1231   ///
      int    CPTCCS71                  1232-1234   ///
      int    CPTCCS72                  1235-1237   ///
      int    CPTCCS73                  1238-1240   ///
      int    CPTCCS74                  1241-1243   ///
      int    CPTCCS75                  1244-1246   ///
      int    CPTCCS76                  1247-1249   ///
      int    CPTCCS77                  1250-1252   ///
      int    CPTCCS78                  1253-1255   ///
      int    CPTCCS79                  1256-1258   ///
      int    CPTCCS80                  1259-1261   ///
      int    CPTCCS81                  1262-1264   ///
      int    CPTCCS82                  1265-1267   ///
      int    CPTCCS83                  1268-1270   ///
      int    CPTCCS84                  1271-1273   ///
      int    CPTCCS85                  1274-1276   ///
      int    CPTCCS86                  1277-1279   ///
      int    CPTCCS87                  1280-1282   ///
      int    CPTCCS88                  1283-1285   ///
      int    CPTCCS89                  1286-1288   ///
      int    CPTCCS90                  1289-1291   ///
      int    CPTCCS91                  1292-1294   ///
      int    CPTCCS92                  1295-1297   ///
      int    CPTCCS93                  1298-1300   ///
      int    CPTCCS94                  1301-1303   ///
      int    CPTCCS95                  1304-1306   ///
      int    CPTCCS96                  1307-1309   ///
      int    CPTCCS97                  1310-1312   ///
      int    CPTCCS98                  1313-1315   ///
      int    CPTCCS99                  1316-1318   ///
      int    CPTCCS100                 1319-1321   ///
      int    CPTCCS101                 1322-1324   ///
      int    CPTCCS102                 1325-1327   ///
      int    CPTCCS103                 1328-1330   ///
      int    CPTCCS104                 1331-1333   ///
      int    CPTCCS105                 1334-1336   ///
      int    CPTCCS106                 1337-1339   ///
      int    CPTCCS107                 1340-1342   ///
      int    CPTCCS108                 1343-1345   ///
      int    CPTCCS109                 1346-1348   ///
      int    CPTCCS110                 1349-1351   ///
      int    CPTCCS111                 1352-1354   ///
      int    CPTCCS112                 1355-1357   ///
      int    CPTCCS113                 1358-1360   ///
      int    CPTCCS114                 1361-1363   ///
      int    CPTCCS115                 1364-1366   ///
      int    CPTCCS116                 1367-1369   ///
      int    CPTCCS117                 1370-1372   ///
      int    CPTCCS118                 1373-1375   ///
      int    CPTCCS119                 1376-1378   ///
      int    CPTCCS120                 1379-1381   ///
      int    CPTCCS121                 1382-1384   ///
      int    CPTCCS122                 1385-1387   ///
      int    CPTCCS123                 1388-1390   ///
      int    CPTCCS124                 1391-1393   ///
      int    CPTCCS125                 1394-1396   ///
      int    CPTCCS126                 1397-1399   ///
      int    CPTCCS127                 1400-1402   ///
      int    CPTCCS128                 1403-1405   ///
      int    CPTCCS129                 1406-1408   ///
      int    CPTCCS130                 1409-1411   ///
      int    CPTCCS131                 1412-1414   ///
      int    CPTCCS132                 1415-1417   ///
      int    CPTCCS133                 1418-1420   ///
      int    CPTCCS134                 1421-1423   ///
      int    CPTCCS135                 1424-1426   ///
      int    CPTCCS136                 1427-1429   ///
      int    CPTCCS137                 1430-1432   ///
      int    CPTCCS138                 1433-1435   ///
      int    CPTCCS139                 1436-1438   ///
      int    CPTCCS140                 1439-1441   ///
      int    CPTCCS141                 1442-1444   ///
      int    CPTCCS142                 1445-1447   ///
      int    CPTCCS143                 1448-1450   ///
      int    CPTCCS144                 1451-1453   ///
      int    CPTCCS145                 1454-1456   ///
      int    CPTCCS146                 1457-1459   ///
      int    CPTCCS147                 1460-1462   ///
      int    CPTCCS148                 1463-1465   ///
      int    CPTCCS149                 1466-1468   ///
      int    CPTCCS150                 1469-1471   ///
      int    CPTCCS151                 1472-1474   ///
      int    CPTCCS152                 1475-1477   ///
      int    CPTCCS153                 1478-1480   ///
      int    CPTCCS154                 1481-1483   ///
      int    CPTCCS155                 1484-1486   ///
      int    CPTCCS156                 1487-1489   ///
      int    CPTCCS157                 1490-1492   ///
      int    CPTCCS158                 1493-1495   ///
      int    CPTCCS159                 1496-1498   ///
      int    CPTCCS160                 1499-1501   ///
      int    CPTCCS161                 1502-1504   ///
      int    CPTCCS162                 1505-1507   ///
      int    CPTCCS163                 1508-1510   ///
      int    CPTCCS164                 1511-1513   ///
      int    CPTCCS165                 1514-1516   ///
      int    CPTCCS166                 1517-1519   ///
      int    CPTCCS167                 1520-1522   ///
      int    CPTCCS168                 1523-1525   ///
      int    CPTCCS169                 1526-1528   ///
      int    CPTCCS170                 1529-1531   ///
      int    CPTCCS171                 1532-1534   ///
      int    CPTCCS172                 1535-1537   ///
      int    CPTCCS173                 1538-1540   ///
      int    CPTCCS174                 1541-1543   ///
      int    CPTCCS175                 1544-1546   ///
      int    CPTCCS176                 1547-1549   ///
      int    CPTCCS177                 1550-1552   ///
      int    CPTCCS178                 1553-1555   ///
      int    CPTCCS179                 1556-1558   ///
      int    CPTCCS180                 1559-1561   ///
      int    CPTCCS181                 1562-1564   ///
      int    CPTCCS182                 1565-1567   ///
      int    CPTCCS183                 1568-1570   ///
      int    CPTCCS184                 1571-1573   ///
      int    CPTCCS185                 1574-1576   ///
      int    CPTCCS186                 1577-1579   ///
      int    CPTCCS187                 1580-1582   ///
      int    CPTCCS188                 1583-1585   ///
      int    CPTCCS189                 1586-1588   ///
      int    CPTCCS190                 1589-1591   ///
      int    CPTCCS191                 1592-1594   ///
      int    CPTCCS192                 1595-1597   ///
      int    CPTCCS193                 1598-1600   ///
      int    CPTCCS194                 1601-1603   ///
      int    CPTCCS195                 1604-1606   ///
      int    CPTCCS196                 1607-1609   ///
      int    CPTCCS197                 1610-1612   ///
      int    CPTCCS198                 1613-1615   ///
      int    CPTCCS199                 1616-1618   ///
      int    CPTCCS200                 1619-1621   ///
      int    CPTDAY1                   1622-1624   ///
      int    CPTDAY2                   1625-1627   ///
      int    CPTDAY3                   1628-1630   ///
      int    CPTDAY4                   1631-1633   ///
      int    CPTDAY5                   1634-1636   ///
      int    CPTDAY6                   1637-1639   ///
      int    CPTDAY7                   1640-1642   ///
      int    CPTDAY8                   1643-1645   ///
      int    CPTDAY9                   1646-1648   ///
      int    CPTDAY10                  1649-1651   ///
      int    CPTDAY11                  1652-1654   ///
      int    CPTDAY12                  1655-1657   ///
      int    CPTDAY13                  1658-1660   ///
      int    CPTDAY14                  1661-1663   ///
      int    CPTDAY15                  1664-1666   ///
      int    CPTDAY16                  1667-1669   ///
      int    CPTDAY17                  1670-1672   ///
      int    CPTDAY18                  1673-1675   ///
      int    CPTDAY19                  1676-1678   ///
      int    CPTDAY20                  1679-1681   ///
      int    CPTDAY21                  1682-1684   ///
      int    CPTDAY22                  1685-1687   ///
      int    CPTDAY23                  1688-1690   ///
      int    CPTDAY24                  1691-1693   ///
      int    CPTDAY25                  1694-1696   ///
      int    CPTDAY26                  1697-1699   ///
      int    CPTDAY27                  1700-1702   ///
      int    CPTDAY28                  1703-1705   ///
      int    CPTDAY29                  1706-1708   ///
      int    CPTDAY30                  1709-1711   ///
      int    CPTDAY31                  1712-1714   ///
      int    CPTDAY32                  1715-1717   ///
      int    CPTDAY33                  1718-1720   ///
      int    CPTDAY34                  1721-1723   ///
      int    CPTDAY35                  1724-1726   ///
      int    CPTDAY36                  1727-1729   ///
      int    CPTDAY37                  1730-1732   ///
      int    CPTDAY38                  1733-1735   ///
      int    CPTDAY39                  1736-1738   ///
      int    CPTDAY40                  1739-1741   ///
      int    CPTDAY41                  1742-1744   ///
      int    CPTDAY42                  1745-1747   ///
      int    CPTDAY43                  1748-1750   ///
      int    CPTDAY44                  1751-1753   ///
      int    CPTDAY45                  1754-1756   ///
      int    CPTDAY46                  1757-1759   ///
      int    CPTDAY47                  1760-1762   ///
      int    CPTDAY48                  1763-1765   ///
      int    CPTDAY49                  1766-1768   ///
      int    CPTDAY50                  1769-1771   ///
      int    CPTDAY51                  1772-1774   ///
      int    CPTDAY52                  1775-1777   ///
      int    CPTDAY53                  1778-1780   ///
      int    CPTDAY54                  1781-1783   ///
      int    CPTDAY55                  1784-1786   ///
      int    CPTDAY56                  1787-1789   ///
      int    CPTDAY57                  1790-1792   ///
      int    CPTDAY58                  1793-1795   ///
      int    CPTDAY59                  1796-1798   ///
      int    CPTDAY60                  1799-1801   ///
      int    CPTDAY61                  1802-1804   ///
      int    CPTDAY62                  1805-1807   ///
      int    CPTDAY63                  1808-1810   ///
      int    CPTDAY64                  1811-1813   ///
      int    CPTDAY65                  1814-1816   ///
      int    CPTDAY66                  1817-1819   ///
      int    CPTDAY67                  1820-1822   ///
      int    CPTDAY68                  1823-1825   ///
      int    CPTDAY69                  1826-1828   ///
      int    CPTDAY70                  1829-1831   ///
      int    CPTDAY71                  1832-1834   ///
      int    CPTDAY72                  1835-1837   ///
      int    CPTDAY73                  1838-1840   ///
      int    CPTDAY74                  1841-1843   ///
      int    CPTDAY75                  1844-1846   ///
      int    CPTDAY76                  1847-1849   ///
      int    CPTDAY77                  1850-1852   ///
      int    CPTDAY78                  1853-1855   ///
      int    CPTDAY79                  1856-1858   ///
      int    CPTDAY80                  1859-1861   ///
      int    CPTDAY81                  1862-1864   ///
      int    CPTDAY82                  1865-1867   ///
      int    CPTDAY83                  1868-1870   ///
      int    CPTDAY84                  1871-1873   ///
      int    CPTDAY85                  1874-1876   ///
      int    CPTDAY86                  1877-1879   ///
      int    CPTDAY87                  1880-1882   ///
      int    CPTDAY88                  1883-1885   ///
      int    CPTDAY89                  1886-1888   ///
      int    CPTDAY90                  1889-1891   ///
      int    CPTDAY91                  1892-1894   ///
      int    CPTDAY92                  1895-1897   ///
      int    CPTDAY93                  1898-1900   ///
      int    CPTDAY94                  1901-1903   ///
      int    CPTDAY95                  1904-1906   ///
      int    CPTDAY96                  1907-1909   ///
      int    CPTDAY97                  1910-1912   ///
      int    CPTDAY98                  1913-1915   ///
      int    CPTDAY99                  1916-1918   ///
      int    CPTDAY100                 1919-1921   ///
      int    CPTDAY101                 1922-1924   ///
      int    CPTDAY102                 1925-1927   ///
      int    CPTDAY103                 1928-1930   ///
      int    CPTDAY104                 1931-1933   ///
      int    CPTDAY105                 1934-1936   ///
      int    CPTDAY106                 1937-1939   ///
      int    CPTDAY107                 1940-1942   ///
      int    CPTDAY108                 1943-1945   ///
      int    CPTDAY109                 1946-1948   ///
      int    CPTDAY110                 1949-1951   ///
      int    CPTDAY111                 1952-1954   ///
      int    CPTDAY112                 1955-1957   ///
      int    CPTDAY113                 1958-1960   ///
      int    CPTDAY114                 1961-1963   ///
      int    CPTDAY115                 1964-1966   ///
      int    CPTDAY116                 1967-1969   ///
      int    CPTDAY117                 1970-1972   ///
      int    CPTDAY118                 1973-1975   ///
      int    CPTDAY119                 1976-1978   ///
      int    CPTDAY120                 1979-1981   ///
      int    CPTDAY121                 1982-1984   ///
      int    CPTDAY122                 1985-1987   ///
      int    CPTDAY123                 1988-1990   ///
      int    CPTDAY124                 1991-1993   ///
      int    CPTDAY125                 1994-1996   ///
      int    CPTDAY126                 1997-1999   ///
      int    CPTDAY127                 2000-2002   ///
      int    CPTDAY128                 2003-2005   ///
      int    CPTDAY129                 2006-2008   ///
      int    CPTDAY130                 2009-2011   ///
      int    CPTDAY131                 2012-2014   ///
      int    CPTDAY132                 2015-2017   ///
      int    CPTDAY133                 2018-2020   ///
      int    CPTDAY134                 2021-2023   ///
      int    CPTDAY135                 2024-2026   ///
      int    CPTDAY136                 2027-2029   ///
      int    CPTDAY137                 2030-2032   ///
      int    CPTDAY138                 2033-2035   ///
      int    CPTDAY139                 2036-2038   ///
      int    CPTDAY140                 2039-2041   ///
      int    CPTDAY141                 2042-2044   ///
      int    CPTDAY142                 2045-2047   ///
      int    CPTDAY143                 2048-2050   ///
      int    CPTDAY144                 2051-2053   ///
      int    CPTDAY145                 2054-2056   ///
      int    CPTDAY146                 2057-2059   ///
      int    CPTDAY147                 2060-2062   ///
      int    CPTDAY148                 2063-2065   ///
      int    CPTDAY149                 2066-2068   ///
      int    CPTDAY150                 2069-2071   ///
      int    CPTDAY151                 2072-2074   ///
      int    CPTDAY152                 2075-2077   ///
      int    CPTDAY153                 2078-2080   ///
      int    CPTDAY154                 2081-2083   ///
      int    CPTDAY155                 2084-2086   ///
      int    CPTDAY156                 2087-2089   ///
      int    CPTDAY157                 2090-2092   ///
      int    CPTDAY158                 2093-2095   ///
      int    CPTDAY159                 2096-2098   ///
      int    CPTDAY160                 2099-2101   ///
      int    CPTDAY161                 2102-2104   ///
      int    CPTDAY162                 2105-2107   ///
      int    CPTDAY163                 2108-2110   ///
      int    CPTDAY164                 2111-2113   ///
      int    CPTDAY165                 2114-2116   ///
      int    CPTDAY166                 2117-2119   ///
      int    CPTDAY167                 2120-2122   ///
      int    CPTDAY168                 2123-2125   ///
      int    CPTDAY169                 2126-2128   ///
      int    CPTDAY170                 2129-2131   ///
      int    CPTDAY171                 2132-2134   ///
      int    CPTDAY172                 2135-2137   ///
      int    CPTDAY173                 2138-2140   ///
      int    CPTDAY174                 2141-2143   ///
      int    CPTDAY175                 2144-2146   ///
      int    CPTDAY176                 2147-2149   ///
      int    CPTDAY177                 2150-2152   ///
      int    CPTDAY178                 2153-2155   ///
      int    CPTDAY179                 2156-2158   ///
      int    CPTDAY180                 2159-2161   ///
      int    CPTDAY181                 2162-2164   ///
      int    CPTDAY182                 2165-2167   ///
      int    CPTDAY183                 2168-2170   ///
      int    CPTDAY184                 2171-2173   ///
      int    CPTDAY185                 2174-2176   ///
      int    CPTDAY186                 2177-2179   ///
      int    CPTDAY187                 2180-2182   ///
      int    CPTDAY188                 2183-2185   ///
      int    CPTDAY189                 2186-2188   ///
      int    CPTDAY190                 2189-2191   ///
      int    CPTDAY191                 2192-2194   ///
      int    CPTDAY192                 2195-2197   ///
      int    CPTDAY193                 2198-2200   ///
      int    CPTDAY194                 2201-2203   ///
      int    CPTDAY195                 2204-2206   ///
      int    CPTDAY196                 2207-2209   ///
      int    CPTDAY197                 2210-2212   ///
      int    CPTDAY198                 2213-2215   ///
      int    CPTDAY199                 2216-2218   ///
      int    CPTDAY200                 2219-2221   ///
      long   DaysToEvent               2222-2227   ///
      int    DHOUR                     2228-2231   ///
      byte   DIED                      2232-2233   ///
      str    DISP_X                    2234-2235   ///
      byte   DISPUB04                  2236-2237   ///
      byte   DISPUNIFORM               2238-2239   ///
      byte   DMONTH                    2240-2241   ///
      byte   DQTR                      2242-2243   ///
      long   DURATION                  2244-2249   ///
      byte   FEMALE                    2250-2251   ///
      byte   HCUP_ED                   2252-2253   ///
      byte   HCUP_OS                   2254-2255   ///
      byte   HISPANIC                  2256-2257   ///
      str    HISPANIC_X                2258        ///
      byte   Homeless                  2259-2260   ///
      str    HOSPST                    2261-2262   ///
      str    I10_DX1                   2263-2269   ///
      str    I10_DX2                   2270-2276   ///
      str    I10_DX3                   2277-2283   ///
      str    I10_DX4                   2284-2290   ///
      str    I10_DX5                   2291-2297   ///
      str    I10_DX6                   2298-2304   ///
      str    I10_DX7                   2305-2311   ///
      str    I10_DX8                   2312-2318   ///
      str    I10_DX9                   2319-2325   ///
      str    I10_DX10                  2326-2332   ///
      str    I10_DX11                  2333-2339   ///
      str    I10_DX12                  2340-2346   ///
      str    I10_DX13                  2347-2353   ///
      str    I10_DX14                  2354-2360   ///
      str    I10_DX15                  2361-2367   ///
      str    I10_DX16                  2368-2374   ///
      str    I10_DX17                  2375-2381   ///
      str    I10_DX18                  2382-2388   ///
      str    I10_DX19                  2389-2395   ///
      str    I10_DX20                  2396-2402   ///
      str    I10_DX21                  2403-2409   ///
      str    I10_DX22                  2410-2416   ///
      str    I10_DX23                  2417-2423   ///
      str    I10_DX24                  2424-2430   ///
      str    I10_DX25                  2431-2437   ///
      str    I10_DX26                  2438-2444   ///
      str    I10_DX27                  2445-2451   ///
      str    I10_DX28                  2452-2458   ///
      str    I10_DX29                  2459-2465   ///
      str    I10_DX30                  2466-2472   ///
      int    I10_NDX                   2473-2475   ///
      int    I10_NPR                   2476-2478   ///
      byte   I10_ORPROC                2479-2480   ///
      str    I10_PR1                   2481-2487   ///
      str    I10_PR2                   2488-2494   ///
      str    I10_PR3                   2495-2501   ///
      str    I10_PR4                   2502-2508   ///
      str    I10_PR5                   2509-2515   ///
      str    I10_PR6                   2516-2522   ///
      str    I10_PR7                   2523-2529   ///
      str    I10_PR8                   2530-2536   ///
      str    I10_PR9                   2537-2543   ///
      str    I10_PR10                  2544-2550   ///
      str    I10_PR11                  2551-2557   ///
      str    I10_PR12                  2558-2564   ///
      str    I10_PR13                  2565-2571   ///
      str    I10_PR14                  2572-2578   ///
      str    I10_PR15                  2579-2585   ///
      str    I10_PR16                  2586-2592   ///
      str    I10_PR17                  2593-2599   ///
      str    I10_PR18                  2600-2606   ///
      str    I10_PR19                  2607-2613   ///
      str    I10_PR20                  2614-2620   ///
      str    I10_PR21                  2621-2627   ///
      str    I10_PR22                  2628-2634   ///
      str    I10_PR23                  2635-2641   ///
      str    I10_PR24                  2642-2648   ///
      str    I10_PR25                  2649-2655   ///
      int    I10_PROCTYPE              2656-2658   ///
      double KEY                       2659-2673   ///
      long   LOS                       2674-2678   ///
      long   LOS_X                     2679-2684   ///
      long   MDNUM1_R                  2685-2693   ///
      long   MDNUM2_R                  2694-2702   ///
      byte   MEDINCSTQ                 2703-2704   ///
      int    NCPT                      2705-2708   ///
      int    OBSERVATION               2709-2712   ///
      str    OPservice                 2713        ///
      double OS_TIME                   2714-2724   ///
      byte   PAY1                      2725-2726   ///
      str    PAY1_X                    2727-2728   ///
      byte   PAY2                      2729-2730   ///
      str    PAY2_X                    2731-2732   ///
      byte   PAY3                      2733-2734   ///
      str    PAY3_X                    2735-2736   ///
      int    PL_CBSA                   2737-2739   ///
      byte   PL_NCHS                   2740-2741   ///
      byte   PL_RUCC                   2742-2743   ///
      byte   PL_UIC                    2744-2745   ///
      byte   PL_UR_CAT4                2746-2747   ///
      str    PointOfOrigin_X           2748        ///
      str    PointOfOriginUB04         2749        ///
      long   PRDAY1                    2750-2754   ///
      long   PRDAY2                    2755-2759   ///
      long   PRDAY3                    2760-2764   ///
      long   PRDAY4                    2765-2769   ///
      long   PRDAY5                    2770-2774   ///
      long   PRDAY6                    2775-2779   ///
      long   PRDAY7                    2780-2784   ///
      long   PRDAY8                    2785-2789   ///
      long   PRDAY9                    2790-2794   ///
      long   PRDAY10                   2795-2799   ///
      long   PRDAY11                   2800-2804   ///
      long   PRDAY12                   2805-2809   ///
      long   PRDAY13                   2810-2814   ///
      long   PRDAY14                   2815-2819   ///
      long   PRDAY15                   2820-2824   ///
      long   PRDAY16                   2825-2829   ///
      long   PRDAY17                   2830-2834   ///
      long   PRDAY18                   2835-2839   ///
      long   PRDAY19                   2840-2844   ///
      long   PRDAY20                   2845-2849   ///
      long   PRDAY21                   2850-2854   ///
      long   PRDAY22                   2855-2859   ///
      long   PRDAY23                   2860-2864   ///
      long   PRDAY24                   2865-2869   ///
      long   PRDAY25                   2870-2874   ///
      str    PSTATE                    2875-2876   ///
      str    PSTATE_GEO                2877-2878   ///
      long   PSTCO                     2879-2883   ///
      long   PSTCO_GEO                 2884-2888   ///
      byte   RACE                      2889-2890   ///
      str    RACE_X                    2891        ///
      byte   STATE_AS                  2892-2893   ///
      byte   STATE_ED                  2894-2895   ///
      byte   STATE_OS                  2896-2897   ///
      long   VisitLink                 2898-2906   ///
      int    YEAR                      2907-2910   ///
      str    ZIP                       2911-2915   ///
      str    ZIP3                      2916-2918   ///
      int    ZIPINC_QRTL               2919-2921   ///
      long   HOSPID                    2922-2926   ///
      int    AYEAR                     2927-2930   ///
      byte   BMONTH                    2931-2932   ///
      int    BYEAR                     2933-2936   ///
      byte   PRMONTH1                  2937-2938   ///
      byte   PRMONTH2                  2939-2940   ///
      byte   PRMONTH3                  2941-2942   ///
      byte   PRMONTH4                  2943-2944   ///
      byte   PRMONTH5                  2945-2946   ///
      byte   PRMONTH6                  2947-2948   ///
      byte   PRMONTH7                  2949-2950   ///
      byte   PRMONTH8                  2951-2952   ///
      byte   PRMONTH9                  2953-2954   ///
      byte   PRMONTH10                 2955-2956   ///
      byte   PRMONTH11                 2957-2958   ///
      byte   PRMONTH12                 2959-2960   ///
      byte   PRMONTH13                 2961-2962   ///
      byte   PRMONTH14                 2963-2964   ///
      byte   PRMONTH15                 2965-2966   ///
      byte   PRMONTH16                 2967-2968   ///
      byte   PRMONTH17                 2969-2970   ///
      byte   PRMONTH18                 2971-2972   ///
      byte   PRMONTH19                 2973-2974   ///
      byte   PRMONTH20                 2975-2976   ///
      byte   PRMONTH21                 2977-2978   ///
      byte   PRMONTH22                 2979-2980   ///
      byte   PRMONTH23                 2981-2982   ///
      byte   PRMONTH24                 2983-2984   ///
      byte   PRMONTH25                 2985-2986   ///
      int    PRYEAR1                   2987-2990   ///
      int    PRYEAR2                   2991-2994   ///
      int    PRYEAR3                   2995-2998   ///
      int    PRYEAR4                   2999-3002   ///
      int    PRYEAR5                   3003-3006   ///
      int    PRYEAR6                   3007-3010   ///
      int    PRYEAR7                   3011-3014   ///
      int    PRYEAR8                   3015-3018   ///
      int    PRYEAR9                   3019-3022   ///
      int    PRYEAR10                  3023-3026   ///
      int    PRYEAR11                  3027-3030   ///
      int    PRYEAR12                  3031-3034   ///
      int    PRYEAR13                  3035-3038   ///
      int    PRYEAR14                  3039-3042   ///
      int    PRYEAR15                  3043-3046   ///
      int    PRYEAR16                  3047-3050   ///
      int    PRYEAR17                  3051-3054   ///
      int    PRYEAR18                  3055-3058   ///
      int    PRYEAR19                  3059-3062   ///
      int    PRYEAR20                  3063-3066   ///
      int    PRYEAR21                  3067-3070   ///
      int    PRYEAR22                  3071-3074   ///
      int    PRYEAR23                  3075-3078   ///
      int    PRYEAR24                  3079-3082   ///
      int    PRYEAR25                  3083-3086   ///
      using  "MO_SEDD_2019_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
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
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes (RUCC)"
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
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
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
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_ORPROC                (-9 -8 -6 -5=.)
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
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
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

save "MO_SEDD_2019_CORE.dta", replace
