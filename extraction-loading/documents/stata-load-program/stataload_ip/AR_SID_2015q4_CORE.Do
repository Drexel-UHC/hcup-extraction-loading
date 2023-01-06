/*****************************************************************************
* Creation Date: 06/03/2020   
* AR_SID_2015q4_CORE.Do
* This program will load the 2015 AR ASCII CORE File into Stata.
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
      int    CPTCCS1                    582- 584   ///
      int    CPTCCS2                    585- 587   ///
      int    CPTCCS3                    588- 590   ///
      int    CPTCCS4                    591- 593   ///
      int    CPTCCS5                    594- 596   ///
      int    CPTCCS6                    597- 599   ///
      int    CPTCCS7                    600- 602   ///
      int    CPTCCS8                    603- 605   ///
      int    CPTCCS9                    606- 608   ///
      int    CPTCCS10                   609- 611   ///
      int    CPTCCS11                   612- 614   ///
      int    CPTCCS12                   615- 617   ///
      int    CPTCCS13                   618- 620   ///
      int    CPTCCS14                   621- 623   ///
      int    CPTCCS15                   624- 626   ///
      int    CPTCCS16                   627- 629   ///
      int    CPTCCS17                   630- 632   ///
      int    CPTCCS18                   633- 635   ///
      int    CPTCCS19                   636- 638   ///
      int    CPTCCS20                   639- 641   ///
      int    CPTCCS21                   642- 644   ///
      int    CPTCCS22                   645- 647   ///
      int    CPTCCS23                   648- 650   ///
      int    CPTCCS24                   651- 653   ///
      int    CPTCCS25                   654- 656   ///
      int    CPTCCS26                   657- 659   ///
      int    CPTCCS27                   660- 662   ///
      int    CPTCCS28                   663- 665   ///
      int    CPTCCS29                   666- 668   ///
      int    CPTCCS30                   669- 671   ///
      int    CPTCCS31                   672- 674   ///
      int    CPTCCS32                   675- 677   ///
      int    CPTCCS33                   678- 680   ///
      int    CPTCCS34                   681- 683   ///
      int    CPTCCS35                   684- 686   ///
      int    CPTCCS36                   687- 689   ///
      int    CPTCCS37                   690- 692   ///
      int    CPTCCS38                   693- 695   ///
      int    CPTCCS39                   696- 698   ///
      int    CPTCCS40                   699- 701   ///
      int    CPTCCS41                   702- 704   ///
      int    CPTCCS42                   705- 707   ///
      int    CPTCCS43                   708- 710   ///
      int    CPTCCS44                   711- 713   ///
      int    CPTCCS45                   714- 716   ///
      int    CPTCCS46                   717- 719   ///
      int    CPTCCS47                   720- 722   ///
      int    CPTCCS48                   723- 725   ///
      int    CPTCCS49                   726- 728   ///
      int    CPTCCS50                   729- 731   ///
      int    CPTCCS51                   732- 734   ///
      int    CPTCCS52                   735- 737   ///
      int    CPTCCS53                   738- 740   ///
      int    CPTCCS54                   741- 743   ///
      int    CPTCCS55                   744- 746   ///
      int    CPTCCS56                   747- 749   ///
      int    CPTCCS57                   750- 752   ///
      int    CPTCCS58                   753- 755   ///
      int    CPTCCS59                   756- 758   ///
      int    CPTCCS60                   759- 761   ///
      int    CPTCCS61                   762- 764   ///
      int    CPTCCS62                   765- 767   ///
      int    CPTCCS63                   768- 770   ///
      int    CPTCCS64                   771- 773   ///
      int    CPTCCS65                   774- 776   ///
      int    CPTCCS66                   777- 779   ///
      int    CPTCCS67                   780- 782   ///
      int    CPTCCS68                   783- 785   ///
      int    CPTCCS69                   786- 788   ///
      int    CPTCCS70                   789- 791   ///
      int    CPTCCS71                   792- 794   ///
      int    CPTCCS72                   795- 797   ///
      int    CPTCCS73                   798- 800   ///
      int    CPTCCS74                   801- 803   ///
      int    CPTCCS75                   804- 806   ///
      int    CPTCCS76                   807- 809   ///
      int    CPTCCS77                   810- 812   ///
      int    CPTCCS78                   813- 815   ///
      int    CPTCCS79                   816- 818   ///
      int    CPTCCS80                   819- 821   ///
      int    CPTCCS81                   822- 824   ///
      int    CPTCCS82                   825- 827   ///
      int    CPTCCS83                   828- 830   ///
      int    CPTCCS84                   831- 833   ///
      int    CPTCCS85                   834- 836   ///
      int    CPTCCS86                   837- 839   ///
      int    CPTCCS87                   840- 842   ///
      int    CPTCCS88                   843- 845   ///
      int    CPTCCS89                   846- 848   ///
      int    CPTCCS90                   849- 851   ///
      int    CPTCCS91                   852- 854   ///
      int    CPTCCS92                   855- 857   ///
      int    CPTCCS93                   858- 860   ///
      int    CPTCCS94                   861- 863   ///
      int    CPTCCS95                   864- 866   ///
      int    CPTCCS96                   867- 869   ///
      int    CPTCCS97                   870- 872   ///
      int    CPTCCS98                   873- 875   ///
      int    CPTCCS99                   876- 878   ///
      int    CPTCCS100                  879- 881   ///
      int    CPTCCS101                  882- 884   ///
      int    CPTCCS102                  885- 887   ///
      int    CPTCCS103                  888- 890   ///
      int    CPTCCS104                  891- 893   ///
      int    CPTCCS105                  894- 896   ///
      int    CPTCCS106                  897- 899   ///
      int    CPTCCS107                  900- 902   ///
      int    CPTCCS108                  903- 905   ///
      int    CPTCCS109                  906- 908   ///
      int    CPTCCS110                  909- 911   ///
      long   DaysToEvent                912- 917   ///
      int    DHOUR                      918- 921   ///
      byte   DIED                       922- 923   ///
      str    DISP_X                     924- 925   ///
      byte   DISPUB04                   926- 927   ///
      byte   DISPUNIFORM                928- 929   ///
      byte   DMONTH                     930- 931   ///
      byte   DNR                        932- 933   ///
      byte   DQTR                       934- 935   ///
      int    DRG                        936- 938   ///
      int    DRG_NoPOA                  939- 941   ///
      int    DRG32                      942- 944   ///
      byte   DRGVER                     945- 946   ///
      str    DSHOSPID                   947- 963   ///
      str    DXPOA1                     964        ///
      str    DXPOA2                     965        ///
      str    DXPOA3                     966        ///
      str    DXPOA4                     967        ///
      str    DXPOA5                     968        ///
      str    DXPOA6                     969        ///
      str    DXPOA7                     970        ///
      str    DXPOA8                     971        ///
      str    DXPOA9                     972        ///
      str    DXPOA10                    973        ///
      str    DXPOA11                    974        ///
      str    DXPOA12                    975        ///
      str    DXPOA13                    976        ///
      str    DXPOA14                    977        ///
      str    DXPOA15                    978        ///
      str    DXPOA16                    979        ///
      str    DXPOA17                    980        ///
      str    DXPOA18                    981        ///
      str    DXPOA19                    982        ///
      str    DXPOA20                    983        ///
      str    DXPOA21                    984        ///
      str    DXPOA22                    985        ///
      str    DXPOA23                    986        ///
      str    DXPOA24                    987        ///
      str    DXPOA25                    988        ///
      str    DXPOA26                    989        ///
      str    DXPOA27                    990        ///
      str    DXPOA28                    991        ///
      str    DXPOA29                    992        ///
      str    DXPOA30                    993        ///
      int    DXVER                      994- 996   ///
      str    E_POA1                     997        ///
      str    E_POA2                     998        ///
      str    E_POA3                     999        ///
      str    E_POA4                    1000        ///
      str    E_POA5                    1001        ///
      str    E_POA6                    1002        ///
      str    E_POA7                    1003        ///
      str    E_POA8                    1004        ///
      str    E_POA9                    1005        ///
      str    E_POA10                   1006        ///
      str    E_POA11                   1007        ///
      str    E_POA12                   1008        ///
      str    E_POA13                   1009        ///
      str    E_POA14                   1010        ///
      str    E_POA15                   1011        ///
      str    E_POA16                   1012        ///
      byte   FEMALE                    1013-1014   ///
      byte   HCUP_ED                   1015-1016   ///
      byte   HCUP_OS                   1017-1018   ///
      byte   HISPANIC                  1019-1020   ///
      str    HISPANIC_X                1021        ///
      str    HOSPST                    1022-1023   ///
      str    I10_DX_Admitting          1024-1030   ///
      str    I10_DX1                   1031-1037   ///
      str    I10_DX2                   1038-1044   ///
      str    I10_DX3                   1045-1051   ///
      str    I10_DX4                   1052-1058   ///
      str    I10_DX5                   1059-1065   ///
      str    I10_DX6                   1066-1072   ///
      str    I10_DX7                   1073-1079   ///
      str    I10_DX8                   1080-1086   ///
      str    I10_DX9                   1087-1093   ///
      str    I10_DX10                  1094-1100   ///
      str    I10_DX11                  1101-1107   ///
      str    I10_DX12                  1108-1114   ///
      str    I10_DX13                  1115-1121   ///
      str    I10_DX14                  1122-1128   ///
      str    I10_DX15                  1129-1135   ///
      str    I10_DX16                  1136-1142   ///
      str    I10_DX17                  1143-1149   ///
      str    I10_DX18                  1150-1156   ///
      str    I10_DX19                  1157-1163   ///
      str    I10_DX20                  1164-1170   ///
      str    I10_DX21                  1171-1177   ///
      str    I10_DX22                  1178-1184   ///
      str    I10_DX23                  1185-1191   ///
      str    I10_DX24                  1192-1198   ///
      str    I10_DX25                  1199-1205   ///
      str    I10_DX26                  1206-1212   ///
      str    I10_DX27                  1213-1219   ///
      str    I10_DX28                  1220-1226   ///
      str    I10_DX29                  1227-1233   ///
      str    I10_DX30                  1234-1240   ///
      int    I10_DXCCS1                1241-1244   ///
      int    I10_DXCCS2                1245-1248   ///
      int    I10_DXCCS3                1249-1252   ///
      int    I10_DXCCS4                1253-1256   ///
      int    I10_DXCCS5                1257-1260   ///
      int    I10_DXCCS6                1261-1264   ///
      int    I10_DXCCS7                1265-1268   ///
      int    I10_DXCCS8                1269-1272   ///
      int    I10_DXCCS9                1273-1276   ///
      int    I10_DXCCS10               1277-1280   ///
      int    I10_DXCCS11               1281-1284   ///
      int    I10_DXCCS12               1285-1288   ///
      int    I10_DXCCS13               1289-1292   ///
      int    I10_DXCCS14               1293-1296   ///
      int    I10_DXCCS15               1297-1300   ///
      int    I10_DXCCS16               1301-1304   ///
      int    I10_DXCCS17               1305-1308   ///
      int    I10_DXCCS18               1309-1312   ///
      int    I10_DXCCS19               1313-1316   ///
      int    I10_DXCCS20               1317-1320   ///
      int    I10_DXCCS21               1321-1324   ///
      int    I10_DXCCS22               1325-1328   ///
      int    I10_DXCCS23               1329-1332   ///
      int    I10_DXCCS24               1333-1336   ///
      int    I10_DXCCS25               1337-1340   ///
      int    I10_DXCCS26               1341-1344   ///
      int    I10_DXCCS27               1345-1348   ///
      int    I10_DXCCS28               1349-1352   ///
      int    I10_DXCCS29               1353-1356   ///
      int    I10_DXCCS30               1357-1360   ///
      str    I10_ECAUSE1               1361-1367   ///
      str    I10_ECAUSE2               1368-1374   ///
      str    I10_ECAUSE3               1375-1381   ///
      str    I10_ECAUSE4               1382-1388   ///
      str    I10_ECAUSE5               1389-1395   ///
      str    I10_ECAUSE6               1396-1402   ///
      str    I10_ECAUSE7               1403-1409   ///
      str    I10_ECAUSE8               1410-1416   ///
      str    I10_ECAUSE9               1417-1423   ///
      str    I10_ECAUSE10              1424-1430   ///
      str    I10_ECAUSE11              1431-1437   ///
      str    I10_ECAUSE12              1438-1444   ///
      str    I10_ECAUSE13              1445-1451   ///
      str    I10_ECAUSE14              1452-1458   ///
      str    I10_ECAUSE15              1459-1465   ///
      str    I10_ECAUSE16              1466-1472   ///
      int    I10_ECauseCCS1            1473-1476   ///
      int    I10_ECauseCCS2            1477-1480   ///
      int    I10_ECauseCCS3            1481-1484   ///
      int    I10_ECauseCCS4            1485-1488   ///
      int    I10_ECauseCCS5            1489-1492   ///
      int    I10_ECauseCCS6            1493-1496   ///
      int    I10_ECauseCCS7            1497-1500   ///
      int    I10_ECauseCCS8            1501-1504   ///
      int    I10_ECauseCCS9            1505-1508   ///
      int    I10_ECauseCCS10           1509-1512   ///
      int    I10_ECauseCCS11           1513-1516   ///
      int    I10_ECauseCCS12           1517-1520   ///
      int    I10_ECauseCCS13           1521-1524   ///
      int    I10_ECauseCCS14           1525-1528   ///
      int    I10_ECauseCCS15           1529-1532   ///
      int    I10_ECauseCCS16           1533-1536   ///
      int    I10_HOSPBRTH              1537-1539   ///
      int    I10_NCHRONIC              1540-1542   ///
      int    I10_NDX                   1543-1545   ///
      byte   I10_NECAUSE               1546-1547   ///
      byte   I10_NEOMAT                1548-1549   ///
      int    I10_NPR                   1550-1552   ///
      byte   I10_ORPROC                1553-1554   ///
      str    I10_PR1                   1555-1561   ///
      str    I10_PR2                   1562-1568   ///
      str    I10_PR3                   1569-1575   ///
      str    I10_PR4                   1576-1582   ///
      str    I10_PR5                   1583-1589   ///
      str    I10_PR6                   1590-1596   ///
      str    I10_PR7                   1597-1603   ///
      str    I10_PR8                   1604-1610   ///
      str    I10_PR9                   1611-1617   ///
      str    I10_PR10                  1618-1624   ///
      str    I10_PR11                  1625-1631   ///
      str    I10_PR12                  1632-1638   ///
      str    I10_PR13                  1639-1645   ///
      str    I10_PR14                  1646-1652   ///
      str    I10_PR15                  1653-1659   ///
      str    I10_PR16                  1660-1666   ///
      str    I10_PR17                  1667-1673   ///
      str    I10_PR18                  1674-1680   ///
      str    I10_PR19                  1681-1687   ///
      str    I10_PR20                  1688-1694   ///
      str    I10_PR21                  1695-1701   ///
      int    I10_PRCCS1                1702-1704   ///
      int    I10_PRCCS2                1705-1707   ///
      int    I10_PRCCS3                1708-1710   ///
      int    I10_PRCCS4                1711-1713   ///
      int    I10_PRCCS5                1714-1716   ///
      int    I10_PRCCS6                1717-1719   ///
      int    I10_PRCCS7                1720-1722   ///
      int    I10_PRCCS8                1723-1725   ///
      int    I10_PRCCS9                1726-1728   ///
      int    I10_PRCCS10               1729-1731   ///
      int    I10_PRCCS11               1732-1734   ///
      int    I10_PRCCS12               1735-1737   ///
      int    I10_PRCCS13               1738-1740   ///
      int    I10_PRCCS14               1741-1743   ///
      int    I10_PRCCS15               1744-1746   ///
      int    I10_PRCCS16               1747-1749   ///
      int    I10_PRCCS17               1750-1752   ///
      int    I10_PRCCS18               1753-1755   ///
      int    I10_PRCCS19               1756-1758   ///
      int    I10_PRCCS20               1759-1761   ///
      int    I10_PRCCS21               1762-1764   ///
      int    I10_PROCTYPE              1765-1767   ///
      byte   I10_SERVICELINE           1768-1769   ///
      double KEY                       1770-1784   ///
      long   LOS                       1785-1789   ///
      long   LOS_X                     1790-1795   ///
      str    MARITALSTATUS_X           1796        ///
      str    MARITALSTATUSUB04         1797        ///
      byte   MDC                       1798-1799   ///
      byte   MDC_NoPOA                 1800-1801   ///
      byte   MDC32                     1802-1803   ///
      long   MDNUM1_R                  1804-1812   ///
      long   MDNUM2_R                  1813-1821   ///
      long   MDNUM3_R                  1822-1830   ///
      long   MDNUM4_R                  1831-1839   ///
      str    MDNUMTYPE1                1840        ///
      byte   MEDINCSTQ                 1841-1842   ///
      long   MRN_R                     1843-1851   ///
      int    NCPT                      1852-1855   ///
      double OS_TIME                   1856-1866   ///
      str    P7EDSRC_X                 1867-1868   ///
      byte   PAY1                      1869-1870   ///
      str    PAY1_X                    1871        ///
      byte   PAY2                      1872-1873   ///
      str    PAY2_X                    1874        ///
      byte   PAY3                      1875-1876   ///
      str    PAY3_X                    1877        ///
      int    PL_CBSA                   1878-1880   ///
      byte   PL_NCHS                   1881-1882   ///
      byte   PL_RUCC                   1883-1884   ///
      byte   PL_UIC                    1885-1886   ///
      byte   PL_UR_CAT4                1887-1888   ///
      byte   POA_Disch_Edit1           1889-1890   ///
      byte   POA_Disch_Edit2           1891-1892   ///
      byte   POA_Hosp_Edit1            1893-1894   ///
      byte   POA_Hosp_Edit2            1895-1896   ///
      byte   POA_Hosp_Edit3            1897-1898   ///
      double POA_Hosp_Edit3_Value      1899-1906   ///
      str    PointOfOrigin_X           1907        ///
      str    PointOfOriginUB04         1908        ///
      long   PRDAY1                    1909-1913   ///
      long   PRDAY2                    1914-1918   ///
      long   PRDAY3                    1919-1923   ///
      long   PRDAY4                    1924-1928   ///
      long   PRDAY5                    1929-1933   ///
      long   PRDAY6                    1934-1938   ///
      long   PRDAY7                    1939-1943   ///
      long   PRDAY8                    1944-1948   ///
      long   PRDAY9                    1949-1953   ///
      long   PRDAY10                   1954-1958   ///
      long   PRDAY11                   1959-1963   ///
      long   PRDAY12                   1964-1968   ///
      long   PRDAY13                   1969-1973   ///
      long   PRDAY14                   1974-1978   ///
      long   PRDAY15                   1979-1983   ///
      long   PRDAY16                   1984-1988   ///
      long   PRDAY17                   1989-1993   ///
      long   PRDAY18                   1994-1998   ///
      long   PRDAY19                   1999-2003   ///
      long   PRDAY20                   2004-2008   ///
      long   PRDAY21                   2009-2013   ///
      int    PRVER                     2014-2016   ///
      str    PSTATE                    2017-2018   ///
      long   PSTCO2                    2019-2023   ///
      byte   RACE                      2024-2025   ///
      str    RACE_X                    2026        ///
      double TOTCHG                    2027-2036   ///
      double TOTCHG_X                  2037-2051   ///
      byte   TRAN_IN                   2052-2053   ///
      byte   TRAN_OUT                  2054-2055   ///
      long   VisitLink                 2056-2064   ///
      int    YEAR                      2065-2068   ///
      str    ZIP3                      2069-2071   ///
      int    ZIPINC_QRTL               2072-2074   ///
      int    AYEAR                     2075-2078   ///
      byte   BMONTH                    2079-2080   ///
      int    BYEAR                     2081-2084   ///
      byte   PRMONTH1                  2085-2086   ///
      byte   PRMONTH2                  2087-2088   ///
      byte   PRMONTH3                  2089-2090   ///
      byte   PRMONTH4                  2091-2092   ///
      byte   PRMONTH5                  2093-2094   ///
      byte   PRMONTH6                  2095-2096   ///
      int    PRYEAR1                   2097-2100   ///
      int    PRYEAR2                   2101-2104   ///
      int    PRYEAR3                   2105-2108   ///
      int    PRYEAR4                   2109-2112   ///
      int    PRYEAR5                   2113-2116   ///
      int    PRYEAR6                   2117-2120   ///
      using  "AR_SID_2015q4_CORE.ASC"

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
label var E_POA10                  "E Cause 10, present on admission indicator"
label var E_POA11                  "E Cause 11, present on admission indicator"
label var E_POA12                  "E Cause 12, present on admission indicator"
label var E_POA13                  "E Cause 13, present on admission indicator"
label var E_POA14                  "E Cause 14, present on admission indicator"
label var E_POA15                  "E Cause 15, present on admission indicator"
label var E_POA16                  "E Cause 16, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
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
label var I10_ECAUSE12             "ICD-10-CM E Cause 12"
label var I10_ECAUSE13             "ICD-10-CM E Cause 13"
label var I10_ECAUSE14             "ICD-10-CM E Cause 14"
label var I10_ECAUSE15             "ICD-10-CM E Cause 15"
label var I10_ECAUSE16             "ICD-10-CM E Cause 16"
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
label var I10_ECauseCCS12          "ICD-10-CM CCS: E Cause 12"
label var I10_ECauseCCS13          "ICD-10-CM CCS: E Cause 13"
label var I10_ECauseCCS14          "ICD-10-CM CCS: E Cause 14"
label var I10_ECauseCCS15          "ICD-10-CM CCS: E Cause 15"
label var I10_ECauseCCS16          "ICD-10-CM CCS: E Cause 16"
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
label var MDNUMTYPE1               "Physician 1 number type"
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
label var PRYEAR1                  "Year of procedure 1"
label var PRYEAR2                  "Year of procedure 2"
label var PRYEAR3                  "Year of procedure 3"
label var PRYEAR4                  "Year of procedure 4"
label var PRYEAR5                  "Year of procedure 5"
label var PRYEAR6                  "Year of procedure 6"

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
recode DRG32                     (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
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
recode I10_ECauseCCS12           (-999 -888 -666=.)
recode I10_ECauseCCS13           (-999 -888 -666=.)
recode I10_ECauseCCS14           (-999 -888 -666=.)
recode I10_ECauseCCS15           (-999 -888 -666=.)
recode I10_ECauseCCS16           (-999 -888 -666=.)
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
recode MRN_R                     (-99999999 -88888888 -66666666=.)
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
recode PRMONTH2                  (-9 -8 -6 -5=.)
recode PRMONTH3                  (-9 -8 -6 -5=.)
recode PRMONTH4                  (-9 -8 -6 -5=.)
recode PRMONTH5                  (-9 -8 -6 -5=.)
recode PRMONTH6                  (-9 -8 -6 -5=.)
recode PRYEAR1                   (-999 -888 -666=.)
recode PRYEAR2                   (-999 -888 -666=.)
recode PRYEAR3                   (-999 -888 -666=.)
recode PRYEAR4                   (-999 -888 -666=.)
recode PRYEAR5                   (-999 -888 -666=.)
recode PRYEAR6                   (-999 -888 -666=.)

save "AR_SID_2015q4_CORE.dta", replace
