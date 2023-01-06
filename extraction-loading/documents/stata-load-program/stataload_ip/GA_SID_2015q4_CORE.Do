/*****************************************************************************
* Creation Date: 04/18/2018   
* GA_SID_2015q4_CORE.Do
* This program will load the 2015 GA ASCII CORE File into Stata.
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
      long   DaysToEvent                424- 429   ///
      byte   DIED                       430- 431   ///
      str    DISP_X                     432- 433   ///
      byte   DISPUB04                   434- 435   ///
      byte   DISPUNIFORM                436- 437   ///
      byte   DMONTH                     438- 439   ///
      byte   DQTR                       440- 441   ///
      int    DRG                        442- 444   ///
      int    DRG_NoPOA                  445- 447   ///
      int    DRG32                      448- 450   ///
      byte   DRGVER                     451- 452   ///
      str    DXPOA1                     453        ///
      str    DXPOA2                     454        ///
      str    DXPOA3                     455        ///
      str    DXPOA4                     456        ///
      str    DXPOA5                     457        ///
      str    DXPOA6                     458        ///
      str    DXPOA7                     459        ///
      str    DXPOA8                     460        ///
      str    DXPOA9                     461        ///
      str    DXPOA10                    462        ///
      str    DXPOA11                    463        ///
      str    DXPOA12                    464        ///
      str    DXPOA13                    465        ///
      str    DXPOA14                    466        ///
      str    DXPOA15                    467        ///
      str    DXPOA16                    468        ///
      str    DXPOA17                    469        ///
      str    DXPOA18                    470        ///
      str    DXPOA19                    471        ///
      str    DXPOA20                    472        ///
      str    DXPOA21                    473        ///
      str    DXPOA22                    474        ///
      str    DXPOA23                    475        ///
      str    DXPOA24                    476        ///
      str    DXPOA25                    477        ///
      str    DXPOA26                    478        ///
      str    DXPOA27                    479        ///
      str    DXPOA28                    480        ///
      str    DXPOA29                    481        ///
      str    DXPOA30                    482        ///
      str    DXPOA31                    483        ///
      str    DXPOA32                    484        ///
      str    DXPOA33                    485        ///
      str    DXPOA34                    486        ///
      str    DXPOA35                    487        ///
      str    DXPOA36                    488        ///
      str    DXPOA37                    489        ///
      str    DXPOA38                    490        ///
      str    DXPOA39                    491        ///
      str    DXPOA40                    492        ///
      str    DXPOA41                    493        ///
      str    DXPOA42                    494        ///
      str    DXPOA43                    495        ///
      str    DXPOA44                    496        ///
      str    DXPOA45                    497        ///
      str    DXPOA46                    498        ///
      str    DXPOA47                    499        ///
      str    DXPOA48                    500        ///
      str    DXPOA49                    501        ///
      str    DXPOA50                    502        ///
      int    DXVER                      503- 505   ///
      str    E_POA1                     506        ///
      str    E_POA2                     507        ///
      str    E_POA3                     508        ///
      str    E_POA4                     509        ///
      str    E_POA5                     510        ///
      str    E_POA6                     511        ///
      str    E_POA7                     512        ///
      str    E_POA8                     513        ///
      str    E_POA9                     514        ///
      byte   FEMALE                     515- 516   ///
      byte   HCUP_ED                    517- 518   ///
      byte   HCUP_OS                    519- 520   ///
      byte   HISPANIC                   521- 522   ///
      str    HISPANIC_X                 523        ///
      byte   Homeless                   524- 525   ///
      str    HOSPST                     526- 527   ///
      str    I10_DX1                    528- 534   ///
      str    I10_DX2                    535- 541   ///
      str    I10_DX3                    542- 548   ///
      str    I10_DX4                    549- 555   ///
      str    I10_DX5                    556- 562   ///
      str    I10_DX6                    563- 569   ///
      str    I10_DX7                    570- 576   ///
      str    I10_DX8                    577- 583   ///
      str    I10_DX9                    584- 590   ///
      str    I10_DX10                   591- 597   ///
      str    I10_DX11                   598- 604   ///
      str    I10_DX12                   605- 611   ///
      str    I10_DX13                   612- 618   ///
      str    I10_DX14                   619- 625   ///
      str    I10_DX15                   626- 632   ///
      str    I10_DX16                   633- 639   ///
      str    I10_DX17                   640- 646   ///
      str    I10_DX18                   647- 653   ///
      str    I10_DX19                   654- 660   ///
      str    I10_DX20                   661- 667   ///
      str    I10_DX21                   668- 674   ///
      str    I10_DX22                   675- 681   ///
      str    I10_DX23                   682- 688   ///
      str    I10_DX24                   689- 695   ///
      str    I10_DX25                   696- 702   ///
      str    I10_DX26                   703- 709   ///
      str    I10_DX27                   710- 716   ///
      str    I10_DX28                   717- 723   ///
      str    I10_DX29                   724- 730   ///
      str    I10_DX30                   731- 737   ///
      str    I10_DX31                   738- 744   ///
      str    I10_DX32                   745- 751   ///
      str    I10_DX33                   752- 758   ///
      str    I10_DX34                   759- 765   ///
      str    I10_DX35                   766- 772   ///
      str    I10_DX36                   773- 779   ///
      str    I10_DX37                   780- 786   ///
      str    I10_DX38                   787- 793   ///
      str    I10_DX39                   794- 800   ///
      str    I10_DX40                   801- 807   ///
      str    I10_DX41                   808- 814   ///
      str    I10_DX42                   815- 821   ///
      str    I10_DX43                   822- 828   ///
      str    I10_DX44                   829- 835   ///
      str    I10_DX45                   836- 842   ///
      str    I10_DX46                   843- 849   ///
      str    I10_DX47                   850- 856   ///
      str    I10_DX48                   857- 863   ///
      str    I10_DX49                   864- 870   ///
      str    I10_DX50                   871- 877   ///
      int    I10_DXCCS1                 878- 881   ///
      int    I10_DXCCS2                 882- 885   ///
      int    I10_DXCCS3                 886- 889   ///
      int    I10_DXCCS4                 890- 893   ///
      int    I10_DXCCS5                 894- 897   ///
      int    I10_DXCCS6                 898- 901   ///
      int    I10_DXCCS7                 902- 905   ///
      int    I10_DXCCS8                 906- 909   ///
      int    I10_DXCCS9                 910- 913   ///
      int    I10_DXCCS10                914- 917   ///
      int    I10_DXCCS11                918- 921   ///
      int    I10_DXCCS12                922- 925   ///
      int    I10_DXCCS13                926- 929   ///
      int    I10_DXCCS14                930- 933   ///
      int    I10_DXCCS15                934- 937   ///
      int    I10_DXCCS16                938- 941   ///
      int    I10_DXCCS17                942- 945   ///
      int    I10_DXCCS18                946- 949   ///
      int    I10_DXCCS19                950- 953   ///
      int    I10_DXCCS20                954- 957   ///
      int    I10_DXCCS21                958- 961   ///
      int    I10_DXCCS22                962- 965   ///
      int    I10_DXCCS23                966- 969   ///
      int    I10_DXCCS24                970- 973   ///
      int    I10_DXCCS25                974- 977   ///
      int    I10_DXCCS26                978- 981   ///
      int    I10_DXCCS27                982- 985   ///
      int    I10_DXCCS28                986- 989   ///
      int    I10_DXCCS29                990- 993   ///
      int    I10_DXCCS30                994- 997   ///
      int    I10_DXCCS31                998-1001   ///
      int    I10_DXCCS32               1002-1005   ///
      int    I10_DXCCS33               1006-1009   ///
      int    I10_DXCCS34               1010-1013   ///
      int    I10_DXCCS35               1014-1017   ///
      int    I10_DXCCS36               1018-1021   ///
      int    I10_DXCCS37               1022-1025   ///
      int    I10_DXCCS38               1026-1029   ///
      int    I10_DXCCS39               1030-1033   ///
      int    I10_DXCCS40               1034-1037   ///
      int    I10_DXCCS41               1038-1041   ///
      int    I10_DXCCS42               1042-1045   ///
      int    I10_DXCCS43               1046-1049   ///
      int    I10_DXCCS44               1050-1053   ///
      int    I10_DXCCS45               1054-1057   ///
      int    I10_DXCCS46               1058-1061   ///
      int    I10_DXCCS47               1062-1065   ///
      int    I10_DXCCS48               1066-1069   ///
      int    I10_DXCCS49               1070-1073   ///
      int    I10_DXCCS50               1074-1077   ///
      str    I10_ECAUSE1               1078-1084   ///
      str    I10_ECAUSE2               1085-1091   ///
      str    I10_ECAUSE3               1092-1098   ///
      str    I10_ECAUSE4               1099-1105   ///
      str    I10_ECAUSE5               1106-1112   ///
      str    I10_ECAUSE6               1113-1119   ///
      str    I10_ECAUSE7               1120-1126   ///
      str    I10_ECAUSE8               1127-1133   ///
      str    I10_ECAUSE9               1134-1140   ///
      int    I10_ECauseCCS1            1141-1144   ///
      int    I10_ECauseCCS2            1145-1148   ///
      int    I10_ECauseCCS3            1149-1152   ///
      int    I10_ECauseCCS4            1153-1156   ///
      int    I10_ECauseCCS5            1157-1160   ///
      int    I10_ECauseCCS6            1161-1164   ///
      int    I10_ECauseCCS7            1165-1168   ///
      int    I10_ECauseCCS8            1169-1172   ///
      int    I10_ECauseCCS9            1173-1176   ///
      int    I10_HOSPBRTH              1177-1179   ///
      int    I10_NCHRONIC              1180-1182   ///
      int    I10_NDX                   1183-1185   ///
      byte   I10_NECAUSE               1186-1187   ///
      byte   I10_NEOMAT                1188-1189   ///
      int    I10_NPR                   1190-1192   ///
      byte   I10_ORPROC                1193-1194   ///
      str    I10_PR1                   1195-1201   ///
      str    I10_PR2                   1202-1208   ///
      str    I10_PR3                   1209-1215   ///
      str    I10_PR4                   1216-1222   ///
      str    I10_PR5                   1223-1229   ///
      str    I10_PR6                   1230-1236   ///
      str    I10_PR7                   1237-1243   ///
      str    I10_PR8                   1244-1250   ///
      str    I10_PR9                   1251-1257   ///
      str    I10_PR10                  1258-1264   ///
      str    I10_PR11                  1265-1271   ///
      str    I10_PR12                  1272-1278   ///
      str    I10_PR13                  1279-1285   ///
      str    I10_PR14                  1286-1292   ///
      str    I10_PR15                  1293-1299   ///
      str    I10_PR16                  1300-1306   ///
      str    I10_PR17                  1307-1313   ///
      str    I10_PR18                  1314-1320   ///
      str    I10_PR19                  1321-1327   ///
      str    I10_PR20                  1328-1334   ///
      str    I10_PR21                  1335-1341   ///
      str    I10_PR22                  1342-1348   ///
      str    I10_PR23                  1349-1355   ///
      str    I10_PR24                  1356-1362   ///
      str    I10_PR25                  1363-1369   ///
      str    I10_PR26                  1370-1376   ///
      str    I10_PR27                  1377-1383   ///
      str    I10_PR28                  1384-1390   ///
      str    I10_PR29                  1391-1397   ///
      str    I10_PR30                  1398-1404   ///
      str    I10_PR31                  1405-1411   ///
      str    I10_PR32                  1412-1418   ///
      str    I10_PR33                  1419-1425   ///
      str    I10_PR34                  1426-1432   ///
      str    I10_PR35                  1433-1439   ///
      str    I10_PR36                  1440-1446   ///
      str    I10_PR37                  1447-1453   ///
      str    I10_PR38                  1454-1460   ///
      str    I10_PR39                  1461-1467   ///
      str    I10_PR40                  1468-1474   ///
      str    I10_PR41                  1475-1481   ///
      str    I10_PR42                  1482-1488   ///
      str    I10_PR43                  1489-1495   ///
      str    I10_PR44                  1496-1502   ///
      str    I10_PR45                  1503-1509   ///
      str    I10_PR46                  1510-1516   ///
      str    I10_PR47                  1517-1523   ///
      str    I10_PR48                  1524-1530   ///
      str    I10_PR49                  1531-1537   ///
      str    I10_PR50                  1538-1544   ///
      int    I10_PRCCS1                1545-1547   ///
      int    I10_PRCCS2                1548-1550   ///
      int    I10_PRCCS3                1551-1553   ///
      int    I10_PRCCS4                1554-1556   ///
      int    I10_PRCCS5                1557-1559   ///
      int    I10_PRCCS6                1560-1562   ///
      int    I10_PRCCS7                1563-1565   ///
      int    I10_PRCCS8                1566-1568   ///
      int    I10_PRCCS9                1569-1571   ///
      int    I10_PRCCS10               1572-1574   ///
      int    I10_PRCCS11               1575-1577   ///
      int    I10_PRCCS12               1578-1580   ///
      int    I10_PRCCS13               1581-1583   ///
      int    I10_PRCCS14               1584-1586   ///
      int    I10_PRCCS15               1587-1589   ///
      int    I10_PRCCS16               1590-1592   ///
      int    I10_PRCCS17               1593-1595   ///
      int    I10_PRCCS18               1596-1598   ///
      int    I10_PRCCS19               1599-1601   ///
      int    I10_PRCCS20               1602-1604   ///
      int    I10_PRCCS21               1605-1607   ///
      int    I10_PRCCS22               1608-1610   ///
      int    I10_PRCCS23               1611-1613   ///
      int    I10_PRCCS24               1614-1616   ///
      int    I10_PRCCS25               1617-1619   ///
      int    I10_PRCCS26               1620-1622   ///
      int    I10_PRCCS27               1623-1625   ///
      int    I10_PRCCS28               1626-1628   ///
      int    I10_PRCCS29               1629-1631   ///
      int    I10_PRCCS30               1632-1634   ///
      int    I10_PRCCS31               1635-1637   ///
      int    I10_PRCCS32               1638-1640   ///
      int    I10_PRCCS33               1641-1643   ///
      int    I10_PRCCS34               1644-1646   ///
      int    I10_PRCCS35               1647-1649   ///
      int    I10_PRCCS36               1650-1652   ///
      int    I10_PRCCS37               1653-1655   ///
      int    I10_PRCCS38               1656-1658   ///
      int    I10_PRCCS39               1659-1661   ///
      int    I10_PRCCS40               1662-1664   ///
      int    I10_PRCCS41               1665-1667   ///
      int    I10_PRCCS42               1668-1670   ///
      int    I10_PRCCS43               1671-1673   ///
      int    I10_PRCCS44               1674-1676   ///
      int    I10_PRCCS45               1677-1679   ///
      int    I10_PRCCS46               1680-1682   ///
      int    I10_PRCCS47               1683-1685   ///
      int    I10_PRCCS48               1686-1688   ///
      int    I10_PRCCS49               1689-1691   ///
      int    I10_PRCCS50               1692-1694   ///
      int    I10_PROCTYPE              1695-1697   ///
      byte   I10_SERVICELINE           1698-1699   ///
      double KEY                       1700-1714   ///
      long   LOS                       1715-1719   ///
      long   LOS_X                     1720-1725   ///
      str    MARITALSTATUS_X           1726        ///
      str    MARITALSTATUSUB04         1727        ///
      byte   MDC                       1728-1729   ///
      byte   MDC_NoPOA                 1730-1731   ///
      byte   MDC32                     1732-1733   ///
      long   MDNUM1_R                  1734-1742   ///
      long   MDNUM2_R                  1743-1751   ///
      long   MDNUM3_R                  1752-1760   ///
      long   MDNUM4_R                  1761-1769   ///
      byte   MEDINCSTQ                 1770-1771   ///
      int    NCPT                      1772-1775   ///
      double OS_TIME                   1776-1786   ///
      byte   PAY1                      1787-1788   ///
      str    PAY1_X                    1789-1792   ///
      byte   PAY2                      1793-1794   ///
      str    PAY2_X                    1795-1798   ///
      byte   PAY3                      1799-1800   ///
      str    PAY3_X                    1801-1804   ///
      int    PL_CBSA                   1805-1807   ///
      byte   PL_NCHS                   1808-1809   ///
      byte   PL_RUCC                   1810-1811   ///
      byte   PL_UIC                    1812-1813   ///
      byte   PL_UR_CAT4                1814-1815   ///
      byte   POA_Disch_Edit1           1816-1817   ///
      byte   POA_Disch_Edit2           1818-1819   ///
      byte   POA_Hosp_Edit1            1820-1821   ///
      byte   POA_Hosp_Edit2            1822-1823   ///
      byte   POA_Hosp_Edit3            1824-1825   ///
      double POA_Hosp_Edit3_Value      1826-1833   ///
      str    PointOfOrigin_X           1834        ///
      str    PointOfOriginUB04         1835        ///
      long   PRDAY1                    1836-1840   ///
      long   PRDAY2                    1841-1845   ///
      long   PRDAY3                    1846-1850   ///
      long   PRDAY4                    1851-1855   ///
      long   PRDAY5                    1856-1860   ///
      long   PRDAY6                    1861-1865   ///
      long   PRDAY7                    1866-1870   ///
      long   PRDAY8                    1871-1875   ///
      long   PRDAY9                    1876-1880   ///
      long   PRDAY10                   1881-1885   ///
      long   PRDAY11                   1886-1890   ///
      long   PRDAY12                   1891-1895   ///
      long   PRDAY13                   1896-1900   ///
      long   PRDAY14                   1901-1905   ///
      long   PRDAY15                   1906-1910   ///
      long   PRDAY16                   1911-1915   ///
      long   PRDAY17                   1916-1920   ///
      long   PRDAY18                   1921-1925   ///
      long   PRDAY19                   1926-1930   ///
      long   PRDAY20                   1931-1935   ///
      long   PRDAY21                   1936-1940   ///
      long   PRDAY22                   1941-1945   ///
      long   PRDAY23                   1946-1950   ///
      long   PRDAY24                   1951-1955   ///
      long   PRDAY25                   1956-1960   ///
      long   PRDAY26                   1961-1965   ///
      long   PRDAY27                   1966-1970   ///
      long   PRDAY28                   1971-1975   ///
      long   PRDAY29                   1976-1980   ///
      long   PRDAY30                   1981-1985   ///
      long   PRDAY31                   1986-1990   ///
      long   PRDAY32                   1991-1995   ///
      long   PRDAY33                   1996-2000   ///
      long   PRDAY34                   2001-2005   ///
      long   PRDAY35                   2006-2010   ///
      long   PRDAY36                   2011-2015   ///
      long   PRDAY37                   2016-2020   ///
      long   PRDAY38                   2021-2025   ///
      long   PRDAY39                   2026-2030   ///
      long   PRDAY40                   2031-2035   ///
      long   PRDAY41                   2036-2040   ///
      long   PRDAY42                   2041-2045   ///
      long   PRDAY43                   2046-2050   ///
      long   PRDAY44                   2051-2055   ///
      long   PRDAY45                   2056-2060   ///
      long   PRDAY46                   2061-2065   ///
      long   PRDAY47                   2066-2070   ///
      long   PRDAY48                   2071-2075   ///
      long   PRDAY49                   2076-2080   ///
      long   PRDAY50                   2081-2085   ///
      str    PrimLang                  2086-2088   ///
      int    PRVER                     2089-2091   ///
      str    PSTATE                    2092-2093   ///
      long   PSTCO                     2094-2098   ///
      long   PSTCO2                    2099-2103   ///
      byte   RACE                      2104-2105   ///
      str    RACE_X                    2106        ///
      double TOTCHG                    2107-2116   ///
      double TOTCHG_X                  2117-2131   ///
      byte   TRAN_IN                   2132-2133   ///
      byte   TRAN_OUT                  2134-2135   ///
      long   VisitLink                 2136-2144   ///
      int    YEAR                      2145-2148   ///
      str    ZIP                       2149-2153   ///
      str    ZIP3                      2154-2156   ///
      int    ZIPINC_QRTL               2157-2159   ///
      long   HOSPID                    2160-2164   ///
      int    AYEAR                     2165-2168   ///
      byte   BMONTH                    2169-2170   ///
      int    BYEAR                     2171-2174   ///
      byte   PRMONTH1                  2175-2176   ///
      byte   PRMONTH2                  2177-2178   ///
      byte   PRMONTH3                  2179-2180   ///
      byte   PRMONTH4                  2181-2182   ///
      byte   PRMONTH5                  2183-2184   ///
      byte   PRMONTH6                  2185-2186   ///
      byte   PRMONTH7                  2187-2188   ///
      byte   PRMONTH8                  2189-2190   ///
      byte   PRMONTH9                  2191-2192   ///
      byte   PRMONTH10                 2193-2194   ///
      byte   PRMONTH11                 2195-2196   ///
      byte   PRMONTH12                 2197-2198   ///
      byte   PRMONTH13                 2199-2200   ///
      byte   PRMONTH14                 2201-2202   ///
      byte   PRMONTH15                 2203-2204   ///
      byte   PRMONTH16                 2205-2206   ///
      byte   PRMONTH17                 2207-2208   ///
      byte   PRMONTH18                 2209-2210   ///
      byte   PRMONTH19                 2211-2212   ///
      byte   PRMONTH20                 2213-2214   ///
      byte   PRMONTH21                 2215-2216   ///
      byte   PRMONTH22                 2217-2218   ///
      byte   PRMONTH23                 2219-2220   ///
      byte   PRMONTH24                 2221-2222   ///
      byte   PRMONTH25                 2223-2224   ///
      byte   PRMONTH26                 2225-2226   ///
      byte   PRMONTH27                 2227-2228   ///
      byte   PRMONTH28                 2229-2230   ///
      byte   PRMONTH29                 2231-2232   ///
      byte   PRMONTH30                 2233-2234   ///
      byte   PRMONTH31                 2235-2236   ///
      byte   PRMONTH32                 2237-2238   ///
      byte   PRMONTH33                 2239-2240   ///
      byte   PRMONTH34                 2241-2242   ///
      byte   PRMONTH35                 2243-2244   ///
      byte   PRMONTH36                 2245-2246   ///
      byte   PRMONTH37                 2247-2248   ///
      byte   PRMONTH38                 2249-2250   ///
      byte   PRMONTH39                 2251-2252   ///
      byte   PRMONTH40                 2253-2254   ///
      byte   PRMONTH41                 2255-2256   ///
      byte   PRMONTH42                 2257-2258   ///
      byte   PRMONTH43                 2259-2260   ///
      byte   PRMONTH44                 2261-2262   ///
      byte   PRMONTH45                 2263-2264   ///
      byte   PRMONTH46                 2265-2266   ///
      byte   PRMONTH47                 2267-2268   ///
      byte   PRMONTH48                 2269-2270   ///
      byte   PRMONTH49                 2271-2272   ///
      byte   PRMONTH50                 2273-2274   ///
      int    PRYEAR1                   2275-2278   ///
      int    PRYEAR2                   2279-2282   ///
      int    PRYEAR3                   2283-2286   ///
      int    PRYEAR4                   2287-2290   ///
      int    PRYEAR5                   2291-2294   ///
      int    PRYEAR6                   2295-2298   ///
      int    PRYEAR7                   2299-2302   ///
      int    PRYEAR8                   2303-2306   ///
      int    PRYEAR9                   2307-2310   ///
      int    PRYEAR10                  2311-2314   ///
      int    PRYEAR11                  2315-2318   ///
      int    PRYEAR12                  2319-2322   ///
      int    PRYEAR13                  2323-2326   ///
      int    PRYEAR14                  2327-2330   ///
      int    PRYEAR15                  2331-2334   ///
      int    PRYEAR16                  2335-2338   ///
      int    PRYEAR17                  2339-2342   ///
      int    PRYEAR18                  2343-2346   ///
      int    PRYEAR19                  2347-2350   ///
      int    PRYEAR20                  2351-2354   ///
      int    PRYEAR21                  2355-2358   ///
      int    PRYEAR22                  2359-2362   ///
      int    PRYEAR23                  2363-2366   ///
      int    PRYEAR24                  2367-2370   ///
      int    PRYEAR25                  2371-2374   ///
      int    PRYEAR26                  2375-2378   ///
      int    PRYEAR27                  2379-2382   ///
      int    PRYEAR28                  2383-2386   ///
      int    PRYEAR29                  2387-2390   ///
      int    PRYEAR30                  2391-2394   ///
      int    PRYEAR31                  2395-2398   ///
      int    PRYEAR32                  2399-2402   ///
      int    PRYEAR33                  2403-2406   ///
      int    PRYEAR34                  2407-2410   ///
      int    PRYEAR35                  2411-2414   ///
      int    PRYEAR36                  2415-2418   ///
      int    PRYEAR37                  2419-2422   ///
      int    PRYEAR38                  2423-2426   ///
      int    PRYEAR39                  2427-2430   ///
      int    PRYEAR40                  2431-2434   ///
      int    PRYEAR41                  2435-2438   ///
      int    PRYEAR42                  2439-2442   ///
      int    PRYEAR43                  2443-2446   ///
      int    PRYEAR44                  2447-2450   ///
      int    PRYEAR45                  2451-2454   ///
      int    PRYEAR46                  2455-2458   ///
      int    PRYEAR47                  2459-2462   ///
      int    PRYEAR48                  2463-2466   ///
      int    PRYEAR49                  2467-2470   ///
      int    PRYEAR50                  2471-2474   ///
      using  "GA_SID_2015q4_CORE.ASC"

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
label var DaysToEvent              "Days from 'start date' to admission"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
label var DRG32                    "DRG, version 32"
label var DRGVER                   "DRG grouper version used on discharge date"
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
label var E_POA1                   "E Cause 1, present on admission indicator"
label var E_POA2                   "E Cause 2, present on admission indicator"
label var E_POA3                   "E Cause 3, present on admission indicator"
label var E_POA4                   "E Cause 4, present on admission indicator"
label var E_POA5                   "E Cause 5, present on admission indicator"
label var E_POA6                   "E Cause 6, present on admission indicator"
label var E_POA7                   "E Cause 7, present on admission indicator"
label var E_POA8                   "E Cause 8, present on admission indicator"
label var E_POA9                   "E Cause 9, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
label var HOSPST                   "Hospital state postal code"
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
label var I10_ECauseCCS1           "ICD-10-CM CCS: E Cause 1"
label var I10_ECauseCCS2           "ICD-10-CM CCS: E Cause 2"
label var I10_ECauseCCS3           "ICD-10-CM CCS: E Cause 3"
label var I10_ECauseCCS4           "ICD-10-CM CCS: E Cause 4"
label var I10_ECauseCCS5           "ICD-10-CM CCS: E Cause 5"
label var I10_ECauseCCS6           "ICD-10-CM CCS: E Cause 6"
label var I10_ECauseCCS7           "ICD-10-CM CCS: E Cause 7"
label var I10_ECauseCCS8           "ICD-10-CM CCS: E Cause 8"
label var I10_ECauseCCS9           "ICD-10-CM CCS: E Cause 9"
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
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MARITALSTATUS_X          "Patient's marital status (as received from source)"
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDC32                    "MDC, version 32"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MDNUM4_R                 "Physician 4 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
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
label var PRDAY21                  "Number of days from admission to I10_PR21"
label var PRDAY22                  "Number of days from admission to I10_PR22"
label var PRDAY23                  "Number of days from admission to I10_PR23"
label var PRDAY24                  "Number of days from admission to I10_PR24"
label var PRDAY25                  "Number of days from admission to I10_PR25"
label var PRDAY26                  "Number of days from admission to I10_PR26"
label var PRDAY27                  "Number of days from admission to I10_PR27"
label var PRDAY28                  "Number of days from admission to I10_PR28"
label var PRDAY29                  "Number of days from admission to I10_PR29"
label var PRDAY30                  "Number of days from admission to I10_PR30"
label var PRDAY31                  "Number of days from admission to I10_PR31"
label var PRDAY32                  "Number of days from admission to I10_PR32"
label var PRDAY33                  "Number of days from admission to I10_PR33"
label var PRDAY34                  "Number of days from admission to I10_PR34"
label var PRDAY35                  "Number of days from admission to I10_PR35"
label var PRDAY36                  "Number of days from admission to I10_PR36"
label var PRDAY37                  "Number of days from admission to I10_PR37"
label var PRDAY38                  "Number of days from admission to I10_PR38"
label var PRDAY39                  "Number of days from admission to I10_PR39"
label var PRDAY40                  "Number of days from admission to I10_PR40"
label var PRDAY41                  "Number of days from admission to I10_PR41"
label var PRDAY42                  "Number of days from admission to I10_PR42"
label var PRDAY43                  "Number of days from admission to I10_PR43"
label var PRDAY44                  "Number of days from admission to I10_PR44"
label var PRDAY45                  "Number of days from admission to I10_PR45"
label var PRDAY46                  "Number of days from admission to I10_PR46"
label var PRDAY47                  "Number of days from admission to I10_PR47"
label var PRDAY48                  "Number of days from admission to I10_PR48"
label var PRDAY49                  "Number of days from admission to I10_PR49"
label var PRDAY50                  "Number of days from admission to I10_PR50"
label var PrimLang                 "Primary language of patient"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
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
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRG32                     (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
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
recode I10_SERVICELINE           (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDC32                     (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM4_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
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
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
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

save "GA_SID_2015q4_CORE.dta", replace
