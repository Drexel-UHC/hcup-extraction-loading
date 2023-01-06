/*****************************************************************************
* Creation Date: 07/09/2021   
* SD_SEDD_2017_CORE.Do
* This program will load the 2017 SD ASCII CORE File into Stata.
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
      int    CPTCCS1                    516- 518   ///
      int    CPTCCS2                    519- 521   ///
      int    CPTCCS3                    522- 524   ///
      int    CPTCCS4                    525- 527   ///
      int    CPTCCS5                    528- 530   ///
      int    CPTCCS6                    531- 533   ///
      int    CPTCCS7                    534- 536   ///
      int    CPTCCS8                    537- 539   ///
      int    CPTCCS9                    540- 542   ///
      int    CPTCCS10                   543- 545   ///
      int    CPTCCS11                   546- 548   ///
      int    CPTCCS12                   549- 551   ///
      int    CPTCCS13                   552- 554   ///
      int    CPTCCS14                   555- 557   ///
      int    CPTCCS15                   558- 560   ///
      int    CPTCCS16                   561- 563   ///
      int    CPTCCS17                   564- 566   ///
      int    CPTCCS18                   567- 569   ///
      int    CPTCCS19                   570- 572   ///
      int    CPTCCS20                   573- 575   ///
      int    CPTCCS21                   576- 578   ///
      int    CPTCCS22                   579- 581   ///
      int    CPTCCS23                   582- 584   ///
      int    CPTCCS24                   585- 587   ///
      int    CPTCCS25                   588- 590   ///
      int    CPTCCS26                   591- 593   ///
      int    CPTCCS27                   594- 596   ///
      int    CPTCCS28                   597- 599   ///
      int    CPTCCS29                   600- 602   ///
      int    CPTCCS30                   603- 605   ///
      int    CPTCCS31                   606- 608   ///
      int    CPTCCS32                   609- 611   ///
      int    CPTCCS33                   612- 614   ///
      int    CPTCCS34                   615- 617   ///
      int    CPTCCS35                   618- 620   ///
      int    CPTCCS36                   621- 623   ///
      int    CPTCCS37                   624- 626   ///
      int    CPTCCS38                   627- 629   ///
      int    CPTCCS39                   630- 632   ///
      int    CPTCCS40                   633- 635   ///
      int    CPTCCS41                   636- 638   ///
      int    CPTCCS42                   639- 641   ///
      int    CPTCCS43                   642- 644   ///
      int    CPTCCS44                   645- 647   ///
      int    CPTCCS45                   648- 650   ///
      int    CPTCCS46                   651- 653   ///
      int    CPTCCS47                   654- 656   ///
      int    CPTCCS48                   657- 659   ///
      int    CPTCCS49                   660- 662   ///
      int    CPTCCS50                   663- 665   ///
      int    CPTCCS51                   666- 668   ///
      int    CPTCCS52                   669- 671   ///
      int    CPTCCS53                   672- 674   ///
      int    CPTCCS54                   675- 677   ///
      int    CPTCCS55                   678- 680   ///
      int    CPTCCS56                   681- 683   ///
      int    CPTCCS57                   684- 686   ///
      int    CPTCCS58                   687- 689   ///
      int    CPTCCS59                   690- 692   ///
      int    CPTCCS60                   693- 695   ///
      int    CPTCCS61                   696- 698   ///
      int    CPTCCS62                   699- 701   ///
      int    CPTCCS63                   702- 704   ///
      int    CPTCCS64                   705- 707   ///
      int    CPTCCS65                   708- 710   ///
      int    CPTCCS66                   711- 713   ///
      int    CPTCCS67                   714- 716   ///
      int    CPTCCS68                   717- 719   ///
      int    CPTCCS69                   720- 722   ///
      int    CPTCCS70                   723- 725   ///
      int    CPTCCS71                   726- 728   ///
      int    CPTCCS72                   729- 731   ///
      int    CPTCCS73                   732- 734   ///
      int    CPTCCS74                   735- 737   ///
      int    CPTCCS75                   738- 740   ///
      int    CPTCCS76                   741- 743   ///
      int    CPTCCS77                   744- 746   ///
      int    CPTCCS78                   747- 749   ///
      int    CPTCCS79                   750- 752   ///
      int    CPTCCS80                   753- 755   ///
      int    CPTCCS81                   756- 758   ///
      int    CPTCCS82                   759- 761   ///
      int    CPTCCS83                   762- 764   ///
      int    CPTCCS84                   765- 767   ///
      int    CPTCCS85                   768- 770   ///
      int    CPTCCS86                   771- 773   ///
      int    CPTCCS87                   774- 776   ///
      int    CPTCCS88                   777- 779   ///
      int    CPTCCS89                   780- 782   ///
      int    CPTCCS90                   783- 785   ///
      int    CPTCCS91                   786- 788   ///
      int    CPTCCS92                   789- 791   ///
      int    CPTCCS93                   792- 794   ///
      int    CPTCCS94                   795- 797   ///
      int    CPTCCS95                   798- 800   ///
      int    CPTCCS96                   801- 803   ///
      int    CPTCCS97                   804- 806   ///
      int    CPTCCS98                   807- 809   ///
      int    CPTCCS99                   810- 812   ///
      int    CPTCCS100                  813- 815   ///
      int    CPTDAY1                    816- 818   ///
      int    CPTDAY2                    819- 821   ///
      int    CPTDAY3                    822- 824   ///
      int    CPTDAY4                    825- 827   ///
      int    CPTDAY5                    828- 830   ///
      int    CPTDAY6                    831- 833   ///
      int    CPTDAY7                    834- 836   ///
      int    CPTDAY8                    837- 839   ///
      int    CPTDAY9                    840- 842   ///
      int    CPTDAY10                   843- 845   ///
      int    CPTDAY11                   846- 848   ///
      int    CPTDAY12                   849- 851   ///
      int    CPTDAY13                   852- 854   ///
      int    CPTDAY14                   855- 857   ///
      int    CPTDAY15                   858- 860   ///
      int    CPTDAY16                   861- 863   ///
      int    CPTDAY17                   864- 866   ///
      int    CPTDAY18                   867- 869   ///
      int    CPTDAY19                   870- 872   ///
      int    CPTDAY20                   873- 875   ///
      int    CPTDAY21                   876- 878   ///
      int    CPTDAY22                   879- 881   ///
      int    CPTDAY23                   882- 884   ///
      int    CPTDAY24                   885- 887   ///
      int    CPTDAY25                   888- 890   ///
      int    CPTDAY26                   891- 893   ///
      int    CPTDAY27                   894- 896   ///
      int    CPTDAY28                   897- 899   ///
      int    CPTDAY29                   900- 902   ///
      int    CPTDAY30                   903- 905   ///
      int    CPTDAY31                   906- 908   ///
      int    CPTDAY32                   909- 911   ///
      int    CPTDAY33                   912- 914   ///
      int    CPTDAY34                   915- 917   ///
      int    CPTDAY35                   918- 920   ///
      int    CPTDAY36                   921- 923   ///
      int    CPTDAY37                   924- 926   ///
      int    CPTDAY38                   927- 929   ///
      int    CPTDAY39                   930- 932   ///
      int    CPTDAY40                   933- 935   ///
      int    CPTDAY41                   936- 938   ///
      int    CPTDAY42                   939- 941   ///
      int    CPTDAY43                   942- 944   ///
      int    CPTDAY44                   945- 947   ///
      int    CPTDAY45                   948- 950   ///
      int    CPTDAY46                   951- 953   ///
      int    CPTDAY47                   954- 956   ///
      int    CPTDAY48                   957- 959   ///
      int    CPTDAY49                   960- 962   ///
      int    CPTDAY50                   963- 965   ///
      int    CPTDAY51                   966- 968   ///
      int    CPTDAY52                   969- 971   ///
      int    CPTDAY53                   972- 974   ///
      int    CPTDAY54                   975- 977   ///
      int    CPTDAY55                   978- 980   ///
      int    CPTDAY56                   981- 983   ///
      int    CPTDAY57                   984- 986   ///
      int    CPTDAY58                   987- 989   ///
      int    CPTDAY59                   990- 992   ///
      int    CPTDAY60                   993- 995   ///
      int    CPTDAY61                   996- 998   ///
      int    CPTDAY62                   999-1001   ///
      int    CPTDAY63                  1002-1004   ///
      int    CPTDAY64                  1005-1007   ///
      int    CPTDAY65                  1008-1010   ///
      int    CPTDAY66                  1011-1013   ///
      int    CPTDAY67                  1014-1016   ///
      int    CPTDAY68                  1017-1019   ///
      int    CPTDAY69                  1020-1022   ///
      int    CPTDAY70                  1023-1025   ///
      int    CPTDAY71                  1026-1028   ///
      int    CPTDAY72                  1029-1031   ///
      int    CPTDAY73                  1032-1034   ///
      int    CPTDAY74                  1035-1037   ///
      int    CPTDAY75                  1038-1040   ///
      int    CPTDAY76                  1041-1043   ///
      int    CPTDAY77                  1044-1046   ///
      int    CPTDAY78                  1047-1049   ///
      int    CPTDAY79                  1050-1052   ///
      int    CPTDAY80                  1053-1055   ///
      int    CPTDAY81                  1056-1058   ///
      int    CPTDAY82                  1059-1061   ///
      int    CPTDAY83                  1062-1064   ///
      int    CPTDAY84                  1065-1067   ///
      int    CPTDAY85                  1068-1070   ///
      int    CPTDAY86                  1071-1073   ///
      int    CPTDAY87                  1074-1076   ///
      int    CPTDAY88                  1077-1079   ///
      int    CPTDAY89                  1080-1082   ///
      int    CPTDAY90                  1083-1085   ///
      int    CPTDAY91                  1086-1088   ///
      int    CPTDAY92                  1089-1091   ///
      int    CPTDAY93                  1092-1094   ///
      int    CPTDAY94                  1095-1097   ///
      int    CPTDAY95                  1098-1100   ///
      int    CPTDAY96                  1101-1103   ///
      int    CPTDAY97                  1104-1106   ///
      int    CPTDAY98                  1107-1109   ///
      int    CPTDAY99                  1110-1112   ///
      int    CPTDAY100                 1113-1115   ///
      str    CPTM1_1                   1116-1117   ///
      str    CPTM1_2                   1118-1119   ///
      str    CPTM1_3                   1120-1121   ///
      str    CPTM1_4                   1122-1123   ///
      str    CPTM1_5                   1124-1125   ///
      str    CPTM1_6                   1126-1127   ///
      str    CPTM1_7                   1128-1129   ///
      str    CPTM1_8                   1130-1131   ///
      str    CPTM1_9                   1132-1133   ///
      str    CPTM1_10                  1134-1135   ///
      str    CPTM1_11                  1136-1137   ///
      str    CPTM1_12                  1138-1139   ///
      str    CPTM1_13                  1140-1141   ///
      str    CPTM1_14                  1142-1143   ///
      str    CPTM1_15                  1144-1145   ///
      str    CPTM1_16                  1146-1147   ///
      str    CPTM1_17                  1148-1149   ///
      str    CPTM1_18                  1150-1151   ///
      str    CPTM1_19                  1152-1153   ///
      str    CPTM1_20                  1154-1155   ///
      str    CPTM1_21                  1156-1157   ///
      str    CPTM1_22                  1158-1159   ///
      str    CPTM1_23                  1160-1161   ///
      str    CPTM1_24                  1162-1163   ///
      str    CPTM1_25                  1164-1165   ///
      str    CPTM1_26                  1166-1167   ///
      str    CPTM1_27                  1168-1169   ///
      str    CPTM1_28                  1170-1171   ///
      str    CPTM1_29                  1172-1173   ///
      str    CPTM1_30                  1174-1175   ///
      str    CPTM1_31                  1176-1177   ///
      str    CPTM1_32                  1178-1179   ///
      str    CPTM1_33                  1180-1181   ///
      str    CPTM1_34                  1182-1183   ///
      str    CPTM1_35                  1184-1185   ///
      str    CPTM1_36                  1186-1187   ///
      str    CPTM1_37                  1188-1189   ///
      str    CPTM1_38                  1190-1191   ///
      str    CPTM1_39                  1192-1193   ///
      str    CPTM1_40                  1194-1195   ///
      str    CPTM1_41                  1196-1197   ///
      str    CPTM1_42                  1198-1199   ///
      str    CPTM1_43                  1200-1201   ///
      str    CPTM1_44                  1202-1203   ///
      str    CPTM1_45                  1204-1205   ///
      str    CPTM1_46                  1206-1207   ///
      str    CPTM1_47                  1208-1209   ///
      str    CPTM1_48                  1210-1211   ///
      str    CPTM1_49                  1212-1213   ///
      str    CPTM1_50                  1214-1215   ///
      str    CPTM1_51                  1216-1217   ///
      str    CPTM1_52                  1218-1219   ///
      str    CPTM1_53                  1220-1221   ///
      str    CPTM1_54                  1222-1223   ///
      str    CPTM1_55                  1224-1225   ///
      str    CPTM1_56                  1226-1227   ///
      str    CPTM1_57                  1228-1229   ///
      str    CPTM1_58                  1230-1231   ///
      str    CPTM1_59                  1232-1233   ///
      str    CPTM1_60                  1234-1235   ///
      str    CPTM1_61                  1236-1237   ///
      str    CPTM1_62                  1238-1239   ///
      str    CPTM1_63                  1240-1241   ///
      str    CPTM1_64                  1242-1243   ///
      str    CPTM1_65                  1244-1245   ///
      str    CPTM1_66                  1246-1247   ///
      str    CPTM1_67                  1248-1249   ///
      str    CPTM1_68                  1250-1251   ///
      str    CPTM1_69                  1252-1253   ///
      str    CPTM1_70                  1254-1255   ///
      str    CPTM1_71                  1256-1257   ///
      str    CPTM1_72                  1258-1259   ///
      str    CPTM1_73                  1260-1261   ///
      str    CPTM1_74                  1262-1263   ///
      str    CPTM1_75                  1264-1265   ///
      str    CPTM1_76                  1266-1267   ///
      str    CPTM1_77                  1268-1269   ///
      str    CPTM1_78                  1270-1271   ///
      str    CPTM1_79                  1272-1273   ///
      str    CPTM1_80                  1274-1275   ///
      str    CPTM1_81                  1276-1277   ///
      str    CPTM1_82                  1278-1279   ///
      str    CPTM1_83                  1280-1281   ///
      str    CPTM1_84                  1282-1283   ///
      str    CPTM1_85                  1284-1285   ///
      str    CPTM1_86                  1286-1287   ///
      str    CPTM1_87                  1288-1289   ///
      str    CPTM1_88                  1290-1291   ///
      str    CPTM1_89                  1292-1293   ///
      str    CPTM1_90                  1294-1295   ///
      str    CPTM1_91                  1296-1297   ///
      str    CPTM1_92                  1298-1299   ///
      str    CPTM1_93                  1300-1301   ///
      str    CPTM1_94                  1302-1303   ///
      str    CPTM1_95                  1304-1305   ///
      str    CPTM1_96                  1306-1307   ///
      str    CPTM1_97                  1308-1309   ///
      str    CPTM1_98                  1310-1311   ///
      str    CPTM1_99                  1312-1313   ///
      str    CPTM1_100                 1314-1315   ///
      str    CPTM2_1                   1316-1317   ///
      str    CPTM2_2                   1318-1319   ///
      str    CPTM2_3                   1320-1321   ///
      str    CPTM2_4                   1322-1323   ///
      str    CPTM2_5                   1324-1325   ///
      str    CPTM2_6                   1326-1327   ///
      str    CPTM2_7                   1328-1329   ///
      str    CPTM2_8                   1330-1331   ///
      str    CPTM2_9                   1332-1333   ///
      str    CPTM2_10                  1334-1335   ///
      str    CPTM2_11                  1336-1337   ///
      str    CPTM2_12                  1338-1339   ///
      str    CPTM2_13                  1340-1341   ///
      str    CPTM2_14                  1342-1343   ///
      str    CPTM2_15                  1344-1345   ///
      str    CPTM2_16                  1346-1347   ///
      str    CPTM2_17                  1348-1349   ///
      str    CPTM2_18                  1350-1351   ///
      str    CPTM2_19                  1352-1353   ///
      str    CPTM2_20                  1354-1355   ///
      str    CPTM2_21                  1356-1357   ///
      str    CPTM2_22                  1358-1359   ///
      str    CPTM2_23                  1360-1361   ///
      str    CPTM2_24                  1362-1363   ///
      str    CPTM2_25                  1364-1365   ///
      str    CPTM2_26                  1366-1367   ///
      str    CPTM2_27                  1368-1369   ///
      str    CPTM2_28                  1370-1371   ///
      str    CPTM2_29                  1372-1373   ///
      str    CPTM2_30                  1374-1375   ///
      str    CPTM2_31                  1376-1377   ///
      str    CPTM2_32                  1378-1379   ///
      str    CPTM2_33                  1380-1381   ///
      str    CPTM2_34                  1382-1383   ///
      str    CPTM2_35                  1384-1385   ///
      str    CPTM2_36                  1386-1387   ///
      str    CPTM2_37                  1388-1389   ///
      str    CPTM2_38                  1390-1391   ///
      str    CPTM2_39                  1392-1393   ///
      str    CPTM2_40                  1394-1395   ///
      str    CPTM2_41                  1396-1397   ///
      str    CPTM2_42                  1398-1399   ///
      str    CPTM2_43                  1400-1401   ///
      str    CPTM2_44                  1402-1403   ///
      str    CPTM2_45                  1404-1405   ///
      str    CPTM2_46                  1406-1407   ///
      str    CPTM2_47                  1408-1409   ///
      str    CPTM2_48                  1410-1411   ///
      str    CPTM2_49                  1412-1413   ///
      str    CPTM2_50                  1414-1415   ///
      str    CPTM2_51                  1416-1417   ///
      str    CPTM2_52                  1418-1419   ///
      str    CPTM2_53                  1420-1421   ///
      str    CPTM2_54                  1422-1423   ///
      str    CPTM2_55                  1424-1425   ///
      str    CPTM2_56                  1426-1427   ///
      str    CPTM2_57                  1428-1429   ///
      str    CPTM2_58                  1430-1431   ///
      str    CPTM2_59                  1432-1433   ///
      str    CPTM2_60                  1434-1435   ///
      str    CPTM2_61                  1436-1437   ///
      str    CPTM2_62                  1438-1439   ///
      str    CPTM2_63                  1440-1441   ///
      str    CPTM2_64                  1442-1443   ///
      str    CPTM2_65                  1444-1445   ///
      str    CPTM2_66                  1446-1447   ///
      str    CPTM2_67                  1448-1449   ///
      str    CPTM2_68                  1450-1451   ///
      str    CPTM2_69                  1452-1453   ///
      str    CPTM2_70                  1454-1455   ///
      str    CPTM2_71                  1456-1457   ///
      str    CPTM2_72                  1458-1459   ///
      str    CPTM2_73                  1460-1461   ///
      str    CPTM2_74                  1462-1463   ///
      str    CPTM2_75                  1464-1465   ///
      str    CPTM2_76                  1466-1467   ///
      str    CPTM2_77                  1468-1469   ///
      str    CPTM2_78                  1470-1471   ///
      str    CPTM2_79                  1472-1473   ///
      str    CPTM2_80                  1474-1475   ///
      str    CPTM2_81                  1476-1477   ///
      str    CPTM2_82                  1478-1479   ///
      str    CPTM2_83                  1480-1481   ///
      str    CPTM2_84                  1482-1483   ///
      str    CPTM2_85                  1484-1485   ///
      str    CPTM2_86                  1486-1487   ///
      str    CPTM2_87                  1488-1489   ///
      str    CPTM2_88                  1490-1491   ///
      str    CPTM2_89                  1492-1493   ///
      str    CPTM2_90                  1494-1495   ///
      str    CPTM2_91                  1496-1497   ///
      str    CPTM2_92                  1498-1499   ///
      str    CPTM2_93                  1500-1501   ///
      str    CPTM2_94                  1502-1503   ///
      str    CPTM2_95                  1504-1505   ///
      str    CPTM2_96                  1506-1507   ///
      str    CPTM2_97                  1508-1509   ///
      str    CPTM2_98                  1510-1511   ///
      str    CPTM2_99                  1512-1513   ///
      str    CPTM2_100                 1514-1515   ///
      byte   DIED                      1516-1517   ///
      str    DISP_X                    1518-1519   ///
      byte   DISPUB04                  1520-1521   ///
      byte   DISPUNIFORM               1522-1523   ///
      byte   DMONTH                    1524-1525   ///
      byte   DQTR                      1526-1527   ///
      int    DXVER                     1528-1530   ///
      byte   FEMALE                    1531-1532   ///
      byte   HCUP_ED                   1533-1534   ///
      byte   HCUP_OS                   1535-1536   ///
      byte   HISPANIC                  1537-1538   ///
      str    HISPANIC_X                1539        ///
      str    HOSPST                    1540-1541   ///
      str    I10_DX_Visit_Reason1      1542-1548   ///
      str    I10_DX_Visit_Reason2      1549-1555   ///
      str    I10_DX_Visit_Reason3      1556-1562   ///
      str    I10_DX1                   1563-1569   ///
      str    I10_DX2                   1570-1576   ///
      str    I10_DX3                   1577-1583   ///
      str    I10_DX4                   1584-1590   ///
      str    I10_DX5                   1591-1597   ///
      str    I10_DX6                   1598-1604   ///
      str    I10_DX7                   1605-1611   ///
      str    I10_DX8                   1612-1618   ///
      str    I10_DX9                   1619-1625   ///
      str    I10_DX10                  1626-1632   ///
      str    I10_DX11                  1633-1639   ///
      str    I10_DX12                  1640-1646   ///
      str    I10_DX13                  1647-1653   ///
      str    I10_DX14                  1654-1660   ///
      str    I10_DX15                  1661-1667   ///
      str    I10_DX16                  1668-1674   ///
      str    I10_DX17                  1675-1681   ///
      str    I10_DX18                  1682-1688   ///
      str    I10_DX19                  1689-1695   ///
      str    I10_DX20                  1696-1702   ///
      str    I10_DX21                  1703-1709   ///
      str    I10_DX22                  1710-1716   ///
      str    I10_DX23                  1717-1723   ///
      str    I10_DX24                  1724-1730   ///
      str    I10_DX25                  1731-1737   ///
      str    I10_DX26                  1738-1744   ///
      str    I10_DX27                  1745-1751   ///
      str    I10_DX28                  1752-1758   ///
      int    I10_NDX                   1759-1761   ///
      int    I10_PROCTYPE              1762-1764   ///
      double KEY                       1765-1779   ///
      long   LOS                       1780-1784   ///
      long   LOS_X                     1785-1790   ///
      long   MDNUM1_R                  1791-1799   ///
      long   MDNUM2_R                  1800-1808   ///
      long   MDNUM3_R                  1809-1817   ///
      byte   MEDINCSTQ                 1818-1819   ///
      long   MRN_R                     1820-1828   ///
      int    NCPT                      1829-1832   ///
      str    OPservice                 1833-1837   ///
      double OS_TIME                   1838-1848   ///
      byte   PAY1                      1849-1850   ///
      int    PL_CBSA                   1851-1853   ///
      byte   PL_NCHS                   1854-1855   ///
      byte   PL_RUCC                   1856-1857   ///
      byte   PL_UIC                    1858-1859   ///
      byte   PL_UR_CAT4                1860-1861   ///
      str    PointOfOrigin_X           1862        ///
      str    PointOfOriginUB04         1863        ///
      str    PSTATE                    1864-1865   ///
      long   PSTCO                     1866-1870   ///
      long   PSTCO2                    1871-1875   ///
      byte   RACE                      1876-1877   ///
      str    RACE_X                    1878        ///
      byte   STATE_AS                  1879-1880   ///
      byte   STATE_ED                  1881-1882   ///
      byte   STATE_OS                  1883-1884   ///
      double TOTCHG                    1885-1894   ///
      double TOTCHG_X                  1895-1909   ///
      int    YEAR                      1910-1913   ///
      str    ZIP                       1914-1918   ///
      str    ZIP3                      1919-1921   ///
      int    ZIPINC_QRTL               1922-1924   ///
      long   HOSPID                    1925-1929   ///
      int    AYEAR                     1930-1933   ///
      byte   BMONTH                    1934-1935   ///
      int    BYEAR                     1936-1939   ///
      using  "SD_SEDD_2017_CORE.ASC"

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
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DXVER                    "Diagnosis Version"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
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
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes(RUCC)"
label var PL_UIC                   "Patient location: Urban Influence Codes"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
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
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var HOSPID                   "HCUP hospital identification number"
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
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DXVER                     (-99 -88 -66=.)
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
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)
recode BMONTH                    (-9 -8 -6 -5=.)
recode BYEAR                     (-999 -888 -666=.)

save "SD_SEDD_2017_CORE.dta", replace
