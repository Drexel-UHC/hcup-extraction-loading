/*****************************************************************************
* Creation Date: 02/02/2017   
* HI_SEDD_2014_CORE.Do
* This program will load the 2014 HI ASCII CORE File into Stata.
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
      int    AGEDAY                       1-   3   ///
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
      str    CPT101                     513- 517   ///
      int    CPTCCS1                    518- 520   ///
      int    CPTCCS2                    521- 523   ///
      int    CPTCCS3                    524- 526   ///
      int    CPTCCS4                    527- 529   ///
      int    CPTCCS5                    530- 532   ///
      int    CPTCCS6                    533- 535   ///
      int    CPTCCS7                    536- 538   ///
      int    CPTCCS8                    539- 541   ///
      int    CPTCCS9                    542- 544   ///
      int    CPTCCS10                   545- 547   ///
      int    CPTCCS11                   548- 550   ///
      int    CPTCCS12                   551- 553   ///
      int    CPTCCS13                   554- 556   ///
      int    CPTCCS14                   557- 559   ///
      int    CPTCCS15                   560- 562   ///
      int    CPTCCS16                   563- 565   ///
      int    CPTCCS17                   566- 568   ///
      int    CPTCCS18                   569- 571   ///
      int    CPTCCS19                   572- 574   ///
      int    CPTCCS20                   575- 577   ///
      int    CPTCCS21                   578- 580   ///
      int    CPTCCS22                   581- 583   ///
      int    CPTCCS23                   584- 586   ///
      int    CPTCCS24                   587- 589   ///
      int    CPTCCS25                   590- 592   ///
      int    CPTCCS26                   593- 595   ///
      int    CPTCCS27                   596- 598   ///
      int    CPTCCS28                   599- 601   ///
      int    CPTCCS29                   602- 604   ///
      int    CPTCCS30                   605- 607   ///
      int    CPTCCS31                   608- 610   ///
      int    CPTCCS32                   611- 613   ///
      int    CPTCCS33                   614- 616   ///
      int    CPTCCS34                   617- 619   ///
      int    CPTCCS35                   620- 622   ///
      int    CPTCCS36                   623- 625   ///
      int    CPTCCS37                   626- 628   ///
      int    CPTCCS38                   629- 631   ///
      int    CPTCCS39                   632- 634   ///
      int    CPTCCS40                   635- 637   ///
      int    CPTCCS41                   638- 640   ///
      int    CPTCCS42                   641- 643   ///
      int    CPTCCS43                   644- 646   ///
      int    CPTCCS44                   647- 649   ///
      int    CPTCCS45                   650- 652   ///
      int    CPTCCS46                   653- 655   ///
      int    CPTCCS47                   656- 658   ///
      int    CPTCCS48                   659- 661   ///
      int    CPTCCS49                   662- 664   ///
      int    CPTCCS50                   665- 667   ///
      int    CPTCCS51                   668- 670   ///
      int    CPTCCS52                   671- 673   ///
      int    CPTCCS53                   674- 676   ///
      int    CPTCCS54                   677- 679   ///
      int    CPTCCS55                   680- 682   ///
      int    CPTCCS56                   683- 685   ///
      int    CPTCCS57                   686- 688   ///
      int    CPTCCS58                   689- 691   ///
      int    CPTCCS59                   692- 694   ///
      int    CPTCCS60                   695- 697   ///
      int    CPTCCS61                   698- 700   ///
      int    CPTCCS62                   701- 703   ///
      int    CPTCCS63                   704- 706   ///
      int    CPTCCS64                   707- 709   ///
      int    CPTCCS65                   710- 712   ///
      int    CPTCCS66                   713- 715   ///
      int    CPTCCS67                   716- 718   ///
      int    CPTCCS68                   719- 721   ///
      int    CPTCCS69                   722- 724   ///
      int    CPTCCS70                   725- 727   ///
      int    CPTCCS71                   728- 730   ///
      int    CPTCCS72                   731- 733   ///
      int    CPTCCS73                   734- 736   ///
      int    CPTCCS74                   737- 739   ///
      int    CPTCCS75                   740- 742   ///
      int    CPTCCS76                   743- 745   ///
      int    CPTCCS77                   746- 748   ///
      int    CPTCCS78                   749- 751   ///
      int    CPTCCS79                   752- 754   ///
      int    CPTCCS80                   755- 757   ///
      int    CPTCCS81                   758- 760   ///
      int    CPTCCS82                   761- 763   ///
      int    CPTCCS83                   764- 766   ///
      int    CPTCCS84                   767- 769   ///
      int    CPTCCS85                   770- 772   ///
      int    CPTCCS86                   773- 775   ///
      int    CPTCCS87                   776- 778   ///
      int    CPTCCS88                   779- 781   ///
      int    CPTCCS89                   782- 784   ///
      int    CPTCCS90                   785- 787   ///
      int    CPTCCS91                   788- 790   ///
      int    CPTCCS92                   791- 793   ///
      int    CPTCCS93                   794- 796   ///
      int    CPTCCS94                   797- 799   ///
      int    CPTCCS95                   800- 802   ///
      int    CPTCCS96                   803- 805   ///
      int    CPTCCS97                   806- 808   ///
      int    CPTCCS98                   809- 811   ///
      int    CPTCCS99                   812- 814   ///
      int    CPTCCS100                  815- 817   ///
      int    CPTCCS101                  818- 820   ///
      str    CPTM1_1                    821- 822   ///
      str    CPTM1_2                    823- 824   ///
      str    CPTM1_3                    825- 826   ///
      str    CPTM1_4                    827- 828   ///
      str    CPTM1_5                    829- 830   ///
      str    CPTM1_6                    831- 832   ///
      str    CPTM1_7                    833- 834   ///
      str    CPTM1_8                    835- 836   ///
      str    CPTM1_9                    837- 838   ///
      str    CPTM1_10                   839- 840   ///
      str    CPTM1_11                   841- 842   ///
      str    CPTM1_12                   843- 844   ///
      str    CPTM1_13                   845- 846   ///
      str    CPTM1_14                   847- 848   ///
      str    CPTM1_15                   849- 850   ///
      str    CPTM1_16                   851- 852   ///
      str    CPTM1_17                   853- 854   ///
      str    CPTM1_18                   855- 856   ///
      str    CPTM1_19                   857- 858   ///
      str    CPTM1_20                   859- 860   ///
      str    CPTM1_21                   861- 862   ///
      str    CPTM1_22                   863- 864   ///
      str    CPTM1_23                   865- 866   ///
      str    CPTM1_24                   867- 868   ///
      str    CPTM1_25                   869- 870   ///
      str    CPTM1_26                   871- 872   ///
      str    CPTM1_27                   873- 874   ///
      str    CPTM1_28                   875- 876   ///
      str    CPTM1_29                   877- 878   ///
      str    CPTM1_30                   879- 880   ///
      str    CPTM1_31                   881- 882   ///
      str    CPTM1_32                   883- 884   ///
      str    CPTM1_33                   885- 886   ///
      str    CPTM1_34                   887- 888   ///
      str    CPTM1_35                   889- 890   ///
      str    CPTM1_36                   891- 892   ///
      str    CPTM1_37                   893- 894   ///
      str    CPTM1_38                   895- 896   ///
      str    CPTM1_39                   897- 898   ///
      str    CPTM1_40                   899- 900   ///
      str    CPTM1_41                   901- 902   ///
      str    CPTM1_42                   903- 904   ///
      str    CPTM1_43                   905- 906   ///
      str    CPTM1_44                   907- 908   ///
      str    CPTM1_45                   909- 910   ///
      str    CPTM1_46                   911- 912   ///
      str    CPTM1_47                   913- 914   ///
      str    CPTM1_48                   915- 916   ///
      str    CPTM1_49                   917- 918   ///
      str    CPTM1_50                   919- 920   ///
      str    CPTM1_51                   921- 922   ///
      str    CPTM1_52                   923- 924   ///
      str    CPTM1_53                   925- 926   ///
      str    CPTM1_54                   927- 928   ///
      str    CPTM1_55                   929- 930   ///
      str    CPTM1_56                   931- 932   ///
      str    CPTM1_57                   933- 934   ///
      str    CPTM1_58                   935- 936   ///
      str    CPTM1_59                   937- 938   ///
      str    CPTM1_60                   939- 940   ///
      str    CPTM1_61                   941- 942   ///
      str    CPTM1_62                   943- 944   ///
      str    CPTM1_63                   945- 946   ///
      str    CPTM1_64                   947- 948   ///
      str    CPTM1_65                   949- 950   ///
      str    CPTM1_66                   951- 952   ///
      str    CPTM1_67                   953- 954   ///
      str    CPTM1_68                   955- 956   ///
      str    CPTM1_69                   957- 958   ///
      str    CPTM1_70                   959- 960   ///
      str    CPTM1_71                   961- 962   ///
      str    CPTM1_72                   963- 964   ///
      str    CPTM1_73                   965- 966   ///
      str    CPTM1_74                   967- 968   ///
      str    CPTM1_75                   969- 970   ///
      str    CPTM1_76                   971- 972   ///
      str    CPTM1_77                   973- 974   ///
      str    CPTM1_78                   975- 976   ///
      str    CPTM1_79                   977- 978   ///
      str    CPTM1_80                   979- 980   ///
      str    CPTM1_81                   981- 982   ///
      str    CPTM1_82                   983- 984   ///
      str    CPTM1_83                   985- 986   ///
      str    CPTM1_84                   987- 988   ///
      str    CPTM1_85                   989- 990   ///
      str    CPTM1_86                   991- 992   ///
      str    CPTM1_87                   993- 994   ///
      str    CPTM1_88                   995- 996   ///
      str    CPTM1_89                   997- 998   ///
      str    CPTM1_90                   999-1000   ///
      str    CPTM1_91                  1001-1002   ///
      str    CPTM1_92                  1003-1004   ///
      str    CPTM1_93                  1005-1006   ///
      str    CPTM1_94                  1007-1008   ///
      str    CPTM1_95                  1009-1010   ///
      str    CPTM1_96                  1011-1012   ///
      str    CPTM1_97                  1013-1014   ///
      str    CPTM1_98                  1015-1016   ///
      str    CPTM1_99                  1017-1018   ///
      str    CPTM1_100                 1019-1020   ///
      str    CPTM1_101                 1021-1022   ///
      str    CPTM2_1                   1023-1024   ///
      str    CPTM2_2                   1025-1026   ///
      str    CPTM2_3                   1027-1028   ///
      str    CPTM2_4                   1029-1030   ///
      str    CPTM2_5                   1031-1032   ///
      str    CPTM2_6                   1033-1034   ///
      str    CPTM2_7                   1035-1036   ///
      str    CPTM2_8                   1037-1038   ///
      str    CPTM2_9                   1039-1040   ///
      str    CPTM2_10                  1041-1042   ///
      str    CPTM2_11                  1043-1044   ///
      str    CPTM2_12                  1045-1046   ///
      str    CPTM2_13                  1047-1048   ///
      str    CPTM2_14                  1049-1050   ///
      str    CPTM2_15                  1051-1052   ///
      str    CPTM2_16                  1053-1054   ///
      str    CPTM2_17                  1055-1056   ///
      str    CPTM2_18                  1057-1058   ///
      str    CPTM2_19                  1059-1060   ///
      str    CPTM2_20                  1061-1062   ///
      str    CPTM2_21                  1063-1064   ///
      str    CPTM2_22                  1065-1066   ///
      str    CPTM2_23                  1067-1068   ///
      str    CPTM2_24                  1069-1070   ///
      str    CPTM2_25                  1071-1072   ///
      str    CPTM2_26                  1073-1074   ///
      str    CPTM2_27                  1075-1076   ///
      str    CPTM2_28                  1077-1078   ///
      str    CPTM2_29                  1079-1080   ///
      str    CPTM2_30                  1081-1082   ///
      str    CPTM2_31                  1083-1084   ///
      str    CPTM2_32                  1085-1086   ///
      str    CPTM2_33                  1087-1088   ///
      str    CPTM2_34                  1089-1090   ///
      str    CPTM2_35                  1091-1092   ///
      str    CPTM2_36                  1093-1094   ///
      str    CPTM2_37                  1095-1096   ///
      str    CPTM2_38                  1097-1098   ///
      str    CPTM2_39                  1099-1100   ///
      str    CPTM2_40                  1101-1102   ///
      str    CPTM2_41                  1103-1104   ///
      str    CPTM2_42                  1105-1106   ///
      str    CPTM2_43                  1107-1108   ///
      str    CPTM2_44                  1109-1110   ///
      str    CPTM2_45                  1111-1112   ///
      str    CPTM2_46                  1113-1114   ///
      str    CPTM2_47                  1115-1116   ///
      str    CPTM2_48                  1117-1118   ///
      str    CPTM2_49                  1119-1120   ///
      str    CPTM2_50                  1121-1122   ///
      str    CPTM2_51                  1123-1124   ///
      str    CPTM2_52                  1125-1126   ///
      str    CPTM2_53                  1127-1128   ///
      str    CPTM2_54                  1129-1130   ///
      str    CPTM2_55                  1131-1132   ///
      str    CPTM2_56                  1133-1134   ///
      str    CPTM2_57                  1135-1136   ///
      str    CPTM2_58                  1137-1138   ///
      str    CPTM2_59                  1139-1140   ///
      str    CPTM2_60                  1141-1142   ///
      str    CPTM2_61                  1143-1144   ///
      str    CPTM2_62                  1145-1146   ///
      str    CPTM2_63                  1147-1148   ///
      str    CPTM2_64                  1149-1150   ///
      str    CPTM2_65                  1151-1152   ///
      str    CPTM2_66                  1153-1154   ///
      str    CPTM2_67                  1155-1156   ///
      str    CPTM2_68                  1157-1158   ///
      str    CPTM2_69                  1159-1160   ///
      str    CPTM2_70                  1161-1162   ///
      str    CPTM2_71                  1163-1164   ///
      str    CPTM2_72                  1165-1166   ///
      str    CPTM2_73                  1167-1168   ///
      str    CPTM2_74                  1169-1170   ///
      str    CPTM2_75                  1171-1172   ///
      str    CPTM2_76                  1173-1174   ///
      str    CPTM2_77                  1175-1176   ///
      str    CPTM2_78                  1177-1178   ///
      str    CPTM2_79                  1179-1180   ///
      str    CPTM2_80                  1181-1182   ///
      str    CPTM2_81                  1183-1184   ///
      str    CPTM2_82                  1185-1186   ///
      str    CPTM2_83                  1187-1188   ///
      str    CPTM2_84                  1189-1190   ///
      str    CPTM2_85                  1191-1192   ///
      str    CPTM2_86                  1193-1194   ///
      str    CPTM2_87                  1195-1196   ///
      str    CPTM2_88                  1197-1198   ///
      str    CPTM2_89                  1199-1200   ///
      str    CPTM2_90                  1201-1202   ///
      str    CPTM2_91                  1203-1204   ///
      str    CPTM2_92                  1205-1206   ///
      str    CPTM2_93                  1207-1208   ///
      str    CPTM2_94                  1209-1210   ///
      str    CPTM2_95                  1211-1212   ///
      str    CPTM2_96                  1213-1214   ///
      str    CPTM2_97                  1215-1216   ///
      str    CPTM2_98                  1217-1218   ///
      str    CPTM2_99                  1219-1220   ///
      str    CPTM2_100                 1221-1222   ///
      str    CPTM2_101                 1223-1224   ///
      byte   DIED                      1225-1226   ///
      byte   DISPUB04                  1227-1228   ///
      byte   DISPUNIFORM               1229-1230   ///
      str    DISP_X                    1231-1232   ///
      byte   DMONTH                    1233-1234   ///
      byte   DQTR                      1235-1236   ///
      str    DX1                       1237-1243   ///
      str    DX2                       1244-1250   ///
      str    DX3                       1251-1257   ///
      str    DX4                       1258-1264   ///
      str    DX5                       1265-1271   ///
      str    DX6                       1272-1278   ///
      str    DX7                       1279-1285   ///
      str    DX8                       1286-1292   ///
      str    DX9                       1293-1299   ///
      str    DX10                      1300-1306   ///
      int    DXCCS1                    1307-1310   ///
      int    DXCCS2                    1311-1314   ///
      int    DXCCS3                    1315-1318   ///
      int    DXCCS4                    1319-1322   ///
      int    DXCCS5                    1323-1326   ///
      int    DXCCS6                    1327-1330   ///
      int    DXCCS7                    1331-1334   ///
      int    DXCCS8                    1335-1338   ///
      int    DXCCS9                    1339-1342   ///
      int    DXCCS10                   1343-1346   ///
      int    DXVER                     1347-1349   ///
      str    ECODE1                    1350-1356   ///
      str    ECODE2                    1357-1363   ///
      str    ECODE3                    1364-1370   ///
      str    ECODE4                    1371-1377   ///
      str    ECODE5                    1378-1384   ///
      str    ECODE6                    1385-1391   ///
      str    ECODE7                    1392-1398   ///
      str    ECODE8                    1399-1405   ///
      int    E_CCS1                    1406-1409   ///
      int    E_CCS2                    1410-1413   ///
      int    E_CCS3                    1414-1417   ///
      int    E_CCS4                    1418-1421   ///
      int    E_CCS5                    1422-1425   ///
      int    E_CCS6                    1426-1429   ///
      int    E_CCS7                    1430-1433   ///
      int    E_CCS8                    1434-1437   ///
      byte   FEMALE                    1438-1439   ///
      byte   HCUP_ED                   1440-1441   ///
      byte   HCUP_OS                   1442-1443   ///
      int    HOSPBRTH                  1444-1446   ///
      str    HOSPST                    1447-1448   ///
      double KEY                       1449-1463   ///
      long   LOS                       1464-1468   ///
      long   LOS_X                     1469-1474   ///
      byte   MEDINCSTQ                 1475-1476   ///
      long   MRN_R                     1477-1485   ///
      int    NCHRONIC                  1486-1488   ///
      int    NCPT                      1489-1492   ///
      int    NDX                       1493-1495   ///
      byte   NECODE                    1496-1497   ///
      byte   NEOMAT                    1498-1499   ///
      int    NPR                       1500-1502   ///
      byte   ORPROC                    1503-1504   ///
      double OS_TIME                   1505-1515   ///
      byte   PAY1                      1516-1517   ///
      str    PAY1_X                    1518-1519   ///
      int    PL_CBSA                   1520-1522   ///
      byte   PL_NCHS                   1523-1524   ///
      byte   PL_RUCC                   1525-1526   ///
      byte   PL_UIC                    1527-1528   ///
      byte   PL_UR_CAT4                1529-1530   ///
      str    PR1                       1531-1537   ///
      str    PR2                       1538-1544   ///
      str    PR3                       1545-1551   ///
      str    PR4                       1552-1558   ///
      str    PR5                       1559-1565   ///
      str    PR6                       1566-1572   ///
      str    PR7                       1573-1579   ///
      str    PR8                       1580-1586   ///
      str    PR9                       1587-1593   ///
      str    PR10                      1594-1600   ///
      int    PRCCS1                    1601-1603   ///
      int    PRCCS2                    1604-1606   ///
      int    PRCCS3                    1607-1609   ///
      int    PRCCS4                    1610-1612   ///
      int    PRCCS5                    1613-1615   ///
      int    PRCCS6                    1616-1618   ///
      int    PRCCS7                    1619-1621   ///
      int    PRCCS8                    1622-1624   ///
      int    PRCCS9                    1625-1627   ///
      int    PRCCS10                   1628-1630   ///
      long   PRDAY1                    1631-1635   ///
      long   PRDAY2                    1636-1640   ///
      long   PRDAY3                    1641-1645   ///
      long   PRDAY4                    1646-1650   ///
      long   PRDAY5                    1651-1655   ///
      long   PRDAY6                    1656-1660   ///
      long   PRDAY7                    1661-1665   ///
      long   PRDAY8                    1666-1670   ///
      long   PRDAY9                    1671-1675   ///
      long   PRDAY10                   1676-1680   ///
      int    PROCTYPE                  1681-1683   ///
      int    PRVER                     1684-1686   ///
      str    PSTATE                    1687-1688   ///
      long   PSTCO2                    1689-1693   ///
      str    PointOfOriginUB04         1694        ///
      str    PointOfOrigin_X           1695        ///
      byte   RACE                      1696-1697   ///
      str    RACE_X                    1698-1699   ///
      byte   STATE_AS                  1700-1701   ///
      byte   STATE_ED                  1702-1703   ///
      byte   STATE_OS                  1704-1705   ///
      double TOTCHG                    1706-1715   ///
      double TOTCHG_X                  1716-1730   ///
      int    YEAR                      1731-1734   ///
      str    ZIP3                      1735-1737   ///
      int    ZIPINC_QRTL               1738-1740   ///
      long   HOSPID                    1741-1745   ///
      int    AGEGROUP                  1746-1748   ///
      int    AYEAR                     1749-1752   ///
      byte   BMONTH                    1753-1754   ///
      int    BYEAR                     1755-1758   ///
      byte   PRMONTH1                  1759-1760   ///
      byte   PRMONTH2                  1761-1762   ///
      byte   PRMONTH3                  1763-1764   ///
      byte   PRMONTH4                  1765-1766   ///
      byte   PRMONTH5                  1767-1768   ///
      byte   PRMONTH6                  1769-1770   ///
      byte   PRMONTH7                  1771-1772   ///
      byte   PRMONTH8                  1773-1774   ///
      byte   PRMONTH9                  1775-1776   ///
      byte   PRMONTH10                 1777-1778   ///
      int    PRYEAR1                   1779-1782   ///
      int    PRYEAR2                   1783-1786   ///
      int    PRYEAR3                   1787-1790   ///
      int    PRYEAR4                   1791-1794   ///
      int    PRYEAR5                   1795-1798   ///
      int    PRYEAR6                   1799-1802   ///
      int    PRYEAR7                   1803-1806   ///
      int    PRYEAR8                   1807-1810   ///
      int    PRYEAR9                   1811-1814   ///
      int    PRYEAR10                  1815-1818   ///
      using  "HI_SEDD_2014_CORE.ASC"

***  Assign labels to the data elements ***
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
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
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
label var DXVER                    "Diagnosis Version"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var ECODE8                   "E code 8"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_CCS7                   "CCS: E Code 7"
label var E_CCS8                   "CCS: E Code 8"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var NCHRONIC                 "Number of chronic conditions"
label var NCPT                     "Number of CPT/HCPCS procedures on this record"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes(RUCC)"
label var PL_UIC                   "Patient location: Urban Influence Codes"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
label var PR1                      "Procedure 1"
label var PR2                      "Procedure 2"
label var PR3                      "Procedure 3"
label var PR4                      "Procedure 4"
label var PR5                      "Procedure 5"
label var PR6                      "Procedure 6"
label var PR7                      "Procedure 7"
label var PR8                      "Procedure 8"
label var PR9                      "Procedure 9"
label var PR10                     "Procedure 10"
label var PRCCS1                   "CCS: procedure 1"
label var PRCCS2                   "CCS: procedure 2"
label var PRCCS3                   "CCS: procedure 3"
label var PRCCS4                   "CCS: procedure 4"
label var PRCCS5                   "CCS: procedure 5"
label var PRCCS6                   "CCS: procedure 6"
label var PRCCS7                   "CCS: procedure 7"
label var PRCCS8                   "CCS: procedure 8"
label var PRCCS9                   "CCS: procedure 9"
label var PRCCS10                  "CCS: procedure 10"
label var PRDAY1                   "Number of days from admission to PR1"
label var PRDAY2                   "Number of days from admission to PR2"
label var PRDAY3                   "Number of days from admission to PR3"
label var PRDAY4                   "Number of days from admission to PR4"
label var PRDAY5                   "Number of days from admission to PR5"
label var PRDAY6                   "Number of days from admission to PR6"
label var PRDAY7                   "Number of days from admission to PR7"
label var PRDAY8                   "Number of days from admission to PR8"
label var PRDAY9                   "Number of days from admission to PR9"
label var PRDAY10                  "Number of days from admission to PR10"
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var STATE_AS                 "State Ambulatory Surgery service indicator"
label var STATE_ED                 "State Emergency Department service indicator"
label var STATE_OS                 "State Observation Stay service indicator"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var YEAR                     "Calendar year"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var HOSPID                   "HCUP hospital identification number"
label var AGEGROUP                 "Age Group"
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
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
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
recode HOSPBRTH                  (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NCPT                      (-999 -888 -666=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
recode PL_RUCC                   (-9 -8 -6 -5=.)
recode PL_UIC                    (-9 -8 -6 -5=.)
recode PL_UR_CAT4                (-9 -8 -6 -5=.)
recode PRCCS1                    (-99 -88 -66=.)
recode PRCCS2                    (-99 -88 -66=.)
recode PRCCS3                    (-99 -88 -66=.)
recode PRCCS4                    (-99 -88 -66=.)
recode PRCCS5                    (-99 -88 -66=.)
recode PRCCS6                    (-99 -88 -66=.)
recode PRCCS7                    (-99 -88 -66=.)
recode PRCCS8                    (-99 -88 -66=.)
recode PRCCS9                    (-99 -88 -66=.)
recode PRCCS10                   (-99 -88 -66=.)
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
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode STATE_AS                  (-9 -8 -6 -5=.)
recode STATE_ED                  (-9 -8 -6 -5=.)
recode STATE_OS                  (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AGEGROUP                  (-99 -88 -66=.)
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

save "HI_SEDD_2014_CORE.dta", replace
