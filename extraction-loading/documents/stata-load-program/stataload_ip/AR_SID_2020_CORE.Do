/*****************************************************************************
* Creation Date: 03/31/2022   
* AR_SID_2020_CORE.Do
* This program will load the 2020 AR ASCII CORE File into Stata.
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
      byte   APGAR1                      16-  17   ///
      byte   APGAR5                      18-  19   ///
      byte   ATYPE                       20-  21   ///
      byte   AWEEKEND                    22-  23   ///
      str    BILLTYPE                    24-  27   ///
      int    BWT                         28-  31   ///
      str    CPT1                        32-  36   ///
      str    CPT2                        37-  41   ///
      str    CPT3                        42-  46   ///
      str    CPT4                        47-  51   ///
      str    CPT5                        52-  56   ///
      str    CPT6                        57-  61   ///
      str    CPT7                        62-  66   ///
      str    CPT8                        67-  71   ///
      str    CPT9                        72-  76   ///
      str    CPT10                       77-  81   ///
      str    CPT11                       82-  86   ///
      str    CPT12                       87-  91   ///
      str    CPT13                       92-  96   ///
      str    CPT14                       97- 101   ///
      str    CPT15                      102- 106   ///
      str    CPT16                      107- 111   ///
      str    CPT17                      112- 116   ///
      str    CPT18                      117- 121   ///
      str    CPT19                      122- 126   ///
      str    CPT20                      127- 131   ///
      str    CPT21                      132- 136   ///
      str    CPT22                      137- 141   ///
      str    CPT23                      142- 146   ///
      str    CPT24                      147- 151   ///
      str    CPT25                      152- 156   ///
      str    CPT26                      157- 161   ///
      str    CPT27                      162- 166   ///
      str    CPT28                      167- 171   ///
      str    CPT29                      172- 176   ///
      str    CPT30                      177- 181   ///
      str    CPT31                      182- 186   ///
      str    CPT32                      187- 191   ///
      str    CPT33                      192- 196   ///
      str    CPT34                      197- 201   ///
      str    CPT35                      202- 206   ///
      str    CPT36                      207- 211   ///
      str    CPT37                      212- 216   ///
      str    CPT38                      217- 221   ///
      str    CPT39                      222- 226   ///
      str    CPT40                      227- 231   ///
      str    CPT41                      232- 236   ///
      str    CPT42                      237- 241   ///
      str    CPT43                      242- 246   ///
      str    CPT44                      247- 251   ///
      str    CPT45                      252- 256   ///
      str    CPT46                      257- 261   ///
      str    CPT47                      262- 266   ///
      str    CPT48                      267- 271   ///
      str    CPT49                      272- 276   ///
      str    CPT50                      277- 281   ///
      str    CPT51                      282- 286   ///
      str    CPT52                      287- 291   ///
      str    CPT53                      292- 296   ///
      str    CPT54                      297- 301   ///
      str    CPT55                      302- 306   ///
      str    CPT56                      307- 311   ///
      str    CPT57                      312- 316   ///
      str    CPT58                      317- 321   ///
      str    CPT59                      322- 326   ///
      str    CPT60                      327- 331   ///
      str    CPT61                      332- 336   ///
      str    CPT62                      337- 341   ///
      str    CPT63                      342- 346   ///
      str    CPT64                      347- 351   ///
      str    CPT65                      352- 356   ///
      str    CPT66                      357- 361   ///
      str    CPT67                      362- 366   ///
      str    CPT68                      367- 371   ///
      str    CPT69                      372- 376   ///
      str    CPT70                      377- 381   ///
      str    CPT71                      382- 386   ///
      str    CPT72                      387- 391   ///
      str    CPT73                      392- 396   ///
      str    CPT74                      397- 401   ///
      str    CPT75                      402- 406   ///
      str    CPT76                      407- 411   ///
      str    CPT77                      412- 416   ///
      str    CPT78                      417- 421   ///
      str    CPT79                      422- 426   ///
      str    CPT80                      427- 431   ///
      str    CPT81                      432- 436   ///
      str    CPT82                      437- 441   ///
      str    CPT83                      442- 446   ///
      str    CPT84                      447- 451   ///
      str    CPT85                      452- 456   ///
      str    CPT86                      457- 461   ///
      str    CPT87                      462- 466   ///
      str    CPT88                      467- 471   ///
      str    CPT89                      472- 476   ///
      str    CPT90                      477- 481   ///
      str    CPT91                      482- 486   ///
      str    CPT92                      487- 491   ///
      str    CPT93                      492- 496   ///
      str    CPT94                      497- 501   ///
      str    CPT95                      502- 506   ///
      str    CPT96                      507- 511   ///
      str    CPT97                      512- 516   ///
      str    CPT98                      517- 521   ///
      str    CPT99                      522- 526   ///
      str    CPT100                     527- 531   ///
      str    CPT101                     532- 536   ///
      str    CPT102                     537- 541   ///
      str    CPT103                     542- 546   ///
      str    CPT104                     547- 551   ///
      str    CPT105                     552- 556   ///
      str    CPT106                     557- 561   ///
      str    CPT107                     562- 566   ///
      str    CPT108                     567- 571   ///
      str    CPT109                     572- 576   ///
      str    CPT110                     577- 581   ///
      str    CPT111                     582- 586   ///
      str    CPT112                     587- 591   ///
      str    CPT113                     592- 596   ///
      str    CPT114                     597- 601   ///
      str    CPT115                     602- 606   ///
      str    CPT116                     607- 611   ///
      str    CPT117                     612- 616   ///
      str    CPT118                     617- 621   ///
      str    CPT119                     622- 626   ///
      str    CPT120                     627- 631   ///
      str    CPT121                     632- 636   ///
      str    CPT122                     637- 641   ///
      str    CPT123                     642- 646   ///
      str    CPT124                     647- 651   ///
      str    CPT125                     652- 656   ///
      str    CPT126                     657- 661   ///
      str    CPT127                     662- 666   ///
      str    CPT128                     667- 671   ///
      str    CPT129                     672- 676   ///
      str    CPT130                     677- 681   ///
      str    CPT131                     682- 686   ///
      str    CPT132                     687- 691   ///
      str    CPT133                     692- 696   ///
      str    CPT134                     697- 701   ///
      str    CPT135                     702- 706   ///
      str    CPT136                     707- 711   ///
      str    CPT137                     712- 716   ///
      str    CPT138                     717- 721   ///
      str    CPT139                     722- 726   ///
      str    CPT140                     727- 731   ///
      str    CPT141                     732- 736   ///
      str    CPT142                     737- 741   ///
      str    CPT143                     742- 746   ///
      str    CPT144                     747- 751   ///
      str    CPT145                     752- 756   ///
      str    CPT146                     757- 761   ///
      str    CPT147                     762- 766   ///
      str    CPT148                     767- 771   ///
      str    CPT149                     772- 776   ///
      str    CPT150                     777- 781   ///
      str    CPT151                     782- 786   ///
      str    CPT152                     787- 791   ///
      str    CPT153                     792- 796   ///
      str    CPT154                     797- 801   ///
      str    CPT155                     802- 806   ///
      str    CPT156                     807- 811   ///
      str    CPT157                     812- 816   ///
      str    CPT158                     817- 821   ///
      str    CPT159                     822- 826   ///
      str    CPT160                     827- 831   ///
      str    CPT161                     832- 836   ///
      str    CPT162                     837- 841   ///
      str    CPT163                     842- 846   ///
      str    CPT164                     847- 851   ///
      int    CPTCCS1                    852- 854   ///
      int    CPTCCS2                    855- 857   ///
      int    CPTCCS3                    858- 860   ///
      int    CPTCCS4                    861- 863   ///
      int    CPTCCS5                    864- 866   ///
      int    CPTCCS6                    867- 869   ///
      int    CPTCCS7                    870- 872   ///
      int    CPTCCS8                    873- 875   ///
      int    CPTCCS9                    876- 878   ///
      int    CPTCCS10                   879- 881   ///
      int    CPTCCS11                   882- 884   ///
      int    CPTCCS12                   885- 887   ///
      int    CPTCCS13                   888- 890   ///
      int    CPTCCS14                   891- 893   ///
      int    CPTCCS15                   894- 896   ///
      int    CPTCCS16                   897- 899   ///
      int    CPTCCS17                   900- 902   ///
      int    CPTCCS18                   903- 905   ///
      int    CPTCCS19                   906- 908   ///
      int    CPTCCS20                   909- 911   ///
      int    CPTCCS21                   912- 914   ///
      int    CPTCCS22                   915- 917   ///
      int    CPTCCS23                   918- 920   ///
      int    CPTCCS24                   921- 923   ///
      int    CPTCCS25                   924- 926   ///
      int    CPTCCS26                   927- 929   ///
      int    CPTCCS27                   930- 932   ///
      int    CPTCCS28                   933- 935   ///
      int    CPTCCS29                   936- 938   ///
      int    CPTCCS30                   939- 941   ///
      int    CPTCCS31                   942- 944   ///
      int    CPTCCS32                   945- 947   ///
      int    CPTCCS33                   948- 950   ///
      int    CPTCCS34                   951- 953   ///
      int    CPTCCS35                   954- 956   ///
      int    CPTCCS36                   957- 959   ///
      int    CPTCCS37                   960- 962   ///
      int    CPTCCS38                   963- 965   ///
      int    CPTCCS39                   966- 968   ///
      int    CPTCCS40                   969- 971   ///
      int    CPTCCS41                   972- 974   ///
      int    CPTCCS42                   975- 977   ///
      int    CPTCCS43                   978- 980   ///
      int    CPTCCS44                   981- 983   ///
      int    CPTCCS45                   984- 986   ///
      int    CPTCCS46                   987- 989   ///
      int    CPTCCS47                   990- 992   ///
      int    CPTCCS48                   993- 995   ///
      int    CPTCCS49                   996- 998   ///
      int    CPTCCS50                   999-1001   ///
      int    CPTCCS51                  1002-1004   ///
      int    CPTCCS52                  1005-1007   ///
      int    CPTCCS53                  1008-1010   ///
      int    CPTCCS54                  1011-1013   ///
      int    CPTCCS55                  1014-1016   ///
      int    CPTCCS56                  1017-1019   ///
      int    CPTCCS57                  1020-1022   ///
      int    CPTCCS58                  1023-1025   ///
      int    CPTCCS59                  1026-1028   ///
      int    CPTCCS60                  1029-1031   ///
      int    CPTCCS61                  1032-1034   ///
      int    CPTCCS62                  1035-1037   ///
      int    CPTCCS63                  1038-1040   ///
      int    CPTCCS64                  1041-1043   ///
      int    CPTCCS65                  1044-1046   ///
      int    CPTCCS66                  1047-1049   ///
      int    CPTCCS67                  1050-1052   ///
      int    CPTCCS68                  1053-1055   ///
      int    CPTCCS69                  1056-1058   ///
      int    CPTCCS70                  1059-1061   ///
      int    CPTCCS71                  1062-1064   ///
      int    CPTCCS72                  1065-1067   ///
      int    CPTCCS73                  1068-1070   ///
      int    CPTCCS74                  1071-1073   ///
      int    CPTCCS75                  1074-1076   ///
      int    CPTCCS76                  1077-1079   ///
      int    CPTCCS77                  1080-1082   ///
      int    CPTCCS78                  1083-1085   ///
      int    CPTCCS79                  1086-1088   ///
      int    CPTCCS80                  1089-1091   ///
      int    CPTCCS81                  1092-1094   ///
      int    CPTCCS82                  1095-1097   ///
      int    CPTCCS83                  1098-1100   ///
      int    CPTCCS84                  1101-1103   ///
      int    CPTCCS85                  1104-1106   ///
      int    CPTCCS86                  1107-1109   ///
      int    CPTCCS87                  1110-1112   ///
      int    CPTCCS88                  1113-1115   ///
      int    CPTCCS89                  1116-1118   ///
      int    CPTCCS90                  1119-1121   ///
      int    CPTCCS91                  1122-1124   ///
      int    CPTCCS92                  1125-1127   ///
      int    CPTCCS93                  1128-1130   ///
      int    CPTCCS94                  1131-1133   ///
      int    CPTCCS95                  1134-1136   ///
      int    CPTCCS96                  1137-1139   ///
      int    CPTCCS97                  1140-1142   ///
      int    CPTCCS98                  1143-1145   ///
      int    CPTCCS99                  1146-1148   ///
      int    CPTCCS100                 1149-1151   ///
      int    CPTCCS101                 1152-1154   ///
      int    CPTCCS102                 1155-1157   ///
      int    CPTCCS103                 1158-1160   ///
      int    CPTCCS104                 1161-1163   ///
      int    CPTCCS105                 1164-1166   ///
      int    CPTCCS106                 1167-1169   ///
      int    CPTCCS107                 1170-1172   ///
      int    CPTCCS108                 1173-1175   ///
      int    CPTCCS109                 1176-1178   ///
      int    CPTCCS110                 1179-1181   ///
      int    CPTCCS111                 1182-1184   ///
      int    CPTCCS112                 1185-1187   ///
      int    CPTCCS113                 1188-1190   ///
      int    CPTCCS114                 1191-1193   ///
      int    CPTCCS115                 1194-1196   ///
      int    CPTCCS116                 1197-1199   ///
      int    CPTCCS117                 1200-1202   ///
      int    CPTCCS118                 1203-1205   ///
      int    CPTCCS119                 1206-1208   ///
      int    CPTCCS120                 1209-1211   ///
      int    CPTCCS121                 1212-1214   ///
      int    CPTCCS122                 1215-1217   ///
      int    CPTCCS123                 1218-1220   ///
      int    CPTCCS124                 1221-1223   ///
      int    CPTCCS125                 1224-1226   ///
      int    CPTCCS126                 1227-1229   ///
      int    CPTCCS127                 1230-1232   ///
      int    CPTCCS128                 1233-1235   ///
      int    CPTCCS129                 1236-1238   ///
      int    CPTCCS130                 1239-1241   ///
      int    CPTCCS131                 1242-1244   ///
      int    CPTCCS132                 1245-1247   ///
      int    CPTCCS133                 1248-1250   ///
      int    CPTCCS134                 1251-1253   ///
      int    CPTCCS135                 1254-1256   ///
      int    CPTCCS136                 1257-1259   ///
      int    CPTCCS137                 1260-1262   ///
      int    CPTCCS138                 1263-1265   ///
      int    CPTCCS139                 1266-1268   ///
      int    CPTCCS140                 1269-1271   ///
      int    CPTCCS141                 1272-1274   ///
      int    CPTCCS142                 1275-1277   ///
      int    CPTCCS143                 1278-1280   ///
      int    CPTCCS144                 1281-1283   ///
      int    CPTCCS145                 1284-1286   ///
      int    CPTCCS146                 1287-1289   ///
      int    CPTCCS147                 1290-1292   ///
      int    CPTCCS148                 1293-1295   ///
      int    CPTCCS149                 1296-1298   ///
      int    CPTCCS150                 1299-1301   ///
      int    CPTCCS151                 1302-1304   ///
      int    CPTCCS152                 1305-1307   ///
      int    CPTCCS153                 1308-1310   ///
      int    CPTCCS154                 1311-1313   ///
      int    CPTCCS155                 1314-1316   ///
      int    CPTCCS156                 1317-1319   ///
      int    CPTCCS157                 1320-1322   ///
      int    CPTCCS158                 1323-1325   ///
      int    CPTCCS159                 1326-1328   ///
      int    CPTCCS160                 1329-1331   ///
      int    CPTCCS161                 1332-1334   ///
      int    CPTCCS162                 1335-1337   ///
      int    CPTCCS163                 1338-1340   ///
      int    CPTCCS164                 1341-1343   ///
      long   DaysToEvent               1344-1349   ///
      int    DHOUR                     1350-1353   ///
      byte   DIED                      1354-1355   ///
      str    DISP_X                    1356-1357   ///
      byte   DISPUB04                  1358-1359   ///
      byte   DISPUNIFORM               1360-1361   ///
      byte   DMONTH                    1362-1363   ///
      byte   DNR                       1364-1365   ///
      byte   DQTR                      1366-1367   ///
      int    DRG                       1368-1370   ///
      int    DRG_NoPOA                 1371-1373   ///
      byte   DRGVER                    1374-1375   ///
      str    DSHOSPID                  1376-1392   ///
      str    DXPOA1                    1393        ///
      str    DXPOA2                    1394        ///
      str    DXPOA3                    1395        ///
      str    DXPOA4                    1396        ///
      str    DXPOA5                    1397        ///
      str    DXPOA6                    1398        ///
      str    DXPOA7                    1399        ///
      str    DXPOA8                    1400        ///
      str    DXPOA9                    1401        ///
      str    DXPOA10                   1402        ///
      str    DXPOA11                   1403        ///
      str    DXPOA12                   1404        ///
      str    DXPOA13                   1405        ///
      str    DXPOA14                   1406        ///
      str    DXPOA15                   1407        ///
      str    DXPOA16                   1408        ///
      str    DXPOA17                   1409        ///
      str    DXPOA18                   1410        ///
      str    DXPOA19                   1411        ///
      str    DXPOA20                   1412        ///
      str    DXPOA21                   1413        ///
      str    DXPOA22                   1414        ///
      str    DXPOA23                   1415        ///
      str    DXPOA24                   1416        ///
      str    DXPOA25                   1417        ///
      str    DXPOA26                   1418        ///
      str    DXPOA27                   1419        ///
      str    DXPOA28                   1420        ///
      str    DXPOA29                   1421        ///
      str    DXPOA30                   1422        ///
      byte   FEMALE                    1423-1424   ///
      byte   HCUP_ED                   1425-1426   ///
      byte   HCUP_OS                   1427-1428   ///
      byte   HISPANIC                  1429-1430   ///
      str    HISPANIC_X                1431        ///
      str    HOSPST                    1432-1433   ///
      int    I10_BIRTH                 1434-1436   ///
      int    I10_DELIVERY              1437-1439   ///
      str    I10_DX_Admitting          1440-1446   ///
      str    I10_DX1                   1447-1453   ///
      str    I10_DX2                   1454-1460   ///
      str    I10_DX3                   1461-1467   ///
      str    I10_DX4                   1468-1474   ///
      str    I10_DX5                   1475-1481   ///
      str    I10_DX6                   1482-1488   ///
      str    I10_DX7                   1489-1495   ///
      str    I10_DX8                   1496-1502   ///
      str    I10_DX9                   1503-1509   ///
      str    I10_DX10                  1510-1516   ///
      str    I10_DX11                  1517-1523   ///
      str    I10_DX12                  1524-1530   ///
      str    I10_DX13                  1531-1537   ///
      str    I10_DX14                  1538-1544   ///
      str    I10_DX15                  1545-1551   ///
      str    I10_DX16                  1552-1558   ///
      str    I10_DX17                  1559-1565   ///
      str    I10_DX18                  1566-1572   ///
      str    I10_DX19                  1573-1579   ///
      str    I10_DX20                  1580-1586   ///
      str    I10_DX21                  1587-1593   ///
      str    I10_DX22                  1594-1600   ///
      str    I10_DX23                  1601-1607   ///
      str    I10_DX24                  1608-1614   ///
      str    I10_DX25                  1615-1621   ///
      str    I10_DX26                  1622-1628   ///
      str    I10_DX27                  1629-1635   ///
      str    I10_DX28                  1636-1642   ///
      str    I10_DX29                  1643-1649   ///
      str    I10_DX30                  1650-1656   ///
      str    I10_DX31                  1657-1663   ///
      str    I10_DX32                  1664-1670   ///
      str    I10_DX33                  1671-1677   ///
      str    I10_DX34                  1678-1684   ///
      str    I10_DX35                  1685-1691   ///
      str    I10_DX36                  1692-1698   ///
      str    I10_DX37                  1699-1705   ///
      str    I10_DX38                  1706-1712   ///
      int    I10_NDX                   1713-1715   ///
      int    I10_NPR                   1716-1718   ///
      str    I10_PR1                   1719-1725   ///
      str    I10_PR2                   1726-1732   ///
      str    I10_PR3                   1733-1739   ///
      str    I10_PR4                   1740-1746   ///
      str    I10_PR5                   1747-1753   ///
      str    I10_PR6                   1754-1760   ///
      str    I10_PR7                   1761-1767   ///
      str    I10_PR8                   1768-1774   ///
      str    I10_PR9                   1775-1781   ///
      str    I10_PR10                  1782-1788   ///
      str    I10_PR11                  1789-1795   ///
      str    I10_PR12                  1796-1802   ///
      str    I10_PR13                  1803-1809   ///
      str    I10_PR14                  1810-1816   ///
      str    I10_PR15                  1817-1823   ///
      str    I10_PR16                  1824-1830   ///
      str    I10_PR17                  1831-1837   ///
      str    I10_PR18                  1838-1844   ///
      str    I10_PR19                  1845-1851   ///
      str    I10_PR20                  1852-1858   ///
      str    I10_PR21                  1859-1865   ///
      int    I10_PROCTYPE              1866-1868   ///
      byte   I10_SERVICELINE           1869-1870   ///
      double KEY                       1871-1885   ///
      long   LOS                       1886-1890   ///
      long   LOS_X                     1891-1896   ///
      str    MARITALSTATUS_X           1897        ///
      str    MARITALSTATUSUB04         1898        ///
      byte   MDC                       1899-1900   ///
      byte   MDC_NoPOA                 1901-1902   ///
      long   MDNUM1_R                  1903-1911   ///
      long   MDNUM2_R                  1912-1920   ///
      long   MDNUM3_R                  1921-1929   ///
      long   MDNUM4_R                  1930-1938   ///
      byte   MEDINCSTQ                 1939-1940   ///
      long   MRN_R                     1941-1949   ///
      int    NCPT                      1950-1953   ///
      double OS_TIME                   1954-1964   ///
      str    P7EDSRC_X                 1965-1966   ///
      byte   PAY1                      1967-1968   ///
      str    PAY1_X                    1969        ///
      byte   PAY2                      1970-1971   ///
      str    PAY2_X                    1972        ///
      byte   PAY3                      1973-1974   ///
      str    PAY3_X                    1975        ///
      byte   PCLASS_ORPROC             1976-1977   ///
      int    PL_CBSA                   1978-1980   ///
      byte   PL_NCHS                   1981-1982   ///
      byte   PL_RUCC                   1983-1984   ///
      byte   PL_UIC                    1985-1986   ///
      byte   PL_UR_CAT4                1987-1988   ///
      byte   POA_Disch_Edit1           1989-1990   ///
      byte   POA_Disch_Edit2           1991-1992   ///
      byte   POA_Hosp_Edit1            1993-1994   ///
      byte   POA_Hosp_Edit2            1995-1996   ///
      byte   POA_Hosp_Edit3            1997-1998   ///
      double POA_Hosp_Edit3_Value      1999-2006   ///
      str    PointOfOrigin_X           2007        ///
      str    PointOfOriginUB04         2008        ///
      long   PRDAY1                    2009-2013   ///
      long   PRDAY2                    2014-2018   ///
      long   PRDAY3                    2019-2023   ///
      long   PRDAY4                    2024-2028   ///
      long   PRDAY5                    2029-2033   ///
      long   PRDAY6                    2034-2038   ///
      long   PRDAY7                    2039-2043   ///
      long   PRDAY8                    2044-2048   ///
      long   PRDAY9                    2049-2053   ///
      long   PRDAY10                   2054-2058   ///
      long   PRDAY11                   2059-2063   ///
      long   PRDAY12                   2064-2068   ///
      long   PRDAY13                   2069-2073   ///
      long   PRDAY14                   2074-2078   ///
      long   PRDAY15                   2079-2083   ///
      long   PRDAY16                   2084-2088   ///
      long   PRDAY17                   2089-2093   ///
      long   PRDAY18                   2094-2098   ///
      long   PRDAY19                   2099-2103   ///
      long   PRDAY20                   2104-2108   ///
      long   PRDAY21                   2109-2113   ///
      str    PSTATE                    2114-2115   ///
      str    PSTATE_GEO                2116-2117   ///
      long   PSTCO                     2118-2122   ///
      long   PSTCO_GEO                 2123-2127   ///
      byte   RACE                      2128-2129   ///
      float  RACE_PCT_MISS_HOSP        2130-2136   ///
      str    RACE_X                    2137        ///
      double TOTCHG                    2138-2147   ///
      double TOTCHG_X                  2148-2162   ///
      byte   TRAN_IN                   2163-2164   ///
      byte   TRAN_OUT                  2165-2166   ///
      long   VisitLink                 2167-2175   ///
      int    YEAR                      2176-2179   ///
      str    ZIP3                      2180-2182   ///
      int    ZIPINC_QRTL               2183-2185   ///
      int    AYEAR                     2186-2189   ///
      byte   BMONTH                    2190-2191   ///
      int    BYEAR                     2192-2195   ///
      byte   PRMONTH1                  2196-2197   ///
      byte   PRMONTH2                  2198-2199   ///
      byte   PRMONTH3                  2200-2201   ///
      byte   PRMONTH4                  2202-2203   ///
      byte   PRMONTH5                  2204-2205   ///
      byte   PRMONTH6                  2206-2207   ///
      byte   PRMONTH7                  2208-2209   ///
      byte   PRMONTH8                  2210-2211   ///
      byte   PRMONTH9                  2212-2213   ///
      byte   PRMONTH10                 2214-2215   ///
      byte   PRMONTH11                 2216-2217   ///
      byte   PRMONTH12                 2218-2219   ///
      byte   PRMONTH13                 2220-2221   ///
      byte   PRMONTH14                 2222-2223   ///
      byte   PRMONTH15                 2224-2225   ///
      byte   PRMONTH16                 2226-2227   ///
      byte   PRMONTH17                 2228-2229   ///
      byte   PRMONTH18                 2230-2231   ///
      byte   PRMONTH19                 2232-2233   ///
      byte   PRMONTH20                 2234-2235   ///
      byte   PRMONTH21                 2236-2237   ///
      int    PRYEAR1                   2238-2241   ///
      int    PRYEAR2                   2242-2245   ///
      int    PRYEAR3                   2246-2249   ///
      int    PRYEAR4                   2250-2253   ///
      int    PRYEAR5                   2254-2257   ///
      int    PRYEAR6                   2258-2261   ///
      int    PRYEAR7                   2262-2265   ///
      int    PRYEAR8                   2266-2269   ///
      int    PRYEAR9                   2270-2273   ///
      int    PRYEAR10                  2274-2277   ///
      int    PRYEAR11                  2278-2281   ///
      int    PRYEAR12                  2282-2285   ///
      int    PRYEAR13                  2286-2289   ///
      int    PRYEAR14                  2290-2293   ///
      int    PRYEAR15                  2294-2297   ///
      int    PRYEAR16                  2298-2301   ///
      int    PRYEAR17                  2302-2305   ///
      int    PRYEAR18                  2306-2309   ///
      int    PRYEAR19                  2310-2313   ///
      int    PRYEAR20                  2314-2317   ///
      int    PRYEAR21                  2318-2321   ///
      using  "AR_SID_2020_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var APGAR1                   "One-minute APGAR score"
label var APGAR5                   "Five-minute APGAR score"
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
label var CPT141                   "CPT/HCPCS procedure code 141"
label var CPT142                   "CPT/HCPCS procedure code 142"
label var CPT143                   "CPT/HCPCS procedure code 143"
label var CPT144                   "CPT/HCPCS procedure code 144"
label var CPT145                   "CPT/HCPCS procedure code 145"
label var CPT146                   "CPT/HCPCS procedure code 146"
label var CPT147                   "CPT/HCPCS procedure code 147"
label var CPT148                   "CPT/HCPCS procedure code 148"
label var CPT149                   "CPT/HCPCS procedure code 149"
label var CPT150                   "CPT/HCPCS procedure code 150"
label var CPT151                   "CPT/HCPCS procedure code 151"
label var CPT152                   "CPT/HCPCS procedure code 152"
label var CPT153                   "CPT/HCPCS procedure code 153"
label var CPT154                   "CPT/HCPCS procedure code 154"
label var CPT155                   "CPT/HCPCS procedure code 155"
label var CPT156                   "CPT/HCPCS procedure code 156"
label var CPT157                   "CPT/HCPCS procedure code 157"
label var CPT158                   "CPT/HCPCS procedure code 158"
label var CPT159                   "CPT/HCPCS procedure code 159"
label var CPT160                   "CPT/HCPCS procedure code 160"
label var CPT161                   "CPT/HCPCS procedure code 161"
label var CPT162                   "CPT/HCPCS procedure code 162"
label var CPT163                   "CPT/HCPCS procedure code 163"
label var CPT164                   "CPT/HCPCS procedure code 164"
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
label var CPTCCS141                "CCS: CPT 141"
label var CPTCCS142                "CCS: CPT 142"
label var CPTCCS143                "CCS: CPT 143"
label var CPTCCS144                "CCS: CPT 144"
label var CPTCCS145                "CCS: CPT 145"
label var CPTCCS146                "CCS: CPT 146"
label var CPTCCS147                "CCS: CPT 147"
label var CPTCCS148                "CCS: CPT 148"
label var CPTCCS149                "CCS: CPT 149"
label var CPTCCS150                "CCS: CPT 150"
label var CPTCCS151                "CCS: CPT 151"
label var CPTCCS152                "CCS: CPT 152"
label var CPTCCS153                "CCS: CPT 153"
label var CPTCCS154                "CCS: CPT 154"
label var CPTCCS155                "CCS: CPT 155"
label var CPTCCS156                "CCS: CPT 156"
label var CPTCCS157                "CCS: CPT 157"
label var CPTCCS158                "CCS: CPT 158"
label var CPTCCS159                "CCS: CPT 159"
label var CPTCCS160                "CCS: CPT 160"
label var CPTCCS161                "CCS: CPT 161"
label var CPTCCS162                "CCS: CPT 162"
label var CPTCCS163                "CCS: CPT 163"
label var CPTCCS164                "CCS: CPT 164"
label var DaysToEvent              "Days from 'start date' to admission"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DNR                      "Do not resuscitate indicator"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPST                   "Hospital state postal code"
label var I10_BIRTH                "ICD-10-CM Birth Indicator"
label var I10_DELIVERY             "ICD-10-CM Delivery Indicator"
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
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_NPR                  "ICD-10-PCS Number of procedures on this record"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MARITALSTATUS_X          "Patient's marital status (as received from source)"
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MDNUM4_R                 "Physician 4 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
label var PAY3                     "Tertiary expected payer (uniform)"
label var PAY3_X                   "Tertiary expected payer (as received from source)"
label var PCLASS_ORPROC            "Indicates operating room (major diagnostic or therapeutic) procedure on the record"
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
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
label var RACE                     "Race (uniform)"
label var RACE_PCT_MISS_HOSP       "Hospital percentage of missing or invalid race values"
label var RACE_X                   "Race (as received from source)"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var VisitLink                "Visit linkage variable"
label var YEAR                     "Calendar year"
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
recode APGAR1                    (-9 -8 -6 -5=.)
recode APGAR5                    (-9 -8 -6 -5=.)
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
recode CPTCCS141                 (-99 -88 -66=.)
recode CPTCCS142                 (-99 -88 -66=.)
recode CPTCCS143                 (-99 -88 -66=.)
recode CPTCCS144                 (-99 -88 -66=.)
recode CPTCCS145                 (-99 -88 -66=.)
recode CPTCCS146                 (-99 -88 -66=.)
recode CPTCCS147                 (-99 -88 -66=.)
recode CPTCCS148                 (-99 -88 -66=.)
recode CPTCCS149                 (-99 -88 -66=.)
recode CPTCCS150                 (-99 -88 -66=.)
recode CPTCCS151                 (-99 -88 -66=.)
recode CPTCCS152                 (-99 -88 -66=.)
recode CPTCCS153                 (-99 -88 -66=.)
recode CPTCCS154                 (-99 -88 -66=.)
recode CPTCCS155                 (-99 -88 -66=.)
recode CPTCCS156                 (-99 -88 -66=.)
recode CPTCCS157                 (-99 -88 -66=.)
recode CPTCCS158                 (-99 -88 -66=.)
recode CPTCCS159                 (-99 -88 -66=.)
recode CPTCCS160                 (-99 -88 -66=.)
recode CPTCCS161                 (-99 -88 -66=.)
recode CPTCCS162                 (-99 -88 -66=.)
recode CPTCCS163                 (-99 -88 -66=.)
recode CPTCCS164                 (-99 -88 -66=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DNR                       (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode I10_BIRTH                 (-99 -88 -66=.)
recode I10_DELIVERY              (-99 -88 -66=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode I10_SERVICELINE           (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM4_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode NCPT                      (-999 -888 -666=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
recode PAY3                      (-9 -8 -6 -5=.)
recode PCLASS_ORPROC             (-9 -8 -6 -5=.)
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
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_PCT_MISS_HOSP        (-999.99 -888.88 -666.66=.)
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

save "AR_SID_2020_CORE.dta", replace
