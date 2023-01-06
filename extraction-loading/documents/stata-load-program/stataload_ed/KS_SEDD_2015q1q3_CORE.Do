/*****************************************************************************
* Creation Date: 03/12/2018   
* KS_SEDD_2015q1q3_CORE.Do
* This program will load the 2015 KS ASCII CORE File into Stata.
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
      str    CPTM1_1                    424- 425   ///
      str    CPTM1_2                    426- 427   ///
      str    CPTM1_3                    428- 429   ///
      str    CPTM1_4                    430- 431   ///
      str    CPTM1_5                    432- 433   ///
      str    CPTM1_6                    434- 435   ///
      str    CPTM1_7                    436- 437   ///
      str    CPTM1_8                    438- 439   ///
      str    CPTM1_9                    440- 441   ///
      str    CPTM1_10                   442- 443   ///
      str    CPTM1_11                   444- 445   ///
      str    CPTM1_12                   446- 447   ///
      str    CPTM1_13                   448- 449   ///
      str    CPTM1_14                   450- 451   ///
      str    CPTM1_15                   452- 453   ///
      str    CPTM1_16                   454- 455   ///
      str    CPTM1_17                   456- 457   ///
      str    CPTM1_18                   458- 459   ///
      str    CPTM1_19                   460- 461   ///
      str    CPTM1_20                   462- 463   ///
      str    CPTM1_21                   464- 465   ///
      str    CPTM1_22                   466- 467   ///
      str    CPTM1_23                   468- 469   ///
      str    CPTM1_24                   470- 471   ///
      str    CPTM1_25                   472- 473   ///
      str    CPTM1_26                   474- 475   ///
      str    CPTM1_27                   476- 477   ///
      str    CPTM1_28                   478- 479   ///
      str    CPTM1_29                   480- 481   ///
      str    CPTM1_30                   482- 483   ///
      str    CPTM1_31                   484- 485   ///
      str    CPTM1_32                   486- 487   ///
      str    CPTM1_33                   488- 489   ///
      str    CPTM1_34                   490- 491   ///
      str    CPTM1_35                   492- 493   ///
      str    CPTM1_36                   494- 495   ///
      str    CPTM1_37                   496- 497   ///
      str    CPTM1_38                   498- 499   ///
      str    CPTM1_39                   500- 501   ///
      str    CPTM1_40                   502- 503   ///
      str    CPTM1_41                   504- 505   ///
      str    CPTM1_42                   506- 507   ///
      str    CPTM1_43                   508- 509   ///
      str    CPTM1_44                   510- 511   ///
      str    CPTM1_45                   512- 513   ///
      str    CPTM1_46                   514- 515   ///
      str    CPTM1_47                   516- 517   ///
      str    CPTM1_48                   518- 519   ///
      str    CPTM1_49                   520- 521   ///
      str    CPTM1_50                   522- 523   ///
      str    CPTM2_1                    524- 525   ///
      str    CPTM2_2                    526- 527   ///
      str    CPTM2_3                    528- 529   ///
      str    CPTM2_4                    530- 531   ///
      str    CPTM2_5                    532- 533   ///
      str    CPTM2_6                    534- 535   ///
      str    CPTM2_7                    536- 537   ///
      str    CPTM2_8                    538- 539   ///
      str    CPTM2_9                    540- 541   ///
      str    CPTM2_10                   542- 543   ///
      str    CPTM2_11                   544- 545   ///
      str    CPTM2_12                   546- 547   ///
      str    CPTM2_13                   548- 549   ///
      str    CPTM2_14                   550- 551   ///
      str    CPTM2_15                   552- 553   ///
      str    CPTM2_16                   554- 555   ///
      str    CPTM2_17                   556- 557   ///
      str    CPTM2_18                   558- 559   ///
      str    CPTM2_19                   560- 561   ///
      str    CPTM2_20                   562- 563   ///
      str    CPTM2_21                   564- 565   ///
      str    CPTM2_22                   566- 567   ///
      str    CPTM2_23                   568- 569   ///
      str    CPTM2_24                   570- 571   ///
      str    CPTM2_25                   572- 573   ///
      str    CPTM2_26                   574- 575   ///
      str    CPTM2_27                   576- 577   ///
      str    CPTM2_28                   578- 579   ///
      str    CPTM2_29                   580- 581   ///
      str    CPTM2_30                   582- 583   ///
      str    CPTM2_31                   584- 585   ///
      str    CPTM2_32                   586- 587   ///
      str    CPTM2_33                   588- 589   ///
      str    CPTM2_34                   590- 591   ///
      str    CPTM2_35                   592- 593   ///
      str    CPTM2_36                   594- 595   ///
      str    CPTM2_37                   596- 597   ///
      str    CPTM2_38                   598- 599   ///
      str    CPTM2_39                   600- 601   ///
      str    CPTM2_40                   602- 603   ///
      str    CPTM2_41                   604- 605   ///
      str    CPTM2_42                   606- 607   ///
      str    CPTM2_43                   608- 609   ///
      str    CPTM2_44                   610- 611   ///
      str    CPTM2_45                   612- 613   ///
      str    CPTM2_46                   614- 615   ///
      str    CPTM2_47                   616- 617   ///
      str    CPTM2_48                   618- 619   ///
      str    CPTM2_49                   620- 621   ///
      str    CPTM2_50                   622- 623   ///
      int    DHOUR                      624- 627   ///
      byte   DIED                       628- 629   ///
      str    DISP_X                     630- 631   ///
      byte   DISPUB04                   632- 633   ///
      byte   DISPUNIFORM                634- 635   ///
      byte   DMONTH                     636- 637   ///
      byte   DQTR                       638- 639   ///
      long   DURATION                   640- 645   ///
      str    DX1                        646- 652   ///
      str    DX2                        653- 659   ///
      str    DX3                        660- 666   ///
      str    DX4                        667- 673   ///
      str    DX5                        674- 680   ///
      str    DX6                        681- 687   ///
      str    DX7                        688- 694   ///
      str    DX8                        695- 701   ///
      str    DX9                        702- 708   ///
      str    DX10                       709- 715   ///
      str    DX11                       716- 722   ///
      str    DX12                       723- 729   ///
      str    DX13                       730- 736   ///
      str    DX14                       737- 743   ///
      str    DX15                       744- 750   ///
      str    DX16                       751- 757   ///
      str    DX17                       758- 764   ///
      str    DX18                       765- 771   ///
      str    DX19                       772- 778   ///
      str    DX20                       779- 785   ///
      str    DX21                       786- 792   ///
      str    DX22                       793- 799   ///
      str    DX23                       800- 806   ///
      str    DX24                       807- 813   ///
      str    DX25                       814- 820   ///
      str    DX26                       821- 827   ///
      str    DX27                       828- 834   ///
      str    DX28                       835- 841   ///
      str    DX29                       842- 848   ///
      str    DX30                       849- 855   ///
      int    DXCCS1                     856- 859   ///
      int    DXCCS2                     860- 863   ///
      int    DXCCS3                     864- 867   ///
      int    DXCCS4                     868- 871   ///
      int    DXCCS5                     872- 875   ///
      int    DXCCS6                     876- 879   ///
      int    DXCCS7                     880- 883   ///
      int    DXCCS8                     884- 887   ///
      int    DXCCS9                     888- 891   ///
      int    DXCCS10                    892- 895   ///
      int    DXCCS11                    896- 899   ///
      int    DXCCS12                    900- 903   ///
      int    DXCCS13                    904- 907   ///
      int    DXCCS14                    908- 911   ///
      int    DXCCS15                    912- 915   ///
      int    DXCCS16                    916- 919   ///
      int    DXCCS17                    920- 923   ///
      int    DXCCS18                    924- 927   ///
      int    DXCCS19                    928- 931   ///
      int    DXCCS20                    932- 935   ///
      int    DXCCS21                    936- 939   ///
      int    DXCCS22                    940- 943   ///
      int    DXCCS23                    944- 947   ///
      int    DXCCS24                    948- 951   ///
      int    DXCCS25                    952- 955   ///
      int    DXCCS26                    956- 959   ///
      int    DXCCS27                    960- 963   ///
      int    DXCCS28                    964- 967   ///
      int    DXCCS29                    968- 971   ///
      int    DXCCS30                    972- 975   ///
      int    DXVER                      976- 978   ///
      int    E_CCS1                     979- 982   ///
      int    E_CCS2                     983- 986   ///
      int    E_CCS3                     987- 990   ///
      int    E_CCS4                     991- 994   ///
      int    E_CCS5                     995- 998   ///
      int    E_CCS6                     999-1002   ///
      int    E_CCS7                    1003-1006   ///
      int    E_CCS8                    1007-1010   ///
      int    E_CCS9                    1011-1014   ///
      int    E_CCS10                   1015-1018   ///
      int    E_CCS11                   1019-1022   ///
      int    E_CCS12                   1023-1026   ///
      int    E_CCS13                   1027-1030   ///
      int    E_CCS14                   1031-1034   ///
      str    ECODE1                    1035-1041   ///
      str    ECODE2                    1042-1048   ///
      str    ECODE3                    1049-1055   ///
      str    ECODE4                    1056-1062   ///
      str    ECODE5                    1063-1069   ///
      str    ECODE6                    1070-1076   ///
      str    ECODE7                    1077-1083   ///
      str    ECODE8                    1084-1090   ///
      str    ECODE9                    1091-1097   ///
      str    ECODE10                   1098-1104   ///
      str    ECODE11                   1105-1111   ///
      str    ECODE12                   1112-1118   ///
      str    ECODE13                   1119-1125   ///
      str    ECODE14                   1126-1132   ///
      byte   FEMALE                    1133-1134   ///
      byte   HCUP_ED                   1135-1136   ///
      byte   HCUP_OS                   1137-1138   ///
      byte   HISPANIC                  1139-1140   ///
      str    HISPANIC_X                1141        ///
      int    HOSPBRTH                  1142-1144   ///
      str    HOSPST                    1145-1146   ///
      double KEY                       1147-1161   ///
      long   LOS                       1162-1166   ///
      long   LOS_X                     1167-1172   ///
      byte   MEDINCSTQ                 1173-1174   ///
      int    NCHRONIC                  1175-1177   ///
      int    NCPT                      1178-1181   ///
      int    NDX                       1182-1184   ///
      byte   NECODE                    1185-1186   ///
      byte   NEOMAT                    1187-1188   ///
      int    NPR                       1189-1191   ///
      str    OPservice                 1192        ///
      byte   ORPROC                    1193-1194   ///
      double OS_TIME                   1195-1205   ///
      byte   PAY1                      1206-1207   ///
      str    PAY1_X                    1208-1210   ///
      byte   PAY2                      1211-1212   ///
      str    PAY2_X                    1213-1215   ///
      byte   PAY3                      1216-1217   ///
      str    PAY3_X                    1218-1220   ///
      int    PL_CBSA                   1221-1223   ///
      byte   PL_NCHS                   1224-1225   ///
      byte   PL_RUCC                   1226-1227   ///
      byte   PL_UIC                    1228-1229   ///
      byte   PL_UR_CAT4                1230-1231   ///
      str    PointOfOrigin_X           1232        ///
      str    PointOfOriginUB04         1233        ///
      str    PR1                       1234-1240   ///
      str    PR2                       1241-1247   ///
      str    PR3                       1248-1254   ///
      str    PR4                       1255-1261   ///
      str    PR5                       1262-1268   ///
      str    PR6                       1269-1275   ///
      str    PR7                       1276-1282   ///
      str    PR8                       1283-1289   ///
      str    PR9                       1290-1296   ///
      str    PR10                      1297-1303   ///
      str    PR11                      1304-1310   ///
      str    PR12                      1311-1317   ///
      str    PR13                      1318-1324   ///
      str    PR14                      1325-1331   ///
      str    PR15                      1332-1338   ///
      str    PR16                      1339-1345   ///
      str    PR17                      1346-1352   ///
      str    PR18                      1353-1359   ///
      str    PR19                      1360-1366   ///
      str    PR20                      1367-1373   ///
      str    PR21                      1374-1380   ///
      str    PR22                      1381-1387   ///
      str    PR23                      1388-1394   ///
      str    PR24                      1395-1401   ///
      str    PR25                      1402-1408   ///
      int    PRCCS1                    1409-1411   ///
      int    PRCCS2                    1412-1414   ///
      int    PRCCS3                    1415-1417   ///
      int    PRCCS4                    1418-1420   ///
      int    PRCCS5                    1421-1423   ///
      int    PRCCS6                    1424-1426   ///
      int    PRCCS7                    1427-1429   ///
      int    PRCCS8                    1430-1432   ///
      int    PRCCS9                    1433-1435   ///
      int    PRCCS10                   1436-1438   ///
      int    PRCCS11                   1439-1441   ///
      int    PRCCS12                   1442-1444   ///
      int    PRCCS13                   1445-1447   ///
      int    PRCCS14                   1448-1450   ///
      int    PRCCS15                   1451-1453   ///
      int    PRCCS16                   1454-1456   ///
      int    PRCCS17                   1457-1459   ///
      int    PRCCS18                   1460-1462   ///
      int    PRCCS19                   1463-1465   ///
      int    PRCCS20                   1466-1468   ///
      int    PRCCS21                   1469-1471   ///
      int    PRCCS22                   1472-1474   ///
      int    PRCCS23                   1475-1477   ///
      int    PRCCS24                   1478-1480   ///
      int    PRCCS25                   1481-1483   ///
      int    PROCTYPE                  1484-1486   ///
      int    PRVER                     1487-1489   ///
      str    PSTATE                    1490-1491   ///
      long   PSTCO                     1492-1496   ///
      long   PSTCO2                    1497-1501   ///
      byte   RACE                      1502-1503   ///
      str    RACE_X                    1504        ///
      byte   STATE_AS                  1505-1506   ///
      byte   STATE_ED                  1507-1508   ///
      byte   STATE_OS                  1509-1510   ///
      double TOTCHG                    1511-1520   ///
      double TOTCHG_X                  1521-1535   ///
      int    YEAR                      1536-1539   ///
      str    ZIP3                      1540-1542   ///
      int    ZIPINC_QRTL               1543-1545   ///
      long   HOSPID                    1546-1550   ///
      int    AYEAR                     1551-1554   ///
      byte   BMONTH                    1555-1556   ///
      int    BYEAR                     1557-1560   ///
      using  "KS_SEDD_2015q1q3_CORE.ASC"

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
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
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
label var DX26                     "Diagnosis 26"
label var DX27                     "Diagnosis 27"
label var DX28                     "Diagnosis 28"
label var DX29                     "Diagnosis 29"
label var DX30                     "Diagnosis 30"
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
label var DXCCS29                  "CCS: diagnosis 29"
label var DXCCS30                  "CCS: diagnosis 30"
label var DXVER                    "Diagnosis Version"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_CCS7                   "CCS: E Code 7"
label var E_CCS8                   "CCS: E Code 8"
label var E_CCS9                   "CCS: E Code 9"
label var E_CCS10                  "CCS: E Code 10"
label var E_CCS11                  "CCS: E Code 11"
label var E_CCS12                  "CCS: E Code 12"
label var E_CCS13                  "CCS: E Code 13"
label var E_CCS14                  "CCS: E Code 14"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var ECODE8                   "E code 8"
label var ECODE9                   "E code 9"
label var ECODE10                  "E code 10"
label var ECODE11                  "E code 11"
label var ECODE12                  "E code 12"
label var ECODE13                  "E code 13"
label var ECODE14                  "E code 14"
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
label var NPR                      "Number of procedures on this record"
label var OPservice                "Indicator of outpatient service (as received from source)"
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
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
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
recode DXCCS26                   (-999 -888 -666=.)
recode DXCCS27                   (-999 -888 -666=.)
recode DXCCS28                   (-999 -888 -666=.)
recode DXCCS29                   (-999 -888 -666=.)
recode DXCCS30                   (-999 -888 -666=.)
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
recode E_CCS10                   (-999 -888 -666=.)
recode E_CCS11                   (-999 -888 -666=.)
recode E_CCS12                   (-999 -888 -666=.)
recode E_CCS13                   (-999 -888 -666=.)
recode E_CCS14                   (-999 -888 -666=.)
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
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
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

save "KS_SEDD_2015q1q3_CORE.dta", replace
