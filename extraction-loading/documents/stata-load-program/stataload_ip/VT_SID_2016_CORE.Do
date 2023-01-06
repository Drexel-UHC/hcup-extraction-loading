/*****************************************************************************
* Creation Date: 07/25/2018   
* VT_SID_2016_CORE.Do
* This program will load the 2016 VT ASCII CORE File into Stata.
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
      int    BWT                         24-  27   ///
      str    CPT1                        28-  32   ///
      str    CPT2                        33-  37   ///
      str    CPT3                        38-  42   ///
      str    CPT4                        43-  47   ///
      str    CPT5                        48-  52   ///
      str    CPT6                        53-  57   ///
      str    CPT7                        58-  62   ///
      str    CPT8                        63-  67   ///
      str    CPT9                        68-  72   ///
      str    CPT10                       73-  77   ///
      str    CPT11                       78-  82   ///
      str    CPT12                       83-  87   ///
      str    CPT13                       88-  92   ///
      str    CPT14                       93-  97   ///
      str    CPT15                       98- 102   ///
      str    CPT16                      103- 107   ///
      str    CPT17                      108- 112   ///
      str    CPT18                      113- 117   ///
      str    CPT19                      118- 122   ///
      str    CPT20                      123- 127   ///
      str    CPT21                      128- 132   ///
      str    CPT22                      133- 137   ///
      str    CPT23                      138- 142   ///
      str    CPT24                      143- 147   ///
      str    CPT25                      148- 152   ///
      str    CPT26                      153- 157   ///
      str    CPT27                      158- 162   ///
      str    CPT28                      163- 167   ///
      str    CPT29                      168- 172   ///
      str    CPT30                      173- 177   ///
      str    CPT31                      178- 182   ///
      str    CPT32                      183- 187   ///
      str    CPT33                      188- 192   ///
      str    CPT34                      193- 197   ///
      str    CPT35                      198- 202   ///
      str    CPT36                      203- 207   ///
      str    CPT37                      208- 212   ///
      str    CPT38                      213- 217   ///
      str    CPT39                      218- 222   ///
      str    CPT40                      223- 227   ///
      str    CPT41                      228- 232   ///
      str    CPT42                      233- 237   ///
      str    CPT43                      238- 242   ///
      str    CPT44                      243- 247   ///
      str    CPT45                      248- 252   ///
      str    CPT46                      253- 257   ///
      str    CPT47                      258- 262   ///
      str    CPT48                      263- 267   ///
      str    CPT49                      268- 272   ///
      str    CPT50                      273- 277   ///
      str    CPT51                      278- 282   ///
      str    CPT52                      283- 287   ///
      str    CPT53                      288- 292   ///
      str    CPT54                      293- 297   ///
      str    CPT55                      298- 302   ///
      str    CPT56                      303- 307   ///
      str    CPT57                      308- 312   ///
      str    CPT58                      313- 317   ///
      str    CPT59                      318- 322   ///
      str    CPT60                      323- 327   ///
      str    CPT61                      328- 332   ///
      str    CPT62                      333- 337   ///
      str    CPT63                      338- 342   ///
      str    CPT64                      343- 347   ///
      str    CPT65                      348- 352   ///
      str    CPT66                      353- 357   ///
      str    CPT67                      358- 362   ///
      str    CPT68                      363- 367   ///
      str    CPT69                      368- 372   ///
      str    CPT70                      373- 377   ///
      str    CPT71                      378- 382   ///
      str    CPT72                      383- 387   ///
      str    CPT73                      388- 392   ///
      str    CPT74                      393- 397   ///
      str    CPT75                      398- 402   ///
      str    CPT76                      403- 407   ///
      str    CPT77                      408- 412   ///
      str    CPT78                      413- 417   ///
      str    CPT79                      418- 422   ///
      str    CPT80                      423- 427   ///
      str    CPT81                      428- 432   ///
      str    CPT82                      433- 437   ///
      str    CPT83                      438- 442   ///
      str    CPT84                      443- 447   ///
      str    CPT85                      448- 452   ///
      int    CPTCCS1                    453- 455   ///
      int    CPTCCS2                    456- 458   ///
      int    CPTCCS3                    459- 461   ///
      int    CPTCCS4                    462- 464   ///
      int    CPTCCS5                    465- 467   ///
      int    CPTCCS6                    468- 470   ///
      int    CPTCCS7                    471- 473   ///
      int    CPTCCS8                    474- 476   ///
      int    CPTCCS9                    477- 479   ///
      int    CPTCCS10                   480- 482   ///
      int    CPTCCS11                   483- 485   ///
      int    CPTCCS12                   486- 488   ///
      int    CPTCCS13                   489- 491   ///
      int    CPTCCS14                   492- 494   ///
      int    CPTCCS15                   495- 497   ///
      int    CPTCCS16                   498- 500   ///
      int    CPTCCS17                   501- 503   ///
      int    CPTCCS18                   504- 506   ///
      int    CPTCCS19                   507- 509   ///
      int    CPTCCS20                   510- 512   ///
      int    CPTCCS21                   513- 515   ///
      int    CPTCCS22                   516- 518   ///
      int    CPTCCS23                   519- 521   ///
      int    CPTCCS24                   522- 524   ///
      int    CPTCCS25                   525- 527   ///
      int    CPTCCS26                   528- 530   ///
      int    CPTCCS27                   531- 533   ///
      int    CPTCCS28                   534- 536   ///
      int    CPTCCS29                   537- 539   ///
      int    CPTCCS30                   540- 542   ///
      int    CPTCCS31                   543- 545   ///
      int    CPTCCS32                   546- 548   ///
      int    CPTCCS33                   549- 551   ///
      int    CPTCCS34                   552- 554   ///
      int    CPTCCS35                   555- 557   ///
      int    CPTCCS36                   558- 560   ///
      int    CPTCCS37                   561- 563   ///
      int    CPTCCS38                   564- 566   ///
      int    CPTCCS39                   567- 569   ///
      int    CPTCCS40                   570- 572   ///
      int    CPTCCS41                   573- 575   ///
      int    CPTCCS42                   576- 578   ///
      int    CPTCCS43                   579- 581   ///
      int    CPTCCS44                   582- 584   ///
      int    CPTCCS45                   585- 587   ///
      int    CPTCCS46                   588- 590   ///
      int    CPTCCS47                   591- 593   ///
      int    CPTCCS48                   594- 596   ///
      int    CPTCCS49                   597- 599   ///
      int    CPTCCS50                   600- 602   ///
      int    CPTCCS51                   603- 605   ///
      int    CPTCCS52                   606- 608   ///
      int    CPTCCS53                   609- 611   ///
      int    CPTCCS54                   612- 614   ///
      int    CPTCCS55                   615- 617   ///
      int    CPTCCS56                   618- 620   ///
      int    CPTCCS57                   621- 623   ///
      int    CPTCCS58                   624- 626   ///
      int    CPTCCS59                   627- 629   ///
      int    CPTCCS60                   630- 632   ///
      int    CPTCCS61                   633- 635   ///
      int    CPTCCS62                   636- 638   ///
      int    CPTCCS63                   639- 641   ///
      int    CPTCCS64                   642- 644   ///
      int    CPTCCS65                   645- 647   ///
      int    CPTCCS66                   648- 650   ///
      int    CPTCCS67                   651- 653   ///
      int    CPTCCS68                   654- 656   ///
      int    CPTCCS69                   657- 659   ///
      int    CPTCCS70                   660- 662   ///
      int    CPTCCS71                   663- 665   ///
      int    CPTCCS72                   666- 668   ///
      int    CPTCCS73                   669- 671   ///
      int    CPTCCS74                   672- 674   ///
      int    CPTCCS75                   675- 677   ///
      int    CPTCCS76                   678- 680   ///
      int    CPTCCS77                   681- 683   ///
      int    CPTCCS78                   684- 686   ///
      int    CPTCCS79                   687- 689   ///
      int    CPTCCS80                   690- 692   ///
      int    CPTCCS81                   693- 695   ///
      int    CPTCCS82                   696- 698   ///
      int    CPTCCS83                   699- 701   ///
      int    CPTCCS84                   702- 704   ///
      int    CPTCCS85                   705- 707   ///
      int    CPTDAY1                    708- 710   ///
      int    CPTDAY2                    711- 713   ///
      int    CPTDAY3                    714- 716   ///
      int    CPTDAY4                    717- 719   ///
      int    CPTDAY5                    720- 722   ///
      int    CPTDAY6                    723- 725   ///
      int    CPTDAY7                    726- 728   ///
      int    CPTDAY8                    729- 731   ///
      int    CPTDAY9                    732- 734   ///
      int    CPTDAY10                   735- 737   ///
      int    CPTDAY11                   738- 740   ///
      int    CPTDAY12                   741- 743   ///
      int    CPTDAY13                   744- 746   ///
      int    CPTDAY14                   747- 749   ///
      int    CPTDAY15                   750- 752   ///
      int    CPTDAY16                   753- 755   ///
      int    CPTDAY17                   756- 758   ///
      int    CPTDAY18                   759- 761   ///
      int    CPTDAY19                   762- 764   ///
      int    CPTDAY20                   765- 767   ///
      int    CPTDAY21                   768- 770   ///
      int    CPTDAY22                   771- 773   ///
      int    CPTDAY23                   774- 776   ///
      int    CPTDAY24                   777- 779   ///
      int    CPTDAY25                   780- 782   ///
      int    CPTDAY26                   783- 785   ///
      int    CPTDAY27                   786- 788   ///
      int    CPTDAY28                   789- 791   ///
      int    CPTDAY29                   792- 794   ///
      int    CPTDAY30                   795- 797   ///
      int    CPTDAY31                   798- 800   ///
      int    CPTDAY32                   801- 803   ///
      int    CPTDAY33                   804- 806   ///
      int    CPTDAY34                   807- 809   ///
      int    CPTDAY35                   810- 812   ///
      int    CPTDAY36                   813- 815   ///
      int    CPTDAY37                   816- 818   ///
      int    CPTDAY38                   819- 821   ///
      int    CPTDAY39                   822- 824   ///
      int    CPTDAY40                   825- 827   ///
      int    CPTDAY41                   828- 830   ///
      int    CPTDAY42                   831- 833   ///
      int    CPTDAY43                   834- 836   ///
      int    CPTDAY44                   837- 839   ///
      int    CPTDAY45                   840- 842   ///
      int    CPTDAY46                   843- 845   ///
      int    CPTDAY47                   846- 848   ///
      int    CPTDAY48                   849- 851   ///
      int    CPTDAY49                   852- 854   ///
      int    CPTDAY50                   855- 857   ///
      int    CPTDAY51                   858- 860   ///
      int    CPTDAY52                   861- 863   ///
      int    CPTDAY53                   864- 866   ///
      int    CPTDAY54                   867- 869   ///
      int    CPTDAY55                   870- 872   ///
      int    CPTDAY56                   873- 875   ///
      int    CPTDAY57                   876- 878   ///
      int    CPTDAY58                   879- 881   ///
      int    CPTDAY59                   882- 884   ///
      int    CPTDAY60                   885- 887   ///
      int    CPTDAY61                   888- 890   ///
      int    CPTDAY62                   891- 893   ///
      int    CPTDAY63                   894- 896   ///
      int    CPTDAY64                   897- 899   ///
      int    CPTDAY65                   900- 902   ///
      int    CPTDAY66                   903- 905   ///
      int    CPTDAY67                   906- 908   ///
      int    CPTDAY68                   909- 911   ///
      int    CPTDAY69                   912- 914   ///
      int    CPTDAY70                   915- 917   ///
      int    CPTDAY71                   918- 920   ///
      int    CPTDAY72                   921- 923   ///
      int    CPTDAY73                   924- 926   ///
      int    CPTDAY74                   927- 929   ///
      int    CPTDAY75                   930- 932   ///
      int    CPTDAY76                   933- 935   ///
      int    CPTDAY77                   936- 938   ///
      int    CPTDAY78                   939- 941   ///
      int    CPTDAY79                   942- 944   ///
      int    CPTDAY80                   945- 947   ///
      int    CPTDAY81                   948- 950   ///
      int    CPTDAY82                   951- 953   ///
      int    CPTDAY83                   954- 956   ///
      int    CPTDAY84                   957- 959   ///
      int    CPTDAY85                   960- 962   ///
      str    CPTM1_1                    963- 964   ///
      str    CPTM1_2                    965- 966   ///
      str    CPTM1_3                    967- 968   ///
      str    CPTM1_4                    969- 970   ///
      str    CPTM1_5                    971- 972   ///
      str    CPTM1_6                    973- 974   ///
      str    CPTM1_7                    975- 976   ///
      str    CPTM1_8                    977- 978   ///
      str    CPTM1_9                    979- 980   ///
      str    CPTM1_10                   981- 982   ///
      str    CPTM1_11                   983- 984   ///
      str    CPTM1_12                   985- 986   ///
      str    CPTM1_13                   987- 988   ///
      str    CPTM1_14                   989- 990   ///
      str    CPTM1_15                   991- 992   ///
      str    CPTM1_16                   993- 994   ///
      str    CPTM1_17                   995- 996   ///
      str    CPTM1_18                   997- 998   ///
      str    CPTM1_19                   999-1000   ///
      str    CPTM1_20                  1001-1002   ///
      str    CPTM1_21                  1003-1004   ///
      str    CPTM1_22                  1005-1006   ///
      str    CPTM1_23                  1007-1008   ///
      str    CPTM1_24                  1009-1010   ///
      str    CPTM1_25                  1011-1012   ///
      str    CPTM1_26                  1013-1014   ///
      str    CPTM1_27                  1015-1016   ///
      str    CPTM1_28                  1017-1018   ///
      str    CPTM1_29                  1019-1020   ///
      str    CPTM1_30                  1021-1022   ///
      str    CPTM1_31                  1023-1024   ///
      str    CPTM1_32                  1025-1026   ///
      str    CPTM1_33                  1027-1028   ///
      str    CPTM1_34                  1029-1030   ///
      str    CPTM1_35                  1031-1032   ///
      str    CPTM1_36                  1033-1034   ///
      str    CPTM1_37                  1035-1036   ///
      str    CPTM1_38                  1037-1038   ///
      str    CPTM1_39                  1039-1040   ///
      str    CPTM1_40                  1041-1042   ///
      str    CPTM1_41                  1043-1044   ///
      str    CPTM1_42                  1045-1046   ///
      str    CPTM1_43                  1047-1048   ///
      str    CPTM1_44                  1049-1050   ///
      str    CPTM1_45                  1051-1052   ///
      str    CPTM1_46                  1053-1054   ///
      str    CPTM1_47                  1055-1056   ///
      str    CPTM1_48                  1057-1058   ///
      str    CPTM1_49                  1059-1060   ///
      str    CPTM1_50                  1061-1062   ///
      str    CPTM1_51                  1063-1064   ///
      str    CPTM1_52                  1065-1066   ///
      str    CPTM1_53                  1067-1068   ///
      str    CPTM1_54                  1069-1070   ///
      str    CPTM1_55                  1071-1072   ///
      str    CPTM1_56                  1073-1074   ///
      str    CPTM1_57                  1075-1076   ///
      str    CPTM1_58                  1077-1078   ///
      str    CPTM1_59                  1079-1080   ///
      str    CPTM1_60                  1081-1082   ///
      str    CPTM1_61                  1083-1084   ///
      str    CPTM1_62                  1085-1086   ///
      str    CPTM1_63                  1087-1088   ///
      str    CPTM1_64                  1089-1090   ///
      str    CPTM1_65                  1091-1092   ///
      str    CPTM1_66                  1093-1094   ///
      str    CPTM1_67                  1095-1096   ///
      str    CPTM1_68                  1097-1098   ///
      str    CPTM1_69                  1099-1100   ///
      str    CPTM1_70                  1101-1102   ///
      str    CPTM1_71                  1103-1104   ///
      str    CPTM1_72                  1105-1106   ///
      str    CPTM1_73                  1107-1108   ///
      str    CPTM1_74                  1109-1110   ///
      str    CPTM1_75                  1111-1112   ///
      str    CPTM1_76                  1113-1114   ///
      str    CPTM1_77                  1115-1116   ///
      str    CPTM1_78                  1117-1118   ///
      str    CPTM1_79                  1119-1120   ///
      str    CPTM1_80                  1121-1122   ///
      str    CPTM1_81                  1123-1124   ///
      str    CPTM1_82                  1125-1126   ///
      str    CPTM1_83                  1127-1128   ///
      str    CPTM1_84                  1129-1130   ///
      str    CPTM1_85                  1131-1132   ///
      str    CPTM2_1                   1133-1134   ///
      str    CPTM2_2                   1135-1136   ///
      str    CPTM2_3                   1137-1138   ///
      str    CPTM2_4                   1139-1140   ///
      str    CPTM2_5                   1141-1142   ///
      str    CPTM2_6                   1143-1144   ///
      str    CPTM2_7                   1145-1146   ///
      str    CPTM2_8                   1147-1148   ///
      str    CPTM2_9                   1149-1150   ///
      str    CPTM2_10                  1151-1152   ///
      str    CPTM2_11                  1153-1154   ///
      str    CPTM2_12                  1155-1156   ///
      str    CPTM2_13                  1157-1158   ///
      str    CPTM2_14                  1159-1160   ///
      str    CPTM2_15                  1161-1162   ///
      str    CPTM2_16                  1163-1164   ///
      str    CPTM2_17                  1165-1166   ///
      str    CPTM2_18                  1167-1168   ///
      str    CPTM2_19                  1169-1170   ///
      str    CPTM2_20                  1171-1172   ///
      str    CPTM2_21                  1173-1174   ///
      str    CPTM2_22                  1175-1176   ///
      str    CPTM2_23                  1177-1178   ///
      str    CPTM2_24                  1179-1180   ///
      str    CPTM2_25                  1181-1182   ///
      str    CPTM2_26                  1183-1184   ///
      str    CPTM2_27                  1185-1186   ///
      str    CPTM2_28                  1187-1188   ///
      str    CPTM2_29                  1189-1190   ///
      str    CPTM2_30                  1191-1192   ///
      str    CPTM2_31                  1193-1194   ///
      str    CPTM2_32                  1195-1196   ///
      str    CPTM2_33                  1197-1198   ///
      str    CPTM2_34                  1199-1200   ///
      str    CPTM2_35                  1201-1202   ///
      str    CPTM2_36                  1203-1204   ///
      str    CPTM2_37                  1205-1206   ///
      str    CPTM2_38                  1207-1208   ///
      str    CPTM2_39                  1209-1210   ///
      str    CPTM2_40                  1211-1212   ///
      str    CPTM2_41                  1213-1214   ///
      str    CPTM2_42                  1215-1216   ///
      str    CPTM2_43                  1217-1218   ///
      str    CPTM2_44                  1219-1220   ///
      str    CPTM2_45                  1221-1222   ///
      str    CPTM2_46                  1223-1224   ///
      str    CPTM2_47                  1225-1226   ///
      str    CPTM2_48                  1227-1228   ///
      str    CPTM2_49                  1229-1230   ///
      str    CPTM2_50                  1231-1232   ///
      str    CPTM2_51                  1233-1234   ///
      str    CPTM2_52                  1235-1236   ///
      str    CPTM2_53                  1237-1238   ///
      str    CPTM2_54                  1239-1240   ///
      str    CPTM2_55                  1241-1242   ///
      str    CPTM2_56                  1243-1244   ///
      str    CPTM2_57                  1245-1246   ///
      str    CPTM2_58                  1247-1248   ///
      str    CPTM2_59                  1249-1250   ///
      str    CPTM2_60                  1251-1252   ///
      str    CPTM2_61                  1253-1254   ///
      str    CPTM2_62                  1255-1256   ///
      str    CPTM2_63                  1257-1258   ///
      str    CPTM2_64                  1259-1260   ///
      str    CPTM2_65                  1261-1262   ///
      str    CPTM2_66                  1263-1264   ///
      str    CPTM2_67                  1265-1266   ///
      str    CPTM2_68                  1267-1268   ///
      str    CPTM2_69                  1269-1270   ///
      str    CPTM2_70                  1271-1272   ///
      str    CPTM2_71                  1273-1274   ///
      str    CPTM2_72                  1275-1276   ///
      str    CPTM2_73                  1277-1278   ///
      str    CPTM2_74                  1279-1280   ///
      str    CPTM2_75                  1281-1282   ///
      str    CPTM2_76                  1283-1284   ///
      str    CPTM2_77                  1285-1286   ///
      str    CPTM2_78                  1287-1288   ///
      str    CPTM2_79                  1289-1290   ///
      str    CPTM2_80                  1291-1292   ///
      str    CPTM2_81                  1293-1294   ///
      str    CPTM2_82                  1295-1296   ///
      str    CPTM2_83                  1297-1298   ///
      str    CPTM2_84                  1299-1300   ///
      str    CPTM2_85                  1301-1302   ///
      long   DaysToEvent               1303-1308   ///
      byte   DIED                      1309-1310   ///
      str    DISP_X                    1311-1312   ///
      byte   DISPUB04                  1313-1314   ///
      byte   DISPUNIFORM               1315-1316   ///
      byte   DMONTH                    1317-1318   ///
      byte   DQTR                      1319-1320   ///
      int    DRG                       1321-1323   ///
      int    DRG_NoPOA                 1324-1326   ///
      byte   DRGVER                    1327-1328   ///
      str    DSHOSPID                  1329-1345   ///
      str    DXPOA1                    1346        ///
      str    DXPOA2                    1347        ///
      str    DXPOA3                    1348        ///
      str    DXPOA4                    1349        ///
      str    DXPOA5                    1350        ///
      str    DXPOA6                    1351        ///
      str    DXPOA7                    1352        ///
      str    DXPOA8                    1353        ///
      str    DXPOA9                    1354        ///
      str    DXPOA10                   1355        ///
      str    DXPOA11                   1356        ///
      str    DXPOA12                   1357        ///
      str    DXPOA13                   1358        ///
      str    DXPOA14                   1359        ///
      str    DXPOA15                   1360        ///
      str    DXPOA16                   1361        ///
      str    DXPOA17                   1362        ///
      str    DXPOA18                   1363        ///
      str    DXPOA19                   1364        ///
      str    DXPOA20                   1365        ///
      int    DXVER                     1366-1368   ///
      str    E_POA1                    1369        ///
      str    E_POA2                    1370        ///
      str    E_POA3                    1371        ///
      str    E_POA4                    1372        ///
      str    E_POA5                    1373        ///
      str    E_POA6                    1374        ///
      str    E_POA7                    1375        ///
      str    E_POA8                    1376        ///
      str    E_POA9                    1377        ///
      str    E_POA10                   1378        ///
      str    E_POA11                   1379        ///
      byte   FEMALE                    1380-1381   ///
      byte   HCUP_ED                   1382-1383   ///
      byte   HCUP_OS                   1384-1385   ///
      byte   HISPANIC                  1386-1387   ///
      str    HISPANIC_X                1388        ///
      str    HOSP_NPI                  1389-1398   ///
      str    HOSPST                    1399-1400   ///
      str    I10_DX_Admitting          1401-1407   ///
      str    I10_DX1                   1408-1414   ///
      str    I10_DX2                   1415-1421   ///
      str    I10_DX3                   1422-1428   ///
      str    I10_DX4                   1429-1435   ///
      str    I10_DX5                   1436-1442   ///
      str    I10_DX6                   1443-1449   ///
      str    I10_DX7                   1450-1456   ///
      str    I10_DX8                   1457-1463   ///
      str    I10_DX9                   1464-1470   ///
      str    I10_DX10                  1471-1477   ///
      str    I10_DX11                  1478-1484   ///
      str    I10_DX12                  1485-1491   ///
      str    I10_DX13                  1492-1498   ///
      str    I10_DX14                  1499-1505   ///
      str    I10_DX15                  1506-1512   ///
      str    I10_DX16                  1513-1519   ///
      str    I10_DX17                  1520-1526   ///
      str    I10_DX18                  1527-1533   ///
      str    I10_DX19                  1534-1540   ///
      str    I10_DX20                  1541-1547   ///
      str    I10_ECAUSE1               1548-1554   ///
      str    I10_ECAUSE2               1555-1561   ///
      str    I10_ECAUSE3               1562-1568   ///
      str    I10_ECAUSE4               1569-1575   ///
      str    I10_ECAUSE5               1576-1582   ///
      str    I10_ECAUSE6               1583-1589   ///
      str    I10_ECAUSE7               1590-1596   ///
      str    I10_ECAUSE8               1597-1603   ///
      str    I10_ECAUSE9               1604-1610   ///
      str    I10_ECAUSE10              1611-1617   ///
      str    I10_ECAUSE11              1618-1624   ///
      int    I10_NDX                   1625-1627   ///
      byte   I10_NECAUSE               1628-1629   ///
      int    I10_NPR                   1630-1632   ///
      str    I10_PR1                   1633-1639   ///
      str    I10_PR2                   1640-1646   ///
      str    I10_PR3                   1647-1653   ///
      str    I10_PR4                   1654-1660   ///
      str    I10_PR5                   1661-1667   ///
      str    I10_PR6                   1668-1674   ///
      str    I10_PR7                   1675-1681   ///
      str    I10_PR8                   1682-1688   ///
      str    I10_PR9                   1689-1695   ///
      str    I10_PR10                  1696-1702   ///
      str    I10_PR11                  1703-1709   ///
      str    I10_PR12                  1710-1716   ///
      str    I10_PR13                  1717-1723   ///
      str    I10_PR14                  1724-1730   ///
      str    I10_PR15                  1731-1737   ///
      str    I10_PR16                  1738-1744   ///
      str    I10_PR17                  1745-1751   ///
      str    I10_PR18                  1752-1758   ///
      str    I10_PR19                  1759-1765   ///
      str    I10_PR20                  1766-1772   ///
      int    I10_PROCTYPE              1773-1775   ///
      double KEY                       1776-1790   ///
      long   LOS                       1791-1795   ///
      long   LOS_X                     1796-1801   ///
      byte   MDC                       1802-1803   ///
      byte   MDC_NoPOA                 1804-1805   ///
      byte   MEDINCSTQ                 1806-1807   ///
      long   MRN_R                     1808-1816   ///
      int    NCPT                      1817-1820   ///
      byte   PAY1                      1821-1822   ///
      str    PAY1_X                    1823-1824   ///
      byte   PAY2                      1825-1826   ///
      str    PAY2_X                    1827-1828   ///
      byte   PAY3                      1829-1830   ///
      str    PAY3_X                    1831-1832   ///
      str    PAYER1_X                  1833-1838   ///
      str    PAYER2_X                  1839-1844   ///
      int    PL_CBSA                   1845-1847   ///
      byte   PL_NCHS                   1848-1849   ///
      byte   PL_RUCC                   1850-1851   ///
      byte   PL_UIC                    1852-1853   ///
      byte   PL_UR_CAT4                1854-1855   ///
      byte   POA_Disch_Edit1           1856-1857   ///
      byte   POA_Disch_Edit2           1858-1859   ///
      byte   POA_Hosp_Edit1            1860-1861   ///
      byte   POA_Hosp_Edit2            1862-1863   ///
      byte   POA_Hosp_Edit3            1864-1865   ///
      double POA_Hosp_Edit3_Value      1866-1873   ///
      str    PointOfOrigin_X           1874        ///
      str    PointOfOriginUB04         1875        ///
      long   PRDAY1                    1876-1880   ///
      long   PRDAY2                    1881-1885   ///
      long   PRDAY3                    1886-1890   ///
      long   PRDAY4                    1891-1895   ///
      long   PRDAY5                    1896-1900   ///
      long   PRDAY6                    1901-1905   ///
      long   PRDAY7                    1906-1910   ///
      long   PRDAY8                    1911-1915   ///
      long   PRDAY9                    1916-1920   ///
      long   PRDAY10                   1921-1925   ///
      long   PRDAY11                   1926-1930   ///
      long   PRDAY12                   1931-1935   ///
      long   PRDAY13                   1936-1940   ///
      long   PRDAY14                   1941-1945   ///
      long   PRDAY15                   1946-1950   ///
      long   PRDAY16                   1951-1955   ///
      long   PRDAY17                   1956-1960   ///
      long   PRDAY18                   1961-1965   ///
      long   PRDAY19                   1966-1970   ///
      long   PRDAY20                   1971-1975   ///
      int    PRVER                     1976-1978   ///
      str    PSTATE                    1979-1980   ///
      long   PSTCO                     1981-1985   ///
      long   PSTCO2                    1986-1990   ///
      byte   RACE                      1991-1992   ///
      str    RACE_X                    1993        ///
      byte   READMIT                   1994-1995   ///
      double TOTCHG                    1996-2005   ///
      double TOTCHG_X                  2006-2020   ///
      byte   TRAN_IN                   2021-2022   ///
      byte   TRAN_OUT                  2023-2024   ///
      long   VisitLink                 2025-2033   ///
      int    YEAR                      2034-2037   ///
      str    ZIP                       2038-2042   ///
      str    ZIP3                      2043-2045   ///
      int    ZIPINC_QRTL               2046-2048   ///
      str    TOWN                      2049-2052   ///
      int    AYEAR                     2053-2056   ///
      byte   BMONTH                    2057-2058   ///
      int    BYEAR                     2059-2062   ///
      byte   PRMONTH1                  2063-2064   ///
      byte   PRMONTH2                  2065-2066   ///
      byte   PRMONTH3                  2067-2068   ///
      byte   PRMONTH4                  2069-2070   ///
      byte   PRMONTH5                  2071-2072   ///
      byte   PRMONTH6                  2073-2074   ///
      byte   PRMONTH7                  2075-2076   ///
      byte   PRMONTH8                  2077-2078   ///
      byte   PRMONTH9                  2079-2080   ///
      byte   PRMONTH10                 2081-2082   ///
      byte   PRMONTH11                 2083-2084   ///
      byte   PRMONTH12                 2085-2086   ///
      byte   PRMONTH13                 2087-2088   ///
      byte   PRMONTH14                 2089-2090   ///
      byte   PRMONTH15                 2091-2092   ///
      byte   PRMONTH16                 2093-2094   ///
      byte   PRMONTH17                 2095-2096   ///
      byte   PRMONTH18                 2097-2098   ///
      byte   PRMONTH19                 2099-2100   ///
      byte   PRMONTH20                 2101-2102   ///
      int    PRYEAR1                   2103-2106   ///
      int    PRYEAR2                   2107-2110   ///
      int    PRYEAR3                   2111-2114   ///
      int    PRYEAR4                   2115-2118   ///
      int    PRYEAR5                   2119-2122   ///
      int    PRYEAR6                   2123-2126   ///
      int    PRYEAR7                   2127-2130   ///
      int    PRYEAR8                   2131-2134   ///
      int    PRYEAR9                   2135-2138   ///
      int    PRYEAR10                  2139-2142   ///
      int    PRYEAR11                  2143-2146   ///
      int    PRYEAR12                  2147-2150   ///
      int    PRYEAR13                  2151-2154   ///
      int    PRYEAR14                  2155-2158   ///
      int    PRYEAR15                  2159-2162   ///
      int    PRYEAR16                  2163-2166   ///
      int    PRYEAR17                  2167-2170   ///
      int    PRYEAR18                  2171-2174   ///
      int    PRYEAR19                  2175-2178   ///
      int    PRYEAR20                  2179-2182   ///
      using  "VT_SID_2016_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var BWT                      "Birth weight in grams"
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
label var DXVER                    "Diagnosis Version"
label var E_POA1                   "External cause 1, present on admission indicator"
label var E_POA2                   "External cause 2, present on admission indicator"
label var E_POA3                   "External cause 3, present on admission indicator"
label var E_POA4                   "External cause 4, present on admission indicator"
label var E_POA5                   "External cause 5, present on admission indicator"
label var E_POA6                   "External cause 6, present on admission indicator"
label var E_POA7                   "External cause 7, present on admission indicator"
label var E_POA8                   "External cause 8, present on admission indicator"
label var E_POA9                   "External cause 9, present on admission indicator"
label var E_POA10                  "External cause 10, present on admission indicator"
label var E_POA11                  "External cause 11, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSP_NPI                 "Hospital NPI"
label var HOSPST                   "Hospital state postal code"
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
label var I10_ECAUSE1              "ICD-10-CM External cause 1"
label var I10_ECAUSE2              "ICD-10-CM External cause 2"
label var I10_ECAUSE3              "ICD-10-CM External cause 3"
label var I10_ECAUSE4              "ICD-10-CM External cause 4"
label var I10_ECAUSE5              "ICD-10-CM External cause 5"
label var I10_ECAUSE6              "ICD-10-CM External cause 6"
label var I10_ECAUSE7              "ICD-10-CM External cause 7"
label var I10_ECAUSE8              "ICD-10-CM External cause 8"
label var I10_ECAUSE9              "ICD-10-CM External cause 9"
label var I10_ECAUSE10             "ICD-10-CM External cause 10"
label var I10_ECAUSE11             "ICD-10-CM External cause 11"
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_NECAUSE              "ICD-10-CM Number of External cause codes on this record"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
label var PAY3                     "Tertiary expected payer (uniform)"
label var PAY3_X                   "Tertiary expected payer (as received from source)"
label var PAYER1_X                 "Primary expected payer plan identifier (as received from source)"
label var PAYER2_X                 "Secondary expected payer plan identifier (as received from source)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes(RUCC)"
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
label var PRDAY9                   "Number of days from admission to I10_PR9"
label var PRDAY10                  "Number of days from admission to I10_PR10"
label var PRDAY11                  "Number of days from admission to I10_PR11"
label var PRDAY12                  "Number of days from admission to I10_PR12"
label var PRDAY13                  "Number of days from admission to I10_PR13"
label var PRDAY14                  "Number of days from admission to I10_PR14"
label var PRDAY15                  "Number of days from admission to I10_PR15"
label var PRDAY16                  "Number of days from admission to I10_PR16"
label var PRDAY17                  "Number of days from admission to I10_PR17"
label var PRDAY18                  "Number of days from admission to I10_PR18"
label var PRDAY19                  "Number of days from admission to I10_PR19"
label var PRDAY20                  "Number of days from admission to I10_PR20"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var READMIT                  "Readmission"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var VisitLink                "Visit linkage variable"
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var TOWN                     "Patient town of residence (as received from source)"
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
label var PRMONTH11                "Month of procedure 11"
label var PRMONTH12                "Month of procedure 12"
label var PRMONTH13                "Month of procedure 13"
label var PRMONTH14                "Month of procedure 14"
label var PRMONTH15                "Month of procedure 15"
label var PRMONTH16                "Month of procedure 16"
label var PRMONTH17                "Month of procedure 17"
label var PRMONTH18                "Month of procedure 18"
label var PRMONTH19                "Month of procedure 19"
label var PRMONTH20                "Month of procedure 20"
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
label var PRYEAR11                 "Year of procedure 11"
label var PRYEAR12                 "Year of procedure 12"
label var PRYEAR13                 "Year of procedure 13"
label var PRYEAR14                 "Year of procedure 14"
label var PRYEAR15                 "Year of procedure 15"
label var PRYEAR16                 "Year of procedure 16"
label var PRYEAR17                 "Year of procedure 17"
label var PRYEAR18                 "Year of procedure 18"
label var PRYEAR19                 "Year of procedure 19"
label var PRYEAR20                 "Year of procedure 20"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
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
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NECAUSE               (-9 -8 -6 -5=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode NCPT                      (-999 -888 -666=.)
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
recode PRDAY9                    (-9999 -8888 -6666=.)
recode PRDAY10                   (-9999 -8888 -6666=.)
recode PRDAY11                   (-9999 -8888 -6666=.)
recode PRDAY12                   (-9999 -8888 -6666=.)
recode PRDAY13                   (-9999 -8888 -6666=.)
recode PRDAY14                   (-9999 -8888 -6666=.)
recode PRDAY15                   (-9999 -8888 -6666=.)
recode PRDAY16                   (-9999 -8888 -6666=.)
recode PRDAY17                   (-9999 -8888 -6666=.)
recode PRDAY18                   (-9999 -8888 -6666=.)
recode PRDAY19                   (-9999 -8888 -6666=.)
recode PRDAY20                   (-9999 -8888 -6666=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode READMIT                   (-9 -8 -6 -5=.)
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
recode PRMONTH2                  (-9 -8 -6 -5=.)
recode PRMONTH3                  (-9 -8 -6 -5=.)
recode PRMONTH4                  (-9 -8 -6 -5=.)
recode PRMONTH5                  (-9 -8 -6 -5=.)
recode PRMONTH6                  (-9 -8 -6 -5=.)
recode PRMONTH7                  (-9 -8 -6 -5=.)
recode PRMONTH8                  (-9 -8 -6 -5=.)
recode PRMONTH9                  (-9 -8 -6 -5=.)
recode PRMONTH10                 (-9 -8 -6 -5=.)
recode PRMONTH11                 (-9 -8 -6 -5=.)
recode PRMONTH12                 (-9 -8 -6 -5=.)
recode PRMONTH13                 (-9 -8 -6 -5=.)
recode PRMONTH14                 (-9 -8 -6 -5=.)
recode PRMONTH15                 (-9 -8 -6 -5=.)
recode PRMONTH16                 (-9 -8 -6 -5=.)
recode PRMONTH17                 (-9 -8 -6 -5=.)
recode PRMONTH18                 (-9 -8 -6 -5=.)
recode PRMONTH19                 (-9 -8 -6 -5=.)
recode PRMONTH20                 (-9 -8 -6 -5=.)
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
recode PRYEAR11                  (-999 -888 -666=.)
recode PRYEAR12                  (-999 -888 -666=.)
recode PRYEAR13                  (-999 -888 -666=.)
recode PRYEAR14                  (-999 -888 -666=.)
recode PRYEAR15                  (-999 -888 -666=.)
recode PRYEAR16                  (-999 -888 -666=.)
recode PRYEAR17                  (-999 -888 -666=.)
recode PRYEAR18                  (-999 -888 -666=.)
recode PRYEAR19                  (-999 -888 -666=.)
recode PRYEAR20                  (-999 -888 -666=.)

save "VT_SID_2016_CORE.dta", replace
