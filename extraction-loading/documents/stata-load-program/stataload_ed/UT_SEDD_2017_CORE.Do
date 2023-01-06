/*****************************************************************************
* Creation Date: 05/31/2019   
* UT_SEDD_2017_CORE.Do
* This program will load the 2017 UT ASCII CORE File into Stata.
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
      str    CPT1                        24-  28   ///
      str    CPT2                        29-  33   ///
      str    CPT3                        34-  38   ///
      str    CPT4                        39-  43   ///
      str    CPT5                        44-  48   ///
      str    CPT6                        49-  53   ///
      str    CPT7                        54-  58   ///
      str    CPT8                        59-  63   ///
      str    CPT9                        64-  68   ///
      str    CPT10                       69-  73   ///
      str    CPT11                       74-  78   ///
      str    CPT12                       79-  83   ///
      str    CPT13                       84-  88   ///
      str    CPT14                       89-  93   ///
      str    CPT15                       94-  98   ///
      str    CPT16                       99- 103   ///
      str    CPT17                      104- 108   ///
      str    CPT18                      109- 113   ///
      str    CPT19                      114- 118   ///
      str    CPT20                      119- 123   ///
      str    CPT21                      124- 128   ///
      str    CPT22                      129- 133   ///
      str    CPT23                      134- 138   ///
      str    CPT24                      139- 143   ///
      str    CPT25                      144- 148   ///
      str    CPT26                      149- 153   ///
      str    CPT27                      154- 158   ///
      str    CPT28                      159- 163   ///
      str    CPT29                      164- 168   ///
      str    CPT30                      169- 173   ///
      str    CPT31                      174- 178   ///
      str    CPT32                      179- 183   ///
      str    CPT33                      184- 188   ///
      str    CPT34                      189- 193   ///
      str    CPT35                      194- 198   ///
      str    CPT36                      199- 203   ///
      str    CPT37                      204- 208   ///
      str    CPT38                      209- 213   ///
      str    CPT39                      214- 218   ///
      str    CPT40                      219- 223   ///
      str    CPT41                      224- 228   ///
      str    CPT42                      229- 233   ///
      str    CPT43                      234- 238   ///
      str    CPT44                      239- 243   ///
      str    CPT45                      244- 248   ///
      str    CPT46                      249- 253   ///
      str    CPT47                      254- 258   ///
      str    CPT48                      259- 263   ///
      str    CPT49                      264- 268   ///
      str    CPT50                      269- 273   ///
      str    CPT51                      274- 278   ///
      str    CPT52                      279- 283   ///
      str    CPT53                      284- 288   ///
      str    CPT54                      289- 293   ///
      str    CPT55                      294- 298   ///
      str    CPT56                      299- 303   ///
      str    CPT57                      304- 308   ///
      str    CPT58                      309- 313   ///
      str    CPT59                      314- 318   ///
      str    CPT60                      319- 323   ///
      str    CPT61                      324- 328   ///
      str    CPT62                      329- 333   ///
      str    CPT63                      334- 338   ///
      str    CPT64                      339- 343   ///
      str    CPT65                      344- 348   ///
      str    CPT66                      349- 353   ///
      str    CPT67                      354- 358   ///
      str    CPT68                      359- 363   ///
      str    CPT69                      364- 368   ///
      str    CPT70                      369- 373   ///
      str    CPT71                      374- 378   ///
      str    CPT72                      379- 383   ///
      str    CPT73                      384- 388   ///
      str    CPT74                      389- 393   ///
      str    CPT75                      394- 398   ///
      str    CPT76                      399- 403   ///
      str    CPT77                      404- 408   ///
      str    CPT78                      409- 413   ///
      str    CPT79                      414- 418   ///
      str    CPT80                      419- 423   ///
      str    CPT81                      424- 428   ///
      str    CPT82                      429- 433   ///
      str    CPT83                      434- 438   ///
      str    CPT84                      439- 443   ///
      str    CPT85                      444- 448   ///
      str    CPT86                      449- 453   ///
      str    CPT87                      454- 458   ///
      str    CPT88                      459- 463   ///
      str    CPT89                      464- 468   ///
      str    CPT90                      469- 473   ///
      str    CPT91                      474- 478   ///
      str    CPT92                      479- 483   ///
      int    CPTCCS1                    484- 486   ///
      int    CPTCCS2                    487- 489   ///
      int    CPTCCS3                    490- 492   ///
      int    CPTCCS4                    493- 495   ///
      int    CPTCCS5                    496- 498   ///
      int    CPTCCS6                    499- 501   ///
      int    CPTCCS7                    502- 504   ///
      int    CPTCCS8                    505- 507   ///
      int    CPTCCS9                    508- 510   ///
      int    CPTCCS10                   511- 513   ///
      int    CPTCCS11                   514- 516   ///
      int    CPTCCS12                   517- 519   ///
      int    CPTCCS13                   520- 522   ///
      int    CPTCCS14                   523- 525   ///
      int    CPTCCS15                   526- 528   ///
      int    CPTCCS16                   529- 531   ///
      int    CPTCCS17                   532- 534   ///
      int    CPTCCS18                   535- 537   ///
      int    CPTCCS19                   538- 540   ///
      int    CPTCCS20                   541- 543   ///
      int    CPTCCS21                   544- 546   ///
      int    CPTCCS22                   547- 549   ///
      int    CPTCCS23                   550- 552   ///
      int    CPTCCS24                   553- 555   ///
      int    CPTCCS25                   556- 558   ///
      int    CPTCCS26                   559- 561   ///
      int    CPTCCS27                   562- 564   ///
      int    CPTCCS28                   565- 567   ///
      int    CPTCCS29                   568- 570   ///
      int    CPTCCS30                   571- 573   ///
      int    CPTCCS31                   574- 576   ///
      int    CPTCCS32                   577- 579   ///
      int    CPTCCS33                   580- 582   ///
      int    CPTCCS34                   583- 585   ///
      int    CPTCCS35                   586- 588   ///
      int    CPTCCS36                   589- 591   ///
      int    CPTCCS37                   592- 594   ///
      int    CPTCCS38                   595- 597   ///
      int    CPTCCS39                   598- 600   ///
      int    CPTCCS40                   601- 603   ///
      int    CPTCCS41                   604- 606   ///
      int    CPTCCS42                   607- 609   ///
      int    CPTCCS43                   610- 612   ///
      int    CPTCCS44                   613- 615   ///
      int    CPTCCS45                   616- 618   ///
      int    CPTCCS46                   619- 621   ///
      int    CPTCCS47                   622- 624   ///
      int    CPTCCS48                   625- 627   ///
      int    CPTCCS49                   628- 630   ///
      int    CPTCCS50                   631- 633   ///
      int    CPTCCS51                   634- 636   ///
      int    CPTCCS52                   637- 639   ///
      int    CPTCCS53                   640- 642   ///
      int    CPTCCS54                   643- 645   ///
      int    CPTCCS55                   646- 648   ///
      int    CPTCCS56                   649- 651   ///
      int    CPTCCS57                   652- 654   ///
      int    CPTCCS58                   655- 657   ///
      int    CPTCCS59                   658- 660   ///
      int    CPTCCS60                   661- 663   ///
      int    CPTCCS61                   664- 666   ///
      int    CPTCCS62                   667- 669   ///
      int    CPTCCS63                   670- 672   ///
      int    CPTCCS64                   673- 675   ///
      int    CPTCCS65                   676- 678   ///
      int    CPTCCS66                   679- 681   ///
      int    CPTCCS67                   682- 684   ///
      int    CPTCCS68                   685- 687   ///
      int    CPTCCS69                   688- 690   ///
      int    CPTCCS70                   691- 693   ///
      int    CPTCCS71                   694- 696   ///
      int    CPTCCS72                   697- 699   ///
      int    CPTCCS73                   700- 702   ///
      int    CPTCCS74                   703- 705   ///
      int    CPTCCS75                   706- 708   ///
      int    CPTCCS76                   709- 711   ///
      int    CPTCCS77                   712- 714   ///
      int    CPTCCS78                   715- 717   ///
      int    CPTCCS79                   718- 720   ///
      int    CPTCCS80                   721- 723   ///
      int    CPTCCS81                   724- 726   ///
      int    CPTCCS82                   727- 729   ///
      int    CPTCCS83                   730- 732   ///
      int    CPTCCS84                   733- 735   ///
      int    CPTCCS85                   736- 738   ///
      int    CPTCCS86                   739- 741   ///
      int    CPTCCS87                   742- 744   ///
      int    CPTCCS88                   745- 747   ///
      int    CPTCCS89                   748- 750   ///
      int    CPTCCS90                   751- 753   ///
      int    CPTCCS91                   754- 756   ///
      int    CPTCCS92                   757- 759   ///
      str    CPTM1_1                    760- 761   ///
      str    CPTM1_2                    762- 763   ///
      str    CPTM1_3                    764- 765   ///
      str    CPTM1_4                    766- 767   ///
      str    CPTM1_5                    768- 769   ///
      str    CPTM1_6                    770- 771   ///
      str    CPTM1_7                    772- 773   ///
      str    CPTM1_8                    774- 775   ///
      str    CPTM1_9                    776- 777   ///
      str    CPTM1_10                   778- 779   ///
      str    CPTM1_11                   780- 781   ///
      str    CPTM1_12                   782- 783   ///
      str    CPTM1_13                   784- 785   ///
      str    CPTM1_14                   786- 787   ///
      str    CPTM1_15                   788- 789   ///
      str    CPTM1_16                   790- 791   ///
      str    CPTM1_17                   792- 793   ///
      str    CPTM1_18                   794- 795   ///
      str    CPTM1_19                   796- 797   ///
      str    CPTM1_20                   798- 799   ///
      str    CPTM1_21                   800- 801   ///
      str    CPTM1_22                   802- 803   ///
      str    CPTM1_23                   804- 805   ///
      str    CPTM1_24                   806- 807   ///
      str    CPTM1_25                   808- 809   ///
      str    CPTM1_26                   810- 811   ///
      str    CPTM1_27                   812- 813   ///
      str    CPTM1_28                   814- 815   ///
      str    CPTM1_29                   816- 817   ///
      str    CPTM1_30                   818- 819   ///
      str    CPTM1_31                   820- 821   ///
      str    CPTM1_32                   822- 823   ///
      str    CPTM1_33                   824- 825   ///
      str    CPTM1_34                   826- 827   ///
      str    CPTM1_35                   828- 829   ///
      str    CPTM1_36                   830- 831   ///
      str    CPTM1_37                   832- 833   ///
      str    CPTM1_38                   834- 835   ///
      str    CPTM1_39                   836- 837   ///
      str    CPTM1_40                   838- 839   ///
      str    CPTM1_41                   840- 841   ///
      str    CPTM1_42                   842- 843   ///
      str    CPTM1_43                   844- 845   ///
      str    CPTM1_44                   846- 847   ///
      str    CPTM1_45                   848- 849   ///
      str    CPTM1_46                   850- 851   ///
      str    CPTM1_47                   852- 853   ///
      str    CPTM1_48                   854- 855   ///
      str    CPTM1_49                   856- 857   ///
      str    CPTM1_50                   858- 859   ///
      str    CPTM1_51                   860- 861   ///
      str    CPTM1_52                   862- 863   ///
      str    CPTM1_53                   864- 865   ///
      str    CPTM1_54                   866- 867   ///
      str    CPTM1_55                   868- 869   ///
      str    CPTM1_56                   870- 871   ///
      str    CPTM1_57                   872- 873   ///
      str    CPTM1_58                   874- 875   ///
      str    CPTM1_59                   876- 877   ///
      str    CPTM1_60                   878- 879   ///
      str    CPTM1_61                   880- 881   ///
      str    CPTM1_62                   882- 883   ///
      str    CPTM1_63                   884- 885   ///
      str    CPTM1_64                   886- 887   ///
      str    CPTM1_65                   888- 889   ///
      str    CPTM1_66                   890- 891   ///
      str    CPTM1_67                   892- 893   ///
      str    CPTM1_68                   894- 895   ///
      str    CPTM1_69                   896- 897   ///
      str    CPTM1_70                   898- 899   ///
      str    CPTM1_71                   900- 901   ///
      str    CPTM1_72                   902- 903   ///
      str    CPTM1_73                   904- 905   ///
      str    CPTM1_74                   906- 907   ///
      str    CPTM1_75                   908- 909   ///
      str    CPTM1_76                   910- 911   ///
      str    CPTM1_77                   912- 913   ///
      str    CPTM1_78                   914- 915   ///
      str    CPTM1_79                   916- 917   ///
      str    CPTM1_80                   918- 919   ///
      str    CPTM1_81                   920- 921   ///
      str    CPTM1_82                   922- 923   ///
      str    CPTM1_83                   924- 925   ///
      str    CPTM1_84                   926- 927   ///
      str    CPTM1_85                   928- 929   ///
      str    CPTM1_86                   930- 931   ///
      str    CPTM1_87                   932- 933   ///
      str    CPTM1_88                   934- 935   ///
      str    CPTM1_89                   936- 937   ///
      str    CPTM1_90                   938- 939   ///
      str    CPTM1_91                   940- 941   ///
      str    CPTM1_92                   942- 943   ///
      str    CPTM2_1                    944- 945   ///
      str    CPTM2_2                    946- 947   ///
      str    CPTM2_3                    948- 949   ///
      str    CPTM2_4                    950- 951   ///
      str    CPTM2_5                    952- 953   ///
      str    CPTM2_6                    954- 955   ///
      str    CPTM2_7                    956- 957   ///
      str    CPTM2_8                    958- 959   ///
      str    CPTM2_9                    960- 961   ///
      str    CPTM2_10                   962- 963   ///
      str    CPTM2_11                   964- 965   ///
      str    CPTM2_12                   966- 967   ///
      str    CPTM2_13                   968- 969   ///
      str    CPTM2_14                   970- 971   ///
      str    CPTM2_15                   972- 973   ///
      str    CPTM2_16                   974- 975   ///
      str    CPTM2_17                   976- 977   ///
      str    CPTM2_18                   978- 979   ///
      str    CPTM2_19                   980- 981   ///
      str    CPTM2_20                   982- 983   ///
      str    CPTM2_21                   984- 985   ///
      str    CPTM2_22                   986- 987   ///
      str    CPTM2_23                   988- 989   ///
      str    CPTM2_24                   990- 991   ///
      str    CPTM2_25                   992- 993   ///
      str    CPTM2_26                   994- 995   ///
      str    CPTM2_27                   996- 997   ///
      str    CPTM2_28                   998- 999   ///
      str    CPTM2_29                  1000-1001   ///
      str    CPTM2_30                  1002-1003   ///
      str    CPTM2_31                  1004-1005   ///
      str    CPTM2_32                  1006-1007   ///
      str    CPTM2_33                  1008-1009   ///
      str    CPTM2_34                  1010-1011   ///
      str    CPTM2_35                  1012-1013   ///
      str    CPTM2_36                  1014-1015   ///
      str    CPTM2_37                  1016-1017   ///
      str    CPTM2_38                  1018-1019   ///
      str    CPTM2_39                  1020-1021   ///
      str    CPTM2_40                  1022-1023   ///
      str    CPTM2_41                  1024-1025   ///
      str    CPTM2_42                  1026-1027   ///
      str    CPTM2_43                  1028-1029   ///
      str    CPTM2_44                  1030-1031   ///
      str    CPTM2_45                  1032-1033   ///
      str    CPTM2_46                  1034-1035   ///
      str    CPTM2_47                  1036-1037   ///
      str    CPTM2_48                  1038-1039   ///
      str    CPTM2_49                  1040-1041   ///
      str    CPTM2_50                  1042-1043   ///
      str    CPTM2_51                  1044-1045   ///
      str    CPTM2_52                  1046-1047   ///
      str    CPTM2_53                  1048-1049   ///
      str    CPTM2_54                  1050-1051   ///
      str    CPTM2_55                  1052-1053   ///
      str    CPTM2_56                  1054-1055   ///
      str    CPTM2_57                  1056-1057   ///
      str    CPTM2_58                  1058-1059   ///
      str    CPTM2_59                  1060-1061   ///
      str    CPTM2_60                  1062-1063   ///
      str    CPTM2_61                  1064-1065   ///
      str    CPTM2_62                  1066-1067   ///
      str    CPTM2_63                  1068-1069   ///
      str    CPTM2_64                  1070-1071   ///
      str    CPTM2_65                  1072-1073   ///
      str    CPTM2_66                  1074-1075   ///
      str    CPTM2_67                  1076-1077   ///
      str    CPTM2_68                  1078-1079   ///
      str    CPTM2_69                  1080-1081   ///
      str    CPTM2_70                  1082-1083   ///
      str    CPTM2_71                  1084-1085   ///
      str    CPTM2_72                  1086-1087   ///
      str    CPTM2_73                  1088-1089   ///
      str    CPTM2_74                  1090-1091   ///
      str    CPTM2_75                  1092-1093   ///
      str    CPTM2_76                  1094-1095   ///
      str    CPTM2_77                  1096-1097   ///
      str    CPTM2_78                  1098-1099   ///
      str    CPTM2_79                  1100-1101   ///
      str    CPTM2_80                  1102-1103   ///
      str    CPTM2_81                  1104-1105   ///
      str    CPTM2_82                  1106-1107   ///
      str    CPTM2_83                  1108-1109   ///
      str    CPTM2_84                  1110-1111   ///
      str    CPTM2_85                  1112-1113   ///
      str    CPTM2_86                  1114-1115   ///
      str    CPTM2_87                  1116-1117   ///
      str    CPTM2_88                  1118-1119   ///
      str    CPTM2_89                  1120-1121   ///
      str    CPTM2_90                  1122-1123   ///
      str    CPTM2_91                  1124-1125   ///
      str    CPTM2_92                  1126-1127   ///
      long   DaysToEvent               1128-1133   ///
      int    DHOUR                     1134-1137   ///
      byte   DIED                      1138-1139   ///
      str    DISP_X                    1140-1141   ///
      byte   DISPUB04                  1142-1143   ///
      byte   DISPUNIFORM               1144-1145   ///
      byte   DMONTH                    1146-1147   ///
      byte   DQTR                      1148-1149   ///
      str    DSHOSPID                  1150-1166   ///
      long   DURATION                  1167-1172   ///
      int    DXVER                     1173-1175   ///
      byte   FEMALE                    1176-1177   ///
      byte   HCUP_ED                   1178-1179   ///
      byte   HCUP_OS                   1180-1181   ///
      str    HISPANIC_X                1182        ///
      byte   Homeless                  1183-1184   ///
      str    HOSPST                    1185-1186   ///
      str    I10_DX_Visit_Reason1      1187-1193   ///
      str    I10_DX_Visit_Reason2      1194-1200   ///
      str    I10_DX_Visit_Reason3      1201-1207   ///
      str    I10_DX1                   1208-1214   ///
      str    I10_DX2                   1215-1221   ///
      str    I10_DX3                   1222-1228   ///
      str    I10_DX4                   1229-1235   ///
      str    I10_DX5                   1236-1242   ///
      str    I10_DX6                   1243-1249   ///
      str    I10_DX7                   1250-1256   ///
      str    I10_DX8                   1257-1263   ///
      str    I10_DX9                   1264-1270   ///
      str    I10_DX10                  1271-1277   ///
      str    I10_DX11                  1278-1284   ///
      str    I10_DX12                  1285-1291   ///
      str    I10_DX13                  1292-1298   ///
      str    I10_DX14                  1299-1305   ///
      str    I10_DX15                  1306-1312   ///
      str    I10_DX16                  1313-1319   ///
      str    I10_DX17                  1320-1326   ///
      str    I10_DX18                  1327-1333   ///
      str    I10_DX19                  1334-1340   ///
      str    I10_DX20                  1341-1347   ///
      str    I10_DX21                  1348-1354   ///
      int    I10_NDX                   1355-1357   ///
      int    I10_PROCTYPE              1358-1360   ///
      double KEY                       1361-1375   ///
      long   LOS                       1376-1380   ///
      long   LOS_X                     1381-1386   ///
      str    MARITALSTATUS_X           1387        ///
      str    MARITALSTATUSUB04         1388        ///
      long   MDNUM1_R                  1389-1397   ///
      long   MDNUM2_R                  1398-1406   ///
      long   MDNUM3_R                  1407-1415   ///
      long   MDNUM4_R                  1416-1424   ///
      str    MDSPEC1                   1425-1434   ///
      str    MDSPEC2                   1435-1444   ///
      byte   MEDINCSTQ                 1445-1446   ///
      long   MRN_R                     1447-1455   ///
      int    NCPT                      1456-1459   ///
      double OS_TIME                   1460-1470   ///
      byte   PAY1                      1471-1472   ///
      str    PAY1_X                    1473-1502   ///
      int    PL_CBSA                   1503-1505   ///
      byte   PL_NCHS                   1506-1507   ///
      byte   PL_RUCC                   1508-1509   ///
      byte   PL_UIC                    1510-1511   ///
      byte   PL_UR_CAT4                1512-1513   ///
      str    PointOfOrigin_X           1514        ///
      str    PointOfOriginUB04         1515        ///
      str    PSTATE                    1516-1517   ///
      long   PSTCO2                    1518-1522   ///
      str    RACE_X                    1523        ///
      byte   STATE_AS                  1524-1525   ///
      byte   STATE_ED                  1526-1527   ///
      byte   STATE_OS                  1528-1529   ///
      double TOTCHG                    1530-1539   ///
      double TOTCHG_X                  1540-1554   ///
      long   VisitLink                 1555-1563   ///
      int    YEAR                      1564-1567   ///
      str    ZIP                       1568-1572   ///
      str    ZIP3                      1573-1575   ///
      int    ZIPINC_QRTL               1576-1578   ///
      int    AYEAR                     1579-1582   ///
      byte   BMONTH                    1583-1584   ///
      int    BYEAR                     1585-1588   ///
      using  "UT_SEDD_2017_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
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
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
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
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MARITALSTATUS_X          "Patient's marital status (as received from source)"
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MDNUM4_R                 "Physician 4 number (re-identified)"
label var MDSPEC1                  "Physician 1 specialty (as received from source)"
label var MDSPEC2                  "Physician 2 specialty (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
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
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
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
recode Homeless                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM4_R                  (-99999999 -88888888 -66666666=.)
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
recode PSTCO2                    (-9999 -8888 -6666=.)
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

save "UT_SEDD_2017_CORE.dta", replace
