/*****************************************************************************
* Creation Date: 06/15/2020   
* NY_SEDD_2017_CORE.Do
* This program will load the 2017 NY ASCII CORE File into Stata.
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
      int    ANESTH                      16-  18   ///
      byte   AWEEKEND                    19-  20   ///
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
      int    CPTCCS1                    521- 523   ///
      int    CPTCCS2                    524- 526   ///
      int    CPTCCS3                    527- 529   ///
      int    CPTCCS4                    530- 532   ///
      int    CPTCCS5                    533- 535   ///
      int    CPTCCS6                    536- 538   ///
      int    CPTCCS7                    539- 541   ///
      int    CPTCCS8                    542- 544   ///
      int    CPTCCS9                    545- 547   ///
      int    CPTCCS10                   548- 550   ///
      int    CPTCCS11                   551- 553   ///
      int    CPTCCS12                   554- 556   ///
      int    CPTCCS13                   557- 559   ///
      int    CPTCCS14                   560- 562   ///
      int    CPTCCS15                   563- 565   ///
      int    CPTCCS16                   566- 568   ///
      int    CPTCCS17                   569- 571   ///
      int    CPTCCS18                   572- 574   ///
      int    CPTCCS19                   575- 577   ///
      int    CPTCCS20                   578- 580   ///
      int    CPTCCS21                   581- 583   ///
      int    CPTCCS22                   584- 586   ///
      int    CPTCCS23                   587- 589   ///
      int    CPTCCS24                   590- 592   ///
      int    CPTCCS25                   593- 595   ///
      int    CPTCCS26                   596- 598   ///
      int    CPTCCS27                   599- 601   ///
      int    CPTCCS28                   602- 604   ///
      int    CPTCCS29                   605- 607   ///
      int    CPTCCS30                   608- 610   ///
      int    CPTCCS31                   611- 613   ///
      int    CPTCCS32                   614- 616   ///
      int    CPTCCS33                   617- 619   ///
      int    CPTCCS34                   620- 622   ///
      int    CPTCCS35                   623- 625   ///
      int    CPTCCS36                   626- 628   ///
      int    CPTCCS37                   629- 631   ///
      int    CPTCCS38                   632- 634   ///
      int    CPTCCS39                   635- 637   ///
      int    CPTCCS40                   638- 640   ///
      int    CPTCCS41                   641- 643   ///
      int    CPTCCS42                   644- 646   ///
      int    CPTCCS43                   647- 649   ///
      int    CPTCCS44                   650- 652   ///
      int    CPTCCS45                   653- 655   ///
      int    CPTCCS46                   656- 658   ///
      int    CPTCCS47                   659- 661   ///
      int    CPTCCS48                   662- 664   ///
      int    CPTCCS49                   665- 667   ///
      int    CPTCCS50                   668- 670   ///
      int    CPTCCS51                   671- 673   ///
      int    CPTCCS52                   674- 676   ///
      int    CPTCCS53                   677- 679   ///
      int    CPTCCS54                   680- 682   ///
      int    CPTCCS55                   683- 685   ///
      int    CPTCCS56                   686- 688   ///
      int    CPTCCS57                   689- 691   ///
      int    CPTCCS58                   692- 694   ///
      int    CPTCCS59                   695- 697   ///
      int    CPTCCS60                   698- 700   ///
      int    CPTCCS61                   701- 703   ///
      int    CPTCCS62                   704- 706   ///
      int    CPTCCS63                   707- 709   ///
      int    CPTCCS64                   710- 712   ///
      int    CPTCCS65                   713- 715   ///
      int    CPTCCS66                   716- 718   ///
      int    CPTCCS67                   719- 721   ///
      int    CPTCCS68                   722- 724   ///
      int    CPTCCS69                   725- 727   ///
      int    CPTCCS70                   728- 730   ///
      int    CPTCCS71                   731- 733   ///
      int    CPTCCS72                   734- 736   ///
      int    CPTCCS73                   737- 739   ///
      int    CPTCCS74                   740- 742   ///
      int    CPTCCS75                   743- 745   ///
      int    CPTCCS76                   746- 748   ///
      int    CPTCCS77                   749- 751   ///
      int    CPTCCS78                   752- 754   ///
      int    CPTCCS79                   755- 757   ///
      int    CPTCCS80                   758- 760   ///
      int    CPTCCS81                   761- 763   ///
      int    CPTCCS82                   764- 766   ///
      int    CPTCCS83                   767- 769   ///
      int    CPTCCS84                   770- 772   ///
      int    CPTCCS85                   773- 775   ///
      int    CPTCCS86                   776- 778   ///
      int    CPTCCS87                   779- 781   ///
      int    CPTCCS88                   782- 784   ///
      int    CPTCCS89                   785- 787   ///
      int    CPTCCS90                   788- 790   ///
      int    CPTCCS91                   791- 793   ///
      int    CPTCCS92                   794- 796   ///
      int    CPTCCS93                   797- 799   ///
      int    CPTCCS94                   800- 802   ///
      int    CPTCCS95                   803- 805   ///
      int    CPTCCS96                   806- 808   ///
      int    CPTCCS97                   809- 811   ///
      int    CPTCCS98                   812- 814   ///
      int    CPTCCS99                   815- 817   ///
      int    CPTCCS100                  818- 820   ///
      int    CPTDAY1                    821- 823   ///
      int    CPTDAY2                    824- 826   ///
      int    CPTDAY3                    827- 829   ///
      int    CPTDAY4                    830- 832   ///
      int    CPTDAY5                    833- 835   ///
      int    CPTDAY6                    836- 838   ///
      int    CPTDAY7                    839- 841   ///
      int    CPTDAY8                    842- 844   ///
      int    CPTDAY9                    845- 847   ///
      int    CPTDAY10                   848- 850   ///
      int    CPTDAY11                   851- 853   ///
      int    CPTDAY12                   854- 856   ///
      int    CPTDAY13                   857- 859   ///
      int    CPTDAY14                   860- 862   ///
      int    CPTDAY15                   863- 865   ///
      int    CPTDAY16                   866- 868   ///
      int    CPTDAY17                   869- 871   ///
      int    CPTDAY18                   872- 874   ///
      int    CPTDAY19                   875- 877   ///
      int    CPTDAY20                   878- 880   ///
      int    CPTDAY21                   881- 883   ///
      int    CPTDAY22                   884- 886   ///
      int    CPTDAY23                   887- 889   ///
      int    CPTDAY24                   890- 892   ///
      int    CPTDAY25                   893- 895   ///
      int    CPTDAY26                   896- 898   ///
      int    CPTDAY27                   899- 901   ///
      int    CPTDAY28                   902- 904   ///
      int    CPTDAY29                   905- 907   ///
      int    CPTDAY30                   908- 910   ///
      int    CPTDAY31                   911- 913   ///
      int    CPTDAY32                   914- 916   ///
      int    CPTDAY33                   917- 919   ///
      int    CPTDAY34                   920- 922   ///
      int    CPTDAY35                   923- 925   ///
      int    CPTDAY36                   926- 928   ///
      int    CPTDAY37                   929- 931   ///
      int    CPTDAY38                   932- 934   ///
      int    CPTDAY39                   935- 937   ///
      int    CPTDAY40                   938- 940   ///
      int    CPTDAY41                   941- 943   ///
      int    CPTDAY42                   944- 946   ///
      int    CPTDAY43                   947- 949   ///
      int    CPTDAY44                   950- 952   ///
      int    CPTDAY45                   953- 955   ///
      int    CPTDAY46                   956- 958   ///
      int    CPTDAY47                   959- 961   ///
      int    CPTDAY48                   962- 964   ///
      int    CPTDAY49                   965- 967   ///
      int    CPTDAY50                   968- 970   ///
      int    CPTDAY51                   971- 973   ///
      int    CPTDAY52                   974- 976   ///
      int    CPTDAY53                   977- 979   ///
      int    CPTDAY54                   980- 982   ///
      int    CPTDAY55                   983- 985   ///
      int    CPTDAY56                   986- 988   ///
      int    CPTDAY57                   989- 991   ///
      int    CPTDAY58                   992- 994   ///
      int    CPTDAY59                   995- 997   ///
      int    CPTDAY60                   998-1000   ///
      int    CPTDAY61                  1001-1003   ///
      int    CPTDAY62                  1004-1006   ///
      int    CPTDAY63                  1007-1009   ///
      int    CPTDAY64                  1010-1012   ///
      int    CPTDAY65                  1013-1015   ///
      int    CPTDAY66                  1016-1018   ///
      int    CPTDAY67                  1019-1021   ///
      int    CPTDAY68                  1022-1024   ///
      int    CPTDAY69                  1025-1027   ///
      int    CPTDAY70                  1028-1030   ///
      int    CPTDAY71                  1031-1033   ///
      int    CPTDAY72                  1034-1036   ///
      int    CPTDAY73                  1037-1039   ///
      int    CPTDAY74                  1040-1042   ///
      int    CPTDAY75                  1043-1045   ///
      int    CPTDAY76                  1046-1048   ///
      int    CPTDAY77                  1049-1051   ///
      int    CPTDAY78                  1052-1054   ///
      int    CPTDAY79                  1055-1057   ///
      int    CPTDAY80                  1058-1060   ///
      int    CPTDAY81                  1061-1063   ///
      int    CPTDAY82                  1064-1066   ///
      int    CPTDAY83                  1067-1069   ///
      int    CPTDAY84                  1070-1072   ///
      int    CPTDAY85                  1073-1075   ///
      int    CPTDAY86                  1076-1078   ///
      int    CPTDAY87                  1079-1081   ///
      int    CPTDAY88                  1082-1084   ///
      int    CPTDAY89                  1085-1087   ///
      int    CPTDAY90                  1088-1090   ///
      int    CPTDAY91                  1091-1093   ///
      int    CPTDAY92                  1094-1096   ///
      int    CPTDAY93                  1097-1099   ///
      int    CPTDAY94                  1100-1102   ///
      int    CPTDAY95                  1103-1105   ///
      int    CPTDAY96                  1106-1108   ///
      int    CPTDAY97                  1109-1111   ///
      int    CPTDAY98                  1112-1114   ///
      int    CPTDAY99                  1115-1117   ///
      int    CPTDAY100                 1118-1120   ///
      str    CPTM1_1                   1121-1122   ///
      str    CPTM1_2                   1123-1124   ///
      str    CPTM1_3                   1125-1126   ///
      str    CPTM1_4                   1127-1128   ///
      str    CPTM1_5                   1129-1130   ///
      str    CPTM1_6                   1131-1132   ///
      str    CPTM1_7                   1133-1134   ///
      str    CPTM1_8                   1135-1136   ///
      str    CPTM1_9                   1137-1138   ///
      str    CPTM1_10                  1139-1140   ///
      str    CPTM1_11                  1141-1142   ///
      str    CPTM1_12                  1143-1144   ///
      str    CPTM1_13                  1145-1146   ///
      str    CPTM1_14                  1147-1148   ///
      str    CPTM1_15                  1149-1150   ///
      str    CPTM1_16                  1151-1152   ///
      str    CPTM1_17                  1153-1154   ///
      str    CPTM1_18                  1155-1156   ///
      str    CPTM1_19                  1157-1158   ///
      str    CPTM1_20                  1159-1160   ///
      str    CPTM1_21                  1161-1162   ///
      str    CPTM1_22                  1163-1164   ///
      str    CPTM1_23                  1165-1166   ///
      str    CPTM1_24                  1167-1168   ///
      str    CPTM1_25                  1169-1170   ///
      str    CPTM1_26                  1171-1172   ///
      str    CPTM1_27                  1173-1174   ///
      str    CPTM1_28                  1175-1176   ///
      str    CPTM1_29                  1177-1178   ///
      str    CPTM1_30                  1179-1180   ///
      str    CPTM1_31                  1181-1182   ///
      str    CPTM1_32                  1183-1184   ///
      str    CPTM1_33                  1185-1186   ///
      str    CPTM1_34                  1187-1188   ///
      str    CPTM1_35                  1189-1190   ///
      str    CPTM1_36                  1191-1192   ///
      str    CPTM1_37                  1193-1194   ///
      str    CPTM1_38                  1195-1196   ///
      str    CPTM1_39                  1197-1198   ///
      str    CPTM1_40                  1199-1200   ///
      str    CPTM1_41                  1201-1202   ///
      str    CPTM1_42                  1203-1204   ///
      str    CPTM1_43                  1205-1206   ///
      str    CPTM1_44                  1207-1208   ///
      str    CPTM1_45                  1209-1210   ///
      str    CPTM1_46                  1211-1212   ///
      str    CPTM1_47                  1213-1214   ///
      str    CPTM1_48                  1215-1216   ///
      str    CPTM1_49                  1217-1218   ///
      str    CPTM1_50                  1219-1220   ///
      str    CPTM1_51                  1221-1222   ///
      str    CPTM1_52                  1223-1224   ///
      str    CPTM1_53                  1225-1226   ///
      str    CPTM1_54                  1227-1228   ///
      str    CPTM1_55                  1229-1230   ///
      str    CPTM1_56                  1231-1232   ///
      str    CPTM1_57                  1233-1234   ///
      str    CPTM1_58                  1235-1236   ///
      str    CPTM1_59                  1237-1238   ///
      str    CPTM1_60                  1239-1240   ///
      str    CPTM1_61                  1241-1242   ///
      str    CPTM1_62                  1243-1244   ///
      str    CPTM1_63                  1245-1246   ///
      str    CPTM1_64                  1247-1248   ///
      str    CPTM1_65                  1249-1250   ///
      str    CPTM1_66                  1251-1252   ///
      str    CPTM1_67                  1253-1254   ///
      str    CPTM1_68                  1255-1256   ///
      str    CPTM1_69                  1257-1258   ///
      str    CPTM1_70                  1259-1260   ///
      str    CPTM1_71                  1261-1262   ///
      str    CPTM1_72                  1263-1264   ///
      str    CPTM1_73                  1265-1266   ///
      str    CPTM1_74                  1267-1268   ///
      str    CPTM1_75                  1269-1270   ///
      str    CPTM1_76                  1271-1272   ///
      str    CPTM1_77                  1273-1274   ///
      str    CPTM1_78                  1275-1276   ///
      str    CPTM1_79                  1277-1278   ///
      str    CPTM1_80                  1279-1280   ///
      str    CPTM1_81                  1281-1282   ///
      str    CPTM1_82                  1283-1284   ///
      str    CPTM1_83                  1285-1286   ///
      str    CPTM1_84                  1287-1288   ///
      str    CPTM1_85                  1289-1290   ///
      str    CPTM1_86                  1291-1292   ///
      str    CPTM1_87                  1293-1294   ///
      str    CPTM1_88                  1295-1296   ///
      str    CPTM1_89                  1297-1298   ///
      str    CPTM1_90                  1299-1300   ///
      str    CPTM1_91                  1301-1302   ///
      str    CPTM1_92                  1303-1304   ///
      str    CPTM1_93                  1305-1306   ///
      str    CPTM1_94                  1307-1308   ///
      str    CPTM1_95                  1309-1310   ///
      str    CPTM1_96                  1311-1312   ///
      str    CPTM1_97                  1313-1314   ///
      str    CPTM1_98                  1315-1316   ///
      str    CPTM1_99                  1317-1318   ///
      str    CPTM1_100                 1319-1320   ///
      str    CPTM2_1                   1321-1322   ///
      str    CPTM2_2                   1323-1324   ///
      str    CPTM2_3                   1325-1326   ///
      str    CPTM2_4                   1327-1328   ///
      str    CPTM2_5                   1329-1330   ///
      str    CPTM2_6                   1331-1332   ///
      str    CPTM2_7                   1333-1334   ///
      str    CPTM2_8                   1335-1336   ///
      str    CPTM2_9                   1337-1338   ///
      str    CPTM2_10                  1339-1340   ///
      str    CPTM2_11                  1341-1342   ///
      str    CPTM2_12                  1343-1344   ///
      str    CPTM2_13                  1345-1346   ///
      str    CPTM2_14                  1347-1348   ///
      str    CPTM2_15                  1349-1350   ///
      str    CPTM2_16                  1351-1352   ///
      str    CPTM2_17                  1353-1354   ///
      str    CPTM2_18                  1355-1356   ///
      str    CPTM2_19                  1357-1358   ///
      str    CPTM2_20                  1359-1360   ///
      str    CPTM2_21                  1361-1362   ///
      str    CPTM2_22                  1363-1364   ///
      str    CPTM2_23                  1365-1366   ///
      str    CPTM2_24                  1367-1368   ///
      str    CPTM2_25                  1369-1370   ///
      str    CPTM2_26                  1371-1372   ///
      str    CPTM2_27                  1373-1374   ///
      str    CPTM2_28                  1375-1376   ///
      str    CPTM2_29                  1377-1378   ///
      str    CPTM2_30                  1379-1380   ///
      str    CPTM2_31                  1381-1382   ///
      str    CPTM2_32                  1383-1384   ///
      str    CPTM2_33                  1385-1386   ///
      str    CPTM2_34                  1387-1388   ///
      str    CPTM2_35                  1389-1390   ///
      str    CPTM2_36                  1391-1392   ///
      str    CPTM2_37                  1393-1394   ///
      str    CPTM2_38                  1395-1396   ///
      str    CPTM2_39                  1397-1398   ///
      str    CPTM2_40                  1399-1400   ///
      str    CPTM2_41                  1401-1402   ///
      str    CPTM2_42                  1403-1404   ///
      str    CPTM2_43                  1405-1406   ///
      str    CPTM2_44                  1407-1408   ///
      str    CPTM2_45                  1409-1410   ///
      str    CPTM2_46                  1411-1412   ///
      str    CPTM2_47                  1413-1414   ///
      str    CPTM2_48                  1415-1416   ///
      str    CPTM2_49                  1417-1418   ///
      str    CPTM2_50                  1419-1420   ///
      str    CPTM2_51                  1421-1422   ///
      str    CPTM2_52                  1423-1424   ///
      str    CPTM2_53                  1425-1426   ///
      str    CPTM2_54                  1427-1428   ///
      str    CPTM2_55                  1429-1430   ///
      str    CPTM2_56                  1431-1432   ///
      str    CPTM2_57                  1433-1434   ///
      str    CPTM2_58                  1435-1436   ///
      str    CPTM2_59                  1437-1438   ///
      str    CPTM2_60                  1439-1440   ///
      str    CPTM2_61                  1441-1442   ///
      str    CPTM2_62                  1443-1444   ///
      str    CPTM2_63                  1445-1446   ///
      str    CPTM2_64                  1447-1448   ///
      str    CPTM2_65                  1449-1450   ///
      str    CPTM2_66                  1451-1452   ///
      str    CPTM2_67                  1453-1454   ///
      str    CPTM2_68                  1455-1456   ///
      str    CPTM2_69                  1457-1458   ///
      str    CPTM2_70                  1459-1460   ///
      str    CPTM2_71                  1461-1462   ///
      str    CPTM2_72                  1463-1464   ///
      str    CPTM2_73                  1465-1466   ///
      str    CPTM2_74                  1467-1468   ///
      str    CPTM2_75                  1469-1470   ///
      str    CPTM2_76                  1471-1472   ///
      str    CPTM2_77                  1473-1474   ///
      str    CPTM2_78                  1475-1476   ///
      str    CPTM2_79                  1477-1478   ///
      str    CPTM2_80                  1479-1480   ///
      str    CPTM2_81                  1481-1482   ///
      str    CPTM2_82                  1483-1484   ///
      str    CPTM2_83                  1485-1486   ///
      str    CPTM2_84                  1487-1488   ///
      str    CPTM2_85                  1489-1490   ///
      str    CPTM2_86                  1491-1492   ///
      str    CPTM2_87                  1493-1494   ///
      str    CPTM2_88                  1495-1496   ///
      str    CPTM2_89                  1497-1498   ///
      str    CPTM2_90                  1499-1500   ///
      str    CPTM2_91                  1501-1502   ///
      str    CPTM2_92                  1503-1504   ///
      str    CPTM2_93                  1505-1506   ///
      str    CPTM2_94                  1507-1508   ///
      str    CPTM2_95                  1509-1510   ///
      str    CPTM2_96                  1511-1512   ///
      str    CPTM2_97                  1513-1514   ///
      str    CPTM2_98                  1515-1516   ///
      str    CPTM2_99                  1517-1518   ///
      str    CPTM2_100                 1519-1520   ///
      long   DaysToEvent               1521-1526   ///
      int    DHOUR                     1527-1530   ///
      byte   DIED                      1531-1532   ///
      str    DISP_X                    1533-1534   ///
      byte   DISPUB04                  1535-1536   ///
      byte   DISPUNIFORM               1537-1538   ///
      byte   DMONTH                    1539-1540   ///
      byte   DQTR                      1541-1542   ///
      str    DSHOSPID                  1543-1559   ///
      long   DURATION                  1560-1565   ///
      int    DXVER                     1566-1568   ///
      byte   FEMALE                    1569-1570   ///
      byte   HCUP_ED                   1571-1572   ///
      byte   HCUP_OS                   1573-1574   ///
      byte   HISPANIC                  1575-1576   ///
      str    HISPANIC_X                1577-1625   ///
      byte   Homeless                  1626-1627   ///
      str    HOSP_NPI                  1628-1637   ///
      str    HOSPST                    1638-1639   ///
      str    I10_DX_Visit_Reason1      1640-1646   ///
      str    I10_DX_Visit_Reason2      1647-1653   ///
      str    I10_DX_Visit_Reason3      1654-1660   ///
      str    I10_DX1                   1661-1667   ///
      str    I10_DX2                   1668-1674   ///
      str    I10_DX3                   1675-1681   ///
      str    I10_DX4                   1682-1688   ///
      str    I10_DX5                   1689-1695   ///
      str    I10_DX6                   1696-1702   ///
      str    I10_DX7                   1703-1709   ///
      str    I10_DX8                   1710-1716   ///
      str    I10_DX9                   1717-1723   ///
      str    I10_DX10                  1724-1730   ///
      str    I10_DX11                  1731-1737   ///
      str    I10_DX12                  1738-1744   ///
      str    I10_DX13                  1745-1751   ///
      str    I10_DX14                  1752-1758   ///
      str    I10_DX15                  1759-1765   ///
      str    I10_DX16                  1766-1772   ///
      str    I10_DX17                  1773-1779   ///
      str    I10_DX18                  1780-1786   ///
      str    I10_DX19                  1787-1793   ///
      str    I10_DX20                  1794-1800   ///
      str    I10_DX21                  1801-1807   ///
      str    I10_DX22                  1808-1814   ///
      str    I10_DX23                  1815-1821   ///
      str    I10_DX24                  1822-1828   ///
      str    I10_DX25                  1829-1835   ///
      str    I10_DX26                  1836-1842   ///
      str    I10_DX27                  1843-1849   ///
      str    I10_DX28                  1850-1856   ///
      str    I10_DX29                  1857-1863   ///
      str    I10_DX30                  1864-1870   ///
      str    I10_DX31                  1871-1877   ///
      str    I10_DX32                  1878-1884   ///
      str    I10_DX33                  1885-1891   ///
      int    I10_NDX                   1892-1894   ///
      int    I10_PROCTYPE              1895-1897   ///
      double KEY                       1898-1912   ///
      long   LOS                       1913-1917   ///
      long   LOS_X                     1918-1923   ///
      long   MDNUM1_R                  1924-1932   ///
      long   MDNUM2_R                  1933-1941   ///
      byte   MEDINCSTQ                 1942-1943   ///
      int    NCPT                      1944-1947   ///
      str    OPservice                 1948        ///
      int    ORTIME                    1949-1952   ///
      double OS_TIME                   1953-1963   ///
      byte   PAY1                      1964-1965   ///
      str    PAY1_X                    1966-1970   ///
      byte   PAY2                      1971-1972   ///
      str    PAY2_X                    1973-1977   ///
      byte   PAY3                      1978-1979   ///
      str    PAY3_X                    1980-1984   ///
      int    PL_CBSA                   1985-1987   ///
      byte   PL_NCHS                   1988-1989   ///
      byte   PL_RUCC                   1990-1991   ///
      byte   PL_UIC                    1992-1993   ///
      byte   PL_UR_CAT4                1994-1995   ///
      str    PSTATE                    1996-1997   ///
      long   PSTCO                     1998-2002   ///
      long   PSTCO2                    2003-2007   ///
      byte   RACE                      2008-2009   ///
      str    RACE_X                    2010-2114   ///
      byte   STATE_AS                  2115-2116   ///
      byte   STATE_ED                  2117-2118   ///
      byte   STATE_OS                  2119-2120   ///
      double TOTCHG                    2121-2130   ///
      double TOTCHG_X                  2131-2145   ///
      long   VisitLink                 2146-2154   ///
      int    YEAR                      2155-2158   ///
      str    ZIP                       2159-2163   ///
      str    ZIP3                      2164-2166   ///
      int    ZIPINC_QRTL               2167-2169   ///
      int    AYEAR                     2170-2173   ///
      byte   BMONTH                    2174-2175   ///
      int    BYEAR                     2176-2179   ///
      using  "NY_SEDD_2017_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ANESTH                   "Method of anesthesia"
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
label var DXVER                    "Diagnosis Version"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
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
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var OPservice                "Indicator of outpatient service (as received from source)"
label var ORTIME                   "Operating room time in minutes"
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
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
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
recode ANESTH                    (-99 -88 -66=.)
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
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DURATION                  (-99999 -88888 -66666=.)
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
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
recode ORTIME                    (-999 -888 -666=.)
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
recode PSTCO2                    (-9999 -8888 -6666=.)
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

save "NY_SEDD_2017_CORE.dta", replace
