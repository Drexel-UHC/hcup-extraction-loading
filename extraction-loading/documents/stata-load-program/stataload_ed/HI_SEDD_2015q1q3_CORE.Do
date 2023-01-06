/*****************************************************************************
* Creation Date: 12/07/2017   
* HI_SEDD_2015q1q3_CORE.Do
* This program will load the 2015 HI ASCII CORE File into Stata.
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
      int    CPTCCS1                    423- 425   ///
      int    CPTCCS2                    426- 428   ///
      int    CPTCCS3                    429- 431   ///
      int    CPTCCS4                    432- 434   ///
      int    CPTCCS5                    435- 437   ///
      int    CPTCCS6                    438- 440   ///
      int    CPTCCS7                    441- 443   ///
      int    CPTCCS8                    444- 446   ///
      int    CPTCCS9                    447- 449   ///
      int    CPTCCS10                   450- 452   ///
      int    CPTCCS11                   453- 455   ///
      int    CPTCCS12                   456- 458   ///
      int    CPTCCS13                   459- 461   ///
      int    CPTCCS14                   462- 464   ///
      int    CPTCCS15                   465- 467   ///
      int    CPTCCS16                   468- 470   ///
      int    CPTCCS17                   471- 473   ///
      int    CPTCCS18                   474- 476   ///
      int    CPTCCS19                   477- 479   ///
      int    CPTCCS20                   480- 482   ///
      int    CPTCCS21                   483- 485   ///
      int    CPTCCS22                   486- 488   ///
      int    CPTCCS23                   489- 491   ///
      int    CPTCCS24                   492- 494   ///
      int    CPTCCS25                   495- 497   ///
      int    CPTCCS26                   498- 500   ///
      int    CPTCCS27                   501- 503   ///
      int    CPTCCS28                   504- 506   ///
      int    CPTCCS29                   507- 509   ///
      int    CPTCCS30                   510- 512   ///
      int    CPTCCS31                   513- 515   ///
      int    CPTCCS32                   516- 518   ///
      int    CPTCCS33                   519- 521   ///
      int    CPTCCS34                   522- 524   ///
      int    CPTCCS35                   525- 527   ///
      int    CPTCCS36                   528- 530   ///
      int    CPTCCS37                   531- 533   ///
      int    CPTCCS38                   534- 536   ///
      int    CPTCCS39                   537- 539   ///
      int    CPTCCS40                   540- 542   ///
      int    CPTCCS41                   543- 545   ///
      int    CPTCCS42                   546- 548   ///
      int    CPTCCS43                   549- 551   ///
      int    CPTCCS44                   552- 554   ///
      int    CPTCCS45                   555- 557   ///
      int    CPTCCS46                   558- 560   ///
      int    CPTCCS47                   561- 563   ///
      int    CPTCCS48                   564- 566   ///
      int    CPTCCS49                   567- 569   ///
      int    CPTCCS50                   570- 572   ///
      int    CPTCCS51                   573- 575   ///
      int    CPTCCS52                   576- 578   ///
      int    CPTCCS53                   579- 581   ///
      int    CPTCCS54                   582- 584   ///
      int    CPTCCS55                   585- 587   ///
      int    CPTCCS56                   588- 590   ///
      int    CPTCCS57                   591- 593   ///
      int    CPTCCS58                   594- 596   ///
      int    CPTCCS59                   597- 599   ///
      int    CPTCCS60                   600- 602   ///
      int    CPTCCS61                   603- 605   ///
      int    CPTCCS62                   606- 608   ///
      int    CPTCCS63                   609- 611   ///
      int    CPTCCS64                   612- 614   ///
      int    CPTCCS65                   615- 617   ///
      int    CPTCCS66                   618- 620   ///
      int    CPTCCS67                   621- 623   ///
      int    CPTCCS68                   624- 626   ///
      int    CPTCCS69                   627- 629   ///
      int    CPTCCS70                   630- 632   ///
      int    CPTCCS71                   633- 635   ///
      int    CPTCCS72                   636- 638   ///
      int    CPTCCS73                   639- 641   ///
      int    CPTCCS74                   642- 644   ///
      int    CPTCCS75                   645- 647   ///
      int    CPTCCS76                   648- 650   ///
      int    CPTCCS77                   651- 653   ///
      int    CPTCCS78                   654- 656   ///
      int    CPTCCS79                   657- 659   ///
      int    CPTCCS80                   660- 662   ///
      int    CPTCCS81                   663- 665   ///
      int    CPTCCS82                   666- 668   ///
      str    CPTM1_1                    669- 670   ///
      str    CPTM1_2                    671- 672   ///
      str    CPTM1_3                    673- 674   ///
      str    CPTM1_4                    675- 676   ///
      str    CPTM1_5                    677- 678   ///
      str    CPTM1_6                    679- 680   ///
      str    CPTM1_7                    681- 682   ///
      str    CPTM1_8                    683- 684   ///
      str    CPTM1_9                    685- 686   ///
      str    CPTM1_10                   687- 688   ///
      str    CPTM1_11                   689- 690   ///
      str    CPTM1_12                   691- 692   ///
      str    CPTM1_13                   693- 694   ///
      str    CPTM1_14                   695- 696   ///
      str    CPTM1_15                   697- 698   ///
      str    CPTM1_16                   699- 700   ///
      str    CPTM1_17                   701- 702   ///
      str    CPTM1_18                   703- 704   ///
      str    CPTM1_19                   705- 706   ///
      str    CPTM1_20                   707- 708   ///
      str    CPTM1_21                   709- 710   ///
      str    CPTM1_22                   711- 712   ///
      str    CPTM1_23                   713- 714   ///
      str    CPTM1_24                   715- 716   ///
      str    CPTM1_25                   717- 718   ///
      str    CPTM1_26                   719- 720   ///
      str    CPTM1_27                   721- 722   ///
      str    CPTM1_28                   723- 724   ///
      str    CPTM1_29                   725- 726   ///
      str    CPTM1_30                   727- 728   ///
      str    CPTM1_31                   729- 730   ///
      str    CPTM1_32                   731- 732   ///
      str    CPTM1_33                   733- 734   ///
      str    CPTM1_34                   735- 736   ///
      str    CPTM1_35                   737- 738   ///
      str    CPTM1_36                   739- 740   ///
      str    CPTM1_37                   741- 742   ///
      str    CPTM1_38                   743- 744   ///
      str    CPTM1_39                   745- 746   ///
      str    CPTM1_40                   747- 748   ///
      str    CPTM1_41                   749- 750   ///
      str    CPTM1_42                   751- 752   ///
      str    CPTM1_43                   753- 754   ///
      str    CPTM1_44                   755- 756   ///
      str    CPTM1_45                   757- 758   ///
      str    CPTM1_46                   759- 760   ///
      str    CPTM1_47                   761- 762   ///
      str    CPTM1_48                   763- 764   ///
      str    CPTM1_49                   765- 766   ///
      str    CPTM1_50                   767- 768   ///
      str    CPTM1_51                   769- 770   ///
      str    CPTM1_52                   771- 772   ///
      str    CPTM1_53                   773- 774   ///
      str    CPTM1_54                   775- 776   ///
      str    CPTM1_55                   777- 778   ///
      str    CPTM1_56                   779- 780   ///
      str    CPTM1_57                   781- 782   ///
      str    CPTM1_58                   783- 784   ///
      str    CPTM1_59                   785- 786   ///
      str    CPTM1_60                   787- 788   ///
      str    CPTM1_61                   789- 790   ///
      str    CPTM1_62                   791- 792   ///
      str    CPTM1_63                   793- 794   ///
      str    CPTM1_64                   795- 796   ///
      str    CPTM1_65                   797- 798   ///
      str    CPTM1_66                   799- 800   ///
      str    CPTM1_67                   801- 802   ///
      str    CPTM1_68                   803- 804   ///
      str    CPTM1_69                   805- 806   ///
      str    CPTM1_70                   807- 808   ///
      str    CPTM1_71                   809- 810   ///
      str    CPTM1_72                   811- 812   ///
      str    CPTM1_73                   813- 814   ///
      str    CPTM1_74                   815- 816   ///
      str    CPTM1_75                   817- 818   ///
      str    CPTM1_76                   819- 820   ///
      str    CPTM1_77                   821- 822   ///
      str    CPTM1_78                   823- 824   ///
      str    CPTM1_79                   825- 826   ///
      str    CPTM1_80                   827- 828   ///
      str    CPTM1_81                   829- 830   ///
      str    CPTM1_82                   831- 832   ///
      str    CPTM2_1                    833- 834   ///
      str    CPTM2_2                    835- 836   ///
      str    CPTM2_3                    837- 838   ///
      str    CPTM2_4                    839- 840   ///
      str    CPTM2_5                    841- 842   ///
      str    CPTM2_6                    843- 844   ///
      str    CPTM2_7                    845- 846   ///
      str    CPTM2_8                    847- 848   ///
      str    CPTM2_9                    849- 850   ///
      str    CPTM2_10                   851- 852   ///
      str    CPTM2_11                   853- 854   ///
      str    CPTM2_12                   855- 856   ///
      str    CPTM2_13                   857- 858   ///
      str    CPTM2_14                   859- 860   ///
      str    CPTM2_15                   861- 862   ///
      str    CPTM2_16                   863- 864   ///
      str    CPTM2_17                   865- 866   ///
      str    CPTM2_18                   867- 868   ///
      str    CPTM2_19                   869- 870   ///
      str    CPTM2_20                   871- 872   ///
      str    CPTM2_21                   873- 874   ///
      str    CPTM2_22                   875- 876   ///
      str    CPTM2_23                   877- 878   ///
      str    CPTM2_24                   879- 880   ///
      str    CPTM2_25                   881- 882   ///
      str    CPTM2_26                   883- 884   ///
      str    CPTM2_27                   885- 886   ///
      str    CPTM2_28                   887- 888   ///
      str    CPTM2_29                   889- 890   ///
      str    CPTM2_30                   891- 892   ///
      str    CPTM2_31                   893- 894   ///
      str    CPTM2_32                   895- 896   ///
      str    CPTM2_33                   897- 898   ///
      str    CPTM2_34                   899- 900   ///
      str    CPTM2_35                   901- 902   ///
      str    CPTM2_36                   903- 904   ///
      str    CPTM2_37                   905- 906   ///
      str    CPTM2_38                   907- 908   ///
      str    CPTM2_39                   909- 910   ///
      str    CPTM2_40                   911- 912   ///
      str    CPTM2_41                   913- 914   ///
      str    CPTM2_42                   915- 916   ///
      str    CPTM2_43                   917- 918   ///
      str    CPTM2_44                   919- 920   ///
      str    CPTM2_45                   921- 922   ///
      str    CPTM2_46                   923- 924   ///
      str    CPTM2_47                   925- 926   ///
      str    CPTM2_48                   927- 928   ///
      str    CPTM2_49                   929- 930   ///
      str    CPTM2_50                   931- 932   ///
      str    CPTM2_51                   933- 934   ///
      str    CPTM2_52                   935- 936   ///
      str    CPTM2_53                   937- 938   ///
      str    CPTM2_54                   939- 940   ///
      str    CPTM2_55                   941- 942   ///
      str    CPTM2_56                   943- 944   ///
      str    CPTM2_57                   945- 946   ///
      str    CPTM2_58                   947- 948   ///
      str    CPTM2_59                   949- 950   ///
      str    CPTM2_60                   951- 952   ///
      str    CPTM2_61                   953- 954   ///
      str    CPTM2_62                   955- 956   ///
      str    CPTM2_63                   957- 958   ///
      str    CPTM2_64                   959- 960   ///
      str    CPTM2_65                   961- 962   ///
      str    CPTM2_66                   963- 964   ///
      str    CPTM2_67                   965- 966   ///
      str    CPTM2_68                   967- 968   ///
      str    CPTM2_69                   969- 970   ///
      str    CPTM2_70                   971- 972   ///
      str    CPTM2_71                   973- 974   ///
      str    CPTM2_72                   975- 976   ///
      str    CPTM2_73                   977- 978   ///
      str    CPTM2_74                   979- 980   ///
      str    CPTM2_75                   981- 982   ///
      str    CPTM2_76                   983- 984   ///
      str    CPTM2_77                   985- 986   ///
      str    CPTM2_78                   987- 988   ///
      str    CPTM2_79                   989- 990   ///
      str    CPTM2_80                   991- 992   ///
      str    CPTM2_81                   993- 994   ///
      str    CPTM2_82                   995- 996   ///
      byte   DIED                       997- 998   ///
      str    DISP_X                     999-1000   ///
      byte   DISPUB04                  1001-1002   ///
      byte   DISPUNIFORM               1003-1004   ///
      byte   DMONTH                    1005-1006   ///
      byte   DQTR                      1007-1008   ///
      str    DX1                       1009-1015   ///
      str    DX2                       1016-1022   ///
      str    DX3                       1023-1029   ///
      str    DX4                       1030-1036   ///
      str    DX5                       1037-1043   ///
      str    DX6                       1044-1050   ///
      str    DX7                       1051-1057   ///
      str    DX8                       1058-1064   ///
      str    DX9                       1065-1071   ///
      str    DX10                      1072-1078   ///
      str    DX11                      1079-1085   ///
      str    DX12                      1086-1092   ///
      str    DX13                      1093-1099   ///
      str    DX14                      1100-1106   ///
      str    DX15                      1107-1113   ///
      str    DX16                      1114-1120   ///
      str    DX17                      1121-1127   ///
      str    DX18                      1128-1134   ///
      str    DX19                      1135-1141   ///
      str    DX20                      1142-1148   ///
      str    DX21                      1149-1155   ///
      str    DX22                      1156-1162   ///
      str    DX23                      1163-1169   ///
      str    DX24                      1170-1176   ///
      str    DX25                      1177-1183   ///
      str    DX26                      1184-1190   ///
      str    DX27                      1191-1197   ///
      str    DX28                      1198-1204   ///
      int    DXCCS1                    1205-1208   ///
      int    DXCCS2                    1209-1212   ///
      int    DXCCS3                    1213-1216   ///
      int    DXCCS4                    1217-1220   ///
      int    DXCCS5                    1221-1224   ///
      int    DXCCS6                    1225-1228   ///
      int    DXCCS7                    1229-1232   ///
      int    DXCCS8                    1233-1236   ///
      int    DXCCS9                    1237-1240   ///
      int    DXCCS10                   1241-1244   ///
      int    DXCCS11                   1245-1248   ///
      int    DXCCS12                   1249-1252   ///
      int    DXCCS13                   1253-1256   ///
      int    DXCCS14                   1257-1260   ///
      int    DXCCS15                   1261-1264   ///
      int    DXCCS16                   1265-1268   ///
      int    DXCCS17                   1269-1272   ///
      int    DXCCS18                   1273-1276   ///
      int    DXCCS19                   1277-1280   ///
      int    DXCCS20                   1281-1284   ///
      int    DXCCS21                   1285-1288   ///
      int    DXCCS22                   1289-1292   ///
      int    DXCCS23                   1293-1296   ///
      int    DXCCS24                   1297-1300   ///
      int    DXCCS25                   1301-1304   ///
      int    DXCCS26                   1305-1308   ///
      int    DXCCS27                   1309-1312   ///
      int    DXCCS28                   1313-1316   ///
      int    DXVER                     1317-1319   ///
      int    E_CCS1                    1320-1323   ///
      int    E_CCS2                    1324-1327   ///
      int    E_CCS3                    1328-1331   ///
      int    E_CCS4                    1332-1335   ///
      int    E_CCS5                    1336-1339   ///
      int    E_CCS6                    1340-1343   ///
      int    E_CCS7                    1344-1347   ///
      int    E_CCS8                    1348-1351   ///
      str    ECODE1                    1352-1358   ///
      str    ECODE2                    1359-1365   ///
      str    ECODE3                    1366-1372   ///
      str    ECODE4                    1373-1379   ///
      str    ECODE5                    1380-1386   ///
      str    ECODE6                    1387-1393   ///
      str    ECODE7                    1394-1400   ///
      str    ECODE8                    1401-1407   ///
      byte   FEMALE                    1408-1409   ///
      byte   HCUP_ED                   1410-1411   ///
      byte   HCUP_OS                   1412-1413   ///
      int    HOSPBRTH                  1414-1416   ///
      str    HOSPST                    1417-1418   ///
      double KEY                       1419-1433   ///
      long   LOS                       1434-1438   ///
      long   LOS_X                     1439-1444   ///
      byte   MEDINCSTQ                 1445-1446   ///
      long   MRN_R                     1447-1455   ///
      int    NCHRONIC                  1456-1458   ///
      int    NCPT                      1459-1462   ///
      int    NDX                       1463-1465   ///
      byte   NECODE                    1466-1467   ///
      byte   NEOMAT                    1468-1469   ///
      int    NPR                       1470-1472   ///
      byte   ORPROC                    1473-1474   ///
      double OS_TIME                   1475-1485   ///
      byte   PAY1                      1486-1487   ///
      str    PAY1_X                    1488-1489   ///
      int    PL_CBSA                   1490-1492   ///
      byte   PL_NCHS                   1493-1494   ///
      byte   PL_RUCC                   1495-1496   ///
      byte   PL_UIC                    1497-1498   ///
      byte   PL_UR_CAT4                1499-1500   ///
      str    PointOfOrigin_X           1501        ///
      str    PointOfOriginUB04         1502        ///
      str    PR1                       1503-1509   ///
      str    PR2                       1510-1516   ///
      str    PR3                       1517-1523   ///
      str    PR4                       1524-1530   ///
      str    PR5                       1531-1537   ///
      str    PR6                       1538-1544   ///
      str    PR7                       1545-1551   ///
      str    PR8                       1552-1558   ///
      str    PR9                       1559-1565   ///
      str    PR10                      1566-1572   ///
      str    PR11                      1573-1579   ///
      str    PR12                      1580-1586   ///
      str    PR13                      1587-1593   ///
      str    PR14                      1594-1600   ///
      str    PR15                      1601-1607   ///
      str    PR16                      1608-1614   ///
      str    PR17                      1615-1621   ///
      str    PR18                      1622-1628   ///
      str    PR19                      1629-1635   ///
      str    PR20                      1636-1642   ///
      str    PR21                      1643-1649   ///
      str    PR22                      1650-1656   ///
      str    PR23                      1657-1663   ///
      str    PR24                      1664-1670   ///
      str    PR25                      1671-1677   ///
      int    PRCCS1                    1678-1680   ///
      int    PRCCS2                    1681-1683   ///
      int    PRCCS3                    1684-1686   ///
      int    PRCCS4                    1687-1689   ///
      int    PRCCS5                    1690-1692   ///
      int    PRCCS6                    1693-1695   ///
      int    PRCCS7                    1696-1698   ///
      int    PRCCS8                    1699-1701   ///
      int    PRCCS9                    1702-1704   ///
      int    PRCCS10                   1705-1707   ///
      int    PRCCS11                   1708-1710   ///
      int    PRCCS12                   1711-1713   ///
      int    PRCCS13                   1714-1716   ///
      int    PRCCS14                   1717-1719   ///
      int    PRCCS15                   1720-1722   ///
      int    PRCCS16                   1723-1725   ///
      int    PRCCS17                   1726-1728   ///
      int    PRCCS18                   1729-1731   ///
      int    PRCCS19                   1732-1734   ///
      int    PRCCS20                   1735-1737   ///
      int    PRCCS21                   1738-1740   ///
      int    PRCCS22                   1741-1743   ///
      int    PRCCS23                   1744-1746   ///
      int    PRCCS24                   1747-1749   ///
      int    PRCCS25                   1750-1752   ///
      long   PRDAY1                    1753-1757   ///
      long   PRDAY2                    1758-1762   ///
      long   PRDAY3                    1763-1767   ///
      long   PRDAY4                    1768-1772   ///
      long   PRDAY5                    1773-1777   ///
      long   PRDAY6                    1778-1782   ///
      long   PRDAY7                    1783-1787   ///
      long   PRDAY8                    1788-1792   ///
      long   PRDAY9                    1793-1797   ///
      long   PRDAY10                   1798-1802   ///
      long   PRDAY11                   1803-1807   ///
      long   PRDAY12                   1808-1812   ///
      long   PRDAY13                   1813-1817   ///
      long   PRDAY14                   1818-1822   ///
      long   PRDAY15                   1823-1827   ///
      long   PRDAY16                   1828-1832   ///
      long   PRDAY17                   1833-1837   ///
      long   PRDAY18                   1838-1842   ///
      long   PRDAY19                   1843-1847   ///
      long   PRDAY20                   1848-1852   ///
      long   PRDAY21                   1853-1857   ///
      long   PRDAY22                   1858-1862   ///
      long   PRDAY23                   1863-1867   ///
      long   PRDAY24                   1868-1872   ///
      long   PRDAY25                   1873-1877   ///
      int    PROCTYPE                  1878-1880   ///
      int    PRVER                     1881-1883   ///
      str    PSTATE                    1884-1885   ///
      long   PSTCO2                    1886-1890   ///
      byte   RACE                      1891-1892   ///
      str    RACE_X                    1893-1894   ///
      byte   STATE_AS                  1895-1896   ///
      byte   STATE_ED                  1897-1898   ///
      byte   STATE_OS                  1899-1900   ///
      double TOTCHG                    1901-1910   ///
      double TOTCHG_X                  1911-1925   ///
      int    YEAR                      1926-1929   ///
      str    ZIP3                      1930-1932   ///
      int    ZIPINC_QRTL               1933-1935   ///
      long   HOSPID                    1936-1940   ///
      int    AGEGROUP                  1941-1943   ///
      int    AYEAR                     1944-1947   ///
      byte   BMONTH                    1948-1949   ///
      int    BYEAR                     1950-1953   ///
      byte   PRMONTH1                  1954-1955   ///
      byte   PRMONTH2                  1956-1957   ///
      byte   PRMONTH3                  1958-1959   ///
      byte   PRMONTH4                  1960-1961   ///
      byte   PRMONTH5                  1962-1963   ///
      byte   PRMONTH6                  1964-1965   ///
      byte   PRMONTH7                  1966-1967   ///
      byte   PRMONTH8                  1968-1969   ///
      byte   PRMONTH9                  1970-1971   ///
      byte   PRMONTH10                 1972-1973   ///
      byte   PRMONTH11                 1974-1975   ///
      byte   PRMONTH12                 1976-1977   ///
      byte   PRMONTH13                 1978-1979   ///
      byte   PRMONTH14                 1980-1981   ///
      byte   PRMONTH15                 1982-1983   ///
      byte   PRMONTH16                 1984-1985   ///
      byte   PRMONTH17                 1986-1987   ///
      byte   PRMONTH18                 1988-1989   ///
      byte   PRMONTH19                 1990-1991   ///
      byte   PRMONTH20                 1992-1993   ///
      byte   PRMONTH21                 1994-1995   ///
      byte   PRMONTH22                 1996-1997   ///
      byte   PRMONTH23                 1998-1999   ///
      byte   PRMONTH24                 2000-2001   ///
      byte   PRMONTH25                 2002-2003   ///
      int    PRYEAR1                   2004-2007   ///
      int    PRYEAR2                   2008-2011   ///
      int    PRYEAR3                   2012-2015   ///
      int    PRYEAR4                   2016-2019   ///
      int    PRYEAR5                   2020-2023   ///
      int    PRYEAR6                   2024-2027   ///
      int    PRYEAR7                   2028-2031   ///
      int    PRYEAR8                   2032-2035   ///
      int    PRYEAR9                   2036-2039   ///
      int    PRYEAR10                  2040-2043   ///
      int    PRYEAR11                  2044-2047   ///
      int    PRYEAR12                  2048-2051   ///
      int    PRYEAR13                  2052-2055   ///
      int    PRYEAR14                  2056-2059   ///
      int    PRYEAR15                  2060-2063   ///
      int    PRYEAR16                  2064-2067   ///
      int    PRYEAR17                  2068-2071   ///
      int    PRYEAR18                  2072-2075   ///
      int    PRYEAR19                  2076-2079   ///
      int    PRYEAR20                  2080-2083   ///
      int    PRYEAR21                  2084-2087   ///
      int    PRYEAR22                  2088-2091   ///
      int    PRYEAR23                  2092-2095   ///
      int    PRYEAR24                  2096-2099   ///
      int    PRYEAR25                  2100-2103   ///
      using  "HI_SEDD_2015q1q3_CORE.ASC"

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
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
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
label var DX26                     "Diagnosis 26"
label var DX27                     "Diagnosis 27"
label var DX28                     "Diagnosis 28"
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
label var DXCCS26                  "CCS: diagnosis 26"
label var DXCCS27                  "CCS: diagnosis 27"
label var DXCCS28                  "CCS: diagnosis 28"
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
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var NCHRONIC                 "Number of chronic conditions"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
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
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
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
label var PR11                     "Procedure 11"
label var PR12                     "Procedure 12"
label var PR13                     "Procedure 13"
label var PR14                     "Procedure 14"
label var PR15                     "Procedure 15"
label var PR16                     "Procedure 16"
label var PR17                     "Procedure 17"
label var PR18                     "Procedure 18"
label var PR19                     "Procedure 19"
label var PR20                     "Procedure 20"
label var PR21                     "Procedure 21"
label var PR22                     "Procedure 22"
label var PR23                     "Procedure 23"
label var PR24                     "Procedure 24"
label var PR25                     "Procedure 25"
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
label var PRCCS11                  "CCS: procedure 11"
label var PRCCS12                  "CCS: procedure 12"
label var PRCCS13                  "CCS: procedure 13"
label var PRCCS14                  "CCS: procedure 14"
label var PRCCS15                  "CCS: procedure 15"
label var PRCCS16                  "CCS: procedure 16"
label var PRCCS17                  "CCS: procedure 17"
label var PRCCS18                  "CCS: procedure 18"
label var PRCCS19                  "CCS: procedure 19"
label var PRCCS20                  "CCS: procedure 20"
label var PRCCS21                  "CCS: procedure 21"
label var PRCCS22                  "CCS: procedure 22"
label var PRCCS23                  "CCS: procedure 23"
label var PRCCS24                  "CCS: procedure 24"
label var PRCCS25                  "CCS: procedure 25"
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
label var PRDAY11                  "Number of days from admission to PR11"
label var PRDAY12                  "Number of days from admission to PR12"
label var PRDAY13                  "Number of days from admission to PR13"
label var PRDAY14                  "Number of days from admission to PR14"
label var PRDAY15                  "Number of days from admission to PR15"
label var PRDAY16                  "Number of days from admission to PR16"
label var PRDAY17                  "Number of days from admission to PR17"
label var PRDAY18                  "Number of days from admission to PR18"
label var PRDAY19                  "Number of days from admission to PR19"
label var PRDAY20                  "Number of days from admission to PR20"
label var PRDAY21                  "Number of days from admission to PR21"
label var PRDAY22                  "Number of days from admission to PR22"
label var PRDAY23                  "Number of days from admission to PR23"
label var PRDAY24                  "Number of days from admission to PR24"
label var PRDAY25                  "Number of days from admission to PR25"
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
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
label var PRMONTH21                "Month of procedure 21"
label var PRMONTH22                "Month of procedure 22"
label var PRMONTH23                "Month of procedure 23"
label var PRMONTH24                "Month of procedure 24"
label var PRMONTH25                "Month of procedure 25"
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
label var PRYEAR21                 "Year of procedure 21"
label var PRYEAR22                 "Year of procedure 22"
label var PRYEAR23                 "Year of procedure 23"
label var PRYEAR24                 "Year of procedure 24"
label var PRYEAR25                 "Year of procedure 25"

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
recode DXCCS26                   (-999 -888 -666=.)
recode DXCCS27                   (-999 -888 -666=.)
recode DXCCS28                   (-999 -888 -666=.)
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
recode PRCCS11                   (-99 -88 -66=.)
recode PRCCS12                   (-99 -88 -66=.)
recode PRCCS13                   (-99 -88 -66=.)
recode PRCCS14                   (-99 -88 -66=.)
recode PRCCS15                   (-99 -88 -66=.)
recode PRCCS16                   (-99 -88 -66=.)
recode PRCCS17                   (-99 -88 -66=.)
recode PRCCS18                   (-99 -88 -66=.)
recode PRCCS19                   (-99 -88 -66=.)
recode PRCCS20                   (-99 -88 -66=.)
recode PRCCS21                   (-99 -88 -66=.)
recode PRCCS22                   (-99 -88 -66=.)
recode PRCCS23                   (-99 -88 -66=.)
recode PRCCS24                   (-99 -88 -66=.)
recode PRCCS25                   (-99 -88 -66=.)
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
recode PRDAY21                   (-9999 -8888 -6666=.)
recode PRDAY22                   (-9999 -8888 -6666=.)
recode PRDAY23                   (-9999 -8888 -6666=.)
recode PRDAY24                   (-9999 -8888 -6666=.)
recode PRDAY25                   (-9999 -8888 -6666=.)
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
recode PRMONTH21                 (-9 -8 -6 -5=.)
recode PRMONTH22                 (-9 -8 -6 -5=.)
recode PRMONTH23                 (-9 -8 -6 -5=.)
recode PRMONTH24                 (-9 -8 -6 -5=.)
recode PRMONTH25                 (-9 -8 -6 -5=.)
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
recode PRYEAR21                  (-999 -888 -666=.)
recode PRYEAR22                  (-999 -888 -666=.)
recode PRYEAR23                  (-999 -888 -666=.)
recode PRYEAR24                  (-999 -888 -666=.)
recode PRYEAR25                  (-999 -888 -666=.)

save "HI_SEDD_2015q1q3_CORE.dta", replace
