/*****************************************************************************
* Creation Date: 02/05/2021   
* GA_SID_2019_CORE.Do
* This program will load the 2019 GA ASCII CORE File into Stata.
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
      str    CPT51                      274- 278   ///
      str    CPT52                      279- 283   ///
      str    CPT53                      284- 288   ///
      str    CPT54                      289- 293   ///
      str    CPT55                      294- 298   ///
      str    CPT56                      299- 303   ///
      str    CPT57                      304- 308   ///
      str    CPT58                      309- 313   ///
      str    CPT59                      314- 318   ///
      str    CPT60                      319- 323   ///
      str    CPT61                      324- 328   ///
      str    CPT62                      329- 333   ///
      str    CPT63                      334- 338   ///
      str    CPT64                      339- 343   ///
      str    CPT65                      344- 348   ///
      str    CPT66                      349- 353   ///
      str    CPT67                      354- 358   ///
      str    CPT68                      359- 363   ///
      str    CPT69                      364- 368   ///
      str    CPT70                      369- 373   ///
      str    CPT71                      374- 378   ///
      str    CPT72                      379- 383   ///
      str    CPT73                      384- 388   ///
      str    CPT74                      389- 393   ///
      str    CPT75                      394- 398   ///
      str    CPT76                      399- 403   ///
      str    CPT77                      404- 408   ///
      str    CPT78                      409- 413   ///
      str    CPT79                      414- 418   ///
      str    CPT80                      419- 423   ///
      str    CPT81                      424- 428   ///
      str    CPT82                      429- 433   ///
      str    CPT83                      434- 438   ///
      str    CPT84                      439- 443   ///
      str    CPT85                      444- 448   ///
      str    CPT86                      449- 453   ///
      str    CPT87                      454- 458   ///
      str    CPT88                      459- 463   ///
      str    CPT89                      464- 468   ///
      str    CPT90                      469- 473   ///
      str    CPT91                      474- 478   ///
      str    CPT92                      479- 483   ///
      str    CPT93                      484- 488   ///
      str    CPT94                      489- 493   ///
      str    CPT95                      494- 498   ///
      str    CPT96                      499- 503   ///
      str    CPT97                      504- 508   ///
      str    CPT98                      509- 513   ///
      str    CPT99                      514- 518   ///
      str    CPT100                     519- 523   ///
      int    CPTCCS1                    524- 526   ///
      int    CPTCCS2                    527- 529   ///
      int    CPTCCS3                    530- 532   ///
      int    CPTCCS4                    533- 535   ///
      int    CPTCCS5                    536- 538   ///
      int    CPTCCS6                    539- 541   ///
      int    CPTCCS7                    542- 544   ///
      int    CPTCCS8                    545- 547   ///
      int    CPTCCS9                    548- 550   ///
      int    CPTCCS10                   551- 553   ///
      int    CPTCCS11                   554- 556   ///
      int    CPTCCS12                   557- 559   ///
      int    CPTCCS13                   560- 562   ///
      int    CPTCCS14                   563- 565   ///
      int    CPTCCS15                   566- 568   ///
      int    CPTCCS16                   569- 571   ///
      int    CPTCCS17                   572- 574   ///
      int    CPTCCS18                   575- 577   ///
      int    CPTCCS19                   578- 580   ///
      int    CPTCCS20                   581- 583   ///
      int    CPTCCS21                   584- 586   ///
      int    CPTCCS22                   587- 589   ///
      int    CPTCCS23                   590- 592   ///
      int    CPTCCS24                   593- 595   ///
      int    CPTCCS25                   596- 598   ///
      int    CPTCCS26                   599- 601   ///
      int    CPTCCS27                   602- 604   ///
      int    CPTCCS28                   605- 607   ///
      int    CPTCCS29                   608- 610   ///
      int    CPTCCS30                   611- 613   ///
      int    CPTCCS31                   614- 616   ///
      int    CPTCCS32                   617- 619   ///
      int    CPTCCS33                   620- 622   ///
      int    CPTCCS34                   623- 625   ///
      int    CPTCCS35                   626- 628   ///
      int    CPTCCS36                   629- 631   ///
      int    CPTCCS37                   632- 634   ///
      int    CPTCCS38                   635- 637   ///
      int    CPTCCS39                   638- 640   ///
      int    CPTCCS40                   641- 643   ///
      int    CPTCCS41                   644- 646   ///
      int    CPTCCS42                   647- 649   ///
      int    CPTCCS43                   650- 652   ///
      int    CPTCCS44                   653- 655   ///
      int    CPTCCS45                   656- 658   ///
      int    CPTCCS46                   659- 661   ///
      int    CPTCCS47                   662- 664   ///
      int    CPTCCS48                   665- 667   ///
      int    CPTCCS49                   668- 670   ///
      int    CPTCCS50                   671- 673   ///
      int    CPTCCS51                   674- 676   ///
      int    CPTCCS52                   677- 679   ///
      int    CPTCCS53                   680- 682   ///
      int    CPTCCS54                   683- 685   ///
      int    CPTCCS55                   686- 688   ///
      int    CPTCCS56                   689- 691   ///
      int    CPTCCS57                   692- 694   ///
      int    CPTCCS58                   695- 697   ///
      int    CPTCCS59                   698- 700   ///
      int    CPTCCS60                   701- 703   ///
      int    CPTCCS61                   704- 706   ///
      int    CPTCCS62                   707- 709   ///
      int    CPTCCS63                   710- 712   ///
      int    CPTCCS64                   713- 715   ///
      int    CPTCCS65                   716- 718   ///
      int    CPTCCS66                   719- 721   ///
      int    CPTCCS67                   722- 724   ///
      int    CPTCCS68                   725- 727   ///
      int    CPTCCS69                   728- 730   ///
      int    CPTCCS70                   731- 733   ///
      int    CPTCCS71                   734- 736   ///
      int    CPTCCS72                   737- 739   ///
      int    CPTCCS73                   740- 742   ///
      int    CPTCCS74                   743- 745   ///
      int    CPTCCS75                   746- 748   ///
      int    CPTCCS76                   749- 751   ///
      int    CPTCCS77                   752- 754   ///
      int    CPTCCS78                   755- 757   ///
      int    CPTCCS79                   758- 760   ///
      int    CPTCCS80                   761- 763   ///
      int    CPTCCS81                   764- 766   ///
      int    CPTCCS82                   767- 769   ///
      int    CPTCCS83                   770- 772   ///
      int    CPTCCS84                   773- 775   ///
      int    CPTCCS85                   776- 778   ///
      int    CPTCCS86                   779- 781   ///
      int    CPTCCS87                   782- 784   ///
      int    CPTCCS88                   785- 787   ///
      int    CPTCCS89                   788- 790   ///
      int    CPTCCS90                   791- 793   ///
      int    CPTCCS91                   794- 796   ///
      int    CPTCCS92                   797- 799   ///
      int    CPTCCS93                   800- 802   ///
      int    CPTCCS94                   803- 805   ///
      int    CPTCCS95                   806- 808   ///
      int    CPTCCS96                   809- 811   ///
      int    CPTCCS97                   812- 814   ///
      int    CPTCCS98                   815- 817   ///
      int    CPTCCS99                   818- 820   ///
      int    CPTCCS100                  821- 823   ///
      byte   DIED                       824- 825   ///
      byte   DISPUB04                   826- 827   ///
      byte   DISPUNIFORM                828- 829   ///
      str    DISP_X                     830- 831   ///
      byte   DMONTH                     832- 833   ///
      byte   DQTR                       834- 835   ///
      int    DRG                        836- 838   ///
      byte   DRGVER                     839- 840   ///
      int    DRG_NoPOA                  841- 843   ///
      str    DXPOA1                     844        ///
      str    DXPOA2                     845        ///
      str    DXPOA3                     846        ///
      str    DXPOA4                     847        ///
      str    DXPOA5                     848        ///
      str    DXPOA6                     849        ///
      str    DXPOA7                     850        ///
      str    DXPOA8                     851        ///
      str    DXPOA9                     852        ///
      str    DXPOA10                    853        ///
      str    DXPOA11                    854        ///
      str    DXPOA12                    855        ///
      str    DXPOA13                    856        ///
      str    DXPOA14                    857        ///
      str    DXPOA15                    858        ///
      str    DXPOA16                    859        ///
      str    DXPOA17                    860        ///
      str    DXPOA18                    861        ///
      str    DXPOA19                    862        ///
      str    DXPOA20                    863        ///
      str    DXPOA21                    864        ///
      str    DXPOA22                    865        ///
      str    DXPOA23                    866        ///
      str    DXPOA24                    867        ///
      str    DXPOA25                    868        ///
      str    DXPOA26                    869        ///
      str    DXPOA27                    870        ///
      str    DXPOA28                    871        ///
      str    DXPOA29                    872        ///
      str    DXPOA30                    873        ///
      str    DXPOA31                    874        ///
      str    DXPOA32                    875        ///
      str    DXPOA33                    876        ///
      str    DXPOA34                    877        ///
      str    DXPOA35                    878        ///
      str    DXPOA36                    879        ///
      str    DXPOA37                    880        ///
      str    DXPOA38                    881        ///
      str    DXPOA39                    882        ///
      str    DXPOA40                    883        ///
      str    DXPOA41                    884        ///
      str    DXPOA42                    885        ///
      str    DXPOA43                    886        ///
      str    DXPOA44                    887        ///
      str    DXPOA45                    888        ///
      str    DXPOA46                    889        ///
      str    DXPOA47                    890        ///
      str    DXPOA48                    891        ///
      str    DXPOA49                    892        ///
      str    DXPOA50                    893        ///
      str    DXPOA51                    894        ///
      str    DXPOA52                    895        ///
      str    DXPOA53                    896        ///
      str    DXPOA54                    897        ///
      str    DXPOA55                    898        ///
      str    DXPOA56                    899        ///
      str    DXPOA57                    900        ///
      str    DXPOA58                    901        ///
      str    DXPOA59                    902        ///
      str    DXPOA60                    903        ///
      str    DXPOA61                    904        ///
      str    DXPOA62                    905        ///
      str    DXPOA63                    906        ///
      str    DXPOA64                    907        ///
      str    DXPOA65                    908        ///
      str    DXPOA66                    909        ///
      str    DXPOA67                    910        ///
      str    DXPOA68                    911        ///
      str    DXPOA69                    912        ///
      str    DXPOA70                    913        ///
      str    DXPOA71                    914        ///
      str    DXPOA72                    915        ///
      str    DXPOA73                    916        ///
      str    DXPOA74                    917        ///
      str    DXPOA75                    918        ///
      str    DXPOA76                    919        ///
      str    DXPOA77                    920        ///
      str    DXPOA78                    921        ///
      str    DXPOA79                    922        ///
      str    DXPOA80                    923        ///
      str    DXPOA81                    924        ///
      str    DXPOA82                    925        ///
      str    DXPOA83                    926        ///
      str    DXPOA84                    927        ///
      str    DXPOA85                    928        ///
      str    DXPOA86                    929        ///
      str    DXPOA87                    930        ///
      str    DXPOA88                    931        ///
      str    DXPOA89                    932        ///
      str    DXPOA90                    933        ///
      str    DXPOA91                    934        ///
      str    DXPOA92                    935        ///
      str    DXPOA93                    936        ///
      str    DXPOA94                    937        ///
      str    DXPOA95                    938        ///
      str    DXPOA96                    939        ///
      str    DXPOA97                    940        ///
      str    DXPOA98                    941        ///
      str    DXPOA99                    942        ///
      str    DXPOA100                   943        ///
      str    DXPOA101                   944        ///
      str    DXPOA102                   945        ///
      str    DXPOA103                   946        ///
      str    DXPOA104                   947        ///
      str    DXPOA105                   948        ///
      str    DXPOA106                   949        ///
      str    DXPOA107                   950        ///
      str    DXPOA108                   951        ///
      long   DaysToEvent                952- 957   ///
      byte   FEMALE                     958- 959   ///
      byte   HCUP_ED                    960- 961   ///
      byte   HCUP_OS                    962- 963   ///
      byte   HISPANIC                   964- 965   ///
      str    HISPANIC_X                 966        ///
      str    HOSPST                     967- 968   ///
      byte   Homeless                   969- 970   ///
      byte   I10_BIRTH                  971- 972   ///
      byte   I10_DELIVERY               973- 974   ///
      str    I10_DX1                    975- 981   ///
      str    I10_DX2                    982- 988   ///
      str    I10_DX3                    989- 995   ///
      str    I10_DX4                    996-1002   ///
      str    I10_DX5                   1003-1009   ///
      str    I10_DX6                   1010-1016   ///
      str    I10_DX7                   1017-1023   ///
      str    I10_DX8                   1024-1030   ///
      str    I10_DX9                   1031-1037   ///
      str    I10_DX10                  1038-1044   ///
      str    I10_DX11                  1045-1051   ///
      str    I10_DX12                  1052-1058   ///
      str    I10_DX13                  1059-1065   ///
      str    I10_DX14                  1066-1072   ///
      str    I10_DX15                  1073-1079   ///
      str    I10_DX16                  1080-1086   ///
      str    I10_DX17                  1087-1093   ///
      str    I10_DX18                  1094-1100   ///
      str    I10_DX19                  1101-1107   ///
      str    I10_DX20                  1108-1114   ///
      str    I10_DX21                  1115-1121   ///
      str    I10_DX22                  1122-1128   ///
      str    I10_DX23                  1129-1135   ///
      str    I10_DX24                  1136-1142   ///
      str    I10_DX25                  1143-1149   ///
      str    I10_DX26                  1150-1156   ///
      str    I10_DX27                  1157-1163   ///
      str    I10_DX28                  1164-1170   ///
      str    I10_DX29                  1171-1177   ///
      str    I10_DX30                  1178-1184   ///
      str    I10_DX31                  1185-1191   ///
      str    I10_DX32                  1192-1198   ///
      str    I10_DX33                  1199-1205   ///
      str    I10_DX34                  1206-1212   ///
      str    I10_DX35                  1213-1219   ///
      str    I10_DX36                  1220-1226   ///
      str    I10_DX37                  1227-1233   ///
      str    I10_DX38                  1234-1240   ///
      str    I10_DX39                  1241-1247   ///
      str    I10_DX40                  1248-1254   ///
      str    I10_DX41                  1255-1261   ///
      str    I10_DX42                  1262-1268   ///
      str    I10_DX43                  1269-1275   ///
      str    I10_DX44                  1276-1282   ///
      str    I10_DX45                  1283-1289   ///
      str    I10_DX46                  1290-1296   ///
      str    I10_DX47                  1297-1303   ///
      str    I10_DX48                  1304-1310   ///
      str    I10_DX49                  1311-1317   ///
      str    I10_DX50                  1318-1324   ///
      str    I10_DX51                  1325-1331   ///
      str    I10_DX52                  1332-1338   ///
      str    I10_DX53                  1339-1345   ///
      str    I10_DX54                  1346-1352   ///
      str    I10_DX55                  1353-1359   ///
      str    I10_DX56                  1360-1366   ///
      str    I10_DX57                  1367-1373   ///
      str    I10_DX58                  1374-1380   ///
      str    I10_DX59                  1381-1387   ///
      str    I10_DX60                  1388-1394   ///
      str    I10_DX61                  1395-1401   ///
      str    I10_DX62                  1402-1408   ///
      str    I10_DX63                  1409-1415   ///
      str    I10_DX64                  1416-1422   ///
      str    I10_DX65                  1423-1429   ///
      str    I10_DX66                  1430-1436   ///
      str    I10_DX67                  1437-1443   ///
      str    I10_DX68                  1444-1450   ///
      str    I10_DX69                  1451-1457   ///
      str    I10_DX70                  1458-1464   ///
      str    I10_DX71                  1465-1471   ///
      str    I10_DX72                  1472-1478   ///
      str    I10_DX73                  1479-1485   ///
      str    I10_DX74                  1486-1492   ///
      str    I10_DX75                  1493-1499   ///
      str    I10_DX76                  1500-1506   ///
      str    I10_DX77                  1507-1513   ///
      str    I10_DX78                  1514-1520   ///
      str    I10_DX79                  1521-1527   ///
      str    I10_DX80                  1528-1534   ///
      str    I10_DX81                  1535-1541   ///
      str    I10_DX82                  1542-1548   ///
      str    I10_DX83                  1549-1555   ///
      str    I10_DX84                  1556-1562   ///
      str    I10_DX85                  1563-1569   ///
      str    I10_DX86                  1570-1576   ///
      str    I10_DX87                  1577-1583   ///
      str    I10_DX88                  1584-1590   ///
      str    I10_DX89                  1591-1597   ///
      str    I10_DX90                  1598-1604   ///
      str    I10_DX91                  1605-1611   ///
      str    I10_DX92                  1612-1618   ///
      str    I10_DX93                  1619-1625   ///
      str    I10_DX94                  1626-1632   ///
      str    I10_DX95                  1633-1639   ///
      str    I10_DX96                  1640-1646   ///
      str    I10_DX97                  1647-1653   ///
      str    I10_DX98                  1654-1660   ///
      str    I10_DX99                  1661-1667   ///
      str    I10_DX100                 1668-1674   ///
      str    I10_DX101                 1675-1681   ///
      str    I10_DX102                 1682-1688   ///
      str    I10_DX103                 1689-1695   ///
      str    I10_DX104                 1696-1702   ///
      str    I10_DX105                 1703-1709   ///
      str    I10_DX106                 1710-1716   ///
      str    I10_DX107                 1717-1723   ///
      str    I10_DX108                 1724-1730   ///
      int    I10_NDX                   1731-1733   ///
      int    I10_NPR                   1734-1736   ///
      byte   I10_ORPROC                1737-1738   ///
      str    I10_PR1                   1739-1745   ///
      str    I10_PR2                   1746-1752   ///
      str    I10_PR3                   1753-1759   ///
      str    I10_PR4                   1760-1766   ///
      str    I10_PR5                   1767-1773   ///
      str    I10_PR6                   1774-1780   ///
      str    I10_PR7                   1781-1787   ///
      str    I10_PR8                   1788-1794   ///
      str    I10_PR9                   1795-1801   ///
      str    I10_PR10                  1802-1808   ///
      str    I10_PR11                  1809-1815   ///
      str    I10_PR12                  1816-1822   ///
      str    I10_PR13                  1823-1829   ///
      str    I10_PR14                  1830-1836   ///
      str    I10_PR15                  1837-1843   ///
      str    I10_PR16                  1844-1850   ///
      str    I10_PR17                  1851-1857   ///
      str    I10_PR18                  1858-1864   ///
      str    I10_PR19                  1865-1871   ///
      str    I10_PR20                  1872-1878   ///
      str    I10_PR21                  1879-1885   ///
      str    I10_PR22                  1886-1892   ///
      str    I10_PR23                  1893-1899   ///
      str    I10_PR24                  1900-1906   ///
      str    I10_PR25                  1907-1913   ///
      str    I10_PR26                  1914-1920   ///
      str    I10_PR27                  1921-1927   ///
      str    I10_PR28                  1928-1934   ///
      str    I10_PR29                  1935-1941   ///
      str    I10_PR30                  1942-1948   ///
      str    I10_PR31                  1949-1955   ///
      str    I10_PR32                  1956-1962   ///
      str    I10_PR33                  1963-1969   ///
      str    I10_PR34                  1970-1976   ///
      str    I10_PR35                  1977-1983   ///
      str    I10_PR36                  1984-1990   ///
      str    I10_PR37                  1991-1997   ///
      str    I10_PR38                  1998-2004   ///
      str    I10_PR39                  2005-2011   ///
      str    I10_PR40                  2012-2018   ///
      str    I10_PR41                  2019-2025   ///
      str    I10_PR42                  2026-2032   ///
      str    I10_PR43                  2033-2039   ///
      str    I10_PR44                  2040-2046   ///
      str    I10_PR45                  2047-2053   ///
      str    I10_PR46                  2054-2060   ///
      str    I10_PR47                  2061-2067   ///
      str    I10_PR48                  2068-2074   ///
      str    I10_PR49                  2075-2081   ///
      str    I10_PR50                  2082-2088   ///
      str    I10_PR51                  2089-2095   ///
      str    I10_PR52                  2096-2102   ///
      str    I10_PR53                  2103-2109   ///
      str    I10_PR54                  2110-2116   ///
      str    I10_PR55                  2117-2123   ///
      str    I10_PR56                  2124-2130   ///
      str    I10_PR57                  2131-2137   ///
      str    I10_PR58                  2138-2144   ///
      str    I10_PR59                  2145-2151   ///
      str    I10_PR60                  2152-2158   ///
      str    I10_PR61                  2159-2165   ///
      str    I10_PR62                  2166-2172   ///
      str    I10_PR63                  2173-2179   ///
      str    I10_PR64                  2180-2186   ///
      str    I10_PR65                  2187-2193   ///
      str    I10_PR66                  2194-2200   ///
      str    I10_PR67                  2201-2207   ///
      str    I10_PR68                  2208-2214   ///
      str    I10_PR69                  2215-2221   ///
      str    I10_PR70                  2222-2228   ///
      str    I10_PR71                  2229-2235   ///
      str    I10_PR72                  2236-2242   ///
      str    I10_PR73                  2243-2249   ///
      str    I10_PR74                  2250-2256   ///
      str    I10_PR75                  2257-2263   ///
      str    I10_PR76                  2264-2270   ///
      str    I10_PR77                  2271-2277   ///
      str    I10_PR78                  2278-2284   ///
      str    I10_PR79                  2285-2291   ///
      str    I10_PR80                  2292-2298   ///
      str    I10_PR81                  2299-2305   ///
      str    I10_PR82                  2306-2312   ///
      str    I10_PR83                  2313-2319   ///
      str    I10_PR84                  2320-2326   ///
      str    I10_PR85                  2327-2333   ///
      str    I10_PR86                  2334-2340   ///
      str    I10_PR87                  2341-2347   ///
      str    I10_PR88                  2348-2354   ///
      str    I10_PR89                  2355-2361   ///
      str    I10_PR90                  2362-2368   ///
      str    I10_PR91                  2369-2375   ///
      str    I10_PR92                  2376-2382   ///
      str    I10_PR93                  2383-2389   ///
      str    I10_PR94                  2390-2396   ///
      str    I10_PR95                  2397-2403   ///
      str    I10_PR96                  2404-2410   ///
      str    I10_PR97                  2411-2417   ///
      str    I10_PR98                  2418-2424   ///
      str    I10_PR99                  2425-2431   ///
      str    I10_PR100                 2432-2438   ///
      int    I10_PROCTYPE              2439-2441   ///
      byte   I10_SERVICELINE           2442-2443   ///
      double KEY                       2444-2458   ///
      long   LOS                       2459-2463   ///
      long   LOS_X                     2464-2469   ///
      str    MARITALSTATUSUB04         2470        ///
      str    MARITALSTATUS_X           2471        ///
      byte   MDC                       2472-2473   ///
      byte   MDC_NoPOA                 2474-2475   ///
      long   MDNUM1_R                  2476-2484   ///
      long   MDNUM2_R                  2485-2493   ///
      long   MDNUM3_R                  2494-2502   ///
      long   MDNUM4_R                  2503-2511   ///
      byte   MEDINCSTQ                 2512-2513   ///
      int    NCPT                      2514-2517   ///
      double OS_TIME                   2518-2528   ///
      byte   PAY1                      2529-2530   ///
      str    PAY1_X                    2531-2534   ///
      byte   PAY2                      2535-2536   ///
      str    PAY2_X                    2537-2540   ///
      byte   PAY3                      2541-2542   ///
      str    PAY3_X                    2543-2546   ///
      int    PL_CBSA                   2547-2549   ///
      byte   PL_NCHS                   2550-2551   ///
      byte   PL_RUCC                   2552-2553   ///
      byte   PL_UIC                    2554-2555   ///
      byte   PL_UR_CAT4                2556-2557   ///
      byte   POA_Disch_Edit1           2558-2559   ///
      byte   POA_Disch_Edit2           2560-2561   ///
      byte   POA_Hosp_Edit1            2562-2563   ///
      byte   POA_Hosp_Edit2            2564-2565   ///
      byte   POA_Hosp_Edit3            2566-2567   ///
      double POA_Hosp_Edit3_Value      2568-2575   ///
      long   PRDAY1                    2576-2580   ///
      long   PRDAY2                    2581-2585   ///
      long   PRDAY3                    2586-2590   ///
      long   PRDAY4                    2591-2595   ///
      long   PRDAY5                    2596-2600   ///
      long   PRDAY6                    2601-2605   ///
      long   PRDAY7                    2606-2610   ///
      long   PRDAY8                    2611-2615   ///
      long   PRDAY9                    2616-2620   ///
      long   PRDAY10                   2621-2625   ///
      long   PRDAY11                   2626-2630   ///
      long   PRDAY12                   2631-2635   ///
      long   PRDAY13                   2636-2640   ///
      long   PRDAY14                   2641-2645   ///
      long   PRDAY15                   2646-2650   ///
      long   PRDAY16                   2651-2655   ///
      long   PRDAY17                   2656-2660   ///
      long   PRDAY18                   2661-2665   ///
      long   PRDAY19                   2666-2670   ///
      long   PRDAY20                   2671-2675   ///
      long   PRDAY21                   2676-2680   ///
      long   PRDAY22                   2681-2685   ///
      long   PRDAY23                   2686-2690   ///
      long   PRDAY24                   2691-2695   ///
      long   PRDAY25                   2696-2700   ///
      long   PRDAY26                   2701-2705   ///
      long   PRDAY27                   2706-2710   ///
      long   PRDAY28                   2711-2715   ///
      long   PRDAY29                   2716-2720   ///
      long   PRDAY30                   2721-2725   ///
      long   PRDAY31                   2726-2730   ///
      long   PRDAY32                   2731-2735   ///
      long   PRDAY33                   2736-2740   ///
      long   PRDAY34                   2741-2745   ///
      long   PRDAY35                   2746-2750   ///
      long   PRDAY36                   2751-2755   ///
      long   PRDAY37                   2756-2760   ///
      long   PRDAY38                   2761-2765   ///
      long   PRDAY39                   2766-2770   ///
      long   PRDAY40                   2771-2775   ///
      long   PRDAY41                   2776-2780   ///
      long   PRDAY42                   2781-2785   ///
      long   PRDAY43                   2786-2790   ///
      long   PRDAY44                   2791-2795   ///
      long   PRDAY45                   2796-2800   ///
      long   PRDAY46                   2801-2805   ///
      long   PRDAY47                   2806-2810   ///
      long   PRDAY48                   2811-2815   ///
      long   PRDAY49                   2816-2820   ///
      long   PRDAY50                   2821-2825   ///
      long   PRDAY51                   2826-2830   ///
      long   PRDAY52                   2831-2835   ///
      long   PRDAY53                   2836-2840   ///
      long   PRDAY54                   2841-2845   ///
      long   PRDAY55                   2846-2850   ///
      long   PRDAY56                   2851-2855   ///
      long   PRDAY57                   2856-2860   ///
      long   PRDAY58                   2861-2865   ///
      long   PRDAY59                   2866-2870   ///
      long   PRDAY60                   2871-2875   ///
      long   PRDAY61                   2876-2880   ///
      long   PRDAY62                   2881-2885   ///
      long   PRDAY63                   2886-2890   ///
      long   PRDAY64                   2891-2895   ///
      long   PRDAY65                   2896-2900   ///
      long   PRDAY66                   2901-2905   ///
      long   PRDAY67                   2906-2910   ///
      long   PRDAY68                   2911-2915   ///
      long   PRDAY69                   2916-2920   ///
      long   PRDAY70                   2921-2925   ///
      long   PRDAY71                   2926-2930   ///
      long   PRDAY72                   2931-2935   ///
      long   PRDAY73                   2936-2940   ///
      long   PRDAY74                   2941-2945   ///
      long   PRDAY75                   2946-2950   ///
      long   PRDAY76                   2951-2955   ///
      long   PRDAY77                   2956-2960   ///
      long   PRDAY78                   2961-2965   ///
      long   PRDAY79                   2966-2970   ///
      long   PRDAY80                   2971-2975   ///
      long   PRDAY81                   2976-2980   ///
      long   PRDAY82                   2981-2985   ///
      long   PRDAY83                   2986-2990   ///
      long   PRDAY84                   2991-2995   ///
      long   PRDAY85                   2996-3000   ///
      long   PRDAY86                   3001-3005   ///
      long   PRDAY87                   3006-3010   ///
      long   PRDAY88                   3011-3015   ///
      long   PRDAY89                   3016-3020   ///
      long   PRDAY90                   3021-3025   ///
      long   PRDAY91                   3026-3030   ///
      long   PRDAY92                   3031-3035   ///
      long   PRDAY93                   3036-3040   ///
      long   PRDAY94                   3041-3045   ///
      long   PRDAY95                   3046-3050   ///
      long   PRDAY96                   3051-3055   ///
      long   PRDAY97                   3056-3060   ///
      long   PRDAY98                   3061-3065   ///
      long   PRDAY99                   3066-3070   ///
      long   PRDAY100                  3071-3075   ///
      str    PSTATE                    3076-3077   ///
      str    PSTATE_GEO                3078-3079   ///
      long   PSTCO                     3080-3084   ///
      long   PSTCO_GEO                 3085-3089   ///
      str    PointOfOriginUB04         3090        ///
      str    PointOfOrigin_X           3091        ///
      str    PrimLang                  3092-3094   ///
      byte   RACE                      3095-3096   ///
      byte   RACE_EDIT                 3097-3098   ///
      str    RACE_X                    3099        ///
      double TOTCHG                    3100-3109   ///
      double TOTCHG_X                  3110-3124   ///
      byte   TRAN_IN                   3125-3126   ///
      byte   TRAN_OUT                  3127-3128   ///
      long   VisitLink                 3129-3137   ///
      int    YEAR                      3138-3141   ///
      str    ZIP                       3142-3146   ///
      str    ZIP3                      3147-3149   ///
      int    ZIPINC_QRTL               3150-3152   ///
      long   HOSPID                    3153-3157   ///
      int    AYEAR                     3158-3161   ///
      byte   BMONTH                    3162-3163   ///
      int    BYEAR                     3164-3167   ///
      byte   PRMONTH1                  3168-3169   ///
      byte   PRMONTH2                  3170-3171   ///
      byte   PRMONTH3                  3172-3173   ///
      byte   PRMONTH4                  3174-3175   ///
      byte   PRMONTH5                  3176-3177   ///
      byte   PRMONTH6                  3178-3179   ///
      byte   PRMONTH7                  3180-3181   ///
      byte   PRMONTH8                  3182-3183   ///
      byte   PRMONTH9                  3184-3185   ///
      byte   PRMONTH10                 3186-3187   ///
      byte   PRMONTH11                 3188-3189   ///
      byte   PRMONTH12                 3190-3191   ///
      byte   PRMONTH13                 3192-3193   ///
      byte   PRMONTH14                 3194-3195   ///
      byte   PRMONTH15                 3196-3197   ///
      byte   PRMONTH16                 3198-3199   ///
      byte   PRMONTH17                 3200-3201   ///
      byte   PRMONTH18                 3202-3203   ///
      byte   PRMONTH19                 3204-3205   ///
      byte   PRMONTH20                 3206-3207   ///
      byte   PRMONTH21                 3208-3209   ///
      byte   PRMONTH22                 3210-3211   ///
      byte   PRMONTH23                 3212-3213   ///
      byte   PRMONTH24                 3214-3215   ///
      byte   PRMONTH25                 3216-3217   ///
      byte   PRMONTH26                 3218-3219   ///
      byte   PRMONTH27                 3220-3221   ///
      byte   PRMONTH28                 3222-3223   ///
      byte   PRMONTH29                 3224-3225   ///
      byte   PRMONTH30                 3226-3227   ///
      byte   PRMONTH31                 3228-3229   ///
      byte   PRMONTH32                 3230-3231   ///
      byte   PRMONTH33                 3232-3233   ///
      byte   PRMONTH34                 3234-3235   ///
      byte   PRMONTH35                 3236-3237   ///
      byte   PRMONTH36                 3238-3239   ///
      byte   PRMONTH37                 3240-3241   ///
      byte   PRMONTH38                 3242-3243   ///
      byte   PRMONTH39                 3244-3245   ///
      byte   PRMONTH40                 3246-3247   ///
      byte   PRMONTH41                 3248-3249   ///
      byte   PRMONTH42                 3250-3251   ///
      byte   PRMONTH43                 3252-3253   ///
      byte   PRMONTH44                 3254-3255   ///
      byte   PRMONTH45                 3256-3257   ///
      byte   PRMONTH46                 3258-3259   ///
      byte   PRMONTH47                 3260-3261   ///
      byte   PRMONTH48                 3262-3263   ///
      byte   PRMONTH49                 3264-3265   ///
      byte   PRMONTH50                 3266-3267   ///
      byte   PRMONTH51                 3268-3269   ///
      byte   PRMONTH52                 3270-3271   ///
      byte   PRMONTH53                 3272-3273   ///
      byte   PRMONTH54                 3274-3275   ///
      byte   PRMONTH55                 3276-3277   ///
      byte   PRMONTH56                 3278-3279   ///
      byte   PRMONTH57                 3280-3281   ///
      byte   PRMONTH58                 3282-3283   ///
      byte   PRMONTH59                 3284-3285   ///
      byte   PRMONTH60                 3286-3287   ///
      byte   PRMONTH61                 3288-3289   ///
      byte   PRMONTH62                 3290-3291   ///
      byte   PRMONTH63                 3292-3293   ///
      byte   PRMONTH64                 3294-3295   ///
      byte   PRMONTH65                 3296-3297   ///
      byte   PRMONTH66                 3298-3299   ///
      byte   PRMONTH67                 3300-3301   ///
      byte   PRMONTH68                 3302-3303   ///
      byte   PRMONTH69                 3304-3305   ///
      byte   PRMONTH70                 3306-3307   ///
      byte   PRMONTH71                 3308-3309   ///
      byte   PRMONTH72                 3310-3311   ///
      byte   PRMONTH73                 3312-3313   ///
      byte   PRMONTH74                 3314-3315   ///
      byte   PRMONTH75                 3316-3317   ///
      byte   PRMONTH76                 3318-3319   ///
      byte   PRMONTH77                 3320-3321   ///
      byte   PRMONTH78                 3322-3323   ///
      byte   PRMONTH79                 3324-3325   ///
      byte   PRMONTH80                 3326-3327   ///
      byte   PRMONTH81                 3328-3329   ///
      byte   PRMONTH82                 3330-3331   ///
      byte   PRMONTH83                 3332-3333   ///
      byte   PRMONTH84                 3334-3335   ///
      byte   PRMONTH85                 3336-3337   ///
      byte   PRMONTH86                 3338-3339   ///
      byte   PRMONTH87                 3340-3341   ///
      byte   PRMONTH88                 3342-3343   ///
      byte   PRMONTH89                 3344-3345   ///
      byte   PRMONTH90                 3346-3347   ///
      byte   PRMONTH91                 3348-3349   ///
      byte   PRMONTH92                 3350-3351   ///
      byte   PRMONTH93                 3352-3353   ///
      byte   PRMONTH94                 3354-3355   ///
      byte   PRMONTH95                 3356-3357   ///
      byte   PRMONTH96                 3358-3359   ///
      byte   PRMONTH97                 3360-3361   ///
      byte   PRMONTH98                 3362-3363   ///
      byte   PRMONTH99                 3364-3365   ///
      byte   PRMONTH100                3366-3367   ///
      int    PRYEAR1                   3368-3371   ///
      int    PRYEAR2                   3372-3375   ///
      int    PRYEAR3                   3376-3379   ///
      int    PRYEAR4                   3380-3383   ///
      int    PRYEAR5                   3384-3387   ///
      int    PRYEAR6                   3388-3391   ///
      int    PRYEAR7                   3392-3395   ///
      int    PRYEAR8                   3396-3399   ///
      int    PRYEAR9                   3400-3403   ///
      int    PRYEAR10                  3404-3407   ///
      int    PRYEAR11                  3408-3411   ///
      int    PRYEAR12                  3412-3415   ///
      int    PRYEAR13                  3416-3419   ///
      int    PRYEAR14                  3420-3423   ///
      int    PRYEAR15                  3424-3427   ///
      int    PRYEAR16                  3428-3431   ///
      int    PRYEAR17                  3432-3435   ///
      int    PRYEAR18                  3436-3439   ///
      int    PRYEAR19                  3440-3443   ///
      int    PRYEAR20                  3444-3447   ///
      int    PRYEAR21                  3448-3451   ///
      int    PRYEAR22                  3452-3455   ///
      int    PRYEAR23                  3456-3459   ///
      int    PRYEAR24                  3460-3463   ///
      int    PRYEAR25                  3464-3467   ///
      int    PRYEAR26                  3468-3471   ///
      int    PRYEAR27                  3472-3475   ///
      int    PRYEAR28                  3476-3479   ///
      int    PRYEAR29                  3480-3483   ///
      int    PRYEAR30                  3484-3487   ///
      int    PRYEAR31                  3488-3491   ///
      int    PRYEAR32                  3492-3495   ///
      int    PRYEAR33                  3496-3499   ///
      int    PRYEAR34                  3500-3503   ///
      int    PRYEAR35                  3504-3507   ///
      int    PRYEAR36                  3508-3511   ///
      int    PRYEAR37                  3512-3515   ///
      int    PRYEAR38                  3516-3519   ///
      int    PRYEAR39                  3520-3523   ///
      int    PRYEAR40                  3524-3527   ///
      int    PRYEAR41                  3528-3531   ///
      int    PRYEAR42                  3532-3535   ///
      int    PRYEAR43                  3536-3539   ///
      int    PRYEAR44                  3540-3543   ///
      int    PRYEAR45                  3544-3547   ///
      int    PRYEAR46                  3548-3551   ///
      int    PRYEAR47                  3552-3555   ///
      int    PRYEAR48                  3556-3559   ///
      int    PRYEAR49                  3560-3563   ///
      int    PRYEAR50                  3564-3567   ///
      int    PRYEAR51                  3568-3571   ///
      int    PRYEAR52                  3572-3575   ///
      int    PRYEAR53                  3576-3579   ///
      int    PRYEAR54                  3580-3583   ///
      int    PRYEAR55                  3584-3587   ///
      int    PRYEAR56                  3588-3591   ///
      int    PRYEAR57                  3592-3595   ///
      int    PRYEAR58                  3596-3599   ///
      int    PRYEAR59                  3600-3603   ///
      int    PRYEAR60                  3604-3607   ///
      int    PRYEAR61                  3608-3611   ///
      int    PRYEAR62                  3612-3615   ///
      int    PRYEAR63                  3616-3619   ///
      int    PRYEAR64                  3620-3623   ///
      int    PRYEAR65                  3624-3627   ///
      int    PRYEAR66                  3628-3631   ///
      int    PRYEAR67                  3632-3635   ///
      int    PRYEAR68                  3636-3639   ///
      int    PRYEAR69                  3640-3643   ///
      int    PRYEAR70                  3644-3647   ///
      int    PRYEAR71                  3648-3651   ///
      int    PRYEAR72                  3652-3655   ///
      int    PRYEAR73                  3656-3659   ///
      int    PRYEAR74                  3660-3663   ///
      int    PRYEAR75                  3664-3667   ///
      int    PRYEAR76                  3668-3671   ///
      int    PRYEAR77                  3672-3675   ///
      int    PRYEAR78                  3676-3679   ///
      int    PRYEAR79                  3680-3683   ///
      int    PRYEAR80                  3684-3687   ///
      int    PRYEAR81                  3688-3691   ///
      int    PRYEAR82                  3692-3695   ///
      int    PRYEAR83                  3696-3699   ///
      int    PRYEAR84                  3700-3703   ///
      int    PRYEAR85                  3704-3707   ///
      int    PRYEAR86                  3708-3711   ///
      int    PRYEAR87                  3712-3715   ///
      int    PRYEAR88                  3716-3719   ///
      int    PRYEAR89                  3720-3723   ///
      int    PRYEAR90                  3724-3727   ///
      int    PRYEAR91                  3728-3731   ///
      int    PRYEAR92                  3732-3735   ///
      int    PRYEAR93                  3736-3739   ///
      int    PRYEAR94                  3740-3743   ///
      int    PRYEAR95                  3744-3747   ///
      int    PRYEAR96                  3748-3751   ///
      int    PRYEAR97                  3752-3755   ///
      int    PRYEAR98                  3756-3759   ///
      int    PRYEAR99                  3760-3763   ///
      int    PRYEAR100                 3764-3767   ///
      using  "GA_SID_2019_CORE.ASC"

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
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRGVER                   "DRG grouper version used on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
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
label var DXPOA101                 "Diagnosis 101, present on admission indicator"
label var DXPOA102                 "Diagnosis 102, present on admission indicator"
label var DXPOA103                 "Diagnosis 103, present on admission indicator"
label var DXPOA104                 "Diagnosis 104, present on admission indicator"
label var DXPOA105                 "Diagnosis 105, present on admission indicator"
label var DXPOA106                 "Diagnosis 106, present on admission indicator"
label var DXPOA107                 "Diagnosis 107, present on admission indicator"
label var DXPOA108                 "Diagnosis 108, present on admission indicator"
label var DaysToEvent              "Days from 'start date' to admission"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPST                   "Hospital state postal code"
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
label var I10_DX101                "ICD-10-CM Diagnosis 101"
label var I10_DX102                "ICD-10-CM Diagnosis 102"
label var I10_DX103                "ICD-10-CM Diagnosis 103"
label var I10_DX104                "ICD-10-CM Diagnosis 104"
label var I10_DX105                "ICD-10-CM Diagnosis 105"
label var I10_DX106                "ICD-10-CM Diagnosis 106"
label var I10_DX107                "ICD-10-CM Diagnosis 107"
label var I10_DX108                "ICD-10-CM Diagnosis 108"
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
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MARITALSTATUS_X          "Patient's marital status (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
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
label var PRDAY51                  "Number of days from admission to I10_PR51"
label var PRDAY52                  "Number of days from admission to I10_PR52"
label var PRDAY53                  "Number of days from admission to I10_PR53"
label var PRDAY54                  "Number of days from admission to I10_PR54"
label var PRDAY55                  "Number of days from admission to I10_PR55"
label var PRDAY56                  "Number of days from admission to I10_PR56"
label var PRDAY57                  "Number of days from admission to I10_PR57"
label var PRDAY58                  "Number of days from admission to I10_PR58"
label var PRDAY59                  "Number of days from admission to I10_PR59"
label var PRDAY60                  "Number of days from admission to I10_PR60"
label var PRDAY61                  "Number of days from admission to I10_PR61"
label var PRDAY62                  "Number of days from admission to I10_PR62"
label var PRDAY63                  "Number of days from admission to I10_PR63"
label var PRDAY64                  "Number of days from admission to I10_PR64"
label var PRDAY65                  "Number of days from admission to I10_PR65"
label var PRDAY66                  "Number of days from admission to I10_PR66"
label var PRDAY67                  "Number of days from admission to I10_PR67"
label var PRDAY68                  "Number of days from admission to I10_PR68"
label var PRDAY69                  "Number of days from admission to I10_PR69"
label var PRDAY70                  "Number of days from admission to I10_PR70"
label var PRDAY71                  "Number of days from admission to I10_PR71"
label var PRDAY72                  "Number of days from admission to I10_PR72"
label var PRDAY73                  "Number of days from admission to I10_PR73"
label var PRDAY74                  "Number of days from admission to I10_PR74"
label var PRDAY75                  "Number of days from admission to I10_PR75"
label var PRDAY76                  "Number of days from admission to I10_PR76"
label var PRDAY77                  "Number of days from admission to I10_PR77"
label var PRDAY78                  "Number of days from admission to I10_PR78"
label var PRDAY79                  "Number of days from admission to I10_PR79"
label var PRDAY80                  "Number of days from admission to I10_PR80"
label var PRDAY81                  "Number of days from admission to I10_PR81"
label var PRDAY82                  "Number of days from admission to I10_PR82"
label var PRDAY83                  "Number of days from admission to I10_PR83"
label var PRDAY84                  "Number of days from admission to I10_PR84"
label var PRDAY85                  "Number of days from admission to I10_PR85"
label var PRDAY86                  "Number of days from admission to I10_PR86"
label var PRDAY87                  "Number of days from admission to I10_PR87"
label var PRDAY88                  "Number of days from admission to I10_PR88"
label var PRDAY89                  "Number of days from admission to I10_PR89"
label var PRDAY90                  "Number of days from admission to I10_PR90"
label var PRDAY91                  "Number of days from admission to I10_PR91"
label var PRDAY92                  "Number of days from admission to I10_PR92"
label var PRDAY93                  "Number of days from admission to I10_PR93"
label var PRDAY94                  "Number of days from admission to I10_PR94"
label var PRDAY95                  "Number of days from admission to I10_PR95"
label var PRDAY96                  "Number of days from admission to I10_PR96"
label var PRDAY97                  "Number of days from admission to I10_PR97"
label var PRDAY98                  "Number of days from admission to I10_PR98"
label var PRDAY99                  "Number of days from admission to I10_PR99"
label var PRDAY100                 "Number of days from admission to I10_PR100"
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PrimLang                 "Primary language of patient"
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
label var PRMONTH51                "Month of procedure 51"
label var PRMONTH52                "Month of procedure 52"
label var PRMONTH53                "Month of procedure 53"
label var PRMONTH54                "Month of procedure 54"
label var PRMONTH55                "Month of procedure 55"
label var PRMONTH56                "Month of procedure 56"
label var PRMONTH57                "Month of procedure 57"
label var PRMONTH58                "Month of procedure 58"
label var PRMONTH59                "Month of procedure 59"
label var PRMONTH60                "Month of procedure 60"
label var PRMONTH61                "Month of procedure 61"
label var PRMONTH62                "Month of procedure 62"
label var PRMONTH63                "Month of procedure 63"
label var PRMONTH64                "Month of procedure 64"
label var PRMONTH65                "Month of procedure 65"
label var PRMONTH66                "Month of procedure 66"
label var PRMONTH67                "Month of procedure 67"
label var PRMONTH68                "Month of procedure 68"
label var PRMONTH69                "Month of procedure 69"
label var PRMONTH70                "Month of procedure 70"
label var PRMONTH71                "Month of procedure 71"
label var PRMONTH72                "Month of procedure 72"
label var PRMONTH73                "Month of procedure 73"
label var PRMONTH74                "Month of procedure 74"
label var PRMONTH75                "Month of procedure 75"
label var PRMONTH76                "Month of procedure 76"
label var PRMONTH77                "Month of procedure 77"
label var PRMONTH78                "Month of procedure 78"
label var PRMONTH79                "Month of procedure 79"
label var PRMONTH80                "Month of procedure 80"
label var PRMONTH81                "Month of procedure 81"
label var PRMONTH82                "Month of procedure 82"
label var PRMONTH83                "Month of procedure 83"
label var PRMONTH84                "Month of procedure 84"
label var PRMONTH85                "Month of procedure 85"
label var PRMONTH86                "Month of procedure 86"
label var PRMONTH87                "Month of procedure 87"
label var PRMONTH88                "Month of procedure 88"
label var PRMONTH89                "Month of procedure 89"
label var PRMONTH90                "Month of procedure 90"
label var PRMONTH91                "Month of procedure 91"
label var PRMONTH92                "Month of procedure 92"
label var PRMONTH93                "Month of procedure 93"
label var PRMONTH94                "Month of procedure 94"
label var PRMONTH95                "Month of procedure 95"
label var PRMONTH96                "Month of procedure 96"
label var PRMONTH97                "Month of procedure 97"
label var PRMONTH98                "Month of procedure 98"
label var PRMONTH99                "Month of procedure 99"
label var PRMONTH100               "Month of procedure 100"
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
label var PRYEAR51                 "Year of procedure 51"
label var PRYEAR52                 "Year of procedure 52"
label var PRYEAR53                 "Year of procedure 53"
label var PRYEAR54                 "Year of procedure 54"
label var PRYEAR55                 "Year of procedure 55"
label var PRYEAR56                 "Year of procedure 56"
label var PRYEAR57                 "Year of procedure 57"
label var PRYEAR58                 "Year of procedure 58"
label var PRYEAR59                 "Year of procedure 59"
label var PRYEAR60                 "Year of procedure 60"
label var PRYEAR61                 "Year of procedure 61"
label var PRYEAR62                 "Year of procedure 62"
label var PRYEAR63                 "Year of procedure 63"
label var PRYEAR64                 "Year of procedure 64"
label var PRYEAR65                 "Year of procedure 65"
label var PRYEAR66                 "Year of procedure 66"
label var PRYEAR67                 "Year of procedure 67"
label var PRYEAR68                 "Year of procedure 68"
label var PRYEAR69                 "Year of procedure 69"
label var PRYEAR70                 "Year of procedure 70"
label var PRYEAR71                 "Year of procedure 71"
label var PRYEAR72                 "Year of procedure 72"
label var PRYEAR73                 "Year of procedure 73"
label var PRYEAR74                 "Year of procedure 74"
label var PRYEAR75                 "Year of procedure 75"
label var PRYEAR76                 "Year of procedure 76"
label var PRYEAR77                 "Year of procedure 77"
label var PRYEAR78                 "Year of procedure 78"
label var PRYEAR79                 "Year of procedure 79"
label var PRYEAR80                 "Year of procedure 80"
label var PRYEAR81                 "Year of procedure 81"
label var PRYEAR82                 "Year of procedure 82"
label var PRYEAR83                 "Year of procedure 83"
label var PRYEAR84                 "Year of procedure 84"
label var PRYEAR85                 "Year of procedure 85"
label var PRYEAR86                 "Year of procedure 86"
label var PRYEAR87                 "Year of procedure 87"
label var PRYEAR88                 "Year of procedure 88"
label var PRYEAR89                 "Year of procedure 89"
label var PRYEAR90                 "Year of procedure 90"
label var PRYEAR91                 "Year of procedure 91"
label var PRYEAR92                 "Year of procedure 92"
label var PRYEAR93                 "Year of procedure 93"
label var PRYEAR94                 "Year of procedure 94"
label var PRYEAR95                 "Year of procedure 95"
label var PRYEAR96                 "Year of procedure 96"
label var PRYEAR97                 "Year of procedure 97"
label var PRYEAR98                 "Year of procedure 98"
label var PRYEAR99                 "Year of procedure 99"
label var PRYEAR100                "Year of procedure 100"

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
recode PRDAY51                   (-9999 -8888 -6666=.)
recode PRDAY52                   (-9999 -8888 -6666=.)
recode PRDAY53                   (-9999 -8888 -6666=.)
recode PRDAY54                   (-9999 -8888 -6666=.)
recode PRDAY55                   (-9999 -8888 -6666=.)
recode PRDAY56                   (-9999 -8888 -6666=.)
recode PRDAY57                   (-9999 -8888 -6666=.)
recode PRDAY58                   (-9999 -8888 -6666=.)
recode PRDAY59                   (-9999 -8888 -6666=.)
recode PRDAY60                   (-9999 -8888 -6666=.)
recode PRDAY61                   (-9999 -8888 -6666=.)
recode PRDAY62                   (-9999 -8888 -6666=.)
recode PRDAY63                   (-9999 -8888 -6666=.)
recode PRDAY64                   (-9999 -8888 -6666=.)
recode PRDAY65                   (-9999 -8888 -6666=.)
recode PRDAY66                   (-9999 -8888 -6666=.)
recode PRDAY67                   (-9999 -8888 -6666=.)
recode PRDAY68                   (-9999 -8888 -6666=.)
recode PRDAY69                   (-9999 -8888 -6666=.)
recode PRDAY70                   (-9999 -8888 -6666=.)
recode PRDAY71                   (-9999 -8888 -6666=.)
recode PRDAY72                   (-9999 -8888 -6666=.)
recode PRDAY73                   (-9999 -8888 -6666=.)
recode PRDAY74                   (-9999 -8888 -6666=.)
recode PRDAY75                   (-9999 -8888 -6666=.)
recode PRDAY76                   (-9999 -8888 -6666=.)
recode PRDAY77                   (-9999 -8888 -6666=.)
recode PRDAY78                   (-9999 -8888 -6666=.)
recode PRDAY79                   (-9999 -8888 -6666=.)
recode PRDAY80                   (-9999 -8888 -6666=.)
recode PRDAY81                   (-9999 -8888 -6666=.)
recode PRDAY82                   (-9999 -8888 -6666=.)
recode PRDAY83                   (-9999 -8888 -6666=.)
recode PRDAY84                   (-9999 -8888 -6666=.)
recode PRDAY85                   (-9999 -8888 -6666=.)
recode PRDAY86                   (-9999 -8888 -6666=.)
recode PRDAY87                   (-9999 -8888 -6666=.)
recode PRDAY88                   (-9999 -8888 -6666=.)
recode PRDAY89                   (-9999 -8888 -6666=.)
recode PRDAY90                   (-9999 -8888 -6666=.)
recode PRDAY91                   (-9999 -8888 -6666=.)
recode PRDAY92                   (-9999 -8888 -6666=.)
recode PRDAY93                   (-9999 -8888 -6666=.)
recode PRDAY94                   (-9999 -8888 -6666=.)
recode PRDAY95                   (-9999 -8888 -6666=.)
recode PRDAY96                   (-9999 -8888 -6666=.)
recode PRDAY97                   (-9999 -8888 -6666=.)
recode PRDAY98                   (-9999 -8888 -6666=.)
recode PRDAY99                   (-9999 -8888 -6666=.)
recode PRDAY100                  (-9999 -8888 -6666=.)
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
recode PRMONTH51                 (-9 -8 -6 -5=.)
recode PRMONTH52                 (-9 -8 -6 -5=.)
recode PRMONTH53                 (-9 -8 -6 -5=.)
recode PRMONTH54                 (-9 -8 -6 -5=.)
recode PRMONTH55                 (-9 -8 -6 -5=.)
recode PRMONTH56                 (-9 -8 -6 -5=.)
recode PRMONTH57                 (-9 -8 -6 -5=.)
recode PRMONTH58                 (-9 -8 -6 -5=.)
recode PRMONTH59                 (-9 -8 -6 -5=.)
recode PRMONTH60                 (-9 -8 -6 -5=.)
recode PRMONTH61                 (-9 -8 -6 -5=.)
recode PRMONTH62                 (-9 -8 -6 -5=.)
recode PRMONTH63                 (-9 -8 -6 -5=.)
recode PRMONTH64                 (-9 -8 -6 -5=.)
recode PRMONTH65                 (-9 -8 -6 -5=.)
recode PRMONTH66                 (-9 -8 -6 -5=.)
recode PRMONTH67                 (-9 -8 -6 -5=.)
recode PRMONTH68                 (-9 -8 -6 -5=.)
recode PRMONTH69                 (-9 -8 -6 -5=.)
recode PRMONTH70                 (-9 -8 -6 -5=.)
recode PRMONTH71                 (-9 -8 -6 -5=.)
recode PRMONTH72                 (-9 -8 -6 -5=.)
recode PRMONTH73                 (-9 -8 -6 -5=.)
recode PRMONTH74                 (-9 -8 -6 -5=.)
recode PRMONTH75                 (-9 -8 -6 -5=.)
recode PRMONTH76                 (-9 -8 -6 -5=.)
recode PRMONTH77                 (-9 -8 -6 -5=.)
recode PRMONTH78                 (-9 -8 -6 -5=.)
recode PRMONTH79                 (-9 -8 -6 -5=.)
recode PRMONTH80                 (-9 -8 -6 -5=.)
recode PRMONTH81                 (-9 -8 -6 -5=.)
recode PRMONTH82                 (-9 -8 -6 -5=.)
recode PRMONTH83                 (-9 -8 -6 -5=.)
recode PRMONTH84                 (-9 -8 -6 -5=.)
recode PRMONTH85                 (-9 -8 -6 -5=.)
recode PRMONTH86                 (-9 -8 -6 -5=.)
recode PRMONTH87                 (-9 -8 -6 -5=.)
recode PRMONTH88                 (-9 -8 -6 -5=.)
recode PRMONTH89                 (-9 -8 -6 -5=.)
recode PRMONTH90                 (-9 -8 -6 -5=.)
recode PRMONTH91                 (-9 -8 -6 -5=.)
recode PRMONTH92                 (-9 -8 -6 -5=.)
recode PRMONTH93                 (-9 -8 -6 -5=.)
recode PRMONTH94                 (-9 -8 -6 -5=.)
recode PRMONTH95                 (-9 -8 -6 -5=.)
recode PRMONTH96                 (-9 -8 -6 -5=.)
recode PRMONTH97                 (-9 -8 -6 -5=.)
recode PRMONTH98                 (-9 -8 -6 -5=.)
recode PRMONTH99                 (-9 -8 -6 -5=.)
recode PRMONTH100                (-9 -8 -6 -5=.)
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
recode PRYEAR51                  (-999 -888 -666=.)
recode PRYEAR52                  (-999 -888 -666=.)
recode PRYEAR53                  (-999 -888 -666=.)
recode PRYEAR54                  (-999 -888 -666=.)
recode PRYEAR55                  (-999 -888 -666=.)
recode PRYEAR56                  (-999 -888 -666=.)
recode PRYEAR57                  (-999 -888 -666=.)
recode PRYEAR58                  (-999 -888 -666=.)
recode PRYEAR59                  (-999 -888 -666=.)
recode PRYEAR60                  (-999 -888 -666=.)
recode PRYEAR61                  (-999 -888 -666=.)
recode PRYEAR62                  (-999 -888 -666=.)
recode PRYEAR63                  (-999 -888 -666=.)
recode PRYEAR64                  (-999 -888 -666=.)
recode PRYEAR65                  (-999 -888 -666=.)
recode PRYEAR66                  (-999 -888 -666=.)
recode PRYEAR67                  (-999 -888 -666=.)
recode PRYEAR68                  (-999 -888 -666=.)
recode PRYEAR69                  (-999 -888 -666=.)
recode PRYEAR70                  (-999 -888 -666=.)
recode PRYEAR71                  (-999 -888 -666=.)
recode PRYEAR72                  (-999 -888 -666=.)
recode PRYEAR73                  (-999 -888 -666=.)
recode PRYEAR74                  (-999 -888 -666=.)
recode PRYEAR75                  (-999 -888 -666=.)
recode PRYEAR76                  (-999 -888 -666=.)
recode PRYEAR77                  (-999 -888 -666=.)
recode PRYEAR78                  (-999 -888 -666=.)
recode PRYEAR79                  (-999 -888 -666=.)
recode PRYEAR80                  (-999 -888 -666=.)
recode PRYEAR81                  (-999 -888 -666=.)
recode PRYEAR82                  (-999 -888 -666=.)
recode PRYEAR83                  (-999 -888 -666=.)
recode PRYEAR84                  (-999 -888 -666=.)
recode PRYEAR85                  (-999 -888 -666=.)
recode PRYEAR86                  (-999 -888 -666=.)
recode PRYEAR87                  (-999 -888 -666=.)
recode PRYEAR88                  (-999 -888 -666=.)
recode PRYEAR89                  (-999 -888 -666=.)
recode PRYEAR90                  (-999 -888 -666=.)
recode PRYEAR91                  (-999 -888 -666=.)
recode PRYEAR92                  (-999 -888 -666=.)
recode PRYEAR93                  (-999 -888 -666=.)
recode PRYEAR94                  (-999 -888 -666=.)
recode PRYEAR95                  (-999 -888 -666=.)
recode PRYEAR96                  (-999 -888 -666=.)
recode PRYEAR97                  (-999 -888 -666=.)
recode PRYEAR98                  (-999 -888 -666=.)
recode PRYEAR99                  (-999 -888 -666=.)
recode PRYEAR100                 (-999 -888 -666=.)

save "GA_SID_2019_CORE.dta", replace
