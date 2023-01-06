/*****************************************************************************
* Creation Date: 03/03/2017   
* WI_SEDD_2015q4_CORE.Do
* This program will load the 2015 WI ASCII CORE File into Stata.
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
      str    BILLTYPE                    16-  19   ///
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
      int    CPTCCS1                    270- 272   ///
      int    CPTCCS2                    273- 275   ///
      int    CPTCCS3                    276- 278   ///
      int    CPTCCS4                    279- 281   ///
      int    CPTCCS5                    282- 284   ///
      int    CPTCCS6                    285- 287   ///
      int    CPTCCS7                    288- 290   ///
      int    CPTCCS8                    291- 293   ///
      int    CPTCCS9                    294- 296   ///
      int    CPTCCS10                   297- 299   ///
      int    CPTCCS11                   300- 302   ///
      int    CPTCCS12                   303- 305   ///
      int    CPTCCS13                   306- 308   ///
      int    CPTCCS14                   309- 311   ///
      int    CPTCCS15                   312- 314   ///
      int    CPTCCS16                   315- 317   ///
      int    CPTCCS17                   318- 320   ///
      int    CPTCCS18                   321- 323   ///
      int    CPTCCS19                   324- 326   ///
      int    CPTCCS20                   327- 329   ///
      int    CPTCCS21                   330- 332   ///
      int    CPTCCS22                   333- 335   ///
      int    CPTCCS23                   336- 338   ///
      int    CPTCCS24                   339- 341   ///
      int    CPTCCS25                   342- 344   ///
      int    CPTCCS26                   345- 347   ///
      int    CPTCCS27                   348- 350   ///
      int    CPTCCS28                   351- 353   ///
      int    CPTCCS29                   354- 356   ///
      int    CPTCCS30                   357- 359   ///
      int    CPTCCS31                   360- 362   ///
      int    CPTCCS32                   363- 365   ///
      int    CPTCCS33                   366- 368   ///
      int    CPTCCS34                   369- 371   ///
      int    CPTCCS35                   372- 374   ///
      int    CPTCCS36                   375- 377   ///
      int    CPTCCS37                   378- 380   ///
      int    CPTCCS38                   381- 383   ///
      int    CPTCCS39                   384- 386   ///
      int    CPTCCS40                   387- 389   ///
      int    CPTCCS41                   390- 392   ///
      int    CPTCCS42                   393- 395   ///
      int    CPTCCS43                   396- 398   ///
      int    CPTCCS44                   399- 401   ///
      int    CPTCCS45                   402- 404   ///
      int    CPTCCS46                   405- 407   ///
      int    CPTCCS47                   408- 410   ///
      int    CPTCCS48                   411- 413   ///
      int    CPTCCS49                   414- 416   ///
      int    CPTCCS50                   417- 419   ///
      str    CPTM1_1                    420- 421   ///
      str    CPTM1_2                    422- 423   ///
      str    CPTM1_3                    424- 425   ///
      str    CPTM1_4                    426- 427   ///
      str    CPTM1_5                    428- 429   ///
      str    CPTM1_6                    430- 431   ///
      str    CPTM1_7                    432- 433   ///
      str    CPTM1_8                    434- 435   ///
      str    CPTM1_9                    436- 437   ///
      str    CPTM1_10                   438- 439   ///
      str    CPTM1_11                   440- 441   ///
      str    CPTM1_12                   442- 443   ///
      str    CPTM1_13                   444- 445   ///
      str    CPTM1_14                   446- 447   ///
      str    CPTM1_15                   448- 449   ///
      str    CPTM1_16                   450- 451   ///
      str    CPTM1_17                   452- 453   ///
      str    CPTM1_18                   454- 455   ///
      str    CPTM1_19                   456- 457   ///
      str    CPTM1_20                   458- 459   ///
      str    CPTM1_21                   460- 461   ///
      str    CPTM1_22                   462- 463   ///
      str    CPTM1_23                   464- 465   ///
      str    CPTM1_24                   466- 467   ///
      str    CPTM1_25                   468- 469   ///
      str    CPTM1_26                   470- 471   ///
      str    CPTM1_27                   472- 473   ///
      str    CPTM1_28                   474- 475   ///
      str    CPTM1_29                   476- 477   ///
      str    CPTM1_30                   478- 479   ///
      str    CPTM1_31                   480- 481   ///
      str    CPTM1_32                   482- 483   ///
      str    CPTM1_33                   484- 485   ///
      str    CPTM1_34                   486- 487   ///
      str    CPTM1_35                   488- 489   ///
      str    CPTM1_36                   490- 491   ///
      str    CPTM1_37                   492- 493   ///
      str    CPTM1_38                   494- 495   ///
      str    CPTM1_39                   496- 497   ///
      str    CPTM1_40                   498- 499   ///
      str    CPTM1_41                   500- 501   ///
      str    CPTM1_42                   502- 503   ///
      str    CPTM1_43                   504- 505   ///
      str    CPTM1_44                   506- 507   ///
      str    CPTM1_45                   508- 509   ///
      str    CPTM1_46                   510- 511   ///
      str    CPTM1_47                   512- 513   ///
      str    CPTM1_48                   514- 515   ///
      str    CPTM1_49                   516- 517   ///
      str    CPTM1_50                   518- 519   ///
      str    CPTM2_1                    520- 521   ///
      str    CPTM2_2                    522- 523   ///
      str    CPTM2_3                    524- 525   ///
      str    CPTM2_4                    526- 527   ///
      str    CPTM2_5                    528- 529   ///
      str    CPTM2_6                    530- 531   ///
      str    CPTM2_7                    532- 533   ///
      str    CPTM2_8                    534- 535   ///
      str    CPTM2_9                    536- 537   ///
      str    CPTM2_10                   538- 539   ///
      str    CPTM2_11                   540- 541   ///
      str    CPTM2_12                   542- 543   ///
      str    CPTM2_13                   544- 545   ///
      str    CPTM2_14                   546- 547   ///
      str    CPTM2_15                   548- 549   ///
      str    CPTM2_16                   550- 551   ///
      str    CPTM2_17                   552- 553   ///
      str    CPTM2_18                   554- 555   ///
      str    CPTM2_19                   556- 557   ///
      str    CPTM2_20                   558- 559   ///
      str    CPTM2_21                   560- 561   ///
      str    CPTM2_22                   562- 563   ///
      str    CPTM2_23                   564- 565   ///
      str    CPTM2_24                   566- 567   ///
      str    CPTM2_25                   568- 569   ///
      str    CPTM2_26                   570- 571   ///
      str    CPTM2_27                   572- 573   ///
      str    CPTM2_28                   574- 575   ///
      str    CPTM2_29                   576- 577   ///
      str    CPTM2_30                   578- 579   ///
      str    CPTM2_31                   580- 581   ///
      str    CPTM2_32                   582- 583   ///
      str    CPTM2_33                   584- 585   ///
      str    CPTM2_34                   586- 587   ///
      str    CPTM2_35                   588- 589   ///
      str    CPTM2_36                   590- 591   ///
      str    CPTM2_37                   592- 593   ///
      str    CPTM2_38                   594- 595   ///
      str    CPTM2_39                   596- 597   ///
      str    CPTM2_40                   598- 599   ///
      str    CPTM2_41                   600- 601   ///
      str    CPTM2_42                   602- 603   ///
      str    CPTM2_43                   604- 605   ///
      str    CPTM2_44                   606- 607   ///
      str    CPTM2_45                   608- 609   ///
      str    CPTM2_46                   610- 611   ///
      str    CPTM2_47                   612- 613   ///
      str    CPTM2_48                   614- 615   ///
      str    CPTM2_49                   616- 617   ///
      str    CPTM2_50                   618- 619   ///
      long   DaysToEvent                620- 625   ///
      byte   DIED                       626- 627   ///
      str    DISP_X                     628- 629   ///
      byte   DISPUB04                   630- 631   ///
      byte   DISPUNIFORM                632- 633   ///
      byte   DMONTH                     634- 635   ///
      byte   DQTR                       636- 637   ///
      str    DSHOSPID                   638- 654   ///
      int    DXVER                      655- 657   ///
      byte   FEMALE                     658- 659   ///
      byte   HCUP_ED                    660- 661   ///
      byte   HCUP_OS                    662- 663   ///
      byte   HISPANIC                   664- 665   ///
      str    HISPANIC_X                 666        ///
      byte   Homeless                   667- 668   ///
      str    HOSP_NPI                   669- 678   ///
      str    HOSPST                     679- 680   ///
      str    I10_DX_Visit_Reason1       681- 687   ///
      str    I10_DX_Visit_Reason2       688- 694   ///
      str    I10_DX_Visit_Reason3       695- 701   ///
      str    I10_DX1                    702- 708   ///
      str    I10_DX2                    709- 715   ///
      str    I10_DX3                    716- 722   ///
      str    I10_DX4                    723- 729   ///
      str    I10_DX5                    730- 736   ///
      str    I10_DX6                    737- 743   ///
      str    I10_DX7                    744- 750   ///
      str    I10_DX8                    751- 757   ///
      str    I10_DX9                    758- 764   ///
      str    I10_DX10                   765- 771   ///
      str    I10_DX11                   772- 778   ///
      str    I10_DX12                   779- 785   ///
      str    I10_DX13                   786- 792   ///
      str    I10_DX14                   793- 799   ///
      str    I10_DX15                   800- 806   ///
      str    I10_DX16                   807- 813   ///
      str    I10_DX17                   814- 820   ///
      str    I10_DX18                   821- 827   ///
      str    I10_DX19                   828- 834   ///
      str    I10_DX20                   835- 841   ///
      str    I10_DX21                   842- 848   ///
      str    I10_DX22                   849- 855   ///
      str    I10_DX23                   856- 862   ///
      str    I10_DX24                   863- 869   ///
      str    I10_DX25                   870- 876   ///
      str    I10_DX26                   877- 883   ///
      str    I10_DX27                   884- 890   ///
      str    I10_DX28                   891- 897   ///
      str    I10_DX29                   898- 904   ///
      str    I10_DX30                   905- 911   ///
      str    I10_DX31                   912- 918   ///
      str    I10_DX32                   919- 925   ///
      str    I10_DX33                   926- 932   ///
      str    I10_DX34                   933- 939   ///
      str    I10_DX35                   940- 946   ///
      str    I10_DX36                   947- 953   ///
      str    I10_DX37                   954- 960   ///
      str    I10_DX38                   961- 967   ///
      str    I10_DX39                   968- 974   ///
      str    I10_DX40                   975- 981   ///
      str    I10_DX41                   982- 988   ///
      str    I10_DX42                   989- 995   ///
      str    I10_DX43                   996-1002   ///
      str    I10_DX44                  1003-1009   ///
      str    I10_DX45                  1010-1016   ///
      str    I10_DX46                  1017-1023   ///
      str    I10_DX47                  1024-1030   ///
      str    I10_DX48                  1031-1037   ///
      str    I10_DX49                  1038-1044   ///
      str    I10_DX50                  1045-1051   ///
      int    I10_DXCCS1                1052-1055   ///
      int    I10_DXCCS2                1056-1059   ///
      int    I10_DXCCS3                1060-1063   ///
      int    I10_DXCCS4                1064-1067   ///
      int    I10_DXCCS5                1068-1071   ///
      int    I10_DXCCS6                1072-1075   ///
      int    I10_DXCCS7                1076-1079   ///
      int    I10_DXCCS8                1080-1083   ///
      int    I10_DXCCS9                1084-1087   ///
      int    I10_DXCCS10               1088-1091   ///
      int    I10_DXCCS11               1092-1095   ///
      int    I10_DXCCS12               1096-1099   ///
      int    I10_DXCCS13               1100-1103   ///
      int    I10_DXCCS14               1104-1107   ///
      int    I10_DXCCS15               1108-1111   ///
      int    I10_DXCCS16               1112-1115   ///
      int    I10_DXCCS17               1116-1119   ///
      int    I10_DXCCS18               1120-1123   ///
      int    I10_DXCCS19               1124-1127   ///
      int    I10_DXCCS20               1128-1131   ///
      int    I10_DXCCS21               1132-1135   ///
      int    I10_DXCCS22               1136-1139   ///
      int    I10_DXCCS23               1140-1143   ///
      int    I10_DXCCS24               1144-1147   ///
      int    I10_DXCCS25               1148-1151   ///
      int    I10_DXCCS26               1152-1155   ///
      int    I10_DXCCS27               1156-1159   ///
      int    I10_DXCCS28               1160-1163   ///
      int    I10_DXCCS29               1164-1167   ///
      int    I10_DXCCS30               1168-1171   ///
      int    I10_DXCCS31               1172-1175   ///
      int    I10_DXCCS32               1176-1179   ///
      int    I10_DXCCS33               1180-1183   ///
      int    I10_DXCCS34               1184-1187   ///
      int    I10_DXCCS35               1188-1191   ///
      int    I10_DXCCS36               1192-1195   ///
      int    I10_DXCCS37               1196-1199   ///
      int    I10_DXCCS38               1200-1203   ///
      int    I10_DXCCS39               1204-1207   ///
      int    I10_DXCCS40               1208-1211   ///
      int    I10_DXCCS41               1212-1215   ///
      int    I10_DXCCS42               1216-1219   ///
      int    I10_DXCCS43               1220-1223   ///
      int    I10_DXCCS44               1224-1227   ///
      int    I10_DXCCS45               1228-1231   ///
      int    I10_DXCCS46               1232-1235   ///
      int    I10_DXCCS47               1236-1239   ///
      int    I10_DXCCS48               1240-1243   ///
      int    I10_DXCCS49               1244-1247   ///
      int    I10_DXCCS50               1248-1251   ///
      str    I10_ECAUSE1               1252-1258   ///
      str    I10_ECAUSE2               1259-1265   ///
      str    I10_ECAUSE3               1266-1272   ///
      str    I10_ECAUSE4               1273-1279   ///
      str    I10_ECAUSE5               1280-1286   ///
      str    I10_ECAUSE6               1287-1293   ///
      str    I10_ECAUSE7               1294-1300   ///
      str    I10_ECAUSE8               1301-1307   ///
      str    I10_ECAUSE9               1308-1314   ///
      str    I10_ECAUSE10              1315-1321   ///
      str    I10_ECAUSE11              1322-1328   ///
      int    I10_ECauseCCS1            1329-1332   ///
      int    I10_ECauseCCS2            1333-1336   ///
      int    I10_ECauseCCS3            1337-1340   ///
      int    I10_ECauseCCS4            1341-1344   ///
      int    I10_ECauseCCS5            1345-1348   ///
      int    I10_ECauseCCS6            1349-1352   ///
      int    I10_ECauseCCS7            1353-1356   ///
      int    I10_ECauseCCS8            1357-1360   ///
      int    I10_ECauseCCS9            1361-1364   ///
      int    I10_ECauseCCS10           1365-1368   ///
      int    I10_ECauseCCS11           1369-1372   ///
      int    I10_HOSPBRTH              1373-1375   ///
      int    I10_NCHRONIC              1376-1378   ///
      int    I10_NDX                   1379-1381   ///
      byte   I10_NECAUSE               1382-1383   ///
      byte   I10_NEOMAT                1384-1385   ///
      int    I10_NPR                   1386-1388   ///
      byte   I10_ORPROC                1389-1390   ///
      str    I10_PR1                   1391-1397   ///
      str    I10_PR2                   1398-1404   ///
      str    I10_PR3                   1405-1411   ///
      str    I10_PR4                   1412-1418   ///
      str    I10_PR5                   1419-1425   ///
      str    I10_PR6                   1426-1432   ///
      str    I10_PR7                   1433-1439   ///
      str    I10_PR8                   1440-1446   ///
      str    I10_PR9                   1447-1453   ///
      str    I10_PR10                  1454-1460   ///
      str    I10_PR11                  1461-1467   ///
      str    I10_PR12                  1468-1474   ///
      str    I10_PR13                  1475-1481   ///
      str    I10_PR14                  1482-1488   ///
      str    I10_PR15                  1489-1495   ///
      str    I10_PR16                  1496-1502   ///
      str    I10_PR17                  1503-1509   ///
      str    I10_PR18                  1510-1516   ///
      str    I10_PR19                  1517-1523   ///
      str    I10_PR20                  1524-1530   ///
      str    I10_PR21                  1531-1537   ///
      str    I10_PR22                  1538-1544   ///
      str    I10_PR23                  1545-1551   ///
      str    I10_PR24                  1552-1558   ///
      str    I10_PR25                  1559-1565   ///
      str    I10_PR26                  1566-1572   ///
      str    I10_PR27                  1573-1579   ///
      str    I10_PR28                  1580-1586   ///
      str    I10_PR29                  1587-1593   ///
      str    I10_PR30                  1594-1600   ///
      str    I10_PR31                  1601-1607   ///
      str    I10_PR32                  1608-1614   ///
      str    I10_PR33                  1615-1621   ///
      str    I10_PR34                  1622-1628   ///
      str    I10_PR35                  1629-1635   ///
      str    I10_PR36                  1636-1642   ///
      str    I10_PR37                  1643-1649   ///
      str    I10_PR38                  1650-1656   ///
      str    I10_PR39                  1657-1663   ///
      str    I10_PR40                  1664-1670   ///
      str    I10_PR41                  1671-1677   ///
      str    I10_PR42                  1678-1684   ///
      str    I10_PR43                  1685-1691   ///
      str    I10_PR44                  1692-1698   ///
      str    I10_PR45                  1699-1705   ///
      str    I10_PR46                  1706-1712   ///
      str    I10_PR47                  1713-1719   ///
      str    I10_PR48                  1720-1726   ///
      str    I10_PR49                  1727-1733   ///
      str    I10_PR50                  1734-1740   ///
      int    I10_PRCCS1                1741-1743   ///
      int    I10_PRCCS2                1744-1746   ///
      int    I10_PRCCS3                1747-1749   ///
      int    I10_PRCCS4                1750-1752   ///
      int    I10_PRCCS5                1753-1755   ///
      int    I10_PRCCS6                1756-1758   ///
      int    I10_PRCCS7                1759-1761   ///
      int    I10_PRCCS8                1762-1764   ///
      int    I10_PRCCS9                1765-1767   ///
      int    I10_PRCCS10               1768-1770   ///
      int    I10_PRCCS11               1771-1773   ///
      int    I10_PRCCS12               1774-1776   ///
      int    I10_PRCCS13               1777-1779   ///
      int    I10_PRCCS14               1780-1782   ///
      int    I10_PRCCS15               1783-1785   ///
      int    I10_PRCCS16               1786-1788   ///
      int    I10_PRCCS17               1789-1791   ///
      int    I10_PRCCS18               1792-1794   ///
      int    I10_PRCCS19               1795-1797   ///
      int    I10_PRCCS20               1798-1800   ///
      int    I10_PRCCS21               1801-1803   ///
      int    I10_PRCCS22               1804-1806   ///
      int    I10_PRCCS23               1807-1809   ///
      int    I10_PRCCS24               1810-1812   ///
      int    I10_PRCCS25               1813-1815   ///
      int    I10_PRCCS26               1816-1818   ///
      int    I10_PRCCS27               1819-1821   ///
      int    I10_PRCCS28               1822-1824   ///
      int    I10_PRCCS29               1825-1827   ///
      int    I10_PRCCS30               1828-1830   ///
      int    I10_PRCCS31               1831-1833   ///
      int    I10_PRCCS32               1834-1836   ///
      int    I10_PRCCS33               1837-1839   ///
      int    I10_PRCCS34               1840-1842   ///
      int    I10_PRCCS35               1843-1845   ///
      int    I10_PRCCS36               1846-1848   ///
      int    I10_PRCCS37               1849-1851   ///
      int    I10_PRCCS38               1852-1854   ///
      int    I10_PRCCS39               1855-1857   ///
      int    I10_PRCCS40               1858-1860   ///
      int    I10_PRCCS41               1861-1863   ///
      int    I10_PRCCS42               1864-1866   ///
      int    I10_PRCCS43               1867-1869   ///
      int    I10_PRCCS44               1870-1872   ///
      int    I10_PRCCS45               1873-1875   ///
      int    I10_PRCCS46               1876-1878   ///
      int    I10_PRCCS47               1879-1881   ///
      int    I10_PRCCS48               1882-1884   ///
      int    I10_PRCCS49               1885-1887   ///
      int    I10_PRCCS50               1888-1890   ///
      int    I10_PROCTYPE              1891-1893   ///
      double KEY                       1894-1908   ///
      long   LOS                       1909-1913   ///
      long   LOS_X                     1914-1919   ///
      str    MDSPEC1                   1920-1922   ///
      str    MDSPEC2                   1923-1925   ///
      byte   MEDINCSTQ                 1926-1927   ///
      long   MRN_R                     1928-1936   ///
      int    NCPT                      1937-1940   ///
      str    OPservice                 1941        ///
      double OS_TIME                   1942-1952   ///
      byte   PAY1                      1953-1954   ///
      str    PAY1_X                    1955-1959   ///
      byte   PAY2                      1960-1961   ///
      str    PAY2_X                    1962-1966   ///
      int    PL_CBSA                   1967-1969   ///
      byte   PL_NCHS                   1970-1971   ///
      byte   PL_RUCC                   1972-1973   ///
      byte   PL_UIC                    1974-1975   ///
      byte   PL_UR_CAT4                1976-1977   ///
      str    PointOfOrigin_X           1978        ///
      str    PointOfOriginUB04         1979        ///
      long   PRDAY1                    1980-1984   ///
      int    PRVER                     1985-1987   ///
      str    PSTATE                    1988-1989   ///
      long   PSTCO2                    1990-1994   ///
      byte   RACE                      1995-1996   ///
      str    RACE_X                    1997-1998   ///
      byte   STATE_AS                  1999-2000   ///
      byte   STATE_ED                  2001-2002   ///
      byte   STATE_OS                  2003-2004   ///
      double TOTCHG                    2005-2014   ///
      double TOTCHG_X                  2015-2029   ///
      long   VisitLink                 2030-2038   ///
      int    YEAR                      2039-2042   ///
      str    ZIP                       2043-2047   ///
      str    ZIP3                      2048-2050   ///
      int    ZIPINC_QRTL               2051-2053   ///
      int    AYEAR                     2054-2057   ///
      byte   BMONTH                    2058-2059   ///
      int    BYEAR                     2060-2063   ///
      byte   PRMONTH1                  2064-2065   ///
      int    PRYEAR1                   2066-2069   ///
      using  "WI_SEDD_2015q4_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
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
label var DaysToEvent              "Days from 'start date' to admission"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DSHOSPID                 "Data source hospital identifier"
label var DXVER                    "Diagnosis Version"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
label var HOSP_NPI                 "Hospital NPI"
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
label var I10_DX45                 "ICD-10-CM Diagnosis 45"
label var I10_DX46                 "ICD-10-CM Diagnosis 46"
label var I10_DX47                 "ICD-10-CM Diagnosis 47"
label var I10_DX48                 "ICD-10-CM Diagnosis 48"
label var I10_DX49                 "ICD-10-CM Diagnosis 49"
label var I10_DX50                 "ICD-10-CM Diagnosis 50"
label var I10_DXCCS1               "ICD-10-CM CCS: diagnosis 1"
label var I10_DXCCS2               "ICD-10-CM CCS: diagnosis 2"
label var I10_DXCCS3               "ICD-10-CM CCS: diagnosis 3"
label var I10_DXCCS4               "ICD-10-CM CCS: diagnosis 4"
label var I10_DXCCS5               "ICD-10-CM CCS: diagnosis 5"
label var I10_DXCCS6               "ICD-10-CM CCS: diagnosis 6"
label var I10_DXCCS7               "ICD-10-CM CCS: diagnosis 7"
label var I10_DXCCS8               "ICD-10-CM CCS: diagnosis 8"
label var I10_DXCCS9               "ICD-10-CM CCS: diagnosis 9"
label var I10_DXCCS10              "ICD-10-CM CCS: diagnosis 10"
label var I10_DXCCS11              "ICD-10-CM CCS: diagnosis 11"
label var I10_DXCCS12              "ICD-10-CM CCS: diagnosis 12"
label var I10_DXCCS13              "ICD-10-CM CCS: diagnosis 13"
label var I10_DXCCS14              "ICD-10-CM CCS: diagnosis 14"
label var I10_DXCCS15              "ICD-10-CM CCS: diagnosis 15"
label var I10_DXCCS16              "ICD-10-CM CCS: diagnosis 16"
label var I10_DXCCS17              "ICD-10-CM CCS: diagnosis 17"
label var I10_DXCCS18              "ICD-10-CM CCS: diagnosis 18"
label var I10_DXCCS19              "ICD-10-CM CCS: diagnosis 19"
label var I10_DXCCS20              "ICD-10-CM CCS: diagnosis 20"
label var I10_DXCCS21              "ICD-10-CM CCS: diagnosis 21"
label var I10_DXCCS22              "ICD-10-CM CCS: diagnosis 22"
label var I10_DXCCS23              "ICD-10-CM CCS: diagnosis 23"
label var I10_DXCCS24              "ICD-10-CM CCS: diagnosis 24"
label var I10_DXCCS25              "ICD-10-CM CCS: diagnosis 25"
label var I10_DXCCS26              "ICD-10-CM CCS: diagnosis 26"
label var I10_DXCCS27              "ICD-10-CM CCS: diagnosis 27"
label var I10_DXCCS28              "ICD-10-CM CCS: diagnosis 28"
label var I10_DXCCS29              "ICD-10-CM CCS: diagnosis 29"
label var I10_DXCCS30              "ICD-10-CM CCS: diagnosis 30"
label var I10_DXCCS31              "ICD-10-CM CCS: diagnosis 31"
label var I10_DXCCS32              "ICD-10-CM CCS: diagnosis 32"
label var I10_DXCCS33              "ICD-10-CM CCS: diagnosis 33"
label var I10_DXCCS34              "ICD-10-CM CCS: diagnosis 34"
label var I10_DXCCS35              "ICD-10-CM CCS: diagnosis 35"
label var I10_DXCCS36              "ICD-10-CM CCS: diagnosis 36"
label var I10_DXCCS37              "ICD-10-CM CCS: diagnosis 37"
label var I10_DXCCS38              "ICD-10-CM CCS: diagnosis 38"
label var I10_DXCCS39              "ICD-10-CM CCS: diagnosis 39"
label var I10_DXCCS40              "ICD-10-CM CCS: diagnosis 40"
label var I10_DXCCS41              "ICD-10-CM CCS: diagnosis 41"
label var I10_DXCCS42              "ICD-10-CM CCS: diagnosis 42"
label var I10_DXCCS43              "ICD-10-CM CCS: diagnosis 43"
label var I10_DXCCS44              "ICD-10-CM CCS: diagnosis 44"
label var I10_DXCCS45              "ICD-10-CM CCS: diagnosis 45"
label var I10_DXCCS46              "ICD-10-CM CCS: diagnosis 46"
label var I10_DXCCS47              "ICD-10-CM CCS: diagnosis 47"
label var I10_DXCCS48              "ICD-10-CM CCS: diagnosis 48"
label var I10_DXCCS49              "ICD-10-CM CCS: diagnosis 49"
label var I10_DXCCS50              "ICD-10-CM CCS: diagnosis 50"
label var I10_ECAUSE1              "ICD-10-CM E Cause 1"
label var I10_ECAUSE2              "ICD-10-CM E Cause 2"
label var I10_ECAUSE3              "ICD-10-CM E Cause 3"
label var I10_ECAUSE4              "ICD-10-CM E Cause 4"
label var I10_ECAUSE5              "ICD-10-CM E Cause 5"
label var I10_ECAUSE6              "ICD-10-CM E Cause 6"
label var I10_ECAUSE7              "ICD-10-CM E Cause 7"
label var I10_ECAUSE8              "ICD-10-CM E Cause 8"
label var I10_ECAUSE9              "ICD-10-CM E Cause 9"
label var I10_ECAUSE10             "ICD-10-CM E Cause 10"
label var I10_ECAUSE11             "ICD-10-CM E Cause 11"
label var I10_ECauseCCS1           "ICD-10-CM CCS: E Cause 1"
label var I10_ECauseCCS2           "ICD-10-CM CCS: E Cause 2"
label var I10_ECauseCCS3           "ICD-10-CM CCS: E Cause 3"
label var I10_ECauseCCS4           "ICD-10-CM CCS: E Cause 4"
label var I10_ECauseCCS5           "ICD-10-CM CCS: E Cause 5"
label var I10_ECauseCCS6           "ICD-10-CM CCS: E Cause 6"
label var I10_ECauseCCS7           "ICD-10-CM CCS: E Cause 7"
label var I10_ECauseCCS8           "ICD-10-CM CCS: E Cause 8"
label var I10_ECauseCCS9           "ICD-10-CM CCS: E Cause 9"
label var I10_ECauseCCS10          "ICD-10-CM CCS: E Cause 10"
label var I10_ECauseCCS11          "ICD-10-CM CCS: E Cause 11"
label var I10_HOSPBRTH             "ICD-10-CM Indicator of birth in this hospital"
label var I10_NCHRONIC             "ICD-10-CM Number of chronic conditions"
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_NECAUSE              "ICD-10-CM Number of E Causes on this record"
label var I10_NEOMAT               "ICD-10-CM/PCS Neonatal and/or maternal I10_DX and/or I10_PR"
label var I10_NPR                  "ICD-10-PCS Number of procedures on this record"
label var I10_ORPROC               "ICD-10-PCS Major operating room procedure indicator"
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
label var I10_PR21                 "ICD-10-PCS Procedure 21"
label var I10_PR22                 "ICD-10-PCS Procedure 22"
label var I10_PR23                 "ICD-10-PCS Procedure 23"
label var I10_PR24                 "ICD-10-PCS Procedure 24"
label var I10_PR25                 "ICD-10-PCS Procedure 25"
label var I10_PR26                 "ICD-10-PCS Procedure 26"
label var I10_PR27                 "ICD-10-PCS Procedure 27"
label var I10_PR28                 "ICD-10-PCS Procedure 28"
label var I10_PR29                 "ICD-10-PCS Procedure 29"
label var I10_PR30                 "ICD-10-PCS Procedure 30"
label var I10_PR31                 "ICD-10-PCS Procedure 31"
label var I10_PR32                 "ICD-10-PCS Procedure 32"
label var I10_PR33                 "ICD-10-PCS Procedure 33"
label var I10_PR34                 "ICD-10-PCS Procedure 34"
label var I10_PR35                 "ICD-10-PCS Procedure 35"
label var I10_PR36                 "ICD-10-PCS Procedure 36"
label var I10_PR37                 "ICD-10-PCS Procedure 37"
label var I10_PR38                 "ICD-10-PCS Procedure 38"
label var I10_PR39                 "ICD-10-PCS Procedure 39"
label var I10_PR40                 "ICD-10-PCS Procedure 40"
label var I10_PR41                 "ICD-10-PCS Procedure 41"
label var I10_PR42                 "ICD-10-PCS Procedure 42"
label var I10_PR43                 "ICD-10-PCS Procedure 43"
label var I10_PR44                 "ICD-10-PCS Procedure 44"
label var I10_PR45                 "ICD-10-PCS Procedure 45"
label var I10_PR46                 "ICD-10-PCS Procedure 46"
label var I10_PR47                 "ICD-10-PCS Procedure 47"
label var I10_PR48                 "ICD-10-PCS Procedure 48"
label var I10_PR49                 "ICD-10-PCS Procedure 49"
label var I10_PR50                 "ICD-10-PCS Procedure 50"
label var I10_PRCCS1               "ICD-10-PCS CCS: procedure 1"
label var I10_PRCCS2               "ICD-10-PCS CCS: procedure 2"
label var I10_PRCCS3               "ICD-10-PCS CCS: procedure 3"
label var I10_PRCCS4               "ICD-10-PCS CCS: procedure 4"
label var I10_PRCCS5               "ICD-10-PCS CCS: procedure 5"
label var I10_PRCCS6               "ICD-10-PCS CCS: procedure 6"
label var I10_PRCCS7               "ICD-10-PCS CCS: procedure 7"
label var I10_PRCCS8               "ICD-10-PCS CCS: procedure 8"
label var I10_PRCCS9               "ICD-10-PCS CCS: procedure 9"
label var I10_PRCCS10              "ICD-10-PCS CCS: procedure 10"
label var I10_PRCCS11              "ICD-10-PCS CCS: procedure 11"
label var I10_PRCCS12              "ICD-10-PCS CCS: procedure 12"
label var I10_PRCCS13              "ICD-10-PCS CCS: procedure 13"
label var I10_PRCCS14              "ICD-10-PCS CCS: procedure 14"
label var I10_PRCCS15              "ICD-10-PCS CCS: procedure 15"
label var I10_PRCCS16              "ICD-10-PCS CCS: procedure 16"
label var I10_PRCCS17              "ICD-10-PCS CCS: procedure 17"
label var I10_PRCCS18              "ICD-10-PCS CCS: procedure 18"
label var I10_PRCCS19              "ICD-10-PCS CCS: procedure 19"
label var I10_PRCCS20              "ICD-10-PCS CCS: procedure 20"
label var I10_PRCCS21              "ICD-10-PCS CCS: procedure 21"
label var I10_PRCCS22              "ICD-10-PCS CCS: procedure 22"
label var I10_PRCCS23              "ICD-10-PCS CCS: procedure 23"
label var I10_PRCCS24              "ICD-10-PCS CCS: procedure 24"
label var I10_PRCCS25              "ICD-10-PCS CCS: procedure 25"
label var I10_PRCCS26              "ICD-10-PCS CCS: procedure 26"
label var I10_PRCCS27              "ICD-10-PCS CCS: procedure 27"
label var I10_PRCCS28              "ICD-10-PCS CCS: procedure 28"
label var I10_PRCCS29              "ICD-10-PCS CCS: procedure 29"
label var I10_PRCCS30              "ICD-10-PCS CCS: procedure 30"
label var I10_PRCCS31              "ICD-10-PCS CCS: procedure 31"
label var I10_PRCCS32              "ICD-10-PCS CCS: procedure 32"
label var I10_PRCCS33              "ICD-10-PCS CCS: procedure 33"
label var I10_PRCCS34              "ICD-10-PCS CCS: procedure 34"
label var I10_PRCCS35              "ICD-10-PCS CCS: procedure 35"
label var I10_PRCCS36              "ICD-10-PCS CCS: procedure 36"
label var I10_PRCCS37              "ICD-10-PCS CCS: procedure 37"
label var I10_PRCCS38              "ICD-10-PCS CCS: procedure 38"
label var I10_PRCCS39              "ICD-10-PCS CCS: procedure 39"
label var I10_PRCCS40              "ICD-10-PCS CCS: procedure 40"
label var I10_PRCCS41              "ICD-10-PCS CCS: procedure 41"
label var I10_PRCCS42              "ICD-10-PCS CCS: procedure 42"
label var I10_PRCCS43              "ICD-10-PCS CCS: procedure 43"
label var I10_PRCCS44              "ICD-10-PCS CCS: procedure 44"
label var I10_PRCCS45              "ICD-10-PCS CCS: procedure 45"
label var I10_PRCCS46              "ICD-10-PCS CCS: procedure 46"
label var I10_PRCCS47              "ICD-10-PCS CCS: procedure 47"
label var I10_PRCCS48              "ICD-10-PCS CCS: procedure 48"
label var I10_PRCCS49              "ICD-10-PCS CCS: procedure 49"
label var I10_PRCCS50              "ICD-10-PCS CCS: procedure 50"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDSPEC1                  "Physician 1 specialty (as received from source)"
label var MDSPEC2                  "Physician 2 specialty (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var OPservice                "Indicator of outpatient service (as received from source)"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes(RUCC)"
label var PL_UIC                   "Patient location: Urban Influence Codes"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PRDAY1                   "Number of days from admission to I10_PR1"
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
label var VisitLink                "Visit linkage variable"
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var AYEAR                    "Admission year"
label var BMONTH                   "Birth month"
label var BYEAR                    "Birth year"
label var PRMONTH1                 "Month of procedure 1"
label var PRYEAR1                  "Year of procedure 1"

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
recode Homeless                  (-9 -8 -6 -5=.)
recode I10_DXCCS1                (-999 -888 -666=.)
recode I10_DXCCS2                (-999 -888 -666=.)
recode I10_DXCCS3                (-999 -888 -666=.)
recode I10_DXCCS4                (-999 -888 -666=.)
recode I10_DXCCS5                (-999 -888 -666=.)
recode I10_DXCCS6                (-999 -888 -666=.)
recode I10_DXCCS7                (-999 -888 -666=.)
recode I10_DXCCS8                (-999 -888 -666=.)
recode I10_DXCCS9                (-999 -888 -666=.)
recode I10_DXCCS10               (-999 -888 -666=.)
recode I10_DXCCS11               (-999 -888 -666=.)
recode I10_DXCCS12               (-999 -888 -666=.)
recode I10_DXCCS13               (-999 -888 -666=.)
recode I10_DXCCS14               (-999 -888 -666=.)
recode I10_DXCCS15               (-999 -888 -666=.)
recode I10_DXCCS16               (-999 -888 -666=.)
recode I10_DXCCS17               (-999 -888 -666=.)
recode I10_DXCCS18               (-999 -888 -666=.)
recode I10_DXCCS19               (-999 -888 -666=.)
recode I10_DXCCS20               (-999 -888 -666=.)
recode I10_DXCCS21               (-999 -888 -666=.)
recode I10_DXCCS22               (-999 -888 -666=.)
recode I10_DXCCS23               (-999 -888 -666=.)
recode I10_DXCCS24               (-999 -888 -666=.)
recode I10_DXCCS25               (-999 -888 -666=.)
recode I10_DXCCS26               (-999 -888 -666=.)
recode I10_DXCCS27               (-999 -888 -666=.)
recode I10_DXCCS28               (-999 -888 -666=.)
recode I10_DXCCS29               (-999 -888 -666=.)
recode I10_DXCCS30               (-999 -888 -666=.)
recode I10_DXCCS31               (-999 -888 -666=.)
recode I10_DXCCS32               (-999 -888 -666=.)
recode I10_DXCCS33               (-999 -888 -666=.)
recode I10_DXCCS34               (-999 -888 -666=.)
recode I10_DXCCS35               (-999 -888 -666=.)
recode I10_DXCCS36               (-999 -888 -666=.)
recode I10_DXCCS37               (-999 -888 -666=.)
recode I10_DXCCS38               (-999 -888 -666=.)
recode I10_DXCCS39               (-999 -888 -666=.)
recode I10_DXCCS40               (-999 -888 -666=.)
recode I10_DXCCS41               (-999 -888 -666=.)
recode I10_DXCCS42               (-999 -888 -666=.)
recode I10_DXCCS43               (-999 -888 -666=.)
recode I10_DXCCS44               (-999 -888 -666=.)
recode I10_DXCCS45               (-999 -888 -666=.)
recode I10_DXCCS46               (-999 -888 -666=.)
recode I10_DXCCS47               (-999 -888 -666=.)
recode I10_DXCCS48               (-999 -888 -666=.)
recode I10_DXCCS49               (-999 -888 -666=.)
recode I10_DXCCS50               (-999 -888 -666=.)
recode I10_ECauseCCS1            (-999 -888 -666=.)
recode I10_ECauseCCS2            (-999 -888 -666=.)
recode I10_ECauseCCS3            (-999 -888 -666=.)
recode I10_ECauseCCS4            (-999 -888 -666=.)
recode I10_ECauseCCS5            (-999 -888 -666=.)
recode I10_ECauseCCS6            (-999 -888 -666=.)
recode I10_ECauseCCS7            (-999 -888 -666=.)
recode I10_ECauseCCS8            (-999 -888 -666=.)
recode I10_ECauseCCS9            (-999 -888 -666=.)
recode I10_ECauseCCS10           (-999 -888 -666=.)
recode I10_ECauseCCS11           (-999 -888 -666=.)
recode I10_HOSPBRTH              (-99 -88 -66=.)
recode I10_NCHRONIC              (-99 -88 -66=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NECAUSE               (-9 -8 -6 -5=.)
recode I10_NEOMAT                (-9 -8 -6 -5=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_ORPROC                (-9 -8 -6 -5=.)
recode I10_PRCCS1                (-99 -88 -66=.)
recode I10_PRCCS2                (-99 -88 -66=.)
recode I10_PRCCS3                (-99 -88 -66=.)
recode I10_PRCCS4                (-99 -88 -66=.)
recode I10_PRCCS5                (-99 -88 -66=.)
recode I10_PRCCS6                (-99 -88 -66=.)
recode I10_PRCCS7                (-99 -88 -66=.)
recode I10_PRCCS8                (-99 -88 -66=.)
recode I10_PRCCS9                (-99 -88 -66=.)
recode I10_PRCCS10               (-99 -88 -66=.)
recode I10_PRCCS11               (-99 -88 -66=.)
recode I10_PRCCS12               (-99 -88 -66=.)
recode I10_PRCCS13               (-99 -88 -66=.)
recode I10_PRCCS14               (-99 -88 -66=.)
recode I10_PRCCS15               (-99 -88 -66=.)
recode I10_PRCCS16               (-99 -88 -66=.)
recode I10_PRCCS17               (-99 -88 -66=.)
recode I10_PRCCS18               (-99 -88 -66=.)
recode I10_PRCCS19               (-99 -88 -66=.)
recode I10_PRCCS20               (-99 -88 -66=.)
recode I10_PRCCS21               (-99 -88 -66=.)
recode I10_PRCCS22               (-99 -88 -66=.)
recode I10_PRCCS23               (-99 -88 -66=.)
recode I10_PRCCS24               (-99 -88 -66=.)
recode I10_PRCCS25               (-99 -88 -66=.)
recode I10_PRCCS26               (-99 -88 -66=.)
recode I10_PRCCS27               (-99 -88 -66=.)
recode I10_PRCCS28               (-99 -88 -66=.)
recode I10_PRCCS29               (-99 -88 -66=.)
recode I10_PRCCS30               (-99 -88 -66=.)
recode I10_PRCCS31               (-99 -88 -66=.)
recode I10_PRCCS32               (-99 -88 -66=.)
recode I10_PRCCS33               (-99 -88 -66=.)
recode I10_PRCCS34               (-99 -88 -66=.)
recode I10_PRCCS35               (-99 -88 -66=.)
recode I10_PRCCS36               (-99 -88 -66=.)
recode I10_PRCCS37               (-99 -88 -66=.)
recode I10_PRCCS38               (-99 -88 -66=.)
recode I10_PRCCS39               (-99 -88 -66=.)
recode I10_PRCCS40               (-99 -88 -66=.)
recode I10_PRCCS41               (-99 -88 -66=.)
recode I10_PRCCS42               (-99 -88 -66=.)
recode I10_PRCCS43               (-99 -88 -66=.)
recode I10_PRCCS44               (-99 -88 -66=.)
recode I10_PRCCS45               (-99 -88 -66=.)
recode I10_PRCCS46               (-99 -88 -66=.)
recode I10_PRCCS47               (-99 -88 -66=.)
recode I10_PRCCS48               (-99 -88 -66=.)
recode I10_PRCCS49               (-99 -88 -66=.)
recode I10_PRCCS50               (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode NCPT                      (-999 -888 -666=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
recode PL_RUCC                   (-9 -8 -6 -5=.)
recode PL_UIC                    (-9 -8 -6 -5=.)
recode PL_UR_CAT4                (-9 -8 -6 -5=.)
recode PRDAY1                    (-9999 -8888 -6666=.)
recode PRVER                     (-99 -88 -66=.)
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
recode PRMONTH1                  (-9 -8 -6 -5=.)
recode PRYEAR1                   (-999 -888 -666=.)

save "WI_SEDD_2015q4_CORE.dta", replace
