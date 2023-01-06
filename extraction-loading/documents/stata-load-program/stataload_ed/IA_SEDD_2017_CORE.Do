/*****************************************************************************
* Creation Date: 09/06/2018   
* IA_SEDD_2017_CORE.Do
* This program will load the 2017 IA ASCII CORE File into Stata.
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
      int    CPTCCS1                    396- 398   ///
      int    CPTCCS2                    399- 401   ///
      int    CPTCCS3                    402- 404   ///
      int    CPTCCS4                    405- 407   ///
      int    CPTCCS5                    408- 410   ///
      int    CPTCCS6                    411- 413   ///
      int    CPTCCS7                    414- 416   ///
      int    CPTCCS8                    417- 419   ///
      int    CPTCCS9                    420- 422   ///
      int    CPTCCS10                   423- 425   ///
      int    CPTCCS11                   426- 428   ///
      int    CPTCCS12                   429- 431   ///
      int    CPTCCS13                   432- 434   ///
      int    CPTCCS14                   435- 437   ///
      int    CPTCCS15                   438- 440   ///
      int    CPTCCS16                   441- 443   ///
      int    CPTCCS17                   444- 446   ///
      int    CPTCCS18                   447- 449   ///
      int    CPTCCS19                   450- 452   ///
      int    CPTCCS20                   453- 455   ///
      int    CPTCCS21                   456- 458   ///
      int    CPTCCS22                   459- 461   ///
      int    CPTCCS23                   462- 464   ///
      int    CPTCCS24                   465- 467   ///
      int    CPTCCS25                   468- 470   ///
      int    CPTCCS26                   471- 473   ///
      int    CPTCCS27                   474- 476   ///
      int    CPTCCS28                   477- 479   ///
      int    CPTCCS29                   480- 482   ///
      int    CPTCCS30                   483- 485   ///
      int    CPTCCS31                   486- 488   ///
      int    CPTCCS32                   489- 491   ///
      int    CPTCCS33                   492- 494   ///
      int    CPTCCS34                   495- 497   ///
      int    CPTCCS35                   498- 500   ///
      int    CPTCCS36                   501- 503   ///
      int    CPTCCS37                   504- 506   ///
      int    CPTCCS38                   507- 509   ///
      int    CPTCCS39                   510- 512   ///
      int    CPTCCS40                   513- 515   ///
      int    CPTCCS41                   516- 518   ///
      int    CPTCCS42                   519- 521   ///
      int    CPTCCS43                   522- 524   ///
      int    CPTCCS44                   525- 527   ///
      int    CPTCCS45                   528- 530   ///
      int    CPTCCS46                   531- 533   ///
      int    CPTCCS47                   534- 536   ///
      int    CPTCCS48                   537- 539   ///
      int    CPTCCS49                   540- 542   ///
      int    CPTCCS50                   543- 545   ///
      int    CPTCCS51                   546- 548   ///
      int    CPTCCS52                   549- 551   ///
      int    CPTCCS53                   552- 554   ///
      int    CPTCCS54                   555- 557   ///
      int    CPTCCS55                   558- 560   ///
      int    CPTCCS56                   561- 563   ///
      int    CPTCCS57                   564- 566   ///
      int    CPTCCS58                   567- 569   ///
      int    CPTCCS59                   570- 572   ///
      int    CPTCCS60                   573- 575   ///
      int    CPTCCS61                   576- 578   ///
      int    CPTCCS62                   579- 581   ///
      int    CPTCCS63                   582- 584   ///
      int    CPTCCS64                   585- 587   ///
      int    CPTCCS65                   588- 590   ///
      int    CPTCCS66                   591- 593   ///
      int    CPTCCS67                   594- 596   ///
      int    CPTCCS68                   597- 599   ///
      int    CPTCCS69                   600- 602   ///
      int    CPTCCS70                   603- 605   ///
      int    CPTCCS71                   606- 608   ///
      int    CPTCCS72                   609- 611   ///
      int    CPTCCS73                   612- 614   ///
      int    CPTCCS74                   615- 617   ///
      int    CPTCCS75                   618- 620   ///
      int    CPTCCS76                   621- 623   ///
      int    CPTDAY1                    624- 626   ///
      int    CPTDAY2                    627- 629   ///
      int    CPTDAY3                    630- 632   ///
      int    CPTDAY4                    633- 635   ///
      int    CPTDAY5                    636- 638   ///
      int    CPTDAY6                    639- 641   ///
      int    CPTDAY7                    642- 644   ///
      int    CPTDAY8                    645- 647   ///
      int    CPTDAY9                    648- 650   ///
      int    CPTDAY10                   651- 653   ///
      int    CPTDAY11                   654- 656   ///
      int    CPTDAY12                   657- 659   ///
      int    CPTDAY13                   660- 662   ///
      int    CPTDAY14                   663- 665   ///
      int    CPTDAY15                   666- 668   ///
      int    CPTDAY16                   669- 671   ///
      int    CPTDAY17                   672- 674   ///
      int    CPTDAY18                   675- 677   ///
      int    CPTDAY19                   678- 680   ///
      int    CPTDAY20                   681- 683   ///
      int    CPTDAY21                   684- 686   ///
      int    CPTDAY22                   687- 689   ///
      int    CPTDAY23                   690- 692   ///
      int    CPTDAY24                   693- 695   ///
      int    CPTDAY25                   696- 698   ///
      int    CPTDAY26                   699- 701   ///
      int    CPTDAY27                   702- 704   ///
      int    CPTDAY28                   705- 707   ///
      int    CPTDAY29                   708- 710   ///
      int    CPTDAY30                   711- 713   ///
      int    CPTDAY31                   714- 716   ///
      int    CPTDAY32                   717- 719   ///
      int    CPTDAY33                   720- 722   ///
      int    CPTDAY34                   723- 725   ///
      int    CPTDAY35                   726- 728   ///
      int    CPTDAY36                   729- 731   ///
      int    CPTDAY37                   732- 734   ///
      int    CPTDAY38                   735- 737   ///
      int    CPTDAY39                   738- 740   ///
      int    CPTDAY40                   741- 743   ///
      int    CPTDAY41                   744- 746   ///
      int    CPTDAY42                   747- 749   ///
      int    CPTDAY43                   750- 752   ///
      int    CPTDAY44                   753- 755   ///
      int    CPTDAY45                   756- 758   ///
      int    CPTDAY46                   759- 761   ///
      int    CPTDAY47                   762- 764   ///
      int    CPTDAY48                   765- 767   ///
      int    CPTDAY49                   768- 770   ///
      int    CPTDAY50                   771- 773   ///
      int    CPTDAY51                   774- 776   ///
      int    CPTDAY52                   777- 779   ///
      int    CPTDAY53                   780- 782   ///
      int    CPTDAY54                   783- 785   ///
      int    CPTDAY55                   786- 788   ///
      int    CPTDAY56                   789- 791   ///
      int    CPTDAY57                   792- 794   ///
      int    CPTDAY58                   795- 797   ///
      int    CPTDAY59                   798- 800   ///
      int    CPTDAY60                   801- 803   ///
      int    CPTDAY61                   804- 806   ///
      int    CPTDAY62                   807- 809   ///
      int    CPTDAY63                   810- 812   ///
      int    CPTDAY64                   813- 815   ///
      int    CPTDAY65                   816- 818   ///
      int    CPTDAY66                   819- 821   ///
      int    CPTDAY67                   822- 824   ///
      int    CPTDAY68                   825- 827   ///
      int    CPTDAY69                   828- 830   ///
      int    CPTDAY70                   831- 833   ///
      int    CPTDAY71                   834- 836   ///
      int    CPTDAY72                   837- 839   ///
      int    CPTDAY73                   840- 842   ///
      int    CPTDAY74                   843- 845   ///
      int    CPTDAY75                   846- 848   ///
      int    CPTDAY76                   849- 851   ///
      str    CPTM1_1                    852- 853   ///
      str    CPTM1_2                    854- 855   ///
      str    CPTM1_3                    856- 857   ///
      str    CPTM1_4                    858- 859   ///
      str    CPTM1_5                    860- 861   ///
      str    CPTM1_6                    862- 863   ///
      str    CPTM1_7                    864- 865   ///
      str    CPTM1_8                    866- 867   ///
      str    CPTM1_9                    868- 869   ///
      str    CPTM1_10                   870- 871   ///
      str    CPTM1_11                   872- 873   ///
      str    CPTM1_12                   874- 875   ///
      str    CPTM1_13                   876- 877   ///
      str    CPTM1_14                   878- 879   ///
      str    CPTM1_15                   880- 881   ///
      str    CPTM1_16                   882- 883   ///
      str    CPTM1_17                   884- 885   ///
      str    CPTM1_18                   886- 887   ///
      str    CPTM1_19                   888- 889   ///
      str    CPTM1_20                   890- 891   ///
      str    CPTM1_21                   892- 893   ///
      str    CPTM1_22                   894- 895   ///
      str    CPTM1_23                   896- 897   ///
      str    CPTM1_24                   898- 899   ///
      str    CPTM1_25                   900- 901   ///
      str    CPTM1_26                   902- 903   ///
      str    CPTM1_27                   904- 905   ///
      str    CPTM1_28                   906- 907   ///
      str    CPTM1_29                   908- 909   ///
      str    CPTM1_30                   910- 911   ///
      str    CPTM1_31                   912- 913   ///
      str    CPTM1_32                   914- 915   ///
      str    CPTM1_33                   916- 917   ///
      str    CPTM1_34                   918- 919   ///
      str    CPTM1_35                   920- 921   ///
      str    CPTM1_36                   922- 923   ///
      str    CPTM1_37                   924- 925   ///
      str    CPTM1_38                   926- 927   ///
      str    CPTM1_39                   928- 929   ///
      str    CPTM1_40                   930- 931   ///
      str    CPTM1_41                   932- 933   ///
      str    CPTM1_42                   934- 935   ///
      str    CPTM1_43                   936- 937   ///
      str    CPTM1_44                   938- 939   ///
      str    CPTM1_45                   940- 941   ///
      str    CPTM1_46                   942- 943   ///
      str    CPTM1_47                   944- 945   ///
      str    CPTM1_48                   946- 947   ///
      str    CPTM1_49                   948- 949   ///
      str    CPTM1_50                   950- 951   ///
      str    CPTM1_51                   952- 953   ///
      str    CPTM1_52                   954- 955   ///
      str    CPTM1_53                   956- 957   ///
      str    CPTM1_54                   958- 959   ///
      str    CPTM1_55                   960- 961   ///
      str    CPTM1_56                   962- 963   ///
      str    CPTM1_57                   964- 965   ///
      str    CPTM1_58                   966- 967   ///
      str    CPTM1_59                   968- 969   ///
      str    CPTM1_60                   970- 971   ///
      str    CPTM1_61                   972- 973   ///
      str    CPTM1_62                   974- 975   ///
      str    CPTM1_63                   976- 977   ///
      str    CPTM1_64                   978- 979   ///
      str    CPTM1_65                   980- 981   ///
      str    CPTM1_66                   982- 983   ///
      str    CPTM1_67                   984- 985   ///
      str    CPTM1_68                   986- 987   ///
      str    CPTM1_69                   988- 989   ///
      str    CPTM1_70                   990- 991   ///
      str    CPTM1_71                   992- 993   ///
      str    CPTM1_72                   994- 995   ///
      str    CPTM1_73                   996- 997   ///
      str    CPTM1_74                   998- 999   ///
      str    CPTM1_75                  1000-1001   ///
      str    CPTM1_76                  1002-1003   ///
      str    CPTM2_1                   1004-1005   ///
      str    CPTM2_2                   1006-1007   ///
      str    CPTM2_3                   1008-1009   ///
      str    CPTM2_4                   1010-1011   ///
      str    CPTM2_5                   1012-1013   ///
      str    CPTM2_6                   1014-1015   ///
      str    CPTM2_7                   1016-1017   ///
      str    CPTM2_8                   1018-1019   ///
      str    CPTM2_9                   1020-1021   ///
      str    CPTM2_10                  1022-1023   ///
      str    CPTM2_11                  1024-1025   ///
      str    CPTM2_12                  1026-1027   ///
      str    CPTM2_13                  1028-1029   ///
      str    CPTM2_14                  1030-1031   ///
      str    CPTM2_15                  1032-1033   ///
      str    CPTM2_16                  1034-1035   ///
      str    CPTM2_17                  1036-1037   ///
      str    CPTM2_18                  1038-1039   ///
      str    CPTM2_19                  1040-1041   ///
      str    CPTM2_20                  1042-1043   ///
      str    CPTM2_21                  1044-1045   ///
      str    CPTM2_22                  1046-1047   ///
      str    CPTM2_23                  1048-1049   ///
      str    CPTM2_24                  1050-1051   ///
      str    CPTM2_25                  1052-1053   ///
      str    CPTM2_26                  1054-1055   ///
      str    CPTM2_27                  1056-1057   ///
      str    CPTM2_28                  1058-1059   ///
      str    CPTM2_29                  1060-1061   ///
      str    CPTM2_30                  1062-1063   ///
      str    CPTM2_31                  1064-1065   ///
      str    CPTM2_32                  1066-1067   ///
      str    CPTM2_33                  1068-1069   ///
      str    CPTM2_34                  1070-1071   ///
      str    CPTM2_35                  1072-1073   ///
      str    CPTM2_36                  1074-1075   ///
      str    CPTM2_37                  1076-1077   ///
      str    CPTM2_38                  1078-1079   ///
      str    CPTM2_39                  1080-1081   ///
      str    CPTM2_40                  1082-1083   ///
      str    CPTM2_41                  1084-1085   ///
      str    CPTM2_42                  1086-1087   ///
      str    CPTM2_43                  1088-1089   ///
      str    CPTM2_44                  1090-1091   ///
      str    CPTM2_45                  1092-1093   ///
      str    CPTM2_46                  1094-1095   ///
      str    CPTM2_47                  1096-1097   ///
      str    CPTM2_48                  1098-1099   ///
      str    CPTM2_49                  1100-1101   ///
      str    CPTM2_50                  1102-1103   ///
      str    CPTM2_51                  1104-1105   ///
      str    CPTM2_52                  1106-1107   ///
      str    CPTM2_53                  1108-1109   ///
      str    CPTM2_54                  1110-1111   ///
      str    CPTM2_55                  1112-1113   ///
      str    CPTM2_56                  1114-1115   ///
      str    CPTM2_57                  1116-1117   ///
      str    CPTM2_58                  1118-1119   ///
      str    CPTM2_59                  1120-1121   ///
      str    CPTM2_60                  1122-1123   ///
      str    CPTM2_61                  1124-1125   ///
      str    CPTM2_62                  1126-1127   ///
      str    CPTM2_63                  1128-1129   ///
      str    CPTM2_64                  1130-1131   ///
      str    CPTM2_65                  1132-1133   ///
      str    CPTM2_66                  1134-1135   ///
      str    CPTM2_67                  1136-1137   ///
      str    CPTM2_68                  1138-1139   ///
      str    CPTM2_69                  1140-1141   ///
      str    CPTM2_70                  1142-1143   ///
      str    CPTM2_71                  1144-1145   ///
      str    CPTM2_72                  1146-1147   ///
      str    CPTM2_73                  1148-1149   ///
      str    CPTM2_74                  1150-1151   ///
      str    CPTM2_75                  1152-1153   ///
      str    CPTM2_76                  1154-1155   ///
      long   DaysToEvent               1156-1161   ///
      byte   DIED                      1162-1163   ///
      str    DISP_X                    1164-1165   ///
      byte   DISPUB04                  1166-1167   ///
      byte   DISPUNIFORM               1168-1169   ///
      byte   DMONTH                    1170-1171   ///
      byte   DQTR                      1172-1173   ///
      int    DXVER                     1174-1176   ///
      byte   FEMALE                    1177-1178   ///
      byte   HCUP_ED                   1179-1180   ///
      byte   HCUP_OS                   1181-1182   ///
      byte   HISPANIC                  1183-1184   ///
      str    HISPANIC_X                1185        ///
      str    HOSPST                    1186-1187   ///
      str    I10_DX_Visit_Reason1      1188-1194   ///
      str    I10_DX_Visit_Reason2      1195-1201   ///
      str    I10_DX_Visit_Reason3      1202-1208   ///
      str    I10_DX1                   1209-1215   ///
      str    I10_DX2                   1216-1222   ///
      str    I10_DX3                   1223-1229   ///
      str    I10_DX4                   1230-1236   ///
      str    I10_DX5                   1237-1243   ///
      str    I10_DX6                   1244-1250   ///
      str    I10_DX7                   1251-1257   ///
      str    I10_DX8                   1258-1264   ///
      str    I10_DX9                   1265-1271   ///
      str    I10_DX10                  1272-1278   ///
      str    I10_DX11                  1279-1285   ///
      str    I10_DX12                  1286-1292   ///
      str    I10_DX13                  1293-1299   ///
      str    I10_DX14                  1300-1306   ///
      str    I10_DX15                  1307-1313   ///
      str    I10_DX16                  1314-1320   ///
      str    I10_DX17                  1321-1327   ///
      str    I10_DX18                  1328-1334   ///
      str    I10_DX19                  1335-1341   ///
      str    I10_DX20                  1342-1348   ///
      str    I10_DX21                  1349-1355   ///
      str    I10_DX22                  1356-1362   ///
      str    I10_DX23                  1363-1369   ///
      str    I10_DX24                  1370-1376   ///
      str    I10_DX25                  1377-1383   ///
      str    I10_DX26                  1384-1390   ///
      str    I10_DX27                  1391-1397   ///
      str    I10_DX28                  1398-1404   ///
      str    I10_DX29                  1405-1411   ///
      str    I10_DX30                  1412-1418   ///
      str    I10_DX31                  1419-1425   ///
      str    I10_DX32                  1426-1432   ///
      str    I10_DX33                  1433-1439   ///
      str    I10_DX34                  1440-1446   ///
      str    I10_DX35                  1447-1453   ///
      str    I10_DX36                  1454-1460   ///
      str    I10_DX37                  1461-1467   ///
      str    I10_DX38                  1468-1474   ///
      str    I10_DX39                  1475-1481   ///
      str    I10_DX40                  1482-1488   ///
      str    I10_DX41                  1489-1495   ///
      str    I10_DX42                  1496-1502   ///
      str    I10_DX43                  1503-1509   ///
      str    I10_DX44                  1510-1516   ///
      int    I10_NDX                   1517-1519   ///
      int    I10_PROCTYPE              1520-1522   ///
      double KEY                       1523-1537   ///
      long   LOS                       1538-1542   ///
      long   LOS_X                     1543-1548   ///
      long   MDNUM1_R                  1549-1557   ///
      long   MDNUM2_R                  1558-1566   ///
      long   MDNUM3_R                  1567-1575   ///
      byte   MEDINCSTQ                 1576-1577   ///
      long   MRN_R                     1578-1586   ///
      int    NCPT                      1587-1590   ///
      str    OPservice                 1591-1595   ///
      double OS_TIME                   1596-1606   ///
      byte   PAY1                      1607-1608   ///
      str    PAY1_X                    1609-1612   ///
      byte   PAY2                      1613-1614   ///
      str    PAY2_X                    1615-1618   ///
      byte   PAY3                      1619-1620   ///
      str    PAY3_X                    1621-1624   ///
      int    PL_CBSA                   1625-1627   ///
      byte   PL_NCHS                   1628-1629   ///
      byte   PL_RUCC                   1630-1631   ///
      byte   PL_UIC                    1632-1633   ///
      byte   PL_UR_CAT4                1634-1635   ///
      str    PointOfOrigin_X           1636        ///
      str    PointOfOriginUB04         1637        ///
      str    PSTATE                    1638-1639   ///
      long   PSTCO                     1640-1644   ///
      long   PSTCO2                    1645-1649   ///
      byte   RACE                      1650-1651   ///
      str    RACE_X                    1652-1655   ///
      byte   STATE_AS                  1656-1657   ///
      byte   STATE_ED                  1658-1659   ///
      byte   STATE_OS                  1660-1661   ///
      double TOTCHG                    1662-1671   ///
      double TOTCHG_X                  1672-1686   ///
      long   VisitLink                 1687-1695   ///
      int    YEAR                      1696-1699   ///
      str    ZIP                       1700-1704   ///
      str    ZIP3                      1705-1707   ///
      int    ZIPINC_QRTL               1708-1710   ///
      int    AYEAR                     1711-1714   ///
      byte   BMONTH                    1715-1716   ///
      int    BYEAR                     1717-1720   ///
      using  "IA_SEDD_2017_CORE.ASC"

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
label var DaysToEvent              "Days from 'start date' to admission"
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
recode DaysToEvent               (-99999 -88888 -66666=.)
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

save "IA_SEDD_2017_CORE.dta", replace
