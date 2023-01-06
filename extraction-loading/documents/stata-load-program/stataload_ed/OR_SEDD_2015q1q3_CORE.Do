/*****************************************************************************
* Creation Date: 07/18/2019   
* OR_SEDD_2015q1q3_CORE.Do
* This program will load the 2015 OR ASCII CORE File into Stata.
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
      int    CPTCCS1                    520- 522   ///
      int    CPTCCS2                    523- 525   ///
      int    CPTCCS3                    526- 528   ///
      int    CPTCCS4                    529- 531   ///
      int    CPTCCS5                    532- 534   ///
      int    CPTCCS6                    535- 537   ///
      int    CPTCCS7                    538- 540   ///
      int    CPTCCS8                    541- 543   ///
      int    CPTCCS9                    544- 546   ///
      int    CPTCCS10                   547- 549   ///
      int    CPTCCS11                   550- 552   ///
      int    CPTCCS12                   553- 555   ///
      int    CPTCCS13                   556- 558   ///
      int    CPTCCS14                   559- 561   ///
      int    CPTCCS15                   562- 564   ///
      int    CPTCCS16                   565- 567   ///
      int    CPTCCS17                   568- 570   ///
      int    CPTCCS18                   571- 573   ///
      int    CPTCCS19                   574- 576   ///
      int    CPTCCS20                   577- 579   ///
      int    CPTCCS21                   580- 582   ///
      int    CPTCCS22                   583- 585   ///
      int    CPTCCS23                   586- 588   ///
      int    CPTCCS24                   589- 591   ///
      int    CPTCCS25                   592- 594   ///
      int    CPTCCS26                   595- 597   ///
      int    CPTCCS27                   598- 600   ///
      int    CPTCCS28                   601- 603   ///
      int    CPTCCS29                   604- 606   ///
      int    CPTCCS30                   607- 609   ///
      int    CPTCCS31                   610- 612   ///
      int    CPTCCS32                   613- 615   ///
      int    CPTCCS33                   616- 618   ///
      int    CPTCCS34                   619- 621   ///
      int    CPTCCS35                   622- 624   ///
      int    CPTCCS36                   625- 627   ///
      int    CPTCCS37                   628- 630   ///
      int    CPTCCS38                   631- 633   ///
      int    CPTCCS39                   634- 636   ///
      int    CPTCCS40                   637- 639   ///
      int    CPTCCS41                   640- 642   ///
      int    CPTCCS42                   643- 645   ///
      int    CPTCCS43                   646- 648   ///
      int    CPTCCS44                   649- 651   ///
      int    CPTCCS45                   652- 654   ///
      int    CPTCCS46                   655- 657   ///
      int    CPTCCS47                   658- 660   ///
      int    CPTCCS48                   661- 663   ///
      int    CPTCCS49                   664- 666   ///
      int    CPTCCS50                   667- 669   ///
      int    CPTCCS51                   670- 672   ///
      int    CPTCCS52                   673- 675   ///
      int    CPTCCS53                   676- 678   ///
      int    CPTCCS54                   679- 681   ///
      int    CPTCCS55                   682- 684   ///
      int    CPTCCS56                   685- 687   ///
      int    CPTCCS57                   688- 690   ///
      int    CPTCCS58                   691- 693   ///
      int    CPTCCS59                   694- 696   ///
      int    CPTCCS60                   697- 699   ///
      int    CPTCCS61                   700- 702   ///
      int    CPTCCS62                   703- 705   ///
      int    CPTCCS63                   706- 708   ///
      int    CPTCCS64                   709- 711   ///
      int    CPTCCS65                   712- 714   ///
      int    CPTCCS66                   715- 717   ///
      int    CPTCCS67                   718- 720   ///
      int    CPTCCS68                   721- 723   ///
      int    CPTCCS69                   724- 726   ///
      int    CPTCCS70                   727- 729   ///
      int    CPTCCS71                   730- 732   ///
      int    CPTCCS72                   733- 735   ///
      int    CPTCCS73                   736- 738   ///
      int    CPTCCS74                   739- 741   ///
      int    CPTCCS75                   742- 744   ///
      int    CPTCCS76                   745- 747   ///
      int    CPTCCS77                   748- 750   ///
      int    CPTCCS78                   751- 753   ///
      int    CPTCCS79                   754- 756   ///
      int    CPTCCS80                   757- 759   ///
      int    CPTCCS81                   760- 762   ///
      int    CPTCCS82                   763- 765   ///
      int    CPTCCS83                   766- 768   ///
      int    CPTCCS84                   769- 771   ///
      int    CPTCCS85                   772- 774   ///
      int    CPTCCS86                   775- 777   ///
      int    CPTCCS87                   778- 780   ///
      int    CPTCCS88                   781- 783   ///
      int    CPTCCS89                   784- 786   ///
      int    CPTCCS90                   787- 789   ///
      int    CPTCCS91                   790- 792   ///
      int    CPTCCS92                   793- 795   ///
      int    CPTCCS93                   796- 798   ///
      int    CPTCCS94                   799- 801   ///
      int    CPTCCS95                   802- 804   ///
      int    CPTCCS96                   805- 807   ///
      int    CPTCCS97                   808- 810   ///
      int    CPTCCS98                   811- 813   ///
      int    CPTCCS99                   814- 816   ///
      int    CPTCCS100                  817- 819   ///
      int    CPTDAY1                    820- 822   ///
      int    CPTDAY2                    823- 825   ///
      int    CPTDAY3                    826- 828   ///
      int    CPTDAY4                    829- 831   ///
      int    CPTDAY5                    832- 834   ///
      int    CPTDAY6                    835- 837   ///
      int    CPTDAY7                    838- 840   ///
      int    CPTDAY8                    841- 843   ///
      int    CPTDAY9                    844- 846   ///
      int    CPTDAY10                   847- 849   ///
      int    CPTDAY11                   850- 852   ///
      int    CPTDAY12                   853- 855   ///
      int    CPTDAY13                   856- 858   ///
      int    CPTDAY14                   859- 861   ///
      int    CPTDAY15                   862- 864   ///
      int    CPTDAY16                   865- 867   ///
      int    CPTDAY17                   868- 870   ///
      int    CPTDAY18                   871- 873   ///
      int    CPTDAY19                   874- 876   ///
      int    CPTDAY20                   877- 879   ///
      int    CPTDAY21                   880- 882   ///
      int    CPTDAY22                   883- 885   ///
      int    CPTDAY23                   886- 888   ///
      int    CPTDAY24                   889- 891   ///
      int    CPTDAY25                   892- 894   ///
      int    CPTDAY26                   895- 897   ///
      int    CPTDAY27                   898- 900   ///
      int    CPTDAY28                   901- 903   ///
      int    CPTDAY29                   904- 906   ///
      int    CPTDAY30                   907- 909   ///
      int    CPTDAY31                   910- 912   ///
      int    CPTDAY32                   913- 915   ///
      int    CPTDAY33                   916- 918   ///
      int    CPTDAY34                   919- 921   ///
      int    CPTDAY35                   922- 924   ///
      int    CPTDAY36                   925- 927   ///
      int    CPTDAY37                   928- 930   ///
      int    CPTDAY38                   931- 933   ///
      int    CPTDAY39                   934- 936   ///
      int    CPTDAY40                   937- 939   ///
      int    CPTDAY41                   940- 942   ///
      int    CPTDAY42                   943- 945   ///
      int    CPTDAY43                   946- 948   ///
      int    CPTDAY44                   949- 951   ///
      int    CPTDAY45                   952- 954   ///
      int    CPTDAY46                   955- 957   ///
      int    CPTDAY47                   958- 960   ///
      int    CPTDAY48                   961- 963   ///
      int    CPTDAY49                   964- 966   ///
      int    CPTDAY50                   967- 969   ///
      int    CPTDAY51                   970- 972   ///
      int    CPTDAY52                   973- 975   ///
      int    CPTDAY53                   976- 978   ///
      int    CPTDAY54                   979- 981   ///
      int    CPTDAY55                   982- 984   ///
      int    CPTDAY56                   985- 987   ///
      int    CPTDAY57                   988- 990   ///
      int    CPTDAY58                   991- 993   ///
      int    CPTDAY59                   994- 996   ///
      int    CPTDAY60                   997- 999   ///
      int    CPTDAY61                  1000-1002   ///
      int    CPTDAY62                  1003-1005   ///
      int    CPTDAY63                  1006-1008   ///
      int    CPTDAY64                  1009-1011   ///
      int    CPTDAY65                  1012-1014   ///
      int    CPTDAY66                  1015-1017   ///
      int    CPTDAY67                  1018-1020   ///
      int    CPTDAY68                  1021-1023   ///
      int    CPTDAY69                  1024-1026   ///
      int    CPTDAY70                  1027-1029   ///
      int    CPTDAY71                  1030-1032   ///
      int    CPTDAY72                  1033-1035   ///
      int    CPTDAY73                  1036-1038   ///
      int    CPTDAY74                  1039-1041   ///
      int    CPTDAY75                  1042-1044   ///
      int    CPTDAY76                  1045-1047   ///
      int    CPTDAY77                  1048-1050   ///
      int    CPTDAY78                  1051-1053   ///
      int    CPTDAY79                  1054-1056   ///
      int    CPTDAY80                  1057-1059   ///
      int    CPTDAY81                  1060-1062   ///
      int    CPTDAY82                  1063-1065   ///
      int    CPTDAY83                  1066-1068   ///
      int    CPTDAY84                  1069-1071   ///
      int    CPTDAY85                  1072-1074   ///
      int    CPTDAY86                  1075-1077   ///
      int    CPTDAY87                  1078-1080   ///
      int    CPTDAY88                  1081-1083   ///
      int    CPTDAY89                  1084-1086   ///
      int    CPTDAY90                  1087-1089   ///
      int    CPTDAY91                  1090-1092   ///
      int    CPTDAY92                  1093-1095   ///
      int    CPTDAY93                  1096-1098   ///
      int    CPTDAY94                  1099-1101   ///
      int    CPTDAY95                  1102-1104   ///
      int    CPTDAY96                  1105-1107   ///
      int    CPTDAY97                  1108-1110   ///
      int    CPTDAY98                  1111-1113   ///
      int    CPTDAY99                  1114-1116   ///
      int    CPTDAY100                 1117-1119   ///
      str    CPTM1_1                   1120-1121   ///
      str    CPTM1_2                   1122-1123   ///
      str    CPTM1_3                   1124-1125   ///
      str    CPTM1_4                   1126-1127   ///
      str    CPTM1_5                   1128-1129   ///
      str    CPTM1_6                   1130-1131   ///
      str    CPTM1_7                   1132-1133   ///
      str    CPTM1_8                   1134-1135   ///
      str    CPTM1_9                   1136-1137   ///
      str    CPTM1_10                  1138-1139   ///
      str    CPTM1_11                  1140-1141   ///
      str    CPTM1_12                  1142-1143   ///
      str    CPTM1_13                  1144-1145   ///
      str    CPTM1_14                  1146-1147   ///
      str    CPTM1_15                  1148-1149   ///
      str    CPTM1_16                  1150-1151   ///
      str    CPTM1_17                  1152-1153   ///
      str    CPTM1_18                  1154-1155   ///
      str    CPTM1_19                  1156-1157   ///
      str    CPTM1_20                  1158-1159   ///
      str    CPTM1_21                  1160-1161   ///
      str    CPTM1_22                  1162-1163   ///
      str    CPTM1_23                  1164-1165   ///
      str    CPTM1_24                  1166-1167   ///
      str    CPTM1_25                  1168-1169   ///
      str    CPTM1_26                  1170-1171   ///
      str    CPTM1_27                  1172-1173   ///
      str    CPTM1_28                  1174-1175   ///
      str    CPTM1_29                  1176-1177   ///
      str    CPTM1_30                  1178-1179   ///
      str    CPTM1_31                  1180-1181   ///
      str    CPTM1_32                  1182-1183   ///
      str    CPTM1_33                  1184-1185   ///
      str    CPTM1_34                  1186-1187   ///
      str    CPTM1_35                  1188-1189   ///
      str    CPTM1_36                  1190-1191   ///
      str    CPTM1_37                  1192-1193   ///
      str    CPTM1_38                  1194-1195   ///
      str    CPTM1_39                  1196-1197   ///
      str    CPTM1_40                  1198-1199   ///
      str    CPTM1_41                  1200-1201   ///
      str    CPTM1_42                  1202-1203   ///
      str    CPTM1_43                  1204-1205   ///
      str    CPTM1_44                  1206-1207   ///
      str    CPTM1_45                  1208-1209   ///
      str    CPTM1_46                  1210-1211   ///
      str    CPTM1_47                  1212-1213   ///
      str    CPTM1_48                  1214-1215   ///
      str    CPTM1_49                  1216-1217   ///
      str    CPTM1_50                  1218-1219   ///
      str    CPTM1_51                  1220-1221   ///
      str    CPTM1_52                  1222-1223   ///
      str    CPTM1_53                  1224-1225   ///
      str    CPTM1_54                  1226-1227   ///
      str    CPTM1_55                  1228-1229   ///
      str    CPTM1_56                  1230-1231   ///
      str    CPTM1_57                  1232-1233   ///
      str    CPTM1_58                  1234-1235   ///
      str    CPTM1_59                  1236-1237   ///
      str    CPTM1_60                  1238-1239   ///
      str    CPTM1_61                  1240-1241   ///
      str    CPTM1_62                  1242-1243   ///
      str    CPTM1_63                  1244-1245   ///
      str    CPTM1_64                  1246-1247   ///
      str    CPTM1_65                  1248-1249   ///
      str    CPTM1_66                  1250-1251   ///
      str    CPTM1_67                  1252-1253   ///
      str    CPTM1_68                  1254-1255   ///
      str    CPTM1_69                  1256-1257   ///
      str    CPTM1_70                  1258-1259   ///
      str    CPTM1_71                  1260-1261   ///
      str    CPTM1_72                  1262-1263   ///
      str    CPTM1_73                  1264-1265   ///
      str    CPTM1_74                  1266-1267   ///
      str    CPTM1_75                  1268-1269   ///
      str    CPTM1_76                  1270-1271   ///
      str    CPTM1_77                  1272-1273   ///
      str    CPTM1_78                  1274-1275   ///
      str    CPTM1_79                  1276-1277   ///
      str    CPTM1_80                  1278-1279   ///
      str    CPTM1_81                  1280-1281   ///
      str    CPTM1_82                  1282-1283   ///
      str    CPTM1_83                  1284-1285   ///
      str    CPTM1_84                  1286-1287   ///
      str    CPTM1_85                  1288-1289   ///
      str    CPTM1_86                  1290-1291   ///
      str    CPTM1_87                  1292-1293   ///
      str    CPTM1_88                  1294-1295   ///
      str    CPTM1_89                  1296-1297   ///
      str    CPTM1_90                  1298-1299   ///
      str    CPTM1_91                  1300-1301   ///
      str    CPTM1_92                  1302-1303   ///
      str    CPTM1_93                  1304-1305   ///
      str    CPTM1_94                  1306-1307   ///
      str    CPTM1_95                  1308-1309   ///
      str    CPTM1_96                  1310-1311   ///
      str    CPTM1_97                  1312-1313   ///
      str    CPTM1_98                  1314-1315   ///
      str    CPTM1_99                  1316-1317   ///
      str    CPTM1_100                 1318-1319   ///
      str    CPTM2_1                   1320-1321   ///
      str    CPTM2_2                   1322-1323   ///
      str    CPTM2_3                   1324-1325   ///
      str    CPTM2_4                   1326-1327   ///
      str    CPTM2_5                   1328-1329   ///
      str    CPTM2_6                   1330-1331   ///
      str    CPTM2_7                   1332-1333   ///
      str    CPTM2_8                   1334-1335   ///
      str    CPTM2_9                   1336-1337   ///
      str    CPTM2_10                  1338-1339   ///
      str    CPTM2_11                  1340-1341   ///
      str    CPTM2_12                  1342-1343   ///
      str    CPTM2_13                  1344-1345   ///
      str    CPTM2_14                  1346-1347   ///
      str    CPTM2_15                  1348-1349   ///
      str    CPTM2_16                  1350-1351   ///
      str    CPTM2_17                  1352-1353   ///
      str    CPTM2_18                  1354-1355   ///
      str    CPTM2_19                  1356-1357   ///
      str    CPTM2_20                  1358-1359   ///
      str    CPTM2_21                  1360-1361   ///
      str    CPTM2_22                  1362-1363   ///
      str    CPTM2_23                  1364-1365   ///
      str    CPTM2_24                  1366-1367   ///
      str    CPTM2_25                  1368-1369   ///
      str    CPTM2_26                  1370-1371   ///
      str    CPTM2_27                  1372-1373   ///
      str    CPTM2_28                  1374-1375   ///
      str    CPTM2_29                  1376-1377   ///
      str    CPTM2_30                  1378-1379   ///
      str    CPTM2_31                  1380-1381   ///
      str    CPTM2_32                  1382-1383   ///
      str    CPTM2_33                  1384-1385   ///
      str    CPTM2_34                  1386-1387   ///
      str    CPTM2_35                  1388-1389   ///
      str    CPTM2_36                  1390-1391   ///
      str    CPTM2_37                  1392-1393   ///
      str    CPTM2_38                  1394-1395   ///
      str    CPTM2_39                  1396-1397   ///
      str    CPTM2_40                  1398-1399   ///
      str    CPTM2_41                  1400-1401   ///
      str    CPTM2_42                  1402-1403   ///
      str    CPTM2_43                  1404-1405   ///
      str    CPTM2_44                  1406-1407   ///
      str    CPTM2_45                  1408-1409   ///
      str    CPTM2_46                  1410-1411   ///
      str    CPTM2_47                  1412-1413   ///
      str    CPTM2_48                  1414-1415   ///
      str    CPTM2_49                  1416-1417   ///
      str    CPTM2_50                  1418-1419   ///
      str    CPTM2_51                  1420-1421   ///
      str    CPTM2_52                  1422-1423   ///
      str    CPTM2_53                  1424-1425   ///
      str    CPTM2_54                  1426-1427   ///
      str    CPTM2_55                  1428-1429   ///
      str    CPTM2_56                  1430-1431   ///
      str    CPTM2_57                  1432-1433   ///
      str    CPTM2_58                  1434-1435   ///
      str    CPTM2_59                  1436-1437   ///
      str    CPTM2_60                  1438-1439   ///
      str    CPTM2_61                  1440-1441   ///
      str    CPTM2_62                  1442-1443   ///
      str    CPTM2_63                  1444-1445   ///
      str    CPTM2_64                  1446-1447   ///
      str    CPTM2_65                  1448-1449   ///
      str    CPTM2_66                  1450-1451   ///
      str    CPTM2_67                  1452-1453   ///
      str    CPTM2_68                  1454-1455   ///
      str    CPTM2_69                  1456-1457   ///
      str    CPTM2_70                  1458-1459   ///
      str    CPTM2_71                  1460-1461   ///
      str    CPTM2_72                  1462-1463   ///
      str    CPTM2_73                  1464-1465   ///
      str    CPTM2_74                  1466-1467   ///
      str    CPTM2_75                  1468-1469   ///
      str    CPTM2_76                  1470-1471   ///
      str    CPTM2_77                  1472-1473   ///
      str    CPTM2_78                  1474-1475   ///
      str    CPTM2_79                  1476-1477   ///
      str    CPTM2_80                  1478-1479   ///
      str    CPTM2_81                  1480-1481   ///
      str    CPTM2_82                  1482-1483   ///
      str    CPTM2_83                  1484-1485   ///
      str    CPTM2_84                  1486-1487   ///
      str    CPTM2_85                  1488-1489   ///
      str    CPTM2_86                  1490-1491   ///
      str    CPTM2_87                  1492-1493   ///
      str    CPTM2_88                  1494-1495   ///
      str    CPTM2_89                  1496-1497   ///
      str    CPTM2_90                  1498-1499   ///
      str    CPTM2_91                  1500-1501   ///
      str    CPTM2_92                  1502-1503   ///
      str    CPTM2_93                  1504-1505   ///
      str    CPTM2_94                  1506-1507   ///
      str    CPTM2_95                  1508-1509   ///
      str    CPTM2_96                  1510-1511   ///
      str    CPTM2_97                  1512-1513   ///
      str    CPTM2_98                  1514-1515   ///
      str    CPTM2_99                  1516-1517   ///
      str    CPTM2_100                 1518-1519   ///
      int    DHOUR                     1520-1523   ///
      byte   DIED                      1524-1525   ///
      str    DISP_X                    1526-1527   ///
      byte   DISPUB04                  1528-1529   ///
      byte   DISPUNIFORM               1530-1531   ///
      byte   DMONTH                    1532-1533   ///
      byte   DQTR                      1534-1535   ///
      str    DSHOSPID                  1536-1552   ///
      long   DURATION                  1553-1558   ///
      str    DX_Visit_Reason1          1559-1565   ///
      str    DX_Visit_Reason2          1566-1572   ///
      str    DX_Visit_Reason3          1573-1579   ///
      str    DX1                       1580-1586   ///
      str    DX2                       1587-1593   ///
      str    DX3                       1594-1600   ///
      str    DX4                       1601-1607   ///
      str    DX5                       1608-1614   ///
      str    DX6                       1615-1621   ///
      str    DX7                       1622-1628   ///
      str    DX8                       1629-1635   ///
      str    DX9                       1636-1642   ///
      str    DX10                      1643-1649   ///
      str    DX11                      1650-1656   ///
      str    DX12                      1657-1663   ///
      str    DX13                      1664-1670   ///
      str    DX14                      1671-1677   ///
      str    DX15                      1678-1684   ///
      str    DX16                      1685-1691   ///
      str    DX17                      1692-1698   ///
      str    DX18                      1699-1705   ///
      str    DX19                      1706-1712   ///
      str    DX20                      1713-1719   ///
      str    DX21                      1720-1726   ///
      str    DX22                      1727-1733   ///
      str    DX23                      1734-1740   ///
      str    DX24                      1741-1747   ///
      str    DX25                      1748-1754   ///
      int    DXCCS1                    1755-1758   ///
      int    DXCCS2                    1759-1762   ///
      int    DXCCS3                    1763-1766   ///
      int    DXCCS4                    1767-1770   ///
      int    DXCCS5                    1771-1774   ///
      int    DXCCS6                    1775-1778   ///
      int    DXCCS7                    1779-1782   ///
      int    DXCCS8                    1783-1786   ///
      int    DXCCS9                    1787-1790   ///
      int    DXCCS10                   1791-1794   ///
      int    DXCCS11                   1795-1798   ///
      int    DXCCS12                   1799-1802   ///
      int    DXCCS13                   1803-1806   ///
      int    DXCCS14                   1807-1810   ///
      int    DXCCS15                   1811-1814   ///
      int    DXCCS16                   1815-1818   ///
      int    DXCCS17                   1819-1822   ///
      int    DXCCS18                   1823-1826   ///
      int    DXCCS19                   1827-1830   ///
      int    DXCCS20                   1831-1834   ///
      int    DXCCS21                   1835-1838   ///
      int    DXCCS22                   1839-1842   ///
      int    DXCCS23                   1843-1846   ///
      int    DXCCS24                   1847-1850   ///
      int    DXCCS25                   1851-1854   ///
      int    DXVER                     1855-1857   ///
      int    E_CCS1                    1858-1861   ///
      int    E_CCS2                    1862-1865   ///
      int    E_CCS3                    1866-1869   ///
      int    E_CCS4                    1870-1873   ///
      int    E_CCS5                    1874-1877   ///
      int    E_CCS6                    1878-1881   ///
      int    E_CCS7                    1882-1885   ///
      int    E_CCS8                    1886-1889   ///
      str    ECODE1                    1890-1896   ///
      str    ECODE2                    1897-1903   ///
      str    ECODE3                    1904-1910   ///
      str    ECODE4                    1911-1917   ///
      str    ECODE5                    1918-1924   ///
      str    ECODE6                    1925-1931   ///
      str    ECODE7                    1932-1938   ///
      str    ECODE8                    1939-1945   ///
      byte   FEMALE                    1946-1947   ///
      byte   HCUP_ED                   1948-1949   ///
      byte   HCUP_OS                   1950-1951   ///
      byte   HISPANIC                  1952-1953   ///
      str    HISPANIC_X                1954-1955   ///
      int    HOSPBRTH                  1956-1958   ///
      str    HOSPST                    1959-1960   ///
      double KEY                       1961-1975   ///
      long   LOS                       1976-1980   ///
      long   LOS_X                     1981-1986   ///
      byte   MEDINCSTQ                 1987-1988   ///
      int    NCHRONIC                  1989-1991   ///
      int    NCPT                      1992-1995   ///
      int    NDX                       1996-1998   ///
      byte   NECODE                    1999-2000   ///
      byte   NEOMAT                    2001-2002   ///
      str    OPservice                 2003        ///
      double OS_TIME                   2004-2014   ///
      byte   PAY1                      2015-2016   ///
      str    PAY1_X                    2017-2025   ///
      byte   PAY2                      2026-2027   ///
      str    PAY2_X                    2028-2036   ///
      byte   PAY3                      2037-2038   ///
      str    PAY3_X                    2039-2047   ///
      int    PL_CBSA                   2048-2050   ///
      byte   PL_NCHS                   2051-2052   ///
      byte   PL_RUCC                   2053-2054   ///
      byte   PL_UIC                    2055-2056   ///
      byte   PL_UR_CAT4                2057-2058   ///
      str    PointOfOrigin_X           2059-2060   ///
      str    PointOfOriginUB04         2061        ///
      int    PROCTYPE                  2062-2064   ///
      str    PSTATE                    2065-2066   ///
      long   PSTCO                     2067-2071   ///
      long   PSTCO2                    2072-2076   ///
      byte   RACE                      2077-2078   ///
      str    RACE_X                    2079-2080   ///
      byte   STATE_AS                  2081-2082   ///
      byte   STATE_ED                  2083-2084   ///
      byte   STATE_OS                  2085-2086   ///
      double TOTCHG                    2087-2096   ///
      double TOTCHG_X                  2097-2111   ///
      int    YEAR                      2112-2115   ///
      str    ZIP                       2116-2120   ///
      str    ZIP3                      2121-2123   ///
      int    ZIPINC_QRTL               2124-2126   ///
      int    AYEAR                     2127-2130   ///
      byte   BMONTH                    2131-2132   ///
      int    BYEAR                     2133-2136   ///
      using  "OR_SEDD_2015q1q3_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
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
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DSHOSPID                 "Data source hospital identifier"
label var DURATION                 "Elapsed time for hospital care in hours and minutes"
label var DX_Visit_Reason1         "Reason for visit diagnosis 1"
label var DX_Visit_Reason2         "Reason for visit diagnosis 2"
label var DX_Visit_Reason3         "Reason for visit diagnosis 3"
label var DX1                      "Diagnosis 1"
label var DX2                      "Diagnosis 2"
label var DX3                      "Diagnosis 3"
label var DX4                      "Diagnosis 4"
label var DX5                      "Diagnosis 5"
label var DX6                      "Diagnosis 6"
label var DX7                      "Diagnosis 7"
label var DX8                      "Diagnosis 8"
label var DX9                      "Diagnosis 9"
label var DX10                     "Diagnosis 10"
label var DX11                     "Diagnosis 11"
label var DX12                     "Diagnosis 12"
label var DX13                     "Diagnosis 13"
label var DX14                     "Diagnosis 14"
label var DX15                     "Diagnosis 15"
label var DX16                     "Diagnosis 16"
label var DX17                     "Diagnosis 17"
label var DX18                     "Diagnosis 18"
label var DX19                     "Diagnosis 19"
label var DX20                     "Diagnosis 20"
label var DX21                     "Diagnosis 21"
label var DX22                     "Diagnosis 22"
label var DX23                     "Diagnosis 23"
label var DX24                     "Diagnosis 24"
label var DX25                     "Diagnosis 25"
label var DXCCS1                   "CCS: diagnosis 1"
label var DXCCS2                   "CCS: diagnosis 2"
label var DXCCS3                   "CCS: diagnosis 3"
label var DXCCS4                   "CCS: diagnosis 4"
label var DXCCS5                   "CCS: diagnosis 5"
label var DXCCS6                   "CCS: diagnosis 6"
label var DXCCS7                   "CCS: diagnosis 7"
label var DXCCS8                   "CCS: diagnosis 8"
label var DXCCS9                   "CCS: diagnosis 9"
label var DXCCS10                  "CCS: diagnosis 10"
label var DXCCS11                  "CCS: diagnosis 11"
label var DXCCS12                  "CCS: diagnosis 12"
label var DXCCS13                  "CCS: diagnosis 13"
label var DXCCS14                  "CCS: diagnosis 14"
label var DXCCS15                  "CCS: diagnosis 15"
label var DXCCS16                  "CCS: diagnosis 16"
label var DXCCS17                  "CCS: diagnosis 17"
label var DXCCS18                  "CCS: diagnosis 18"
label var DXCCS19                  "CCS: diagnosis 19"
label var DXCCS20                  "CCS: diagnosis 20"
label var DXCCS21                  "CCS: diagnosis 21"
label var DXCCS22                  "CCS: diagnosis 22"
label var DXCCS23                  "CCS: diagnosis 23"
label var DXCCS24                  "CCS: diagnosis 24"
label var DXCCS25                  "CCS: diagnosis 25"
label var DXVER                    "Diagnosis Version"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_CCS7                   "CCS: E Code 7"
label var E_CCS8                   "CCS: E Code 8"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var ECODE8                   "E code 8"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCHRONIC                 "Number of chronic conditions"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
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
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes(RUCC)"
label var PL_UIC                   "Patient location: Urban Influence Codes"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PROCTYPE                 "Procedure type indicator"
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
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DURATION                  (-99999 -88888 -66666=.)
recode DXCCS1                    (-999 -888 -666=.)
recode DXCCS2                    (-999 -888 -666=.)
recode DXCCS3                    (-999 -888 -666=.)
recode DXCCS4                    (-999 -888 -666=.)
recode DXCCS5                    (-999 -888 -666=.)
recode DXCCS6                    (-999 -888 -666=.)
recode DXCCS7                    (-999 -888 -666=.)
recode DXCCS8                    (-999 -888 -666=.)
recode DXCCS9                    (-999 -888 -666=.)
recode DXCCS10                   (-999 -888 -666=.)
recode DXCCS11                   (-999 -888 -666=.)
recode DXCCS12                   (-999 -888 -666=.)
recode DXCCS13                   (-999 -888 -666=.)
recode DXCCS14                   (-999 -888 -666=.)
recode DXCCS15                   (-999 -888 -666=.)
recode DXCCS16                   (-999 -888 -666=.)
recode DXCCS17                   (-999 -888 -666=.)
recode DXCCS18                   (-999 -888 -666=.)
recode DXCCS19                   (-999 -888 -666=.)
recode DXCCS20                   (-999 -888 -666=.)
recode DXCCS21                   (-999 -888 -666=.)
recode DXCCS22                   (-999 -888 -666=.)
recode DXCCS23                   (-999 -888 -666=.)
recode DXCCS24                   (-999 -888 -666=.)
recode DXCCS25                   (-999 -888 -666=.)
recode DXVER                     (-99 -88 -66=.)
recode E_CCS1                    (-999 -888 -666=.)
recode E_CCS2                    (-999 -888 -666=.)
recode E_CCS3                    (-999 -888 -666=.)
recode E_CCS4                    (-999 -888 -666=.)
recode E_CCS5                    (-999 -888 -666=.)
recode E_CCS6                    (-999 -888 -666=.)
recode E_CCS7                    (-999 -888 -666=.)
recode E_CCS8                    (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NCPT                      (-999 -888 -666=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
recode PAY3                      (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
recode PL_RUCC                   (-9 -8 -6 -5=.)
recode PL_UIC                    (-9 -8 -6 -5=.)
recode PL_UR_CAT4                (-9 -8 -6 -5=.)
recode PROCTYPE                  (-99 -88 -66=.)
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

save "OR_SEDD_2015q1q3_CORE.dta", replace
