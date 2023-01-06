/*****************************************************************************
* Creation Date: 04/02/2020   
* CO_SEDD_2017_CORE.Do
* This program will load the 2017 CO ASCII CORE File into Stata.
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
      byte   AMONTH                       7-   8   ///
      byte   ATYPE                        9-  10   ///
      byte   AWEEKEND                    11-  12   ///
      str    CPT1                        13-  17   ///
      str    CPT2                        18-  22   ///
      str    CPT3                        23-  27   ///
      str    CPT4                        28-  32   ///
      str    CPT5                        33-  37   ///
      str    CPT6                        38-  42   ///
      str    CPT7                        43-  47   ///
      str    CPT8                        48-  52   ///
      str    CPT9                        53-  57   ///
      str    CPT10                       58-  62   ///
      str    CPT11                       63-  67   ///
      str    CPT12                       68-  72   ///
      str    CPT13                       73-  77   ///
      str    CPT14                       78-  82   ///
      str    CPT15                       83-  87   ///
      str    CPT16                       88-  92   ///
      str    CPT17                       93-  97   ///
      str    CPT18                       98- 102   ///
      str    CPT19                      103- 107   ///
      str    CPT20                      108- 112   ///
      str    CPT21                      113- 117   ///
      str    CPT22                      118- 122   ///
      str    CPT23                      123- 127   ///
      str    CPT24                      128- 132   ///
      str    CPT25                      133- 137   ///
      str    CPT26                      138- 142   ///
      str    CPT27                      143- 147   ///
      str    CPT28                      148- 152   ///
      str    CPT29                      153- 157   ///
      str    CPT30                      158- 162   ///
      str    CPT31                      163- 167   ///
      str    CPT32                      168- 172   ///
      str    CPT33                      173- 177   ///
      str    CPT34                      178- 182   ///
      str    CPT35                      183- 187   ///
      str    CPT36                      188- 192   ///
      str    CPT37                      193- 197   ///
      str    CPT38                      198- 202   ///
      str    CPT39                      203- 207   ///
      str    CPT40                      208- 212   ///
      str    CPT41                      213- 217   ///
      str    CPT42                      218- 222   ///
      str    CPT43                      223- 227   ///
      str    CPT44                      228- 232   ///
      str    CPT45                      233- 237   ///
      str    CPT46                      238- 242   ///
      str    CPT47                      243- 247   ///
      str    CPT48                      248- 252   ///
      str    CPT49                      253- 257   ///
      str    CPT50                      258- 262   ///
      str    CPT51                      263- 267   ///
      str    CPT52                      268- 272   ///
      str    CPT53                      273- 277   ///
      str    CPT54                      278- 282   ///
      str    CPT55                      283- 287   ///
      str    CPT56                      288- 292   ///
      str    CPT57                      293- 297   ///
      str    CPT58                      298- 302   ///
      str    CPT59                      303- 307   ///
      str    CPT60                      308- 312   ///
      str    CPT61                      313- 317   ///
      str    CPT62                      318- 322   ///
      str    CPT63                      323- 327   ///
      str    CPT64                      328- 332   ///
      str    CPT65                      333- 337   ///
      str    CPT66                      338- 342   ///
      str    CPT67                      343- 347   ///
      str    CPT68                      348- 352   ///
      str    CPT69                      353- 357   ///
      str    CPT70                      358- 362   ///
      str    CPT71                      363- 367   ///
      str    CPT72                      368- 372   ///
      str    CPT73                      373- 377   ///
      str    CPT74                      378- 382   ///
      str    CPT75                      383- 387   ///
      str    CPT76                      388- 392   ///
      str    CPT77                      393- 397   ///
      str    CPT78                      398- 402   ///
      str    CPT79                      403- 407   ///
      str    CPT80                      408- 412   ///
      str    CPT81                      413- 417   ///
      str    CPT82                      418- 422   ///
      str    CPT83                      423- 427   ///
      str    CPT84                      428- 432   ///
      str    CPT85                      433- 437   ///
      str    CPT86                      438- 442   ///
      str    CPT87                      443- 447   ///
      str    CPT88                      448- 452   ///
      str    CPT89                      453- 457   ///
      str    CPT90                      458- 462   ///
      str    CPT91                      463- 467   ///
      str    CPT92                      468- 472   ///
      str    CPT93                      473- 477   ///
      str    CPT94                      478- 482   ///
      str    CPT95                      483- 487   ///
      str    CPT96                      488- 492   ///
      str    CPT97                      493- 497   ///
      str    CPT98                      498- 502   ///
      str    CPT99                      503- 507   ///
      str    CPT100                     508- 512   ///
      int    CPTCCS1                    513- 515   ///
      int    CPTCCS2                    516- 518   ///
      int    CPTCCS3                    519- 521   ///
      int    CPTCCS4                    522- 524   ///
      int    CPTCCS5                    525- 527   ///
      int    CPTCCS6                    528- 530   ///
      int    CPTCCS7                    531- 533   ///
      int    CPTCCS8                    534- 536   ///
      int    CPTCCS9                    537- 539   ///
      int    CPTCCS10                   540- 542   ///
      int    CPTCCS11                   543- 545   ///
      int    CPTCCS12                   546- 548   ///
      int    CPTCCS13                   549- 551   ///
      int    CPTCCS14                   552- 554   ///
      int    CPTCCS15                   555- 557   ///
      int    CPTCCS16                   558- 560   ///
      int    CPTCCS17                   561- 563   ///
      int    CPTCCS18                   564- 566   ///
      int    CPTCCS19                   567- 569   ///
      int    CPTCCS20                   570- 572   ///
      int    CPTCCS21                   573- 575   ///
      int    CPTCCS22                   576- 578   ///
      int    CPTCCS23                   579- 581   ///
      int    CPTCCS24                   582- 584   ///
      int    CPTCCS25                   585- 587   ///
      int    CPTCCS26                   588- 590   ///
      int    CPTCCS27                   591- 593   ///
      int    CPTCCS28                   594- 596   ///
      int    CPTCCS29                   597- 599   ///
      int    CPTCCS30                   600- 602   ///
      int    CPTCCS31                   603- 605   ///
      int    CPTCCS32                   606- 608   ///
      int    CPTCCS33                   609- 611   ///
      int    CPTCCS34                   612- 614   ///
      int    CPTCCS35                   615- 617   ///
      int    CPTCCS36                   618- 620   ///
      int    CPTCCS37                   621- 623   ///
      int    CPTCCS38                   624- 626   ///
      int    CPTCCS39                   627- 629   ///
      int    CPTCCS40                   630- 632   ///
      int    CPTCCS41                   633- 635   ///
      int    CPTCCS42                   636- 638   ///
      int    CPTCCS43                   639- 641   ///
      int    CPTCCS44                   642- 644   ///
      int    CPTCCS45                   645- 647   ///
      int    CPTCCS46                   648- 650   ///
      int    CPTCCS47                   651- 653   ///
      int    CPTCCS48                   654- 656   ///
      int    CPTCCS49                   657- 659   ///
      int    CPTCCS50                   660- 662   ///
      int    CPTCCS51                   663- 665   ///
      int    CPTCCS52                   666- 668   ///
      int    CPTCCS53                   669- 671   ///
      int    CPTCCS54                   672- 674   ///
      int    CPTCCS55                   675- 677   ///
      int    CPTCCS56                   678- 680   ///
      int    CPTCCS57                   681- 683   ///
      int    CPTCCS58                   684- 686   ///
      int    CPTCCS59                   687- 689   ///
      int    CPTCCS60                   690- 692   ///
      int    CPTCCS61                   693- 695   ///
      int    CPTCCS62                   696- 698   ///
      int    CPTCCS63                   699- 701   ///
      int    CPTCCS64                   702- 704   ///
      int    CPTCCS65                   705- 707   ///
      int    CPTCCS66                   708- 710   ///
      int    CPTCCS67                   711- 713   ///
      int    CPTCCS68                   714- 716   ///
      int    CPTCCS69                   717- 719   ///
      int    CPTCCS70                   720- 722   ///
      int    CPTCCS71                   723- 725   ///
      int    CPTCCS72                   726- 728   ///
      int    CPTCCS73                   729- 731   ///
      int    CPTCCS74                   732- 734   ///
      int    CPTCCS75                   735- 737   ///
      int    CPTCCS76                   738- 740   ///
      int    CPTCCS77                   741- 743   ///
      int    CPTCCS78                   744- 746   ///
      int    CPTCCS79                   747- 749   ///
      int    CPTCCS80                   750- 752   ///
      int    CPTCCS81                   753- 755   ///
      int    CPTCCS82                   756- 758   ///
      int    CPTCCS83                   759- 761   ///
      int    CPTCCS84                   762- 764   ///
      int    CPTCCS85                   765- 767   ///
      int    CPTCCS86                   768- 770   ///
      int    CPTCCS87                   771- 773   ///
      int    CPTCCS88                   774- 776   ///
      int    CPTCCS89                   777- 779   ///
      int    CPTCCS90                   780- 782   ///
      int    CPTCCS91                   783- 785   ///
      int    CPTCCS92                   786- 788   ///
      int    CPTCCS93                   789- 791   ///
      int    CPTCCS94                   792- 794   ///
      int    CPTCCS95                   795- 797   ///
      int    CPTCCS96                   798- 800   ///
      int    CPTCCS97                   801- 803   ///
      int    CPTCCS98                   804- 806   ///
      int    CPTCCS99                   807- 809   ///
      int    CPTCCS100                  810- 812   ///
      int    CPTDAY1                    813- 815   ///
      int    CPTDAY2                    816- 818   ///
      int    CPTDAY3                    819- 821   ///
      int    CPTDAY4                    822- 824   ///
      int    CPTDAY5                    825- 827   ///
      int    CPTDAY6                    828- 830   ///
      int    CPTDAY7                    831- 833   ///
      int    CPTDAY8                    834- 836   ///
      int    CPTDAY9                    837- 839   ///
      int    CPTDAY10                   840- 842   ///
      int    CPTDAY11                   843- 845   ///
      int    CPTDAY12                   846- 848   ///
      int    CPTDAY13                   849- 851   ///
      int    CPTDAY14                   852- 854   ///
      int    CPTDAY15                   855- 857   ///
      int    CPTDAY16                   858- 860   ///
      int    CPTDAY17                   861- 863   ///
      int    CPTDAY18                   864- 866   ///
      int    CPTDAY19                   867- 869   ///
      int    CPTDAY20                   870- 872   ///
      int    CPTDAY21                   873- 875   ///
      int    CPTDAY22                   876- 878   ///
      int    CPTDAY23                   879- 881   ///
      int    CPTDAY24                   882- 884   ///
      int    CPTDAY25                   885- 887   ///
      int    CPTDAY26                   888- 890   ///
      int    CPTDAY27                   891- 893   ///
      int    CPTDAY28                   894- 896   ///
      int    CPTDAY29                   897- 899   ///
      int    CPTDAY30                   900- 902   ///
      int    CPTDAY31                   903- 905   ///
      int    CPTDAY32                   906- 908   ///
      int    CPTDAY33                   909- 911   ///
      int    CPTDAY34                   912- 914   ///
      int    CPTDAY35                   915- 917   ///
      int    CPTDAY36                   918- 920   ///
      int    CPTDAY37                   921- 923   ///
      int    CPTDAY38                   924- 926   ///
      int    CPTDAY39                   927- 929   ///
      int    CPTDAY40                   930- 932   ///
      int    CPTDAY41                   933- 935   ///
      int    CPTDAY42                   936- 938   ///
      int    CPTDAY43                   939- 941   ///
      int    CPTDAY44                   942- 944   ///
      int    CPTDAY45                   945- 947   ///
      int    CPTDAY46                   948- 950   ///
      int    CPTDAY47                   951- 953   ///
      int    CPTDAY48                   954- 956   ///
      int    CPTDAY49                   957- 959   ///
      int    CPTDAY50                   960- 962   ///
      int    CPTDAY51                   963- 965   ///
      int    CPTDAY52                   966- 968   ///
      int    CPTDAY53                   969- 971   ///
      int    CPTDAY54                   972- 974   ///
      int    CPTDAY55                   975- 977   ///
      int    CPTDAY56                   978- 980   ///
      int    CPTDAY57                   981- 983   ///
      int    CPTDAY58                   984- 986   ///
      int    CPTDAY59                   987- 989   ///
      int    CPTDAY60                   990- 992   ///
      int    CPTDAY61                   993- 995   ///
      int    CPTDAY62                   996- 998   ///
      int    CPTDAY63                   999-1001   ///
      int    CPTDAY64                  1002-1004   ///
      int    CPTDAY65                  1005-1007   ///
      int    CPTDAY66                  1008-1010   ///
      int    CPTDAY67                  1011-1013   ///
      int    CPTDAY68                  1014-1016   ///
      int    CPTDAY69                  1017-1019   ///
      int    CPTDAY70                  1020-1022   ///
      int    CPTDAY71                  1023-1025   ///
      int    CPTDAY72                  1026-1028   ///
      int    CPTDAY73                  1029-1031   ///
      int    CPTDAY74                  1032-1034   ///
      int    CPTDAY75                  1035-1037   ///
      int    CPTDAY76                  1038-1040   ///
      int    CPTDAY77                  1041-1043   ///
      int    CPTDAY78                  1044-1046   ///
      int    CPTDAY79                  1047-1049   ///
      int    CPTDAY80                  1050-1052   ///
      int    CPTDAY81                  1053-1055   ///
      int    CPTDAY82                  1056-1058   ///
      int    CPTDAY83                  1059-1061   ///
      int    CPTDAY84                  1062-1064   ///
      int    CPTDAY85                  1065-1067   ///
      int    CPTDAY86                  1068-1070   ///
      int    CPTDAY87                  1071-1073   ///
      int    CPTDAY88                  1074-1076   ///
      int    CPTDAY89                  1077-1079   ///
      int    CPTDAY90                  1080-1082   ///
      int    CPTDAY91                  1083-1085   ///
      int    CPTDAY92                  1086-1088   ///
      int    CPTDAY93                  1089-1091   ///
      int    CPTDAY94                  1092-1094   ///
      int    CPTDAY95                  1095-1097   ///
      int    CPTDAY96                  1098-1100   ///
      int    CPTDAY97                  1101-1103   ///
      int    CPTDAY98                  1104-1106   ///
      int    CPTDAY99                  1107-1109   ///
      int    CPTDAY100                 1110-1112   ///
      str    CPTM1_1                   1113-1114   ///
      str    CPTM1_2                   1115-1116   ///
      str    CPTM1_3                   1117-1118   ///
      str    CPTM1_4                   1119-1120   ///
      str    CPTM1_5                   1121-1122   ///
      str    CPTM1_6                   1123-1124   ///
      str    CPTM1_7                   1125-1126   ///
      str    CPTM1_8                   1127-1128   ///
      str    CPTM1_9                   1129-1130   ///
      str    CPTM1_10                  1131-1132   ///
      str    CPTM1_11                  1133-1134   ///
      str    CPTM1_12                  1135-1136   ///
      str    CPTM1_13                  1137-1138   ///
      str    CPTM1_14                  1139-1140   ///
      str    CPTM1_15                  1141-1142   ///
      str    CPTM1_16                  1143-1144   ///
      str    CPTM1_17                  1145-1146   ///
      str    CPTM1_18                  1147-1148   ///
      str    CPTM1_19                  1149-1150   ///
      str    CPTM1_20                  1151-1152   ///
      str    CPTM1_21                  1153-1154   ///
      str    CPTM1_22                  1155-1156   ///
      str    CPTM1_23                  1157-1158   ///
      str    CPTM1_24                  1159-1160   ///
      str    CPTM1_25                  1161-1162   ///
      str    CPTM1_26                  1163-1164   ///
      str    CPTM1_27                  1165-1166   ///
      str    CPTM1_28                  1167-1168   ///
      str    CPTM1_29                  1169-1170   ///
      str    CPTM1_30                  1171-1172   ///
      str    CPTM1_31                  1173-1174   ///
      str    CPTM1_32                  1175-1176   ///
      str    CPTM1_33                  1177-1178   ///
      str    CPTM1_34                  1179-1180   ///
      str    CPTM1_35                  1181-1182   ///
      str    CPTM1_36                  1183-1184   ///
      str    CPTM1_37                  1185-1186   ///
      str    CPTM1_38                  1187-1188   ///
      str    CPTM1_39                  1189-1190   ///
      str    CPTM1_40                  1191-1192   ///
      str    CPTM1_41                  1193-1194   ///
      str    CPTM1_42                  1195-1196   ///
      str    CPTM1_43                  1197-1198   ///
      str    CPTM1_44                  1199-1200   ///
      str    CPTM1_45                  1201-1202   ///
      str    CPTM1_46                  1203-1204   ///
      str    CPTM1_47                  1205-1206   ///
      str    CPTM1_48                  1207-1208   ///
      str    CPTM1_49                  1209-1210   ///
      str    CPTM1_50                  1211-1212   ///
      str    CPTM1_51                  1213-1214   ///
      str    CPTM1_52                  1215-1216   ///
      str    CPTM1_53                  1217-1218   ///
      str    CPTM1_54                  1219-1220   ///
      str    CPTM1_55                  1221-1222   ///
      str    CPTM1_56                  1223-1224   ///
      str    CPTM1_57                  1225-1226   ///
      str    CPTM1_58                  1227-1228   ///
      str    CPTM1_59                  1229-1230   ///
      str    CPTM1_60                  1231-1232   ///
      str    CPTM1_61                  1233-1234   ///
      str    CPTM1_62                  1235-1236   ///
      str    CPTM1_63                  1237-1238   ///
      str    CPTM1_64                  1239-1240   ///
      str    CPTM1_65                  1241-1242   ///
      str    CPTM1_66                  1243-1244   ///
      str    CPTM1_67                  1245-1246   ///
      str    CPTM1_68                  1247-1248   ///
      str    CPTM1_69                  1249-1250   ///
      str    CPTM1_70                  1251-1252   ///
      str    CPTM1_71                  1253-1254   ///
      str    CPTM1_72                  1255-1256   ///
      str    CPTM1_73                  1257-1258   ///
      str    CPTM1_74                  1259-1260   ///
      str    CPTM1_75                  1261-1262   ///
      str    CPTM1_76                  1263-1264   ///
      str    CPTM1_77                  1265-1266   ///
      str    CPTM1_78                  1267-1268   ///
      str    CPTM1_79                  1269-1270   ///
      str    CPTM1_80                  1271-1272   ///
      str    CPTM1_81                  1273-1274   ///
      str    CPTM1_82                  1275-1276   ///
      str    CPTM1_83                  1277-1278   ///
      str    CPTM1_84                  1279-1280   ///
      str    CPTM1_85                  1281-1282   ///
      str    CPTM1_86                  1283-1284   ///
      str    CPTM1_87                  1285-1286   ///
      str    CPTM1_88                  1287-1288   ///
      str    CPTM1_89                  1289-1290   ///
      str    CPTM1_90                  1291-1292   ///
      str    CPTM1_91                  1293-1294   ///
      str    CPTM1_92                  1295-1296   ///
      str    CPTM1_93                  1297-1298   ///
      str    CPTM1_94                  1299-1300   ///
      str    CPTM1_95                  1301-1302   ///
      str    CPTM1_96                  1303-1304   ///
      str    CPTM1_97                  1305-1306   ///
      str    CPTM1_98                  1307-1308   ///
      str    CPTM1_99                  1309-1310   ///
      str    CPTM1_100                 1311-1312   ///
      byte   DIED                      1313-1314   ///
      str    DISP_X                    1315-1316   ///
      byte   DISPUB04                  1317-1318   ///
      byte   DISPUNIFORM               1319-1320   ///
      byte   DMONTH                    1321-1322   ///
      byte   DQTR                      1323-1324   ///
      int    DXVER                     1325-1327   ///
      byte   FEMALE                    1328-1329   ///
      byte   HCUP_ED                   1330-1331   ///
      byte   HCUP_OS                   1332-1333   ///
      byte   Homeless                  1334-1335   ///
      str    HOSPST                    1336-1337   ///
      str    I10_DX_Visit_Reason1      1338-1344   ///
      str    I10_DX_Visit_Reason2      1345-1351   ///
      str    I10_DX_Visit_Reason3      1352-1358   ///
      str    I10_DX1                   1359-1365   ///
      str    I10_DX2                   1366-1372   ///
      str    I10_DX3                   1373-1379   ///
      str    I10_DX4                   1380-1386   ///
      str    I10_DX5                   1387-1393   ///
      str    I10_DX6                   1394-1400   ///
      str    I10_DX7                   1401-1407   ///
      str    I10_DX8                   1408-1414   ///
      str    I10_DX9                   1415-1421   ///
      str    I10_DX10                  1422-1428   ///
      str    I10_DX11                  1429-1435   ///
      str    I10_DX12                  1436-1442   ///
      str    I10_DX13                  1443-1449   ///
      str    I10_DX14                  1450-1456   ///
      str    I10_DX15                  1457-1463   ///
      str    I10_DX16                  1464-1470   ///
      str    I10_DX17                  1471-1477   ///
      str    I10_DX18                  1478-1484   ///
      str    I10_DX19                  1485-1491   ///
      str    I10_DX20                  1492-1498   ///
      str    I10_DX21                  1499-1505   ///
      str    I10_DX22                  1506-1512   ///
      str    I10_DX23                  1513-1519   ///
      str    I10_DX24                  1520-1526   ///
      str    I10_DX25                  1527-1533   ///
      str    I10_DX26                  1534-1540   ///
      str    I10_DX27                  1541-1547   ///
      str    I10_DX28                  1548-1554   ///
      str    I10_DX29                  1555-1561   ///
      str    I10_DX30                  1562-1568   ///
      str    I10_DX31                  1569-1575   ///
      str    I10_DX32                  1576-1582   ///
      str    I10_DX33                  1583-1589   ///
      int    I10_NDX                   1590-1592   ///
      int    I10_PROCTYPE              1593-1595   ///
      double KEY                       1596-1610   ///
      long   LOS                       1611-1615   ///
      long   LOS_X                     1616-1621   ///
      long   MDNUM1_R                  1622-1630   ///
      long   MDNUM2_R                  1631-1639   ///
      byte   MEDINCSTQ                 1640-1641   ///
      int    NCPT                      1642-1645   ///
      double OS_TIME                   1646-1656   ///
      byte   PAY1                      1657-1658   ///
      str    PAY1_X                    1659-1683   ///
      int    PL_CBSA                   1684-1686   ///
      byte   PL_NCHS                   1687-1688   ///
      byte   PL_RUCC                   1689-1690   ///
      byte   PL_UIC                    1691-1692   ///
      byte   PL_UR_CAT4                1693-1694   ///
      str    PointOfOrigin_X           1695        ///
      str    PointOfOriginUB04         1696        ///
      str    PSTATE                    1697-1698   ///
      long   PSTCO                     1699-1703   ///
      long   PSTCO2                    1704-1708   ///
      byte   RACE                      1709-1710   ///
      str    RACE_X                    1711-1725   ///
      byte   STATE_AS                  1726-1727   ///
      byte   STATE_ED                  1728-1729   ///
      byte   STATE_OS                  1730-1731   ///
      double TOTCHG                    1732-1741   ///
      double TOTCHG_X                  1742-1756   ///
      int    YEAR                      1757-1760   ///
      str    ZIP                       1761-1765   ///
      str    ZIP3                      1766-1768   ///
      int    ZIPINC_QRTL               1769-1771   ///
      str    SUBSTATE_REGION_X         1772-1774   ///
      long   HOSPID                    1775-1779   ///
      int    AYEAR                     1780-1783   ///
      byte   BMONTH                    1784-1785   ///
      int    BYEAR                     1786-1789   ///
      using  "CO_SEDD_2017_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
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
label var Homeless                 "Indicator that patient is homeless"
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
label var OS_TIME                  "Observation stay time summed from UNITS"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
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
label var SUBSTATE_REGION_X        "Region of the Hospital within a State (as received from source)"
label var HOSPID                   "HCUP hospital identification number"
label var AYEAR                    "Admission year"
label var BMONTH                   "Birth month"
label var BYEAR                    "Birth year"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
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
recode Homeless                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
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

save "CO_SEDD_2017_CORE.dta", replace
