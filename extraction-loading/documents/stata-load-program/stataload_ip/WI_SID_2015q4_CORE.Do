/*****************************************************************************
* Creation Date: 02/03/2017   
* WI_SID_2015q4_CORE.Do
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
      str    CPT51                      270- 274   ///
      str    CPT52                      275- 279   ///
      str    CPT53                      280- 284   ///
      int    CPTCCS1                    285- 287   ///
      int    CPTCCS2                    288- 290   ///
      int    CPTCCS3                    291- 293   ///
      int    CPTCCS4                    294- 296   ///
      int    CPTCCS5                    297- 299   ///
      int    CPTCCS6                    300- 302   ///
      int    CPTCCS7                    303- 305   ///
      int    CPTCCS8                    306- 308   ///
      int    CPTCCS9                    309- 311   ///
      int    CPTCCS10                   312- 314   ///
      int    CPTCCS11                   315- 317   ///
      int    CPTCCS12                   318- 320   ///
      int    CPTCCS13                   321- 323   ///
      int    CPTCCS14                   324- 326   ///
      int    CPTCCS15                   327- 329   ///
      int    CPTCCS16                   330- 332   ///
      int    CPTCCS17                   333- 335   ///
      int    CPTCCS18                   336- 338   ///
      int    CPTCCS19                   339- 341   ///
      int    CPTCCS20                   342- 344   ///
      int    CPTCCS21                   345- 347   ///
      int    CPTCCS22                   348- 350   ///
      int    CPTCCS23                   351- 353   ///
      int    CPTCCS24                   354- 356   ///
      int    CPTCCS25                   357- 359   ///
      int    CPTCCS26                   360- 362   ///
      int    CPTCCS27                   363- 365   ///
      int    CPTCCS28                   366- 368   ///
      int    CPTCCS29                   369- 371   ///
      int    CPTCCS30                   372- 374   ///
      int    CPTCCS31                   375- 377   ///
      int    CPTCCS32                   378- 380   ///
      int    CPTCCS33                   381- 383   ///
      int    CPTCCS34                   384- 386   ///
      int    CPTCCS35                   387- 389   ///
      int    CPTCCS36                   390- 392   ///
      int    CPTCCS37                   393- 395   ///
      int    CPTCCS38                   396- 398   ///
      int    CPTCCS39                   399- 401   ///
      int    CPTCCS40                   402- 404   ///
      int    CPTCCS41                   405- 407   ///
      int    CPTCCS42                   408- 410   ///
      int    CPTCCS43                   411- 413   ///
      int    CPTCCS44                   414- 416   ///
      int    CPTCCS45                   417- 419   ///
      int    CPTCCS46                   420- 422   ///
      int    CPTCCS47                   423- 425   ///
      int    CPTCCS48                   426- 428   ///
      int    CPTCCS49                   429- 431   ///
      int    CPTCCS50                   432- 434   ///
      int    CPTCCS51                   435- 437   ///
      int    CPTCCS52                   438- 440   ///
      int    CPTCCS53                   441- 443   ///
      long   DaysToEvent                444- 449   ///
      byte   DIED                       450- 451   ///
      str    DISP_X                     452- 453   ///
      byte   DISPUB04                   454- 455   ///
      byte   DISPUNIFORM                456- 457   ///
      byte   DMONTH                     458- 459   ///
      byte   DQTR                       460- 461   ///
      int    DRG                        462- 464   ///
      int    DRG_NoPOA                  465- 467   ///
      int    DRG32                      468- 470   ///
      byte   DRGVER                     471- 472   ///
      str    DSHOSPID                   473- 489   ///
      str    DXPOA1                     490        ///
      str    DXPOA2                     491        ///
      str    DXPOA3                     492        ///
      str    DXPOA4                     493        ///
      str    DXPOA5                     494        ///
      str    DXPOA6                     495        ///
      str    DXPOA7                     496        ///
      str    DXPOA8                     497        ///
      str    DXPOA9                     498        ///
      str    DXPOA10                    499        ///
      str    DXPOA11                    500        ///
      str    DXPOA12                    501        ///
      str    DXPOA13                    502        ///
      str    DXPOA14                    503        ///
      str    DXPOA15                    504        ///
      str    DXPOA16                    505        ///
      str    DXPOA17                    506        ///
      str    DXPOA18                    507        ///
      str    DXPOA19                    508        ///
      str    DXPOA20                    509        ///
      str    DXPOA21                    510        ///
      str    DXPOA22                    511        ///
      str    DXPOA23                    512        ///
      str    DXPOA24                    513        ///
      str    DXPOA25                    514        ///
      str    DXPOA26                    515        ///
      str    DXPOA27                    516        ///
      str    DXPOA28                    517        ///
      str    DXPOA29                    518        ///
      str    DXPOA30                    519        ///
      str    DXPOA31                    520        ///
      str    DXPOA32                    521        ///
      str    DXPOA33                    522        ///
      str    DXPOA34                    523        ///
      str    DXPOA35                    524        ///
      str    DXPOA36                    525        ///
      str    DXPOA37                    526        ///
      str    DXPOA38                    527        ///
      str    DXPOA39                    528        ///
      str    DXPOA40                    529        ///
      str    DXPOA41                    530        ///
      str    DXPOA42                    531        ///
      str    DXPOA43                    532        ///
      str    DXPOA44                    533        ///
      str    DXPOA45                    534        ///
      str    DXPOA46                    535        ///
      str    DXPOA47                    536        ///
      str    DXPOA48                    537        ///
      str    DXPOA49                    538        ///
      str    DXPOA50                    539        ///
      str    DXPOA51                    540        ///
      str    DXPOA52                    541        ///
      str    DXPOA53                    542        ///
      str    DXPOA54                    543        ///
      str    DXPOA55                    544        ///
      str    DXPOA56                    545        ///
      str    DXPOA57                    546        ///
      str    DXPOA58                    547        ///
      str    DXPOA59                    548        ///
      str    DXPOA60                    549        ///
      str    DXPOA61                    550        ///
      str    DXPOA62                    551        ///
      str    DXPOA63                    552        ///
      str    DXPOA64                    553        ///
      str    DXPOA65                    554        ///
      str    DXPOA66                    555        ///
      str    DXPOA67                    556        ///
      int    DXVER                      557- 559   ///
      str    E_POA1                     560        ///
      str    E_POA2                     561        ///
      str    E_POA3                     562        ///
      str    E_POA4                     563        ///
      str    E_POA5                     564        ///
      str    E_POA6                     565        ///
      str    E_POA7                     566        ///
      str    E_POA8                     567        ///
      str    E_POA9                     568        ///
      byte   FEMALE                     569- 570   ///
      byte   HCUP_ED                    571- 572   ///
      byte   HCUP_OS                    573- 574   ///
      byte   HISPANIC                   575- 576   ///
      str    HISPANIC_X                 577        ///
      byte   Homeless                   578- 579   ///
      str    HOSP_NPI                   580- 589   ///
      str    HOSPST                     590- 591   ///
      str    I10_DX_Admitting           592- 598   ///
      str    I10_DX1                    599- 605   ///
      str    I10_DX2                    606- 612   ///
      str    I10_DX3                    613- 619   ///
      str    I10_DX4                    620- 626   ///
      str    I10_DX5                    627- 633   ///
      str    I10_DX6                    634- 640   ///
      str    I10_DX7                    641- 647   ///
      str    I10_DX8                    648- 654   ///
      str    I10_DX9                    655- 661   ///
      str    I10_DX10                   662- 668   ///
      str    I10_DX11                   669- 675   ///
      str    I10_DX12                   676- 682   ///
      str    I10_DX13                   683- 689   ///
      str    I10_DX14                   690- 696   ///
      str    I10_DX15                   697- 703   ///
      str    I10_DX16                   704- 710   ///
      str    I10_DX17                   711- 717   ///
      str    I10_DX18                   718- 724   ///
      str    I10_DX19                   725- 731   ///
      str    I10_DX20                   732- 738   ///
      str    I10_DX21                   739- 745   ///
      str    I10_DX22                   746- 752   ///
      str    I10_DX23                   753- 759   ///
      str    I10_DX24                   760- 766   ///
      str    I10_DX25                   767- 773   ///
      str    I10_DX26                   774- 780   ///
      str    I10_DX27                   781- 787   ///
      str    I10_DX28                   788- 794   ///
      str    I10_DX29                   795- 801   ///
      str    I10_DX30                   802- 808   ///
      str    I10_DX31                   809- 815   ///
      str    I10_DX32                   816- 822   ///
      str    I10_DX33                   823- 829   ///
      str    I10_DX34                   830- 836   ///
      str    I10_DX35                   837- 843   ///
      str    I10_DX36                   844- 850   ///
      str    I10_DX37                   851- 857   ///
      str    I10_DX38                   858- 864   ///
      str    I10_DX39                   865- 871   ///
      str    I10_DX40                   872- 878   ///
      str    I10_DX41                   879- 885   ///
      str    I10_DX42                   886- 892   ///
      str    I10_DX43                   893- 899   ///
      str    I10_DX44                   900- 906   ///
      str    I10_DX45                   907- 913   ///
      str    I10_DX46                   914- 920   ///
      str    I10_DX47                   921- 927   ///
      str    I10_DX48                   928- 934   ///
      str    I10_DX49                   935- 941   ///
      str    I10_DX50                   942- 948   ///
      str    I10_DX51                   949- 955   ///
      str    I10_DX52                   956- 962   ///
      str    I10_DX53                   963- 969   ///
      str    I10_DX54                   970- 976   ///
      str    I10_DX55                   977- 983   ///
      str    I10_DX56                   984- 990   ///
      str    I10_DX57                   991- 997   ///
      str    I10_DX58                   998-1004   ///
      str    I10_DX59                  1005-1011   ///
      str    I10_DX60                  1012-1018   ///
      str    I10_DX61                  1019-1025   ///
      str    I10_DX62                  1026-1032   ///
      str    I10_DX63                  1033-1039   ///
      str    I10_DX64                  1040-1046   ///
      str    I10_DX65                  1047-1053   ///
      str    I10_DX66                  1054-1060   ///
      str    I10_DX67                  1061-1067   ///
      int    I10_DXCCS1                1068-1071   ///
      int    I10_DXCCS2                1072-1075   ///
      int    I10_DXCCS3                1076-1079   ///
      int    I10_DXCCS4                1080-1083   ///
      int    I10_DXCCS5                1084-1087   ///
      int    I10_DXCCS6                1088-1091   ///
      int    I10_DXCCS7                1092-1095   ///
      int    I10_DXCCS8                1096-1099   ///
      int    I10_DXCCS9                1100-1103   ///
      int    I10_DXCCS10               1104-1107   ///
      int    I10_DXCCS11               1108-1111   ///
      int    I10_DXCCS12               1112-1115   ///
      int    I10_DXCCS13               1116-1119   ///
      int    I10_DXCCS14               1120-1123   ///
      int    I10_DXCCS15               1124-1127   ///
      int    I10_DXCCS16               1128-1131   ///
      int    I10_DXCCS17               1132-1135   ///
      int    I10_DXCCS18               1136-1139   ///
      int    I10_DXCCS19               1140-1143   ///
      int    I10_DXCCS20               1144-1147   ///
      int    I10_DXCCS21               1148-1151   ///
      int    I10_DXCCS22               1152-1155   ///
      int    I10_DXCCS23               1156-1159   ///
      int    I10_DXCCS24               1160-1163   ///
      int    I10_DXCCS25               1164-1167   ///
      int    I10_DXCCS26               1168-1171   ///
      int    I10_DXCCS27               1172-1175   ///
      int    I10_DXCCS28               1176-1179   ///
      int    I10_DXCCS29               1180-1183   ///
      int    I10_DXCCS30               1184-1187   ///
      int    I10_DXCCS31               1188-1191   ///
      int    I10_DXCCS32               1192-1195   ///
      int    I10_DXCCS33               1196-1199   ///
      int    I10_DXCCS34               1200-1203   ///
      int    I10_DXCCS35               1204-1207   ///
      int    I10_DXCCS36               1208-1211   ///
      int    I10_DXCCS37               1212-1215   ///
      int    I10_DXCCS38               1216-1219   ///
      int    I10_DXCCS39               1220-1223   ///
      int    I10_DXCCS40               1224-1227   ///
      int    I10_DXCCS41               1228-1231   ///
      int    I10_DXCCS42               1232-1235   ///
      int    I10_DXCCS43               1236-1239   ///
      int    I10_DXCCS44               1240-1243   ///
      int    I10_DXCCS45               1244-1247   ///
      int    I10_DXCCS46               1248-1251   ///
      int    I10_DXCCS47               1252-1255   ///
      int    I10_DXCCS48               1256-1259   ///
      int    I10_DXCCS49               1260-1263   ///
      int    I10_DXCCS50               1264-1267   ///
      int    I10_DXCCS51               1268-1271   ///
      int    I10_DXCCS52               1272-1275   ///
      int    I10_DXCCS53               1276-1279   ///
      int    I10_DXCCS54               1280-1283   ///
      int    I10_DXCCS55               1284-1287   ///
      int    I10_DXCCS56               1288-1291   ///
      int    I10_DXCCS57               1292-1295   ///
      int    I10_DXCCS58               1296-1299   ///
      int    I10_DXCCS59               1300-1303   ///
      int    I10_DXCCS60               1304-1307   ///
      int    I10_DXCCS61               1308-1311   ///
      int    I10_DXCCS62               1312-1315   ///
      int    I10_DXCCS63               1316-1319   ///
      int    I10_DXCCS64               1320-1323   ///
      int    I10_DXCCS65               1324-1327   ///
      int    I10_DXCCS66               1328-1331   ///
      int    I10_DXCCS67               1332-1335   ///
      str    I10_ECAUSE1               1336-1342   ///
      str    I10_ECAUSE2               1343-1349   ///
      str    I10_ECAUSE3               1350-1356   ///
      str    I10_ECAUSE4               1357-1363   ///
      str    I10_ECAUSE5               1364-1370   ///
      str    I10_ECAUSE6               1371-1377   ///
      str    I10_ECAUSE7               1378-1384   ///
      str    I10_ECAUSE8               1385-1391   ///
      str    I10_ECAUSE9               1392-1398   ///
      int    I10_ECauseCCS1            1399-1402   ///
      int    I10_ECauseCCS2            1403-1406   ///
      int    I10_ECauseCCS3            1407-1410   ///
      int    I10_ECauseCCS4            1411-1414   ///
      int    I10_ECauseCCS5            1415-1418   ///
      int    I10_ECauseCCS6            1419-1422   ///
      int    I10_ECauseCCS7            1423-1426   ///
      int    I10_ECauseCCS8            1427-1430   ///
      int    I10_ECauseCCS9            1431-1434   ///
      int    I10_HOSPBRTH              1435-1437   ///
      int    I10_NCHRONIC              1438-1440   ///
      int    I10_NDX                   1441-1443   ///
      byte   I10_NECAUSE               1444-1445   ///
      byte   I10_NEOMAT                1446-1447   ///
      int    I10_NPR                   1448-1450   ///
      byte   I10_ORPROC                1451-1452   ///
      str    I10_PR1                   1453-1459   ///
      str    I10_PR2                   1460-1466   ///
      str    I10_PR3                   1467-1473   ///
      str    I10_PR4                   1474-1480   ///
      str    I10_PR5                   1481-1487   ///
      str    I10_PR6                   1488-1494   ///
      str    I10_PR7                   1495-1501   ///
      str    I10_PR8                   1502-1508   ///
      str    I10_PR9                   1509-1515   ///
      str    I10_PR10                  1516-1522   ///
      str    I10_PR11                  1523-1529   ///
      str    I10_PR12                  1530-1536   ///
      str    I10_PR13                  1537-1543   ///
      str    I10_PR14                  1544-1550   ///
      str    I10_PR15                  1551-1557   ///
      str    I10_PR16                  1558-1564   ///
      str    I10_PR17                  1565-1571   ///
      str    I10_PR18                  1572-1578   ///
      str    I10_PR19                  1579-1585   ///
      str    I10_PR20                  1586-1592   ///
      str    I10_PR21                  1593-1599   ///
      str    I10_PR22                  1600-1606   ///
      str    I10_PR23                  1607-1613   ///
      str    I10_PR24                  1614-1620   ///
      str    I10_PR25                  1621-1627   ///
      str    I10_PR26                  1628-1634   ///
      str    I10_PR27                  1635-1641   ///
      str    I10_PR28                  1642-1648   ///
      str    I10_PR29                  1649-1655   ///
      str    I10_PR30                  1656-1662   ///
      str    I10_PR31                  1663-1669   ///
      str    I10_PR32                  1670-1676   ///
      str    I10_PR33                  1677-1683   ///
      str    I10_PR34                  1684-1690   ///
      str    I10_PR35                  1691-1697   ///
      str    I10_PR36                  1698-1704   ///
      str    I10_PR37                  1705-1711   ///
      str    I10_PR38                  1712-1718   ///
      str    I10_PR39                  1719-1725   ///
      str    I10_PR40                  1726-1732   ///
      str    I10_PR41                  1733-1739   ///
      str    I10_PR42                  1740-1746   ///
      str    I10_PR43                  1747-1753   ///
      str    I10_PR44                  1754-1760   ///
      str    I10_PR45                  1761-1767   ///
      str    I10_PR46                  1768-1774   ///
      str    I10_PR47                  1775-1781   ///
      str    I10_PR48                  1782-1788   ///
      str    I10_PR49                  1789-1795   ///
      str    I10_PR50                  1796-1802   ///
      int    I10_PRCCS1                1803-1805   ///
      int    I10_PRCCS2                1806-1808   ///
      int    I10_PRCCS3                1809-1811   ///
      int    I10_PRCCS4                1812-1814   ///
      int    I10_PRCCS5                1815-1817   ///
      int    I10_PRCCS6                1818-1820   ///
      int    I10_PRCCS7                1821-1823   ///
      int    I10_PRCCS8                1824-1826   ///
      int    I10_PRCCS9                1827-1829   ///
      int    I10_PRCCS10               1830-1832   ///
      int    I10_PRCCS11               1833-1835   ///
      int    I10_PRCCS12               1836-1838   ///
      int    I10_PRCCS13               1839-1841   ///
      int    I10_PRCCS14               1842-1844   ///
      int    I10_PRCCS15               1845-1847   ///
      int    I10_PRCCS16               1848-1850   ///
      int    I10_PRCCS17               1851-1853   ///
      int    I10_PRCCS18               1854-1856   ///
      int    I10_PRCCS19               1857-1859   ///
      int    I10_PRCCS20               1860-1862   ///
      int    I10_PRCCS21               1863-1865   ///
      int    I10_PRCCS22               1866-1868   ///
      int    I10_PRCCS23               1869-1871   ///
      int    I10_PRCCS24               1872-1874   ///
      int    I10_PRCCS25               1875-1877   ///
      int    I10_PRCCS26               1878-1880   ///
      int    I10_PRCCS27               1881-1883   ///
      int    I10_PRCCS28               1884-1886   ///
      int    I10_PRCCS29               1887-1889   ///
      int    I10_PRCCS30               1890-1892   ///
      int    I10_PRCCS31               1893-1895   ///
      int    I10_PRCCS32               1896-1898   ///
      int    I10_PRCCS33               1899-1901   ///
      int    I10_PRCCS34               1902-1904   ///
      int    I10_PRCCS35               1905-1907   ///
      int    I10_PRCCS36               1908-1910   ///
      int    I10_PRCCS37               1911-1913   ///
      int    I10_PRCCS38               1914-1916   ///
      int    I10_PRCCS39               1917-1919   ///
      int    I10_PRCCS40               1920-1922   ///
      int    I10_PRCCS41               1923-1925   ///
      int    I10_PRCCS42               1926-1928   ///
      int    I10_PRCCS43               1929-1931   ///
      int    I10_PRCCS44               1932-1934   ///
      int    I10_PRCCS45               1935-1937   ///
      int    I10_PRCCS46               1938-1940   ///
      int    I10_PRCCS47               1941-1943   ///
      int    I10_PRCCS48               1944-1946   ///
      int    I10_PRCCS49               1947-1949   ///
      int    I10_PRCCS50               1950-1952   ///
      int    I10_PROCTYPE              1953-1955   ///
      byte   I10_SERVICELINE           1956-1957   ///
      double KEY                       1958-1972   ///
      long   LOS                       1973-1977   ///
      long   LOS_X                     1978-1983   ///
      byte   MDC                       1984-1985   ///
      byte   MDC_NoPOA                 1986-1987   ///
      byte   MDC32                     1988-1989   ///
      str    MDSPEC1                   1990-1992   ///
      str    MDSPEC2                   1993-1995   ///
      byte   MEDINCSTQ                 1996-1997   ///
      long   MRN_R                     1998-2006   ///
      int    NCPT                      2007-2010   ///
      double OS_TIME                   2011-2021   ///
      byte   PAY1                      2022-2023   ///
      str    PAY1_X                    2024-2028   ///
      byte   PAY2                      2029-2030   ///
      str    PAY2_X                    2031-2035   ///
      int    PL_CBSA                   2036-2038   ///
      byte   PL_NCHS                   2039-2040   ///
      byte   PL_RUCC                   2041-2042   ///
      byte   PL_UIC                    2043-2044   ///
      byte   PL_UR_CAT4                2045-2046   ///
      byte   POA_Disch_Edit1           2047-2048   ///
      byte   POA_Disch_Edit2           2049-2050   ///
      byte   POA_Hosp_Edit1            2051-2052   ///
      byte   POA_Hosp_Edit2            2053-2054   ///
      byte   POA_Hosp_Edit3            2055-2056   ///
      double POA_Hosp_Edit3_Value      2057-2064   ///
      str    PointOfOrigin_X           2065        ///
      str    PointOfOriginUB04         2066        ///
      long   PRDAY1                    2067-2071   ///
      int    PRVER                     2072-2074   ///
      str    PSTATE                    2075-2076   ///
      long   PSTCO2                    2077-2081   ///
      byte   RACE                      2082-2083   ///
      str    RACE_X                    2084-2085   ///
      double TOTCHG                    2086-2095   ///
      double TOTCHG_X                  2096-2110   ///
      byte   TRAN_IN                   2111-2112   ///
      byte   TRAN_OUT                  2113-2114   ///
      long   VisitLink                 2115-2123   ///
      int    YEAR                      2124-2127   ///
      str    ZIP                       2128-2132   ///
      str    ZIP3                      2133-2135   ///
      int    ZIPINC_QRTL               2136-2138   ///
      int    AYEAR                     2139-2142   ///
      byte   BMONTH                    2143-2144   ///
      int    BYEAR                     2145-2148   ///
      byte   PRMONTH1                  2149-2150   ///
      int    PRYEAR1                   2151-2154   ///
      using  "WI_SID_2015q4_CORE.ASC"

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
label var CPT51                    "CPT/HCPCS procedure code 51"
label var CPT52                    "CPT/HCPCS procedure code 52"
label var CPT53                    "CPT/HCPCS procedure code 53"
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
label var DXPOA51                  "Diagnosis 51, present on admission indicator"
label var DXPOA52                  "Diagnosis 52, present on admission indicator"
label var DXPOA53                  "Diagnosis 53, present on admission indicator"
label var DXPOA54                  "Diagnosis 54, present on admission indicator"
label var DXPOA55                  "Diagnosis 55, present on admission indicator"
label var DXPOA56                  "Diagnosis 56, present on admission indicator"
label var DXPOA57                  "Diagnosis 57, present on admission indicator"
label var DXPOA58                  "Diagnosis 58, present on admission indicator"
label var DXPOA59                  "Diagnosis 59, present on admission indicator"
label var DXPOA60                  "Diagnosis 60, present on admission indicator"
label var DXPOA61                  "Diagnosis 61, present on admission indicator"
label var DXPOA62                  "Diagnosis 62, present on admission indicator"
label var DXPOA63                  "Diagnosis 63, present on admission indicator"
label var DXPOA64                  "Diagnosis 64, present on admission indicator"
label var DXPOA65                  "Diagnosis 65, present on admission indicator"
label var DXPOA66                  "Diagnosis 66, present on admission indicator"
label var DXPOA67                  "Diagnosis 67, present on admission indicator"
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
label var I10_DX51                 "ICD-10-CM Diagnosis 51"
label var I10_DX52                 "ICD-10-CM Diagnosis 52"
label var I10_DX53                 "ICD-10-CM Diagnosis 53"
label var I10_DX54                 "ICD-10-CM Diagnosis 54"
label var I10_DX55                 "ICD-10-CM Diagnosis 55"
label var I10_DX56                 "ICD-10-CM Diagnosis 56"
label var I10_DX57                 "ICD-10-CM Diagnosis 57"
label var I10_DX58                 "ICD-10-CM Diagnosis 58"
label var I10_DX59                 "ICD-10-CM Diagnosis 59"
label var I10_DX60                 "ICD-10-CM Diagnosis 60"
label var I10_DX61                 "ICD-10-CM Diagnosis 61"
label var I10_DX62                 "ICD-10-CM Diagnosis 62"
label var I10_DX63                 "ICD-10-CM Diagnosis 63"
label var I10_DX64                 "ICD-10-CM Diagnosis 64"
label var I10_DX65                 "ICD-10-CM Diagnosis 65"
label var I10_DX66                 "ICD-10-CM Diagnosis 66"
label var I10_DX67                 "ICD-10-CM Diagnosis 67"
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
label var I10_DXCCS51              "ICD-10-CM CCS: diagnosis 51"
label var I10_DXCCS52              "ICD-10-CM CCS: diagnosis 52"
label var I10_DXCCS53              "ICD-10-CM CCS: diagnosis 53"
label var I10_DXCCS54              "ICD-10-CM CCS: diagnosis 54"
label var I10_DXCCS55              "ICD-10-CM CCS: diagnosis 55"
label var I10_DXCCS56              "ICD-10-CM CCS: diagnosis 56"
label var I10_DXCCS57              "ICD-10-CM CCS: diagnosis 57"
label var I10_DXCCS58              "ICD-10-CM CCS: diagnosis 58"
label var I10_DXCCS59              "ICD-10-CM CCS: diagnosis 59"
label var I10_DXCCS60              "ICD-10-CM CCS: diagnosis 60"
label var I10_DXCCS61              "ICD-10-CM CCS: diagnosis 61"
label var I10_DXCCS62              "ICD-10-CM CCS: diagnosis 62"
label var I10_DXCCS63              "ICD-10-CM CCS: diagnosis 63"
label var I10_DXCCS64              "ICD-10-CM CCS: diagnosis 64"
label var I10_DXCCS65              "ICD-10-CM CCS: diagnosis 65"
label var I10_DXCCS66              "ICD-10-CM CCS: diagnosis 66"
label var I10_DXCCS67              "ICD-10-CM CCS: diagnosis 67"
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
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDC32                    "MDC, version 32"
label var MDSPEC1                  "Physician 1 specialty (as received from source)"
label var MDSPEC2                  "Physician 2 specialty (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var NCPT                     "Number of CPT/HCPCS procedures on this record"
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
label var POA_Disch_Edit1          "Discharge has POA missing on all nonexempt diagnoses"
label var POA_Disch_Edit2          "Discharge has POA missing on all nonexempt secondary diagnoses"
label var POA_Hosp_Edit1           "Hospital reported POA as Y on all diagnoses on all discharges"
label var POA_Hosp_Edit2           "Hospital reported POA as missing on all non-Medicare discharges"
label var POA_Hosp_Edit3           "Hospital reported POA as missing on all nonexempt diagnoses for 15% or more of discharges"
label var POA_Hosp_Edit3_Value     "Percentage of discharges with all nonexempt diagnoses missing POA indicators"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PRDAY1                   "Number of days from admission to I10_PR1"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
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
recode CPTCCS51                  (-99 -88 -66=.)
recode CPTCCS52                  (-99 -88 -66=.)
recode CPTCCS53                  (-99 -88 -66=.)
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
recode I10_DXCCS51               (-999 -888 -666=.)
recode I10_DXCCS52               (-999 -888 -666=.)
recode I10_DXCCS53               (-999 -888 -666=.)
recode I10_DXCCS54               (-999 -888 -666=.)
recode I10_DXCCS55               (-999 -888 -666=.)
recode I10_DXCCS56               (-999 -888 -666=.)
recode I10_DXCCS57               (-999 -888 -666=.)
recode I10_DXCCS58               (-999 -888 -666=.)
recode I10_DXCCS59               (-999 -888 -666=.)
recode I10_DXCCS60               (-999 -888 -666=.)
recode I10_DXCCS61               (-999 -888 -666=.)
recode I10_DXCCS62               (-999 -888 -666=.)
recode I10_DXCCS63               (-999 -888 -666=.)
recode I10_DXCCS64               (-999 -888 -666=.)
recode I10_DXCCS65               (-999 -888 -666=.)
recode I10_DXCCS66               (-999 -888 -666=.)
recode I10_DXCCS67               (-999 -888 -666=.)
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
recode POA_Disch_Edit1           (-9 -8 -6 -5=.)
recode POA_Disch_Edit2           (-9 -8 -6 -5=.)
recode POA_Hosp_Edit1            (-9 -8 -6 -5=.)
recode POA_Hosp_Edit2            (-9 -8 -6 -5=.)
recode POA_Hosp_Edit3            (-9 -8 -6 -5=.)
recode POA_Hosp_Edit3_Value      (-9999.99 -8888.88 -6666.66=.)
recode PRDAY1                    (-9999 -8888 -6666=.)
recode PRVER                     (-99 -88 -66=.)
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
recode PRYEAR1                   (-999 -888 -666=.)

save "WI_SID_2015q4_CORE.dta", replace
