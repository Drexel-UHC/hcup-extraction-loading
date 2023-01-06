/*****************************************************************************
* Creation Date: 07/06/2022   
* AK_SEDD_2020_CORE.Do
* This program will load the 2020 AK ASCII CORE File into Stata.
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
      int    AGEMONTH                     4-   6   ///
      int    AHOUR                        7-  10   ///
      byte   AMONTH                      11-  12   ///
      byte   ATYPE                       13-  14   ///
      byte   AWEEKEND                    15-  16   ///
      str    BILLTYPE                    17-  20   ///
      str    CPT1                        21-  25   ///
      str    CPT2                        26-  30   ///
      str    CPT3                        31-  35   ///
      str    CPT4                        36-  40   ///
      str    CPT5                        41-  45   ///
      str    CPT6                        46-  50   ///
      str    CPT7                        51-  55   ///
      str    CPT8                        56-  60   ///
      str    CPT9                        61-  65   ///
      str    CPT10                       66-  70   ///
      str    CPT11                       71-  75   ///
      str    CPT12                       76-  80   ///
      str    CPT13                       81-  85   ///
      str    CPT14                       86-  90   ///
      str    CPT15                       91-  95   ///
      str    CPT16                       96- 100   ///
      str    CPT17                      101- 105   ///
      str    CPT18                      106- 110   ///
      str    CPT19                      111- 115   ///
      str    CPT20                      116- 120   ///
      str    CPT21                      121- 125   ///
      str    CPT22                      126- 130   ///
      str    CPT23                      131- 135   ///
      str    CPT24                      136- 140   ///
      str    CPT25                      141- 145   ///
      str    CPT26                      146- 150   ///
      str    CPT27                      151- 155   ///
      str    CPT28                      156- 160   ///
      str    CPT29                      161- 165   ///
      str    CPT30                      166- 170   ///
      str    CPT31                      171- 175   ///
      str    CPT32                      176- 180   ///
      str    CPT33                      181- 185   ///
      str    CPT34                      186- 190   ///
      str    CPT35                      191- 195   ///
      str    CPT36                      196- 200   ///
      str    CPT37                      201- 205   ///
      str    CPT38                      206- 210   ///
      str    CPT39                      211- 215   ///
      str    CPT40                      216- 220   ///
      str    CPT41                      221- 225   ///
      str    CPT42                      226- 230   ///
      str    CPT43                      231- 235   ///
      str    CPT44                      236- 240   ///
      str    CPT45                      241- 245   ///
      str    CPT46                      246- 250   ///
      str    CPT47                      251- 255   ///
      str    CPT48                      256- 260   ///
      str    CPT49                      261- 265   ///
      str    CPT50                      266- 270   ///
      str    CPT51                      271- 275   ///
      str    CPT52                      276- 280   ///
      str    CPT53                      281- 285   ///
      str    CPT54                      286- 290   ///
      str    CPT55                      291- 295   ///
      str    CPT56                      296- 300   ///
      str    CPT57                      301- 305   ///
      str    CPT58                      306- 310   ///
      str    CPT59                      311- 315   ///
      str    CPT60                      316- 320   ///
      str    CPT61                      321- 325   ///
      str    CPT62                      326- 330   ///
      str    CPT63                      331- 335   ///
      str    CPT64                      336- 340   ///
      str    CPT65                      341- 345   ///
      str    CPT66                      346- 350   ///
      str    CPT67                      351- 355   ///
      str    CPT68                      356- 360   ///
      str    CPT69                      361- 365   ///
      str    CPT70                      366- 370   ///
      str    CPT71                      371- 375   ///
      str    CPT72                      376- 380   ///
      str    CPT73                      381- 385   ///
      str    CPT74                      386- 390   ///
      str    CPT75                      391- 395   ///
      str    CPT76                      396- 400   ///
      str    CPT77                      401- 405   ///
      str    CPT78                      406- 410   ///
      str    CPT79                      411- 415   ///
      str    CPT80                      416- 420   ///
      str    CPT81                      421- 425   ///
      str    CPT82                      426- 430   ///
      str    CPT83                      431- 435   ///
      str    CPT84                      436- 440   ///
      str    CPT85                      441- 445   ///
      str    CPT86                      446- 450   ///
      str    CPT87                      451- 455   ///
      str    CPT88                      456- 460   ///
      str    CPT89                      461- 465   ///
      str    CPT90                      466- 470   ///
      str    CPT91                      471- 475   ///
      str    CPT92                      476- 480   ///
      str    CPT93                      481- 485   ///
      str    CPT94                      486- 490   ///
      str    CPT95                      491- 495   ///
      str    CPT96                      496- 500   ///
      str    CPT97                      501- 505   ///
      str    CPT98                      506- 510   ///
      str    CPT99                      511- 515   ///
      str    CPT100                     516- 520   ///
      str    CPT101                     521- 525   ///
      str    CPT102                     526- 530   ///
      str    CPT103                     531- 535   ///
      str    CPT104                     536- 540   ///
      str    CPT105                     541- 545   ///
      str    CPT106                     546- 550   ///
      str    CPT107                     551- 555   ///
      str    CPT108                     556- 560   ///
      str    CPT109                     561- 565   ///
      str    CPT110                     566- 570   ///
      str    CPT111                     571- 575   ///
      str    CPT112                     576- 580   ///
      str    CPT113                     581- 585   ///
      str    CPT114                     586- 590   ///
      str    CPT115                     591- 595   ///
      str    CPT116                     596- 600   ///
      str    CPT117                     601- 605   ///
      str    CPT118                     606- 610   ///
      str    CPT119                     611- 615   ///
      str    CPT120                     616- 620   ///
      int    CPTCCS1                    621- 623   ///
      int    CPTCCS2                    624- 626   ///
      int    CPTCCS3                    627- 629   ///
      int    CPTCCS4                    630- 632   ///
      int    CPTCCS5                    633- 635   ///
      int    CPTCCS6                    636- 638   ///
      int    CPTCCS7                    639- 641   ///
      int    CPTCCS8                    642- 644   ///
      int    CPTCCS9                    645- 647   ///
      int    CPTCCS10                   648- 650   ///
      int    CPTCCS11                   651- 653   ///
      int    CPTCCS12                   654- 656   ///
      int    CPTCCS13                   657- 659   ///
      int    CPTCCS14                   660- 662   ///
      int    CPTCCS15                   663- 665   ///
      int    CPTCCS16                   666- 668   ///
      int    CPTCCS17                   669- 671   ///
      int    CPTCCS18                   672- 674   ///
      int    CPTCCS19                   675- 677   ///
      int    CPTCCS20                   678- 680   ///
      int    CPTCCS21                   681- 683   ///
      int    CPTCCS22                   684- 686   ///
      int    CPTCCS23                   687- 689   ///
      int    CPTCCS24                   690- 692   ///
      int    CPTCCS25                   693- 695   ///
      int    CPTCCS26                   696- 698   ///
      int    CPTCCS27                   699- 701   ///
      int    CPTCCS28                   702- 704   ///
      int    CPTCCS29                   705- 707   ///
      int    CPTCCS30                   708- 710   ///
      int    CPTCCS31                   711- 713   ///
      int    CPTCCS32                   714- 716   ///
      int    CPTCCS33                   717- 719   ///
      int    CPTCCS34                   720- 722   ///
      int    CPTCCS35                   723- 725   ///
      int    CPTCCS36                   726- 728   ///
      int    CPTCCS37                   729- 731   ///
      int    CPTCCS38                   732- 734   ///
      int    CPTCCS39                   735- 737   ///
      int    CPTCCS40                   738- 740   ///
      int    CPTCCS41                   741- 743   ///
      int    CPTCCS42                   744- 746   ///
      int    CPTCCS43                   747- 749   ///
      int    CPTCCS44                   750- 752   ///
      int    CPTCCS45                   753- 755   ///
      int    CPTCCS46                   756- 758   ///
      int    CPTCCS47                   759- 761   ///
      int    CPTCCS48                   762- 764   ///
      int    CPTCCS49                   765- 767   ///
      int    CPTCCS50                   768- 770   ///
      int    CPTCCS51                   771- 773   ///
      int    CPTCCS52                   774- 776   ///
      int    CPTCCS53                   777- 779   ///
      int    CPTCCS54                   780- 782   ///
      int    CPTCCS55                   783- 785   ///
      int    CPTCCS56                   786- 788   ///
      int    CPTCCS57                   789- 791   ///
      int    CPTCCS58                   792- 794   ///
      int    CPTCCS59                   795- 797   ///
      int    CPTCCS60                   798- 800   ///
      int    CPTCCS61                   801- 803   ///
      int    CPTCCS62                   804- 806   ///
      int    CPTCCS63                   807- 809   ///
      int    CPTCCS64                   810- 812   ///
      int    CPTCCS65                   813- 815   ///
      int    CPTCCS66                   816- 818   ///
      int    CPTCCS67                   819- 821   ///
      int    CPTCCS68                   822- 824   ///
      int    CPTCCS69                   825- 827   ///
      int    CPTCCS70                   828- 830   ///
      int    CPTCCS71                   831- 833   ///
      int    CPTCCS72                   834- 836   ///
      int    CPTCCS73                   837- 839   ///
      int    CPTCCS74                   840- 842   ///
      int    CPTCCS75                   843- 845   ///
      int    CPTCCS76                   846- 848   ///
      int    CPTCCS77                   849- 851   ///
      int    CPTCCS78                   852- 854   ///
      int    CPTCCS79                   855- 857   ///
      int    CPTCCS80                   858- 860   ///
      int    CPTCCS81                   861- 863   ///
      int    CPTCCS82                   864- 866   ///
      int    CPTCCS83                   867- 869   ///
      int    CPTCCS84                   870- 872   ///
      int    CPTCCS85                   873- 875   ///
      int    CPTCCS86                   876- 878   ///
      int    CPTCCS87                   879- 881   ///
      int    CPTCCS88                   882- 884   ///
      int    CPTCCS89                   885- 887   ///
      int    CPTCCS90                   888- 890   ///
      int    CPTCCS91                   891- 893   ///
      int    CPTCCS92                   894- 896   ///
      int    CPTCCS93                   897- 899   ///
      int    CPTCCS94                   900- 902   ///
      int    CPTCCS95                   903- 905   ///
      int    CPTCCS96                   906- 908   ///
      int    CPTCCS97                   909- 911   ///
      int    CPTCCS98                   912- 914   ///
      int    CPTCCS99                   915- 917   ///
      int    CPTCCS100                  918- 920   ///
      int    CPTCCS101                  921- 923   ///
      int    CPTCCS102                  924- 926   ///
      int    CPTCCS103                  927- 929   ///
      int    CPTCCS104                  930- 932   ///
      int    CPTCCS105                  933- 935   ///
      int    CPTCCS106                  936- 938   ///
      int    CPTCCS107                  939- 941   ///
      int    CPTCCS108                  942- 944   ///
      int    CPTCCS109                  945- 947   ///
      int    CPTCCS110                  948- 950   ///
      int    CPTCCS111                  951- 953   ///
      int    CPTCCS112                  954- 956   ///
      int    CPTCCS113                  957- 959   ///
      int    CPTCCS114                  960- 962   ///
      int    CPTCCS115                  963- 965   ///
      int    CPTCCS116                  966- 968   ///
      int    CPTCCS117                  969- 971   ///
      int    CPTCCS118                  972- 974   ///
      int    CPTCCS119                  975- 977   ///
      int    CPTCCS120                  978- 980   ///
      int    CPTDAY1                    981- 983   ///
      int    CPTDAY2                    984- 986   ///
      int    CPTDAY3                    987- 989   ///
      int    CPTDAY4                    990- 992   ///
      int    CPTDAY5                    993- 995   ///
      int    CPTDAY6                    996- 998   ///
      int    CPTDAY7                    999-1001   ///
      int    CPTDAY8                   1002-1004   ///
      int    CPTDAY9                   1005-1007   ///
      int    CPTDAY10                  1008-1010   ///
      int    CPTDAY11                  1011-1013   ///
      int    CPTDAY12                  1014-1016   ///
      int    CPTDAY13                  1017-1019   ///
      int    CPTDAY14                  1020-1022   ///
      int    CPTDAY15                  1023-1025   ///
      int    CPTDAY16                  1026-1028   ///
      int    CPTDAY17                  1029-1031   ///
      int    CPTDAY18                  1032-1034   ///
      int    CPTDAY19                  1035-1037   ///
      int    CPTDAY20                  1038-1040   ///
      int    CPTDAY21                  1041-1043   ///
      int    CPTDAY22                  1044-1046   ///
      int    CPTDAY23                  1047-1049   ///
      int    CPTDAY24                  1050-1052   ///
      int    CPTDAY25                  1053-1055   ///
      int    CPTDAY26                  1056-1058   ///
      int    CPTDAY27                  1059-1061   ///
      int    CPTDAY28                  1062-1064   ///
      int    CPTDAY29                  1065-1067   ///
      int    CPTDAY30                  1068-1070   ///
      int    CPTDAY31                  1071-1073   ///
      int    CPTDAY32                  1074-1076   ///
      int    CPTDAY33                  1077-1079   ///
      int    CPTDAY34                  1080-1082   ///
      int    CPTDAY35                  1083-1085   ///
      int    CPTDAY36                  1086-1088   ///
      int    CPTDAY37                  1089-1091   ///
      int    CPTDAY38                  1092-1094   ///
      int    CPTDAY39                  1095-1097   ///
      int    CPTDAY40                  1098-1100   ///
      int    CPTDAY41                  1101-1103   ///
      int    CPTDAY42                  1104-1106   ///
      int    CPTDAY43                  1107-1109   ///
      int    CPTDAY44                  1110-1112   ///
      int    CPTDAY45                  1113-1115   ///
      int    CPTDAY46                  1116-1118   ///
      int    CPTDAY47                  1119-1121   ///
      int    CPTDAY48                  1122-1124   ///
      int    CPTDAY49                  1125-1127   ///
      int    CPTDAY50                  1128-1130   ///
      int    CPTDAY51                  1131-1133   ///
      int    CPTDAY52                  1134-1136   ///
      int    CPTDAY53                  1137-1139   ///
      int    CPTDAY54                  1140-1142   ///
      int    CPTDAY55                  1143-1145   ///
      int    CPTDAY56                  1146-1148   ///
      int    CPTDAY57                  1149-1151   ///
      int    CPTDAY58                  1152-1154   ///
      int    CPTDAY59                  1155-1157   ///
      int    CPTDAY60                  1158-1160   ///
      int    CPTDAY61                  1161-1163   ///
      int    CPTDAY62                  1164-1166   ///
      int    CPTDAY63                  1167-1169   ///
      int    CPTDAY64                  1170-1172   ///
      int    CPTDAY65                  1173-1175   ///
      int    CPTDAY66                  1176-1178   ///
      int    CPTDAY67                  1179-1181   ///
      int    CPTDAY68                  1182-1184   ///
      int    CPTDAY69                  1185-1187   ///
      int    CPTDAY70                  1188-1190   ///
      int    CPTDAY71                  1191-1193   ///
      int    CPTDAY72                  1194-1196   ///
      int    CPTDAY73                  1197-1199   ///
      int    CPTDAY74                  1200-1202   ///
      int    CPTDAY75                  1203-1205   ///
      int    CPTDAY76                  1206-1208   ///
      int    CPTDAY77                  1209-1211   ///
      int    CPTDAY78                  1212-1214   ///
      int    CPTDAY79                  1215-1217   ///
      int    CPTDAY80                  1218-1220   ///
      int    CPTDAY81                  1221-1223   ///
      int    CPTDAY82                  1224-1226   ///
      int    CPTDAY83                  1227-1229   ///
      int    CPTDAY84                  1230-1232   ///
      int    CPTDAY85                  1233-1235   ///
      int    CPTDAY86                  1236-1238   ///
      int    CPTDAY87                  1239-1241   ///
      int    CPTDAY88                  1242-1244   ///
      int    CPTDAY89                  1245-1247   ///
      int    CPTDAY90                  1248-1250   ///
      int    CPTDAY91                  1251-1253   ///
      int    CPTDAY92                  1254-1256   ///
      int    CPTDAY93                  1257-1259   ///
      int    CPTDAY94                  1260-1262   ///
      int    CPTDAY95                  1263-1265   ///
      int    CPTDAY96                  1266-1268   ///
      int    CPTDAY97                  1269-1271   ///
      int    CPTDAY98                  1272-1274   ///
      int    CPTDAY99                  1275-1277   ///
      int    CPTDAY100                 1278-1280   ///
      int    CPTDAY101                 1281-1283   ///
      int    CPTDAY102                 1284-1286   ///
      int    CPTDAY103                 1287-1289   ///
      int    CPTDAY104                 1290-1292   ///
      int    CPTDAY105                 1293-1295   ///
      int    CPTDAY106                 1296-1298   ///
      int    CPTDAY107                 1299-1301   ///
      int    CPTDAY108                 1302-1304   ///
      int    CPTDAY109                 1305-1307   ///
      int    CPTDAY110                 1308-1310   ///
      int    CPTDAY111                 1311-1313   ///
      int    CPTDAY112                 1314-1316   ///
      int    CPTDAY113                 1317-1319   ///
      int    CPTDAY114                 1320-1322   ///
      int    CPTDAY115                 1323-1325   ///
      int    CPTDAY116                 1326-1328   ///
      int    CPTDAY117                 1329-1331   ///
      int    CPTDAY118                 1332-1334   ///
      int    CPTDAY119                 1335-1337   ///
      int    CPTDAY120                 1338-1340   ///
      long   DaysToEvent               1341-1346   ///
      int    DHOUR                     1347-1350   ///
      byte   DIED                      1351-1352   ///
      str    DISP_X                    1353-1354   ///
      byte   DISPUB04                  1355-1356   ///
      byte   DISPUNIFORM               1357-1358   ///
      byte   DMONTH                    1359-1360   ///
      byte   DQTR                      1361-1362   ///
      long   DURATION                  1363-1368   ///
      str    DXPOA1                    1369        ///
      str    DXPOA2                    1370        ///
      str    DXPOA3                    1371        ///
      str    DXPOA4                    1372        ///
      str    DXPOA5                    1373        ///
      str    DXPOA6                    1374        ///
      str    DXPOA7                    1375        ///
      str    DXPOA8                    1376        ///
      str    DXPOA9                    1377        ///
      str    DXPOA10                   1378        ///
      str    DXPOA11                   1379        ///
      str    DXPOA12                   1380        ///
      str    DXPOA13                   1381        ///
      str    DXPOA14                   1382        ///
      str    DXPOA15                   1383        ///
      str    DXPOA16                   1384        ///
      str    DXPOA17                   1385        ///
      str    DXPOA18                   1386        ///
      str    DXPOA19                   1387        ///
      str    DXPOA20                   1388        ///
      str    DXPOA21                   1389        ///
      str    DXPOA22                   1390        ///
      str    DXPOA23                   1391        ///
      str    DXPOA24                   1392        ///
      str    DXPOA25                   1393        ///
      str    DXPOA26                   1394        ///
      str    DXPOA27                   1395        ///
      str    DXPOA28                   1396        ///
      str    DXPOA29                   1397        ///
      str    DXPOA30                   1398        ///
      byte   FEMALE                    1399-1400   ///
      byte   HCUP_ED                   1401-1402   ///
      byte   HCUP_OS                   1403-1404   ///
      long   HCUP_SURGERY_BROAD_CPT    1405-1409   ///
      long   HCUP_SURGERY_NARROW_CPT   1410-1414   ///
      byte   HISPANIC                  1415-1416   ///
      str    HISPANIC_X                1417        ///
      str    HOSPST                    1418-1419   ///
      str    I10_DX_Visit_Reason1      1420-1426   ///
      str    I10_DX_Visit_Reason2      1427-1433   ///
      str    I10_DX_Visit_Reason3      1434-1440   ///
      str    I10_DX1                   1441-1447   ///
      str    I10_DX2                   1448-1454   ///
      str    I10_DX3                   1455-1461   ///
      str    I10_DX4                   1462-1468   ///
      str    I10_DX5                   1469-1475   ///
      str    I10_DX6                   1476-1482   ///
      str    I10_DX7                   1483-1489   ///
      str    I10_DX8                   1490-1496   ///
      str    I10_DX9                   1497-1503   ///
      str    I10_DX10                  1504-1510   ///
      str    I10_DX11                  1511-1517   ///
      str    I10_DX12                  1518-1524   ///
      str    I10_DX13                  1525-1531   ///
      str    I10_DX14                  1532-1538   ///
      str    I10_DX15                  1539-1545   ///
      str    I10_DX16                  1546-1552   ///
      str    I10_DX17                  1553-1559   ///
      str    I10_DX18                  1560-1566   ///
      str    I10_DX19                  1567-1573   ///
      str    I10_DX20                  1574-1580   ///
      str    I10_DX21                  1581-1587   ///
      str    I10_DX22                  1588-1594   ///
      str    I10_DX23                  1595-1601   ///
      str    I10_DX24                  1602-1608   ///
      str    I10_DX25                  1609-1615   ///
      str    I10_DX26                  1616-1622   ///
      str    I10_DX27                  1623-1629   ///
      str    I10_DX28                  1630-1636   ///
      str    I10_DX29                  1637-1643   ///
      str    I10_DX30                  1644-1650   ///
      int    I10_NDX                   1651-1653   ///
      int    I10_NPR                   1654-1656   ///
      str    I10_PR1                   1657-1663   ///
      str    I10_PR2                   1664-1670   ///
      str    I10_PR3                   1671-1677   ///
      str    I10_PR4                   1678-1684   ///
      str    I10_PR5                   1685-1691   ///
      str    I10_PR6                   1692-1698   ///
      str    I10_PR7                   1699-1705   ///
      str    I10_PR8                   1706-1712   ///
      str    I10_PR9                   1713-1719   ///
      str    I10_PR10                  1720-1726   ///
      int    I10_PROCTYPE              1727-1729   ///
      double KEY                       1730-1744   ///
      long   LOS                       1745-1749   ///
      long   LOS_X                     1750-1755   ///
      byte   MEDINCSTQ                 1756-1757   ///
      int    NCPT                      1758-1761   ///
      int    OBSERVATION               1762-1765   ///
      str    OPservice                 1766        ///
      double OS_TIME                   1767-1777   ///
      byte   PAY1                      1778-1779   ///
      str    PAY1_X                    1780-1781   ///
      byte   PAY2                      1782-1783   ///
      str    PAY2_X                    1784-1785   ///
      byte   PAY3                      1786-1787   ///
      str    PAY3_X                    1788-1789   ///
      int    PL_CBSA                   1790-1792   ///
      byte   PL_NCHS                   1793-1794   ///
      byte   POA_Disch_Edit1           1795-1796   ///
      byte   POA_Disch_Edit2           1797-1798   ///
      byte   POA_Hosp_Edit1            1799-1800   ///
      byte   POA_Hosp_Edit2            1801-1802   ///
      byte   POA_Hosp_Edit3            1803-1804   ///
      double POA_Hosp_Edit3_Value      1805-1812   ///
      str    PointOfOrigin_X           1813        ///
      str    PointOfOriginUB04         1814        ///
      long   PRDAY1                    1815-1819   ///
      long   PRDAY2                    1820-1824   ///
      long   PRDAY3                    1825-1829   ///
      long   PRDAY4                    1830-1834   ///
      long   PRDAY5                    1835-1839   ///
      long   PRDAY6                    1840-1844   ///
      long   PRDAY7                    1845-1849   ///
      long   PRDAY8                    1850-1854   ///
      long   PRDAY9                    1855-1859   ///
      long   PRDAY10                   1860-1864   ///
      str    PSTATE                    1865-1866   ///
      str    PSTATE_GEO                1867-1868   ///
      byte   RACE                      1869-1870   ///
      str    RACE_X                    1871        ///
      byte   STATE_AS                  1872-1873   ///
      byte   STATE_ED                  1874-1875   ///
      byte   STATE_OS                  1876-1877   ///
      double TOTCHG                    1878-1887   ///
      double TOTCHG_X                  1888-1902   ///
      long   VisitLink                 1903-1911   ///
      int    YEAR                      1912-1915   ///
      int    ZIPINC_QRTL               1916-1918   ///
      long   HOSPID                    1919-1923   ///
      int    AYEAR                     1924-1927   ///
      byte   BMONTH                    1928-1929   ///
      int    BYEAR                     1930-1933   ///
      byte   PRMONTH1                  1934-1935   ///
      byte   PRMONTH2                  1936-1937   ///
      byte   PRMONTH3                  1938-1939   ///
      byte   PRMONTH4                  1940-1941   ///
      byte   PRMONTH5                  1942-1943   ///
      byte   PRMONTH6                  1944-1945   ///
      byte   PRMONTH7                  1946-1947   ///
      byte   PRMONTH8                  1948-1949   ///
      byte   PRMONTH9                  1950-1951   ///
      byte   PRMONTH10                 1952-1953   ///
      int    PRYEAR1                   1954-1957   ///
      int    PRYEAR2                   1958-1961   ///
      int    PRYEAR3                   1962-1965   ///
      int    PRYEAR4                   1966-1969   ///
      int    PRYEAR5                   1970-1973   ///
      int    PRYEAR6                   1974-1977   ///
      int    PRYEAR7                   1978-1981   ///
      int    PRYEAR8                   1982-1985   ///
      int    PRYEAR9                   1986-1989   ///
      int    PRYEAR10                  1990-1993   ///
      using  "AK_SEDD_2020_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
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
label var DaysToEvent              "Days from 'start date' to admission"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HCUP_SURGERY_BROAD_CPT   "Number of reported CPT procedures that qualify as a surgery using a broad definition"
label var HCUP_SURGERY_NARROW_CPT  "Number of reported CPT procedures that qualify as a surgery using a narrow definition"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
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
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var STATE_AS                 "State Ambulatory Surgery service indicator"
label var STATE_ED                 "State Emergency Department service indicator"
label var STATE_OS                 "State Observation Stay service indicator"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var VisitLink                "Visit linkage variable"
label var YEAR                     "Calendar year"
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

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
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
recode HCUP_SURGERY_BROAD_CPT    (-9999 -8888 -6666=.)
recode HCUP_SURGERY_NARROW_CPT   (-9999 -8888 -6666=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCPT                      (-999 -888 -666=.)
recode OBSERVATION               (-999 -888 -666=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
recode PAY3                      (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
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

save "AK_SEDD_2020_CORE.dta", replace
