/*****************************************************************************
* Creation Date: 11/30/2017   
* GA_SID_2014_CORE.Do
* This program will load the 2014 GA ASCII CORE File into Stata.
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
      int    BWT                         20-  23   ///
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
      byte   DIED                       574- 575   ///
      byte   DISPUB04                   576- 577   ///
      byte   DISPUNIFORM                578- 579   ///
      str    DISP_X                     580- 581   ///
      byte   DMONTH                     582- 583   ///
      byte   DQTR                       584- 585   ///
      int    DRG                        586- 588   ///
      int    DRG24                      589- 591   ///
      byte   DRGVER                     592- 593   ///
      int    DRG_NoPOA                  594- 596   ///
      str    DX1                        597- 603   ///
      str    DX2                        604- 610   ///
      str    DX3                        611- 617   ///
      str    DX4                        618- 624   ///
      str    DX5                        625- 631   ///
      str    DX6                        632- 638   ///
      str    DX7                        639- 645   ///
      str    DX8                        646- 652   ///
      str    DX9                        653- 659   ///
      str    DX10                       660- 666   ///
      str    DX11                       667- 673   ///
      str    DX12                       674- 680   ///
      str    DX13                       681- 687   ///
      str    DX14                       688- 694   ///
      str    DX15                       695- 701   ///
      str    DX16                       702- 708   ///
      str    DX17                       709- 715   ///
      str    DX18                       716- 722   ///
      str    DX19                       723- 729   ///
      str    DX20                       730- 736   ///
      str    DX21                       737- 743   ///
      str    DX22                       744- 750   ///
      str    DX23                       751- 757   ///
      str    DX24                       758- 764   ///
      str    DX25                       765- 771   ///
      str    DX26                       772- 778   ///
      str    DX27                       779- 785   ///
      str    DX28                       786- 792   ///
      str    DX29                       793- 799   ///
      str    DX30                       800- 806   ///
      str    DX31                       807- 813   ///
      str    DX32                       814- 820   ///
      str    DX33                       821- 827   ///
      str    DX34                       828- 834   ///
      str    DX35                       835- 841   ///
      str    DX36                       842- 848   ///
      str    DX37                       849- 855   ///
      str    DX38                       856- 862   ///
      str    DX39                       863- 869   ///
      str    DX40                       870- 876   ///
      str    DX41                       877- 883   ///
      str    DX42                       884- 890   ///
      str    DX43                       891- 897   ///
      str    DX44                       898- 904   ///
      str    DX45                       905- 911   ///
      str    DX46                       912- 918   ///
      str    DX47                       919- 925   ///
      str    DX48                       926- 932   ///
      str    DX49                       933- 939   ///
      str    DX50                       940- 946   ///
      int    DXCCS1                     947- 950   ///
      int    DXCCS2                     951- 954   ///
      int    DXCCS3                     955- 958   ///
      int    DXCCS4                     959- 962   ///
      int    DXCCS5                     963- 966   ///
      int    DXCCS6                     967- 970   ///
      int    DXCCS7                     971- 974   ///
      int    DXCCS8                     975- 978   ///
      int    DXCCS9                     979- 982   ///
      int    DXCCS10                    983- 986   ///
      int    DXCCS11                    987- 990   ///
      int    DXCCS12                    991- 994   ///
      int    DXCCS13                    995- 998   ///
      int    DXCCS14                    999-1002   ///
      int    DXCCS15                   1003-1006   ///
      int    DXCCS16                   1007-1010   ///
      int    DXCCS17                   1011-1014   ///
      int    DXCCS18                   1015-1018   ///
      int    DXCCS19                   1019-1022   ///
      int    DXCCS20                   1023-1026   ///
      int    DXCCS21                   1027-1030   ///
      int    DXCCS22                   1031-1034   ///
      int    DXCCS23                   1035-1038   ///
      int    DXCCS24                   1039-1042   ///
      int    DXCCS25                   1043-1046   ///
      int    DXCCS26                   1047-1050   ///
      int    DXCCS27                   1051-1054   ///
      int    DXCCS28                   1055-1058   ///
      int    DXCCS29                   1059-1062   ///
      int    DXCCS30                   1063-1066   ///
      int    DXCCS31                   1067-1070   ///
      int    DXCCS32                   1071-1074   ///
      int    DXCCS33                   1075-1078   ///
      int    DXCCS34                   1079-1082   ///
      int    DXCCS35                   1083-1086   ///
      int    DXCCS36                   1087-1090   ///
      int    DXCCS37                   1091-1094   ///
      int    DXCCS38                   1095-1098   ///
      int    DXCCS39                   1099-1102   ///
      int    DXCCS40                   1103-1106   ///
      int    DXCCS41                   1107-1110   ///
      int    DXCCS42                   1111-1114   ///
      int    DXCCS43                   1115-1118   ///
      int    DXCCS44                   1119-1122   ///
      int    DXCCS45                   1123-1126   ///
      int    DXCCS46                   1127-1130   ///
      int    DXCCS47                   1131-1134   ///
      int    DXCCS48                   1135-1138   ///
      int    DXCCS49                   1139-1142   ///
      int    DXCCS50                   1143-1146   ///
      str    DXPOA1                    1147        ///
      str    DXPOA2                    1148        ///
      str    DXPOA3                    1149        ///
      str    DXPOA4                    1150        ///
      str    DXPOA5                    1151        ///
      str    DXPOA6                    1152        ///
      str    DXPOA7                    1153        ///
      str    DXPOA8                    1154        ///
      str    DXPOA9                    1155        ///
      str    DXPOA10                   1156        ///
      str    DXPOA11                   1157        ///
      str    DXPOA12                   1158        ///
      str    DXPOA13                   1159        ///
      str    DXPOA14                   1160        ///
      str    DXPOA15                   1161        ///
      str    DXPOA16                   1162        ///
      str    DXPOA17                   1163        ///
      str    DXPOA18                   1164        ///
      str    DXPOA19                   1165        ///
      str    DXPOA20                   1166        ///
      str    DXPOA21                   1167        ///
      str    DXPOA22                   1168        ///
      str    DXPOA23                   1169        ///
      str    DXPOA24                   1170        ///
      str    DXPOA25                   1171        ///
      str    DXPOA26                   1172        ///
      str    DXPOA27                   1173        ///
      str    DXPOA28                   1174        ///
      str    DXPOA29                   1175        ///
      str    DXPOA30                   1176        ///
      str    DXPOA31                   1177        ///
      str    DXPOA32                   1178        ///
      str    DXPOA33                   1179        ///
      str    DXPOA34                   1180        ///
      str    DXPOA35                   1181        ///
      str    DXPOA36                   1182        ///
      str    DXPOA37                   1183        ///
      str    DXPOA38                   1184        ///
      str    DXPOA39                   1185        ///
      str    DXPOA40                   1186        ///
      str    DXPOA41                   1187        ///
      str    DXPOA42                   1188        ///
      str    DXPOA43                   1189        ///
      str    DXPOA44                   1190        ///
      str    DXPOA45                   1191        ///
      str    DXPOA46                   1192        ///
      str    DXPOA47                   1193        ///
      str    DXPOA48                   1194        ///
      str    DXPOA49                   1195        ///
      str    DXPOA50                   1196        ///
      int    DXVER                     1197-1199   ///
      long   DaysToEvent               1200-1205   ///
      str    ECODE1                    1206-1212   ///
      str    ECODE2                    1213-1219   ///
      str    ECODE3                    1220-1226   ///
      str    ECODE4                    1227-1233   ///
      str    ECODE5                    1234-1240   ///
      str    ECODE6                    1241-1247   ///
      str    ECODE7                    1248-1254   ///
      str    ECODE8                    1255-1261   ///
      str    ECODE9                    1262-1268   ///
      str    ECODE10                   1269-1275   ///
      int    E_CCS1                    1276-1279   ///
      int    E_CCS2                    1280-1283   ///
      int    E_CCS3                    1284-1287   ///
      int    E_CCS4                    1288-1291   ///
      int    E_CCS5                    1292-1295   ///
      int    E_CCS6                    1296-1299   ///
      int    E_CCS7                    1300-1303   ///
      int    E_CCS8                    1304-1307   ///
      int    E_CCS9                    1308-1311   ///
      int    E_CCS10                   1312-1315   ///
      str    E_POA1                    1316        ///
      str    E_POA2                    1317        ///
      str    E_POA3                    1318        ///
      str    E_POA4                    1319        ///
      str    E_POA5                    1320        ///
      str    E_POA6                    1321        ///
      str    E_POA7                    1322        ///
      str    E_POA8                    1323        ///
      str    E_POA9                    1324        ///
      str    E_POA10                   1325        ///
      byte   FEMALE                    1326-1327   ///
      byte   HCUP_ED                   1328-1329   ///
      byte   HCUP_OS                   1330-1331   ///
      str    HISPANIC_X                1332        ///
      int    HOSPBRTH                  1333-1335   ///
      str    HOSPST                    1336-1337   ///
      byte   Homeless                  1338-1339   ///
      double KEY                       1340-1354   ///
      long   LOS                       1355-1359   ///
      long   LOS_X                     1360-1365   ///
      str    MARITALSTATUSUB04         1366        ///
      str    MARITALSTATUS_X           1367        ///
      byte   MDC                       1368-1369   ///
      byte   MDC24                     1370-1371   ///
      byte   MDC_NoPOA                 1372-1373   ///
      long   MDNUM1_R                  1374-1382   ///
      long   MDNUM2_R                  1383-1391   ///
      long   MDNUM3_R                  1392-1400   ///
      long   MDNUM4_R                  1401-1409   ///
      byte   MEDINCSTQ                 1410-1411   ///
      int    NCHRONIC                  1412-1414   ///
      int    NCPT                      1415-1418   ///
      int    NDX                       1419-1421   ///
      byte   NECODE                    1422-1423   ///
      byte   NEOMAT                    1424-1425   ///
      int    NPR                       1426-1428   ///
      byte   ORPROC                    1429-1430   ///
      double OS_TIME                   1431-1441   ///
      byte   PAY1                      1442-1443   ///
      str    PAY1_X                    1444-1447   ///
      byte   PAY2                      1448-1449   ///
      str    PAY2_X                    1450-1453   ///
      byte   PAY3                      1454-1455   ///
      str    PAY3_X                    1456-1459   ///
      int    PL_CBSA                   1460-1462   ///
      byte   PL_NCHS                   1463-1464   ///
      byte   PL_RUCC                   1465-1466   ///
      byte   PL_UIC                    1467-1468   ///
      byte   PL_UR_CAT4                1469-1470   ///
      byte   POA_Disch_Edit1           1471-1472   ///
      byte   POA_Disch_Edit2           1473-1474   ///
      byte   POA_Hosp_Edit1            1475-1476   ///
      byte   POA_Hosp_Edit2            1477-1478   ///
      byte   POA_Hosp_Edit3            1479-1480   ///
      double POA_Hosp_Edit3_Value      1481-1488   ///
      str    PR1                       1489-1495   ///
      str    PR2                       1496-1502   ///
      str    PR3                       1503-1509   ///
      str    PR4                       1510-1516   ///
      str    PR5                       1517-1523   ///
      str    PR6                       1524-1530   ///
      str    PR7                       1531-1537   ///
      str    PR8                       1538-1544   ///
      str    PR9                       1545-1551   ///
      str    PR10                      1552-1558   ///
      str    PR11                      1559-1565   ///
      str    PR12                      1566-1572   ///
      str    PR13                      1573-1579   ///
      str    PR14                      1580-1586   ///
      str    PR15                      1587-1593   ///
      str    PR16                      1594-1600   ///
      str    PR17                      1601-1607   ///
      str    PR18                      1608-1614   ///
      str    PR19                      1615-1621   ///
      str    PR20                      1622-1628   ///
      str    PR21                      1629-1635   ///
      str    PR22                      1636-1642   ///
      str    PR23                      1643-1649   ///
      str    PR24                      1650-1656   ///
      str    PR25                      1657-1663   ///
      str    PR26                      1664-1670   ///
      str    PR27                      1671-1677   ///
      str    PR28                      1678-1684   ///
      str    PR29                      1685-1691   ///
      str    PR30                      1692-1698   ///
      str    PR31                      1699-1705   ///
      str    PR32                      1706-1712   ///
      str    PR33                      1713-1719   ///
      str    PR34                      1720-1726   ///
      str    PR35                      1727-1733   ///
      str    PR36                      1734-1740   ///
      str    PR37                      1741-1747   ///
      str    PR38                      1748-1754   ///
      str    PR39                      1755-1761   ///
      str    PR40                      1762-1768   ///
      str    PR41                      1769-1775   ///
      str    PR42                      1776-1782   ///
      str    PR43                      1783-1789   ///
      str    PR44                      1790-1796   ///
      str    PR45                      1797-1803   ///
      str    PR46                      1804-1810   ///
      str    PR47                      1811-1817   ///
      str    PR48                      1818-1824   ///
      str    PR49                      1825-1831   ///
      str    PR50                      1832-1838   ///
      int    PRCCS1                    1839-1841   ///
      int    PRCCS2                    1842-1844   ///
      int    PRCCS3                    1845-1847   ///
      int    PRCCS4                    1848-1850   ///
      int    PRCCS5                    1851-1853   ///
      int    PRCCS6                    1854-1856   ///
      int    PRCCS7                    1857-1859   ///
      int    PRCCS8                    1860-1862   ///
      int    PRCCS9                    1863-1865   ///
      int    PRCCS10                   1866-1868   ///
      int    PRCCS11                   1869-1871   ///
      int    PRCCS12                   1872-1874   ///
      int    PRCCS13                   1875-1877   ///
      int    PRCCS14                   1878-1880   ///
      int    PRCCS15                   1881-1883   ///
      int    PRCCS16                   1884-1886   ///
      int    PRCCS17                   1887-1889   ///
      int    PRCCS18                   1890-1892   ///
      int    PRCCS19                   1893-1895   ///
      int    PRCCS20                   1896-1898   ///
      int    PRCCS21                   1899-1901   ///
      int    PRCCS22                   1902-1904   ///
      int    PRCCS23                   1905-1907   ///
      int    PRCCS24                   1908-1910   ///
      int    PRCCS25                   1911-1913   ///
      int    PRCCS26                   1914-1916   ///
      int    PRCCS27                   1917-1919   ///
      int    PRCCS28                   1920-1922   ///
      int    PRCCS29                   1923-1925   ///
      int    PRCCS30                   1926-1928   ///
      int    PRCCS31                   1929-1931   ///
      int    PRCCS32                   1932-1934   ///
      int    PRCCS33                   1935-1937   ///
      int    PRCCS34                   1938-1940   ///
      int    PRCCS35                   1941-1943   ///
      int    PRCCS36                   1944-1946   ///
      int    PRCCS37                   1947-1949   ///
      int    PRCCS38                   1950-1952   ///
      int    PRCCS39                   1953-1955   ///
      int    PRCCS40                   1956-1958   ///
      int    PRCCS41                   1959-1961   ///
      int    PRCCS42                   1962-1964   ///
      int    PRCCS43                   1965-1967   ///
      int    PRCCS44                   1968-1970   ///
      int    PRCCS45                   1971-1973   ///
      int    PRCCS46                   1974-1976   ///
      int    PRCCS47                   1977-1979   ///
      int    PRCCS48                   1980-1982   ///
      int    PRCCS49                   1983-1985   ///
      int    PRCCS50                   1986-1988   ///
      long   PRDAY1                    1989-1993   ///
      long   PRDAY2                    1994-1998   ///
      long   PRDAY3                    1999-2003   ///
      long   PRDAY4                    2004-2008   ///
      long   PRDAY5                    2009-2013   ///
      long   PRDAY6                    2014-2018   ///
      long   PRDAY7                    2019-2023   ///
      long   PRDAY8                    2024-2028   ///
      long   PRDAY9                    2029-2033   ///
      long   PRDAY10                   2034-2038   ///
      long   PRDAY11                   2039-2043   ///
      long   PRDAY12                   2044-2048   ///
      long   PRDAY13                   2049-2053   ///
      long   PRDAY14                   2054-2058   ///
      long   PRDAY15                   2059-2063   ///
      long   PRDAY16                   2064-2068   ///
      long   PRDAY17                   2069-2073   ///
      long   PRDAY18                   2074-2078   ///
      long   PRDAY19                   2079-2083   ///
      long   PRDAY20                   2084-2088   ///
      long   PRDAY21                   2089-2093   ///
      long   PRDAY22                   2094-2098   ///
      long   PRDAY23                   2099-2103   ///
      long   PRDAY24                   2104-2108   ///
      long   PRDAY25                   2109-2113   ///
      long   PRDAY26                   2114-2118   ///
      long   PRDAY27                   2119-2123   ///
      long   PRDAY28                   2124-2128   ///
      long   PRDAY29                   2129-2133   ///
      long   PRDAY30                   2134-2138   ///
      long   PRDAY31                   2139-2143   ///
      long   PRDAY32                   2144-2148   ///
      long   PRDAY33                   2149-2153   ///
      long   PRDAY34                   2154-2158   ///
      long   PRDAY35                   2159-2163   ///
      long   PRDAY36                   2164-2168   ///
      long   PRDAY37                   2169-2173   ///
      long   PRDAY38                   2174-2178   ///
      long   PRDAY39                   2179-2183   ///
      long   PRDAY40                   2184-2188   ///
      long   PRDAY41                   2189-2193   ///
      long   PRDAY42                   2194-2198   ///
      long   PRDAY43                   2199-2203   ///
      long   PRDAY44                   2204-2208   ///
      long   PRDAY45                   2209-2213   ///
      long   PRDAY46                   2214-2218   ///
      long   PRDAY47                   2219-2223   ///
      long   PRDAY48                   2224-2228   ///
      long   PRDAY49                   2229-2233   ///
      long   PRDAY50                   2234-2238   ///
      int    PROCTYPE                  2239-2241   ///
      int    PRVER                     2242-2244   ///
      str    PSTATE                    2245-2246   ///
      long   PSTCO                     2247-2251   ///
      long   PSTCO2                    2252-2256   ///
      str    PointOfOriginUB04         2257        ///
      str    PointOfOrigin_X           2258        ///
      str    PrimLang                  2259-2261   ///
      byte   RACE                      2262-2263   ///
      str    RACE_X                    2264        ///
      byte   SERVICELINE               2265-2266   ///
      double TOTCHG                    2267-2276   ///
      double TOTCHG_X                  2277-2291   ///
      byte   TRAN_IN                   2292-2293   ///
      byte   TRAN_OUT                  2294-2295   ///
      long   VisitLink                 2296-2304   ///
      int    YEAR                      2305-2308   ///
      str    ZIP                       2309-2313   ///
      str    ZIP3                      2314-2316   ///
      int    ZIPINC_QRTL               2317-2319   ///
      long   HOSPID                    2320-2324   ///
      int    AYEAR                     2325-2328   ///
      byte   BMONTH                    2329-2330   ///
      int    BYEAR                     2331-2334   ///
      byte   PRMONTH1                  2335-2336   ///
      byte   PRMONTH2                  2337-2338   ///
      byte   PRMONTH3                  2339-2340   ///
      byte   PRMONTH4                  2341-2342   ///
      byte   PRMONTH5                  2343-2344   ///
      byte   PRMONTH6                  2345-2346   ///
      byte   PRMONTH7                  2347-2348   ///
      byte   PRMONTH8                  2349-2350   ///
      byte   PRMONTH9                  2351-2352   ///
      byte   PRMONTH10                 2353-2354   ///
      byte   PRMONTH11                 2355-2356   ///
      byte   PRMONTH12                 2357-2358   ///
      byte   PRMONTH13                 2359-2360   ///
      byte   PRMONTH14                 2361-2362   ///
      byte   PRMONTH15                 2363-2364   ///
      byte   PRMONTH16                 2365-2366   ///
      byte   PRMONTH17                 2367-2368   ///
      byte   PRMONTH18                 2369-2370   ///
      byte   PRMONTH19                 2371-2372   ///
      byte   PRMONTH20                 2373-2374   ///
      byte   PRMONTH21                 2375-2376   ///
      byte   PRMONTH22                 2377-2378   ///
      byte   PRMONTH23                 2379-2380   ///
      byte   PRMONTH24                 2381-2382   ///
      byte   PRMONTH25                 2383-2384   ///
      byte   PRMONTH26                 2385-2386   ///
      byte   PRMONTH27                 2387-2388   ///
      byte   PRMONTH28                 2389-2390   ///
      byte   PRMONTH29                 2391-2392   ///
      byte   PRMONTH30                 2393-2394   ///
      byte   PRMONTH31                 2395-2396   ///
      byte   PRMONTH32                 2397-2398   ///
      byte   PRMONTH33                 2399-2400   ///
      byte   PRMONTH34                 2401-2402   ///
      byte   PRMONTH35                 2403-2404   ///
      byte   PRMONTH36                 2405-2406   ///
      byte   PRMONTH37                 2407-2408   ///
      byte   PRMONTH38                 2409-2410   ///
      byte   PRMONTH39                 2411-2412   ///
      byte   PRMONTH40                 2413-2414   ///
      byte   PRMONTH41                 2415-2416   ///
      byte   PRMONTH42                 2417-2418   ///
      byte   PRMONTH43                 2419-2420   ///
      byte   PRMONTH44                 2421-2422   ///
      byte   PRMONTH45                 2423-2424   ///
      byte   PRMONTH46                 2425-2426   ///
      byte   PRMONTH47                 2427-2428   ///
      byte   PRMONTH48                 2429-2430   ///
      byte   PRMONTH49                 2431-2432   ///
      byte   PRMONTH50                 2433-2434   ///
      int    PRYEAR1                   2435-2438   ///
      int    PRYEAR2                   2439-2442   ///
      int    PRYEAR3                   2443-2446   ///
      int    PRYEAR4                   2447-2450   ///
      int    PRYEAR5                   2451-2454   ///
      int    PRYEAR6                   2455-2458   ///
      int    PRYEAR7                   2459-2462   ///
      int    PRYEAR8                   2463-2466   ///
      int    PRYEAR9                   2467-2470   ///
      int    PRYEAR10                  2471-2474   ///
      int    PRYEAR11                  2475-2478   ///
      int    PRYEAR12                  2479-2482   ///
      int    PRYEAR13                  2483-2486   ///
      int    PRYEAR14                  2487-2490   ///
      int    PRYEAR15                  2491-2494   ///
      int    PRYEAR16                  2495-2498   ///
      int    PRYEAR17                  2499-2502   ///
      int    PRYEAR18                  2503-2506   ///
      int    PRYEAR19                  2507-2510   ///
      int    PRYEAR20                  2511-2514   ///
      int    PRYEAR21                  2515-2518   ///
      int    PRYEAR22                  2519-2522   ///
      int    PRYEAR23                  2523-2526   ///
      int    PRYEAR24                  2527-2530   ///
      int    PRYEAR25                  2531-2534   ///
      int    PRYEAR26                  2535-2538   ///
      int    PRYEAR27                  2539-2542   ///
      int    PRYEAR28                  2543-2546   ///
      int    PRYEAR29                  2547-2550   ///
      int    PRYEAR30                  2551-2554   ///
      int    PRYEAR31                  2555-2558   ///
      int    PRYEAR32                  2559-2562   ///
      int    PRYEAR33                  2563-2566   ///
      int    PRYEAR34                  2567-2570   ///
      int    PRYEAR35                  2571-2574   ///
      int    PRYEAR36                  2575-2578   ///
      int    PRYEAR37                  2579-2582   ///
      int    PRYEAR38                  2583-2586   ///
      int    PRYEAR39                  2587-2590   ///
      int    PRYEAR40                  2591-2594   ///
      int    PRYEAR41                  2595-2598   ///
      int    PRYEAR42                  2599-2602   ///
      int    PRYEAR43                  2603-2606   ///
      int    PRYEAR44                  2607-2610   ///
      int    PRYEAR45                  2611-2614   ///
      int    PRYEAR46                  2615-2618   ///
      int    PRYEAR47                  2619-2622   ///
      int    PRYEAR48                  2623-2626   ///
      int    PRYEAR49                  2627-2630   ///
      int    PRYEAR50                  2631-2634   ///
      using  "GA_SID_2014_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
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
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRG24                    "DRG, version 24"
label var DRGVER                   "DRG grouper version used on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
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
label var DX31                     "Diagnosis 31"
label var DX32                     "Diagnosis 32"
label var DX33                     "Diagnosis 33"
label var DX34                     "Diagnosis 34"
label var DX35                     "Diagnosis 35"
label var DX36                     "Diagnosis 36"
label var DX37                     "Diagnosis 37"
label var DX38                     "Diagnosis 38"
label var DX39                     "Diagnosis 39"
label var DX40                     "Diagnosis 40"
label var DX41                     "Diagnosis 41"
label var DX42                     "Diagnosis 42"
label var DX43                     "Diagnosis 43"
label var DX44                     "Diagnosis 44"
label var DX45                     "Diagnosis 45"
label var DX46                     "Diagnosis 46"
label var DX47                     "Diagnosis 47"
label var DX48                     "Diagnosis 48"
label var DX49                     "Diagnosis 49"
label var DX50                     "Diagnosis 50"
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
label var DXCCS31                  "CCS: diagnosis 31"
label var DXCCS32                  "CCS: diagnosis 32"
label var DXCCS33                  "CCS: diagnosis 33"
label var DXCCS34                  "CCS: diagnosis 34"
label var DXCCS35                  "CCS: diagnosis 35"
label var DXCCS36                  "CCS: diagnosis 36"
label var DXCCS37                  "CCS: diagnosis 37"
label var DXCCS38                  "CCS: diagnosis 38"
label var DXCCS39                  "CCS: diagnosis 39"
label var DXCCS40                  "CCS: diagnosis 40"
label var DXCCS41                  "CCS: diagnosis 41"
label var DXCCS42                  "CCS: diagnosis 42"
label var DXCCS43                  "CCS: diagnosis 43"
label var DXCCS44                  "CCS: diagnosis 44"
label var DXCCS45                  "CCS: diagnosis 45"
label var DXCCS46                  "CCS: diagnosis 46"
label var DXCCS47                  "CCS: diagnosis 47"
label var DXCCS48                  "CCS: diagnosis 48"
label var DXCCS49                  "CCS: diagnosis 49"
label var DXCCS50                  "CCS: diagnosis 50"
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
label var DXPOA26                  "Diagnosis 26, present on admission indicator"
label var DXPOA27                  "Diagnosis 27, present on admission indicator"
label var DXPOA28                  "Diagnosis 28, present on admission indicator"
label var DXPOA29                  "Diagnosis 29, present on admission indicator"
label var DXPOA30                  "Diagnosis 30, present on admission indicator"
label var DXPOA31                  "Diagnosis 31, present on admission indicator"
label var DXPOA32                  "Diagnosis 32, present on admission indicator"
label var DXPOA33                  "Diagnosis 33, present on admission indicator"
label var DXPOA34                  "Diagnosis 34, present on admission indicator"
label var DXPOA35                  "Diagnosis 35, present on admission indicator"
label var DXPOA36                  "Diagnosis 36, present on admission indicator"
label var DXPOA37                  "Diagnosis 37, present on admission indicator"
label var DXPOA38                  "Diagnosis 38, present on admission indicator"
label var DXPOA39                  "Diagnosis 39, present on admission indicator"
label var DXPOA40                  "Diagnosis 40, present on admission indicator"
label var DXPOA41                  "Diagnosis 41, present on admission indicator"
label var DXPOA42                  "Diagnosis 42, present on admission indicator"
label var DXPOA43                  "Diagnosis 43, present on admission indicator"
label var DXPOA44                  "Diagnosis 44, present on admission indicator"
label var DXPOA45                  "Diagnosis 45, present on admission indicator"
label var DXPOA46                  "Diagnosis 46, present on admission indicator"
label var DXPOA47                  "Diagnosis 47, present on admission indicator"
label var DXPOA48                  "Diagnosis 48, present on admission indicator"
label var DXPOA49                  "Diagnosis 49, present on admission indicator"
label var DXPOA50                  "Diagnosis 50, present on admission indicator"
label var DXVER                    "Diagnosis Version"
label var DaysToEvent              "Days from 'start date' to admission"
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
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var E_POA7                   "E Code 7, present on admission indicator"
label var E_POA8                   "E Code 8, present on admission indicator"
label var E_POA9                   "E Code 9, present on admission indicator"
label var E_POA10                  "E Code 10, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var Homeless                 "Indicator that patient is homeless"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MARITALSTATUS_X          "Patient's marital status (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC24                    "MDC, version 24"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MDNUM4_R                 "Physician 4 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
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
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
label var PAY3                     "Tertiary expected payer (uniform)"
label var PAY3_X                   "Tertiary expected payer (as received from source)"
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
label var PR26                     "Procedure 26"
label var PR27                     "Procedure 27"
label var PR28                     "Procedure 28"
label var PR29                     "Procedure 29"
label var PR30                     "Procedure 30"
label var PR31                     "Procedure 31"
label var PR32                     "Procedure 32"
label var PR33                     "Procedure 33"
label var PR34                     "Procedure 34"
label var PR35                     "Procedure 35"
label var PR36                     "Procedure 36"
label var PR37                     "Procedure 37"
label var PR38                     "Procedure 38"
label var PR39                     "Procedure 39"
label var PR40                     "Procedure 40"
label var PR41                     "Procedure 41"
label var PR42                     "Procedure 42"
label var PR43                     "Procedure 43"
label var PR44                     "Procedure 44"
label var PR45                     "Procedure 45"
label var PR46                     "Procedure 46"
label var PR47                     "Procedure 47"
label var PR48                     "Procedure 48"
label var PR49                     "Procedure 49"
label var PR50                     "Procedure 50"
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
label var PRCCS26                  "CCS: procedure 26"
label var PRCCS27                  "CCS: procedure 27"
label var PRCCS28                  "CCS: procedure 28"
label var PRCCS29                  "CCS: procedure 29"
label var PRCCS30                  "CCS: procedure 30"
label var PRCCS31                  "CCS: procedure 31"
label var PRCCS32                  "CCS: procedure 32"
label var PRCCS33                  "CCS: procedure 33"
label var PRCCS34                  "CCS: procedure 34"
label var PRCCS35                  "CCS: procedure 35"
label var PRCCS36                  "CCS: procedure 36"
label var PRCCS37                  "CCS: procedure 37"
label var PRCCS38                  "CCS: procedure 38"
label var PRCCS39                  "CCS: procedure 39"
label var PRCCS40                  "CCS: procedure 40"
label var PRCCS41                  "CCS: procedure 41"
label var PRCCS42                  "CCS: procedure 42"
label var PRCCS43                  "CCS: procedure 43"
label var PRCCS44                  "CCS: procedure 44"
label var PRCCS45                  "CCS: procedure 45"
label var PRCCS46                  "CCS: procedure 46"
label var PRCCS47                  "CCS: procedure 47"
label var PRCCS48                  "CCS: procedure 48"
label var PRCCS49                  "CCS: procedure 49"
label var PRCCS50                  "CCS: procedure 50"
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
label var PRDAY26                  "Number of days from admission to PR26"
label var PRDAY27                  "Number of days from admission to PR27"
label var PRDAY28                  "Number of days from admission to PR28"
label var PRDAY29                  "Number of days from admission to PR29"
label var PRDAY30                  "Number of days from admission to PR30"
label var PRDAY31                  "Number of days from admission to PR31"
label var PRDAY32                  "Number of days from admission to PR32"
label var PRDAY33                  "Number of days from admission to PR33"
label var PRDAY34                  "Number of days from admission to PR34"
label var PRDAY35                  "Number of days from admission to PR35"
label var PRDAY36                  "Number of days from admission to PR36"
label var PRDAY37                  "Number of days from admission to PR37"
label var PRDAY38                  "Number of days from admission to PR38"
label var PRDAY39                  "Number of days from admission to PR39"
label var PRDAY40                  "Number of days from admission to PR40"
label var PRDAY41                  "Number of days from admission to PR41"
label var PRDAY42                  "Number of days from admission to PR42"
label var PRDAY43                  "Number of days from admission to PR43"
label var PRDAY44                  "Number of days from admission to PR44"
label var PRDAY45                  "Number of days from admission to PR45"
label var PRDAY46                  "Number of days from admission to PR46"
label var PRDAY47                  "Number of days from admission to PR47"
label var PRDAY48                  "Number of days from admission to PR48"
label var PRDAY49                  "Number of days from admission to PR49"
label var PRDAY50                  "Number of days from admission to PR50"
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PrimLang                 "Primary language of patient"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var SERVICELINE              "Hospital Service Line"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var VisitLink                "Visit linkage variable"
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var HOSPID                   "HCUP hospital identification number"
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
label var PRMONTH26                "Month of procedure 26"
label var PRMONTH27                "Month of procedure 27"
label var PRMONTH28                "Month of procedure 28"
label var PRMONTH29                "Month of procedure 29"
label var PRMONTH30                "Month of procedure 30"
label var PRMONTH31                "Month of procedure 31"
label var PRMONTH32                "Month of procedure 32"
label var PRMONTH33                "Month of procedure 33"
label var PRMONTH34                "Month of procedure 34"
label var PRMONTH35                "Month of procedure 35"
label var PRMONTH36                "Month of procedure 36"
label var PRMONTH37                "Month of procedure 37"
label var PRMONTH38                "Month of procedure 38"
label var PRMONTH39                "Month of procedure 39"
label var PRMONTH40                "Month of procedure 40"
label var PRMONTH41                "Month of procedure 41"
label var PRMONTH42                "Month of procedure 42"
label var PRMONTH43                "Month of procedure 43"
label var PRMONTH44                "Month of procedure 44"
label var PRMONTH45                "Month of procedure 45"
label var PRMONTH46                "Month of procedure 46"
label var PRMONTH47                "Month of procedure 47"
label var PRMONTH48                "Month of procedure 48"
label var PRMONTH49                "Month of procedure 49"
label var PRMONTH50                "Month of procedure 50"
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
label var PRYEAR26                 "Year of procedure 26"
label var PRYEAR27                 "Year of procedure 27"
label var PRYEAR28                 "Year of procedure 28"
label var PRYEAR29                 "Year of procedure 29"
label var PRYEAR30                 "Year of procedure 30"
label var PRYEAR31                 "Year of procedure 31"
label var PRYEAR32                 "Year of procedure 32"
label var PRYEAR33                 "Year of procedure 33"
label var PRYEAR34                 "Year of procedure 34"
label var PRYEAR35                 "Year of procedure 35"
label var PRYEAR36                 "Year of procedure 36"
label var PRYEAR37                 "Year of procedure 37"
label var PRYEAR38                 "Year of procedure 38"
label var PRYEAR39                 "Year of procedure 39"
label var PRYEAR40                 "Year of procedure 40"
label var PRYEAR41                 "Year of procedure 41"
label var PRYEAR42                 "Year of procedure 42"
label var PRYEAR43                 "Year of procedure 43"
label var PRYEAR44                 "Year of procedure 44"
label var PRYEAR45                 "Year of procedure 45"
label var PRYEAR46                 "Year of procedure 46"
label var PRYEAR47                 "Year of procedure 47"
label var PRYEAR48                 "Year of procedure 48"
label var PRYEAR49                 "Year of procedure 49"
label var PRYEAR50                 "Year of procedure 50"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
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
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG24                     (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
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
recode DXCCS31                   (-999 -888 -666=.)
recode DXCCS32                   (-999 -888 -666=.)
recode DXCCS33                   (-999 -888 -666=.)
recode DXCCS34                   (-999 -888 -666=.)
recode DXCCS35                   (-999 -888 -666=.)
recode DXCCS36                   (-999 -888 -666=.)
recode DXCCS37                   (-999 -888 -666=.)
recode DXCCS38                   (-999 -888 -666=.)
recode DXCCS39                   (-999 -888 -666=.)
recode DXCCS40                   (-999 -888 -666=.)
recode DXCCS41                   (-999 -888 -666=.)
recode DXCCS42                   (-999 -888 -666=.)
recode DXCCS43                   (-999 -888 -666=.)
recode DXCCS44                   (-999 -888 -666=.)
recode DXCCS45                   (-999 -888 -666=.)
recode DXCCS46                   (-999 -888 -666=.)
recode DXCCS47                   (-999 -888 -666=.)
recode DXCCS48                   (-999 -888 -666=.)
recode DXCCS49                   (-999 -888 -666=.)
recode DXCCS50                   (-999 -888 -666=.)
recode DXVER                     (-99 -88 -66=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
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
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC24                     (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM4_R                  (-99999999 -88888888 -66666666=.)
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
recode PRCCS22                   (-99 -88 -66=.)
recode PRCCS23                   (-99 -88 -66=.)
recode PRCCS24                   (-99 -88 -66=.)
recode PRCCS25                   (-99 -88 -66=.)
recode PRCCS26                   (-99 -88 -66=.)
recode PRCCS27                   (-99 -88 -66=.)
recode PRCCS28                   (-99 -88 -66=.)
recode PRCCS29                   (-99 -88 -66=.)
recode PRCCS30                   (-99 -88 -66=.)
recode PRCCS31                   (-99 -88 -66=.)
recode PRCCS32                   (-99 -88 -66=.)
recode PRCCS33                   (-99 -88 -66=.)
recode PRCCS34                   (-99 -88 -66=.)
recode PRCCS35                   (-99 -88 -66=.)
recode PRCCS36                   (-99 -88 -66=.)
recode PRCCS37                   (-99 -88 -66=.)
recode PRCCS38                   (-99 -88 -66=.)
recode PRCCS39                   (-99 -88 -66=.)
recode PRCCS40                   (-99 -88 -66=.)
recode PRCCS41                   (-99 -88 -66=.)
recode PRCCS42                   (-99 -88 -66=.)
recode PRCCS43                   (-99 -88 -66=.)
recode PRCCS44                   (-99 -88 -66=.)
recode PRCCS45                   (-99 -88 -66=.)
recode PRCCS46                   (-99 -88 -66=.)
recode PRCCS47                   (-99 -88 -66=.)
recode PRCCS48                   (-99 -88 -66=.)
recode PRCCS49                   (-99 -88 -66=.)
recode PRCCS50                   (-99 -88 -66=.)
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
recode PRDAY26                   (-9999 -8888 -6666=.)
recode PRDAY27                   (-9999 -8888 -6666=.)
recode PRDAY28                   (-9999 -8888 -6666=.)
recode PRDAY29                   (-9999 -8888 -6666=.)
recode PRDAY30                   (-9999 -8888 -6666=.)
recode PRDAY31                   (-9999 -8888 -6666=.)
recode PRDAY32                   (-9999 -8888 -6666=.)
recode PRDAY33                   (-9999 -8888 -6666=.)
recode PRDAY34                   (-9999 -8888 -6666=.)
recode PRDAY35                   (-9999 -8888 -6666=.)
recode PRDAY36                   (-9999 -8888 -6666=.)
recode PRDAY37                   (-9999 -8888 -6666=.)
recode PRDAY38                   (-9999 -8888 -6666=.)
recode PRDAY39                   (-9999 -8888 -6666=.)
recode PRDAY40                   (-9999 -8888 -6666=.)
recode PRDAY41                   (-9999 -8888 -6666=.)
recode PRDAY42                   (-9999 -8888 -6666=.)
recode PRDAY43                   (-9999 -8888 -6666=.)
recode PRDAY44                   (-9999 -8888 -6666=.)
recode PRDAY45                   (-9999 -8888 -6666=.)
recode PRDAY46                   (-9999 -8888 -6666=.)
recode PRDAY47                   (-9999 -8888 -6666=.)
recode PRDAY48                   (-9999 -8888 -6666=.)
recode PRDAY49                   (-9999 -8888 -6666=.)
recode PRDAY50                   (-9999 -8888 -6666=.)
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode SERVICELINE               (-9 -8 -6 -5=.)
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
recode PRMONTH21                 (-9 -8 -6 -5=.)
recode PRMONTH22                 (-9 -8 -6 -5=.)
recode PRMONTH23                 (-9 -8 -6 -5=.)
recode PRMONTH24                 (-9 -8 -6 -5=.)
recode PRMONTH25                 (-9 -8 -6 -5=.)
recode PRMONTH26                 (-9 -8 -6 -5=.)
recode PRMONTH27                 (-9 -8 -6 -5=.)
recode PRMONTH28                 (-9 -8 -6 -5=.)
recode PRMONTH29                 (-9 -8 -6 -5=.)
recode PRMONTH30                 (-9 -8 -6 -5=.)
recode PRMONTH31                 (-9 -8 -6 -5=.)
recode PRMONTH32                 (-9 -8 -6 -5=.)
recode PRMONTH33                 (-9 -8 -6 -5=.)
recode PRMONTH34                 (-9 -8 -6 -5=.)
recode PRMONTH35                 (-9 -8 -6 -5=.)
recode PRMONTH36                 (-9 -8 -6 -5=.)
recode PRMONTH37                 (-9 -8 -6 -5=.)
recode PRMONTH38                 (-9 -8 -6 -5=.)
recode PRMONTH39                 (-9 -8 -6 -5=.)
recode PRMONTH40                 (-9 -8 -6 -5=.)
recode PRMONTH41                 (-9 -8 -6 -5=.)
recode PRMONTH42                 (-9 -8 -6 -5=.)
recode PRMONTH43                 (-9 -8 -6 -5=.)
recode PRMONTH44                 (-9 -8 -6 -5=.)
recode PRMONTH45                 (-9 -8 -6 -5=.)
recode PRMONTH46                 (-9 -8 -6 -5=.)
recode PRMONTH47                 (-9 -8 -6 -5=.)
recode PRMONTH48                 (-9 -8 -6 -5=.)
recode PRMONTH49                 (-9 -8 -6 -5=.)
recode PRMONTH50                 (-9 -8 -6 -5=.)
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
recode PRYEAR26                  (-999 -888 -666=.)
recode PRYEAR27                  (-999 -888 -666=.)
recode PRYEAR28                  (-999 -888 -666=.)
recode PRYEAR29                  (-999 -888 -666=.)
recode PRYEAR30                  (-999 -888 -666=.)
recode PRYEAR31                  (-999 -888 -666=.)
recode PRYEAR32                  (-999 -888 -666=.)
recode PRYEAR33                  (-999 -888 -666=.)
recode PRYEAR34                  (-999 -888 -666=.)
recode PRYEAR35                  (-999 -888 -666=.)
recode PRYEAR36                  (-999 -888 -666=.)
recode PRYEAR37                  (-999 -888 -666=.)
recode PRYEAR38                  (-999 -888 -666=.)
recode PRYEAR39                  (-999 -888 -666=.)
recode PRYEAR40                  (-999 -888 -666=.)
recode PRYEAR41                  (-999 -888 -666=.)
recode PRYEAR42                  (-999 -888 -666=.)
recode PRYEAR43                  (-999 -888 -666=.)
recode PRYEAR44                  (-999 -888 -666=.)
recode PRYEAR45                  (-999 -888 -666=.)
recode PRYEAR46                  (-999 -888 -666=.)
recode PRYEAR47                  (-999 -888 -666=.)
recode PRYEAR48                  (-999 -888 -666=.)
recode PRYEAR49                  (-999 -888 -666=.)
recode PRYEAR50                  (-999 -888 -666=.)

save "GA_SID_2014_CORE.dta", replace
