/*****************************************************************************
* Creation Date: 10/20/2016   
* MN_SEDD_2014_CORE.Do
* This program will load the 2014 MN ASCII CORE File into Stata.
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
      int    CPTCCS1                    274- 276   ///
      int    CPTCCS2                    277- 279   ///
      int    CPTCCS3                    280- 282   ///
      int    CPTCCS4                    283- 285   ///
      int    CPTCCS5                    286- 288   ///
      int    CPTCCS6                    289- 291   ///
      int    CPTCCS7                    292- 294   ///
      int    CPTCCS8                    295- 297   ///
      int    CPTCCS9                    298- 300   ///
      int    CPTCCS10                   301- 303   ///
      int    CPTCCS11                   304- 306   ///
      int    CPTCCS12                   307- 309   ///
      int    CPTCCS13                   310- 312   ///
      int    CPTCCS14                   313- 315   ///
      int    CPTCCS15                   316- 318   ///
      int    CPTCCS16                   319- 321   ///
      int    CPTCCS17                   322- 324   ///
      int    CPTCCS18                   325- 327   ///
      int    CPTCCS19                   328- 330   ///
      int    CPTCCS20                   331- 333   ///
      int    CPTCCS21                   334- 336   ///
      int    CPTCCS22                   337- 339   ///
      int    CPTCCS23                   340- 342   ///
      int    CPTCCS24                   343- 345   ///
      int    CPTCCS25                   346- 348   ///
      int    CPTCCS26                   349- 351   ///
      int    CPTCCS27                   352- 354   ///
      int    CPTCCS28                   355- 357   ///
      int    CPTCCS29                   358- 360   ///
      int    CPTCCS30                   361- 363   ///
      int    CPTCCS31                   364- 366   ///
      int    CPTCCS32                   367- 369   ///
      int    CPTCCS33                   370- 372   ///
      int    CPTCCS34                   373- 375   ///
      int    CPTCCS35                   376- 378   ///
      int    CPTCCS36                   379- 381   ///
      int    CPTCCS37                   382- 384   ///
      int    CPTCCS38                   385- 387   ///
      int    CPTCCS39                   388- 390   ///
      int    CPTCCS40                   391- 393   ///
      int    CPTCCS41                   394- 396   ///
      int    CPTCCS42                   397- 399   ///
      int    CPTCCS43                   400- 402   ///
      int    CPTCCS44                   403- 405   ///
      int    CPTCCS45                   406- 408   ///
      int    CPTCCS46                   409- 411   ///
      int    CPTCCS47                   412- 414   ///
      int    CPTCCS48                   415- 417   ///
      int    CPTCCS49                   418- 420   ///
      int    CPTCCS50                   421- 423   ///
      int    CPTDAY1                    424- 426   ///
      int    CPTDAY2                    427- 429   ///
      int    CPTDAY3                    430- 432   ///
      int    CPTDAY4                    433- 435   ///
      int    CPTDAY5                    436- 438   ///
      int    CPTDAY6                    439- 441   ///
      int    CPTDAY7                    442- 444   ///
      int    CPTDAY8                    445- 447   ///
      int    CPTDAY9                    448- 450   ///
      int    CPTDAY10                   451- 453   ///
      int    CPTDAY11                   454- 456   ///
      int    CPTDAY12                   457- 459   ///
      int    CPTDAY13                   460- 462   ///
      int    CPTDAY14                   463- 465   ///
      int    CPTDAY15                   466- 468   ///
      int    CPTDAY16                   469- 471   ///
      int    CPTDAY17                   472- 474   ///
      int    CPTDAY18                   475- 477   ///
      int    CPTDAY19                   478- 480   ///
      int    CPTDAY20                   481- 483   ///
      int    CPTDAY21                   484- 486   ///
      int    CPTDAY22                   487- 489   ///
      int    CPTDAY23                   490- 492   ///
      int    CPTDAY24                   493- 495   ///
      int    CPTDAY25                   496- 498   ///
      int    CPTDAY26                   499- 501   ///
      int    CPTDAY27                   502- 504   ///
      int    CPTDAY28                   505- 507   ///
      int    CPTDAY29                   508- 510   ///
      int    CPTDAY30                   511- 513   ///
      int    CPTDAY31                   514- 516   ///
      int    CPTDAY32                   517- 519   ///
      int    CPTDAY33                   520- 522   ///
      int    CPTDAY34                   523- 525   ///
      int    CPTDAY35                   526- 528   ///
      int    CPTDAY36                   529- 531   ///
      int    CPTDAY37                   532- 534   ///
      int    CPTDAY38                   535- 537   ///
      int    CPTDAY39                   538- 540   ///
      int    CPTDAY40                   541- 543   ///
      int    CPTDAY41                   544- 546   ///
      int    CPTDAY42                   547- 549   ///
      int    CPTDAY43                   550- 552   ///
      int    CPTDAY44                   553- 555   ///
      int    CPTDAY45                   556- 558   ///
      int    CPTDAY46                   559- 561   ///
      int    CPTDAY47                   562- 564   ///
      int    CPTDAY48                   565- 567   ///
      int    CPTDAY49                   568- 570   ///
      int    CPTDAY50                   571- 573   ///
      str    CPTM1_1                    574- 575   ///
      str    CPTM1_2                    576- 577   ///
      str    CPTM1_3                    578- 579   ///
      str    CPTM1_4                    580- 581   ///
      str    CPTM1_5                    582- 583   ///
      str    CPTM1_6                    584- 585   ///
      str    CPTM1_7                    586- 587   ///
      str    CPTM1_8                    588- 589   ///
      str    CPTM1_9                    590- 591   ///
      str    CPTM1_10                   592- 593   ///
      str    CPTM1_11                   594- 595   ///
      str    CPTM1_12                   596- 597   ///
      str    CPTM1_13                   598- 599   ///
      str    CPTM1_14                   600- 601   ///
      str    CPTM1_15                   602- 603   ///
      str    CPTM1_16                   604- 605   ///
      str    CPTM1_17                   606- 607   ///
      str    CPTM1_18                   608- 609   ///
      str    CPTM1_19                   610- 611   ///
      str    CPTM1_20                   612- 613   ///
      str    CPTM1_21                   614- 615   ///
      str    CPTM1_22                   616- 617   ///
      str    CPTM1_23                   618- 619   ///
      str    CPTM1_24                   620- 621   ///
      str    CPTM1_25                   622- 623   ///
      str    CPTM1_26                   624- 625   ///
      str    CPTM1_27                   626- 627   ///
      str    CPTM1_28                   628- 629   ///
      str    CPTM1_29                   630- 631   ///
      str    CPTM1_30                   632- 633   ///
      str    CPTM1_31                   634- 635   ///
      str    CPTM1_32                   636- 637   ///
      str    CPTM1_33                   638- 639   ///
      str    CPTM1_34                   640- 641   ///
      str    CPTM1_35                   642- 643   ///
      str    CPTM1_36                   644- 645   ///
      str    CPTM1_37                   646- 647   ///
      str    CPTM1_38                   648- 649   ///
      str    CPTM1_39                   650- 651   ///
      str    CPTM1_40                   652- 653   ///
      str    CPTM1_41                   654- 655   ///
      str    CPTM1_42                   656- 657   ///
      str    CPTM1_43                   658- 659   ///
      str    CPTM1_44                   660- 661   ///
      str    CPTM1_45                   662- 663   ///
      str    CPTM1_46                   664- 665   ///
      str    CPTM1_47                   666- 667   ///
      str    CPTM1_48                   668- 669   ///
      str    CPTM1_49                   670- 671   ///
      str    CPTM1_50                   672- 673   ///
      str    CPTM2_1                    674- 675   ///
      str    CPTM2_2                    676- 677   ///
      str    CPTM2_3                    678- 679   ///
      str    CPTM2_4                    680- 681   ///
      str    CPTM2_5                    682- 683   ///
      str    CPTM2_6                    684- 685   ///
      str    CPTM2_7                    686- 687   ///
      str    CPTM2_8                    688- 689   ///
      str    CPTM2_9                    690- 691   ///
      str    CPTM2_10                   692- 693   ///
      str    CPTM2_11                   694- 695   ///
      str    CPTM2_12                   696- 697   ///
      str    CPTM2_13                   698- 699   ///
      str    CPTM2_14                   700- 701   ///
      str    CPTM2_15                   702- 703   ///
      str    CPTM2_16                   704- 705   ///
      str    CPTM2_17                   706- 707   ///
      str    CPTM2_18                   708- 709   ///
      str    CPTM2_19                   710- 711   ///
      str    CPTM2_20                   712- 713   ///
      str    CPTM2_21                   714- 715   ///
      str    CPTM2_22                   716- 717   ///
      str    CPTM2_23                   718- 719   ///
      str    CPTM2_24                   720- 721   ///
      str    CPTM2_25                   722- 723   ///
      str    CPTM2_26                   724- 725   ///
      str    CPTM2_27                   726- 727   ///
      str    CPTM2_28                   728- 729   ///
      str    CPTM2_29                   730- 731   ///
      str    CPTM2_30                   732- 733   ///
      str    CPTM2_31                   734- 735   ///
      str    CPTM2_32                   736- 737   ///
      str    CPTM2_33                   738- 739   ///
      str    CPTM2_34                   740- 741   ///
      str    CPTM2_35                   742- 743   ///
      str    CPTM2_36                   744- 745   ///
      str    CPTM2_37                   746- 747   ///
      str    CPTM2_38                   748- 749   ///
      str    CPTM2_39                   750- 751   ///
      str    CPTM2_40                   752- 753   ///
      str    CPTM2_41                   754- 755   ///
      str    CPTM2_42                   756- 757   ///
      str    CPTM2_43                   758- 759   ///
      str    CPTM2_44                   760- 761   ///
      str    CPTM2_45                   762- 763   ///
      str    CPTM2_46                   764- 765   ///
      str    CPTM2_47                   766- 767   ///
      str    CPTM2_48                   768- 769   ///
      str    CPTM2_49                   770- 771   ///
      str    CPTM2_50                   772- 773   ///
      int    DHOUR                      774- 777   ///
      byte   DIED                       778- 779   ///
      byte   DISPUB04                   780- 781   ///
      byte   DISPUNIFORM                782- 783   ///
      str    DISP_X                     784- 785   ///
      byte   DMONTH                     786- 787   ///
      byte   DQTR                       788- 789   ///
      long   DURATION                   790- 795   ///
      str    DX1                        796- 802   ///
      str    DX2                        803- 809   ///
      str    DX3                        810- 816   ///
      str    DX4                        817- 823   ///
      str    DX5                        824- 830   ///
      str    DX6                        831- 837   ///
      str    DX7                        838- 844   ///
      str    DX8                        845- 851   ///
      str    DX9                        852- 858   ///
      str    DX10                       859- 865   ///
      str    DX11                       866- 872   ///
      str    DX12                       873- 879   ///
      str    DX13                       880- 886   ///
      str    DX14                       887- 893   ///
      str    DX15                       894- 900   ///
      str    DX16                       901- 907   ///
      str    DX17                       908- 914   ///
      str    DX18                       915- 921   ///
      str    DX19                       922- 928   ///
      str    DX20                       929- 935   ///
      str    DX21                       936- 942   ///
      str    DX22                       943- 949   ///
      str    DX23                       950- 956   ///
      str    DX24                       957- 963   ///
      str    DX25                       964- 970   ///
      int    DXCCS1                     971- 974   ///
      int    DXCCS2                     975- 978   ///
      int    DXCCS3                     979- 982   ///
      int    DXCCS4                     983- 986   ///
      int    DXCCS5                     987- 990   ///
      int    DXCCS6                     991- 994   ///
      int    DXCCS7                     995- 998   ///
      int    DXCCS8                     999-1002   ///
      int    DXCCS9                    1003-1006   ///
      int    DXCCS10                   1007-1010   ///
      int    DXCCS11                   1011-1014   ///
      int    DXCCS12                   1015-1018   ///
      int    DXCCS13                   1019-1022   ///
      int    DXCCS14                   1023-1026   ///
      int    DXCCS15                   1027-1030   ///
      int    DXCCS16                   1031-1034   ///
      int    DXCCS17                   1035-1038   ///
      int    DXCCS18                   1039-1042   ///
      int    DXCCS19                   1043-1046   ///
      int    DXCCS20                   1047-1050   ///
      int    DXCCS21                   1051-1054   ///
      int    DXCCS22                   1055-1058   ///
      int    DXCCS23                   1059-1062   ///
      int    DXCCS24                   1063-1066   ///
      int    DXCCS25                   1067-1070   ///
      str    DXPOA1                    1071        ///
      str    DXPOA2                    1072        ///
      str    DXPOA3                    1073        ///
      str    DXPOA4                    1074        ///
      str    DXPOA5                    1075        ///
      str    DXPOA6                    1076        ///
      str    DXPOA7                    1077        ///
      str    DXPOA8                    1078        ///
      str    DXPOA9                    1079        ///
      str    DXPOA10                   1080        ///
      str    DXPOA11                   1081        ///
      str    DXPOA12                   1082        ///
      str    DXPOA13                   1083        ///
      str    DXPOA14                   1084        ///
      str    DXPOA15                   1085        ///
      str    DXPOA16                   1086        ///
      str    DXPOA17                   1087        ///
      str    DXPOA18                   1088        ///
      str    DXPOA19                   1089        ///
      str    DXPOA20                   1090        ///
      str    DXPOA21                   1091        ///
      str    DXPOA22                   1092        ///
      str    DXPOA23                   1093        ///
      str    DXPOA24                   1094        ///
      str    DXPOA25                   1095        ///
      int    DXVER                     1096-1098   ///
      str    DX_Visit_Reason1          1099-1105   ///
      str    ECODE1                    1106-1112   ///
      str    ECODE2                    1113-1119   ///
      str    ECODE3                    1120-1126   ///
      str    ECODE4                    1127-1133   ///
      str    ECODE5                    1134-1140   ///
      str    ECODE6                    1141-1147   ///
      str    ECODE7                    1148-1154   ///
      str    ECODE8                    1155-1161   ///
      str    ECODE9                    1162-1168   ///
      int    E_CCS1                    1169-1172   ///
      int    E_CCS2                    1173-1176   ///
      int    E_CCS3                    1177-1180   ///
      int    E_CCS4                    1181-1184   ///
      int    E_CCS5                    1185-1188   ///
      int    E_CCS6                    1189-1192   ///
      int    E_CCS7                    1193-1196   ///
      int    E_CCS8                    1197-1200   ///
      int    E_CCS9                    1201-1204   ///
      str    E_POA1                    1205        ///
      str    E_POA2                    1206        ///
      str    E_POA3                    1207        ///
      str    E_POA4                    1208        ///
      str    E_POA5                    1209        ///
      str    E_POA6                    1210        ///
      str    E_POA7                    1211        ///
      str    E_POA8                    1212        ///
      str    E_POA9                    1213        ///
      byte   FEMALE                    1214-1215   ///
      byte   HCUP_ED                   1216-1217   ///
      byte   HCUP_OS                   1218-1219   ///
      int    HOSPBRTH                  1220-1222   ///
      str    HOSPST                    1223-1224   ///
      double KEY                       1225-1239   ///
      long   LOS                       1240-1244   ///
      long   LOS_X                     1245-1250   ///
      str    MARITALSTATUSUB04         1251        ///
      str    MARITALSTATUS_X           1252        ///
      byte   MEDINCSTQ                 1253-1254   ///
      long   MRN_R                     1255-1263   ///
      int    NCHRONIC                  1264-1266   ///
      int    NCPT                      1267-1270   ///
      int    NDX                       1271-1273   ///
      byte   NECODE                    1274-1275   ///
      byte   NEOMAT                    1276-1277   ///
      int    NPR                       1278-1280   ///
      byte   ORPROC                    1281-1282   ///
      double OS_TIME                   1283-1293   ///
      byte   PAY1                      1294-1295   ///
      str    PAY1_X                    1296-1302   ///
      byte   PAY2                      1303-1304   ///
      str    PAY2_X                    1305-1311   ///
      byte   PAY3                      1312-1313   ///
      str    PAY3_X                    1314-1320   ///
      int    PL_CBSA                   1321-1323   ///
      byte   PL_NCHS                   1324-1325   ///
      byte   PL_RUCC                   1326-1327   ///
      byte   PL_UIC                    1328-1329   ///
      byte   PL_UR_CAT4                1330-1331   ///
      byte   POA_Disch_Edit1           1332-1333   ///
      byte   POA_Disch_Edit2           1334-1335   ///
      byte   POA_Hosp_Edit1            1336-1337   ///
      byte   POA_Hosp_Edit2            1338-1339   ///
      byte   POA_Hosp_Edit3            1340-1341   ///
      double POA_Hosp_Edit3_Value      1342-1349   ///
      str    PR1                       1350-1356   ///
      str    PR2                       1357-1363   ///
      str    PR3                       1364-1370   ///
      str    PR4                       1371-1377   ///
      str    PR5                       1378-1384   ///
      str    PR6                       1385-1391   ///
      str    PR7                       1392-1398   ///
      str    PR8                       1399-1405   ///
      str    PR9                       1406-1412   ///
      str    PR10                      1413-1419   ///
      str    PR11                      1420-1426   ///
      str    PR12                      1427-1433   ///
      str    PR13                      1434-1440   ///
      str    PR14                      1441-1447   ///
      str    PR15                      1448-1454   ///
      str    PR16                      1455-1461   ///
      str    PR17                      1462-1468   ///
      str    PR18                      1469-1475   ///
      str    PR19                      1476-1482   ///
      str    PR20                      1483-1489   ///
      str    PR21                      1490-1496   ///
      int    PRCCS1                    1497-1499   ///
      int    PRCCS2                    1500-1502   ///
      int    PRCCS3                    1503-1505   ///
      int    PRCCS4                    1506-1508   ///
      int    PRCCS5                    1509-1511   ///
      int    PRCCS6                    1512-1514   ///
      int    PRCCS7                    1515-1517   ///
      int    PRCCS8                    1518-1520   ///
      int    PRCCS9                    1521-1523   ///
      int    PRCCS10                   1524-1526   ///
      int    PRCCS11                   1527-1529   ///
      int    PRCCS12                   1530-1532   ///
      int    PRCCS13                   1533-1535   ///
      int    PRCCS14                   1536-1538   ///
      int    PRCCS15                   1539-1541   ///
      int    PRCCS16                   1542-1544   ///
      int    PRCCS17                   1545-1547   ///
      int    PRCCS18                   1548-1550   ///
      int    PRCCS19                   1551-1553   ///
      int    PRCCS20                   1554-1556   ///
      int    PRCCS21                   1557-1559   ///
      long   PRDAY1                    1560-1564   ///
      long   PRDAY2                    1565-1569   ///
      long   PRDAY3                    1570-1574   ///
      long   PRDAY4                    1575-1579   ///
      long   PRDAY5                    1580-1584   ///
      long   PRDAY6                    1585-1589   ///
      long   PRDAY7                    1590-1594   ///
      long   PRDAY8                    1595-1599   ///
      long   PRDAY9                    1600-1604   ///
      long   PRDAY10                   1605-1609   ///
      long   PRDAY11                   1610-1614   ///
      long   PRDAY12                   1615-1619   ///
      long   PRDAY13                   1620-1624   ///
      long   PRDAY14                   1625-1629   ///
      long   PRDAY15                   1630-1634   ///
      long   PRDAY16                   1635-1639   ///
      long   PRDAY17                   1640-1644   ///
      long   PRDAY18                   1645-1649   ///
      long   PRDAY19                   1650-1654   ///
      long   PRDAY20                   1655-1659   ///
      long   PRDAY21                   1660-1664   ///
      int    PROCTYPE                  1665-1667   ///
      int    PRVER                     1668-1670   ///
      str    PSTATE                    1671-1672   ///
      long   PSTCO2                    1673-1677   ///
      str    PointOfOriginUB04         1678        ///
      str    PointOfOrigin_X           1679        ///
      byte   STATE_AS                  1680-1681   ///
      byte   STATE_ED                  1682-1683   ///
      byte   STATE_OS                  1684-1685   ///
      double TOTCHG                    1686-1695   ///
      double TOTCHG_X                  1696-1710   ///
      int    YEAR                      1711-1714   ///
      str    ZIP                       1715-1719   ///
      str    ZIP3                      1720-1722   ///
      int    ZIPINC_QRTL               1723-1725   ///
      int    AYEAR                     1726-1729   ///
      byte   BMONTH                    1730-1731   ///
      int    BYEAR                     1732-1735   ///
      byte   PRMONTH1                  1736-1737   ///
      byte   PRMONTH2                  1738-1739   ///
      byte   PRMONTH3                  1740-1741   ///
      byte   PRMONTH4                  1742-1743   ///
      byte   PRMONTH5                  1744-1745   ///
      byte   PRMONTH6                  1746-1747   ///
      byte   PRMONTH7                  1748-1749   ///
      byte   PRMONTH8                  1750-1751   ///
      byte   PRMONTH9                  1752-1753   ///
      byte   PRMONTH10                 1754-1755   ///
      byte   PRMONTH11                 1756-1757   ///
      byte   PRMONTH12                 1758-1759   ///
      byte   PRMONTH13                 1760-1761   ///
      byte   PRMONTH14                 1762-1763   ///
      byte   PRMONTH15                 1764-1765   ///
      byte   PRMONTH16                 1766-1767   ///
      byte   PRMONTH17                 1768-1769   ///
      byte   PRMONTH18                 1770-1771   ///
      byte   PRMONTH19                 1772-1773   ///
      byte   PRMONTH20                 1774-1775   ///
      byte   PRMONTH21                 1776-1777   ///
      int    PRYEAR1                   1778-1781   ///
      int    PRYEAR2                   1782-1785   ///
      int    PRYEAR3                   1786-1789   ///
      int    PRYEAR4                   1790-1793   ///
      int    PRYEAR5                   1794-1797   ///
      int    PRYEAR6                   1798-1801   ///
      int    PRYEAR7                   1802-1805   ///
      int    PRYEAR8                   1806-1809   ///
      int    PRYEAR9                   1810-1813   ///
      int    PRYEAR10                  1814-1817   ///
      int    PRYEAR11                  1818-1821   ///
      int    PRYEAR12                  1822-1825   ///
      int    PRYEAR13                  1826-1829   ///
      int    PRYEAR14                  1830-1833   ///
      int    PRYEAR15                  1834-1837   ///
      int    PRYEAR16                  1838-1841   ///
      int    PRYEAR17                  1842-1845   ///
      int    PRYEAR18                  1846-1849   ///
      int    PRYEAR19                  1850-1853   ///
      int    PRYEAR20                  1854-1857   ///
      int    PRYEAR21                  1858-1861   ///
      using  "MN_SEDD_2014_CORE.ASC"

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
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DURATION                 "Elapsed time for hospital care in hours and minutes"
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
label var DXPOA21                  "Diagnosis 21, present on admission indicator"
label var DXPOA22                  "Diagnosis 22, present on admission indicator"
label var DXPOA23                  "Diagnosis 23, present on admission indicator"
label var DXPOA24                  "Diagnosis 24, present on admission indicator"
label var DXPOA25                  "Diagnosis 25, present on admission indicator"
label var DXVER                    "Diagnosis Version"
label var DX_Visit_Reason1         "Reason for visit diagnosis 1"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var ECODE8                   "E code 8"
label var ECODE9                   "E code 9"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_CCS7                   "CCS: E Code 7"
label var E_CCS8                   "CCS: E Code 8"
label var E_CCS9                   "CCS: E Code 9"
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var E_POA7                   "E Code 7, present on admission indicator"
label var E_POA8                   "E Code 8, present on admission indicator"
label var E_POA9                   "E Code 9, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MARITALSTATUS_X          "Patient's marital status (as received from source)"
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
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
label var PAY3                     "Tertiary expected payer (uniform)"
label var PAY3_X                   "Tertiary expected payer (as received from source)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes(RUCC)"
label var PL_UIC                   "Patient location: Urban Influence Codes"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
label var POA_Disch_Edit1          "Indication that a discharge has POA missing on all nonexempt diagnoses"
label var POA_Disch_Edit2          "Indication that a discharge has POA missing on all nonexempt secondary diagnoses"
label var POA_Hosp_Edit1           "Indication that a hospital has POA reported as Y on all diagnoses on all discharges"
label var POA_Hosp_Edit2           "Indication that a hospital has POA reported as missing on all non-Medicare discharges"
label var POA_Hosp_Edit3
    "Indication that a hospital reported POA as missing on all nonexempt diagnoses for 15 percent or more of discharges"
label var POA_Hosp_Edit3_Value     "Percentage of discharges with all nonexempt diagnoses missing POA indicators"
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
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
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
recode E_CCS9                    (-999 -888 -666=.)
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
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
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

save "MN_SEDD_2014_CORE.dta", replace
