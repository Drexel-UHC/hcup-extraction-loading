/*****************************************************************************
* Creation Date: 07/28/2021   
* WI_SID_2020_CORE.Do
* This program will load the 2020 WI ASCII CORE File into Stata.
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
      long   DaysToEvent               1620-1625   ///
      byte   DIED                      1626-1627   ///
      str    DISP_X                    1628-1629   ///
      byte   DISPUB04                  1630-1631   ///
      byte   DISPUNIFORM               1632-1633   ///
      byte   DMONTH                    1634-1635   ///
      byte   DQTR                      1636-1637   ///
      int    DRG                       1638-1640   ///
      int    DRG_NoPOA                 1641-1643   ///
      byte   DRGVER                    1644-1645   ///
      str    DSHOSPID                  1646-1662   ///
      str    DXPOA1                    1663        ///
      str    DXPOA2                    1664        ///
      str    DXPOA3                    1665        ///
      str    DXPOA4                    1666        ///
      str    DXPOA5                    1667        ///
      str    DXPOA6                    1668        ///
      str    DXPOA7                    1669        ///
      str    DXPOA8                    1670        ///
      str    DXPOA9                    1671        ///
      str    DXPOA10                   1672        ///
      str    DXPOA11                   1673        ///
      str    DXPOA12                   1674        ///
      str    DXPOA13                   1675        ///
      str    DXPOA14                   1676        ///
      str    DXPOA15                   1677        ///
      str    DXPOA16                   1678        ///
      str    DXPOA17                   1679        ///
      str    DXPOA18                   1680        ///
      str    DXPOA19                   1681        ///
      str    DXPOA20                   1682        ///
      str    DXPOA21                   1683        ///
      str    DXPOA22                   1684        ///
      str    DXPOA23                   1685        ///
      str    DXPOA24                   1686        ///
      str    DXPOA25                   1687        ///
      str    DXPOA26                   1688        ///
      str    DXPOA27                   1689        ///
      str    DXPOA28                   1690        ///
      str    DXPOA29                   1691        ///
      str    DXPOA30                   1692        ///
      str    DXPOA31                   1693        ///
      str    DXPOA32                   1694        ///
      str    DXPOA33                   1695        ///
      str    DXPOA34                   1696        ///
      str    DXPOA35                   1697        ///
      str    DXPOA36                   1698        ///
      str    DXPOA37                   1699        ///
      str    DXPOA38                   1700        ///
      str    DXPOA39                   1701        ///
      str    DXPOA40                   1702        ///
      str    DXPOA41                   1703        ///
      str    DXPOA42                   1704        ///
      str    DXPOA43                   1705        ///
      str    DXPOA44                   1706        ///
      str    DXPOA45                   1707        ///
      str    DXPOA46                   1708        ///
      str    DXPOA47                   1709        ///
      str    DXPOA48                   1710        ///
      str    DXPOA49                   1711        ///
      str    DXPOA50                   1712        ///
      str    DXPOA51                   1713        ///
      str    DXPOA52                   1714        ///
      str    DXPOA53                   1715        ///
      str    DXPOA54                   1716        ///
      str    DXPOA55                   1717        ///
      byte   FEMALE                    1718-1719   ///
      byte   HCUP_ED                   1720-1721   ///
      byte   HCUP_OS                   1722-1723   ///
      byte   HISPANIC                  1724-1725   ///
      str    HISPANIC_X                1726        ///
      byte   Homeless                  1727-1728   ///
      str    HOSP_NPI                  1729-1738   ///
      str    HOSPST                    1739-1740   ///
      int    I10_BIRTH                 1741-1743   ///
      int    I10_DELIVERY              1744-1746   ///
      str    I10_DX_Admitting          1747-1753   ///
      str    I10_DX1                   1754-1760   ///
      str    I10_DX2                   1761-1767   ///
      str    I10_DX3                   1768-1774   ///
      str    I10_DX4                   1775-1781   ///
      str    I10_DX5                   1782-1788   ///
      str    I10_DX6                   1789-1795   ///
      str    I10_DX7                   1796-1802   ///
      str    I10_DX8                   1803-1809   ///
      str    I10_DX9                   1810-1816   ///
      str    I10_DX10                  1817-1823   ///
      str    I10_DX11                  1824-1830   ///
      str    I10_DX12                  1831-1837   ///
      str    I10_DX13                  1838-1844   ///
      str    I10_DX14                  1845-1851   ///
      str    I10_DX15                  1852-1858   ///
      str    I10_DX16                  1859-1865   ///
      str    I10_DX17                  1866-1872   ///
      str    I10_DX18                  1873-1879   ///
      str    I10_DX19                  1880-1886   ///
      str    I10_DX20                  1887-1893   ///
      str    I10_DX21                  1894-1900   ///
      str    I10_DX22                  1901-1907   ///
      str    I10_DX23                  1908-1914   ///
      str    I10_DX24                  1915-1921   ///
      str    I10_DX25                  1922-1928   ///
      str    I10_DX26                  1929-1935   ///
      str    I10_DX27                  1936-1942   ///
      str    I10_DX28                  1943-1949   ///
      str    I10_DX29                  1950-1956   ///
      str    I10_DX30                  1957-1963   ///
      str    I10_DX31                  1964-1970   ///
      str    I10_DX32                  1971-1977   ///
      str    I10_DX33                  1978-1984   ///
      str    I10_DX34                  1985-1991   ///
      str    I10_DX35                  1992-1998   ///
      str    I10_DX36                  1999-2005   ///
      str    I10_DX37                  2006-2012   ///
      str    I10_DX38                  2013-2019   ///
      str    I10_DX39                  2020-2026   ///
      str    I10_DX40                  2027-2033   ///
      str    I10_DX41                  2034-2040   ///
      str    I10_DX42                  2041-2047   ///
      str    I10_DX43                  2048-2054   ///
      str    I10_DX44                  2055-2061   ///
      str    I10_DX45                  2062-2068   ///
      str    I10_DX46                  2069-2075   ///
      str    I10_DX47                  2076-2082   ///
      str    I10_DX48                  2083-2089   ///
      str    I10_DX49                  2090-2096   ///
      str    I10_DX50                  2097-2103   ///
      str    I10_DX51                  2104-2110   ///
      str    I10_DX52                  2111-2117   ///
      str    I10_DX53                  2118-2124   ///
      str    I10_DX54                  2125-2131   ///
      str    I10_DX55                  2132-2138   ///
      int    I10_NDX                   2139-2141   ///
      int    I10_NPR                   2142-2144   ///
      str    I10_PR1                   2145-2151   ///
      str    I10_PR2                   2152-2158   ///
      str    I10_PR3                   2159-2165   ///
      str    I10_PR4                   2166-2172   ///
      str    I10_PR5                   2173-2179   ///
      str    I10_PR6                   2180-2186   ///
      str    I10_PR7                   2187-2193   ///
      str    I10_PR8                   2194-2200   ///
      str    I10_PR9                   2201-2207   ///
      str    I10_PR10                  2208-2214   ///
      str    I10_PR11                  2215-2221   ///
      str    I10_PR12                  2222-2228   ///
      str    I10_PR13                  2229-2235   ///
      str    I10_PR14                  2236-2242   ///
      str    I10_PR15                  2243-2249   ///
      str    I10_PR16                  2250-2256   ///
      str    I10_PR17                  2257-2263   ///
      str    I10_PR18                  2264-2270   ///
      str    I10_PR19                  2271-2277   ///
      str    I10_PR20                  2278-2284   ///
      str    I10_PR21                  2285-2291   ///
      str    I10_PR22                  2292-2298   ///
      str    I10_PR23                  2299-2305   ///
      str    I10_PR24                  2306-2312   ///
      str    I10_PR25                  2313-2319   ///
      int    I10_PROCTYPE              2320-2322   ///
      byte   I10_SERVICELINE           2323-2324   ///
      double KEY                       2325-2339   ///
      long   LOS                       2340-2344   ///
      long   LOS_X                     2345-2350   ///
      byte   MDC                       2351-2352   ///
      byte   MDC_NoPOA                 2353-2354   ///
      str    MDSPEC1                   2355-2357   ///
      str    MDSPEC2                   2358-2360   ///
      byte   MEDINCSTQ                 2361-2362   ///
      long   MRN_R                     2363-2371   ///
      int    NCPT                      2372-2375   ///
      double OS_TIME                   2376-2386   ///
      byte   PAY1                      2387-2388   ///
      str    PAY1_X                    2389-2393   ///
      byte   PAY2                      2394-2395   ///
      str    PAY2_X                    2396-2400   ///
      byte   PCLASS_ORPROC             2401-2402   ///
      int    PL_CBSA                   2403-2405   ///
      byte   PL_NCHS                   2406-2407   ///
      byte   PL_RUCC                   2408-2409   ///
      byte   PL_UIC                    2410-2411   ///
      byte   PL_UR_CAT4                2412-2413   ///
      byte   POA_Disch_Edit1           2414-2415   ///
      byte   POA_Disch_Edit2           2416-2417   ///
      byte   POA_Hosp_Edit1            2418-2419   ///
      byte   POA_Hosp_Edit2            2420-2421   ///
      byte   POA_Hosp_Edit3            2422-2423   ///
      double POA_Hosp_Edit3_Value      2424-2431   ///
      str    PointOfOrigin_X           2432        ///
      str    PointOfOriginUB04         2433        ///
      long   PRDAY1                    2434-2438   ///
      str    PSTATE                    2439-2440   ///
      str    PSTATE_GEO                2441-2442   ///
      long   PSTCO                     2443-2447   ///
      long   PSTCO_GEO                 2448-2452   ///
      byte   RACE                      2453-2454   ///
      float  RACE_PCT_MISS_HOSP        2455-2461   ///
      str    RACE_X                    2462-2463   ///
      double TOTCHG                    2464-2473   ///
      double TOTCHG_X                  2474-2488   ///
      byte   TRAN_IN                   2489-2490   ///
      byte   TRAN_OUT                  2491-2492   ///
      long   VisitLink                 2493-2501   ///
      int    YEAR                      2502-2505   ///
      str    ZIP                       2506-2510   ///
      str    ZIP3                      2511-2513   ///
      int    ZIPINC_QRTL               2514-2516   ///
      int    AYEAR                     2517-2520   ///
      byte   BMONTH                    2521-2522   ///
      int    BYEAR                     2523-2526   ///
      byte   PRMONTH1                  2527-2528   ///
      int    PRYEAR1                   2529-2532   ///
      using  "WI_SID_2020_CORE.ASC"

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
label var DaysToEvent              "Days from 'start date' to admission"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
label var HOSP_NPI                 "Hospital NPI"
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
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDSPEC1                  "Physician 1 specialty (as received from source)"
label var MDSPEC2                  "Physician 2 specialty (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
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
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode NCPT                      (-999 -888 -666=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
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
recode PRYEAR1                   (-999 -888 -666=.)

save "WI_SID_2020_CORE.dta", replace
