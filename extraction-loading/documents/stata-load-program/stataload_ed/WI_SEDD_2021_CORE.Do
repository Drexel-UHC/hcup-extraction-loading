/*****************************************************************************
* Creation Date: 08/18/2022   
* WI_SEDD_2021_CORE.Do
* This program will load the 2021 WI ASCII CORE File into Stata.
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
      str    CPT54                      285- 289   ///
      str    CPT55                      290- 294   ///
      str    CPT56                      295- 299   ///
      str    CPT57                      300- 304   ///
      str    CPT58                      305- 309   ///
      str    CPT59                      310- 314   ///
      str    CPT60                      315- 319   ///
      str    CPT61                      320- 324   ///
      str    CPT62                      325- 329   ///
      str    CPT63                      330- 334   ///
      str    CPT64                      335- 339   ///
      str    CPT65                      340- 344   ///
      str    CPT66                      345- 349   ///
      str    CPT67                      350- 354   ///
      str    CPT68                      355- 359   ///
      str    CPT69                      360- 364   ///
      str    CPT70                      365- 369   ///
      str    CPT71                      370- 374   ///
      str    CPT72                      375- 379   ///
      str    CPT73                      380- 384   ///
      str    CPT74                      385- 389   ///
      str    CPT75                      390- 394   ///
      str    CPT76                      395- 399   ///
      str    CPT77                      400- 404   ///
      str    CPT78                      405- 409   ///
      str    CPT79                      410- 414   ///
      str    CPT80                      415- 419   ///
      str    CPT81                      420- 424   ///
      str    CPT82                      425- 429   ///
      str    CPT83                      430- 434   ///
      str    CPT84                      435- 439   ///
      str    CPT85                      440- 444   ///
      str    CPT86                      445- 449   ///
      str    CPT87                      450- 454   ///
      str    CPT88                      455- 459   ///
      str    CPT89                      460- 464   ///
      str    CPT90                      465- 469   ///
      str    CPT91                      470- 474   ///
      str    CPT92                      475- 479   ///
      str    CPT93                      480- 484   ///
      str    CPT94                      485- 489   ///
      str    CPT95                      490- 494   ///
      str    CPT96                      495- 499   ///
      str    CPT97                      500- 504   ///
      str    CPT98                      505- 509   ///
      str    CPT99                      510- 514   ///
      str    CPT100                     515- 519   ///
      str    CPT101                     520- 524   ///
      str    CPT102                     525- 529   ///
      str    CPT103                     530- 534   ///
      str    CPT104                     535- 539   ///
      str    CPT105                     540- 544   ///
      str    CPT106                     545- 549   ///
      str    CPT107                     550- 554   ///
      str    CPT108                     555- 559   ///
      str    CPT109                     560- 564   ///
      str    CPT110                     565- 569   ///
      str    CPT111                     570- 574   ///
      str    CPT112                     575- 579   ///
      str    CPT113                     580- 584   ///
      str    CPT114                     585- 589   ///
      str    CPT115                     590- 594   ///
      str    CPT116                     595- 599   ///
      str    CPT117                     600- 604   ///
      str    CPT118                     605- 609   ///
      str    CPT119                     610- 614   ///
      str    CPT120                     615- 619   ///
      str    CPT121                     620- 624   ///
      str    CPT122                     625- 629   ///
      str    CPT123                     630- 634   ///
      str    CPT124                     635- 639   ///
      str    CPT125                     640- 644   ///
      str    CPT126                     645- 649   ///
      str    CPT127                     650- 654   ///
      str    CPT128                     655- 659   ///
      str    CPT129                     660- 664   ///
      str    CPT130                     665- 669   ///
      str    CPT131                     670- 674   ///
      str    CPT132                     675- 679   ///
      str    CPT133                     680- 684   ///
      str    CPT134                     685- 689   ///
      str    CPT135                     690- 694   ///
      str    CPT136                     695- 699   ///
      str    CPT137                     700- 704   ///
      str    CPT138                     705- 709   ///
      str    CPT139                     710- 714   ///
      str    CPT140                     715- 719   ///
      str    CPT141                     720- 724   ///
      str    CPT142                     725- 729   ///
      str    CPT143                     730- 734   ///
      str    CPT144                     735- 739   ///
      str    CPT145                     740- 744   ///
      str    CPT146                     745- 749   ///
      str    CPT147                     750- 754   ///
      str    CPT148                     755- 759   ///
      str    CPT149                     760- 764   ///
      str    CPT150                     765- 769   ///
      str    CPT151                     770- 774   ///
      str    CPT152                     775- 779   ///
      str    CPT153                     780- 784   ///
      str    CPT154                     785- 789   ///
      str    CPT155                     790- 794   ///
      str    CPT156                     795- 799   ///
      str    CPT157                     800- 804   ///
      str    CPT158                     805- 809   ///
      str    CPT159                     810- 814   ///
      str    CPT160                     815- 819   ///
      str    CPT161                     820- 824   ///
      str    CPT162                     825- 829   ///
      str    CPT163                     830- 834   ///
      str    CPT164                     835- 839   ///
      str    CPT165                     840- 844   ///
      str    CPT166                     845- 849   ///
      str    CPT167                     850- 854   ///
      str    CPT168                     855- 859   ///
      str    CPT169                     860- 864   ///
      str    CPT170                     865- 869   ///
      str    CPT171                     870- 874   ///
      str    CPT172                     875- 879   ///
      str    CPT173                     880- 884   ///
      str    CPT174                     885- 889   ///
      str    CPT175                     890- 894   ///
      str    CPT176                     895- 899   ///
      str    CPT177                     900- 904   ///
      str    CPT178                     905- 909   ///
      str    CPT179                     910- 914   ///
      str    CPT180                     915- 919   ///
      str    CPT181                     920- 924   ///
      str    CPT182                     925- 929   ///
      str    CPT183                     930- 934   ///
      str    CPT184                     935- 939   ///
      str    CPT185                     940- 944   ///
      str    CPT186                     945- 949   ///
      str    CPT187                     950- 954   ///
      str    CPT188                     955- 959   ///
      str    CPT189                     960- 964   ///
      str    CPT190                     965- 969   ///
      str    CPT191                     970- 974   ///
      str    CPT192                     975- 979   ///
      str    CPT193                     980- 984   ///
      str    CPT194                     985- 989   ///
      str    CPT195                     990- 994   ///
      str    CPT196                     995- 999   ///
      str    CPT197                    1000-1004   ///
      str    CPT198                    1005-1009   ///
      str    CPT199                    1010-1014   ///
      str    CPT200                    1015-1019   ///
      int    CPTCCS1                   1020-1022   ///
      int    CPTCCS2                   1023-1025   ///
      int    CPTCCS3                   1026-1028   ///
      int    CPTCCS4                   1029-1031   ///
      int    CPTCCS5                   1032-1034   ///
      int    CPTCCS6                   1035-1037   ///
      int    CPTCCS7                   1038-1040   ///
      int    CPTCCS8                   1041-1043   ///
      int    CPTCCS9                   1044-1046   ///
      int    CPTCCS10                  1047-1049   ///
      int    CPTCCS11                  1050-1052   ///
      int    CPTCCS12                  1053-1055   ///
      int    CPTCCS13                  1056-1058   ///
      int    CPTCCS14                  1059-1061   ///
      int    CPTCCS15                  1062-1064   ///
      int    CPTCCS16                  1065-1067   ///
      int    CPTCCS17                  1068-1070   ///
      int    CPTCCS18                  1071-1073   ///
      int    CPTCCS19                  1074-1076   ///
      int    CPTCCS20                  1077-1079   ///
      int    CPTCCS21                  1080-1082   ///
      int    CPTCCS22                  1083-1085   ///
      int    CPTCCS23                  1086-1088   ///
      int    CPTCCS24                  1089-1091   ///
      int    CPTCCS25                  1092-1094   ///
      int    CPTCCS26                  1095-1097   ///
      int    CPTCCS27                  1098-1100   ///
      int    CPTCCS28                  1101-1103   ///
      int    CPTCCS29                  1104-1106   ///
      int    CPTCCS30                  1107-1109   ///
      int    CPTCCS31                  1110-1112   ///
      int    CPTCCS32                  1113-1115   ///
      int    CPTCCS33                  1116-1118   ///
      int    CPTCCS34                  1119-1121   ///
      int    CPTCCS35                  1122-1124   ///
      int    CPTCCS36                  1125-1127   ///
      int    CPTCCS37                  1128-1130   ///
      int    CPTCCS38                  1131-1133   ///
      int    CPTCCS39                  1134-1136   ///
      int    CPTCCS40                  1137-1139   ///
      int    CPTCCS41                  1140-1142   ///
      int    CPTCCS42                  1143-1145   ///
      int    CPTCCS43                  1146-1148   ///
      int    CPTCCS44                  1149-1151   ///
      int    CPTCCS45                  1152-1154   ///
      int    CPTCCS46                  1155-1157   ///
      int    CPTCCS47                  1158-1160   ///
      int    CPTCCS48                  1161-1163   ///
      int    CPTCCS49                  1164-1166   ///
      int    CPTCCS50                  1167-1169   ///
      int    CPTCCS51                  1170-1172   ///
      int    CPTCCS52                  1173-1175   ///
      int    CPTCCS53                  1176-1178   ///
      int    CPTCCS54                  1179-1181   ///
      int    CPTCCS55                  1182-1184   ///
      int    CPTCCS56                  1185-1187   ///
      int    CPTCCS57                  1188-1190   ///
      int    CPTCCS58                  1191-1193   ///
      int    CPTCCS59                  1194-1196   ///
      int    CPTCCS60                  1197-1199   ///
      int    CPTCCS61                  1200-1202   ///
      int    CPTCCS62                  1203-1205   ///
      int    CPTCCS63                  1206-1208   ///
      int    CPTCCS64                  1209-1211   ///
      int    CPTCCS65                  1212-1214   ///
      int    CPTCCS66                  1215-1217   ///
      int    CPTCCS67                  1218-1220   ///
      int    CPTCCS68                  1221-1223   ///
      int    CPTCCS69                  1224-1226   ///
      int    CPTCCS70                  1227-1229   ///
      int    CPTCCS71                  1230-1232   ///
      int    CPTCCS72                  1233-1235   ///
      int    CPTCCS73                  1236-1238   ///
      int    CPTCCS74                  1239-1241   ///
      int    CPTCCS75                  1242-1244   ///
      int    CPTCCS76                  1245-1247   ///
      int    CPTCCS77                  1248-1250   ///
      int    CPTCCS78                  1251-1253   ///
      int    CPTCCS79                  1254-1256   ///
      int    CPTCCS80                  1257-1259   ///
      int    CPTCCS81                  1260-1262   ///
      int    CPTCCS82                  1263-1265   ///
      int    CPTCCS83                  1266-1268   ///
      int    CPTCCS84                  1269-1271   ///
      int    CPTCCS85                  1272-1274   ///
      int    CPTCCS86                  1275-1277   ///
      int    CPTCCS87                  1278-1280   ///
      int    CPTCCS88                  1281-1283   ///
      int    CPTCCS89                  1284-1286   ///
      int    CPTCCS90                  1287-1289   ///
      int    CPTCCS91                  1290-1292   ///
      int    CPTCCS92                  1293-1295   ///
      int    CPTCCS93                  1296-1298   ///
      int    CPTCCS94                  1299-1301   ///
      int    CPTCCS95                  1302-1304   ///
      int    CPTCCS96                  1305-1307   ///
      int    CPTCCS97                  1308-1310   ///
      int    CPTCCS98                  1311-1313   ///
      int    CPTCCS99                  1314-1316   ///
      int    CPTCCS100                 1317-1319   ///
      int    CPTCCS101                 1320-1322   ///
      int    CPTCCS102                 1323-1325   ///
      int    CPTCCS103                 1326-1328   ///
      int    CPTCCS104                 1329-1331   ///
      int    CPTCCS105                 1332-1334   ///
      int    CPTCCS106                 1335-1337   ///
      int    CPTCCS107                 1338-1340   ///
      int    CPTCCS108                 1341-1343   ///
      int    CPTCCS109                 1344-1346   ///
      int    CPTCCS110                 1347-1349   ///
      int    CPTCCS111                 1350-1352   ///
      int    CPTCCS112                 1353-1355   ///
      int    CPTCCS113                 1356-1358   ///
      int    CPTCCS114                 1359-1361   ///
      int    CPTCCS115                 1362-1364   ///
      int    CPTCCS116                 1365-1367   ///
      int    CPTCCS117                 1368-1370   ///
      int    CPTCCS118                 1371-1373   ///
      int    CPTCCS119                 1374-1376   ///
      int    CPTCCS120                 1377-1379   ///
      int    CPTCCS121                 1380-1382   ///
      int    CPTCCS122                 1383-1385   ///
      int    CPTCCS123                 1386-1388   ///
      int    CPTCCS124                 1389-1391   ///
      int    CPTCCS125                 1392-1394   ///
      int    CPTCCS126                 1395-1397   ///
      int    CPTCCS127                 1398-1400   ///
      int    CPTCCS128                 1401-1403   ///
      int    CPTCCS129                 1404-1406   ///
      int    CPTCCS130                 1407-1409   ///
      int    CPTCCS131                 1410-1412   ///
      int    CPTCCS132                 1413-1415   ///
      int    CPTCCS133                 1416-1418   ///
      int    CPTCCS134                 1419-1421   ///
      int    CPTCCS135                 1422-1424   ///
      int    CPTCCS136                 1425-1427   ///
      int    CPTCCS137                 1428-1430   ///
      int    CPTCCS138                 1431-1433   ///
      int    CPTCCS139                 1434-1436   ///
      int    CPTCCS140                 1437-1439   ///
      int    CPTCCS141                 1440-1442   ///
      int    CPTCCS142                 1443-1445   ///
      int    CPTCCS143                 1446-1448   ///
      int    CPTCCS144                 1449-1451   ///
      int    CPTCCS145                 1452-1454   ///
      int    CPTCCS146                 1455-1457   ///
      int    CPTCCS147                 1458-1460   ///
      int    CPTCCS148                 1461-1463   ///
      int    CPTCCS149                 1464-1466   ///
      int    CPTCCS150                 1467-1469   ///
      int    CPTCCS151                 1470-1472   ///
      int    CPTCCS152                 1473-1475   ///
      int    CPTCCS153                 1476-1478   ///
      int    CPTCCS154                 1479-1481   ///
      int    CPTCCS155                 1482-1484   ///
      int    CPTCCS156                 1485-1487   ///
      int    CPTCCS157                 1488-1490   ///
      int    CPTCCS158                 1491-1493   ///
      int    CPTCCS159                 1494-1496   ///
      int    CPTCCS160                 1497-1499   ///
      int    CPTCCS161                 1500-1502   ///
      int    CPTCCS162                 1503-1505   ///
      int    CPTCCS163                 1506-1508   ///
      int    CPTCCS164                 1509-1511   ///
      int    CPTCCS165                 1512-1514   ///
      int    CPTCCS166                 1515-1517   ///
      int    CPTCCS167                 1518-1520   ///
      int    CPTCCS168                 1521-1523   ///
      int    CPTCCS169                 1524-1526   ///
      int    CPTCCS170                 1527-1529   ///
      int    CPTCCS171                 1530-1532   ///
      int    CPTCCS172                 1533-1535   ///
      int    CPTCCS173                 1536-1538   ///
      int    CPTCCS174                 1539-1541   ///
      int    CPTCCS175                 1542-1544   ///
      int    CPTCCS176                 1545-1547   ///
      int    CPTCCS177                 1548-1550   ///
      int    CPTCCS178                 1551-1553   ///
      int    CPTCCS179                 1554-1556   ///
      int    CPTCCS180                 1557-1559   ///
      int    CPTCCS181                 1560-1562   ///
      int    CPTCCS182                 1563-1565   ///
      int    CPTCCS183                 1566-1568   ///
      int    CPTCCS184                 1569-1571   ///
      int    CPTCCS185                 1572-1574   ///
      int    CPTCCS186                 1575-1577   ///
      int    CPTCCS187                 1578-1580   ///
      int    CPTCCS188                 1581-1583   ///
      int    CPTCCS189                 1584-1586   ///
      int    CPTCCS190                 1587-1589   ///
      int    CPTCCS191                 1590-1592   ///
      int    CPTCCS192                 1593-1595   ///
      int    CPTCCS193                 1596-1598   ///
      int    CPTCCS194                 1599-1601   ///
      int    CPTCCS195                 1602-1604   ///
      int    CPTCCS196                 1605-1607   ///
      int    CPTCCS197                 1608-1610   ///
      int    CPTCCS198                 1611-1613   ///
      int    CPTCCS199                 1614-1616   ///
      int    CPTCCS200                 1617-1619   ///
      int    CPTDAY1                   1620-1622   ///
      int    CPTDAY2                   1623-1625   ///
      int    CPTDAY3                   1626-1628   ///
      int    CPTDAY4                   1629-1631   ///
      int    CPTDAY5                   1632-1634   ///
      int    CPTDAY6                   1635-1637   ///
      int    CPTDAY7                   1638-1640   ///
      int    CPTDAY8                   1641-1643   ///
      int    CPTDAY9                   1644-1646   ///
      int    CPTDAY10                  1647-1649   ///
      int    CPTDAY11                  1650-1652   ///
      int    CPTDAY12                  1653-1655   ///
      int    CPTDAY13                  1656-1658   ///
      int    CPTDAY14                  1659-1661   ///
      int    CPTDAY15                  1662-1664   ///
      int    CPTDAY16                  1665-1667   ///
      int    CPTDAY17                  1668-1670   ///
      int    CPTDAY18                  1671-1673   ///
      int    CPTDAY19                  1674-1676   ///
      int    CPTDAY20                  1677-1679   ///
      int    CPTDAY21                  1680-1682   ///
      int    CPTDAY22                  1683-1685   ///
      int    CPTDAY23                  1686-1688   ///
      int    CPTDAY24                  1689-1691   ///
      int    CPTDAY25                  1692-1694   ///
      int    CPTDAY26                  1695-1697   ///
      int    CPTDAY27                  1698-1700   ///
      int    CPTDAY28                  1701-1703   ///
      int    CPTDAY29                  1704-1706   ///
      int    CPTDAY30                  1707-1709   ///
      int    CPTDAY31                  1710-1712   ///
      int    CPTDAY32                  1713-1715   ///
      int    CPTDAY33                  1716-1718   ///
      int    CPTDAY34                  1719-1721   ///
      int    CPTDAY35                  1722-1724   ///
      int    CPTDAY36                  1725-1727   ///
      int    CPTDAY37                  1728-1730   ///
      int    CPTDAY38                  1731-1733   ///
      int    CPTDAY39                  1734-1736   ///
      int    CPTDAY40                  1737-1739   ///
      int    CPTDAY41                  1740-1742   ///
      int    CPTDAY42                  1743-1745   ///
      int    CPTDAY43                  1746-1748   ///
      int    CPTDAY44                  1749-1751   ///
      int    CPTDAY45                  1752-1754   ///
      int    CPTDAY46                  1755-1757   ///
      int    CPTDAY47                  1758-1760   ///
      int    CPTDAY48                  1761-1763   ///
      int    CPTDAY49                  1764-1766   ///
      int    CPTDAY50                  1767-1769   ///
      int    CPTDAY51                  1770-1772   ///
      int    CPTDAY52                  1773-1775   ///
      int    CPTDAY53                  1776-1778   ///
      int    CPTDAY54                  1779-1781   ///
      int    CPTDAY55                  1782-1784   ///
      int    CPTDAY56                  1785-1787   ///
      int    CPTDAY57                  1788-1790   ///
      int    CPTDAY58                  1791-1793   ///
      int    CPTDAY59                  1794-1796   ///
      int    CPTDAY60                  1797-1799   ///
      int    CPTDAY61                  1800-1802   ///
      int    CPTDAY62                  1803-1805   ///
      int    CPTDAY63                  1806-1808   ///
      int    CPTDAY64                  1809-1811   ///
      int    CPTDAY65                  1812-1814   ///
      int    CPTDAY66                  1815-1817   ///
      int    CPTDAY67                  1818-1820   ///
      int    CPTDAY68                  1821-1823   ///
      int    CPTDAY69                  1824-1826   ///
      int    CPTDAY70                  1827-1829   ///
      int    CPTDAY71                  1830-1832   ///
      int    CPTDAY72                  1833-1835   ///
      int    CPTDAY73                  1836-1838   ///
      int    CPTDAY74                  1839-1841   ///
      int    CPTDAY75                  1842-1844   ///
      int    CPTDAY76                  1845-1847   ///
      int    CPTDAY77                  1848-1850   ///
      int    CPTDAY78                  1851-1853   ///
      int    CPTDAY79                  1854-1856   ///
      int    CPTDAY80                  1857-1859   ///
      int    CPTDAY81                  1860-1862   ///
      int    CPTDAY82                  1863-1865   ///
      int    CPTDAY83                  1866-1868   ///
      int    CPTDAY84                  1869-1871   ///
      int    CPTDAY85                  1872-1874   ///
      int    CPTDAY86                  1875-1877   ///
      int    CPTDAY87                  1878-1880   ///
      int    CPTDAY88                  1881-1883   ///
      int    CPTDAY89                  1884-1886   ///
      int    CPTDAY90                  1887-1889   ///
      int    CPTDAY91                  1890-1892   ///
      int    CPTDAY92                  1893-1895   ///
      int    CPTDAY93                  1896-1898   ///
      int    CPTDAY94                  1899-1901   ///
      int    CPTDAY95                  1902-1904   ///
      int    CPTDAY96                  1905-1907   ///
      int    CPTDAY97                  1908-1910   ///
      int    CPTDAY98                  1911-1913   ///
      int    CPTDAY99                  1914-1916   ///
      int    CPTDAY100                 1917-1919   ///
      int    CPTDAY101                 1920-1922   ///
      int    CPTDAY102                 1923-1925   ///
      int    CPTDAY103                 1926-1928   ///
      int    CPTDAY104                 1929-1931   ///
      int    CPTDAY105                 1932-1934   ///
      int    CPTDAY106                 1935-1937   ///
      int    CPTDAY107                 1938-1940   ///
      int    CPTDAY108                 1941-1943   ///
      int    CPTDAY109                 1944-1946   ///
      int    CPTDAY110                 1947-1949   ///
      int    CPTDAY111                 1950-1952   ///
      int    CPTDAY112                 1953-1955   ///
      int    CPTDAY113                 1956-1958   ///
      int    CPTDAY114                 1959-1961   ///
      int    CPTDAY115                 1962-1964   ///
      int    CPTDAY116                 1965-1967   ///
      int    CPTDAY117                 1968-1970   ///
      int    CPTDAY118                 1971-1973   ///
      int    CPTDAY119                 1974-1976   ///
      int    CPTDAY120                 1977-1979   ///
      int    CPTDAY121                 1980-1982   ///
      int    CPTDAY122                 1983-1985   ///
      int    CPTDAY123                 1986-1988   ///
      int    CPTDAY124                 1989-1991   ///
      int    CPTDAY125                 1992-1994   ///
      int    CPTDAY126                 1995-1997   ///
      int    CPTDAY127                 1998-2000   ///
      int    CPTDAY128                 2001-2003   ///
      int    CPTDAY129                 2004-2006   ///
      int    CPTDAY130                 2007-2009   ///
      int    CPTDAY131                 2010-2012   ///
      int    CPTDAY132                 2013-2015   ///
      int    CPTDAY133                 2016-2018   ///
      int    CPTDAY134                 2019-2021   ///
      int    CPTDAY135                 2022-2024   ///
      int    CPTDAY136                 2025-2027   ///
      int    CPTDAY137                 2028-2030   ///
      int    CPTDAY138                 2031-2033   ///
      int    CPTDAY139                 2034-2036   ///
      int    CPTDAY140                 2037-2039   ///
      int    CPTDAY141                 2040-2042   ///
      int    CPTDAY142                 2043-2045   ///
      int    CPTDAY143                 2046-2048   ///
      int    CPTDAY144                 2049-2051   ///
      int    CPTDAY145                 2052-2054   ///
      int    CPTDAY146                 2055-2057   ///
      int    CPTDAY147                 2058-2060   ///
      int    CPTDAY148                 2061-2063   ///
      int    CPTDAY149                 2064-2066   ///
      int    CPTDAY150                 2067-2069   ///
      int    CPTDAY151                 2070-2072   ///
      int    CPTDAY152                 2073-2075   ///
      int    CPTDAY153                 2076-2078   ///
      int    CPTDAY154                 2079-2081   ///
      int    CPTDAY155                 2082-2084   ///
      int    CPTDAY156                 2085-2087   ///
      int    CPTDAY157                 2088-2090   ///
      int    CPTDAY158                 2091-2093   ///
      int    CPTDAY159                 2094-2096   ///
      int    CPTDAY160                 2097-2099   ///
      int    CPTDAY161                 2100-2102   ///
      int    CPTDAY162                 2103-2105   ///
      int    CPTDAY163                 2106-2108   ///
      int    CPTDAY164                 2109-2111   ///
      int    CPTDAY165                 2112-2114   ///
      int    CPTDAY166                 2115-2117   ///
      int    CPTDAY167                 2118-2120   ///
      int    CPTDAY168                 2121-2123   ///
      int    CPTDAY169                 2124-2126   ///
      int    CPTDAY170                 2127-2129   ///
      int    CPTDAY171                 2130-2132   ///
      int    CPTDAY172                 2133-2135   ///
      int    CPTDAY173                 2136-2138   ///
      int    CPTDAY174                 2139-2141   ///
      int    CPTDAY175                 2142-2144   ///
      int    CPTDAY176                 2145-2147   ///
      int    CPTDAY177                 2148-2150   ///
      int    CPTDAY178                 2151-2153   ///
      int    CPTDAY179                 2154-2156   ///
      int    CPTDAY180                 2157-2159   ///
      int    CPTDAY181                 2160-2162   ///
      int    CPTDAY182                 2163-2165   ///
      int    CPTDAY183                 2166-2168   ///
      int    CPTDAY184                 2169-2171   ///
      int    CPTDAY185                 2172-2174   ///
      int    CPTDAY186                 2175-2177   ///
      int    CPTDAY187                 2178-2180   ///
      int    CPTDAY188                 2181-2183   ///
      int    CPTDAY189                 2184-2186   ///
      int    CPTDAY190                 2187-2189   ///
      int    CPTDAY191                 2190-2192   ///
      int    CPTDAY192                 2193-2195   ///
      int    CPTDAY193                 2196-2198   ///
      int    CPTDAY194                 2199-2201   ///
      int    CPTDAY195                 2202-2204   ///
      int    CPTDAY196                 2205-2207   ///
      int    CPTDAY197                 2208-2210   ///
      int    CPTDAY198                 2211-2213   ///
      int    CPTDAY199                 2214-2216   ///
      int    CPTDAY200                 2217-2219   ///
      str    CPTM1_1                   2220-2221   ///
      str    CPTM1_2                   2222-2223   ///
      str    CPTM1_3                   2224-2225   ///
      str    CPTM1_4                   2226-2227   ///
      str    CPTM1_5                   2228-2229   ///
      str    CPTM1_6                   2230-2231   ///
      str    CPTM1_7                   2232-2233   ///
      str    CPTM1_8                   2234-2235   ///
      str    CPTM1_9                   2236-2237   ///
      str    CPTM1_10                  2238-2239   ///
      str    CPTM1_11                  2240-2241   ///
      str    CPTM1_12                  2242-2243   ///
      str    CPTM1_13                  2244-2245   ///
      str    CPTM1_14                  2246-2247   ///
      str    CPTM1_15                  2248-2249   ///
      str    CPTM1_16                  2250-2251   ///
      str    CPTM1_17                  2252-2253   ///
      str    CPTM1_18                  2254-2255   ///
      str    CPTM1_19                  2256-2257   ///
      str    CPTM1_20                  2258-2259   ///
      str    CPTM1_21                  2260-2261   ///
      str    CPTM1_22                  2262-2263   ///
      str    CPTM1_23                  2264-2265   ///
      str    CPTM1_24                  2266-2267   ///
      str    CPTM1_25                  2268-2269   ///
      str    CPTM1_26                  2270-2271   ///
      str    CPTM1_27                  2272-2273   ///
      str    CPTM1_28                  2274-2275   ///
      str    CPTM1_29                  2276-2277   ///
      str    CPTM1_30                  2278-2279   ///
      str    CPTM1_31                  2280-2281   ///
      str    CPTM1_32                  2282-2283   ///
      str    CPTM1_33                  2284-2285   ///
      str    CPTM1_34                  2286-2287   ///
      str    CPTM1_35                  2288-2289   ///
      str    CPTM1_36                  2290-2291   ///
      str    CPTM1_37                  2292-2293   ///
      str    CPTM1_38                  2294-2295   ///
      str    CPTM1_39                  2296-2297   ///
      str    CPTM1_40                  2298-2299   ///
      str    CPTM1_41                  2300-2301   ///
      str    CPTM1_42                  2302-2303   ///
      str    CPTM1_43                  2304-2305   ///
      str    CPTM1_44                  2306-2307   ///
      str    CPTM1_45                  2308-2309   ///
      str    CPTM1_46                  2310-2311   ///
      str    CPTM1_47                  2312-2313   ///
      str    CPTM1_48                  2314-2315   ///
      str    CPTM1_49                  2316-2317   ///
      str    CPTM1_50                  2318-2319   ///
      str    CPTM1_51                  2320-2321   ///
      str    CPTM1_52                  2322-2323   ///
      str    CPTM1_53                  2324-2325   ///
      str    CPTM1_54                  2326-2327   ///
      str    CPTM1_55                  2328-2329   ///
      str    CPTM1_56                  2330-2331   ///
      str    CPTM1_57                  2332-2333   ///
      str    CPTM1_58                  2334-2335   ///
      str    CPTM1_59                  2336-2337   ///
      str    CPTM1_60                  2338-2339   ///
      str    CPTM1_61                  2340-2341   ///
      str    CPTM1_62                  2342-2343   ///
      str    CPTM1_63                  2344-2345   ///
      str    CPTM1_64                  2346-2347   ///
      str    CPTM1_65                  2348-2349   ///
      str    CPTM1_66                  2350-2351   ///
      str    CPTM1_67                  2352-2353   ///
      str    CPTM1_68                  2354-2355   ///
      str    CPTM1_69                  2356-2357   ///
      str    CPTM1_70                  2358-2359   ///
      str    CPTM1_71                  2360-2361   ///
      str    CPTM1_72                  2362-2363   ///
      str    CPTM1_73                  2364-2365   ///
      str    CPTM1_74                  2366-2367   ///
      str    CPTM1_75                  2368-2369   ///
      str    CPTM1_76                  2370-2371   ///
      str    CPTM1_77                  2372-2373   ///
      str    CPTM1_78                  2374-2375   ///
      str    CPTM1_79                  2376-2377   ///
      str    CPTM1_80                  2378-2379   ///
      str    CPTM1_81                  2380-2381   ///
      str    CPTM1_82                  2382-2383   ///
      str    CPTM1_83                  2384-2385   ///
      str    CPTM1_84                  2386-2387   ///
      str    CPTM1_85                  2388-2389   ///
      str    CPTM1_86                  2390-2391   ///
      str    CPTM1_87                  2392-2393   ///
      str    CPTM1_88                  2394-2395   ///
      str    CPTM1_89                  2396-2397   ///
      str    CPTM1_90                  2398-2399   ///
      str    CPTM1_91                  2400-2401   ///
      str    CPTM1_92                  2402-2403   ///
      str    CPTM1_93                  2404-2405   ///
      str    CPTM1_94                  2406-2407   ///
      str    CPTM1_95                  2408-2409   ///
      str    CPTM1_96                  2410-2411   ///
      str    CPTM1_97                  2412-2413   ///
      str    CPTM1_98                  2414-2415   ///
      str    CPTM1_99                  2416-2417   ///
      str    CPTM1_100                 2418-2419   ///
      str    CPTM1_101                 2420-2421   ///
      str    CPTM1_102                 2422-2423   ///
      str    CPTM1_103                 2424-2425   ///
      str    CPTM1_104                 2426-2427   ///
      str    CPTM1_105                 2428-2429   ///
      str    CPTM1_106                 2430-2431   ///
      str    CPTM1_107                 2432-2433   ///
      str    CPTM1_108                 2434-2435   ///
      str    CPTM1_109                 2436-2437   ///
      str    CPTM1_110                 2438-2439   ///
      str    CPTM1_111                 2440-2441   ///
      str    CPTM1_112                 2442-2443   ///
      str    CPTM1_113                 2444-2445   ///
      str    CPTM1_114                 2446-2447   ///
      str    CPTM1_115                 2448-2449   ///
      str    CPTM1_116                 2450-2451   ///
      str    CPTM1_117                 2452-2453   ///
      str    CPTM1_118                 2454-2455   ///
      str    CPTM1_119                 2456-2457   ///
      str    CPTM1_120                 2458-2459   ///
      str    CPTM1_121                 2460-2461   ///
      str    CPTM1_122                 2462-2463   ///
      str    CPTM1_123                 2464-2465   ///
      str    CPTM1_124                 2466-2467   ///
      str    CPTM1_125                 2468-2469   ///
      str    CPTM1_126                 2470-2471   ///
      str    CPTM1_127                 2472-2473   ///
      str    CPTM1_128                 2474-2475   ///
      str    CPTM1_129                 2476-2477   ///
      str    CPTM1_130                 2478-2479   ///
      str    CPTM1_131                 2480-2481   ///
      str    CPTM1_132                 2482-2483   ///
      str    CPTM1_133                 2484-2485   ///
      str    CPTM1_134                 2486-2487   ///
      str    CPTM1_135                 2488-2489   ///
      str    CPTM1_136                 2490-2491   ///
      str    CPTM1_137                 2492-2493   ///
      str    CPTM1_138                 2494-2495   ///
      str    CPTM1_139                 2496-2497   ///
      str    CPTM1_140                 2498-2499   ///
      str    CPTM1_141                 2500-2501   ///
      str    CPTM1_142                 2502-2503   ///
      str    CPTM1_143                 2504-2505   ///
      str    CPTM1_144                 2506-2507   ///
      str    CPTM1_145                 2508-2509   ///
      str    CPTM1_146                 2510-2511   ///
      str    CPTM1_147                 2512-2513   ///
      str    CPTM1_148                 2514-2515   ///
      str    CPTM1_149                 2516-2517   ///
      str    CPTM1_150                 2518-2519   ///
      str    CPTM1_151                 2520-2521   ///
      str    CPTM1_152                 2522-2523   ///
      str    CPTM1_153                 2524-2525   ///
      str    CPTM1_154                 2526-2527   ///
      str    CPTM1_155                 2528-2529   ///
      str    CPTM1_156                 2530-2531   ///
      str    CPTM1_157                 2532-2533   ///
      str    CPTM1_158                 2534-2535   ///
      str    CPTM1_159                 2536-2537   ///
      str    CPTM1_160                 2538-2539   ///
      str    CPTM1_161                 2540-2541   ///
      str    CPTM1_162                 2542-2543   ///
      str    CPTM1_163                 2544-2545   ///
      str    CPTM1_164                 2546-2547   ///
      str    CPTM1_165                 2548-2549   ///
      str    CPTM1_166                 2550-2551   ///
      str    CPTM1_167                 2552-2553   ///
      str    CPTM1_168                 2554-2555   ///
      str    CPTM1_169                 2556-2557   ///
      str    CPTM1_170                 2558-2559   ///
      str    CPTM1_171                 2560-2561   ///
      str    CPTM1_172                 2562-2563   ///
      str    CPTM1_173                 2564-2565   ///
      str    CPTM1_174                 2566-2567   ///
      str    CPTM1_175                 2568-2569   ///
      str    CPTM1_176                 2570-2571   ///
      str    CPTM1_177                 2572-2573   ///
      str    CPTM1_178                 2574-2575   ///
      str    CPTM1_179                 2576-2577   ///
      str    CPTM1_180                 2578-2579   ///
      str    CPTM1_181                 2580-2581   ///
      str    CPTM1_182                 2582-2583   ///
      str    CPTM1_183                 2584-2585   ///
      str    CPTM1_184                 2586-2587   ///
      str    CPTM1_185                 2588-2589   ///
      str    CPTM1_186                 2590-2591   ///
      str    CPTM1_187                 2592-2593   ///
      str    CPTM1_188                 2594-2595   ///
      str    CPTM1_189                 2596-2597   ///
      str    CPTM1_190                 2598-2599   ///
      str    CPTM1_191                 2600-2601   ///
      str    CPTM1_192                 2602-2603   ///
      str    CPTM1_193                 2604-2605   ///
      str    CPTM1_194                 2606-2607   ///
      str    CPTM1_195                 2608-2609   ///
      str    CPTM1_196                 2610-2611   ///
      str    CPTM1_197                 2612-2613   ///
      str    CPTM1_198                 2614-2615   ///
      str    CPTM1_199                 2616-2617   ///
      str    CPTM1_200                 2618-2619   ///
      str    CPTM2_1                   2620-2621   ///
      str    CPTM2_2                   2622-2623   ///
      str    CPTM2_3                   2624-2625   ///
      str    CPTM2_4                   2626-2627   ///
      str    CPTM2_5                   2628-2629   ///
      str    CPTM2_6                   2630-2631   ///
      str    CPTM2_7                   2632-2633   ///
      str    CPTM2_8                   2634-2635   ///
      str    CPTM2_9                   2636-2637   ///
      str    CPTM2_10                  2638-2639   ///
      str    CPTM2_11                  2640-2641   ///
      str    CPTM2_12                  2642-2643   ///
      str    CPTM2_13                  2644-2645   ///
      str    CPTM2_14                  2646-2647   ///
      str    CPTM2_15                  2648-2649   ///
      str    CPTM2_16                  2650-2651   ///
      str    CPTM2_17                  2652-2653   ///
      str    CPTM2_18                  2654-2655   ///
      str    CPTM2_19                  2656-2657   ///
      str    CPTM2_20                  2658-2659   ///
      str    CPTM2_21                  2660-2661   ///
      str    CPTM2_22                  2662-2663   ///
      str    CPTM2_23                  2664-2665   ///
      str    CPTM2_24                  2666-2667   ///
      str    CPTM2_25                  2668-2669   ///
      str    CPTM2_26                  2670-2671   ///
      str    CPTM2_27                  2672-2673   ///
      str    CPTM2_28                  2674-2675   ///
      str    CPTM2_29                  2676-2677   ///
      str    CPTM2_30                  2678-2679   ///
      str    CPTM2_31                  2680-2681   ///
      str    CPTM2_32                  2682-2683   ///
      str    CPTM2_33                  2684-2685   ///
      str    CPTM2_34                  2686-2687   ///
      str    CPTM2_35                  2688-2689   ///
      str    CPTM2_36                  2690-2691   ///
      str    CPTM2_37                  2692-2693   ///
      str    CPTM2_38                  2694-2695   ///
      str    CPTM2_39                  2696-2697   ///
      str    CPTM2_40                  2698-2699   ///
      str    CPTM2_41                  2700-2701   ///
      str    CPTM2_42                  2702-2703   ///
      str    CPTM2_43                  2704-2705   ///
      str    CPTM2_44                  2706-2707   ///
      str    CPTM2_45                  2708-2709   ///
      str    CPTM2_46                  2710-2711   ///
      str    CPTM2_47                  2712-2713   ///
      str    CPTM2_48                  2714-2715   ///
      str    CPTM2_49                  2716-2717   ///
      str    CPTM2_50                  2718-2719   ///
      str    CPTM2_51                  2720-2721   ///
      str    CPTM2_52                  2722-2723   ///
      str    CPTM2_53                  2724-2725   ///
      str    CPTM2_54                  2726-2727   ///
      str    CPTM2_55                  2728-2729   ///
      str    CPTM2_56                  2730-2731   ///
      str    CPTM2_57                  2732-2733   ///
      str    CPTM2_58                  2734-2735   ///
      str    CPTM2_59                  2736-2737   ///
      str    CPTM2_60                  2738-2739   ///
      str    CPTM2_61                  2740-2741   ///
      str    CPTM2_62                  2742-2743   ///
      str    CPTM2_63                  2744-2745   ///
      str    CPTM2_64                  2746-2747   ///
      str    CPTM2_65                  2748-2749   ///
      str    CPTM2_66                  2750-2751   ///
      str    CPTM2_67                  2752-2753   ///
      str    CPTM2_68                  2754-2755   ///
      str    CPTM2_69                  2756-2757   ///
      str    CPTM2_70                  2758-2759   ///
      str    CPTM2_71                  2760-2761   ///
      str    CPTM2_72                  2762-2763   ///
      str    CPTM2_73                  2764-2765   ///
      str    CPTM2_74                  2766-2767   ///
      str    CPTM2_75                  2768-2769   ///
      str    CPTM2_76                  2770-2771   ///
      str    CPTM2_77                  2772-2773   ///
      str    CPTM2_78                  2774-2775   ///
      str    CPTM2_79                  2776-2777   ///
      str    CPTM2_80                  2778-2779   ///
      str    CPTM2_81                  2780-2781   ///
      str    CPTM2_82                  2782-2783   ///
      str    CPTM2_83                  2784-2785   ///
      str    CPTM2_84                  2786-2787   ///
      str    CPTM2_85                  2788-2789   ///
      str    CPTM2_86                  2790-2791   ///
      str    CPTM2_87                  2792-2793   ///
      str    CPTM2_88                  2794-2795   ///
      str    CPTM2_89                  2796-2797   ///
      str    CPTM2_90                  2798-2799   ///
      str    CPTM2_91                  2800-2801   ///
      str    CPTM2_92                  2802-2803   ///
      str    CPTM2_93                  2804-2805   ///
      str    CPTM2_94                  2806-2807   ///
      str    CPTM2_95                  2808-2809   ///
      str    CPTM2_96                  2810-2811   ///
      str    CPTM2_97                  2812-2813   ///
      str    CPTM2_98                  2814-2815   ///
      str    CPTM2_99                  2816-2817   ///
      str    CPTM2_100                 2818-2819   ///
      str    CPTM2_101                 2820-2821   ///
      str    CPTM2_102                 2822-2823   ///
      str    CPTM2_103                 2824-2825   ///
      str    CPTM2_104                 2826-2827   ///
      str    CPTM2_105                 2828-2829   ///
      str    CPTM2_106                 2830-2831   ///
      str    CPTM2_107                 2832-2833   ///
      str    CPTM2_108                 2834-2835   ///
      str    CPTM2_109                 2836-2837   ///
      str    CPTM2_110                 2838-2839   ///
      str    CPTM2_111                 2840-2841   ///
      str    CPTM2_112                 2842-2843   ///
      str    CPTM2_113                 2844-2845   ///
      str    CPTM2_114                 2846-2847   ///
      str    CPTM2_115                 2848-2849   ///
      str    CPTM2_116                 2850-2851   ///
      str    CPTM2_117                 2852-2853   ///
      str    CPTM2_118                 2854-2855   ///
      str    CPTM2_119                 2856-2857   ///
      str    CPTM2_120                 2858-2859   ///
      str    CPTM2_121                 2860-2861   ///
      str    CPTM2_122                 2862-2863   ///
      str    CPTM2_123                 2864-2865   ///
      str    CPTM2_124                 2866-2867   ///
      str    CPTM2_125                 2868-2869   ///
      str    CPTM2_126                 2870-2871   ///
      str    CPTM2_127                 2872-2873   ///
      str    CPTM2_128                 2874-2875   ///
      str    CPTM2_129                 2876-2877   ///
      str    CPTM2_130                 2878-2879   ///
      str    CPTM2_131                 2880-2881   ///
      str    CPTM2_132                 2882-2883   ///
      str    CPTM2_133                 2884-2885   ///
      str    CPTM2_134                 2886-2887   ///
      str    CPTM2_135                 2888-2889   ///
      str    CPTM2_136                 2890-2891   ///
      str    CPTM2_137                 2892-2893   ///
      str    CPTM2_138                 2894-2895   ///
      str    CPTM2_139                 2896-2897   ///
      str    CPTM2_140                 2898-2899   ///
      str    CPTM2_141                 2900-2901   ///
      str    CPTM2_142                 2902-2903   ///
      str    CPTM2_143                 2904-2905   ///
      str    CPTM2_144                 2906-2907   ///
      str    CPTM2_145                 2908-2909   ///
      str    CPTM2_146                 2910-2911   ///
      str    CPTM2_147                 2912-2913   ///
      str    CPTM2_148                 2914-2915   ///
      str    CPTM2_149                 2916-2917   ///
      str    CPTM2_150                 2918-2919   ///
      str    CPTM2_151                 2920-2921   ///
      str    CPTM2_152                 2922-2923   ///
      str    CPTM2_153                 2924-2925   ///
      str    CPTM2_154                 2926-2927   ///
      str    CPTM2_155                 2928-2929   ///
      str    CPTM2_156                 2930-2931   ///
      str    CPTM2_157                 2932-2933   ///
      str    CPTM2_158                 2934-2935   ///
      str    CPTM2_159                 2936-2937   ///
      str    CPTM2_160                 2938-2939   ///
      str    CPTM2_161                 2940-2941   ///
      str    CPTM2_162                 2942-2943   ///
      str    CPTM2_163                 2944-2945   ///
      str    CPTM2_164                 2946-2947   ///
      str    CPTM2_165                 2948-2949   ///
      str    CPTM2_166                 2950-2951   ///
      str    CPTM2_167                 2952-2953   ///
      str    CPTM2_168                 2954-2955   ///
      str    CPTM2_169                 2956-2957   ///
      str    CPTM2_170                 2958-2959   ///
      str    CPTM2_171                 2960-2961   ///
      str    CPTM2_172                 2962-2963   ///
      str    CPTM2_173                 2964-2965   ///
      str    CPTM2_174                 2966-2967   ///
      str    CPTM2_175                 2968-2969   ///
      str    CPTM2_176                 2970-2971   ///
      str    CPTM2_177                 2972-2973   ///
      str    CPTM2_178                 2974-2975   ///
      str    CPTM2_179                 2976-2977   ///
      str    CPTM2_180                 2978-2979   ///
      str    CPTM2_181                 2980-2981   ///
      str    CPTM2_182                 2982-2983   ///
      str    CPTM2_183                 2984-2985   ///
      str    CPTM2_184                 2986-2987   ///
      str    CPTM2_185                 2988-2989   ///
      str    CPTM2_186                 2990-2991   ///
      str    CPTM2_187                 2992-2993   ///
      str    CPTM2_188                 2994-2995   ///
      str    CPTM2_189                 2996-2997   ///
      str    CPTM2_190                 2998-2999   ///
      str    CPTM2_191                 3000-3001   ///
      str    CPTM2_192                 3002-3003   ///
      str    CPTM2_193                 3004-3005   ///
      str    CPTM2_194                 3006-3007   ///
      str    CPTM2_195                 3008-3009   ///
      str    CPTM2_196                 3010-3011   ///
      str    CPTM2_197                 3012-3013   ///
      str    CPTM2_198                 3014-3015   ///
      str    CPTM2_199                 3016-3017   ///
      str    CPTM2_200                 3018-3019   ///
      long   DaysToEvent               3020-3025   ///
      byte   DIED                      3026-3027   ///
      str    DISP_X                    3028-3029   ///
      byte   DISPUB04                  3030-3031   ///
      byte   DISPUNIFORM               3032-3033   ///
      byte   DMONTH                    3034-3035   ///
      byte   DQTR                      3036-3037   ///
      str    DSHOSPID                  3038-3054   ///
      byte   FEMALE                    3055-3056   ///
      byte   HCUP_ED                   3057-3058   ///
      byte   HCUP_OS                   3059-3060   ///
      long   HCUP_SURGERY_BROAD_CPT    3061-3065   ///
      long   HCUP_SURGERY_NARROW_CPT   3066-3070   ///
      byte   HISPANIC                  3071-3072   ///
      str    HISPANIC_X                3073        ///
      byte   Homeless                  3074-3075   ///
      str    HOSP_NPI                  3076-3085   ///
      str    HOSPST                    3086-3087   ///
      str    I10_DX_Visit_Reason1      3088-3094   ///
      str    I10_DX_Visit_Reason2      3095-3101   ///
      str    I10_DX_Visit_Reason3      3102-3108   ///
      str    I10_DX1                   3109-3115   ///
      str    I10_DX2                   3116-3122   ///
      str    I10_DX3                   3123-3129   ///
      str    I10_DX4                   3130-3136   ///
      str    I10_DX5                   3137-3143   ///
      str    I10_DX6                   3144-3150   ///
      str    I10_DX7                   3151-3157   ///
      str    I10_DX8                   3158-3164   ///
      str    I10_DX9                   3165-3171   ///
      str    I10_DX10                  3172-3178   ///
      str    I10_DX11                  3179-3185   ///
      str    I10_DX12                  3186-3192   ///
      str    I10_DX13                  3193-3199   ///
      str    I10_DX14                  3200-3206   ///
      str    I10_DX15                  3207-3213   ///
      str    I10_DX16                  3214-3220   ///
      str    I10_DX17                  3221-3227   ///
      str    I10_DX18                  3228-3234   ///
      str    I10_DX19                  3235-3241   ///
      str    I10_DX20                  3242-3248   ///
      str    I10_DX21                  3249-3255   ///
      str    I10_DX22                  3256-3262   ///
      str    I10_DX23                  3263-3269   ///
      str    I10_DX24                  3270-3276   ///
      str    I10_DX25                  3277-3283   ///
      str    I10_DX26                  3284-3290   ///
      str    I10_DX27                  3291-3297   ///
      str    I10_DX28                  3298-3304   ///
      str    I10_DX29                  3305-3311   ///
      str    I10_DX30                  3312-3318   ///
      int    I10_NDX                   3319-3321   ///
      int    I10_PROCTYPE              3322-3324   ///
      double KEY                       3325-3339   ///
      long   LOS                       3340-3344   ///
      long   LOS_X                     3345-3350   ///
      str    MDSPEC1                   3351-3353   ///
      str    MDSPEC2                   3354-3356   ///
      byte   MEDINCSTQ                 3357-3358   ///
      long   MRN_R                     3359-3367   ///
      int    NCPT                      3368-3371   ///
      str    OPservice                 3372        ///
      double OS_TIME                   3373-3383   ///
      byte   PAY1                      3384-3385   ///
      str    PAY1_X                    3386-3390   ///
      byte   PAY2                      3391-3392   ///
      str    PAY2_X                    3393-3397   ///
      int    PL_CBSA                   3398-3400   ///
      byte   PL_NCHS                   3401-3402   ///
      byte   PL_RUCC                   3403-3404   ///
      byte   PL_UIC                    3405-3406   ///
      byte   PL_UR_CAT4                3407-3408   ///
      str    PointOfOrigin_X           3409        ///
      str    PointOfOriginUB04         3410        ///
      str    PSTATE                    3411-3412   ///
      str    PSTATE_GEO                3413-3414   ///
      long   PSTCO                     3415-3419   ///
      long   PSTCO_GEO                 3420-3424   ///
      byte   RACE                      3425-3426   ///
      float  RACE_PCT_MISS_HOSP        3427-3433   ///
      str    RACE_X                    3434-3435   ///
      byte   SASD_SEDD                 3436-3437   ///
      byte   STATE_AS                  3438-3439   ///
      byte   STATE_ED                  3440-3441   ///
      byte   STATE_OS                  3442-3443   ///
      double TOTCHG                    3444-3453   ///
      double TOTCHG_X                  3454-3468   ///
      long   VisitLink                 3469-3477   ///
      int    YEAR                      3478-3481   ///
      str    ZIP                       3482-3486   ///
      str    ZIP3                      3487-3489   ///
      int    ZIPINC_QRTL               3490-3492   ///
      int    AYEAR                     3493-3496   ///
      byte   BMONTH                    3497-3498   ///
      int    BYEAR                     3499-3502   ///
      using  "WI_SEDD_2021_CORE.ASC"

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
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DSHOSPID                 "Data source hospital identifier"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HCUP_SURGERY_BROAD_CPT   "Number of reported CPT procedures that qualify as a surgery using a broad definition"
label var HCUP_SURGERY_NARROW_CPT  "Number of reported CPT procedures that qualify as a surgery using a narrow definition"
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
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDSPEC1                  "Physician 1 specialty (as received from source)"
label var MDSPEC2                  "Physician 2 specialty (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var OPservice                "Indicator of outpatient service (as received from source)"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
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
label var RACE_PCT_MISS_HOSP       "Hospital percentage of missing or invalid race values"
label var RACE_X                   "Race (as received from source)"
label var SASD_SEDD                "SASD and SEDD indicator"
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
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HCUP_SURGERY_BROAD_CPT    (-9999 -8888 -6666=.)
recode HCUP_SURGERY_NARROW_CPT   (-9999 -8888 -6666=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode NCPT                      (-999 -888 -666=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
recode PL_RUCC                   (-9 -8 -6 -5=.)
recode PL_UIC                    (-9 -8 -6 -5=.)
recode PL_UR_CAT4                (-9 -8 -6 -5=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_PCT_MISS_HOSP        (-999.99 -888.88 -666.66=.)
recode SASD_SEDD                 (-9 -8 -6 -5=.)
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

save "WI_SEDD_2021_CORE.dta", replace
