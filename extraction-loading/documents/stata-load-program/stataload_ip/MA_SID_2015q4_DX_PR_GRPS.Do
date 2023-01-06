/*****************************************************************************
* Creation Date: 01/09/2018   
* MA_SID_2015q4_DX_PR_GRPS.Do
* This program will load the 2015 MA ASCII DX_PR_GRPS File into Stata.
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
      byte   I10_BODYSYSTEM1              1-   2   ///
      byte   I10_BODYSYSTEM2              3-   4   ///
      byte   I10_BODYSYSTEM3              5-   6   ///
      byte   I10_BODYSYSTEM4              7-   8   ///
      byte   I10_BODYSYSTEM5              9-  10   ///
      byte   I10_BODYSYSTEM6             11-  12   ///
      byte   I10_BODYSYSTEM7             13-  14   ///
      byte   I10_BODYSYSTEM8             15-  16   ///
      byte   I10_BODYSYSTEM9             17-  18   ///
      byte   I10_BODYSYSTEM10            19-  20   ///
      byte   I10_BODYSYSTEM11            21-  22   ///
      byte   I10_BODYSYSTEM12            23-  24   ///
      byte   I10_BODYSYSTEM13            25-  26   ///
      byte   I10_BODYSYSTEM14            27-  28   ///
      byte   I10_BODYSYSTEM15            29-  30   ///
      byte   I10_BODYSYSTEM16            31-  32   ///
      byte   I10_BODYSYSTEM17            33-  34   ///
      byte   I10_BODYSYSTEM18            35-  36   ///
      byte   I10_BODYSYSTEM19            37-  38   ///
      byte   I10_BODYSYSTEM20            39-  40   ///
      byte   I10_BODYSYSTEM21            41-  42   ///
      byte   I10_BODYSYSTEM22            43-  44   ///
      byte   I10_BODYSYSTEM23            45-  46   ///
      byte   I10_BODYSYSTEM24            47-  48   ///
      byte   I10_BODYSYSTEM25            49-  50   ///
      byte   I10_BODYSYSTEM26            51-  52   ///
      byte   I10_BODYSYSTEM27            53-  54   ///
      byte   I10_BODYSYSTEM28            55-  56   ///
      byte   I10_BODYSYSTEM29            57-  58   ///
      byte   I10_BODYSYSTEM30            59-  60   ///
      byte   I10_BODYSYSTEM31            61-  62   ///
      byte   I10_BODYSYSTEM32            63-  64   ///
      byte   I10_BODYSYSTEM33            65-  66   ///
      byte   I10_BODYSYSTEM34            67-  68   ///
      byte   I10_BODYSYSTEM35            69-  70   ///
      byte   I10_BODYSYSTEM36            71-  72   ///
      byte   I10_BODYSYSTEM37            73-  74   ///
      byte   I10_BODYSYSTEM38            75-  76   ///
      byte   I10_BODYSYSTEM39            77-  78   ///
      byte   I10_BODYSYSTEM40            79-  80   ///
      byte   I10_BODYSYSTEM41            81-  82   ///
      byte   I10_BODYSYSTEM42            83-  84   ///
      byte   I10_BODYSYSTEM43            85-  86   ///
      byte   I10_BODYSYSTEM44            87-  88   ///
      byte   I10_BODYSYSTEM45            89-  90   ///
      byte   I10_BODYSYSTEM46            91-  92   ///
      byte   I10_BODYSYSTEM47            93-  94   ///
      byte   I10_BODYSYSTEM48            95-  96   ///
      byte   I10_BODYSYSTEM49            97-  98   ///
      byte   I10_BODYSYSTEM50            99- 100   ///
      byte   I10_BODYSYSTEM51           101- 102   ///
      byte   I10_BODYSYSTEM52           103- 104   ///
      byte   I10_BODYSYSTEM53           105- 106   ///
      byte   I10_BODYSYSTEM54           107- 108   ///
      byte   I10_BODYSYSTEM55           109- 110   ///
      byte   I10_BODYSYSTEM56           111- 112   ///
      byte   I10_BODYSYSTEM57           113- 114   ///
      byte   I10_BODYSYSTEM58           115- 116   ///
      byte   I10_BODYSYSTEM59           117- 118   ///
      byte   I10_BODYSYSTEM60           119- 120   ///
      byte   I10_BODYSYSTEM61           121- 122   ///
      byte   I10_BODYSYSTEM62           123- 124   ///
      byte   I10_BODYSYSTEM63           125- 126   ///
      byte   I10_BODYSYSTEM64           127- 128   ///
      byte   I10_BODYSYSTEM65           129- 130   ///
      byte   I10_BODYSYSTEM66           131- 132   ///
      byte   I10_BODYSYSTEM67           133- 134   ///
      byte   I10_BODYSYSTEM68           135- 136   ///
      byte   I10_BODYSYSTEM69           137- 138   ///
      byte   I10_BODYSYSTEM70           139- 140   ///
      byte   I10_BODYSYSTEM71           141- 142   ///
      byte   I10_CHRON1                 143- 144   ///
      byte   I10_CHRON2                 145- 146   ///
      byte   I10_CHRON3                 147- 148   ///
      byte   I10_CHRON4                 149- 150   ///
      byte   I10_CHRON5                 151- 152   ///
      byte   I10_CHRON6                 153- 154   ///
      byte   I10_CHRON7                 155- 156   ///
      byte   I10_CHRON8                 157- 158   ///
      byte   I10_CHRON9                 159- 160   ///
      byte   I10_CHRON10                161- 162   ///
      byte   I10_CHRON11                163- 164   ///
      byte   I10_CHRON12                165- 166   ///
      byte   I10_CHRON13                167- 168   ///
      byte   I10_CHRON14                169- 170   ///
      byte   I10_CHRON15                171- 172   ///
      byte   I10_CHRON16                173- 174   ///
      byte   I10_CHRON17                175- 176   ///
      byte   I10_CHRON18                177- 178   ///
      byte   I10_CHRON19                179- 180   ///
      byte   I10_CHRON20                181- 182   ///
      byte   I10_CHRON21                183- 184   ///
      byte   I10_CHRON22                185- 186   ///
      byte   I10_CHRON23                187- 188   ///
      byte   I10_CHRON24                189- 190   ///
      byte   I10_CHRON25                191- 192   ///
      byte   I10_CHRON26                193- 194   ///
      byte   I10_CHRON27                195- 196   ///
      byte   I10_CHRON28                197- 198   ///
      byte   I10_CHRON29                199- 200   ///
      byte   I10_CHRON30                201- 202   ///
      byte   I10_CHRON31                203- 204   ///
      byte   I10_CHRON32                205- 206   ///
      byte   I10_CHRON33                207- 208   ///
      byte   I10_CHRON34                209- 210   ///
      byte   I10_CHRON35                211- 212   ///
      byte   I10_CHRON36                213- 214   ///
      byte   I10_CHRON37                215- 216   ///
      byte   I10_CHRON38                217- 218   ///
      byte   I10_CHRON39                219- 220   ///
      byte   I10_CHRON40                221- 222   ///
      byte   I10_CHRON41                223- 224   ///
      byte   I10_CHRON42                225- 226   ///
      byte   I10_CHRON43                227- 228   ///
      byte   I10_CHRON44                229- 230   ///
      byte   I10_CHRON45                231- 232   ///
      byte   I10_CHRON46                233- 234   ///
      byte   I10_CHRON47                235- 236   ///
      byte   I10_CHRON48                237- 238   ///
      byte   I10_CHRON49                239- 240   ///
      byte   I10_CHRON50                241- 242   ///
      byte   I10_CHRON51                243- 244   ///
      byte   I10_CHRON52                245- 246   ///
      byte   I10_CHRON53                247- 248   ///
      byte   I10_CHRON54                249- 250   ///
      byte   I10_CHRON55                251- 252   ///
      byte   I10_CHRON56                253- 254   ///
      byte   I10_CHRON57                255- 256   ///
      byte   I10_CHRON58                257- 258   ///
      byte   I10_CHRON59                259- 260   ///
      byte   I10_CHRON60                261- 262   ///
      byte   I10_CHRON61                263- 264   ///
      byte   I10_CHRON62                265- 266   ///
      byte   I10_CHRON63                267- 268   ///
      byte   I10_CHRON64                269- 270   ///
      byte   I10_CHRON65                271- 272   ///
      byte   I10_CHRON66                273- 274   ///
      byte   I10_CHRON67                275- 276   ///
      byte   I10_CHRON68                277- 278   ///
      byte   I10_CHRON69                279- 280   ///
      byte   I10_CHRON70                281- 282   ///
      byte   I10_CHRON71                283- 284   ///
      str    I10_DXMCCS1                285- 295   ///
      str    I10_DXMCCS2                296- 306   ///
      str    I10_DXMCCS3                307- 317   ///
      str    I10_DXMCCS4                318- 328   ///
      str    I10_DXMCCS5                329- 339   ///
      str    I10_DXMCCS6                340- 350   ///
      str    I10_DXMCCS7                351- 361   ///
      str    I10_DXMCCS8                362- 372   ///
      str    I10_DXMCCS9                373- 383   ///
      str    I10_DXMCCS10               384- 394   ///
      str    I10_DXMCCS11               395- 405   ///
      str    I10_DXMCCS12               406- 416   ///
      str    I10_DXMCCS13               417- 427   ///
      str    I10_DXMCCS14               428- 438   ///
      str    I10_DXMCCS15               439- 449   ///
      str    I10_DXMCCS16               450- 460   ///
      str    I10_DXMCCS17               461- 471   ///
      str    I10_DXMCCS18               472- 482   ///
      str    I10_DXMCCS19               483- 493   ///
      str    I10_DXMCCS20               494- 504   ///
      str    I10_DXMCCS21               505- 515   ///
      str    I10_DXMCCS22               516- 526   ///
      str    I10_DXMCCS23               527- 537   ///
      str    I10_DXMCCS24               538- 548   ///
      str    I10_DXMCCS25               549- 559   ///
      str    I10_DXMCCS26               560- 570   ///
      str    I10_DXMCCS27               571- 581   ///
      str    I10_DXMCCS28               582- 592   ///
      str    I10_DXMCCS29               593- 603   ///
      str    I10_DXMCCS30               604- 614   ///
      str    I10_DXMCCS31               615- 625   ///
      str    I10_DXMCCS32               626- 636   ///
      str    I10_DXMCCS33               637- 647   ///
      str    I10_DXMCCS34               648- 658   ///
      str    I10_DXMCCS35               659- 669   ///
      str    I10_DXMCCS36               670- 680   ///
      str    I10_DXMCCS37               681- 691   ///
      str    I10_DXMCCS38               692- 702   ///
      str    I10_DXMCCS39               703- 713   ///
      str    I10_DXMCCS40               714- 724   ///
      str    I10_DXMCCS41               725- 735   ///
      str    I10_DXMCCS42               736- 746   ///
      str    I10_DXMCCS43               747- 757   ///
      str    I10_DXMCCS44               758- 768   ///
      str    I10_DXMCCS45               769- 779   ///
      str    I10_DXMCCS46               780- 790   ///
      str    I10_DXMCCS47               791- 801   ///
      str    I10_DXMCCS48               802- 812   ///
      str    I10_DXMCCS49               813- 823   ///
      str    I10_DXMCCS50               824- 834   ///
      str    I10_DXMCCS51               835- 845   ///
      str    I10_DXMCCS52               846- 856   ///
      str    I10_DXMCCS53               857- 867   ///
      str    I10_DXMCCS54               868- 878   ///
      str    I10_DXMCCS55               879- 889   ///
      str    I10_DXMCCS56               890- 900   ///
      str    I10_DXMCCS57               901- 911   ///
      str    I10_DXMCCS58               912- 922   ///
      str    I10_DXMCCS59               923- 933   ///
      str    I10_DXMCCS60               934- 944   ///
      str    I10_DXMCCS61               945- 955   ///
      str    I10_DXMCCS62               956- 966   ///
      str    I10_DXMCCS63               967- 977   ///
      str    I10_DXMCCS64               978- 988   ///
      str    I10_DXMCCS65               989- 999   ///
      str    I10_DXMCCS66              1000-1010   ///
      str    I10_DXMCCS67              1011-1021   ///
      str    I10_DXMCCS68              1022-1032   ///
      str    I10_DXMCCS69              1033-1043   ///
      str    I10_DXMCCS70              1044-1054   ///
      str    I10_DXMCCS71              1055-1065   ///
      str    I10_ECauseMCCS1           1066-1076   ///
      str    I10_ECauseMCCS2           1077-1087   ///
      str    I10_ECauseMCCS3           1088-1098   ///
      str    I10_ECauseMCCS4           1099-1109   ///
      str    I10_ECauseMCCS5           1110-1120   ///
      str    I10_ECauseMCCS6           1121-1131   ///
      str    I10_ECauseMCCS7           1132-1142   ///
      str    I10_ECauseMCCS8           1143-1153   ///
      str    I10_ECauseMCCS9           1154-1164   ///
      str    I10_ECauseMCCS10          1165-1175   ///
      str    I10_ECauseMCCS11          1176-1186   ///
      byte   I10_INJURY                1187-1188   ///
      byte   I10_MULTINJURY            1189-1190   ///
      byte   I10_PCLASS1               1191-1192   ///
      byte   I10_PCLASS2               1193-1194   ///
      byte   I10_PCLASS3               1195-1196   ///
      byte   I10_PCLASS4               1197-1198   ///
      byte   I10_PCLASS5               1199-1200   ///
      byte   I10_PCLASS6               1201-1202   ///
      byte   I10_PCLASS7               1203-1204   ///
      byte   I10_PCLASS8               1205-1206   ///
      byte   I10_PCLASS9               1207-1208   ///
      byte   I10_PCLASS10              1209-1210   ///
      byte   I10_PCLASS11              1211-1212   ///
      byte   I10_PCLASS12              1213-1214   ///
      byte   I10_PCLASS13              1215-1216   ///
      byte   I10_PCLASS14              1217-1218   ///
      byte   I10_PCLASS15              1219-1220   ///
      byte   I10_PCLASS16              1221-1222   ///
      byte   I10_PCLASS17              1223-1224   ///
      byte   I10_PCLASS18              1225-1226   ///
      byte   I10_PCLASS19              1227-1228   ///
      byte   I10_PCLASS20              1229-1230   ///
      byte   I10_PCLASS21              1231-1232   ///
      byte   I10_PCLASS22              1233-1234   ///
      byte   I10_PCLASS23              1235-1236   ///
      byte   I10_PCLASS24              1237-1238   ///
      byte   I10_PCLASS25              1239-1240   ///
      byte   I10_PCLASS26              1241-1242   ///
      byte   I10_PCLASS27              1243-1244   ///
      byte   I10_PCLASS28              1245-1246   ///
      byte   I10_PCLASS29              1247-1248   ///
      byte   I10_PCLASS30              1249-1250   ///
      byte   I10_PCLASS31              1251-1252   ///
      byte   I10_PCLASS32              1253-1254   ///
      byte   I10_PCLASS33              1255-1256   ///
      byte   I10_PCLASS34              1257-1258   ///
      byte   I10_PCLASS35              1259-1260   ///
      byte   I10_PCLASS36              1261-1262   ///
      byte   I10_PCLASS37              1263-1264   ///
      byte   I10_PCLASS38              1265-1266   ///
      byte   I10_PCLASS39              1267-1268   ///
      byte   I10_PCLASS40              1269-1270   ///
      byte   I10_PCLASS41              1271-1272   ///
      byte   I10_PCLASS42              1273-1274   ///
      byte   I10_PCLASS43              1275-1276   ///
      byte   I10_PCLASS44              1277-1278   ///
      byte   I10_PCLASS45              1279-1280   ///
      byte   I10_PCLASS46              1281-1282   ///
      byte   I10_PCLASS47              1283-1284   ///
      byte   I10_PCLASS48              1285-1286   ///
      byte   I10_PCLASS49              1287-1288   ///
      byte   I10_PCLASS50              1289-1290   ///
      byte   I10_PCLASS51              1291-1292   ///
      byte   I10_PCLASS52              1293-1294   ///
      byte   I10_PCLASS53              1295-1296   ///
      byte   I10_PCLASS54              1297-1298   ///
      byte   I10_PCLASS55              1299-1300   ///
      byte   I10_PCLASS56              1301-1302   ///
      byte   I10_PCLASS57              1303-1304   ///
      byte   I10_PCLASS58              1305-1306   ///
      byte   I10_PCLASS59              1307-1308   ///
      byte   I10_PCLASS60              1309-1310   ///
      byte   I10_PCLASS61              1311-1312   ///
      byte   I10_PCLASS62              1313-1314   ///
      byte   I10_PCLASS63              1315-1316   ///
      byte   I10_PCLASS64              1317-1318   ///
      byte   I10_PCLASS65              1319-1320   ///
      byte   I10_PCLASS66              1321-1322   ///
      str    I10_PRMCCS1               1323-1330   ///
      str    I10_PRMCCS2               1331-1338   ///
      str    I10_PRMCCS3               1339-1346   ///
      str    I10_PRMCCS4               1347-1354   ///
      str    I10_PRMCCS5               1355-1362   ///
      str    I10_PRMCCS6               1363-1370   ///
      str    I10_PRMCCS7               1371-1378   ///
      str    I10_PRMCCS8               1379-1386   ///
      str    I10_PRMCCS9               1387-1394   ///
      str    I10_PRMCCS10              1395-1402   ///
      str    I10_PRMCCS11              1403-1410   ///
      str    I10_PRMCCS12              1411-1418   ///
      str    I10_PRMCCS13              1419-1426   ///
      str    I10_PRMCCS14              1427-1434   ///
      str    I10_PRMCCS15              1435-1442   ///
      str    I10_PRMCCS16              1443-1450   ///
      str    I10_PRMCCS17              1451-1458   ///
      str    I10_PRMCCS18              1459-1466   ///
      str    I10_PRMCCS19              1467-1474   ///
      str    I10_PRMCCS20              1475-1482   ///
      str    I10_PRMCCS21              1483-1490   ///
      str    I10_PRMCCS22              1491-1498   ///
      str    I10_PRMCCS23              1499-1506   ///
      str    I10_PRMCCS24              1507-1514   ///
      str    I10_PRMCCS25              1515-1522   ///
      str    I10_PRMCCS26              1523-1530   ///
      str    I10_PRMCCS27              1531-1538   ///
      str    I10_PRMCCS28              1539-1546   ///
      str    I10_PRMCCS29              1547-1554   ///
      str    I10_PRMCCS30              1555-1562   ///
      str    I10_PRMCCS31              1563-1570   ///
      str    I10_PRMCCS32              1571-1578   ///
      str    I10_PRMCCS33              1579-1586   ///
      str    I10_PRMCCS34              1587-1594   ///
      str    I10_PRMCCS35              1595-1602   ///
      str    I10_PRMCCS36              1603-1610   ///
      str    I10_PRMCCS37              1611-1618   ///
      str    I10_PRMCCS38              1619-1626   ///
      str    I10_PRMCCS39              1627-1634   ///
      str    I10_PRMCCS40              1635-1642   ///
      str    I10_PRMCCS41              1643-1650   ///
      str    I10_PRMCCS42              1651-1658   ///
      str    I10_PRMCCS43              1659-1666   ///
      str    I10_PRMCCS44              1667-1674   ///
      str    I10_PRMCCS45              1675-1682   ///
      str    I10_PRMCCS46              1683-1690   ///
      str    I10_PRMCCS47              1691-1698   ///
      str    I10_PRMCCS48              1699-1706   ///
      str    I10_PRMCCS49              1707-1714   ///
      str    I10_PRMCCS50              1715-1722   ///
      str    I10_PRMCCS51              1723-1730   ///
      str    I10_PRMCCS52              1731-1738   ///
      str    I10_PRMCCS53              1739-1746   ///
      str    I10_PRMCCS54              1747-1754   ///
      str    I10_PRMCCS55              1755-1762   ///
      str    I10_PRMCCS56              1763-1770   ///
      str    I10_PRMCCS57              1771-1778   ///
      str    I10_PRMCCS58              1779-1786   ///
      str    I10_PRMCCS59              1787-1794   ///
      str    I10_PRMCCS60              1795-1802   ///
      str    I10_PRMCCS61              1803-1810   ///
      str    I10_PRMCCS62              1811-1818   ///
      str    I10_PRMCCS63              1819-1826   ///
      str    I10_PRMCCS64              1827-1834   ///
      str    I10_PRMCCS65              1835-1842   ///
      str    I10_PRMCCS66              1843-1850   ///
      byte   I10_U_BLOOD               1851-1852   ///
      byte   I10_U_CATH                1853-1854   ///
      byte   I10_U_CTSCAN              1855-1856   ///
      byte   I10_U_EKG                 1857-1858   ///
      byte   I10_U_MHSA                1859-1860   ///
      byte   I10_U_MRT                 1861-1862   ///
      byte   I10_U_PACEMAKER           1863-1864   ///
      byte   I10_U_PHYTHERAPY          1865-1866   ///
      byte   I10_U_RADTHERAPY          1867-1868   ///
      byte   I10_U_STRESS              1869-1870   ///
      double KEY                       1871-1885   ///
      byte   U_CCU                     1886-1887   ///
      byte   U_CHESTXRAY               1888-1889   ///
      byte   U_DIALYSIS                1890-1891   ///
      byte   U_ECHO                    1892-1893   ///
      byte   U_ED                      1894-1895   ///
      byte   U_EEG                     1896-1897   ///
      byte   U_EPO                     1898-1899   ///
      byte   U_ICU                     1900-1901   ///
      byte   U_LITHOTRIPSY             1902-1903   ///
      byte   U_NEWBN2L                 1904-1905   ///
      byte   U_NEWBN3L                 1906-1907   ///
      byte   U_NEWBN4L                 1908-1909   ///
      byte   U_NUCMED                  1910-1911   ///
      byte   U_OBSERVATION             1912-1913   ///
      byte   U_OCCTHERAPY              1914-1915   ///
      byte   U_ORGANACQ                1916-1917   ///
      byte   U_OTHIMPLANTS             1918-1919   ///
      byte   U_RESPTHERAPY             1920-1921   ///
      byte   U_SPEECHTHERAPY           1922-1923   ///
      byte   U_ULTRASOUND              1924-1925   ///
      using  "MA_SID_2015q4_DX_PR_GRPS.ASC"

***  Assign labels to the data elements ***
label var I10_BODYSYSTEM1          "ICD-10-CM Body system 1"
label var I10_BODYSYSTEM2          "ICD-10-CM Body system 2"
label var I10_BODYSYSTEM3          "ICD-10-CM Body system 3"
label var I10_BODYSYSTEM4          "ICD-10-CM Body system 4"
label var I10_BODYSYSTEM5          "ICD-10-CM Body system 5"
label var I10_BODYSYSTEM6          "ICD-10-CM Body system 6"
label var I10_BODYSYSTEM7          "ICD-10-CM Body system 7"
label var I10_BODYSYSTEM8          "ICD-10-CM Body system 8"
label var I10_BODYSYSTEM9          "ICD-10-CM Body system 9"
label var I10_BODYSYSTEM10         "ICD-10-CM Body system 10"
label var I10_BODYSYSTEM11         "ICD-10-CM Body system 11"
label var I10_BODYSYSTEM12         "ICD-10-CM Body system 12"
label var I10_BODYSYSTEM13         "ICD-10-CM Body system 13"
label var I10_BODYSYSTEM14         "ICD-10-CM Body system 14"
label var I10_BODYSYSTEM15         "ICD-10-CM Body system 15"
label var I10_BODYSYSTEM16         "ICD-10-CM Body system 16"
label var I10_BODYSYSTEM17         "ICD-10-CM Body system 17"
label var I10_BODYSYSTEM18         "ICD-10-CM Body system 18"
label var I10_BODYSYSTEM19         "ICD-10-CM Body system 19"
label var I10_BODYSYSTEM20         "ICD-10-CM Body system 20"
label var I10_BODYSYSTEM21         "ICD-10-CM Body system 21"
label var I10_BODYSYSTEM22         "ICD-10-CM Body system 22"
label var I10_BODYSYSTEM23         "ICD-10-CM Body system 23"
label var I10_BODYSYSTEM24         "ICD-10-CM Body system 24"
label var I10_BODYSYSTEM25         "ICD-10-CM Body system 25"
label var I10_BODYSYSTEM26         "ICD-10-CM Body system 26"
label var I10_BODYSYSTEM27         "ICD-10-CM Body system 27"
label var I10_BODYSYSTEM28         "ICD-10-CM Body system 28"
label var I10_BODYSYSTEM29         "ICD-10-CM Body system 29"
label var I10_BODYSYSTEM30         "ICD-10-CM Body system 30"
label var I10_BODYSYSTEM31         "ICD-10-CM Body system 31"
label var I10_BODYSYSTEM32         "ICD-10-CM Body system 32"
label var I10_BODYSYSTEM33         "ICD-10-CM Body system 33"
label var I10_BODYSYSTEM34         "ICD-10-CM Body system 34"
label var I10_BODYSYSTEM35         "ICD-10-CM Body system 35"
label var I10_BODYSYSTEM36         "ICD-10-CM Body system 36"
label var I10_BODYSYSTEM37         "ICD-10-CM Body system 37"
label var I10_BODYSYSTEM38         "ICD-10-CM Body system 38"
label var I10_BODYSYSTEM39         "ICD-10-CM Body system 39"
label var I10_BODYSYSTEM40         "ICD-10-CM Body system 40"
label var I10_BODYSYSTEM41         "ICD-10-CM Body system 41"
label var I10_BODYSYSTEM42         "ICD-10-CM Body system 42"
label var I10_BODYSYSTEM43         "ICD-10-CM Body system 43"
label var I10_BODYSYSTEM44         "ICD-10-CM Body system 44"
label var I10_BODYSYSTEM45         "ICD-10-CM Body system 45"
label var I10_BODYSYSTEM46         "ICD-10-CM Body system 46"
label var I10_BODYSYSTEM47         "ICD-10-CM Body system 47"
label var I10_BODYSYSTEM48         "ICD-10-CM Body system 48"
label var I10_BODYSYSTEM49         "ICD-10-CM Body system 49"
label var I10_BODYSYSTEM50         "ICD-10-CM Body system 50"
label var I10_BODYSYSTEM51         "ICD-10-CM Body system 51"
label var I10_BODYSYSTEM52         "ICD-10-CM Body system 52"
label var I10_BODYSYSTEM53         "ICD-10-CM Body system 53"
label var I10_BODYSYSTEM54         "ICD-10-CM Body system 54"
label var I10_BODYSYSTEM55         "ICD-10-CM Body system 55"
label var I10_BODYSYSTEM56         "ICD-10-CM Body system 56"
label var I10_BODYSYSTEM57         "ICD-10-CM Body system 57"
label var I10_BODYSYSTEM58         "ICD-10-CM Body system 58"
label var I10_BODYSYSTEM59         "ICD-10-CM Body system 59"
label var I10_BODYSYSTEM60         "ICD-10-CM Body system 60"
label var I10_BODYSYSTEM61         "ICD-10-CM Body system 61"
label var I10_BODYSYSTEM62         "ICD-10-CM Body system 62"
label var I10_BODYSYSTEM63         "ICD-10-CM Body system 63"
label var I10_BODYSYSTEM64         "ICD-10-CM Body system 64"
label var I10_BODYSYSTEM65         "ICD-10-CM Body system 65"
label var I10_BODYSYSTEM66         "ICD-10-CM Body system 66"
label var I10_BODYSYSTEM67         "ICD-10-CM Body system 67"
label var I10_BODYSYSTEM68         "ICD-10-CM Body system 68"
label var I10_BODYSYSTEM69         "ICD-10-CM Body system 69"
label var I10_BODYSYSTEM70         "ICD-10-CM Body system 70"
label var I10_BODYSYSTEM71         "ICD-10-CM Body system 71"
label var I10_CHRON1               "ICD-10-CM Chronic condition indicator 1"
label var I10_CHRON2               "ICD-10-CM Chronic condition indicator 2"
label var I10_CHRON3               "ICD-10-CM Chronic condition indicator 3"
label var I10_CHRON4               "ICD-10-CM Chronic condition indicator 4"
label var I10_CHRON5               "ICD-10-CM Chronic condition indicator 5"
label var I10_CHRON6               "ICD-10-CM Chronic condition indicator 6"
label var I10_CHRON7               "ICD-10-CM Chronic condition indicator 7"
label var I10_CHRON8               "ICD-10-CM Chronic condition indicator 8"
label var I10_CHRON9               "ICD-10-CM Chronic condition indicator 9"
label var I10_CHRON10              "ICD-10-CM Chronic condition indicator 10"
label var I10_CHRON11              "ICD-10-CM Chronic condition indicator 11"
label var I10_CHRON12              "ICD-10-CM Chronic condition indicator 12"
label var I10_CHRON13              "ICD-10-CM Chronic condition indicator 13"
label var I10_CHRON14              "ICD-10-CM Chronic condition indicator 14"
label var I10_CHRON15              "ICD-10-CM Chronic condition indicator 15"
label var I10_CHRON16              "ICD-10-CM Chronic condition indicator 16"
label var I10_CHRON17              "ICD-10-CM Chronic condition indicator 17"
label var I10_CHRON18              "ICD-10-CM Chronic condition indicator 18"
label var I10_CHRON19              "ICD-10-CM Chronic condition indicator 19"
label var I10_CHRON20              "ICD-10-CM Chronic condition indicator 20"
label var I10_CHRON21              "ICD-10-CM Chronic condition indicator 21"
label var I10_CHRON22              "ICD-10-CM Chronic condition indicator 22"
label var I10_CHRON23              "ICD-10-CM Chronic condition indicator 23"
label var I10_CHRON24              "ICD-10-CM Chronic condition indicator 24"
label var I10_CHRON25              "ICD-10-CM Chronic condition indicator 25"
label var I10_CHRON26              "ICD-10-CM Chronic condition indicator 26"
label var I10_CHRON27              "ICD-10-CM Chronic condition indicator 27"
label var I10_CHRON28              "ICD-10-CM Chronic condition indicator 28"
label var I10_CHRON29              "ICD-10-CM Chronic condition indicator 29"
label var I10_CHRON30              "ICD-10-CM Chronic condition indicator 30"
label var I10_CHRON31              "ICD-10-CM Chronic condition indicator 31"
label var I10_CHRON32              "ICD-10-CM Chronic condition indicator 32"
label var I10_CHRON33              "ICD-10-CM Chronic condition indicator 33"
label var I10_CHRON34              "ICD-10-CM Chronic condition indicator 34"
label var I10_CHRON35              "ICD-10-CM Chronic condition indicator 35"
label var I10_CHRON36              "ICD-10-CM Chronic condition indicator 36"
label var I10_CHRON37              "ICD-10-CM Chronic condition indicator 37"
label var I10_CHRON38              "ICD-10-CM Chronic condition indicator 38"
label var I10_CHRON39              "ICD-10-CM Chronic condition indicator 39"
label var I10_CHRON40              "ICD-10-CM Chronic condition indicator 40"
label var I10_CHRON41              "ICD-10-CM Chronic condition indicator 41"
label var I10_CHRON42              "ICD-10-CM Chronic condition indicator 42"
label var I10_CHRON43              "ICD-10-CM Chronic condition indicator 43"
label var I10_CHRON44              "ICD-10-CM Chronic condition indicator 44"
label var I10_CHRON45              "ICD-10-CM Chronic condition indicator 45"
label var I10_CHRON46              "ICD-10-CM Chronic condition indicator 46"
label var I10_CHRON47              "ICD-10-CM Chronic condition indicator 47"
label var I10_CHRON48              "ICD-10-CM Chronic condition indicator 48"
label var I10_CHRON49              "ICD-10-CM Chronic condition indicator 49"
label var I10_CHRON50              "ICD-10-CM Chronic condition indicator 50"
label var I10_CHRON51              "ICD-10-CM Chronic condition indicator 51"
label var I10_CHRON52              "ICD-10-CM Chronic condition indicator 52"
label var I10_CHRON53              "ICD-10-CM Chronic condition indicator 53"
label var I10_CHRON54              "ICD-10-CM Chronic condition indicator 54"
label var I10_CHRON55              "ICD-10-CM Chronic condition indicator 55"
label var I10_CHRON56              "ICD-10-CM Chronic condition indicator 56"
label var I10_CHRON57              "ICD-10-CM Chronic condition indicator 57"
label var I10_CHRON58              "ICD-10-CM Chronic condition indicator 58"
label var I10_CHRON59              "ICD-10-CM Chronic condition indicator 59"
label var I10_CHRON60              "ICD-10-CM Chronic condition indicator 60"
label var I10_CHRON61              "ICD-10-CM Chronic condition indicator 61"
label var I10_CHRON62              "ICD-10-CM Chronic condition indicator 62"
label var I10_CHRON63              "ICD-10-CM Chronic condition indicator 63"
label var I10_CHRON64              "ICD-10-CM Chronic condition indicator 64"
label var I10_CHRON65              "ICD-10-CM Chronic condition indicator 65"
label var I10_CHRON66              "ICD-10-CM Chronic condition indicator 66"
label var I10_CHRON67              "ICD-10-CM Chronic condition indicator 67"
label var I10_CHRON68              "ICD-10-CM Chronic condition indicator 68"
label var I10_CHRON69              "ICD-10-CM Chronic condition indicator 69"
label var I10_CHRON70              "ICD-10-CM Chronic condition indicator 70"
label var I10_CHRON71              "ICD-10-CM Chronic condition indicator 71"
label var I10_DXMCCS1              "ICD-10-CM Multi-Level CCS:  Diagnosis 1"
label var I10_DXMCCS2              "ICD-10-CM Multi-Level CCS:  Diagnosis 2"
label var I10_DXMCCS3              "ICD-10-CM Multi-Level CCS:  Diagnosis 3"
label var I10_DXMCCS4              "ICD-10-CM Multi-Level CCS:  Diagnosis 4"
label var I10_DXMCCS5              "ICD-10-CM Multi-Level CCS:  Diagnosis 5"
label var I10_DXMCCS6              "ICD-10-CM Multi-Level CCS:  Diagnosis 6"
label var I10_DXMCCS7              "ICD-10-CM Multi-Level CCS:  Diagnosis 7"
label var I10_DXMCCS8              "ICD-10-CM Multi-Level CCS:  Diagnosis 8"
label var I10_DXMCCS9              "ICD-10-CM Multi-Level CCS:  Diagnosis 9"
label var I10_DXMCCS10             "ICD-10-CM Multi-Level CCS:  Diagnosis 10"
label var I10_DXMCCS11             "ICD-10-CM Multi-Level CCS:  Diagnosis 11"
label var I10_DXMCCS12             "ICD-10-CM Multi-Level CCS:  Diagnosis 12"
label var I10_DXMCCS13             "ICD-10-CM Multi-Level CCS:  Diagnosis 13"
label var I10_DXMCCS14             "ICD-10-CM Multi-Level CCS:  Diagnosis 14"
label var I10_DXMCCS15             "ICD-10-CM Multi-Level CCS:  Diagnosis 15"
label var I10_DXMCCS16             "ICD-10-CM Multi-Level CCS:  Diagnosis 16"
label var I10_DXMCCS17             "ICD-10-CM Multi-Level CCS:  Diagnosis 17"
label var I10_DXMCCS18             "ICD-10-CM Multi-Level CCS:  Diagnosis 18"
label var I10_DXMCCS19             "ICD-10-CM Multi-Level CCS:  Diagnosis 19"
label var I10_DXMCCS20             "ICD-10-CM Multi-Level CCS:  Diagnosis 20"
label var I10_DXMCCS21             "ICD-10-CM Multi-Level CCS:  Diagnosis 21"
label var I10_DXMCCS22             "ICD-10-CM Multi-Level CCS:  Diagnosis 22"
label var I10_DXMCCS23             "ICD-10-CM Multi-Level CCS:  Diagnosis 23"
label var I10_DXMCCS24             "ICD-10-CM Multi-Level CCS:  Diagnosis 24"
label var I10_DXMCCS25             "ICD-10-CM Multi-Level CCS:  Diagnosis 25"
label var I10_DXMCCS26             "ICD-10-CM Multi-Level CCS:  Diagnosis 26"
label var I10_DXMCCS27             "ICD-10-CM Multi-Level CCS:  Diagnosis 27"
label var I10_DXMCCS28             "ICD-10-CM Multi-Level CCS:  Diagnosis 28"
label var I10_DXMCCS29             "ICD-10-CM Multi-Level CCS:  Diagnosis 29"
label var I10_DXMCCS30             "ICD-10-CM Multi-Level CCS:  Diagnosis 30"
label var I10_DXMCCS31             "ICD-10-CM Multi-Level CCS:  Diagnosis 31"
label var I10_DXMCCS32             "ICD-10-CM Multi-Level CCS:  Diagnosis 32"
label var I10_DXMCCS33             "ICD-10-CM Multi-Level CCS:  Diagnosis 33"
label var I10_DXMCCS34             "ICD-10-CM Multi-Level CCS:  Diagnosis 34"
label var I10_DXMCCS35             "ICD-10-CM Multi-Level CCS:  Diagnosis 35"
label var I10_DXMCCS36             "ICD-10-CM Multi-Level CCS:  Diagnosis 36"
label var I10_DXMCCS37             "ICD-10-CM Multi-Level CCS:  Diagnosis 37"
label var I10_DXMCCS38             "ICD-10-CM Multi-Level CCS:  Diagnosis 38"
label var I10_DXMCCS39             "ICD-10-CM Multi-Level CCS:  Diagnosis 39"
label var I10_DXMCCS40             "ICD-10-CM Multi-Level CCS:  Diagnosis 40"
label var I10_DXMCCS41             "ICD-10-CM Multi-Level CCS:  Diagnosis 41"
label var I10_DXMCCS42             "ICD-10-CM Multi-Level CCS:  Diagnosis 42"
label var I10_DXMCCS43             "ICD-10-CM Multi-Level CCS:  Diagnosis 43"
label var I10_DXMCCS44             "ICD-10-CM Multi-Level CCS:  Diagnosis 44"
label var I10_DXMCCS45             "ICD-10-CM Multi-Level CCS:  Diagnosis 45"
label var I10_DXMCCS46             "ICD-10-CM Multi-Level CCS:  Diagnosis 46"
label var I10_DXMCCS47             "ICD-10-CM Multi-Level CCS:  Diagnosis 47"
label var I10_DXMCCS48             "ICD-10-CM Multi-Level CCS:  Diagnosis 48"
label var I10_DXMCCS49             "ICD-10-CM Multi-Level CCS:  Diagnosis 49"
label var I10_DXMCCS50             "ICD-10-CM Multi-Level CCS:  Diagnosis 50"
label var I10_DXMCCS51             "ICD-10-CM Multi-Level CCS:  Diagnosis 51"
label var I10_DXMCCS52             "ICD-10-CM Multi-Level CCS:  Diagnosis 52"
label var I10_DXMCCS53             "ICD-10-CM Multi-Level CCS:  Diagnosis 53"
label var I10_DXMCCS54             "ICD-10-CM Multi-Level CCS:  Diagnosis 54"
label var I10_DXMCCS55             "ICD-10-CM Multi-Level CCS:  Diagnosis 55"
label var I10_DXMCCS56             "ICD-10-CM Multi-Level CCS:  Diagnosis 56"
label var I10_DXMCCS57             "ICD-10-CM Multi-Level CCS:  Diagnosis 57"
label var I10_DXMCCS58             "ICD-10-CM Multi-Level CCS:  Diagnosis 58"
label var I10_DXMCCS59             "ICD-10-CM Multi-Level CCS:  Diagnosis 59"
label var I10_DXMCCS60             "ICD-10-CM Multi-Level CCS:  Diagnosis 60"
label var I10_DXMCCS61             "ICD-10-CM Multi-Level CCS:  Diagnosis 61"
label var I10_DXMCCS62             "ICD-10-CM Multi-Level CCS:  Diagnosis 62"
label var I10_DXMCCS63             "ICD-10-CM Multi-Level CCS:  Diagnosis 63"
label var I10_DXMCCS64             "ICD-10-CM Multi-Level CCS:  Diagnosis 64"
label var I10_DXMCCS65             "ICD-10-CM Multi-Level CCS:  Diagnosis 65"
label var I10_DXMCCS66             "ICD-10-CM Multi-Level CCS:  Diagnosis 66"
label var I10_DXMCCS67             "ICD-10-CM Multi-Level CCS:  Diagnosis 67"
label var I10_DXMCCS68             "ICD-10-CM Multi-Level CCS:  Diagnosis 68"
label var I10_DXMCCS69             "ICD-10-CM Multi-Level CCS:  Diagnosis 69"
label var I10_DXMCCS70             "ICD-10-CM Multi-Level CCS:  Diagnosis 70"
label var I10_DXMCCS71             "ICD-10-CM Multi-Level CCS:  Diagnosis 71"
label var I10_ECauseMCCS1          "ICD-10-CM Multi-Level CCS:  E Cause 1"
label var I10_ECauseMCCS2          "ICD-10-CM Multi-Level CCS:  E Cause 2"
label var I10_ECauseMCCS3          "ICD-10-CM Multi-Level CCS:  E Cause 3"
label var I10_ECauseMCCS4          "ICD-10-CM Multi-Level CCS:  E Cause 4"
label var I10_ECauseMCCS5          "ICD-10-CM Multi-Level CCS:  E Cause 5"
label var I10_ECauseMCCS6          "ICD-10-CM Multi-Level CCS:  E Cause 6"
label var I10_ECauseMCCS7          "ICD-10-CM Multi-Level CCS:  E Cause 7"
label var I10_ECauseMCCS8          "ICD-10-CM Multi-Level CCS:  E Cause 8"
label var I10_ECauseMCCS9          "ICD-10-CM Multi-Level CCS:  E Cause 9"
label var I10_ECauseMCCS10         "ICD-10-CM Multi-Level CCS:  E Cause 10"
label var I10_ECauseMCCS11         "ICD-10-CM Multi-Level CCS:  E Cause 11"
label var I10_INJURY
    "ICD-10-CM Injury diagnosis reported on record (1:I10_DX1 is an injury; 2:I10_DX2+ is an injury; 0:No injury)"
label var I10_MULTINJURY           "ICD-10-CM More than one injury diagnosis reported on record"
label var I10_PCLASS1              "ICD-10-PCS Procedure class 1"
label var I10_PCLASS2              "ICD-10-PCS Procedure class 2"
label var I10_PCLASS3              "ICD-10-PCS Procedure class 3"
label var I10_PCLASS4              "ICD-10-PCS Procedure class 4"
label var I10_PCLASS5              "ICD-10-PCS Procedure class 5"
label var I10_PCLASS6              "ICD-10-PCS Procedure class 6"
label var I10_PCLASS7              "ICD-10-PCS Procedure class 7"
label var I10_PCLASS8              "ICD-10-PCS Procedure class 8"
label var I10_PCLASS9              "ICD-10-PCS Procedure class 9"
label var I10_PCLASS10             "ICD-10-PCS Procedure class 10"
label var I10_PCLASS11             "ICD-10-PCS Procedure class 11"
label var I10_PCLASS12             "ICD-10-PCS Procedure class 12"
label var I10_PCLASS13             "ICD-10-PCS Procedure class 13"
label var I10_PCLASS14             "ICD-10-PCS Procedure class 14"
label var I10_PCLASS15             "ICD-10-PCS Procedure class 15"
label var I10_PCLASS16             "ICD-10-PCS Procedure class 16"
label var I10_PCLASS17             "ICD-10-PCS Procedure class 17"
label var I10_PCLASS18             "ICD-10-PCS Procedure class 18"
label var I10_PCLASS19             "ICD-10-PCS Procedure class 19"
label var I10_PCLASS20             "ICD-10-PCS Procedure class 20"
label var I10_PCLASS21             "ICD-10-PCS Procedure class 21"
label var I10_PCLASS22             "ICD-10-PCS Procedure class 22"
label var I10_PCLASS23             "ICD-10-PCS Procedure class 23"
label var I10_PCLASS24             "ICD-10-PCS Procedure class 24"
label var I10_PCLASS25             "ICD-10-PCS Procedure class 25"
label var I10_PCLASS26             "ICD-10-PCS Procedure class 26"
label var I10_PCLASS27             "ICD-10-PCS Procedure class 27"
label var I10_PCLASS28             "ICD-10-PCS Procedure class 28"
label var I10_PCLASS29             "ICD-10-PCS Procedure class 29"
label var I10_PCLASS30             "ICD-10-PCS Procedure class 30"
label var I10_PCLASS31             "ICD-10-PCS Procedure class 31"
label var I10_PCLASS32             "ICD-10-PCS Procedure class 32"
label var I10_PCLASS33             "ICD-10-PCS Procedure class 33"
label var I10_PCLASS34             "ICD-10-PCS Procedure class 34"
label var I10_PCLASS35             "ICD-10-PCS Procedure class 35"
label var I10_PCLASS36             "ICD-10-PCS Procedure class 36"
label var I10_PCLASS37             "ICD-10-PCS Procedure class 37"
label var I10_PCLASS38             "ICD-10-PCS Procedure class 38"
label var I10_PCLASS39             "ICD-10-PCS Procedure class 39"
label var I10_PCLASS40             "ICD-10-PCS Procedure class 40"
label var I10_PCLASS41             "ICD-10-PCS Procedure class 41"
label var I10_PCLASS42             "ICD-10-PCS Procedure class 42"
label var I10_PCLASS43             "ICD-10-PCS Procedure class 43"
label var I10_PCLASS44             "ICD-10-PCS Procedure class 44"
label var I10_PCLASS45             "ICD-10-PCS Procedure class 45"
label var I10_PCLASS46             "ICD-10-PCS Procedure class 46"
label var I10_PCLASS47             "ICD-10-PCS Procedure class 47"
label var I10_PCLASS48             "ICD-10-PCS Procedure class 48"
label var I10_PCLASS49             "ICD-10-PCS Procedure class 49"
label var I10_PCLASS50             "ICD-10-PCS Procedure class 50"
label var I10_PCLASS51             "ICD-10-PCS Procedure class 51"
label var I10_PCLASS52             "ICD-10-PCS Procedure class 52"
label var I10_PCLASS53             "ICD-10-PCS Procedure class 53"
label var I10_PCLASS54             "ICD-10-PCS Procedure class 54"
label var I10_PCLASS55             "ICD-10-PCS Procedure class 55"
label var I10_PCLASS56             "ICD-10-PCS Procedure class 56"
label var I10_PCLASS57             "ICD-10-PCS Procedure class 57"
label var I10_PCLASS58             "ICD-10-PCS Procedure class 58"
label var I10_PCLASS59             "ICD-10-PCS Procedure class 59"
label var I10_PCLASS60             "ICD-10-PCS Procedure class 60"
label var I10_PCLASS61             "ICD-10-PCS Procedure class 61"
label var I10_PCLASS62             "ICD-10-PCS Procedure class 62"
label var I10_PCLASS63             "ICD-10-PCS Procedure class 63"
label var I10_PCLASS64             "ICD-10-PCS Procedure class 64"
label var I10_PCLASS65             "ICD-10-PCS Procedure class 65"
label var I10_PCLASS66             "ICD-10-PCS Procedure class 66"
label var I10_PRMCCS1              "ICD-10-PCS Multi-Level CCS:  Procedure 1"
label var I10_PRMCCS2              "ICD-10-PCS Multi-Level CCS:  Procedure 2"
label var I10_PRMCCS3              "ICD-10-PCS Multi-Level CCS:  Procedure 3"
label var I10_PRMCCS4              "ICD-10-PCS Multi-Level CCS:  Procedure 4"
label var I10_PRMCCS5              "ICD-10-PCS Multi-Level CCS:  Procedure 5"
label var I10_PRMCCS6              "ICD-10-PCS Multi-Level CCS:  Procedure 6"
label var I10_PRMCCS7              "ICD-10-PCS Multi-Level CCS:  Procedure 7"
label var I10_PRMCCS8              "ICD-10-PCS Multi-Level CCS:  Procedure 8"
label var I10_PRMCCS9              "ICD-10-PCS Multi-Level CCS:  Procedure 9"
label var I10_PRMCCS10             "ICD-10-PCS Multi-Level CCS:  Procedure 10"
label var I10_PRMCCS11             "ICD-10-PCS Multi-Level CCS:  Procedure 11"
label var I10_PRMCCS12             "ICD-10-PCS Multi-Level CCS:  Procedure 12"
label var I10_PRMCCS13             "ICD-10-PCS Multi-Level CCS:  Procedure 13"
label var I10_PRMCCS14             "ICD-10-PCS Multi-Level CCS:  Procedure 14"
label var I10_PRMCCS15             "ICD-10-PCS Multi-Level CCS:  Procedure 15"
label var I10_PRMCCS16             "ICD-10-PCS Multi-Level CCS:  Procedure 16"
label var I10_PRMCCS17             "ICD-10-PCS Multi-Level CCS:  Procedure 17"
label var I10_PRMCCS18             "ICD-10-PCS Multi-Level CCS:  Procedure 18"
label var I10_PRMCCS19             "ICD-10-PCS Multi-Level CCS:  Procedure 19"
label var I10_PRMCCS20             "ICD-10-PCS Multi-Level CCS:  Procedure 20"
label var I10_PRMCCS21             "ICD-10-PCS Multi-Level CCS:  Procedure 21"
label var I10_PRMCCS22             "ICD-10-PCS Multi-Level CCS:  Procedure 22"
label var I10_PRMCCS23             "ICD-10-PCS Multi-Level CCS:  Procedure 23"
label var I10_PRMCCS24             "ICD-10-PCS Multi-Level CCS:  Procedure 24"
label var I10_PRMCCS25             "ICD-10-PCS Multi-Level CCS:  Procedure 25"
label var I10_PRMCCS26             "ICD-10-PCS Multi-Level CCS:  Procedure 26"
label var I10_PRMCCS27             "ICD-10-PCS Multi-Level CCS:  Procedure 27"
label var I10_PRMCCS28             "ICD-10-PCS Multi-Level CCS:  Procedure 28"
label var I10_PRMCCS29             "ICD-10-PCS Multi-Level CCS:  Procedure 29"
label var I10_PRMCCS30             "ICD-10-PCS Multi-Level CCS:  Procedure 30"
label var I10_PRMCCS31             "ICD-10-PCS Multi-Level CCS:  Procedure 31"
label var I10_PRMCCS32             "ICD-10-PCS Multi-Level CCS:  Procedure 32"
label var I10_PRMCCS33             "ICD-10-PCS Multi-Level CCS:  Procedure 33"
label var I10_PRMCCS34             "ICD-10-PCS Multi-Level CCS:  Procedure 34"
label var I10_PRMCCS35             "ICD-10-PCS Multi-Level CCS:  Procedure 35"
label var I10_PRMCCS36             "ICD-10-PCS Multi-Level CCS:  Procedure 36"
label var I10_PRMCCS37             "ICD-10-PCS Multi-Level CCS:  Procedure 37"
label var I10_PRMCCS38             "ICD-10-PCS Multi-Level CCS:  Procedure 38"
label var I10_PRMCCS39             "ICD-10-PCS Multi-Level CCS:  Procedure 39"
label var I10_PRMCCS40             "ICD-10-PCS Multi-Level CCS:  Procedure 40"
label var I10_PRMCCS41             "ICD-10-PCS Multi-Level CCS:  Procedure 41"
label var I10_PRMCCS42             "ICD-10-PCS Multi-Level CCS:  Procedure 42"
label var I10_PRMCCS43             "ICD-10-PCS Multi-Level CCS:  Procedure 43"
label var I10_PRMCCS44             "ICD-10-PCS Multi-Level CCS:  Procedure 44"
label var I10_PRMCCS45             "ICD-10-PCS Multi-Level CCS:  Procedure 45"
label var I10_PRMCCS46             "ICD-10-PCS Multi-Level CCS:  Procedure 46"
label var I10_PRMCCS47             "ICD-10-PCS Multi-Level CCS:  Procedure 47"
label var I10_PRMCCS48             "ICD-10-PCS Multi-Level CCS:  Procedure 48"
label var I10_PRMCCS49             "ICD-10-PCS Multi-Level CCS:  Procedure 49"
label var I10_PRMCCS50             "ICD-10-PCS Multi-Level CCS:  Procedure 50"
label var I10_PRMCCS51             "ICD-10-PCS Multi-Level CCS:  Procedure 51"
label var I10_PRMCCS52             "ICD-10-PCS Multi-Level CCS:  Procedure 52"
label var I10_PRMCCS53             "ICD-10-PCS Multi-Level CCS:  Procedure 53"
label var I10_PRMCCS54             "ICD-10-PCS Multi-Level CCS:  Procedure 54"
label var I10_PRMCCS55             "ICD-10-PCS Multi-Level CCS:  Procedure 55"
label var I10_PRMCCS56             "ICD-10-PCS Multi-Level CCS:  Procedure 56"
label var I10_PRMCCS57             "ICD-10-PCS Multi-Level CCS:  Procedure 57"
label var I10_PRMCCS58             "ICD-10-PCS Multi-Level CCS:  Procedure 58"
label var I10_PRMCCS59             "ICD-10-PCS Multi-Level CCS:  Procedure 59"
label var I10_PRMCCS60             "ICD-10-PCS Multi-Level CCS:  Procedure 60"
label var I10_PRMCCS61             "ICD-10-PCS Multi-Level CCS:  Procedure 61"
label var I10_PRMCCS62             "ICD-10-PCS Multi-Level CCS:  Procedure 62"
label var I10_PRMCCS63             "ICD-10-PCS Multi-Level CCS:  Procedure 63"
label var I10_PRMCCS64             "ICD-10-PCS Multi-Level CCS:  Procedure 64"
label var I10_PRMCCS65             "ICD-10-PCS Multi-Level CCS:  Procedure 65"
label var I10_PRMCCS66             "ICD-10-PCS Multi-Level CCS:  Procedure 66"
label var I10_U_BLOOD              "ICD-10-PCS Utilization Flag: Blood"
label var I10_U_CATH               "ICD-10-PCS Utilization Flag: Cardiac Catheterization Lab"
label var I10_U_CTSCAN             "ICD-10-PCS Utilization Flag: Computed Tomography Scan"
label var I10_U_EKG                "ICD-10-PCS Utilization Flag: Electrocardiogram"
label var I10_U_MHSA               "ICD-10-PCS Utilization Flag: Mental Health and Substance Abuse"
label var I10_U_MRT                "ICD-10-PCS Utilization Flag: Magnetic Resonance Technology"
label var I10_U_PACEMAKER          "ICD-10-PCS Utilization Flag: Pacemaker"
label var I10_U_PHYTHERAPY         "ICD-10-PCS Utilization Flag: Physical Therapy"
label var I10_U_RADTHERAPY         "ICD-10-PCS Utilization Flag: Radiology - Therapeutic and/or Chemotherapy Administration"
label var I10_U_STRESS             "ICD-10-PCS Utilization Flag: Cardiac Stress Test"
label var KEY                      "HCUP record identifier"
label var U_CCU                    "Utilization Flag: Coronary Care Unit (CCU)"
label var U_CHESTXRAY              "Utilization Flag: Chest X-Ray"
label var U_DIALYSIS               "Utilization Flag: Renal Dialysis"
label var U_ECHO                   "Utilization Flag: Echocardiology"
label var U_ED                     "Utilization Flag: Emergency Room"
label var U_EEG                    "Utilization Flag: Electroencephalogram"
label var U_EPO                    "Utilization Flag: EPO"
label var U_ICU                    "Utilization Flag: Intensive Care Unit (ICU)"
label var U_LITHOTRIPSY            "Utilization Flag: Lithotripsy"
label var U_NEWBN2L                "Utilization Flag: Nursery Level II"
label var U_NEWBN3L                "Utilization Flag: Nursery Level III"
label var U_NEWBN4L                "Utilization Flag: Nursery Level IV"
label var U_NUCMED                 "Utilization Flag: Nuclear Medicine"
label var U_OBSERVATION            "Utilization Flag: Observation Room"
label var U_OCCTHERAPY             "Utilization Flag: Occupational Therapy"
label var U_ORGANACQ               "Utilization Flag: Organ Acquisition"
label var U_OTHIMPLANTS            "Utilization Flag: Other Implants"
label var U_RESPTHERAPY            "Utilization Flag: Respiratory Services"
label var U_SPEECHTHERAPY          "Utilization Flag: Speech - Language Pathology"
label var U_ULTRASOUND             "Utilization Flag: Ultrasound"

*** Convert special values to missing values ***
recode I10_BODYSYSTEM1           (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM2           (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM3           (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM4           (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM5           (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM6           (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM7           (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM8           (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM9           (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM10          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM11          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM12          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM13          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM14          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM15          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM16          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM17          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM18          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM19          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM20          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM21          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM22          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM23          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM24          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM25          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM26          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM27          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM28          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM29          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM30          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM31          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM32          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM33          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM34          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM35          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM36          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM37          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM38          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM39          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM40          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM41          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM42          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM43          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM44          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM45          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM46          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM47          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM48          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM49          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM50          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM51          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM52          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM53          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM54          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM55          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM56          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM57          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM58          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM59          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM60          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM61          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM62          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM63          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM64          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM65          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM66          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM67          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM68          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM69          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM70          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM71          (-9 -8 -6 -5=.)
recode I10_CHRON1                (-9 -8 -6 -5=.)
recode I10_CHRON2                (-9 -8 -6 -5=.)
recode I10_CHRON3                (-9 -8 -6 -5=.)
recode I10_CHRON4                (-9 -8 -6 -5=.)
recode I10_CHRON5                (-9 -8 -6 -5=.)
recode I10_CHRON6                (-9 -8 -6 -5=.)
recode I10_CHRON7                (-9 -8 -6 -5=.)
recode I10_CHRON8                (-9 -8 -6 -5=.)
recode I10_CHRON9                (-9 -8 -6 -5=.)
recode I10_CHRON10               (-9 -8 -6 -5=.)
recode I10_CHRON11               (-9 -8 -6 -5=.)
recode I10_CHRON12               (-9 -8 -6 -5=.)
recode I10_CHRON13               (-9 -8 -6 -5=.)
recode I10_CHRON14               (-9 -8 -6 -5=.)
recode I10_CHRON15               (-9 -8 -6 -5=.)
recode I10_CHRON16               (-9 -8 -6 -5=.)
recode I10_CHRON17               (-9 -8 -6 -5=.)
recode I10_CHRON18               (-9 -8 -6 -5=.)
recode I10_CHRON19               (-9 -8 -6 -5=.)
recode I10_CHRON20               (-9 -8 -6 -5=.)
recode I10_CHRON21               (-9 -8 -6 -5=.)
recode I10_CHRON22               (-9 -8 -6 -5=.)
recode I10_CHRON23               (-9 -8 -6 -5=.)
recode I10_CHRON24               (-9 -8 -6 -5=.)
recode I10_CHRON25               (-9 -8 -6 -5=.)
recode I10_CHRON26               (-9 -8 -6 -5=.)
recode I10_CHRON27               (-9 -8 -6 -5=.)
recode I10_CHRON28               (-9 -8 -6 -5=.)
recode I10_CHRON29               (-9 -8 -6 -5=.)
recode I10_CHRON30               (-9 -8 -6 -5=.)
recode I10_CHRON31               (-9 -8 -6 -5=.)
recode I10_CHRON32               (-9 -8 -6 -5=.)
recode I10_CHRON33               (-9 -8 -6 -5=.)
recode I10_CHRON34               (-9 -8 -6 -5=.)
recode I10_CHRON35               (-9 -8 -6 -5=.)
recode I10_CHRON36               (-9 -8 -6 -5=.)
recode I10_CHRON37               (-9 -8 -6 -5=.)
recode I10_CHRON38               (-9 -8 -6 -5=.)
recode I10_CHRON39               (-9 -8 -6 -5=.)
recode I10_CHRON40               (-9 -8 -6 -5=.)
recode I10_CHRON41               (-9 -8 -6 -5=.)
recode I10_CHRON42               (-9 -8 -6 -5=.)
recode I10_CHRON43               (-9 -8 -6 -5=.)
recode I10_CHRON44               (-9 -8 -6 -5=.)
recode I10_CHRON45               (-9 -8 -6 -5=.)
recode I10_CHRON46               (-9 -8 -6 -5=.)
recode I10_CHRON47               (-9 -8 -6 -5=.)
recode I10_CHRON48               (-9 -8 -6 -5=.)
recode I10_CHRON49               (-9 -8 -6 -5=.)
recode I10_CHRON50               (-9 -8 -6 -5=.)
recode I10_CHRON51               (-9 -8 -6 -5=.)
recode I10_CHRON52               (-9 -8 -6 -5=.)
recode I10_CHRON53               (-9 -8 -6 -5=.)
recode I10_CHRON54               (-9 -8 -6 -5=.)
recode I10_CHRON55               (-9 -8 -6 -5=.)
recode I10_CHRON56               (-9 -8 -6 -5=.)
recode I10_CHRON57               (-9 -8 -6 -5=.)
recode I10_CHRON58               (-9 -8 -6 -5=.)
recode I10_CHRON59               (-9 -8 -6 -5=.)
recode I10_CHRON60               (-9 -8 -6 -5=.)
recode I10_CHRON61               (-9 -8 -6 -5=.)
recode I10_CHRON62               (-9 -8 -6 -5=.)
recode I10_CHRON63               (-9 -8 -6 -5=.)
recode I10_CHRON64               (-9 -8 -6 -5=.)
recode I10_CHRON65               (-9 -8 -6 -5=.)
recode I10_CHRON66               (-9 -8 -6 -5=.)
recode I10_CHRON67               (-9 -8 -6 -5=.)
recode I10_CHRON68               (-9 -8 -6 -5=.)
recode I10_CHRON69               (-9 -8 -6 -5=.)
recode I10_CHRON70               (-9 -8 -6 -5=.)
recode I10_CHRON71               (-9 -8 -6 -5=.)
recode I10_INJURY                (-9 -8 -6 -5=.)
recode I10_MULTINJURY            (-9 -8 -6 -5=.)
recode I10_PCLASS1               (-9 -8 -6 -5=.)
recode I10_PCLASS2               (-9 -8 -6 -5=.)
recode I10_PCLASS3               (-9 -8 -6 -5=.)
recode I10_PCLASS4               (-9 -8 -6 -5=.)
recode I10_PCLASS5               (-9 -8 -6 -5=.)
recode I10_PCLASS6               (-9 -8 -6 -5=.)
recode I10_PCLASS7               (-9 -8 -6 -5=.)
recode I10_PCLASS8               (-9 -8 -6 -5=.)
recode I10_PCLASS9               (-9 -8 -6 -5=.)
recode I10_PCLASS10              (-9 -8 -6 -5=.)
recode I10_PCLASS11              (-9 -8 -6 -5=.)
recode I10_PCLASS12              (-9 -8 -6 -5=.)
recode I10_PCLASS13              (-9 -8 -6 -5=.)
recode I10_PCLASS14              (-9 -8 -6 -5=.)
recode I10_PCLASS15              (-9 -8 -6 -5=.)
recode I10_PCLASS16              (-9 -8 -6 -5=.)
recode I10_PCLASS17              (-9 -8 -6 -5=.)
recode I10_PCLASS18              (-9 -8 -6 -5=.)
recode I10_PCLASS19              (-9 -8 -6 -5=.)
recode I10_PCLASS20              (-9 -8 -6 -5=.)
recode I10_PCLASS21              (-9 -8 -6 -5=.)
recode I10_PCLASS22              (-9 -8 -6 -5=.)
recode I10_PCLASS23              (-9 -8 -6 -5=.)
recode I10_PCLASS24              (-9 -8 -6 -5=.)
recode I10_PCLASS25              (-9 -8 -6 -5=.)
recode I10_PCLASS26              (-9 -8 -6 -5=.)
recode I10_PCLASS27              (-9 -8 -6 -5=.)
recode I10_PCLASS28              (-9 -8 -6 -5=.)
recode I10_PCLASS29              (-9 -8 -6 -5=.)
recode I10_PCLASS30              (-9 -8 -6 -5=.)
recode I10_PCLASS31              (-9 -8 -6 -5=.)
recode I10_PCLASS32              (-9 -8 -6 -5=.)
recode I10_PCLASS33              (-9 -8 -6 -5=.)
recode I10_PCLASS34              (-9 -8 -6 -5=.)
recode I10_PCLASS35              (-9 -8 -6 -5=.)
recode I10_PCLASS36              (-9 -8 -6 -5=.)
recode I10_PCLASS37              (-9 -8 -6 -5=.)
recode I10_PCLASS38              (-9 -8 -6 -5=.)
recode I10_PCLASS39              (-9 -8 -6 -5=.)
recode I10_PCLASS40              (-9 -8 -6 -5=.)
recode I10_PCLASS41              (-9 -8 -6 -5=.)
recode I10_PCLASS42              (-9 -8 -6 -5=.)
recode I10_PCLASS43              (-9 -8 -6 -5=.)
recode I10_PCLASS44              (-9 -8 -6 -5=.)
recode I10_PCLASS45              (-9 -8 -6 -5=.)
recode I10_PCLASS46              (-9 -8 -6 -5=.)
recode I10_PCLASS47              (-9 -8 -6 -5=.)
recode I10_PCLASS48              (-9 -8 -6 -5=.)
recode I10_PCLASS49              (-9 -8 -6 -5=.)
recode I10_PCLASS50              (-9 -8 -6 -5=.)
recode I10_PCLASS51              (-9 -8 -6 -5=.)
recode I10_PCLASS52              (-9 -8 -6 -5=.)
recode I10_PCLASS53              (-9 -8 -6 -5=.)
recode I10_PCLASS54              (-9 -8 -6 -5=.)
recode I10_PCLASS55              (-9 -8 -6 -5=.)
recode I10_PCLASS56              (-9 -8 -6 -5=.)
recode I10_PCLASS57              (-9 -8 -6 -5=.)
recode I10_PCLASS58              (-9 -8 -6 -5=.)
recode I10_PCLASS59              (-9 -8 -6 -5=.)
recode I10_PCLASS60              (-9 -8 -6 -5=.)
recode I10_PCLASS61              (-9 -8 -6 -5=.)
recode I10_PCLASS62              (-9 -8 -6 -5=.)
recode I10_PCLASS63              (-9 -8 -6 -5=.)
recode I10_PCLASS64              (-9 -8 -6 -5=.)
recode I10_PCLASS65              (-9 -8 -6 -5=.)
recode I10_PCLASS66              (-9 -8 -6 -5=.)
recode I10_U_BLOOD               (-9 -8 -6 -5=.)
recode I10_U_CATH                (-9 -8 -6 -5=.)
recode I10_U_CTSCAN              (-9 -8 -6 -5=.)
recode I10_U_EKG                 (-9 -8 -6 -5=.)
recode I10_U_MHSA                (-9 -8 -6 -5=.)
recode I10_U_MRT                 (-9 -8 -6 -5=.)
recode I10_U_PACEMAKER           (-9 -8 -6 -5=.)
recode I10_U_PHYTHERAPY          (-9 -8 -6 -5=.)
recode I10_U_RADTHERAPY          (-9 -8 -6 -5=.)
recode I10_U_STRESS              (-9 -8 -6 -5=.)
recode U_CCU                     (-9 -8 -6 -5=.)
recode U_CHESTXRAY               (-9 -8 -6 -5=.)
recode U_DIALYSIS                (-9 -8 -6 -5=.)
recode U_ECHO                    (-9 -8 -6 -5=.)
recode U_ED                      (-9 -8 -6 -5=.)
recode U_EEG                     (-9 -8 -6 -5=.)
recode U_EPO                     (-9 -8 -6 -5=.)
recode U_ICU                     (-9 -8 -6 -5=.)
recode U_LITHOTRIPSY             (-9 -8 -6 -5=.)
recode U_NEWBN2L                 (-9 -8 -6 -5=.)
recode U_NEWBN3L                 (-9 -8 -6 -5=.)
recode U_NEWBN4L                 (-9 -8 -6 -5=.)
recode U_NUCMED                  (-9 -8 -6 -5=.)
recode U_OBSERVATION             (-9 -8 -6 -5=.)
recode U_OCCTHERAPY              (-9 -8 -6 -5=.)
recode U_ORGANACQ                (-9 -8 -6 -5=.)
recode U_OTHIMPLANTS             (-9 -8 -6 -5=.)
recode U_RESPTHERAPY             (-9 -8 -6 -5=.)
recode U_SPEECHTHERAPY           (-9 -8 -6 -5=.)
recode U_ULTRASOUND              (-9 -8 -6 -5=.)

save "MA_SID_2015q4_DX_PR_GRPS.dta", replace
