/*****************************************************************************
* Creation Date: 10/20/2022   
* MN_SEDD_2021_CORE.Do
* This program will load the 2021 MN ASCII CORE File into Stata.
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
      str    CPT1                        24-  28   ///
      str    CPT2                        29-  33   ///
      str    CPT3                        34-  38   ///
      str    CPT4                        39-  43   ///
      str    CPT5                        44-  48   ///
      str    CPT6                        49-  53   ///
      str    CPT7                        54-  58   ///
      str    CPT8                        59-  63   ///
      str    CPT9                        64-  68   ///
      str    CPT10                       69-  73   ///
      str    CPT11                       74-  78   ///
      str    CPT12                       79-  83   ///
      str    CPT13                       84-  88   ///
      str    CPT14                       89-  93   ///
      str    CPT15                       94-  98   ///
      str    CPT16                       99- 103   ///
      str    CPT17                      104- 108   ///
      str    CPT18                      109- 113   ///
      str    CPT19                      114- 118   ///
      str    CPT20                      119- 123   ///
      str    CPT21                      124- 128   ///
      str    CPT22                      129- 133   ///
      str    CPT23                      134- 138   ///
      str    CPT24                      139- 143   ///
      str    CPT25                      144- 148   ///
      str    CPT26                      149- 153   ///
      str    CPT27                      154- 158   ///
      str    CPT28                      159- 163   ///
      str    CPT29                      164- 168   ///
      str    CPT30                      169- 173   ///
      str    CPT31                      174- 178   ///
      str    CPT32                      179- 183   ///
      str    CPT33                      184- 188   ///
      str    CPT34                      189- 193   ///
      str    CPT35                      194- 198   ///
      str    CPT36                      199- 203   ///
      str    CPT37                      204- 208   ///
      str    CPT38                      209- 213   ///
      str    CPT39                      214- 218   ///
      str    CPT40                      219- 223   ///
      str    CPT41                      224- 228   ///
      str    CPT42                      229- 233   ///
      str    CPT43                      234- 238   ///
      str    CPT44                      239- 243   ///
      str    CPT45                      244- 248   ///
      str    CPT46                      249- 253   ///
      str    CPT47                      254- 258   ///
      str    CPT48                      259- 263   ///
      str    CPT49                      264- 268   ///
      str    CPT50                      269- 273   ///
      str    CPT51                      274- 278   ///
      str    CPT52                      279- 283   ///
      str    CPT53                      284- 288   ///
      str    CPT54                      289- 293   ///
      str    CPT55                      294- 298   ///
      str    CPT56                      299- 303   ///
      str    CPT57                      304- 308   ///
      str    CPT58                      309- 313   ///
      str    CPT59                      314- 318   ///
      str    CPT60                      319- 323   ///
      str    CPT61                      324- 328   ///
      str    CPT62                      329- 333   ///
      str    CPT63                      334- 338   ///
      str    CPT64                      339- 343   ///
      str    CPT65                      344- 348   ///
      str    CPT66                      349- 353   ///
      str    CPT67                      354- 358   ///
      str    CPT68                      359- 363   ///
      str    CPT69                      364- 368   ///
      str    CPT70                      369- 373   ///
      str    CPT71                      374- 378   ///
      str    CPT72                      379- 383   ///
      str    CPT73                      384- 388   ///
      str    CPT74                      389- 393   ///
      str    CPT75                      394- 398   ///
      str    CPT76                      399- 403   ///
      str    CPT77                      404- 408   ///
      str    CPT78                      409- 413   ///
      str    CPT79                      414- 418   ///
      str    CPT80                      419- 423   ///
      str    CPT81                      424- 428   ///
      str    CPT82                      429- 433   ///
      str    CPT83                      434- 438   ///
      str    CPT84                      439- 443   ///
      str    CPT85                      444- 448   ///
      str    CPT86                      449- 453   ///
      str    CPT87                      454- 458   ///
      str    CPT88                      459- 463   ///
      str    CPT89                      464- 468   ///
      str    CPT90                      469- 473   ///
      str    CPT91                      474- 478   ///
      str    CPT92                      479- 483   ///
      str    CPT93                      484- 488   ///
      str    CPT94                      489- 493   ///
      str    CPT95                      494- 498   ///
      str    CPT96                      499- 503   ///
      str    CPT97                      504- 508   ///
      str    CPT98                      509- 513   ///
      str    CPT99                      514- 518   ///
      str    CPT100                     519- 523   ///
      str    CPT101                     524- 528   ///
      str    CPT102                     529- 533   ///
      str    CPT103                     534- 538   ///
      str    CPT104                     539- 543   ///
      str    CPT105                     544- 548   ///
      str    CPT106                     549- 553   ///
      str    CPT107                     554- 558   ///
      str    CPT108                     559- 563   ///
      str    CPT109                     564- 568   ///
      str    CPT110                     569- 573   ///
      str    CPT111                     574- 578   ///
      str    CPT112                     579- 583   ///
      str    CPT113                     584- 588   ///
      str    CPT114                     589- 593   ///
      str    CPT115                     594- 598   ///
      str    CPT116                     599- 603   ///
      str    CPT117                     604- 608   ///
      str    CPT118                     609- 613   ///
      str    CPT119                     614- 618   ///
      str    CPT120                     619- 623   ///
      str    CPT121                     624- 628   ///
      str    CPT122                     629- 633   ///
      str    CPT123                     634- 638   ///
      str    CPT124                     639- 643   ///
      str    CPT125                     644- 648   ///
      str    CPT126                     649- 653   ///
      str    CPT127                     654- 658   ///
      str    CPT128                     659- 663   ///
      str    CPT129                     664- 668   ///
      str    CPT130                     669- 673   ///
      str    CPT131                     674- 678   ///
      str    CPT132                     679- 683   ///
      str    CPT133                     684- 688   ///
      str    CPT134                     689- 693   ///
      str    CPT135                     694- 698   ///
      str    CPT136                     699- 703   ///
      str    CPT137                     704- 708   ///
      str    CPT138                     709- 713   ///
      str    CPT139                     714- 718   ///
      str    CPT140                     719- 723   ///
      str    CPT141                     724- 728   ///
      str    CPT142                     729- 733   ///
      str    CPT143                     734- 738   ///
      str    CPT144                     739- 743   ///
      str    CPT145                     744- 748   ///
      str    CPT146                     749- 753   ///
      str    CPT147                     754- 758   ///
      str    CPT148                     759- 763   ///
      str    CPT149                     764- 768   ///
      str    CPT150                     769- 773   ///
      str    CPT151                     774- 778   ///
      str    CPT152                     779- 783   ///
      str    CPT153                     784- 788   ///
      str    CPT154                     789- 793   ///
      str    CPT155                     794- 798   ///
      str    CPT156                     799- 803   ///
      str    CPT157                     804- 808   ///
      str    CPT158                     809- 813   ///
      str    CPT159                     814- 818   ///
      str    CPT160                     819- 823   ///
      str    CPT161                     824- 828   ///
      str    CPT162                     829- 833   ///
      str    CPT163                     834- 838   ///
      str    CPT164                     839- 843   ///
      str    CPT165                     844- 848   ///
      str    CPT166                     849- 853   ///
      str    CPT167                     854- 858   ///
      str    CPT168                     859- 863   ///
      str    CPT169                     864- 868   ///
      str    CPT170                     869- 873   ///
      str    CPT171                     874- 878   ///
      str    CPT172                     879- 883   ///
      str    CPT173                     884- 888   ///
      str    CPT174                     889- 893   ///
      str    CPT175                     894- 898   ///
      str    CPT176                     899- 903   ///
      str    CPT177                     904- 908   ///
      str    CPT178                     909- 913   ///
      str    CPT179                     914- 918   ///
      str    CPT180                     919- 923   ///
      str    CPT181                     924- 928   ///
      str    CPT182                     929- 933   ///
      str    CPT183                     934- 938   ///
      str    CPT184                     939- 943   ///
      str    CPT185                     944- 948   ///
      str    CPT186                     949- 953   ///
      str    CPT187                     954- 958   ///
      str    CPT188                     959- 963   ///
      str    CPT189                     964- 968   ///
      str    CPT190                     969- 973   ///
      str    CPT191                     974- 978   ///
      str    CPT192                     979- 983   ///
      str    CPT193                     984- 988   ///
      str    CPT194                     989- 993   ///
      str    CPT195                     994- 998   ///
      str    CPT196                     999-1003   ///
      str    CPT197                    1004-1008   ///
      str    CPT198                    1009-1013   ///
      str    CPT199                    1014-1018   ///
      str    CPT200                    1019-1023   ///
      int    CPTCCS1                   1024-1026   ///
      int    CPTCCS2                   1027-1029   ///
      int    CPTCCS3                   1030-1032   ///
      int    CPTCCS4                   1033-1035   ///
      int    CPTCCS5                   1036-1038   ///
      int    CPTCCS6                   1039-1041   ///
      int    CPTCCS7                   1042-1044   ///
      int    CPTCCS8                   1045-1047   ///
      int    CPTCCS9                   1048-1050   ///
      int    CPTCCS10                  1051-1053   ///
      int    CPTCCS11                  1054-1056   ///
      int    CPTCCS12                  1057-1059   ///
      int    CPTCCS13                  1060-1062   ///
      int    CPTCCS14                  1063-1065   ///
      int    CPTCCS15                  1066-1068   ///
      int    CPTCCS16                  1069-1071   ///
      int    CPTCCS17                  1072-1074   ///
      int    CPTCCS18                  1075-1077   ///
      int    CPTCCS19                  1078-1080   ///
      int    CPTCCS20                  1081-1083   ///
      int    CPTCCS21                  1084-1086   ///
      int    CPTCCS22                  1087-1089   ///
      int    CPTCCS23                  1090-1092   ///
      int    CPTCCS24                  1093-1095   ///
      int    CPTCCS25                  1096-1098   ///
      int    CPTCCS26                  1099-1101   ///
      int    CPTCCS27                  1102-1104   ///
      int    CPTCCS28                  1105-1107   ///
      int    CPTCCS29                  1108-1110   ///
      int    CPTCCS30                  1111-1113   ///
      int    CPTCCS31                  1114-1116   ///
      int    CPTCCS32                  1117-1119   ///
      int    CPTCCS33                  1120-1122   ///
      int    CPTCCS34                  1123-1125   ///
      int    CPTCCS35                  1126-1128   ///
      int    CPTCCS36                  1129-1131   ///
      int    CPTCCS37                  1132-1134   ///
      int    CPTCCS38                  1135-1137   ///
      int    CPTCCS39                  1138-1140   ///
      int    CPTCCS40                  1141-1143   ///
      int    CPTCCS41                  1144-1146   ///
      int    CPTCCS42                  1147-1149   ///
      int    CPTCCS43                  1150-1152   ///
      int    CPTCCS44                  1153-1155   ///
      int    CPTCCS45                  1156-1158   ///
      int    CPTCCS46                  1159-1161   ///
      int    CPTCCS47                  1162-1164   ///
      int    CPTCCS48                  1165-1167   ///
      int    CPTCCS49                  1168-1170   ///
      int    CPTCCS50                  1171-1173   ///
      int    CPTCCS51                  1174-1176   ///
      int    CPTCCS52                  1177-1179   ///
      int    CPTCCS53                  1180-1182   ///
      int    CPTCCS54                  1183-1185   ///
      int    CPTCCS55                  1186-1188   ///
      int    CPTCCS56                  1189-1191   ///
      int    CPTCCS57                  1192-1194   ///
      int    CPTCCS58                  1195-1197   ///
      int    CPTCCS59                  1198-1200   ///
      int    CPTCCS60                  1201-1203   ///
      int    CPTCCS61                  1204-1206   ///
      int    CPTCCS62                  1207-1209   ///
      int    CPTCCS63                  1210-1212   ///
      int    CPTCCS64                  1213-1215   ///
      int    CPTCCS65                  1216-1218   ///
      int    CPTCCS66                  1219-1221   ///
      int    CPTCCS67                  1222-1224   ///
      int    CPTCCS68                  1225-1227   ///
      int    CPTCCS69                  1228-1230   ///
      int    CPTCCS70                  1231-1233   ///
      int    CPTCCS71                  1234-1236   ///
      int    CPTCCS72                  1237-1239   ///
      int    CPTCCS73                  1240-1242   ///
      int    CPTCCS74                  1243-1245   ///
      int    CPTCCS75                  1246-1248   ///
      int    CPTCCS76                  1249-1251   ///
      int    CPTCCS77                  1252-1254   ///
      int    CPTCCS78                  1255-1257   ///
      int    CPTCCS79                  1258-1260   ///
      int    CPTCCS80                  1261-1263   ///
      int    CPTCCS81                  1264-1266   ///
      int    CPTCCS82                  1267-1269   ///
      int    CPTCCS83                  1270-1272   ///
      int    CPTCCS84                  1273-1275   ///
      int    CPTCCS85                  1276-1278   ///
      int    CPTCCS86                  1279-1281   ///
      int    CPTCCS87                  1282-1284   ///
      int    CPTCCS88                  1285-1287   ///
      int    CPTCCS89                  1288-1290   ///
      int    CPTCCS90                  1291-1293   ///
      int    CPTCCS91                  1294-1296   ///
      int    CPTCCS92                  1297-1299   ///
      int    CPTCCS93                  1300-1302   ///
      int    CPTCCS94                  1303-1305   ///
      int    CPTCCS95                  1306-1308   ///
      int    CPTCCS96                  1309-1311   ///
      int    CPTCCS97                  1312-1314   ///
      int    CPTCCS98                  1315-1317   ///
      int    CPTCCS99                  1318-1320   ///
      int    CPTCCS100                 1321-1323   ///
      int    CPTCCS101                 1324-1326   ///
      int    CPTCCS102                 1327-1329   ///
      int    CPTCCS103                 1330-1332   ///
      int    CPTCCS104                 1333-1335   ///
      int    CPTCCS105                 1336-1338   ///
      int    CPTCCS106                 1339-1341   ///
      int    CPTCCS107                 1342-1344   ///
      int    CPTCCS108                 1345-1347   ///
      int    CPTCCS109                 1348-1350   ///
      int    CPTCCS110                 1351-1353   ///
      int    CPTCCS111                 1354-1356   ///
      int    CPTCCS112                 1357-1359   ///
      int    CPTCCS113                 1360-1362   ///
      int    CPTCCS114                 1363-1365   ///
      int    CPTCCS115                 1366-1368   ///
      int    CPTCCS116                 1369-1371   ///
      int    CPTCCS117                 1372-1374   ///
      int    CPTCCS118                 1375-1377   ///
      int    CPTCCS119                 1378-1380   ///
      int    CPTCCS120                 1381-1383   ///
      int    CPTCCS121                 1384-1386   ///
      int    CPTCCS122                 1387-1389   ///
      int    CPTCCS123                 1390-1392   ///
      int    CPTCCS124                 1393-1395   ///
      int    CPTCCS125                 1396-1398   ///
      int    CPTCCS126                 1399-1401   ///
      int    CPTCCS127                 1402-1404   ///
      int    CPTCCS128                 1405-1407   ///
      int    CPTCCS129                 1408-1410   ///
      int    CPTCCS130                 1411-1413   ///
      int    CPTCCS131                 1414-1416   ///
      int    CPTCCS132                 1417-1419   ///
      int    CPTCCS133                 1420-1422   ///
      int    CPTCCS134                 1423-1425   ///
      int    CPTCCS135                 1426-1428   ///
      int    CPTCCS136                 1429-1431   ///
      int    CPTCCS137                 1432-1434   ///
      int    CPTCCS138                 1435-1437   ///
      int    CPTCCS139                 1438-1440   ///
      int    CPTCCS140                 1441-1443   ///
      int    CPTCCS141                 1444-1446   ///
      int    CPTCCS142                 1447-1449   ///
      int    CPTCCS143                 1450-1452   ///
      int    CPTCCS144                 1453-1455   ///
      int    CPTCCS145                 1456-1458   ///
      int    CPTCCS146                 1459-1461   ///
      int    CPTCCS147                 1462-1464   ///
      int    CPTCCS148                 1465-1467   ///
      int    CPTCCS149                 1468-1470   ///
      int    CPTCCS150                 1471-1473   ///
      int    CPTCCS151                 1474-1476   ///
      int    CPTCCS152                 1477-1479   ///
      int    CPTCCS153                 1480-1482   ///
      int    CPTCCS154                 1483-1485   ///
      int    CPTCCS155                 1486-1488   ///
      int    CPTCCS156                 1489-1491   ///
      int    CPTCCS157                 1492-1494   ///
      int    CPTCCS158                 1495-1497   ///
      int    CPTCCS159                 1498-1500   ///
      int    CPTCCS160                 1501-1503   ///
      int    CPTCCS161                 1504-1506   ///
      int    CPTCCS162                 1507-1509   ///
      int    CPTCCS163                 1510-1512   ///
      int    CPTCCS164                 1513-1515   ///
      int    CPTCCS165                 1516-1518   ///
      int    CPTCCS166                 1519-1521   ///
      int    CPTCCS167                 1522-1524   ///
      int    CPTCCS168                 1525-1527   ///
      int    CPTCCS169                 1528-1530   ///
      int    CPTCCS170                 1531-1533   ///
      int    CPTCCS171                 1534-1536   ///
      int    CPTCCS172                 1537-1539   ///
      int    CPTCCS173                 1540-1542   ///
      int    CPTCCS174                 1543-1545   ///
      int    CPTCCS175                 1546-1548   ///
      int    CPTCCS176                 1549-1551   ///
      int    CPTCCS177                 1552-1554   ///
      int    CPTCCS178                 1555-1557   ///
      int    CPTCCS179                 1558-1560   ///
      int    CPTCCS180                 1561-1563   ///
      int    CPTCCS181                 1564-1566   ///
      int    CPTCCS182                 1567-1569   ///
      int    CPTCCS183                 1570-1572   ///
      int    CPTCCS184                 1573-1575   ///
      int    CPTCCS185                 1576-1578   ///
      int    CPTCCS186                 1579-1581   ///
      int    CPTCCS187                 1582-1584   ///
      int    CPTCCS188                 1585-1587   ///
      int    CPTCCS189                 1588-1590   ///
      int    CPTCCS190                 1591-1593   ///
      int    CPTCCS191                 1594-1596   ///
      int    CPTCCS192                 1597-1599   ///
      int    CPTCCS193                 1600-1602   ///
      int    CPTCCS194                 1603-1605   ///
      int    CPTCCS195                 1606-1608   ///
      int    CPTCCS196                 1609-1611   ///
      int    CPTCCS197                 1612-1614   ///
      int    CPTCCS198                 1615-1617   ///
      int    CPTCCS199                 1618-1620   ///
      int    CPTCCS200                 1621-1623   ///
      int    CPTDAY1                   1624-1626   ///
      int    CPTDAY2                   1627-1629   ///
      int    CPTDAY3                   1630-1632   ///
      int    CPTDAY4                   1633-1635   ///
      int    CPTDAY5                   1636-1638   ///
      int    CPTDAY6                   1639-1641   ///
      int    CPTDAY7                   1642-1644   ///
      int    CPTDAY8                   1645-1647   ///
      int    CPTDAY9                   1648-1650   ///
      int    CPTDAY10                  1651-1653   ///
      int    CPTDAY11                  1654-1656   ///
      int    CPTDAY12                  1657-1659   ///
      int    CPTDAY13                  1660-1662   ///
      int    CPTDAY14                  1663-1665   ///
      int    CPTDAY15                  1666-1668   ///
      int    CPTDAY16                  1669-1671   ///
      int    CPTDAY17                  1672-1674   ///
      int    CPTDAY18                  1675-1677   ///
      int    CPTDAY19                  1678-1680   ///
      int    CPTDAY20                  1681-1683   ///
      int    CPTDAY21                  1684-1686   ///
      int    CPTDAY22                  1687-1689   ///
      int    CPTDAY23                  1690-1692   ///
      int    CPTDAY24                  1693-1695   ///
      int    CPTDAY25                  1696-1698   ///
      int    CPTDAY26                  1699-1701   ///
      int    CPTDAY27                  1702-1704   ///
      int    CPTDAY28                  1705-1707   ///
      int    CPTDAY29                  1708-1710   ///
      int    CPTDAY30                  1711-1713   ///
      int    CPTDAY31                  1714-1716   ///
      int    CPTDAY32                  1717-1719   ///
      int    CPTDAY33                  1720-1722   ///
      int    CPTDAY34                  1723-1725   ///
      int    CPTDAY35                  1726-1728   ///
      int    CPTDAY36                  1729-1731   ///
      int    CPTDAY37                  1732-1734   ///
      int    CPTDAY38                  1735-1737   ///
      int    CPTDAY39                  1738-1740   ///
      int    CPTDAY40                  1741-1743   ///
      int    CPTDAY41                  1744-1746   ///
      int    CPTDAY42                  1747-1749   ///
      int    CPTDAY43                  1750-1752   ///
      int    CPTDAY44                  1753-1755   ///
      int    CPTDAY45                  1756-1758   ///
      int    CPTDAY46                  1759-1761   ///
      int    CPTDAY47                  1762-1764   ///
      int    CPTDAY48                  1765-1767   ///
      int    CPTDAY49                  1768-1770   ///
      int    CPTDAY50                  1771-1773   ///
      int    CPTDAY51                  1774-1776   ///
      int    CPTDAY52                  1777-1779   ///
      int    CPTDAY53                  1780-1782   ///
      int    CPTDAY54                  1783-1785   ///
      int    CPTDAY55                  1786-1788   ///
      int    CPTDAY56                  1789-1791   ///
      int    CPTDAY57                  1792-1794   ///
      int    CPTDAY58                  1795-1797   ///
      int    CPTDAY59                  1798-1800   ///
      int    CPTDAY60                  1801-1803   ///
      int    CPTDAY61                  1804-1806   ///
      int    CPTDAY62                  1807-1809   ///
      int    CPTDAY63                  1810-1812   ///
      int    CPTDAY64                  1813-1815   ///
      int    CPTDAY65                  1816-1818   ///
      int    CPTDAY66                  1819-1821   ///
      int    CPTDAY67                  1822-1824   ///
      int    CPTDAY68                  1825-1827   ///
      int    CPTDAY69                  1828-1830   ///
      int    CPTDAY70                  1831-1833   ///
      int    CPTDAY71                  1834-1836   ///
      int    CPTDAY72                  1837-1839   ///
      int    CPTDAY73                  1840-1842   ///
      int    CPTDAY74                  1843-1845   ///
      int    CPTDAY75                  1846-1848   ///
      int    CPTDAY76                  1849-1851   ///
      int    CPTDAY77                  1852-1854   ///
      int    CPTDAY78                  1855-1857   ///
      int    CPTDAY79                  1858-1860   ///
      int    CPTDAY80                  1861-1863   ///
      int    CPTDAY81                  1864-1866   ///
      int    CPTDAY82                  1867-1869   ///
      int    CPTDAY83                  1870-1872   ///
      int    CPTDAY84                  1873-1875   ///
      int    CPTDAY85                  1876-1878   ///
      int    CPTDAY86                  1879-1881   ///
      int    CPTDAY87                  1882-1884   ///
      int    CPTDAY88                  1885-1887   ///
      int    CPTDAY89                  1888-1890   ///
      int    CPTDAY90                  1891-1893   ///
      int    CPTDAY91                  1894-1896   ///
      int    CPTDAY92                  1897-1899   ///
      int    CPTDAY93                  1900-1902   ///
      int    CPTDAY94                  1903-1905   ///
      int    CPTDAY95                  1906-1908   ///
      int    CPTDAY96                  1909-1911   ///
      int    CPTDAY97                  1912-1914   ///
      int    CPTDAY98                  1915-1917   ///
      int    CPTDAY99                  1918-1920   ///
      int    CPTDAY100                 1921-1923   ///
      int    CPTDAY101                 1924-1926   ///
      int    CPTDAY102                 1927-1929   ///
      int    CPTDAY103                 1930-1932   ///
      int    CPTDAY104                 1933-1935   ///
      int    CPTDAY105                 1936-1938   ///
      int    CPTDAY106                 1939-1941   ///
      int    CPTDAY107                 1942-1944   ///
      int    CPTDAY108                 1945-1947   ///
      int    CPTDAY109                 1948-1950   ///
      int    CPTDAY110                 1951-1953   ///
      int    CPTDAY111                 1954-1956   ///
      int    CPTDAY112                 1957-1959   ///
      int    CPTDAY113                 1960-1962   ///
      int    CPTDAY114                 1963-1965   ///
      int    CPTDAY115                 1966-1968   ///
      int    CPTDAY116                 1969-1971   ///
      int    CPTDAY117                 1972-1974   ///
      int    CPTDAY118                 1975-1977   ///
      int    CPTDAY119                 1978-1980   ///
      int    CPTDAY120                 1981-1983   ///
      int    CPTDAY121                 1984-1986   ///
      int    CPTDAY122                 1987-1989   ///
      int    CPTDAY123                 1990-1992   ///
      int    CPTDAY124                 1993-1995   ///
      int    CPTDAY125                 1996-1998   ///
      int    CPTDAY126                 1999-2001   ///
      int    CPTDAY127                 2002-2004   ///
      int    CPTDAY128                 2005-2007   ///
      int    CPTDAY129                 2008-2010   ///
      int    CPTDAY130                 2011-2013   ///
      int    CPTDAY131                 2014-2016   ///
      int    CPTDAY132                 2017-2019   ///
      int    CPTDAY133                 2020-2022   ///
      int    CPTDAY134                 2023-2025   ///
      int    CPTDAY135                 2026-2028   ///
      int    CPTDAY136                 2029-2031   ///
      int    CPTDAY137                 2032-2034   ///
      int    CPTDAY138                 2035-2037   ///
      int    CPTDAY139                 2038-2040   ///
      int    CPTDAY140                 2041-2043   ///
      int    CPTDAY141                 2044-2046   ///
      int    CPTDAY142                 2047-2049   ///
      int    CPTDAY143                 2050-2052   ///
      int    CPTDAY144                 2053-2055   ///
      int    CPTDAY145                 2056-2058   ///
      int    CPTDAY146                 2059-2061   ///
      int    CPTDAY147                 2062-2064   ///
      int    CPTDAY148                 2065-2067   ///
      int    CPTDAY149                 2068-2070   ///
      int    CPTDAY150                 2071-2073   ///
      int    CPTDAY151                 2074-2076   ///
      int    CPTDAY152                 2077-2079   ///
      int    CPTDAY153                 2080-2082   ///
      int    CPTDAY154                 2083-2085   ///
      int    CPTDAY155                 2086-2088   ///
      int    CPTDAY156                 2089-2091   ///
      int    CPTDAY157                 2092-2094   ///
      int    CPTDAY158                 2095-2097   ///
      int    CPTDAY159                 2098-2100   ///
      int    CPTDAY160                 2101-2103   ///
      int    CPTDAY161                 2104-2106   ///
      int    CPTDAY162                 2107-2109   ///
      int    CPTDAY163                 2110-2112   ///
      int    CPTDAY164                 2113-2115   ///
      int    CPTDAY165                 2116-2118   ///
      int    CPTDAY166                 2119-2121   ///
      int    CPTDAY167                 2122-2124   ///
      int    CPTDAY168                 2125-2127   ///
      int    CPTDAY169                 2128-2130   ///
      int    CPTDAY170                 2131-2133   ///
      int    CPTDAY171                 2134-2136   ///
      int    CPTDAY172                 2137-2139   ///
      int    CPTDAY173                 2140-2142   ///
      int    CPTDAY174                 2143-2145   ///
      int    CPTDAY175                 2146-2148   ///
      int    CPTDAY176                 2149-2151   ///
      int    CPTDAY177                 2152-2154   ///
      int    CPTDAY178                 2155-2157   ///
      int    CPTDAY179                 2158-2160   ///
      int    CPTDAY180                 2161-2163   ///
      int    CPTDAY181                 2164-2166   ///
      int    CPTDAY182                 2167-2169   ///
      int    CPTDAY183                 2170-2172   ///
      int    CPTDAY184                 2173-2175   ///
      int    CPTDAY185                 2176-2178   ///
      int    CPTDAY186                 2179-2181   ///
      int    CPTDAY187                 2182-2184   ///
      int    CPTDAY188                 2185-2187   ///
      int    CPTDAY189                 2188-2190   ///
      int    CPTDAY190                 2191-2193   ///
      int    CPTDAY191                 2194-2196   ///
      int    CPTDAY192                 2197-2199   ///
      int    CPTDAY193                 2200-2202   ///
      int    CPTDAY194                 2203-2205   ///
      int    CPTDAY195                 2206-2208   ///
      int    CPTDAY196                 2209-2211   ///
      int    CPTDAY197                 2212-2214   ///
      int    CPTDAY198                 2215-2217   ///
      int    CPTDAY199                 2218-2220   ///
      int    CPTDAY200                 2221-2223   ///
      str    CPTM1_1                   2224-2225   ///
      str    CPTM1_2                   2226-2227   ///
      str    CPTM1_3                   2228-2229   ///
      str    CPTM1_4                   2230-2231   ///
      str    CPTM1_5                   2232-2233   ///
      str    CPTM1_6                   2234-2235   ///
      str    CPTM1_7                   2236-2237   ///
      str    CPTM1_8                   2238-2239   ///
      str    CPTM1_9                   2240-2241   ///
      str    CPTM1_10                  2242-2243   ///
      str    CPTM1_11                  2244-2245   ///
      str    CPTM1_12                  2246-2247   ///
      str    CPTM1_13                  2248-2249   ///
      str    CPTM1_14                  2250-2251   ///
      str    CPTM1_15                  2252-2253   ///
      str    CPTM1_16                  2254-2255   ///
      str    CPTM1_17                  2256-2257   ///
      str    CPTM1_18                  2258-2259   ///
      str    CPTM1_19                  2260-2261   ///
      str    CPTM1_20                  2262-2263   ///
      str    CPTM1_21                  2264-2265   ///
      str    CPTM1_22                  2266-2267   ///
      str    CPTM1_23                  2268-2269   ///
      str    CPTM1_24                  2270-2271   ///
      str    CPTM1_25                  2272-2273   ///
      str    CPTM1_26                  2274-2275   ///
      str    CPTM1_27                  2276-2277   ///
      str    CPTM1_28                  2278-2279   ///
      str    CPTM1_29                  2280-2281   ///
      str    CPTM1_30                  2282-2283   ///
      str    CPTM1_31                  2284-2285   ///
      str    CPTM1_32                  2286-2287   ///
      str    CPTM1_33                  2288-2289   ///
      str    CPTM1_34                  2290-2291   ///
      str    CPTM1_35                  2292-2293   ///
      str    CPTM1_36                  2294-2295   ///
      str    CPTM1_37                  2296-2297   ///
      str    CPTM1_38                  2298-2299   ///
      str    CPTM1_39                  2300-2301   ///
      str    CPTM1_40                  2302-2303   ///
      str    CPTM1_41                  2304-2305   ///
      str    CPTM1_42                  2306-2307   ///
      str    CPTM1_43                  2308-2309   ///
      str    CPTM1_44                  2310-2311   ///
      str    CPTM1_45                  2312-2313   ///
      str    CPTM1_46                  2314-2315   ///
      str    CPTM1_47                  2316-2317   ///
      str    CPTM1_48                  2318-2319   ///
      str    CPTM1_49                  2320-2321   ///
      str    CPTM1_50                  2322-2323   ///
      str    CPTM1_51                  2324-2325   ///
      str    CPTM1_52                  2326-2327   ///
      str    CPTM1_53                  2328-2329   ///
      str    CPTM1_54                  2330-2331   ///
      str    CPTM1_55                  2332-2333   ///
      str    CPTM1_56                  2334-2335   ///
      str    CPTM1_57                  2336-2337   ///
      str    CPTM1_58                  2338-2339   ///
      str    CPTM1_59                  2340-2341   ///
      str    CPTM1_60                  2342-2343   ///
      str    CPTM1_61                  2344-2345   ///
      str    CPTM1_62                  2346-2347   ///
      str    CPTM1_63                  2348-2349   ///
      str    CPTM1_64                  2350-2351   ///
      str    CPTM1_65                  2352-2353   ///
      str    CPTM1_66                  2354-2355   ///
      str    CPTM1_67                  2356-2357   ///
      str    CPTM1_68                  2358-2359   ///
      str    CPTM1_69                  2360-2361   ///
      str    CPTM1_70                  2362-2363   ///
      str    CPTM1_71                  2364-2365   ///
      str    CPTM1_72                  2366-2367   ///
      str    CPTM1_73                  2368-2369   ///
      str    CPTM1_74                  2370-2371   ///
      str    CPTM1_75                  2372-2373   ///
      str    CPTM1_76                  2374-2375   ///
      str    CPTM1_77                  2376-2377   ///
      str    CPTM1_78                  2378-2379   ///
      str    CPTM1_79                  2380-2381   ///
      str    CPTM1_80                  2382-2383   ///
      str    CPTM1_81                  2384-2385   ///
      str    CPTM1_82                  2386-2387   ///
      str    CPTM1_83                  2388-2389   ///
      str    CPTM1_84                  2390-2391   ///
      str    CPTM1_85                  2392-2393   ///
      str    CPTM1_86                  2394-2395   ///
      str    CPTM1_87                  2396-2397   ///
      str    CPTM1_88                  2398-2399   ///
      str    CPTM1_89                  2400-2401   ///
      str    CPTM1_90                  2402-2403   ///
      str    CPTM1_91                  2404-2405   ///
      str    CPTM1_92                  2406-2407   ///
      str    CPTM1_93                  2408-2409   ///
      str    CPTM1_94                  2410-2411   ///
      str    CPTM1_95                  2412-2413   ///
      str    CPTM1_96                  2414-2415   ///
      str    CPTM1_97                  2416-2417   ///
      str    CPTM1_98                  2418-2419   ///
      str    CPTM1_99                  2420-2421   ///
      str    CPTM1_100                 2422-2423   ///
      str    CPTM1_101                 2424-2425   ///
      str    CPTM1_102                 2426-2427   ///
      str    CPTM1_103                 2428-2429   ///
      str    CPTM1_104                 2430-2431   ///
      str    CPTM1_105                 2432-2433   ///
      str    CPTM1_106                 2434-2435   ///
      str    CPTM1_107                 2436-2437   ///
      str    CPTM1_108                 2438-2439   ///
      str    CPTM1_109                 2440-2441   ///
      str    CPTM1_110                 2442-2443   ///
      str    CPTM1_111                 2444-2445   ///
      str    CPTM1_112                 2446-2447   ///
      str    CPTM1_113                 2448-2449   ///
      str    CPTM1_114                 2450-2451   ///
      str    CPTM1_115                 2452-2453   ///
      str    CPTM1_116                 2454-2455   ///
      str    CPTM1_117                 2456-2457   ///
      str    CPTM1_118                 2458-2459   ///
      str    CPTM1_119                 2460-2461   ///
      str    CPTM1_120                 2462-2463   ///
      str    CPTM1_121                 2464-2465   ///
      str    CPTM1_122                 2466-2467   ///
      str    CPTM1_123                 2468-2469   ///
      str    CPTM1_124                 2470-2471   ///
      str    CPTM1_125                 2472-2473   ///
      str    CPTM1_126                 2474-2475   ///
      str    CPTM1_127                 2476-2477   ///
      str    CPTM1_128                 2478-2479   ///
      str    CPTM1_129                 2480-2481   ///
      str    CPTM1_130                 2482-2483   ///
      str    CPTM1_131                 2484-2485   ///
      str    CPTM1_132                 2486-2487   ///
      str    CPTM1_133                 2488-2489   ///
      str    CPTM1_134                 2490-2491   ///
      str    CPTM1_135                 2492-2493   ///
      str    CPTM1_136                 2494-2495   ///
      str    CPTM1_137                 2496-2497   ///
      str    CPTM1_138                 2498-2499   ///
      str    CPTM1_139                 2500-2501   ///
      str    CPTM1_140                 2502-2503   ///
      str    CPTM1_141                 2504-2505   ///
      str    CPTM1_142                 2506-2507   ///
      str    CPTM1_143                 2508-2509   ///
      str    CPTM1_144                 2510-2511   ///
      str    CPTM1_145                 2512-2513   ///
      str    CPTM1_146                 2514-2515   ///
      str    CPTM1_147                 2516-2517   ///
      str    CPTM1_148                 2518-2519   ///
      str    CPTM1_149                 2520-2521   ///
      str    CPTM1_150                 2522-2523   ///
      str    CPTM1_151                 2524-2525   ///
      str    CPTM1_152                 2526-2527   ///
      str    CPTM1_153                 2528-2529   ///
      str    CPTM1_154                 2530-2531   ///
      str    CPTM1_155                 2532-2533   ///
      str    CPTM1_156                 2534-2535   ///
      str    CPTM1_157                 2536-2537   ///
      str    CPTM1_158                 2538-2539   ///
      str    CPTM1_159                 2540-2541   ///
      str    CPTM1_160                 2542-2543   ///
      str    CPTM1_161                 2544-2545   ///
      str    CPTM1_162                 2546-2547   ///
      str    CPTM1_163                 2548-2549   ///
      str    CPTM1_164                 2550-2551   ///
      str    CPTM1_165                 2552-2553   ///
      str    CPTM1_166                 2554-2555   ///
      str    CPTM1_167                 2556-2557   ///
      str    CPTM1_168                 2558-2559   ///
      str    CPTM1_169                 2560-2561   ///
      str    CPTM1_170                 2562-2563   ///
      str    CPTM1_171                 2564-2565   ///
      str    CPTM1_172                 2566-2567   ///
      str    CPTM1_173                 2568-2569   ///
      str    CPTM1_174                 2570-2571   ///
      str    CPTM1_175                 2572-2573   ///
      str    CPTM1_176                 2574-2575   ///
      str    CPTM1_177                 2576-2577   ///
      str    CPTM1_178                 2578-2579   ///
      str    CPTM1_179                 2580-2581   ///
      str    CPTM1_180                 2582-2583   ///
      str    CPTM1_181                 2584-2585   ///
      str    CPTM1_182                 2586-2587   ///
      str    CPTM1_183                 2588-2589   ///
      str    CPTM1_184                 2590-2591   ///
      str    CPTM1_185                 2592-2593   ///
      str    CPTM1_186                 2594-2595   ///
      str    CPTM1_187                 2596-2597   ///
      str    CPTM1_188                 2598-2599   ///
      str    CPTM1_189                 2600-2601   ///
      str    CPTM1_190                 2602-2603   ///
      str    CPTM1_191                 2604-2605   ///
      str    CPTM1_192                 2606-2607   ///
      str    CPTM1_193                 2608-2609   ///
      str    CPTM1_194                 2610-2611   ///
      str    CPTM1_195                 2612-2613   ///
      str    CPTM1_196                 2614-2615   ///
      str    CPTM1_197                 2616-2617   ///
      str    CPTM1_198                 2618-2619   ///
      str    CPTM1_199                 2620-2621   ///
      str    CPTM1_200                 2622-2623   ///
      str    CPTM2_1                   2624-2625   ///
      str    CPTM2_2                   2626-2627   ///
      str    CPTM2_3                   2628-2629   ///
      str    CPTM2_4                   2630-2631   ///
      str    CPTM2_5                   2632-2633   ///
      str    CPTM2_6                   2634-2635   ///
      str    CPTM2_7                   2636-2637   ///
      str    CPTM2_8                   2638-2639   ///
      str    CPTM2_9                   2640-2641   ///
      str    CPTM2_10                  2642-2643   ///
      str    CPTM2_11                  2644-2645   ///
      str    CPTM2_12                  2646-2647   ///
      str    CPTM2_13                  2648-2649   ///
      str    CPTM2_14                  2650-2651   ///
      str    CPTM2_15                  2652-2653   ///
      str    CPTM2_16                  2654-2655   ///
      str    CPTM2_17                  2656-2657   ///
      str    CPTM2_18                  2658-2659   ///
      str    CPTM2_19                  2660-2661   ///
      str    CPTM2_20                  2662-2663   ///
      str    CPTM2_21                  2664-2665   ///
      str    CPTM2_22                  2666-2667   ///
      str    CPTM2_23                  2668-2669   ///
      str    CPTM2_24                  2670-2671   ///
      str    CPTM2_25                  2672-2673   ///
      str    CPTM2_26                  2674-2675   ///
      str    CPTM2_27                  2676-2677   ///
      str    CPTM2_28                  2678-2679   ///
      str    CPTM2_29                  2680-2681   ///
      str    CPTM2_30                  2682-2683   ///
      str    CPTM2_31                  2684-2685   ///
      str    CPTM2_32                  2686-2687   ///
      str    CPTM2_33                  2688-2689   ///
      str    CPTM2_34                  2690-2691   ///
      str    CPTM2_35                  2692-2693   ///
      str    CPTM2_36                  2694-2695   ///
      str    CPTM2_37                  2696-2697   ///
      str    CPTM2_38                  2698-2699   ///
      str    CPTM2_39                  2700-2701   ///
      str    CPTM2_40                  2702-2703   ///
      str    CPTM2_41                  2704-2705   ///
      str    CPTM2_42                  2706-2707   ///
      str    CPTM2_43                  2708-2709   ///
      str    CPTM2_44                  2710-2711   ///
      str    CPTM2_45                  2712-2713   ///
      str    CPTM2_46                  2714-2715   ///
      str    CPTM2_47                  2716-2717   ///
      str    CPTM2_48                  2718-2719   ///
      str    CPTM2_49                  2720-2721   ///
      str    CPTM2_50                  2722-2723   ///
      str    CPTM2_51                  2724-2725   ///
      str    CPTM2_52                  2726-2727   ///
      str    CPTM2_53                  2728-2729   ///
      str    CPTM2_54                  2730-2731   ///
      str    CPTM2_55                  2732-2733   ///
      str    CPTM2_56                  2734-2735   ///
      str    CPTM2_57                  2736-2737   ///
      str    CPTM2_58                  2738-2739   ///
      str    CPTM2_59                  2740-2741   ///
      str    CPTM2_60                  2742-2743   ///
      str    CPTM2_61                  2744-2745   ///
      str    CPTM2_62                  2746-2747   ///
      str    CPTM2_63                  2748-2749   ///
      str    CPTM2_64                  2750-2751   ///
      str    CPTM2_65                  2752-2753   ///
      str    CPTM2_66                  2754-2755   ///
      str    CPTM2_67                  2756-2757   ///
      str    CPTM2_68                  2758-2759   ///
      str    CPTM2_69                  2760-2761   ///
      str    CPTM2_70                  2762-2763   ///
      str    CPTM2_71                  2764-2765   ///
      str    CPTM2_72                  2766-2767   ///
      str    CPTM2_73                  2768-2769   ///
      str    CPTM2_74                  2770-2771   ///
      str    CPTM2_75                  2772-2773   ///
      str    CPTM2_76                  2774-2775   ///
      str    CPTM2_77                  2776-2777   ///
      str    CPTM2_78                  2778-2779   ///
      str    CPTM2_79                  2780-2781   ///
      str    CPTM2_80                  2782-2783   ///
      str    CPTM2_81                  2784-2785   ///
      str    CPTM2_82                  2786-2787   ///
      str    CPTM2_83                  2788-2789   ///
      str    CPTM2_84                  2790-2791   ///
      str    CPTM2_85                  2792-2793   ///
      str    CPTM2_86                  2794-2795   ///
      str    CPTM2_87                  2796-2797   ///
      str    CPTM2_88                  2798-2799   ///
      str    CPTM2_89                  2800-2801   ///
      str    CPTM2_90                  2802-2803   ///
      str    CPTM2_91                  2804-2805   ///
      str    CPTM2_92                  2806-2807   ///
      str    CPTM2_93                  2808-2809   ///
      str    CPTM2_94                  2810-2811   ///
      str    CPTM2_95                  2812-2813   ///
      str    CPTM2_96                  2814-2815   ///
      str    CPTM2_97                  2816-2817   ///
      str    CPTM2_98                  2818-2819   ///
      str    CPTM2_99                  2820-2821   ///
      str    CPTM2_100                 2822-2823   ///
      str    CPTM2_101                 2824-2825   ///
      str    CPTM2_102                 2826-2827   ///
      str    CPTM2_103                 2828-2829   ///
      str    CPTM2_104                 2830-2831   ///
      str    CPTM2_105                 2832-2833   ///
      str    CPTM2_106                 2834-2835   ///
      str    CPTM2_107                 2836-2837   ///
      str    CPTM2_108                 2838-2839   ///
      str    CPTM2_109                 2840-2841   ///
      str    CPTM2_110                 2842-2843   ///
      str    CPTM2_111                 2844-2845   ///
      str    CPTM2_112                 2846-2847   ///
      str    CPTM2_113                 2848-2849   ///
      str    CPTM2_114                 2850-2851   ///
      str    CPTM2_115                 2852-2853   ///
      str    CPTM2_116                 2854-2855   ///
      str    CPTM2_117                 2856-2857   ///
      str    CPTM2_118                 2858-2859   ///
      str    CPTM2_119                 2860-2861   ///
      str    CPTM2_120                 2862-2863   ///
      str    CPTM2_121                 2864-2865   ///
      str    CPTM2_122                 2866-2867   ///
      str    CPTM2_123                 2868-2869   ///
      str    CPTM2_124                 2870-2871   ///
      str    CPTM2_125                 2872-2873   ///
      str    CPTM2_126                 2874-2875   ///
      str    CPTM2_127                 2876-2877   ///
      str    CPTM2_128                 2878-2879   ///
      str    CPTM2_129                 2880-2881   ///
      str    CPTM2_130                 2882-2883   ///
      str    CPTM2_131                 2884-2885   ///
      str    CPTM2_132                 2886-2887   ///
      str    CPTM2_133                 2888-2889   ///
      str    CPTM2_134                 2890-2891   ///
      str    CPTM2_135                 2892-2893   ///
      str    CPTM2_136                 2894-2895   ///
      str    CPTM2_137                 2896-2897   ///
      str    CPTM2_138                 2898-2899   ///
      str    CPTM2_139                 2900-2901   ///
      str    CPTM2_140                 2902-2903   ///
      str    CPTM2_141                 2904-2905   ///
      str    CPTM2_142                 2906-2907   ///
      str    CPTM2_143                 2908-2909   ///
      str    CPTM2_144                 2910-2911   ///
      str    CPTM2_145                 2912-2913   ///
      str    CPTM2_146                 2914-2915   ///
      str    CPTM2_147                 2916-2917   ///
      str    CPTM2_148                 2918-2919   ///
      str    CPTM2_149                 2920-2921   ///
      str    CPTM2_150                 2922-2923   ///
      str    CPTM2_151                 2924-2925   ///
      str    CPTM2_152                 2926-2927   ///
      str    CPTM2_153                 2928-2929   ///
      str    CPTM2_154                 2930-2931   ///
      str    CPTM2_155                 2932-2933   ///
      str    CPTM2_156                 2934-2935   ///
      str    CPTM2_157                 2936-2937   ///
      str    CPTM2_158                 2938-2939   ///
      str    CPTM2_159                 2940-2941   ///
      str    CPTM2_160                 2942-2943   ///
      str    CPTM2_161                 2944-2945   ///
      str    CPTM2_162                 2946-2947   ///
      str    CPTM2_163                 2948-2949   ///
      str    CPTM2_164                 2950-2951   ///
      str    CPTM2_165                 2952-2953   ///
      str    CPTM2_166                 2954-2955   ///
      str    CPTM2_167                 2956-2957   ///
      str    CPTM2_168                 2958-2959   ///
      str    CPTM2_169                 2960-2961   ///
      str    CPTM2_170                 2962-2963   ///
      str    CPTM2_171                 2964-2965   ///
      str    CPTM2_172                 2966-2967   ///
      str    CPTM2_173                 2968-2969   ///
      str    CPTM2_174                 2970-2971   ///
      str    CPTM2_175                 2972-2973   ///
      str    CPTM2_176                 2974-2975   ///
      str    CPTM2_177                 2976-2977   ///
      str    CPTM2_178                 2978-2979   ///
      str    CPTM2_179                 2980-2981   ///
      str    CPTM2_180                 2982-2983   ///
      str    CPTM2_181                 2984-2985   ///
      str    CPTM2_182                 2986-2987   ///
      str    CPTM2_183                 2988-2989   ///
      str    CPTM2_184                 2990-2991   ///
      str    CPTM2_185                 2992-2993   ///
      str    CPTM2_186                 2994-2995   ///
      str    CPTM2_187                 2996-2997   ///
      str    CPTM2_188                 2998-2999   ///
      str    CPTM2_189                 3000-3001   ///
      str    CPTM2_190                 3002-3003   ///
      str    CPTM2_191                 3004-3005   ///
      str    CPTM2_192                 3006-3007   ///
      str    CPTM2_193                 3008-3009   ///
      str    CPTM2_194                 3010-3011   ///
      str    CPTM2_195                 3012-3013   ///
      str    CPTM2_196                 3014-3015   ///
      str    CPTM2_197                 3016-3017   ///
      str    CPTM2_198                 3018-3019   ///
      str    CPTM2_199                 3020-3021   ///
      str    CPTM2_200                 3022-3023   ///
      int    DHOUR                     3024-3027   ///
      byte   DIED                      3028-3029   ///
      str    DISP_X                    3030-3031   ///
      byte   DISPUB04                  3032-3033   ///
      byte   DISPUNIFORM               3034-3035   ///
      byte   DMONTH                    3036-3037   ///
      byte   DQTR                      3038-3039   ///
      long   DURATION                  3040-3045   ///
      str    DXPOA1                    3046        ///
      str    DXPOA2                    3047        ///
      str    DXPOA3                    3048        ///
      str    DXPOA4                    3049        ///
      str    DXPOA5                    3050        ///
      str    DXPOA6                    3051        ///
      str    DXPOA7                    3052        ///
      str    DXPOA8                    3053        ///
      str    DXPOA9                    3054        ///
      str    DXPOA10                   3055        ///
      str    DXPOA11                   3056        ///
      str    DXPOA12                   3057        ///
      str    DXPOA13                   3058        ///
      str    DXPOA14                   3059        ///
      str    DXPOA15                   3060        ///
      str    DXPOA16                   3061        ///
      str    DXPOA17                   3062        ///
      str    DXPOA18                   3063        ///
      str    DXPOA19                   3064        ///
      str    DXPOA20                   3065        ///
      str    DXPOA21                   3066        ///
      str    DXPOA22                   3067        ///
      str    DXPOA23                   3068        ///
      str    DXPOA24                   3069        ///
      str    DXPOA25                   3070        ///
      str    DXPOA26                   3071        ///
      str    DXPOA27                   3072        ///
      str    DXPOA28                   3073        ///
      str    DXPOA29                   3074        ///
      str    DXPOA30                   3075        ///
      str    DXPOA31                   3076        ///
      str    DXPOA32                   3077        ///
      str    DXPOA33                   3078        ///
      str    DXPOA34                   3079        ///
      str    DXPOA35                   3080        ///
      str    DXPOA36                   3081        ///
      str    DXPOA37                   3082        ///
      str    DXPOA38                   3083        ///
      str    DXPOA39                   3084        ///
      byte   FEMALE                    3085-3086   ///
      byte   HCUP_ED                   3087-3088   ///
      byte   HCUP_OS                   3089-3090   ///
      long   HCUP_SURGERY_BROAD_CPT    3091-3095   ///
      long   HCUP_SURGERY_NARROW_CPT   3096-3100   ///
      byte   HISPANIC                  3101-3102   ///
      str    HISPANIC_X                3103-3104   ///
      str    HOSPST                    3105-3106   ///
      str    I10_DX_Visit_Reason1      3107-3113   ///
      str    I10_DX1                   3114-3120   ///
      str    I10_DX2                   3121-3127   ///
      str    I10_DX3                   3128-3134   ///
      str    I10_DX4                   3135-3141   ///
      str    I10_DX5                   3142-3148   ///
      str    I10_DX6                   3149-3155   ///
      str    I10_DX7                   3156-3162   ///
      str    I10_DX8                   3163-3169   ///
      str    I10_DX9                   3170-3176   ///
      str    I10_DX10                  3177-3183   ///
      str    I10_DX11                  3184-3190   ///
      str    I10_DX12                  3191-3197   ///
      str    I10_DX13                  3198-3204   ///
      str    I10_DX14                  3205-3211   ///
      str    I10_DX15                  3212-3218   ///
      str    I10_DX16                  3219-3225   ///
      str    I10_DX17                  3226-3232   ///
      str    I10_DX18                  3233-3239   ///
      str    I10_DX19                  3240-3246   ///
      str    I10_DX20                  3247-3253   ///
      str    I10_DX21                  3254-3260   ///
      str    I10_DX22                  3261-3267   ///
      str    I10_DX23                  3268-3274   ///
      str    I10_DX24                  3275-3281   ///
      str    I10_DX25                  3282-3288   ///
      str    I10_DX26                  3289-3295   ///
      str    I10_DX27                  3296-3302   ///
      str    I10_DX28                  3303-3309   ///
      str    I10_DX29                  3310-3316   ///
      str    I10_DX30                  3317-3323   ///
      str    I10_DX31                  3324-3330   ///
      str    I10_DX32                  3331-3337   ///
      str    I10_DX33                  3338-3344   ///
      str    I10_DX34                  3345-3351   ///
      str    I10_DX35                  3352-3358   ///
      str    I10_DX36                  3359-3365   ///
      str    I10_DX37                  3366-3372   ///
      str    I10_DX38                  3373-3379   ///
      str    I10_DX39                  3380-3386   ///
      int    I10_NDX                   3387-3389   ///
      int    I10_NPR                   3390-3392   ///
      str    I10_PR1                   3393-3399   ///
      str    I10_PR2                   3400-3406   ///
      str    I10_PR3                   3407-3413   ///
      str    I10_PR4                   3414-3420   ///
      str    I10_PR5                   3421-3427   ///
      str    I10_PR6                   3428-3434   ///
      str    I10_PR7                   3435-3441   ///
      str    I10_PR8                   3442-3448   ///
      int    I10_PROCTYPE              3449-3451   ///
      double KEY                       3452-3466   ///
      long   LOS                       3467-3471   ///
      long   LOS_X                     3472-3477   ///
      byte   MEDINCSTQ                 3478-3479   ///
      long   MRN_R                     3480-3488   ///
      int    NCPT                      3489-3492   ///
      str    OPservice                 3493-3496   ///
      double OS_TIME                   3497-3507   ///
      byte   PAY1                      3508-3509   ///
      str    PAY1_X                    3510-3516   ///
      byte   PAY2                      3517-3518   ///
      str    PAY2_X                    3519-3525   ///
      byte   PAY3                      3526-3527   ///
      str    PAY3_X                    3528-3534   ///
      int    PL_CBSA                   3535-3537   ///
      byte   PL_NCHS                   3538-3539   ///
      byte   PL_RUCC                   3540-3541   ///
      byte   PL_UIC                    3542-3543   ///
      byte   PL_UR_CAT4                3544-3545   ///
      byte   POA_Disch_Edit1           3546-3547   ///
      byte   POA_Disch_Edit2           3548-3549   ///
      byte   POA_Hosp_Edit1            3550-3551   ///
      byte   POA_Hosp_Edit2            3552-3553   ///
      byte   POA_Hosp_Edit3            3554-3555   ///
      double POA_Hosp_Edit3_Value      3556-3563   ///
      str    PointOfOrigin_X           3564        ///
      str    PointOfOriginUB04         3565        ///
      long   PRDAY1                    3566-3570   ///
      long   PRDAY2                    3571-3575   ///
      long   PRDAY3                    3576-3580   ///
      long   PRDAY4                    3581-3585   ///
      long   PRDAY5                    3586-3590   ///
      long   PRDAY6                    3591-3595   ///
      long   PRDAY7                    3596-3600   ///
      long   PRDAY8                    3601-3605   ///
      str    PrimLang                  3606-3608   ///
      str    PSTATE                    3609-3610   ///
      str    PSTATE_GEO                3611-3612   ///
      long   PSTCO_GEO                 3613-3617   ///
      byte   RACE                      3618-3619   ///
      float  RACE_PCT_MISS_HOSP        3620-3626   ///
      str    RACE_X                    3627-3646   ///
      byte   SASD_SEDD                 3647-3648   ///
      byte   STATE_AS                  3649-3650   ///
      byte   STATE_ED                  3651-3652   ///
      byte   STATE_OS                  3653-3654   ///
      double TOTCHG                    3655-3664   ///
      double TOTCHG_X                  3665-3679   ///
      int    YEAR                      3680-3683   ///
      str    ZIP                       3684-3688   ///
      str    ZIP3                      3689-3691   ///
      int    ZIPINC_QRTL               3692-3694   ///
      int    AYEAR                     3695-3698   ///
      byte   BMONTH                    3699-3700   ///
      int    BYEAR                     3701-3704   ///
      byte   PRMONTH1                  3705-3706   ///
      byte   PRMONTH2                  3707-3708   ///
      byte   PRMONTH3                  3709-3710   ///
      byte   PRMONTH4                  3711-3712   ///
      byte   PRMONTH5                  3713-3714   ///
      byte   PRMONTH6                  3715-3716   ///
      byte   PRMONTH7                  3717-3718   ///
      byte   PRMONTH8                  3719-3720   ///
      byte   PRMONTH9                  3721-3722   ///
      int    PRYEAR1                   3723-3726   ///
      int    PRYEAR2                   3727-3730   ///
      int    PRYEAR3                   3731-3734   ///
      int    PRYEAR4                   3735-3738   ///
      int    PRYEAR5                   3739-3742   ///
      int    PRYEAR6                   3743-3746   ///
      int    PRYEAR7                   3747-3750   ///
      int    PRYEAR8                   3751-3754   ///
      int    PRYEAR9                   3755-3758   ///
      using  "MN_SEDD_2021_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
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
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DURATION                 "Elapsed time for hospital care in hours and minutes"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HCUP_SURGERY_BROAD_CPT   "Number of reported CPT procedures that qualify as a surgery using a broad definition"
label var HCUP_SURGERY_NARROW_CPT  "Number of reported CPT procedures that qualify as a surgery using a narrow definition"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPST                   "Hospital state postal code"
label var I10_DX_Visit_Reason1     "ICD-10-CM Reason for visit diagnosis 1"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
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
label var PrimLang                 "Primary language of patient"
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
label var RACE                     "Race (uniform)"
label var RACE_PCT_MISS_HOSP       "Hospital percentage of missing or invalid race values"
label var RACE_X                   "Race (as received from source)"
label var SASD_SEDD                "SASD and SEDD indicator"
label var STATE_AS                 "State Ambulatory Surgery service indicator"
label var STATE_ED                 "State Emergency Department service indicator"
label var STATE_OS                 "State Observation Stay service indicator"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
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
label var PRYEAR1                  "Year of procedure 1"
label var PRYEAR2                  "Year of procedure 2"
label var PRYEAR3                  "Year of procedure 3"
label var PRYEAR4                  "Year of procedure 4"
label var PRYEAR5                  "Year of procedure 5"
label var PRYEAR6                  "Year of procedure 6"
label var PRYEAR7                  "Year of procedure 7"
label var PRYEAR8                  "Year of procedure 8"
label var PRYEAR9                  "Year of procedure 9"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
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
recode HCUP_SURGERY_BROAD_CPT    (-9999 -8888 -6666=.)
recode HCUP_SURGERY_NARROW_CPT   (-9999 -8888 -6666=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
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
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_PCT_MISS_HOSP        (-999.99 -888.88 -666.66=.)
recode SASD_SEDD                 (-9 -8 -6 -5=.)
recode STATE_AS                  (-9 -8 -6 -5=.)
recode STATE_ED                  (-9 -8 -6 -5=.)
recode STATE_OS                  (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
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
recode PRYEAR1                   (-999 -888 -666=.)
recode PRYEAR2                   (-999 -888 -666=.)
recode PRYEAR3                   (-999 -888 -666=.)
recode PRYEAR4                   (-999 -888 -666=.)
recode PRYEAR5                   (-999 -888 -666=.)
recode PRYEAR6                   (-999 -888 -666=.)
recode PRYEAR7                   (-999 -888 -666=.)
recode PRYEAR8                   (-999 -888 -666=.)
recode PRYEAR9                   (-999 -888 -666=.)

save "MN_SEDD_2021_CORE.dta", replace
