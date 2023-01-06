/*****************************************************************************
* Creation Date: 04/14/2021   
* WI_SEDD_2019_CORE.Do
* This program will load the 2019 WI ASCII CORE File into Stata.
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
      int    CPTCCS1                    610- 612   ///
      int    CPTCCS2                    613- 615   ///
      int    CPTCCS3                    616- 618   ///
      int    CPTCCS4                    619- 621   ///
      int    CPTCCS5                    622- 624   ///
      int    CPTCCS6                    625- 627   ///
      int    CPTCCS7                    628- 630   ///
      int    CPTCCS8                    631- 633   ///
      int    CPTCCS9                    634- 636   ///
      int    CPTCCS10                   637- 639   ///
      int    CPTCCS11                   640- 642   ///
      int    CPTCCS12                   643- 645   ///
      int    CPTCCS13                   646- 648   ///
      int    CPTCCS14                   649- 651   ///
      int    CPTCCS15                   652- 654   ///
      int    CPTCCS16                   655- 657   ///
      int    CPTCCS17                   658- 660   ///
      int    CPTCCS18                   661- 663   ///
      int    CPTCCS19                   664- 666   ///
      int    CPTCCS20                   667- 669   ///
      int    CPTCCS21                   670- 672   ///
      int    CPTCCS22                   673- 675   ///
      int    CPTCCS23                   676- 678   ///
      int    CPTCCS24                   679- 681   ///
      int    CPTCCS25                   682- 684   ///
      int    CPTCCS26                   685- 687   ///
      int    CPTCCS27                   688- 690   ///
      int    CPTCCS28                   691- 693   ///
      int    CPTCCS29                   694- 696   ///
      int    CPTCCS30                   697- 699   ///
      int    CPTCCS31                   700- 702   ///
      int    CPTCCS32                   703- 705   ///
      int    CPTCCS33                   706- 708   ///
      int    CPTCCS34                   709- 711   ///
      int    CPTCCS35                   712- 714   ///
      int    CPTCCS36                   715- 717   ///
      int    CPTCCS37                   718- 720   ///
      int    CPTCCS38                   721- 723   ///
      int    CPTCCS39                   724- 726   ///
      int    CPTCCS40                   727- 729   ///
      int    CPTCCS41                   730- 732   ///
      int    CPTCCS42                   733- 735   ///
      int    CPTCCS43                   736- 738   ///
      int    CPTCCS44                   739- 741   ///
      int    CPTCCS45                   742- 744   ///
      int    CPTCCS46                   745- 747   ///
      int    CPTCCS47                   748- 750   ///
      int    CPTCCS48                   751- 753   ///
      int    CPTCCS49                   754- 756   ///
      int    CPTCCS50                   757- 759   ///
      int    CPTCCS51                   760- 762   ///
      int    CPTCCS52                   763- 765   ///
      int    CPTCCS53                   766- 768   ///
      int    CPTCCS54                   769- 771   ///
      int    CPTCCS55                   772- 774   ///
      int    CPTCCS56                   775- 777   ///
      int    CPTCCS57                   778- 780   ///
      int    CPTCCS58                   781- 783   ///
      int    CPTCCS59                   784- 786   ///
      int    CPTCCS60                   787- 789   ///
      int    CPTCCS61                   790- 792   ///
      int    CPTCCS62                   793- 795   ///
      int    CPTCCS63                   796- 798   ///
      int    CPTCCS64                   799- 801   ///
      int    CPTCCS65                   802- 804   ///
      int    CPTCCS66                   805- 807   ///
      int    CPTCCS67                   808- 810   ///
      int    CPTCCS68                   811- 813   ///
      int    CPTCCS69                   814- 816   ///
      int    CPTCCS70                   817- 819   ///
      int    CPTCCS71                   820- 822   ///
      int    CPTCCS72                   823- 825   ///
      int    CPTCCS73                   826- 828   ///
      int    CPTCCS74                   829- 831   ///
      int    CPTCCS75                   832- 834   ///
      int    CPTCCS76                   835- 837   ///
      int    CPTCCS77                   838- 840   ///
      int    CPTCCS78                   841- 843   ///
      int    CPTCCS79                   844- 846   ///
      int    CPTCCS80                   847- 849   ///
      int    CPTCCS81                   850- 852   ///
      int    CPTCCS82                   853- 855   ///
      int    CPTCCS83                   856- 858   ///
      int    CPTCCS84                   859- 861   ///
      int    CPTCCS85                   862- 864   ///
      int    CPTCCS86                   865- 867   ///
      int    CPTCCS87                   868- 870   ///
      int    CPTCCS88                   871- 873   ///
      int    CPTCCS89                   874- 876   ///
      int    CPTCCS90                   877- 879   ///
      int    CPTCCS91                   880- 882   ///
      int    CPTCCS92                   883- 885   ///
      int    CPTCCS93                   886- 888   ///
      int    CPTCCS94                   889- 891   ///
      int    CPTCCS95                   892- 894   ///
      int    CPTCCS96                   895- 897   ///
      int    CPTCCS97                   898- 900   ///
      int    CPTCCS98                   901- 903   ///
      int    CPTCCS99                   904- 906   ///
      int    CPTCCS100                  907- 909   ///
      int    CPTCCS101                  910- 912   ///
      int    CPTCCS102                  913- 915   ///
      int    CPTCCS103                  916- 918   ///
      int    CPTCCS104                  919- 921   ///
      int    CPTCCS105                  922- 924   ///
      int    CPTCCS106                  925- 927   ///
      int    CPTCCS107                  928- 930   ///
      int    CPTCCS108                  931- 933   ///
      int    CPTCCS109                  934- 936   ///
      int    CPTCCS110                  937- 939   ///
      int    CPTCCS111                  940- 942   ///
      int    CPTCCS112                  943- 945   ///
      int    CPTCCS113                  946- 948   ///
      int    CPTCCS114                  949- 951   ///
      int    CPTCCS115                  952- 954   ///
      int    CPTCCS116                  955- 957   ///
      int    CPTCCS117                  958- 960   ///
      int    CPTCCS118                  961- 963   ///
      int    CPTDAY1                    964- 966   ///
      int    CPTDAY2                    967- 969   ///
      int    CPTDAY3                    970- 972   ///
      int    CPTDAY4                    973- 975   ///
      int    CPTDAY5                    976- 978   ///
      int    CPTDAY6                    979- 981   ///
      int    CPTDAY7                    982- 984   ///
      int    CPTDAY8                    985- 987   ///
      int    CPTDAY9                    988- 990   ///
      int    CPTDAY10                   991- 993   ///
      int    CPTDAY11                   994- 996   ///
      int    CPTDAY12                   997- 999   ///
      int    CPTDAY13                  1000-1002   ///
      int    CPTDAY14                  1003-1005   ///
      int    CPTDAY15                  1006-1008   ///
      int    CPTDAY16                  1009-1011   ///
      int    CPTDAY17                  1012-1014   ///
      int    CPTDAY18                  1015-1017   ///
      int    CPTDAY19                  1018-1020   ///
      int    CPTDAY20                  1021-1023   ///
      int    CPTDAY21                  1024-1026   ///
      int    CPTDAY22                  1027-1029   ///
      int    CPTDAY23                  1030-1032   ///
      int    CPTDAY24                  1033-1035   ///
      int    CPTDAY25                  1036-1038   ///
      int    CPTDAY26                  1039-1041   ///
      int    CPTDAY27                  1042-1044   ///
      int    CPTDAY28                  1045-1047   ///
      int    CPTDAY29                  1048-1050   ///
      int    CPTDAY30                  1051-1053   ///
      int    CPTDAY31                  1054-1056   ///
      int    CPTDAY32                  1057-1059   ///
      int    CPTDAY33                  1060-1062   ///
      int    CPTDAY34                  1063-1065   ///
      int    CPTDAY35                  1066-1068   ///
      int    CPTDAY36                  1069-1071   ///
      int    CPTDAY37                  1072-1074   ///
      int    CPTDAY38                  1075-1077   ///
      int    CPTDAY39                  1078-1080   ///
      int    CPTDAY40                  1081-1083   ///
      int    CPTDAY41                  1084-1086   ///
      int    CPTDAY42                  1087-1089   ///
      int    CPTDAY43                  1090-1092   ///
      int    CPTDAY44                  1093-1095   ///
      int    CPTDAY45                  1096-1098   ///
      int    CPTDAY46                  1099-1101   ///
      int    CPTDAY47                  1102-1104   ///
      int    CPTDAY48                  1105-1107   ///
      int    CPTDAY49                  1108-1110   ///
      int    CPTDAY50                  1111-1113   ///
      int    CPTDAY51                  1114-1116   ///
      int    CPTDAY52                  1117-1119   ///
      int    CPTDAY53                  1120-1122   ///
      int    CPTDAY54                  1123-1125   ///
      int    CPTDAY55                  1126-1128   ///
      int    CPTDAY56                  1129-1131   ///
      int    CPTDAY57                  1132-1134   ///
      int    CPTDAY58                  1135-1137   ///
      int    CPTDAY59                  1138-1140   ///
      int    CPTDAY60                  1141-1143   ///
      int    CPTDAY61                  1144-1146   ///
      int    CPTDAY62                  1147-1149   ///
      int    CPTDAY63                  1150-1152   ///
      int    CPTDAY64                  1153-1155   ///
      int    CPTDAY65                  1156-1158   ///
      int    CPTDAY66                  1159-1161   ///
      int    CPTDAY67                  1162-1164   ///
      int    CPTDAY68                  1165-1167   ///
      int    CPTDAY69                  1168-1170   ///
      int    CPTDAY70                  1171-1173   ///
      int    CPTDAY71                  1174-1176   ///
      int    CPTDAY72                  1177-1179   ///
      int    CPTDAY73                  1180-1182   ///
      int    CPTDAY74                  1183-1185   ///
      int    CPTDAY75                  1186-1188   ///
      int    CPTDAY76                  1189-1191   ///
      int    CPTDAY77                  1192-1194   ///
      int    CPTDAY78                  1195-1197   ///
      int    CPTDAY79                  1198-1200   ///
      int    CPTDAY80                  1201-1203   ///
      int    CPTDAY81                  1204-1206   ///
      int    CPTDAY82                  1207-1209   ///
      int    CPTDAY83                  1210-1212   ///
      int    CPTDAY84                  1213-1215   ///
      int    CPTDAY85                  1216-1218   ///
      int    CPTDAY86                  1219-1221   ///
      int    CPTDAY87                  1222-1224   ///
      int    CPTDAY88                  1225-1227   ///
      int    CPTDAY89                  1228-1230   ///
      int    CPTDAY90                  1231-1233   ///
      int    CPTDAY91                  1234-1236   ///
      int    CPTDAY92                  1237-1239   ///
      int    CPTDAY93                  1240-1242   ///
      int    CPTDAY94                  1243-1245   ///
      int    CPTDAY95                  1246-1248   ///
      int    CPTDAY96                  1249-1251   ///
      int    CPTDAY97                  1252-1254   ///
      int    CPTDAY98                  1255-1257   ///
      int    CPTDAY99                  1258-1260   ///
      int    CPTDAY100                 1261-1263   ///
      int    CPTDAY101                 1264-1266   ///
      int    CPTDAY102                 1267-1269   ///
      int    CPTDAY103                 1270-1272   ///
      int    CPTDAY104                 1273-1275   ///
      int    CPTDAY105                 1276-1278   ///
      int    CPTDAY106                 1279-1281   ///
      int    CPTDAY107                 1282-1284   ///
      int    CPTDAY108                 1285-1287   ///
      int    CPTDAY109                 1288-1290   ///
      int    CPTDAY110                 1291-1293   ///
      int    CPTDAY111                 1294-1296   ///
      int    CPTDAY112                 1297-1299   ///
      int    CPTDAY113                 1300-1302   ///
      int    CPTDAY114                 1303-1305   ///
      int    CPTDAY115                 1306-1308   ///
      int    CPTDAY116                 1309-1311   ///
      int    CPTDAY117                 1312-1314   ///
      int    CPTDAY118                 1315-1317   ///
      str    CPTM1_1                   1318-1319   ///
      str    CPTM1_2                   1320-1321   ///
      str    CPTM1_3                   1322-1323   ///
      str    CPTM1_4                   1324-1325   ///
      str    CPTM1_5                   1326-1327   ///
      str    CPTM1_6                   1328-1329   ///
      str    CPTM1_7                   1330-1331   ///
      str    CPTM1_8                   1332-1333   ///
      str    CPTM1_9                   1334-1335   ///
      str    CPTM1_10                  1336-1337   ///
      str    CPTM1_11                  1338-1339   ///
      str    CPTM1_12                  1340-1341   ///
      str    CPTM1_13                  1342-1343   ///
      str    CPTM1_14                  1344-1345   ///
      str    CPTM1_15                  1346-1347   ///
      str    CPTM1_16                  1348-1349   ///
      str    CPTM1_17                  1350-1351   ///
      str    CPTM1_18                  1352-1353   ///
      str    CPTM1_19                  1354-1355   ///
      str    CPTM1_20                  1356-1357   ///
      str    CPTM1_21                  1358-1359   ///
      str    CPTM1_22                  1360-1361   ///
      str    CPTM1_23                  1362-1363   ///
      str    CPTM1_24                  1364-1365   ///
      str    CPTM1_25                  1366-1367   ///
      str    CPTM1_26                  1368-1369   ///
      str    CPTM1_27                  1370-1371   ///
      str    CPTM1_28                  1372-1373   ///
      str    CPTM1_29                  1374-1375   ///
      str    CPTM1_30                  1376-1377   ///
      str    CPTM1_31                  1378-1379   ///
      str    CPTM1_32                  1380-1381   ///
      str    CPTM1_33                  1382-1383   ///
      str    CPTM1_34                  1384-1385   ///
      str    CPTM1_35                  1386-1387   ///
      str    CPTM1_36                  1388-1389   ///
      str    CPTM1_37                  1390-1391   ///
      str    CPTM1_38                  1392-1393   ///
      str    CPTM1_39                  1394-1395   ///
      str    CPTM1_40                  1396-1397   ///
      str    CPTM1_41                  1398-1399   ///
      str    CPTM1_42                  1400-1401   ///
      str    CPTM1_43                  1402-1403   ///
      str    CPTM1_44                  1404-1405   ///
      str    CPTM1_45                  1406-1407   ///
      str    CPTM1_46                  1408-1409   ///
      str    CPTM1_47                  1410-1411   ///
      str    CPTM1_48                  1412-1413   ///
      str    CPTM1_49                  1414-1415   ///
      str    CPTM1_50                  1416-1417   ///
      str    CPTM1_51                  1418-1419   ///
      str    CPTM1_52                  1420-1421   ///
      str    CPTM1_53                  1422-1423   ///
      str    CPTM1_54                  1424-1425   ///
      str    CPTM1_55                  1426-1427   ///
      str    CPTM1_56                  1428-1429   ///
      str    CPTM1_57                  1430-1431   ///
      str    CPTM1_58                  1432-1433   ///
      str    CPTM1_59                  1434-1435   ///
      str    CPTM1_60                  1436-1437   ///
      str    CPTM1_61                  1438-1439   ///
      str    CPTM1_62                  1440-1441   ///
      str    CPTM1_63                  1442-1443   ///
      str    CPTM1_64                  1444-1445   ///
      str    CPTM1_65                  1446-1447   ///
      str    CPTM1_66                  1448-1449   ///
      str    CPTM1_67                  1450-1451   ///
      str    CPTM1_68                  1452-1453   ///
      str    CPTM1_69                  1454-1455   ///
      str    CPTM1_70                  1456-1457   ///
      str    CPTM1_71                  1458-1459   ///
      str    CPTM1_72                  1460-1461   ///
      str    CPTM1_73                  1462-1463   ///
      str    CPTM1_74                  1464-1465   ///
      str    CPTM1_75                  1466-1467   ///
      str    CPTM1_76                  1468-1469   ///
      str    CPTM1_77                  1470-1471   ///
      str    CPTM1_78                  1472-1473   ///
      str    CPTM1_79                  1474-1475   ///
      str    CPTM1_80                  1476-1477   ///
      str    CPTM1_81                  1478-1479   ///
      str    CPTM1_82                  1480-1481   ///
      str    CPTM1_83                  1482-1483   ///
      str    CPTM1_84                  1484-1485   ///
      str    CPTM1_85                  1486-1487   ///
      str    CPTM1_86                  1488-1489   ///
      str    CPTM1_87                  1490-1491   ///
      str    CPTM1_88                  1492-1493   ///
      str    CPTM1_89                  1494-1495   ///
      str    CPTM1_90                  1496-1497   ///
      str    CPTM1_91                  1498-1499   ///
      str    CPTM1_92                  1500-1501   ///
      str    CPTM1_93                  1502-1503   ///
      str    CPTM1_94                  1504-1505   ///
      str    CPTM1_95                  1506-1507   ///
      str    CPTM1_96                  1508-1509   ///
      str    CPTM1_97                  1510-1511   ///
      str    CPTM1_98                  1512-1513   ///
      str    CPTM1_99                  1514-1515   ///
      str    CPTM1_100                 1516-1517   ///
      str    CPTM1_101                 1518-1519   ///
      str    CPTM1_102                 1520-1521   ///
      str    CPTM1_103                 1522-1523   ///
      str    CPTM1_104                 1524-1525   ///
      str    CPTM1_105                 1526-1527   ///
      str    CPTM1_106                 1528-1529   ///
      str    CPTM1_107                 1530-1531   ///
      str    CPTM1_108                 1532-1533   ///
      str    CPTM1_109                 1534-1535   ///
      str    CPTM1_110                 1536-1537   ///
      str    CPTM1_111                 1538-1539   ///
      str    CPTM1_112                 1540-1541   ///
      str    CPTM1_113                 1542-1543   ///
      str    CPTM1_114                 1544-1545   ///
      str    CPTM1_115                 1546-1547   ///
      str    CPTM1_116                 1548-1549   ///
      str    CPTM1_117                 1550-1551   ///
      str    CPTM1_118                 1552-1553   ///
      str    CPTM2_1                   1554-1555   ///
      str    CPTM2_2                   1556-1557   ///
      str    CPTM2_3                   1558-1559   ///
      str    CPTM2_4                   1560-1561   ///
      str    CPTM2_5                   1562-1563   ///
      str    CPTM2_6                   1564-1565   ///
      str    CPTM2_7                   1566-1567   ///
      str    CPTM2_8                   1568-1569   ///
      str    CPTM2_9                   1570-1571   ///
      str    CPTM2_10                  1572-1573   ///
      str    CPTM2_11                  1574-1575   ///
      str    CPTM2_12                  1576-1577   ///
      str    CPTM2_13                  1578-1579   ///
      str    CPTM2_14                  1580-1581   ///
      str    CPTM2_15                  1582-1583   ///
      str    CPTM2_16                  1584-1585   ///
      str    CPTM2_17                  1586-1587   ///
      str    CPTM2_18                  1588-1589   ///
      str    CPTM2_19                  1590-1591   ///
      str    CPTM2_20                  1592-1593   ///
      str    CPTM2_21                  1594-1595   ///
      str    CPTM2_22                  1596-1597   ///
      str    CPTM2_23                  1598-1599   ///
      str    CPTM2_24                  1600-1601   ///
      str    CPTM2_25                  1602-1603   ///
      str    CPTM2_26                  1604-1605   ///
      str    CPTM2_27                  1606-1607   ///
      str    CPTM2_28                  1608-1609   ///
      str    CPTM2_29                  1610-1611   ///
      str    CPTM2_30                  1612-1613   ///
      str    CPTM2_31                  1614-1615   ///
      str    CPTM2_32                  1616-1617   ///
      str    CPTM2_33                  1618-1619   ///
      str    CPTM2_34                  1620-1621   ///
      str    CPTM2_35                  1622-1623   ///
      str    CPTM2_36                  1624-1625   ///
      str    CPTM2_37                  1626-1627   ///
      str    CPTM2_38                  1628-1629   ///
      str    CPTM2_39                  1630-1631   ///
      str    CPTM2_40                  1632-1633   ///
      str    CPTM2_41                  1634-1635   ///
      str    CPTM2_42                  1636-1637   ///
      str    CPTM2_43                  1638-1639   ///
      str    CPTM2_44                  1640-1641   ///
      str    CPTM2_45                  1642-1643   ///
      str    CPTM2_46                  1644-1645   ///
      str    CPTM2_47                  1646-1647   ///
      str    CPTM2_48                  1648-1649   ///
      str    CPTM2_49                  1650-1651   ///
      str    CPTM2_50                  1652-1653   ///
      str    CPTM2_51                  1654-1655   ///
      str    CPTM2_52                  1656-1657   ///
      str    CPTM2_53                  1658-1659   ///
      str    CPTM2_54                  1660-1661   ///
      str    CPTM2_55                  1662-1663   ///
      str    CPTM2_56                  1664-1665   ///
      str    CPTM2_57                  1666-1667   ///
      str    CPTM2_58                  1668-1669   ///
      str    CPTM2_59                  1670-1671   ///
      str    CPTM2_60                  1672-1673   ///
      str    CPTM2_61                  1674-1675   ///
      str    CPTM2_62                  1676-1677   ///
      str    CPTM2_63                  1678-1679   ///
      str    CPTM2_64                  1680-1681   ///
      str    CPTM2_65                  1682-1683   ///
      str    CPTM2_66                  1684-1685   ///
      str    CPTM2_67                  1686-1687   ///
      str    CPTM2_68                  1688-1689   ///
      str    CPTM2_69                  1690-1691   ///
      str    CPTM2_70                  1692-1693   ///
      str    CPTM2_71                  1694-1695   ///
      str    CPTM2_72                  1696-1697   ///
      str    CPTM2_73                  1698-1699   ///
      str    CPTM2_74                  1700-1701   ///
      str    CPTM2_75                  1702-1703   ///
      str    CPTM2_76                  1704-1705   ///
      str    CPTM2_77                  1706-1707   ///
      str    CPTM2_78                  1708-1709   ///
      str    CPTM2_79                  1710-1711   ///
      str    CPTM2_80                  1712-1713   ///
      str    CPTM2_81                  1714-1715   ///
      str    CPTM2_82                  1716-1717   ///
      str    CPTM2_83                  1718-1719   ///
      str    CPTM2_84                  1720-1721   ///
      str    CPTM2_85                  1722-1723   ///
      str    CPTM2_86                  1724-1725   ///
      str    CPTM2_87                  1726-1727   ///
      str    CPTM2_88                  1728-1729   ///
      str    CPTM2_89                  1730-1731   ///
      str    CPTM2_90                  1732-1733   ///
      str    CPTM2_91                  1734-1735   ///
      str    CPTM2_92                  1736-1737   ///
      str    CPTM2_93                  1738-1739   ///
      str    CPTM2_94                  1740-1741   ///
      str    CPTM2_95                  1742-1743   ///
      str    CPTM2_96                  1744-1745   ///
      str    CPTM2_97                  1746-1747   ///
      str    CPTM2_98                  1748-1749   ///
      str    CPTM2_99                  1750-1751   ///
      str    CPTM2_100                 1752-1753   ///
      str    CPTM2_101                 1754-1755   ///
      str    CPTM2_102                 1756-1757   ///
      str    CPTM2_103                 1758-1759   ///
      str    CPTM2_104                 1760-1761   ///
      str    CPTM2_105                 1762-1763   ///
      str    CPTM2_106                 1764-1765   ///
      str    CPTM2_107                 1766-1767   ///
      str    CPTM2_108                 1768-1769   ///
      str    CPTM2_109                 1770-1771   ///
      str    CPTM2_110                 1772-1773   ///
      str    CPTM2_111                 1774-1775   ///
      str    CPTM2_112                 1776-1777   ///
      str    CPTM2_113                 1778-1779   ///
      str    CPTM2_114                 1780-1781   ///
      str    CPTM2_115                 1782-1783   ///
      str    CPTM2_116                 1784-1785   ///
      str    CPTM2_117                 1786-1787   ///
      str    CPTM2_118                 1788-1789   ///
      byte   DIED                      1790-1791   ///
      byte   DISPUB04                  1792-1793   ///
      byte   DISPUNIFORM               1794-1795   ///
      str    DISP_X                    1796-1797   ///
      byte   DMONTH                    1798-1799   ///
      byte   DQTR                      1800-1801   ///
      str    DSHOSPID                  1802-1818   ///
      long   DaysToEvent               1819-1824   ///
      byte   FEMALE                    1825-1826   ///
      byte   HCUP_ED                   1827-1828   ///
      byte   HCUP_OS                   1829-1830   ///
      byte   HISPANIC                  1831-1832   ///
      str    HISPANIC_X                1833        ///
      str    HOSPST                    1834-1835   ///
      str    HOSP_NPI                  1836-1845   ///
      byte   Homeless                  1846-1847   ///
      str    I10_DX1                   1848-1854   ///
      str    I10_DX2                   1855-1861   ///
      str    I10_DX3                   1862-1868   ///
      str    I10_DX4                   1869-1875   ///
      str    I10_DX5                   1876-1882   ///
      str    I10_DX6                   1883-1889   ///
      str    I10_DX7                   1890-1896   ///
      str    I10_DX8                   1897-1903   ///
      str    I10_DX9                   1904-1910   ///
      str    I10_DX10                  1911-1917   ///
      str    I10_DX11                  1918-1924   ///
      str    I10_DX12                  1925-1931   ///
      str    I10_DX13                  1932-1938   ///
      str    I10_DX14                  1939-1945   ///
      str    I10_DX15                  1946-1952   ///
      str    I10_DX16                  1953-1959   ///
      str    I10_DX17                  1960-1966   ///
      str    I10_DX18                  1967-1973   ///
      str    I10_DX19                  1974-1980   ///
      str    I10_DX20                  1981-1987   ///
      str    I10_DX21                  1988-1994   ///
      str    I10_DX22                  1995-2001   ///
      str    I10_DX23                  2002-2008   ///
      str    I10_DX24                  2009-2015   ///
      str    I10_DX25                  2016-2022   ///
      str    I10_DX26                  2023-2029   ///
      str    I10_DX27                  2030-2036   ///
      str    I10_DX28                  2037-2043   ///
      str    I10_DX29                  2044-2050   ///
      str    I10_DX30                  2051-2057   ///
      str    I10_DX31                  2058-2064   ///
      str    I10_DX32                  2065-2071   ///
      str    I10_DX_Visit_Reason1      2072-2078   ///
      str    I10_DX_Visit_Reason2      2079-2085   ///
      str    I10_DX_Visit_Reason3      2086-2092   ///
      int    I10_NDX                   2093-2095   ///
      int    I10_PROCTYPE              2096-2098   ///
      double KEY                       2099-2113   ///
      long   LOS                       2114-2118   ///
      long   LOS_X                     2119-2124   ///
      str    MDSPEC1                   2125-2127   ///
      str    MDSPEC2                   2128-2130   ///
      byte   MEDINCSTQ                 2131-2132   ///
      long   MRN_R                     2133-2141   ///
      int    NCPT                      2142-2145   ///
      str    OPservice                 2146        ///
      double OS_TIME                   2147-2157   ///
      byte   PAY1                      2158-2159   ///
      str    PAY1_X                    2160-2164   ///
      byte   PAY2                      2165-2166   ///
      str    PAY2_X                    2167-2171   ///
      int    PL_CBSA                   2172-2174   ///
      byte   PL_NCHS                   2175-2176   ///
      byte   PL_RUCC                   2177-2178   ///
      byte   PL_UIC                    2179-2180   ///
      byte   PL_UR_CAT4                2181-2182   ///
      str    PSTATE                    2183-2184   ///
      str    PSTATE_GEO                2185-2186   ///
      long   PSTCO                     2187-2191   ///
      long   PSTCO_GEO                 2192-2196   ///
      str    PointOfOriginUB04         2197        ///
      str    PointOfOrigin_X           2198        ///
      byte   RACE                      2199-2200   ///
      str    RACE_X                    2201-2202   ///
      byte   STATE_AS                  2203-2204   ///
      byte   STATE_ED                  2205-2206   ///
      byte   STATE_OS                  2207-2208   ///
      double TOTCHG                    2209-2218   ///
      double TOTCHG_X                  2219-2233   ///
      long   VisitLink                 2234-2242   ///
      int    YEAR                      2243-2246   ///
      str    ZIP                       2247-2251   ///
      str    ZIP3                      2252-2254   ///
      int    ZIPINC_QRTL               2255-2257   ///
      int    AYEAR                     2258-2261   ///
      byte   BMONTH                    2262-2263   ///
      int    BYEAR                     2264-2267   ///
      using  "WI_SEDD_2019_CORE.ASC"

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
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DSHOSPID                 "Data source hospital identifier"
label var DaysToEvent              "Days from 'start date' to admission"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPST                   "Hospital state postal code"
label var HOSP_NPI                 "Hospital NPI"
label var Homeless                 "Indicator that patient is homeless"
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
label var I10_DX_Visit_Reason1     "ICD-10-CM Reason for visit diagnosis 1"
label var I10_DX_Visit_Reason2     "ICD-10-CM Reason for visit diagnosis 2"
label var I10_DX_Visit_Reason3     "ICD-10-CM Reason for visit diagnosis 3"
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
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
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

save "WI_SEDD_2019_CORE.dta", replace
