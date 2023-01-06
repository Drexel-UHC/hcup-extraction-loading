/*****************************************************************************
* Creation Date: 09/08/2020   
* IA_SEDD_2019_CORE.Do
* This program will load the 2019 IA ASCII CORE File into Stata.
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
      str    CPT1                        16-  20   ///
      str    CPT2                        21-  25   ///
      str    CPT3                        26-  30   ///
      str    CPT4                        31-  35   ///
      str    CPT5                        36-  40   ///
      str    CPT6                        41-  45   ///
      str    CPT7                        46-  50   ///
      str    CPT8                        51-  55   ///
      str    CPT9                        56-  60   ///
      str    CPT10                       61-  65   ///
      str    CPT11                       66-  70   ///
      str    CPT12                       71-  75   ///
      str    CPT13                       76-  80   ///
      str    CPT14                       81-  85   ///
      str    CPT15                       86-  90   ///
      str    CPT16                       91-  95   ///
      str    CPT17                       96- 100   ///
      str    CPT18                      101- 105   ///
      str    CPT19                      106- 110   ///
      str    CPT20                      111- 115   ///
      str    CPT21                      116- 120   ///
      str    CPT22                      121- 125   ///
      str    CPT23                      126- 130   ///
      str    CPT24                      131- 135   ///
      str    CPT25                      136- 140   ///
      str    CPT26                      141- 145   ///
      str    CPT27                      146- 150   ///
      str    CPT28                      151- 155   ///
      str    CPT29                      156- 160   ///
      str    CPT30                      161- 165   ///
      str    CPT31                      166- 170   ///
      str    CPT32                      171- 175   ///
      str    CPT33                      176- 180   ///
      str    CPT34                      181- 185   ///
      str    CPT35                      186- 190   ///
      str    CPT36                      191- 195   ///
      str    CPT37                      196- 200   ///
      str    CPT38                      201- 205   ///
      str    CPT39                      206- 210   ///
      str    CPT40                      211- 215   ///
      str    CPT41                      216- 220   ///
      str    CPT42                      221- 225   ///
      str    CPT43                      226- 230   ///
      str    CPT44                      231- 235   ///
      str    CPT45                      236- 240   ///
      str    CPT46                      241- 245   ///
      str    CPT47                      246- 250   ///
      str    CPT48                      251- 255   ///
      str    CPT49                      256- 260   ///
      str    CPT50                      261- 265   ///
      str    CPT51                      266- 270   ///
      str    CPT52                      271- 275   ///
      str    CPT53                      276- 280   ///
      str    CPT54                      281- 285   ///
      str    CPT55                      286- 290   ///
      str    CPT56                      291- 295   ///
      str    CPT57                      296- 300   ///
      str    CPT58                      301- 305   ///
      str    CPT59                      306- 310   ///
      str    CPT60                      311- 315   ///
      str    CPT61                      316- 320   ///
      str    CPT62                      321- 325   ///
      str    CPT63                      326- 330   ///
      str    CPT64                      331- 335   ///
      str    CPT65                      336- 340   ///
      str    CPT66                      341- 345   ///
      str    CPT67                      346- 350   ///
      str    CPT68                      351- 355   ///
      str    CPT69                      356- 360   ///
      str    CPT70                      361- 365   ///
      str    CPT71                      366- 370   ///
      str    CPT72                      371- 375   ///
      str    CPT73                      376- 380   ///
      str    CPT74                      381- 385   ///
      str    CPT75                      386- 390   ///
      str    CPT76                      391- 395   ///
      str    CPT77                      396- 400   ///
      str    CPT78                      401- 405   ///
      str    CPT79                      406- 410   ///
      str    CPT80                      411- 415   ///
      str    CPT81                      416- 420   ///
      str    CPT82                      421- 425   ///
      str    CPT83                      426- 430   ///
      str    CPT84                      431- 435   ///
      str    CPT85                      436- 440   ///
      str    CPT86                      441- 445   ///
      str    CPT87                      446- 450   ///
      str    CPT88                      451- 455   ///
      str    CPT89                      456- 460   ///
      str    CPT90                      461- 465   ///
      str    CPT91                      466- 470   ///
      str    CPT92                      471- 475   ///
      str    CPT93                      476- 480   ///
      str    CPT94                      481- 485   ///
      str    CPT95                      486- 490   ///
      str    CPT96                      491- 495   ///
      str    CPT97                      496- 500   ///
      str    CPT98                      501- 505   ///
      str    CPT99                      506- 510   ///
      str    CPT100                     511- 515   ///
      str    CPT101                     516- 520   ///
      str    CPT102                     521- 525   ///
      str    CPT103                     526- 530   ///
      str    CPT104                     531- 535   ///
      str    CPT105                     536- 540   ///
      str    CPT106                     541- 545   ///
      str    CPT107                     546- 550   ///
      str    CPT108                     551- 555   ///
      str    CPT109                     556- 560   ///
      str    CPT110                     561- 565   ///
      str    CPT111                     566- 570   ///
      str    CPT112                     571- 575   ///
      str    CPT113                     576- 580   ///
      str    CPT114                     581- 585   ///
      str    CPT115                     586- 590   ///
      str    CPT116                     591- 595   ///
      str    CPT117                     596- 600   ///
      str    CPT118                     601- 605   ///
      str    CPT119                     606- 610   ///
      str    CPT120                     611- 615   ///
      str    CPT121                     616- 620   ///
      str    CPT122                     621- 625   ///
      str    CPT123                     626- 630   ///
      str    CPT124                     631- 635   ///
      str    CPT125                     636- 640   ///
      str    CPT126                     641- 645   ///
      str    CPT127                     646- 650   ///
      str    CPT128                     651- 655   ///
      str    CPT129                     656- 660   ///
      str    CPT130                     661- 665   ///
      str    CPT131                     666- 670   ///
      str    CPT132                     671- 675   ///
      str    CPT133                     676- 680   ///
      str    CPT134                     681- 685   ///
      str    CPT135                     686- 690   ///
      str    CPT136                     691- 695   ///
      str    CPT137                     696- 700   ///
      int    CPTCCS1                    701- 703   ///
      int    CPTCCS2                    704- 706   ///
      int    CPTCCS3                    707- 709   ///
      int    CPTCCS4                    710- 712   ///
      int    CPTCCS5                    713- 715   ///
      int    CPTCCS6                    716- 718   ///
      int    CPTCCS7                    719- 721   ///
      int    CPTCCS8                    722- 724   ///
      int    CPTCCS9                    725- 727   ///
      int    CPTCCS10                   728- 730   ///
      int    CPTCCS11                   731- 733   ///
      int    CPTCCS12                   734- 736   ///
      int    CPTCCS13                   737- 739   ///
      int    CPTCCS14                   740- 742   ///
      int    CPTCCS15                   743- 745   ///
      int    CPTCCS16                   746- 748   ///
      int    CPTCCS17                   749- 751   ///
      int    CPTCCS18                   752- 754   ///
      int    CPTCCS19                   755- 757   ///
      int    CPTCCS20                   758- 760   ///
      int    CPTCCS21                   761- 763   ///
      int    CPTCCS22                   764- 766   ///
      int    CPTCCS23                   767- 769   ///
      int    CPTCCS24                   770- 772   ///
      int    CPTCCS25                   773- 775   ///
      int    CPTCCS26                   776- 778   ///
      int    CPTCCS27                   779- 781   ///
      int    CPTCCS28                   782- 784   ///
      int    CPTCCS29                   785- 787   ///
      int    CPTCCS30                   788- 790   ///
      int    CPTCCS31                   791- 793   ///
      int    CPTCCS32                   794- 796   ///
      int    CPTCCS33                   797- 799   ///
      int    CPTCCS34                   800- 802   ///
      int    CPTCCS35                   803- 805   ///
      int    CPTCCS36                   806- 808   ///
      int    CPTCCS37                   809- 811   ///
      int    CPTCCS38                   812- 814   ///
      int    CPTCCS39                   815- 817   ///
      int    CPTCCS40                   818- 820   ///
      int    CPTCCS41                   821- 823   ///
      int    CPTCCS42                   824- 826   ///
      int    CPTCCS43                   827- 829   ///
      int    CPTCCS44                   830- 832   ///
      int    CPTCCS45                   833- 835   ///
      int    CPTCCS46                   836- 838   ///
      int    CPTCCS47                   839- 841   ///
      int    CPTCCS48                   842- 844   ///
      int    CPTCCS49                   845- 847   ///
      int    CPTCCS50                   848- 850   ///
      int    CPTCCS51                   851- 853   ///
      int    CPTCCS52                   854- 856   ///
      int    CPTCCS53                   857- 859   ///
      int    CPTCCS54                   860- 862   ///
      int    CPTCCS55                   863- 865   ///
      int    CPTCCS56                   866- 868   ///
      int    CPTCCS57                   869- 871   ///
      int    CPTCCS58                   872- 874   ///
      int    CPTCCS59                   875- 877   ///
      int    CPTCCS60                   878- 880   ///
      int    CPTCCS61                   881- 883   ///
      int    CPTCCS62                   884- 886   ///
      int    CPTCCS63                   887- 889   ///
      int    CPTCCS64                   890- 892   ///
      int    CPTCCS65                   893- 895   ///
      int    CPTCCS66                   896- 898   ///
      int    CPTCCS67                   899- 901   ///
      int    CPTCCS68                   902- 904   ///
      int    CPTCCS69                   905- 907   ///
      int    CPTCCS70                   908- 910   ///
      int    CPTCCS71                   911- 913   ///
      int    CPTCCS72                   914- 916   ///
      int    CPTCCS73                   917- 919   ///
      int    CPTCCS74                   920- 922   ///
      int    CPTCCS75                   923- 925   ///
      int    CPTCCS76                   926- 928   ///
      int    CPTCCS77                   929- 931   ///
      int    CPTCCS78                   932- 934   ///
      int    CPTCCS79                   935- 937   ///
      int    CPTCCS80                   938- 940   ///
      int    CPTCCS81                   941- 943   ///
      int    CPTCCS82                   944- 946   ///
      int    CPTCCS83                   947- 949   ///
      int    CPTCCS84                   950- 952   ///
      int    CPTCCS85                   953- 955   ///
      int    CPTCCS86                   956- 958   ///
      int    CPTCCS87                   959- 961   ///
      int    CPTCCS88                   962- 964   ///
      int    CPTCCS89                   965- 967   ///
      int    CPTCCS90                   968- 970   ///
      int    CPTCCS91                   971- 973   ///
      int    CPTCCS92                   974- 976   ///
      int    CPTCCS93                   977- 979   ///
      int    CPTCCS94                   980- 982   ///
      int    CPTCCS95                   983- 985   ///
      int    CPTCCS96                   986- 988   ///
      int    CPTCCS97                   989- 991   ///
      int    CPTCCS98                   992- 994   ///
      int    CPTCCS99                   995- 997   ///
      int    CPTCCS100                  998-1000   ///
      int    CPTCCS101                 1001-1003   ///
      int    CPTCCS102                 1004-1006   ///
      int    CPTCCS103                 1007-1009   ///
      int    CPTCCS104                 1010-1012   ///
      int    CPTCCS105                 1013-1015   ///
      int    CPTCCS106                 1016-1018   ///
      int    CPTCCS107                 1019-1021   ///
      int    CPTCCS108                 1022-1024   ///
      int    CPTCCS109                 1025-1027   ///
      int    CPTCCS110                 1028-1030   ///
      int    CPTCCS111                 1031-1033   ///
      int    CPTCCS112                 1034-1036   ///
      int    CPTCCS113                 1037-1039   ///
      int    CPTCCS114                 1040-1042   ///
      int    CPTCCS115                 1043-1045   ///
      int    CPTCCS116                 1046-1048   ///
      int    CPTCCS117                 1049-1051   ///
      int    CPTCCS118                 1052-1054   ///
      int    CPTCCS119                 1055-1057   ///
      int    CPTCCS120                 1058-1060   ///
      int    CPTCCS121                 1061-1063   ///
      int    CPTCCS122                 1064-1066   ///
      int    CPTCCS123                 1067-1069   ///
      int    CPTCCS124                 1070-1072   ///
      int    CPTCCS125                 1073-1075   ///
      int    CPTCCS126                 1076-1078   ///
      int    CPTCCS127                 1079-1081   ///
      int    CPTCCS128                 1082-1084   ///
      int    CPTCCS129                 1085-1087   ///
      int    CPTCCS130                 1088-1090   ///
      int    CPTCCS131                 1091-1093   ///
      int    CPTCCS132                 1094-1096   ///
      int    CPTCCS133                 1097-1099   ///
      int    CPTCCS134                 1100-1102   ///
      int    CPTCCS135                 1103-1105   ///
      int    CPTCCS136                 1106-1108   ///
      int    CPTCCS137                 1109-1111   ///
      int    CPTDAY1                   1112-1114   ///
      int    CPTDAY2                   1115-1117   ///
      int    CPTDAY3                   1118-1120   ///
      int    CPTDAY4                   1121-1123   ///
      int    CPTDAY5                   1124-1126   ///
      int    CPTDAY6                   1127-1129   ///
      int    CPTDAY7                   1130-1132   ///
      int    CPTDAY8                   1133-1135   ///
      int    CPTDAY9                   1136-1138   ///
      int    CPTDAY10                  1139-1141   ///
      int    CPTDAY11                  1142-1144   ///
      int    CPTDAY12                  1145-1147   ///
      int    CPTDAY13                  1148-1150   ///
      int    CPTDAY14                  1151-1153   ///
      int    CPTDAY15                  1154-1156   ///
      int    CPTDAY16                  1157-1159   ///
      int    CPTDAY17                  1160-1162   ///
      int    CPTDAY18                  1163-1165   ///
      int    CPTDAY19                  1166-1168   ///
      int    CPTDAY20                  1169-1171   ///
      int    CPTDAY21                  1172-1174   ///
      int    CPTDAY22                  1175-1177   ///
      int    CPTDAY23                  1178-1180   ///
      int    CPTDAY24                  1181-1183   ///
      int    CPTDAY25                  1184-1186   ///
      int    CPTDAY26                  1187-1189   ///
      int    CPTDAY27                  1190-1192   ///
      int    CPTDAY28                  1193-1195   ///
      int    CPTDAY29                  1196-1198   ///
      int    CPTDAY30                  1199-1201   ///
      int    CPTDAY31                  1202-1204   ///
      int    CPTDAY32                  1205-1207   ///
      int    CPTDAY33                  1208-1210   ///
      int    CPTDAY34                  1211-1213   ///
      int    CPTDAY35                  1214-1216   ///
      int    CPTDAY36                  1217-1219   ///
      int    CPTDAY37                  1220-1222   ///
      int    CPTDAY38                  1223-1225   ///
      int    CPTDAY39                  1226-1228   ///
      int    CPTDAY40                  1229-1231   ///
      int    CPTDAY41                  1232-1234   ///
      int    CPTDAY42                  1235-1237   ///
      int    CPTDAY43                  1238-1240   ///
      int    CPTDAY44                  1241-1243   ///
      int    CPTDAY45                  1244-1246   ///
      int    CPTDAY46                  1247-1249   ///
      int    CPTDAY47                  1250-1252   ///
      int    CPTDAY48                  1253-1255   ///
      int    CPTDAY49                  1256-1258   ///
      int    CPTDAY50                  1259-1261   ///
      int    CPTDAY51                  1262-1264   ///
      int    CPTDAY52                  1265-1267   ///
      int    CPTDAY53                  1268-1270   ///
      int    CPTDAY54                  1271-1273   ///
      int    CPTDAY55                  1274-1276   ///
      int    CPTDAY56                  1277-1279   ///
      int    CPTDAY57                  1280-1282   ///
      int    CPTDAY58                  1283-1285   ///
      int    CPTDAY59                  1286-1288   ///
      int    CPTDAY60                  1289-1291   ///
      int    CPTDAY61                  1292-1294   ///
      int    CPTDAY62                  1295-1297   ///
      int    CPTDAY63                  1298-1300   ///
      int    CPTDAY64                  1301-1303   ///
      int    CPTDAY65                  1304-1306   ///
      int    CPTDAY66                  1307-1309   ///
      int    CPTDAY67                  1310-1312   ///
      int    CPTDAY68                  1313-1315   ///
      int    CPTDAY69                  1316-1318   ///
      int    CPTDAY70                  1319-1321   ///
      int    CPTDAY71                  1322-1324   ///
      int    CPTDAY72                  1325-1327   ///
      int    CPTDAY73                  1328-1330   ///
      int    CPTDAY74                  1331-1333   ///
      int    CPTDAY75                  1334-1336   ///
      int    CPTDAY76                  1337-1339   ///
      int    CPTDAY77                  1340-1342   ///
      int    CPTDAY78                  1343-1345   ///
      int    CPTDAY79                  1346-1348   ///
      int    CPTDAY80                  1349-1351   ///
      int    CPTDAY81                  1352-1354   ///
      int    CPTDAY82                  1355-1357   ///
      int    CPTDAY83                  1358-1360   ///
      int    CPTDAY84                  1361-1363   ///
      int    CPTDAY85                  1364-1366   ///
      int    CPTDAY86                  1367-1369   ///
      int    CPTDAY87                  1370-1372   ///
      int    CPTDAY88                  1373-1375   ///
      int    CPTDAY89                  1376-1378   ///
      int    CPTDAY90                  1379-1381   ///
      int    CPTDAY91                  1382-1384   ///
      int    CPTDAY92                  1385-1387   ///
      int    CPTDAY93                  1388-1390   ///
      int    CPTDAY94                  1391-1393   ///
      int    CPTDAY95                  1394-1396   ///
      int    CPTDAY96                  1397-1399   ///
      int    CPTDAY97                  1400-1402   ///
      int    CPTDAY98                  1403-1405   ///
      int    CPTDAY99                  1406-1408   ///
      int    CPTDAY100                 1409-1411   ///
      int    CPTDAY101                 1412-1414   ///
      int    CPTDAY102                 1415-1417   ///
      int    CPTDAY103                 1418-1420   ///
      int    CPTDAY104                 1421-1423   ///
      int    CPTDAY105                 1424-1426   ///
      int    CPTDAY106                 1427-1429   ///
      int    CPTDAY107                 1430-1432   ///
      int    CPTDAY108                 1433-1435   ///
      int    CPTDAY109                 1436-1438   ///
      int    CPTDAY110                 1439-1441   ///
      int    CPTDAY111                 1442-1444   ///
      int    CPTDAY112                 1445-1447   ///
      int    CPTDAY113                 1448-1450   ///
      int    CPTDAY114                 1451-1453   ///
      int    CPTDAY115                 1454-1456   ///
      int    CPTDAY116                 1457-1459   ///
      int    CPTDAY117                 1460-1462   ///
      int    CPTDAY118                 1463-1465   ///
      int    CPTDAY119                 1466-1468   ///
      int    CPTDAY120                 1469-1471   ///
      int    CPTDAY121                 1472-1474   ///
      int    CPTDAY122                 1475-1477   ///
      int    CPTDAY123                 1478-1480   ///
      int    CPTDAY124                 1481-1483   ///
      int    CPTDAY125                 1484-1486   ///
      int    CPTDAY126                 1487-1489   ///
      int    CPTDAY127                 1490-1492   ///
      int    CPTDAY128                 1493-1495   ///
      int    CPTDAY129                 1496-1498   ///
      int    CPTDAY130                 1499-1501   ///
      int    CPTDAY131                 1502-1504   ///
      int    CPTDAY132                 1505-1507   ///
      int    CPTDAY133                 1508-1510   ///
      int    CPTDAY134                 1511-1513   ///
      int    CPTDAY135                 1514-1516   ///
      int    CPTDAY136                 1517-1519   ///
      int    CPTDAY137                 1520-1522   ///
      str    CPTM1_1                   1523-1524   ///
      str    CPTM1_2                   1525-1526   ///
      str    CPTM1_3                   1527-1528   ///
      str    CPTM1_4                   1529-1530   ///
      str    CPTM1_5                   1531-1532   ///
      str    CPTM1_6                   1533-1534   ///
      str    CPTM1_7                   1535-1536   ///
      str    CPTM1_8                   1537-1538   ///
      str    CPTM1_9                   1539-1540   ///
      str    CPTM1_10                  1541-1542   ///
      str    CPTM1_11                  1543-1544   ///
      str    CPTM1_12                  1545-1546   ///
      str    CPTM1_13                  1547-1548   ///
      str    CPTM1_14                  1549-1550   ///
      str    CPTM1_15                  1551-1552   ///
      str    CPTM1_16                  1553-1554   ///
      str    CPTM1_17                  1555-1556   ///
      str    CPTM1_18                  1557-1558   ///
      str    CPTM1_19                  1559-1560   ///
      str    CPTM1_20                  1561-1562   ///
      str    CPTM1_21                  1563-1564   ///
      str    CPTM1_22                  1565-1566   ///
      str    CPTM1_23                  1567-1568   ///
      str    CPTM1_24                  1569-1570   ///
      str    CPTM1_25                  1571-1572   ///
      str    CPTM1_26                  1573-1574   ///
      str    CPTM1_27                  1575-1576   ///
      str    CPTM1_28                  1577-1578   ///
      str    CPTM1_29                  1579-1580   ///
      str    CPTM1_30                  1581-1582   ///
      str    CPTM1_31                  1583-1584   ///
      str    CPTM1_32                  1585-1586   ///
      str    CPTM1_33                  1587-1588   ///
      str    CPTM1_34                  1589-1590   ///
      str    CPTM1_35                  1591-1592   ///
      str    CPTM1_36                  1593-1594   ///
      str    CPTM1_37                  1595-1596   ///
      str    CPTM1_38                  1597-1598   ///
      str    CPTM1_39                  1599-1600   ///
      str    CPTM1_40                  1601-1602   ///
      str    CPTM1_41                  1603-1604   ///
      str    CPTM1_42                  1605-1606   ///
      str    CPTM1_43                  1607-1608   ///
      str    CPTM1_44                  1609-1610   ///
      str    CPTM1_45                  1611-1612   ///
      str    CPTM1_46                  1613-1614   ///
      str    CPTM1_47                  1615-1616   ///
      str    CPTM1_48                  1617-1618   ///
      str    CPTM1_49                  1619-1620   ///
      str    CPTM1_50                  1621-1622   ///
      str    CPTM1_51                  1623-1624   ///
      str    CPTM1_52                  1625-1626   ///
      str    CPTM1_53                  1627-1628   ///
      str    CPTM1_54                  1629-1630   ///
      str    CPTM1_55                  1631-1632   ///
      str    CPTM1_56                  1633-1634   ///
      str    CPTM1_57                  1635-1636   ///
      str    CPTM1_58                  1637-1638   ///
      str    CPTM1_59                  1639-1640   ///
      str    CPTM1_60                  1641-1642   ///
      str    CPTM1_61                  1643-1644   ///
      str    CPTM1_62                  1645-1646   ///
      str    CPTM1_63                  1647-1648   ///
      str    CPTM1_64                  1649-1650   ///
      str    CPTM1_65                  1651-1652   ///
      str    CPTM1_66                  1653-1654   ///
      str    CPTM1_67                  1655-1656   ///
      str    CPTM1_68                  1657-1658   ///
      str    CPTM1_69                  1659-1660   ///
      str    CPTM1_70                  1661-1662   ///
      str    CPTM1_71                  1663-1664   ///
      str    CPTM1_72                  1665-1666   ///
      str    CPTM1_73                  1667-1668   ///
      str    CPTM1_74                  1669-1670   ///
      str    CPTM1_75                  1671-1672   ///
      str    CPTM1_76                  1673-1674   ///
      str    CPTM1_77                  1675-1676   ///
      str    CPTM1_78                  1677-1678   ///
      str    CPTM1_79                  1679-1680   ///
      str    CPTM1_80                  1681-1682   ///
      str    CPTM1_81                  1683-1684   ///
      str    CPTM1_82                  1685-1686   ///
      str    CPTM1_83                  1687-1688   ///
      str    CPTM1_84                  1689-1690   ///
      str    CPTM1_85                  1691-1692   ///
      str    CPTM1_86                  1693-1694   ///
      str    CPTM1_87                  1695-1696   ///
      str    CPTM1_88                  1697-1698   ///
      str    CPTM1_89                  1699-1700   ///
      str    CPTM1_90                  1701-1702   ///
      str    CPTM1_91                  1703-1704   ///
      str    CPTM1_92                  1705-1706   ///
      str    CPTM1_93                  1707-1708   ///
      str    CPTM1_94                  1709-1710   ///
      str    CPTM1_95                  1711-1712   ///
      str    CPTM1_96                  1713-1714   ///
      str    CPTM1_97                  1715-1716   ///
      str    CPTM1_98                  1717-1718   ///
      str    CPTM1_99                  1719-1720   ///
      str    CPTM1_100                 1721-1722   ///
      str    CPTM1_101                 1723-1724   ///
      str    CPTM1_102                 1725-1726   ///
      str    CPTM1_103                 1727-1728   ///
      str    CPTM1_104                 1729-1730   ///
      str    CPTM1_105                 1731-1732   ///
      str    CPTM1_106                 1733-1734   ///
      str    CPTM1_107                 1735-1736   ///
      str    CPTM1_108                 1737-1738   ///
      str    CPTM1_109                 1739-1740   ///
      str    CPTM1_110                 1741-1742   ///
      str    CPTM1_111                 1743-1744   ///
      str    CPTM1_112                 1745-1746   ///
      str    CPTM1_113                 1747-1748   ///
      str    CPTM1_114                 1749-1750   ///
      str    CPTM1_115                 1751-1752   ///
      str    CPTM1_116                 1753-1754   ///
      str    CPTM1_117                 1755-1756   ///
      str    CPTM1_118                 1757-1758   ///
      str    CPTM1_119                 1759-1760   ///
      str    CPTM1_120                 1761-1762   ///
      str    CPTM1_121                 1763-1764   ///
      str    CPTM1_122                 1765-1766   ///
      str    CPTM1_123                 1767-1768   ///
      str    CPTM1_124                 1769-1770   ///
      str    CPTM1_125                 1771-1772   ///
      str    CPTM1_126                 1773-1774   ///
      str    CPTM1_127                 1775-1776   ///
      str    CPTM1_128                 1777-1778   ///
      str    CPTM1_129                 1779-1780   ///
      str    CPTM1_130                 1781-1782   ///
      str    CPTM1_131                 1783-1784   ///
      str    CPTM1_132                 1785-1786   ///
      str    CPTM1_133                 1787-1788   ///
      str    CPTM1_134                 1789-1790   ///
      str    CPTM1_135                 1791-1792   ///
      str    CPTM1_136                 1793-1794   ///
      str    CPTM1_137                 1795-1796   ///
      str    CPTM2_1                   1797-1798   ///
      str    CPTM2_2                   1799-1800   ///
      str    CPTM2_3                   1801-1802   ///
      str    CPTM2_4                   1803-1804   ///
      str    CPTM2_5                   1805-1806   ///
      str    CPTM2_6                   1807-1808   ///
      str    CPTM2_7                   1809-1810   ///
      str    CPTM2_8                   1811-1812   ///
      str    CPTM2_9                   1813-1814   ///
      str    CPTM2_10                  1815-1816   ///
      str    CPTM2_11                  1817-1818   ///
      str    CPTM2_12                  1819-1820   ///
      str    CPTM2_13                  1821-1822   ///
      str    CPTM2_14                  1823-1824   ///
      str    CPTM2_15                  1825-1826   ///
      str    CPTM2_16                  1827-1828   ///
      str    CPTM2_17                  1829-1830   ///
      str    CPTM2_18                  1831-1832   ///
      str    CPTM2_19                  1833-1834   ///
      str    CPTM2_20                  1835-1836   ///
      str    CPTM2_21                  1837-1838   ///
      str    CPTM2_22                  1839-1840   ///
      str    CPTM2_23                  1841-1842   ///
      str    CPTM2_24                  1843-1844   ///
      str    CPTM2_25                  1845-1846   ///
      str    CPTM2_26                  1847-1848   ///
      str    CPTM2_27                  1849-1850   ///
      str    CPTM2_28                  1851-1852   ///
      str    CPTM2_29                  1853-1854   ///
      str    CPTM2_30                  1855-1856   ///
      str    CPTM2_31                  1857-1858   ///
      str    CPTM2_32                  1859-1860   ///
      str    CPTM2_33                  1861-1862   ///
      str    CPTM2_34                  1863-1864   ///
      str    CPTM2_35                  1865-1866   ///
      str    CPTM2_36                  1867-1868   ///
      str    CPTM2_37                  1869-1870   ///
      str    CPTM2_38                  1871-1872   ///
      str    CPTM2_39                  1873-1874   ///
      str    CPTM2_40                  1875-1876   ///
      str    CPTM2_41                  1877-1878   ///
      str    CPTM2_42                  1879-1880   ///
      str    CPTM2_43                  1881-1882   ///
      str    CPTM2_44                  1883-1884   ///
      str    CPTM2_45                  1885-1886   ///
      str    CPTM2_46                  1887-1888   ///
      str    CPTM2_47                  1889-1890   ///
      str    CPTM2_48                  1891-1892   ///
      str    CPTM2_49                  1893-1894   ///
      str    CPTM2_50                  1895-1896   ///
      str    CPTM2_51                  1897-1898   ///
      str    CPTM2_52                  1899-1900   ///
      str    CPTM2_53                  1901-1902   ///
      str    CPTM2_54                  1903-1904   ///
      str    CPTM2_55                  1905-1906   ///
      str    CPTM2_56                  1907-1908   ///
      str    CPTM2_57                  1909-1910   ///
      str    CPTM2_58                  1911-1912   ///
      str    CPTM2_59                  1913-1914   ///
      str    CPTM2_60                  1915-1916   ///
      str    CPTM2_61                  1917-1918   ///
      str    CPTM2_62                  1919-1920   ///
      str    CPTM2_63                  1921-1922   ///
      str    CPTM2_64                  1923-1924   ///
      str    CPTM2_65                  1925-1926   ///
      str    CPTM2_66                  1927-1928   ///
      str    CPTM2_67                  1929-1930   ///
      str    CPTM2_68                  1931-1932   ///
      str    CPTM2_69                  1933-1934   ///
      str    CPTM2_70                  1935-1936   ///
      str    CPTM2_71                  1937-1938   ///
      str    CPTM2_72                  1939-1940   ///
      str    CPTM2_73                  1941-1942   ///
      str    CPTM2_74                  1943-1944   ///
      str    CPTM2_75                  1945-1946   ///
      str    CPTM2_76                  1947-1948   ///
      str    CPTM2_77                  1949-1950   ///
      str    CPTM2_78                  1951-1952   ///
      str    CPTM2_79                  1953-1954   ///
      str    CPTM2_80                  1955-1956   ///
      str    CPTM2_81                  1957-1958   ///
      str    CPTM2_82                  1959-1960   ///
      str    CPTM2_83                  1961-1962   ///
      str    CPTM2_84                  1963-1964   ///
      str    CPTM2_85                  1965-1966   ///
      str    CPTM2_86                  1967-1968   ///
      str    CPTM2_87                  1969-1970   ///
      str    CPTM2_88                  1971-1972   ///
      str    CPTM2_89                  1973-1974   ///
      str    CPTM2_90                  1975-1976   ///
      str    CPTM2_91                  1977-1978   ///
      str    CPTM2_92                  1979-1980   ///
      str    CPTM2_93                  1981-1982   ///
      str    CPTM2_94                  1983-1984   ///
      str    CPTM2_95                  1985-1986   ///
      str    CPTM2_96                  1987-1988   ///
      str    CPTM2_97                  1989-1990   ///
      str    CPTM2_98                  1991-1992   ///
      str    CPTM2_99                  1993-1994   ///
      str    CPTM2_100                 1995-1996   ///
      str    CPTM2_101                 1997-1998   ///
      str    CPTM2_102                 1999-2000   ///
      str    CPTM2_103                 2001-2002   ///
      str    CPTM2_104                 2003-2004   ///
      str    CPTM2_105                 2005-2006   ///
      str    CPTM2_106                 2007-2008   ///
      str    CPTM2_107                 2009-2010   ///
      str    CPTM2_108                 2011-2012   ///
      str    CPTM2_109                 2013-2014   ///
      str    CPTM2_110                 2015-2016   ///
      str    CPTM2_111                 2017-2018   ///
      str    CPTM2_112                 2019-2020   ///
      str    CPTM2_113                 2021-2022   ///
      str    CPTM2_114                 2023-2024   ///
      str    CPTM2_115                 2025-2026   ///
      str    CPTM2_116                 2027-2028   ///
      str    CPTM2_117                 2029-2030   ///
      str    CPTM2_118                 2031-2032   ///
      str    CPTM2_119                 2033-2034   ///
      str    CPTM2_120                 2035-2036   ///
      str    CPTM2_121                 2037-2038   ///
      str    CPTM2_122                 2039-2040   ///
      str    CPTM2_123                 2041-2042   ///
      str    CPTM2_124                 2043-2044   ///
      str    CPTM2_125                 2045-2046   ///
      str    CPTM2_126                 2047-2048   ///
      str    CPTM2_127                 2049-2050   ///
      str    CPTM2_128                 2051-2052   ///
      str    CPTM2_129                 2053-2054   ///
      str    CPTM2_130                 2055-2056   ///
      str    CPTM2_131                 2057-2058   ///
      str    CPTM2_132                 2059-2060   ///
      str    CPTM2_133                 2061-2062   ///
      str    CPTM2_134                 2063-2064   ///
      str    CPTM2_135                 2065-2066   ///
      str    CPTM2_136                 2067-2068   ///
      str    CPTM2_137                 2069-2070   ///
      byte   DIED                      2071-2072   ///
      byte   DISPUB04                  2073-2074   ///
      byte   DISPUNIFORM               2075-2076   ///
      str    DISP_X                    2077-2078   ///
      byte   DMONTH                    2079-2080   ///
      byte   DQTR                      2081-2082   ///
      long   DaysToEvent               2083-2088   ///
      byte   FEMALE                    2089-2090   ///
      byte   HCUP_ED                   2091-2092   ///
      byte   HCUP_OS                   2093-2094   ///
      byte   HISPANIC                  2095-2096   ///
      str    HISPANIC_X                2097        ///
      str    HOSPST                    2098-2099   ///
      str    I10_DX1                   2100-2106   ///
      str    I10_DX2                   2107-2113   ///
      str    I10_DX3                   2114-2120   ///
      str    I10_DX4                   2121-2127   ///
      str    I10_DX5                   2128-2134   ///
      str    I10_DX6                   2135-2141   ///
      str    I10_DX7                   2142-2148   ///
      str    I10_DX8                   2149-2155   ///
      str    I10_DX9                   2156-2162   ///
      str    I10_DX10                  2163-2169   ///
      str    I10_DX11                  2170-2176   ///
      str    I10_DX12                  2177-2183   ///
      str    I10_DX13                  2184-2190   ///
      str    I10_DX14                  2191-2197   ///
      str    I10_DX15                  2198-2204   ///
      str    I10_DX16                  2205-2211   ///
      str    I10_DX17                  2212-2218   ///
      str    I10_DX18                  2219-2225   ///
      str    I10_DX19                  2226-2232   ///
      str    I10_DX20                  2233-2239   ///
      str    I10_DX21                  2240-2246   ///
      str    I10_DX22                  2247-2253   ///
      str    I10_DX23                  2254-2260   ///
      str    I10_DX24                  2261-2267   ///
      str    I10_DX25                  2268-2274   ///
      str    I10_DX26                  2275-2281   ///
      str    I10_DX27                  2282-2288   ///
      str    I10_DX28                  2289-2295   ///
      str    I10_DX29                  2296-2302   ///
      str    I10_DX30                  2303-2309   ///
      str    I10_DX31                  2310-2316   ///
      str    I10_DX32                  2317-2323   ///
      str    I10_DX33                  2324-2330   ///
      str    I10_DX34                  2331-2337   ///
      str    I10_DX35                  2338-2344   ///
      str    I10_DX36                  2345-2351   ///
      str    I10_DX37                  2352-2358   ///
      str    I10_DX38                  2359-2365   ///
      str    I10_DX39                  2366-2372   ///
      str    I10_DX40                  2373-2379   ///
      str    I10_DX41                  2380-2386   ///
      str    I10_DX42                  2387-2393   ///
      str    I10_DX43                  2394-2400   ///
      str    I10_DX44                  2401-2407   ///
      str    I10_DX45                  2408-2414   ///
      str    I10_DX46                  2415-2421   ///
      str    I10_DX47                  2422-2428   ///
      str    I10_DX48                  2429-2435   ///
      str    I10_DX49                  2436-2442   ///
      str    I10_DX50                  2443-2449   ///
      str    I10_DX_Visit_Reason1      2450-2456   ///
      str    I10_DX_Visit_Reason2      2457-2463   ///
      str    I10_DX_Visit_Reason3      2464-2470   ///
      int    I10_NDX                   2471-2473   ///
      int    I10_PROCTYPE              2474-2476   ///
      double KEY                       2477-2491   ///
      long   LOS                       2492-2496   ///
      long   LOS_X                     2497-2502   ///
      long   MDNUM1_R                  2503-2511   ///
      long   MDNUM2_R                  2512-2520   ///
      long   MDNUM3_R                  2521-2529   ///
      byte   MEDINCSTQ                 2530-2531   ///
      long   MRN_R                     2532-2540   ///
      int    NCPT                      2541-2544   ///
      str    OPservice                 2545-2549   ///
      double OS_TIME                   2550-2560   ///
      byte   PAY1                      2561-2562   ///
      str    PAY1_X                    2563-2566   ///
      byte   PAY2                      2567-2568   ///
      str    PAY2_X                    2569-2572   ///
      byte   PAY3                      2573-2574   ///
      str    PAY3_X                    2575-2578   ///
      int    PL_CBSA                   2579-2581   ///
      byte   PL_NCHS                   2582-2583   ///
      byte   PL_RUCC                   2584-2585   ///
      byte   PL_UIC                    2586-2587   ///
      byte   PL_UR_CAT4                2588-2589   ///
      str    PSTATE                    2590-2591   ///
      str    PSTATE_GEO                2592-2593   ///
      long   PSTCO                     2594-2598   ///
      long   PSTCO_GEO                 2599-2603   ///
      str    PointOfOriginUB04         2604        ///
      str    PointOfOrigin_X           2605        ///
      str    PrimLang                  2606-2608   ///
      byte   RACE                      2609-2610   ///
      str    RACE_X                    2611-2614   ///
      byte   STATE_AS                  2615-2616   ///
      byte   STATE_ED                  2617-2618   ///
      byte   STATE_OS                  2619-2620   ///
      double TOTCHG                    2621-2630   ///
      double TOTCHG_X                  2631-2645   ///
      long   VisitLink                 2646-2654   ///
      int    YEAR                      2655-2658   ///
      str    ZIP                       2659-2663   ///
      str    ZIP3                      2664-2666   ///
      int    ZIPINC_QRTL               2667-2669   ///
      int    AYEAR                     2670-2673   ///
      byte   BMONTH                    2674-2675   ///
      int    BYEAR                     2676-2679   ///
      using  "IA_SEDD_2019_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
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
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DaysToEvent              "Days from 'start date' to admission"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
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
label var I10_DX_Visit_Reason1     "ICD-10-CM Reason for visit diagnosis 1"
label var I10_DX_Visit_Reason2     "ICD-10-CM Reason for visit diagnosis 2"
label var I10_DX_Visit_Reason3     "ICD-10-CM Reason for visit diagnosis 3"
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUM3_R                 "Physician 3 number (re-identified)"
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
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PrimLang                 "Primary language of patient"
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
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
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

save "IA_SEDD_2019_CORE.dta", replace
