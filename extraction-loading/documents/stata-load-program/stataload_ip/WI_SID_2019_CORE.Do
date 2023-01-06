/*****************************************************************************
* Creation Date: 04/14/2021   
* WI_SID_2019_CORE.Do
* This program will load the 2019 WI ASCII CORE File into Stata.
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
      str    CPT54                      285- 289   ///
      str    CPT55                      290- 294   ///
      str    CPT56                      295- 299   ///
      str    CPT57                      300- 304   ///
      str    CPT58                      305- 309   ///
      str    CPT59                      310- 314   ///
      str    CPT60                      315- 319   ///
      str    CPT61                      320- 324   ///
      str    CPT62                      325- 329   ///
      str    CPT63                      330- 334   ///
      str    CPT64                      335- 339   ///
      str    CPT65                      340- 344   ///
      str    CPT66                      345- 349   ///
      str    CPT67                      350- 354   ///
      str    CPT68                      355- 359   ///
      str    CPT69                      360- 364   ///
      str    CPT70                      365- 369   ///
      str    CPT71                      370- 374   ///
      str    CPT72                      375- 379   ///
      str    CPT73                      380- 384   ///
      str    CPT74                      385- 389   ///
      str    CPT75                      390- 394   ///
      str    CPT76                      395- 399   ///
      str    CPT77                      400- 404   ///
      str    CPT78                      405- 409   ///
      str    CPT79                      410- 414   ///
      str    CPT80                      415- 419   ///
      str    CPT81                      420- 424   ///
      str    CPT82                      425- 429   ///
      str    CPT83                      430- 434   ///
      str    CPT84                      435- 439   ///
      str    CPT85                      440- 444   ///
      str    CPT86                      445- 449   ///
      str    CPT87                      450- 454   ///
      str    CPT88                      455- 459   ///
      str    CPT89                      460- 464   ///
      str    CPT90                      465- 469   ///
      str    CPT91                      470- 474   ///
      str    CPT92                      475- 479   ///
      str    CPT93                      480- 484   ///
      str    CPT94                      485- 489   ///
      str    CPT95                      490- 494   ///
      str    CPT96                      495- 499   ///
      str    CPT97                      500- 504   ///
      str    CPT98                      505- 509   ///
      str    CPT99                      510- 514   ///
      str    CPT100                     515- 519   ///
      str    CPT101                     520- 524   ///
      str    CPT102                     525- 529   ///
      str    CPT103                     530- 534   ///
      str    CPT104                     535- 539   ///
      str    CPT105                     540- 544   ///
      str    CPT106                     545- 549   ///
      str    CPT107                     550- 554   ///
      str    CPT108                     555- 559   ///
      str    CPT109                     560- 564   ///
      str    CPT110                     565- 569   ///
      str    CPT111                     570- 574   ///
      str    CPT112                     575- 579   ///
      str    CPT113                     580- 584   ///
      str    CPT114                     585- 589   ///
      str    CPT115                     590- 594   ///
      str    CPT116                     595- 599   ///
      str    CPT117                     600- 604   ///
      str    CPT118                     605- 609   ///
      str    CPT119                     610- 614   ///
      str    CPT120                     615- 619   ///
      str    CPT121                     620- 624   ///
      str    CPT122                     625- 629   ///
      str    CPT123                     630- 634   ///
      str    CPT124                     635- 639   ///
      str    CPT125                     640- 644   ///
      str    CPT126                     645- 649   ///
      str    CPT127                     650- 654   ///
      str    CPT128                     655- 659   ///
      str    CPT129                     660- 664   ///
      str    CPT130                     665- 669   ///
      str    CPT131                     670- 674   ///
      str    CPT132                     675- 679   ///
      str    CPT133                     680- 684   ///
      str    CPT134                     685- 689   ///
      str    CPT135                     690- 694   ///
      str    CPT136                     695- 699   ///
      str    CPT137                     700- 704   ///
      str    CPT138                     705- 709   ///
      str    CPT139                     710- 714   ///
      str    CPT140                     715- 719   ///
      int    CPTCCS1                    720- 722   ///
      int    CPTCCS2                    723- 725   ///
      int    CPTCCS3                    726- 728   ///
      int    CPTCCS4                    729- 731   ///
      int    CPTCCS5                    732- 734   ///
      int    CPTCCS6                    735- 737   ///
      int    CPTCCS7                    738- 740   ///
      int    CPTCCS8                    741- 743   ///
      int    CPTCCS9                    744- 746   ///
      int    CPTCCS10                   747- 749   ///
      int    CPTCCS11                   750- 752   ///
      int    CPTCCS12                   753- 755   ///
      int    CPTCCS13                   756- 758   ///
      int    CPTCCS14                   759- 761   ///
      int    CPTCCS15                   762- 764   ///
      int    CPTCCS16                   765- 767   ///
      int    CPTCCS17                   768- 770   ///
      int    CPTCCS18                   771- 773   ///
      int    CPTCCS19                   774- 776   ///
      int    CPTCCS20                   777- 779   ///
      int    CPTCCS21                   780- 782   ///
      int    CPTCCS22                   783- 785   ///
      int    CPTCCS23                   786- 788   ///
      int    CPTCCS24                   789- 791   ///
      int    CPTCCS25                   792- 794   ///
      int    CPTCCS26                   795- 797   ///
      int    CPTCCS27                   798- 800   ///
      int    CPTCCS28                   801- 803   ///
      int    CPTCCS29                   804- 806   ///
      int    CPTCCS30                   807- 809   ///
      int    CPTCCS31                   810- 812   ///
      int    CPTCCS32                   813- 815   ///
      int    CPTCCS33                   816- 818   ///
      int    CPTCCS34                   819- 821   ///
      int    CPTCCS35                   822- 824   ///
      int    CPTCCS36                   825- 827   ///
      int    CPTCCS37                   828- 830   ///
      int    CPTCCS38                   831- 833   ///
      int    CPTCCS39                   834- 836   ///
      int    CPTCCS40                   837- 839   ///
      int    CPTCCS41                   840- 842   ///
      int    CPTCCS42                   843- 845   ///
      int    CPTCCS43                   846- 848   ///
      int    CPTCCS44                   849- 851   ///
      int    CPTCCS45                   852- 854   ///
      int    CPTCCS46                   855- 857   ///
      int    CPTCCS47                   858- 860   ///
      int    CPTCCS48                   861- 863   ///
      int    CPTCCS49                   864- 866   ///
      int    CPTCCS50                   867- 869   ///
      int    CPTCCS51                   870- 872   ///
      int    CPTCCS52                   873- 875   ///
      int    CPTCCS53                   876- 878   ///
      int    CPTCCS54                   879- 881   ///
      int    CPTCCS55                   882- 884   ///
      int    CPTCCS56                   885- 887   ///
      int    CPTCCS57                   888- 890   ///
      int    CPTCCS58                   891- 893   ///
      int    CPTCCS59                   894- 896   ///
      int    CPTCCS60                   897- 899   ///
      int    CPTCCS61                   900- 902   ///
      int    CPTCCS62                   903- 905   ///
      int    CPTCCS63                   906- 908   ///
      int    CPTCCS64                   909- 911   ///
      int    CPTCCS65                   912- 914   ///
      int    CPTCCS66                   915- 917   ///
      int    CPTCCS67                   918- 920   ///
      int    CPTCCS68                   921- 923   ///
      int    CPTCCS69                   924- 926   ///
      int    CPTCCS70                   927- 929   ///
      int    CPTCCS71                   930- 932   ///
      int    CPTCCS72                   933- 935   ///
      int    CPTCCS73                   936- 938   ///
      int    CPTCCS74                   939- 941   ///
      int    CPTCCS75                   942- 944   ///
      int    CPTCCS76                   945- 947   ///
      int    CPTCCS77                   948- 950   ///
      int    CPTCCS78                   951- 953   ///
      int    CPTCCS79                   954- 956   ///
      int    CPTCCS80                   957- 959   ///
      int    CPTCCS81                   960- 962   ///
      int    CPTCCS82                   963- 965   ///
      int    CPTCCS83                   966- 968   ///
      int    CPTCCS84                   969- 971   ///
      int    CPTCCS85                   972- 974   ///
      int    CPTCCS86                   975- 977   ///
      int    CPTCCS87                   978- 980   ///
      int    CPTCCS88                   981- 983   ///
      int    CPTCCS89                   984- 986   ///
      int    CPTCCS90                   987- 989   ///
      int    CPTCCS91                   990- 992   ///
      int    CPTCCS92                   993- 995   ///
      int    CPTCCS93                   996- 998   ///
      int    CPTCCS94                   999-1001   ///
      int    CPTCCS95                  1002-1004   ///
      int    CPTCCS96                  1005-1007   ///
      int    CPTCCS97                  1008-1010   ///
      int    CPTCCS98                  1011-1013   ///
      int    CPTCCS99                  1014-1016   ///
      int    CPTCCS100                 1017-1019   ///
      int    CPTCCS101                 1020-1022   ///
      int    CPTCCS102                 1023-1025   ///
      int    CPTCCS103                 1026-1028   ///
      int    CPTCCS104                 1029-1031   ///
      int    CPTCCS105                 1032-1034   ///
      int    CPTCCS106                 1035-1037   ///
      int    CPTCCS107                 1038-1040   ///
      int    CPTCCS108                 1041-1043   ///
      int    CPTCCS109                 1044-1046   ///
      int    CPTCCS110                 1047-1049   ///
      int    CPTCCS111                 1050-1052   ///
      int    CPTCCS112                 1053-1055   ///
      int    CPTCCS113                 1056-1058   ///
      int    CPTCCS114                 1059-1061   ///
      int    CPTCCS115                 1062-1064   ///
      int    CPTCCS116                 1065-1067   ///
      int    CPTCCS117                 1068-1070   ///
      int    CPTCCS118                 1071-1073   ///
      int    CPTCCS119                 1074-1076   ///
      int    CPTCCS120                 1077-1079   ///
      int    CPTCCS121                 1080-1082   ///
      int    CPTCCS122                 1083-1085   ///
      int    CPTCCS123                 1086-1088   ///
      int    CPTCCS124                 1089-1091   ///
      int    CPTCCS125                 1092-1094   ///
      int    CPTCCS126                 1095-1097   ///
      int    CPTCCS127                 1098-1100   ///
      int    CPTCCS128                 1101-1103   ///
      int    CPTCCS129                 1104-1106   ///
      int    CPTCCS130                 1107-1109   ///
      int    CPTCCS131                 1110-1112   ///
      int    CPTCCS132                 1113-1115   ///
      int    CPTCCS133                 1116-1118   ///
      int    CPTCCS134                 1119-1121   ///
      int    CPTCCS135                 1122-1124   ///
      int    CPTCCS136                 1125-1127   ///
      int    CPTCCS137                 1128-1130   ///
      int    CPTCCS138                 1131-1133   ///
      int    CPTCCS139                 1134-1136   ///
      int    CPTCCS140                 1137-1139   ///
      byte   DIED                      1140-1141   ///
      byte   DISPUB04                  1142-1143   ///
      byte   DISPUNIFORM               1144-1145   ///
      str    DISP_X                    1146-1147   ///
      byte   DMONTH                    1148-1149   ///
      byte   DQTR                      1150-1151   ///
      int    DRG                       1152-1154   ///
      byte   DRGVER                    1155-1156   ///
      int    DRG_NoPOA                 1157-1159   ///
      str    DSHOSPID                  1160-1176   ///
      str    DXPOA1                    1177        ///
      str    DXPOA2                    1178        ///
      str    DXPOA3                    1179        ///
      str    DXPOA4                    1180        ///
      str    DXPOA5                    1181        ///
      str    DXPOA6                    1182        ///
      str    DXPOA7                    1183        ///
      str    DXPOA8                    1184        ///
      str    DXPOA9                    1185        ///
      str    DXPOA10                   1186        ///
      str    DXPOA11                   1187        ///
      str    DXPOA12                   1188        ///
      str    DXPOA13                   1189        ///
      str    DXPOA14                   1190        ///
      str    DXPOA15                   1191        ///
      str    DXPOA16                   1192        ///
      str    DXPOA17                   1193        ///
      str    DXPOA18                   1194        ///
      str    DXPOA19                   1195        ///
      str    DXPOA20                   1196        ///
      str    DXPOA21                   1197        ///
      str    DXPOA22                   1198        ///
      str    DXPOA23                   1199        ///
      str    DXPOA24                   1200        ///
      str    DXPOA25                   1201        ///
      str    DXPOA26                   1202        ///
      str    DXPOA27                   1203        ///
      str    DXPOA28                   1204        ///
      str    DXPOA29                   1205        ///
      str    DXPOA30                   1206        ///
      str    DXPOA31                   1207        ///
      str    DXPOA32                   1208        ///
      str    DXPOA33                   1209        ///
      str    DXPOA34                   1210        ///
      str    DXPOA35                   1211        ///
      str    DXPOA36                   1212        ///
      str    DXPOA37                   1213        ///
      str    DXPOA38                   1214        ///
      str    DXPOA39                   1215        ///
      str    DXPOA40                   1216        ///
      str    DXPOA41                   1217        ///
      str    DXPOA42                   1218        ///
      str    DXPOA43                   1219        ///
      long   DaysToEvent               1220-1225   ///
      byte   FEMALE                    1226-1227   ///
      byte   HCUP_ED                   1228-1229   ///
      byte   HCUP_OS                   1230-1231   ///
      byte   HISPANIC                  1232-1233   ///
      str    HISPANIC_X                1234        ///
      str    HOSPST                    1235-1236   ///
      str    HOSP_NPI                  1237-1246   ///
      byte   Homeless                  1247-1248   ///
      byte   I10_BIRTH                 1249-1250   ///
      byte   I10_DELIVERY              1251-1252   ///
      str    I10_DX1                   1253-1259   ///
      str    I10_DX2                   1260-1266   ///
      str    I10_DX3                   1267-1273   ///
      str    I10_DX4                   1274-1280   ///
      str    I10_DX5                   1281-1287   ///
      str    I10_DX6                   1288-1294   ///
      str    I10_DX7                   1295-1301   ///
      str    I10_DX8                   1302-1308   ///
      str    I10_DX9                   1309-1315   ///
      str    I10_DX10                  1316-1322   ///
      str    I10_DX11                  1323-1329   ///
      str    I10_DX12                  1330-1336   ///
      str    I10_DX13                  1337-1343   ///
      str    I10_DX14                  1344-1350   ///
      str    I10_DX15                  1351-1357   ///
      str    I10_DX16                  1358-1364   ///
      str    I10_DX17                  1365-1371   ///
      str    I10_DX18                  1372-1378   ///
      str    I10_DX19                  1379-1385   ///
      str    I10_DX20                  1386-1392   ///
      str    I10_DX21                  1393-1399   ///
      str    I10_DX22                  1400-1406   ///
      str    I10_DX23                  1407-1413   ///
      str    I10_DX24                  1414-1420   ///
      str    I10_DX25                  1421-1427   ///
      str    I10_DX26                  1428-1434   ///
      str    I10_DX27                  1435-1441   ///
      str    I10_DX28                  1442-1448   ///
      str    I10_DX29                  1449-1455   ///
      str    I10_DX30                  1456-1462   ///
      str    I10_DX31                  1463-1469   ///
      str    I10_DX32                  1470-1476   ///
      str    I10_DX33                  1477-1483   ///
      str    I10_DX34                  1484-1490   ///
      str    I10_DX35                  1491-1497   ///
      str    I10_DX36                  1498-1504   ///
      str    I10_DX37                  1505-1511   ///
      str    I10_DX38                  1512-1518   ///
      str    I10_DX39                  1519-1525   ///
      str    I10_DX40                  1526-1532   ///
      str    I10_DX41                  1533-1539   ///
      str    I10_DX42                  1540-1546   ///
      str    I10_DX43                  1547-1553   ///
      str    I10_DX_Admitting          1554-1560   ///
      int    I10_NDX                   1561-1563   ///
      int    I10_NPR                   1564-1566   ///
      byte   I10_ORPROC                1567-1568   ///
      str    I10_PR1                   1569-1575   ///
      str    I10_PR2                   1576-1582   ///
      str    I10_PR3                   1583-1589   ///
      str    I10_PR4                   1590-1596   ///
      str    I10_PR5                   1597-1603   ///
      str    I10_PR6                   1604-1610   ///
      str    I10_PR7                   1611-1617   ///
      str    I10_PR8                   1618-1624   ///
      str    I10_PR9                   1625-1631   ///
      str    I10_PR10                  1632-1638   ///
      str    I10_PR11                  1639-1645   ///
      str    I10_PR12                  1646-1652   ///
      str    I10_PR13                  1653-1659   ///
      str    I10_PR14                  1660-1666   ///
      str    I10_PR15                  1667-1673   ///
      str    I10_PR16                  1674-1680   ///
      str    I10_PR17                  1681-1687   ///
      str    I10_PR18                  1688-1694   ///
      str    I10_PR19                  1695-1701   ///
      str    I10_PR20                  1702-1708   ///
      str    I10_PR21                  1709-1715   ///
      str    I10_PR22                  1716-1722   ///
      str    I10_PR23                  1723-1729   ///
      str    I10_PR24                  1730-1736   ///
      str    I10_PR25                  1737-1743   ///
      int    I10_PROCTYPE              1744-1746   ///
      byte   I10_SERVICELINE           1747-1748   ///
      double KEY                       1749-1763   ///
      long   LOS                       1764-1768   ///
      long   LOS_X                     1769-1774   ///
      byte   MDC                       1775-1776   ///
      byte   MDC_NoPOA                 1777-1778   ///
      str    MDSPEC1                   1779-1781   ///
      str    MDSPEC2                   1782-1784   ///
      byte   MEDINCSTQ                 1785-1786   ///
      long   MRN_R                     1787-1795   ///
      int    NCPT                      1796-1799   ///
      double OS_TIME                   1800-1810   ///
      byte   PAY1                      1811-1812   ///
      str    PAY1_X                    1813-1817   ///
      byte   PAY2                      1818-1819   ///
      str    PAY2_X                    1820-1824   ///
      int    PL_CBSA                   1825-1827   ///
      byte   PL_NCHS                   1828-1829   ///
      byte   PL_RUCC                   1830-1831   ///
      byte   PL_UIC                    1832-1833   ///
      byte   PL_UR_CAT4                1834-1835   ///
      byte   POA_Disch_Edit1           1836-1837   ///
      byte   POA_Disch_Edit2           1838-1839   ///
      byte   POA_Hosp_Edit1            1840-1841   ///
      byte   POA_Hosp_Edit2            1842-1843   ///
      byte   POA_Hosp_Edit3            1844-1845   ///
      double POA_Hosp_Edit3_Value      1846-1853   ///
      long   PRDAY1                    1854-1858   ///
      str    PSTATE                    1859-1860   ///
      str    PSTATE_GEO                1861-1862   ///
      long   PSTCO                     1863-1867   ///
      long   PSTCO_GEO                 1868-1872   ///
      str    PointOfOriginUB04         1873        ///
      str    PointOfOrigin_X           1874        ///
      byte   RACE                      1875-1876   ///
      byte   RACE_EDIT                 1877-1878   ///
      str    RACE_X                    1879-1880   ///
      double TOTCHG                    1881-1890   ///
      double TOTCHG_X                  1891-1905   ///
      byte   TRAN_IN                   1906-1907   ///
      byte   TRAN_OUT                  1908-1909   ///
      long   VisitLink                 1910-1918   ///
      int    YEAR                      1919-1922   ///
      str    ZIP                       1923-1927   ///
      str    ZIP3                      1928-1930   ///
      int    ZIPINC_QRTL               1931-1933   ///
      int    AYEAR                     1934-1937   ///
      byte   BMONTH                    1938-1939   ///
      int    BYEAR                     1940-1943   ///
      byte   PRMONTH1                  1944-1945   ///
      int    PRYEAR1                   1946-1949   ///
      using  "WI_SID_2019_CORE.ASC"

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
label var CPT102                   "CPT/HCPCS procedure code 102"
label var CPT103                   "CPT/HCPCS procedure code 103"
label var CPT104                   "CPT/HCPCS procedure code 104"
label var CPT105                   "CPT/HCPCS procedure code 105"
label var CPT106                   "CPT/HCPCS procedure code 106"
label var CPT107                   "CPT/HCPCS procedure code 107"
label var CPT108                   "CPT/HCPCS procedure code 108"
label var CPT109                   "CPT/HCPCS procedure code 109"
label var CPT110                   "CPT/HCPCS procedure code 110"
label var CPT111                   "CPT/HCPCS procedure code 111"
label var CPT112                   "CPT/HCPCS procedure code 112"
label var CPT113                   "CPT/HCPCS procedure code 113"
label var CPT114                   "CPT/HCPCS procedure code 114"
label var CPT115                   "CPT/HCPCS procedure code 115"
label var CPT116                   "CPT/HCPCS procedure code 116"
label var CPT117                   "CPT/HCPCS procedure code 117"
label var CPT118                   "CPT/HCPCS procedure code 118"
label var CPT119                   "CPT/HCPCS procedure code 119"
label var CPT120                   "CPT/HCPCS procedure code 120"
label var CPT121                   "CPT/HCPCS procedure code 121"
label var CPT122                   "CPT/HCPCS procedure code 122"
label var CPT123                   "CPT/HCPCS procedure code 123"
label var CPT124                   "CPT/HCPCS procedure code 124"
label var CPT125                   "CPT/HCPCS procedure code 125"
label var CPT126                   "CPT/HCPCS procedure code 126"
label var CPT127                   "CPT/HCPCS procedure code 127"
label var CPT128                   "CPT/HCPCS procedure code 128"
label var CPT129                   "CPT/HCPCS procedure code 129"
label var CPT130                   "CPT/HCPCS procedure code 130"
label var CPT131                   "CPT/HCPCS procedure code 131"
label var CPT132                   "CPT/HCPCS procedure code 132"
label var CPT133                   "CPT/HCPCS procedure code 133"
label var CPT134                   "CPT/HCPCS procedure code 134"
label var CPT135                   "CPT/HCPCS procedure code 135"
label var CPT136                   "CPT/HCPCS procedure code 136"
label var CPT137                   "CPT/HCPCS procedure code 137"
label var CPT138                   "CPT/HCPCS procedure code 138"
label var CPT139                   "CPT/HCPCS procedure code 139"
label var CPT140                   "CPT/HCPCS procedure code 140"
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
label var CPTCCS102                "CCS: CPT 102"
label var CPTCCS103                "CCS: CPT 103"
label var CPTCCS104                "CCS: CPT 104"
label var CPTCCS105                "CCS: CPT 105"
label var CPTCCS106                "CCS: CPT 106"
label var CPTCCS107                "CCS: CPT 107"
label var CPTCCS108                "CCS: CPT 108"
label var CPTCCS109                "CCS: CPT 109"
label var CPTCCS110                "CCS: CPT 110"
label var CPTCCS111                "CCS: CPT 111"
label var CPTCCS112                "CCS: CPT 112"
label var CPTCCS113                "CCS: CPT 113"
label var CPTCCS114                "CCS: CPT 114"
label var CPTCCS115                "CCS: CPT 115"
label var CPTCCS116                "CCS: CPT 116"
label var CPTCCS117                "CCS: CPT 117"
label var CPTCCS118                "CCS: CPT 118"
label var CPTCCS119                "CCS: CPT 119"
label var CPTCCS120                "CCS: CPT 120"
label var CPTCCS121                "CCS: CPT 121"
label var CPTCCS122                "CCS: CPT 122"
label var CPTCCS123                "CCS: CPT 123"
label var CPTCCS124                "CCS: CPT 124"
label var CPTCCS125                "CCS: CPT 125"
label var CPTCCS126                "CCS: CPT 126"
label var CPTCCS127                "CCS: CPT 127"
label var CPTCCS128                "CCS: CPT 128"
label var CPTCCS129                "CCS: CPT 129"
label var CPTCCS130                "CCS: CPT 130"
label var CPTCCS131                "CCS: CPT 131"
label var CPTCCS132                "CCS: CPT 132"
label var CPTCCS133                "CCS: CPT 133"
label var CPTCCS134                "CCS: CPT 134"
label var CPTCCS135                "CCS: CPT 135"
label var CPTCCS136                "CCS: CPT 136"
label var CPTCCS137                "CCS: CPT 137"
label var CPTCCS138                "CCS: CPT 138"
label var CPTCCS139                "CCS: CPT 139"
label var CPTCCS140                "CCS: CPT 140"
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRGVER                   "DRG grouper version used on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
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
label var DaysToEvent              "Days from 'start date' to admission"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPST                   "Hospital state postal code"
label var HOSP_NPI                 "Hospital NPI"
label var Homeless                 "Indicator that patient is homeless"
label var I10_BIRTH                "ICD-10-CM Birth Indicator"
label var I10_DELIVERY             "ICD-10-CM Delivery Indicator"
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
label var I10_DX_Admitting         "ICD-10-CM Admitting Diagnosis Code"
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDSPEC1                  "Physician 1 specialty (as received from source)"
label var MDSPEC2                  "Physician 2 specialty (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes (RUCC)"
label var PL_UIC                   "Patient location: Urban Influence Codes"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
label var POA_Disch_Edit1          "Discharge has POA missing on all nonexempt diagnoses"
label var POA_Disch_Edit2          "Discharge has POA missing on all nonexempt secondary diagnoses"
label var POA_Hosp_Edit1           "Hospital reported POA as Y on all diagnoses on all discharges"
label var POA_Hosp_Edit2           "Hospital reported POA as missing on all non-Medicare discharges"
label var POA_Hosp_Edit3           "Hospital reported POA as missing on all nonexempt diagnoses for 15% or more of discharges"
label var POA_Hosp_Edit3_Value     "Percentage of discharges with all nonexempt diagnoses missing POA indicators"
label var PRDAY1                   "Number of days from admission to I10_PR1"
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var RACE                     "Race (uniform)"
label var RACE_EDIT                "Race Edit Checks"
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
recode CPTCCS102                 (-99 -88 -66=.)
recode CPTCCS103                 (-99 -88 -66=.)
recode CPTCCS104                 (-99 -88 -66=.)
recode CPTCCS105                 (-99 -88 -66=.)
recode CPTCCS106                 (-99 -88 -66=.)
recode CPTCCS107                 (-99 -88 -66=.)
recode CPTCCS108                 (-99 -88 -66=.)
recode CPTCCS109                 (-99 -88 -66=.)
recode CPTCCS110                 (-99 -88 -66=.)
recode CPTCCS111                 (-99 -88 -66=.)
recode CPTCCS112                 (-99 -88 -66=.)
recode CPTCCS113                 (-99 -88 -66=.)
recode CPTCCS114                 (-99 -88 -66=.)
recode CPTCCS115                 (-99 -88 -66=.)
recode CPTCCS116                 (-99 -88 -66=.)
recode CPTCCS117                 (-99 -88 -66=.)
recode CPTCCS118                 (-99 -88 -66=.)
recode CPTCCS119                 (-99 -88 -66=.)
recode CPTCCS120                 (-99 -88 -66=.)
recode CPTCCS121                 (-99 -88 -66=.)
recode CPTCCS122                 (-99 -88 -66=.)
recode CPTCCS123                 (-99 -88 -66=.)
recode CPTCCS124                 (-99 -88 -66=.)
recode CPTCCS125                 (-99 -88 -66=.)
recode CPTCCS126                 (-99 -88 -66=.)
recode CPTCCS127                 (-99 -88 -66=.)
recode CPTCCS128                 (-99 -88 -66=.)
recode CPTCCS129                 (-99 -88 -66=.)
recode CPTCCS130                 (-99 -88 -66=.)
recode CPTCCS131                 (-99 -88 -66=.)
recode CPTCCS132                 (-99 -88 -66=.)
recode CPTCCS133                 (-99 -88 -66=.)
recode CPTCCS134                 (-99 -88 -66=.)
recode CPTCCS135                 (-99 -88 -66=.)
recode CPTCCS136                 (-99 -88 -66=.)
recode CPTCCS137                 (-99 -88 -66=.)
recode CPTCCS138                 (-99 -88 -66=.)
recode CPTCCS139                 (-99 -88 -66=.)
recode CPTCCS140                 (-99 -88 -66=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode I10_BIRTH                 (-9 -8 -6 -5=.)
recode I10_DELIVERY              (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_ORPROC                (-9 -8 -6 -5=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode I10_SERVICELINE           (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
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
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_EDIT                 (-9 -8 -6 -5=.)
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

save "WI_SID_2019_CORE.dta", replace
