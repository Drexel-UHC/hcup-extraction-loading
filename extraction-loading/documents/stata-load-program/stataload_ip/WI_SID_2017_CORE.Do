/*****************************************************************************
* Creation Date: 10/26/2018   
* WI_SID_2017_CORE.Do
* This program will load the 2017 WI ASCII CORE File into Stata.
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
      int    CPTCCS1                    520- 522   ///
      int    CPTCCS2                    523- 525   ///
      int    CPTCCS3                    526- 528   ///
      int    CPTCCS4                    529- 531   ///
      int    CPTCCS5                    532- 534   ///
      int    CPTCCS6                    535- 537   ///
      int    CPTCCS7                    538- 540   ///
      int    CPTCCS8                    541- 543   ///
      int    CPTCCS9                    544- 546   ///
      int    CPTCCS10                   547- 549   ///
      int    CPTCCS11                   550- 552   ///
      int    CPTCCS12                   553- 555   ///
      int    CPTCCS13                   556- 558   ///
      int    CPTCCS14                   559- 561   ///
      int    CPTCCS15                   562- 564   ///
      int    CPTCCS16                   565- 567   ///
      int    CPTCCS17                   568- 570   ///
      int    CPTCCS18                   571- 573   ///
      int    CPTCCS19                   574- 576   ///
      int    CPTCCS20                   577- 579   ///
      int    CPTCCS21                   580- 582   ///
      int    CPTCCS22                   583- 585   ///
      int    CPTCCS23                   586- 588   ///
      int    CPTCCS24                   589- 591   ///
      int    CPTCCS25                   592- 594   ///
      int    CPTCCS26                   595- 597   ///
      int    CPTCCS27                   598- 600   ///
      int    CPTCCS28                   601- 603   ///
      int    CPTCCS29                   604- 606   ///
      int    CPTCCS30                   607- 609   ///
      int    CPTCCS31                   610- 612   ///
      int    CPTCCS32                   613- 615   ///
      int    CPTCCS33                   616- 618   ///
      int    CPTCCS34                   619- 621   ///
      int    CPTCCS35                   622- 624   ///
      int    CPTCCS36                   625- 627   ///
      int    CPTCCS37                   628- 630   ///
      int    CPTCCS38                   631- 633   ///
      int    CPTCCS39                   634- 636   ///
      int    CPTCCS40                   637- 639   ///
      int    CPTCCS41                   640- 642   ///
      int    CPTCCS42                   643- 645   ///
      int    CPTCCS43                   646- 648   ///
      int    CPTCCS44                   649- 651   ///
      int    CPTCCS45                   652- 654   ///
      int    CPTCCS46                   655- 657   ///
      int    CPTCCS47                   658- 660   ///
      int    CPTCCS48                   661- 663   ///
      int    CPTCCS49                   664- 666   ///
      int    CPTCCS50                   667- 669   ///
      int    CPTCCS51                   670- 672   ///
      int    CPTCCS52                   673- 675   ///
      int    CPTCCS53                   676- 678   ///
      int    CPTCCS54                   679- 681   ///
      int    CPTCCS55                   682- 684   ///
      int    CPTCCS56                   685- 687   ///
      int    CPTCCS57                   688- 690   ///
      int    CPTCCS58                   691- 693   ///
      int    CPTCCS59                   694- 696   ///
      int    CPTCCS60                   697- 699   ///
      int    CPTCCS61                   700- 702   ///
      int    CPTCCS62                   703- 705   ///
      int    CPTCCS63                   706- 708   ///
      int    CPTCCS64                   709- 711   ///
      int    CPTCCS65                   712- 714   ///
      int    CPTCCS66                   715- 717   ///
      int    CPTCCS67                   718- 720   ///
      int    CPTCCS68                   721- 723   ///
      int    CPTCCS69                   724- 726   ///
      int    CPTCCS70                   727- 729   ///
      int    CPTCCS71                   730- 732   ///
      int    CPTCCS72                   733- 735   ///
      int    CPTCCS73                   736- 738   ///
      int    CPTCCS74                   739- 741   ///
      int    CPTCCS75                   742- 744   ///
      int    CPTCCS76                   745- 747   ///
      int    CPTCCS77                   748- 750   ///
      int    CPTCCS78                   751- 753   ///
      int    CPTCCS79                   754- 756   ///
      int    CPTCCS80                   757- 759   ///
      int    CPTCCS81                   760- 762   ///
      int    CPTCCS82                   763- 765   ///
      int    CPTCCS83                   766- 768   ///
      int    CPTCCS84                   769- 771   ///
      int    CPTCCS85                   772- 774   ///
      int    CPTCCS86                   775- 777   ///
      int    CPTCCS87                   778- 780   ///
      int    CPTCCS88                   781- 783   ///
      int    CPTCCS89                   784- 786   ///
      int    CPTCCS90                   787- 789   ///
      int    CPTCCS91                   790- 792   ///
      int    CPTCCS92                   793- 795   ///
      int    CPTCCS93                   796- 798   ///
      int    CPTCCS94                   799- 801   ///
      int    CPTCCS95                   802- 804   ///
      int    CPTCCS96                   805- 807   ///
      int    CPTCCS97                   808- 810   ///
      int    CPTCCS98                   811- 813   ///
      int    CPTCCS99                   814- 816   ///
      int    CPTCCS100                  817- 819   ///
      long   DaysToEvent                820- 825   ///
      byte   DIED                       826- 827   ///
      str    DISP_X                     828- 829   ///
      byte   DISPUB04                   830- 831   ///
      byte   DISPUNIFORM                832- 833   ///
      byte   DMONTH                     834- 835   ///
      byte   DQTR                       836- 837   ///
      int    DRG                        838- 840   ///
      int    DRG_NoPOA                  841- 843   ///
      byte   DRGVER                     844- 845   ///
      str    DSHOSPID                   846- 862   ///
      str    DXPOA1                     863        ///
      str    DXPOA2                     864        ///
      str    DXPOA3                     865        ///
      str    DXPOA4                     866        ///
      str    DXPOA5                     867        ///
      str    DXPOA6                     868        ///
      str    DXPOA7                     869        ///
      str    DXPOA8                     870        ///
      str    DXPOA9                     871        ///
      str    DXPOA10                    872        ///
      str    DXPOA11                    873        ///
      str    DXPOA12                    874        ///
      str    DXPOA13                    875        ///
      str    DXPOA14                    876        ///
      str    DXPOA15                    877        ///
      str    DXPOA16                    878        ///
      str    DXPOA17                    879        ///
      str    DXPOA18                    880        ///
      str    DXPOA19                    881        ///
      str    DXPOA20                    882        ///
      str    DXPOA21                    883        ///
      str    DXPOA22                    884        ///
      str    DXPOA23                    885        ///
      str    DXPOA24                    886        ///
      str    DXPOA25                    887        ///
      str    DXPOA26                    888        ///
      str    DXPOA27                    889        ///
      str    DXPOA28                    890        ///
      str    DXPOA29                    891        ///
      str    DXPOA30                    892        ///
      str    DXPOA31                    893        ///
      str    DXPOA32                    894        ///
      str    DXPOA33                    895        ///
      str    DXPOA34                    896        ///
      str    DXPOA35                    897        ///
      str    DXPOA36                    898        ///
      str    DXPOA37                    899        ///
      str    DXPOA38                    900        ///
      str    DXPOA39                    901        ///
      str    DXPOA40                    902        ///
      str    DXPOA41                    903        ///
      str    DXPOA42                    904        ///
      str    DXPOA43                    905        ///
      str    DXPOA44                    906        ///
      str    DXPOA45                    907        ///
      str    DXPOA46                    908        ///
      str    DXPOA47                    909        ///
      str    DXPOA48                    910        ///
      str    DXPOA49                    911        ///
      str    DXPOA50                    912        ///
      str    DXPOA51                    913        ///
      str    DXPOA52                    914        ///
      str    DXPOA53                    915        ///
      str    DXPOA54                    916        ///
      str    DXPOA55                    917        ///
      str    DXPOA56                    918        ///
      str    DXPOA57                    919        ///
      str    DXPOA58                    920        ///
      str    DXPOA59                    921        ///
      str    DXPOA60                    922        ///
      str    DXPOA61                    923        ///
      str    DXPOA62                    924        ///
      str    DXPOA63                    925        ///
      str    DXPOA64                    926        ///
      str    DXPOA65                    927        ///
      str    DXPOA66                    928        ///
      str    DXPOA67                    929        ///
      str    DXPOA68                    930        ///
      str    DXPOA69                    931        ///
      str    DXPOA70                    932        ///
      str    DXPOA71                    933        ///
      str    DXPOA72                    934        ///
      str    DXPOA73                    935        ///
      str    DXPOA74                    936        ///
      str    DXPOA75                    937        ///
      str    DXPOA76                    938        ///
      str    DXPOA77                    939        ///
      str    DXPOA78                    940        ///
      str    DXPOA79                    941        ///
      str    DXPOA80                    942        ///
      str    DXPOA81                    943        ///
      str    DXPOA82                    944        ///
      str    DXPOA83                    945        ///
      str    DXPOA84                    946        ///
      str    DXPOA85                    947        ///
      str    DXPOA86                    948        ///
      str    DXPOA87                    949        ///
      str    DXPOA88                    950        ///
      str    DXPOA89                    951        ///
      str    DXPOA90                    952        ///
      str    DXPOA91                    953        ///
      str    DXPOA92                    954        ///
      str    DXPOA93                    955        ///
      str    DXPOA94                    956        ///
      str    DXPOA95                    957        ///
      str    DXPOA96                    958        ///
      str    DXPOA97                    959        ///
      str    DXPOA98                    960        ///
      str    DXPOA99                    961        ///
      str    DXPOA100                   962        ///
      int    DXVER                      963- 965   ///
      byte   FEMALE                     966- 967   ///
      byte   HCUP_ED                    968- 969   ///
      byte   HCUP_OS                    970- 971   ///
      byte   HISPANIC                   972- 973   ///
      str    HISPANIC_X                 974        ///
      byte   Homeless                   975- 976   ///
      str    HOSP_NPI                   977- 986   ///
      str    HOSPST                     987- 988   ///
      str    I10_DX_Admitting           989- 995   ///
      str    I10_DX1                    996-1002   ///
      str    I10_DX2                   1003-1009   ///
      str    I10_DX3                   1010-1016   ///
      str    I10_DX4                   1017-1023   ///
      str    I10_DX5                   1024-1030   ///
      str    I10_DX6                   1031-1037   ///
      str    I10_DX7                   1038-1044   ///
      str    I10_DX8                   1045-1051   ///
      str    I10_DX9                   1052-1058   ///
      str    I10_DX10                  1059-1065   ///
      str    I10_DX11                  1066-1072   ///
      str    I10_DX12                  1073-1079   ///
      str    I10_DX13                  1080-1086   ///
      str    I10_DX14                  1087-1093   ///
      str    I10_DX15                  1094-1100   ///
      str    I10_DX16                  1101-1107   ///
      str    I10_DX17                  1108-1114   ///
      str    I10_DX18                  1115-1121   ///
      str    I10_DX19                  1122-1128   ///
      str    I10_DX20                  1129-1135   ///
      str    I10_DX21                  1136-1142   ///
      str    I10_DX22                  1143-1149   ///
      str    I10_DX23                  1150-1156   ///
      str    I10_DX24                  1157-1163   ///
      str    I10_DX25                  1164-1170   ///
      str    I10_DX26                  1171-1177   ///
      str    I10_DX27                  1178-1184   ///
      str    I10_DX28                  1185-1191   ///
      str    I10_DX29                  1192-1198   ///
      str    I10_DX30                  1199-1205   ///
      str    I10_DX31                  1206-1212   ///
      str    I10_DX32                  1213-1219   ///
      str    I10_DX33                  1220-1226   ///
      str    I10_DX34                  1227-1233   ///
      str    I10_DX35                  1234-1240   ///
      str    I10_DX36                  1241-1247   ///
      str    I10_DX37                  1248-1254   ///
      str    I10_DX38                  1255-1261   ///
      str    I10_DX39                  1262-1268   ///
      str    I10_DX40                  1269-1275   ///
      str    I10_DX41                  1276-1282   ///
      str    I10_DX42                  1283-1289   ///
      str    I10_DX43                  1290-1296   ///
      str    I10_DX44                  1297-1303   ///
      str    I10_DX45                  1304-1310   ///
      str    I10_DX46                  1311-1317   ///
      str    I10_DX47                  1318-1324   ///
      str    I10_DX48                  1325-1331   ///
      str    I10_DX49                  1332-1338   ///
      str    I10_DX50                  1339-1345   ///
      str    I10_DX51                  1346-1352   ///
      str    I10_DX52                  1353-1359   ///
      str    I10_DX53                  1360-1366   ///
      str    I10_DX54                  1367-1373   ///
      str    I10_DX55                  1374-1380   ///
      str    I10_DX56                  1381-1387   ///
      str    I10_DX57                  1388-1394   ///
      str    I10_DX58                  1395-1401   ///
      str    I10_DX59                  1402-1408   ///
      str    I10_DX60                  1409-1415   ///
      str    I10_DX61                  1416-1422   ///
      str    I10_DX62                  1423-1429   ///
      str    I10_DX63                  1430-1436   ///
      str    I10_DX64                  1437-1443   ///
      str    I10_DX65                  1444-1450   ///
      str    I10_DX66                  1451-1457   ///
      str    I10_DX67                  1458-1464   ///
      str    I10_DX68                  1465-1471   ///
      str    I10_DX69                  1472-1478   ///
      str    I10_DX70                  1479-1485   ///
      str    I10_DX71                  1486-1492   ///
      str    I10_DX72                  1493-1499   ///
      str    I10_DX73                  1500-1506   ///
      str    I10_DX74                  1507-1513   ///
      str    I10_DX75                  1514-1520   ///
      str    I10_DX76                  1521-1527   ///
      str    I10_DX77                  1528-1534   ///
      str    I10_DX78                  1535-1541   ///
      str    I10_DX79                  1542-1548   ///
      str    I10_DX80                  1549-1555   ///
      str    I10_DX81                  1556-1562   ///
      str    I10_DX82                  1563-1569   ///
      str    I10_DX83                  1570-1576   ///
      str    I10_DX84                  1577-1583   ///
      str    I10_DX85                  1584-1590   ///
      str    I10_DX86                  1591-1597   ///
      str    I10_DX87                  1598-1604   ///
      str    I10_DX88                  1605-1611   ///
      str    I10_DX89                  1612-1618   ///
      str    I10_DX90                  1619-1625   ///
      str    I10_DX91                  1626-1632   ///
      str    I10_DX92                  1633-1639   ///
      str    I10_DX93                  1640-1646   ///
      str    I10_DX94                  1647-1653   ///
      str    I10_DX95                  1654-1660   ///
      str    I10_DX96                  1661-1667   ///
      str    I10_DX97                  1668-1674   ///
      str    I10_DX98                  1675-1681   ///
      str    I10_DX99                  1682-1688   ///
      str    I10_DX100                 1689-1695   ///
      int    I10_NDX                   1696-1698   ///
      int    I10_NPR                   1699-1701   ///
      str    I10_PR1                   1702-1708   ///
      str    I10_PR2                   1709-1715   ///
      str    I10_PR3                   1716-1722   ///
      str    I10_PR4                   1723-1729   ///
      str    I10_PR5                   1730-1736   ///
      str    I10_PR6                   1737-1743   ///
      str    I10_PR7                   1744-1750   ///
      str    I10_PR8                   1751-1757   ///
      str    I10_PR9                   1758-1764   ///
      str    I10_PR10                  1765-1771   ///
      str    I10_PR11                  1772-1778   ///
      str    I10_PR12                  1779-1785   ///
      str    I10_PR13                  1786-1792   ///
      str    I10_PR14                  1793-1799   ///
      str    I10_PR15                  1800-1806   ///
      str    I10_PR16                  1807-1813   ///
      str    I10_PR17                  1814-1820   ///
      str    I10_PR18                  1821-1827   ///
      str    I10_PR19                  1828-1834   ///
      str    I10_PR20                  1835-1841   ///
      str    I10_PR21                  1842-1848   ///
      str    I10_PR22                  1849-1855   ///
      str    I10_PR23                  1856-1862   ///
      str    I10_PR24                  1863-1869   ///
      str    I10_PR25                  1870-1876   ///
      str    I10_PR26                  1877-1883   ///
      str    I10_PR27                  1884-1890   ///
      str    I10_PR28                  1891-1897   ///
      str    I10_PR29                  1898-1904   ///
      str    I10_PR30                  1905-1911   ///
      str    I10_PR31                  1912-1918   ///
      str    I10_PR32                  1919-1925   ///
      str    I10_PR33                  1926-1932   ///
      str    I10_PR34                  1933-1939   ///
      str    I10_PR35                  1940-1946   ///
      str    I10_PR36                  1947-1953   ///
      str    I10_PR37                  1954-1960   ///
      str    I10_PR38                  1961-1967   ///
      str    I10_PR39                  1968-1974   ///
      str    I10_PR40                  1975-1981   ///
      str    I10_PR41                  1982-1988   ///
      str    I10_PR42                  1989-1995   ///
      str    I10_PR43                  1996-2002   ///
      str    I10_PR44                  2003-2009   ///
      str    I10_PR45                  2010-2016   ///
      str    I10_PR46                  2017-2023   ///
      str    I10_PR47                  2024-2030   ///
      str    I10_PR48                  2031-2037   ///
      str    I10_PR49                  2038-2044   ///
      str    I10_PR50                  2045-2051   ///
      str    I10_PR51                  2052-2058   ///
      str    I10_PR52                  2059-2065   ///
      str    I10_PR53                  2066-2072   ///
      str    I10_PR54                  2073-2079   ///
      str    I10_PR55                  2080-2086   ///
      str    I10_PR56                  2087-2093   ///
      str    I10_PR57                  2094-2100   ///
      str    I10_PR58                  2101-2107   ///
      str    I10_PR59                  2108-2114   ///
      str    I10_PR60                  2115-2121   ///
      str    I10_PR61                  2122-2128   ///
      str    I10_PR62                  2129-2135   ///
      str    I10_PR63                  2136-2142   ///
      str    I10_PR64                  2143-2149   ///
      str    I10_PR65                  2150-2156   ///
      str    I10_PR66                  2157-2163   ///
      str    I10_PR67                  2164-2170   ///
      str    I10_PR68                  2171-2177   ///
      str    I10_PR69                  2178-2184   ///
      str    I10_PR70                  2185-2191   ///
      str    I10_PR71                  2192-2198   ///
      str    I10_PR72                  2199-2205   ///
      str    I10_PR73                  2206-2212   ///
      str    I10_PR74                  2213-2219   ///
      str    I10_PR75                  2220-2226   ///
      str    I10_PR76                  2227-2233   ///
      str    I10_PR77                  2234-2240   ///
      str    I10_PR78                  2241-2247   ///
      str    I10_PR79                  2248-2254   ///
      str    I10_PR80                  2255-2261   ///
      str    I10_PR81                  2262-2268   ///
      str    I10_PR82                  2269-2275   ///
      str    I10_PR83                  2276-2282   ///
      str    I10_PR84                  2283-2289   ///
      str    I10_PR85                  2290-2296   ///
      str    I10_PR86                  2297-2303   ///
      str    I10_PR87                  2304-2310   ///
      str    I10_PR88                  2311-2317   ///
      str    I10_PR89                  2318-2324   ///
      str    I10_PR90                  2325-2331   ///
      str    I10_PR91                  2332-2338   ///
      str    I10_PR92                  2339-2345   ///
      str    I10_PR93                  2346-2352   ///
      str    I10_PR94                  2353-2359   ///
      str    I10_PR95                  2360-2366   ///
      str    I10_PR96                  2367-2373   ///
      str    I10_PR97                  2374-2380   ///
      str    I10_PR98                  2381-2387   ///
      str    I10_PR99                  2388-2394   ///
      str    I10_PR100                 2395-2401   ///
      int    I10_PROCTYPE              2402-2404   ///
      double KEY                       2405-2419   ///
      long   LOS                       2420-2424   ///
      long   LOS_X                     2425-2430   ///
      byte   MDC                       2431-2432   ///
      byte   MDC_NoPOA                 2433-2434   ///
      str    MDSPEC1                   2435-2437   ///
      str    MDSPEC2                   2438-2440   ///
      byte   MEDINCSTQ                 2441-2442   ///
      long   MRN_R                     2443-2451   ///
      int    NCPT                      2452-2455   ///
      double OS_TIME                   2456-2466   ///
      byte   PAY1                      2467-2468   ///
      str    PAY1_X                    2469-2473   ///
      byte   PAY2                      2474-2475   ///
      str    PAY2_X                    2476-2480   ///
      int    PL_CBSA                   2481-2483   ///
      byte   PL_NCHS                   2484-2485   ///
      byte   PL_RUCC                   2486-2487   ///
      byte   PL_UIC                    2488-2489   ///
      byte   PL_UR_CAT4                2490-2491   ///
      byte   POA_Disch_Edit1           2492-2493   ///
      byte   POA_Disch_Edit2           2494-2495   ///
      byte   POA_Hosp_Edit1            2496-2497   ///
      byte   POA_Hosp_Edit2            2498-2499   ///
      byte   POA_Hosp_Edit3            2500-2501   ///
      double POA_Hosp_Edit3_Value      2502-2509   ///
      str    PointOfOrigin_X           2510        ///
      str    PointOfOriginUB04         2511        ///
      long   PRDAY1                    2512-2516   ///
      int    PRVER                     2517-2519   ///
      str    PSTATE                    2520-2521   ///
      long   PSTCO2                    2522-2526   ///
      byte   RACE                      2527-2528   ///
      byte   RACE_EDIT                 2529-2530   ///
      str    RACE_X                    2531-2532   ///
      double TOTCHG                    2533-2542   ///
      double TOTCHG_X                  2543-2557   ///
      byte   TRAN_IN                   2558-2559   ///
      byte   TRAN_OUT                  2560-2561   ///
      long   VisitLink                 2562-2570   ///
      int    YEAR                      2571-2574   ///
      str    ZIP                       2575-2579   ///
      str    ZIP3                      2580-2582   ///
      int    ZIPINC_QRTL               2583-2585   ///
      int    AYEAR                     2586-2589   ///
      byte   BMONTH                    2590-2591   ///
      int    BYEAR                     2592-2595   ///
      byte   PRMONTH1                  2596-2597   ///
      int    PRYEAR1                   2598-2601   ///
      using  "WI_SID_2017_CORE.ASC"

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
label var DaysToEvent              "Days from 'start date' to admission"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
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
label var DXPOA68                  "Diagnosis 68, present on admission indicator"
label var DXPOA69                  "Diagnosis 69, present on admission indicator"
label var DXPOA70                  "Diagnosis 70, present on admission indicator"
label var DXPOA71                  "Diagnosis 71, present on admission indicator"
label var DXPOA72                  "Diagnosis 72, present on admission indicator"
label var DXPOA73                  "Diagnosis 73, present on admission indicator"
label var DXPOA74                  "Diagnosis 74, present on admission indicator"
label var DXPOA75                  "Diagnosis 75, present on admission indicator"
label var DXPOA76                  "Diagnosis 76, present on admission indicator"
label var DXPOA77                  "Diagnosis 77, present on admission indicator"
label var DXPOA78                  "Diagnosis 78, present on admission indicator"
label var DXPOA79                  "Diagnosis 79, present on admission indicator"
label var DXPOA80                  "Diagnosis 80, present on admission indicator"
label var DXPOA81                  "Diagnosis 81, present on admission indicator"
label var DXPOA82                  "Diagnosis 82, present on admission indicator"
label var DXPOA83                  "Diagnosis 83, present on admission indicator"
label var DXPOA84                  "Diagnosis 84, present on admission indicator"
label var DXPOA85                  "Diagnosis 85, present on admission indicator"
label var DXPOA86                  "Diagnosis 86, present on admission indicator"
label var DXPOA87                  "Diagnosis 87, present on admission indicator"
label var DXPOA88                  "Diagnosis 88, present on admission indicator"
label var DXPOA89                  "Diagnosis 89, present on admission indicator"
label var DXPOA90                  "Diagnosis 90, present on admission indicator"
label var DXPOA91                  "Diagnosis 91, present on admission indicator"
label var DXPOA92                  "Diagnosis 92, present on admission indicator"
label var DXPOA93                  "Diagnosis 93, present on admission indicator"
label var DXPOA94                  "Diagnosis 94, present on admission indicator"
label var DXPOA95                  "Diagnosis 95, present on admission indicator"
label var DXPOA96                  "Diagnosis 96, present on admission indicator"
label var DXPOA97                  "Diagnosis 97, present on admission indicator"
label var DXPOA98                  "Diagnosis 98, present on admission indicator"
label var DXPOA99                  "Diagnosis 99, present on admission indicator"
label var DXPOA100                 "Diagnosis 100, present on admission indicator"
label var DXVER                    "Diagnosis Version"
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
label var I10_DX68                 "ICD-10-CM Diagnosis 68"
label var I10_DX69                 "ICD-10-CM Diagnosis 69"
label var I10_DX70                 "ICD-10-CM Diagnosis 70"
label var I10_DX71                 "ICD-10-CM Diagnosis 71"
label var I10_DX72                 "ICD-10-CM Diagnosis 72"
label var I10_DX73                 "ICD-10-CM Diagnosis 73"
label var I10_DX74                 "ICD-10-CM Diagnosis 74"
label var I10_DX75                 "ICD-10-CM Diagnosis 75"
label var I10_DX76                 "ICD-10-CM Diagnosis 76"
label var I10_DX77                 "ICD-10-CM Diagnosis 77"
label var I10_DX78                 "ICD-10-CM Diagnosis 78"
label var I10_DX79                 "ICD-10-CM Diagnosis 79"
label var I10_DX80                 "ICD-10-CM Diagnosis 80"
label var I10_DX81                 "ICD-10-CM Diagnosis 81"
label var I10_DX82                 "ICD-10-CM Diagnosis 82"
label var I10_DX83                 "ICD-10-CM Diagnosis 83"
label var I10_DX84                 "ICD-10-CM Diagnosis 84"
label var I10_DX85                 "ICD-10-CM Diagnosis 85"
label var I10_DX86                 "ICD-10-CM Diagnosis 86"
label var I10_DX87                 "ICD-10-CM Diagnosis 87"
label var I10_DX88                 "ICD-10-CM Diagnosis 88"
label var I10_DX89                 "ICD-10-CM Diagnosis 89"
label var I10_DX90                 "ICD-10-CM Diagnosis 90"
label var I10_DX91                 "ICD-10-CM Diagnosis 91"
label var I10_DX92                 "ICD-10-CM Diagnosis 92"
label var I10_DX93                 "ICD-10-CM Diagnosis 93"
label var I10_DX94                 "ICD-10-CM Diagnosis 94"
label var I10_DX95                 "ICD-10-CM Diagnosis 95"
label var I10_DX96                 "ICD-10-CM Diagnosis 96"
label var I10_DX97                 "ICD-10-CM Diagnosis 97"
label var I10_DX98                 "ICD-10-CM Diagnosis 98"
label var I10_DX99                 "ICD-10-CM Diagnosis 99"
label var I10_DX100                "ICD-10-CM Diagnosis 100"
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
label var I10_PR51                 "ICD-10-PCS Procedure 51"
label var I10_PR52                 "ICD-10-PCS Procedure 52"
label var I10_PR53                 "ICD-10-PCS Procedure 53"
label var I10_PR54                 "ICD-10-PCS Procedure 54"
label var I10_PR55                 "ICD-10-PCS Procedure 55"
label var I10_PR56                 "ICD-10-PCS Procedure 56"
label var I10_PR57                 "ICD-10-PCS Procedure 57"
label var I10_PR58                 "ICD-10-PCS Procedure 58"
label var I10_PR59                 "ICD-10-PCS Procedure 59"
label var I10_PR60                 "ICD-10-PCS Procedure 60"
label var I10_PR61                 "ICD-10-PCS Procedure 61"
label var I10_PR62                 "ICD-10-PCS Procedure 62"
label var I10_PR63                 "ICD-10-PCS Procedure 63"
label var I10_PR64                 "ICD-10-PCS Procedure 64"
label var I10_PR65                 "ICD-10-PCS Procedure 65"
label var I10_PR66                 "ICD-10-PCS Procedure 66"
label var I10_PR67                 "ICD-10-PCS Procedure 67"
label var I10_PR68                 "ICD-10-PCS Procedure 68"
label var I10_PR69                 "ICD-10-PCS Procedure 69"
label var I10_PR70                 "ICD-10-PCS Procedure 70"
label var I10_PR71                 "ICD-10-PCS Procedure 71"
label var I10_PR72                 "ICD-10-PCS Procedure 72"
label var I10_PR73                 "ICD-10-PCS Procedure 73"
label var I10_PR74                 "ICD-10-PCS Procedure 74"
label var I10_PR75                 "ICD-10-PCS Procedure 75"
label var I10_PR76                 "ICD-10-PCS Procedure 76"
label var I10_PR77                 "ICD-10-PCS Procedure 77"
label var I10_PR78                 "ICD-10-PCS Procedure 78"
label var I10_PR79                 "ICD-10-PCS Procedure 79"
label var I10_PR80                 "ICD-10-PCS Procedure 80"
label var I10_PR81                 "ICD-10-PCS Procedure 81"
label var I10_PR82                 "ICD-10-PCS Procedure 82"
label var I10_PR83                 "ICD-10-PCS Procedure 83"
label var I10_PR84                 "ICD-10-PCS Procedure 84"
label var I10_PR85                 "ICD-10-PCS Procedure 85"
label var I10_PR86                 "ICD-10-PCS Procedure 86"
label var I10_PR87                 "ICD-10-PCS Procedure 87"
label var I10_PR88                 "ICD-10-PCS Procedure 88"
label var I10_PR89                 "ICD-10-PCS Procedure 89"
label var I10_PR90                 "ICD-10-PCS Procedure 90"
label var I10_PR91                 "ICD-10-PCS Procedure 91"
label var I10_PR92                 "ICD-10-PCS Procedure 92"
label var I10_PR93                 "ICD-10-PCS Procedure 93"
label var I10_PR94                 "ICD-10-PCS Procedure 94"
label var I10_PR95                 "ICD-10-PCS Procedure 95"
label var I10_PR96                 "ICD-10-PCS Procedure 96"
label var I10_PR97                 "ICD-10-PCS Procedure 97"
label var I10_PR98                 "ICD-10-PCS Procedure 98"
label var I10_PR99                 "ICD-10-PCS Procedure 99"
label var I10_PR100                "ICD-10-PCS Procedure 100"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
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
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
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
recode PRVER                     (-99 -88 -66=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
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

save "WI_SID_2017_CORE.dta", replace
