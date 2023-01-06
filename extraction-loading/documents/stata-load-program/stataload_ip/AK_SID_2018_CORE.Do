/*****************************************************************************
* Creation Date: 04/06/2020   
* AK_SID_2018_CORE.Do
* This program will load the 2018 AK ASCII CORE File into Stata.
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
      int    AGEMONTH                     4-   6   ///
      int    AHOUR                        7-  10   ///
      byte   AMONTH                      11-  12   ///
      byte   ATYPE                       13-  14   ///
      byte   AWEEKEND                    15-  16   ///
      str    BILLTYPE                    17-  20   ///
      str    CPT1                        21-  25   ///
      str    CPT2                        26-  30   ///
      str    CPT3                        31-  35   ///
      str    CPT4                        36-  40   ///
      str    CPT5                        41-  45   ///
      str    CPT6                        46-  50   ///
      str    CPT7                        51-  55   ///
      str    CPT8                        56-  60   ///
      str    CPT9                        61-  65   ///
      str    CPT10                       66-  70   ///
      str    CPT11                       71-  75   ///
      str    CPT12                       76-  80   ///
      str    CPT13                       81-  85   ///
      str    CPT14                       86-  90   ///
      str    CPT15                       91-  95   ///
      str    CPT16                       96- 100   ///
      str    CPT17                      101- 105   ///
      str    CPT18                      106- 110   ///
      str    CPT19                      111- 115   ///
      str    CPT20                      116- 120   ///
      str    CPT21                      121- 125   ///
      str    CPT22                      126- 130   ///
      str    CPT23                      131- 135   ///
      str    CPT24                      136- 140   ///
      str    CPT25                      141- 145   ///
      str    CPT26                      146- 150   ///
      str    CPT27                      151- 155   ///
      str    CPT28                      156- 160   ///
      str    CPT29                      161- 165   ///
      str    CPT30                      166- 170   ///
      str    CPT31                      171- 175   ///
      str    CPT32                      176- 180   ///
      str    CPT33                      181- 185   ///
      str    CPT34                      186- 190   ///
      str    CPT35                      191- 195   ///
      str    CPT36                      196- 200   ///
      str    CPT37                      201- 205   ///
      str    CPT38                      206- 210   ///
      str    CPT39                      211- 215   ///
      str    CPT40                      216- 220   ///
      str    CPT41                      221- 225   ///
      str    CPT42                      226- 230   ///
      str    CPT43                      231- 235   ///
      str    CPT44                      236- 240   ///
      str    CPT45                      241- 245   ///
      str    CPT46                      246- 250   ///
      str    CPT47                      251- 255   ///
      str    CPT48                      256- 260   ///
      str    CPT49                      261- 265   ///
      str    CPT50                      266- 270   ///
      str    CPT51                      271- 275   ///
      str    CPT52                      276- 280   ///
      str    CPT53                      281- 285   ///
      str    CPT54                      286- 290   ///
      str    CPT55                      291- 295   ///
      str    CPT56                      296- 300   ///
      str    CPT57                      301- 305   ///
      str    CPT58                      306- 310   ///
      str    CPT59                      311- 315   ///
      str    CPT60                      316- 320   ///
      str    CPT61                      321- 325   ///
      str    CPT62                      326- 330   ///
      str    CPT63                      331- 335   ///
      str    CPT64                      336- 340   ///
      str    CPT65                      341- 345   ///
      str    CPT66                      346- 350   ///
      str    CPT67                      351- 355   ///
      str    CPT68                      356- 360   ///
      str    CPT69                      361- 365   ///
      str    CPT70                      366- 370   ///
      str    CPT71                      371- 375   ///
      str    CPT72                      376- 380   ///
      str    CPT73                      381- 385   ///
      str    CPT74                      386- 390   ///
      str    CPT75                      391- 395   ///
      str    CPT76                      396- 400   ///
      str    CPT77                      401- 405   ///
      str    CPT78                      406- 410   ///
      str    CPT79                      411- 415   ///
      str    CPT80                      416- 420   ///
      str    CPT81                      421- 425   ///
      str    CPT82                      426- 430   ///
      str    CPT83                      431- 435   ///
      str    CPT84                      436- 440   ///
      str    CPT85                      441- 445   ///
      str    CPT86                      446- 450   ///
      str    CPT87                      451- 455   ///
      str    CPT88                      456- 460   ///
      str    CPT89                      461- 465   ///
      str    CPT90                      466- 470   ///
      str    CPT91                      471- 475   ///
      str    CPT92                      476- 480   ///
      str    CPT93                      481- 485   ///
      str    CPT94                      486- 490   ///
      str    CPT95                      491- 495   ///
      str    CPT96                      496- 500   ///
      str    CPT97                      501- 505   ///
      str    CPT98                      506- 510   ///
      str    CPT99                      511- 515   ///
      str    CPT100                     516- 520   ///
      int    CPTCCS1                    521- 523   ///
      int    CPTCCS2                    524- 526   ///
      int    CPTCCS3                    527- 529   ///
      int    CPTCCS4                    530- 532   ///
      int    CPTCCS5                    533- 535   ///
      int    CPTCCS6                    536- 538   ///
      int    CPTCCS7                    539- 541   ///
      int    CPTCCS8                    542- 544   ///
      int    CPTCCS9                    545- 547   ///
      int    CPTCCS10                   548- 550   ///
      int    CPTCCS11                   551- 553   ///
      int    CPTCCS12                   554- 556   ///
      int    CPTCCS13                   557- 559   ///
      int    CPTCCS14                   560- 562   ///
      int    CPTCCS15                   563- 565   ///
      int    CPTCCS16                   566- 568   ///
      int    CPTCCS17                   569- 571   ///
      int    CPTCCS18                   572- 574   ///
      int    CPTCCS19                   575- 577   ///
      int    CPTCCS20                   578- 580   ///
      int    CPTCCS21                   581- 583   ///
      int    CPTCCS22                   584- 586   ///
      int    CPTCCS23                   587- 589   ///
      int    CPTCCS24                   590- 592   ///
      int    CPTCCS25                   593- 595   ///
      int    CPTCCS26                   596- 598   ///
      int    CPTCCS27                   599- 601   ///
      int    CPTCCS28                   602- 604   ///
      int    CPTCCS29                   605- 607   ///
      int    CPTCCS30                   608- 610   ///
      int    CPTCCS31                   611- 613   ///
      int    CPTCCS32                   614- 616   ///
      int    CPTCCS33                   617- 619   ///
      int    CPTCCS34                   620- 622   ///
      int    CPTCCS35                   623- 625   ///
      int    CPTCCS36                   626- 628   ///
      int    CPTCCS37                   629- 631   ///
      int    CPTCCS38                   632- 634   ///
      int    CPTCCS39                   635- 637   ///
      int    CPTCCS40                   638- 640   ///
      int    CPTCCS41                   641- 643   ///
      int    CPTCCS42                   644- 646   ///
      int    CPTCCS43                   647- 649   ///
      int    CPTCCS44                   650- 652   ///
      int    CPTCCS45                   653- 655   ///
      int    CPTCCS46                   656- 658   ///
      int    CPTCCS47                   659- 661   ///
      int    CPTCCS48                   662- 664   ///
      int    CPTCCS49                   665- 667   ///
      int    CPTCCS50                   668- 670   ///
      int    CPTCCS51                   671- 673   ///
      int    CPTCCS52                   674- 676   ///
      int    CPTCCS53                   677- 679   ///
      int    CPTCCS54                   680- 682   ///
      int    CPTCCS55                   683- 685   ///
      int    CPTCCS56                   686- 688   ///
      int    CPTCCS57                   689- 691   ///
      int    CPTCCS58                   692- 694   ///
      int    CPTCCS59                   695- 697   ///
      int    CPTCCS60                   698- 700   ///
      int    CPTCCS61                   701- 703   ///
      int    CPTCCS62                   704- 706   ///
      int    CPTCCS63                   707- 709   ///
      int    CPTCCS64                   710- 712   ///
      int    CPTCCS65                   713- 715   ///
      int    CPTCCS66                   716- 718   ///
      int    CPTCCS67                   719- 721   ///
      int    CPTCCS68                   722- 724   ///
      int    CPTCCS69                   725- 727   ///
      int    CPTCCS70                   728- 730   ///
      int    CPTCCS71                   731- 733   ///
      int    CPTCCS72                   734- 736   ///
      int    CPTCCS73                   737- 739   ///
      int    CPTCCS74                   740- 742   ///
      int    CPTCCS75                   743- 745   ///
      int    CPTCCS76                   746- 748   ///
      int    CPTCCS77                   749- 751   ///
      int    CPTCCS78                   752- 754   ///
      int    CPTCCS79                   755- 757   ///
      int    CPTCCS80                   758- 760   ///
      int    CPTCCS81                   761- 763   ///
      int    CPTCCS82                   764- 766   ///
      int    CPTCCS83                   767- 769   ///
      int    CPTCCS84                   770- 772   ///
      int    CPTCCS85                   773- 775   ///
      int    CPTCCS86                   776- 778   ///
      int    CPTCCS87                   779- 781   ///
      int    CPTCCS88                   782- 784   ///
      int    CPTCCS89                   785- 787   ///
      int    CPTCCS90                   788- 790   ///
      int    CPTCCS91                   791- 793   ///
      int    CPTCCS92                   794- 796   ///
      int    CPTCCS93                   797- 799   ///
      int    CPTCCS94                   800- 802   ///
      int    CPTCCS95                   803- 805   ///
      int    CPTCCS96                   806- 808   ///
      int    CPTCCS97                   809- 811   ///
      int    CPTCCS98                   812- 814   ///
      int    CPTCCS99                   815- 817   ///
      int    CPTCCS100                  818- 820   ///
      int    CPTDAY1                    821- 823   ///
      int    CPTDAY2                    824- 826   ///
      int    CPTDAY3                    827- 829   ///
      int    CPTDAY4                    830- 832   ///
      int    CPTDAY5                    833- 835   ///
      int    CPTDAY6                    836- 838   ///
      int    CPTDAY7                    839- 841   ///
      int    CPTDAY8                    842- 844   ///
      int    CPTDAY9                    845- 847   ///
      int    CPTDAY10                   848- 850   ///
      int    CPTDAY11                   851- 853   ///
      int    CPTDAY12                   854- 856   ///
      int    CPTDAY13                   857- 859   ///
      int    CPTDAY14                   860- 862   ///
      int    CPTDAY15                   863- 865   ///
      int    CPTDAY16                   866- 868   ///
      int    CPTDAY17                   869- 871   ///
      int    CPTDAY18                   872- 874   ///
      int    CPTDAY19                   875- 877   ///
      int    CPTDAY20                   878- 880   ///
      int    CPTDAY21                   881- 883   ///
      int    CPTDAY22                   884- 886   ///
      int    CPTDAY23                   887- 889   ///
      int    CPTDAY24                   890- 892   ///
      int    CPTDAY25                   893- 895   ///
      int    CPTDAY26                   896- 898   ///
      int    CPTDAY27                   899- 901   ///
      int    CPTDAY28                   902- 904   ///
      int    CPTDAY29                   905- 907   ///
      int    CPTDAY30                   908- 910   ///
      int    CPTDAY31                   911- 913   ///
      int    CPTDAY32                   914- 916   ///
      int    CPTDAY33                   917- 919   ///
      int    CPTDAY34                   920- 922   ///
      int    CPTDAY35                   923- 925   ///
      int    CPTDAY36                   926- 928   ///
      int    CPTDAY37                   929- 931   ///
      int    CPTDAY38                   932- 934   ///
      int    CPTDAY39                   935- 937   ///
      int    CPTDAY40                   938- 940   ///
      int    CPTDAY41                   941- 943   ///
      int    CPTDAY42                   944- 946   ///
      int    CPTDAY43                   947- 949   ///
      int    CPTDAY44                   950- 952   ///
      int    CPTDAY45                   953- 955   ///
      int    CPTDAY46                   956- 958   ///
      int    CPTDAY47                   959- 961   ///
      int    CPTDAY48                   962- 964   ///
      int    CPTDAY49                   965- 967   ///
      int    CPTDAY50                   968- 970   ///
      int    CPTDAY51                   971- 973   ///
      int    CPTDAY52                   974- 976   ///
      int    CPTDAY53                   977- 979   ///
      int    CPTDAY54                   980- 982   ///
      int    CPTDAY55                   983- 985   ///
      int    CPTDAY56                   986- 988   ///
      int    CPTDAY57                   989- 991   ///
      int    CPTDAY58                   992- 994   ///
      int    CPTDAY59                   995- 997   ///
      int    CPTDAY60                   998-1000   ///
      int    CPTDAY61                  1001-1003   ///
      int    CPTDAY62                  1004-1006   ///
      int    CPTDAY63                  1007-1009   ///
      int    CPTDAY64                  1010-1012   ///
      int    CPTDAY65                  1013-1015   ///
      int    CPTDAY66                  1016-1018   ///
      int    CPTDAY67                  1019-1021   ///
      int    CPTDAY68                  1022-1024   ///
      int    CPTDAY69                  1025-1027   ///
      int    CPTDAY70                  1028-1030   ///
      int    CPTDAY71                  1031-1033   ///
      int    CPTDAY72                  1034-1036   ///
      int    CPTDAY73                  1037-1039   ///
      int    CPTDAY74                  1040-1042   ///
      int    CPTDAY75                  1043-1045   ///
      int    CPTDAY76                  1046-1048   ///
      int    CPTDAY77                  1049-1051   ///
      int    CPTDAY78                  1052-1054   ///
      int    CPTDAY79                  1055-1057   ///
      int    CPTDAY80                  1058-1060   ///
      int    CPTDAY81                  1061-1063   ///
      int    CPTDAY82                  1064-1066   ///
      int    CPTDAY83                  1067-1069   ///
      int    CPTDAY84                  1070-1072   ///
      int    CPTDAY85                  1073-1075   ///
      int    CPTDAY86                  1076-1078   ///
      int    CPTDAY87                  1079-1081   ///
      int    CPTDAY88                  1082-1084   ///
      int    CPTDAY89                  1085-1087   ///
      int    CPTDAY90                  1088-1090   ///
      int    CPTDAY91                  1091-1093   ///
      int    CPTDAY92                  1094-1096   ///
      int    CPTDAY93                  1097-1099   ///
      int    CPTDAY94                  1100-1102   ///
      int    CPTDAY95                  1103-1105   ///
      int    CPTDAY96                  1106-1108   ///
      int    CPTDAY97                  1109-1111   ///
      int    CPTDAY98                  1112-1114   ///
      int    CPTDAY99                  1115-1117   ///
      int    CPTDAY100                 1118-1120   ///
      long   DaysToEvent               1121-1126   ///
      int    DHOUR                     1127-1130   ///
      byte   DIED                      1131-1132   ///
      str    DISP_X                    1133-1134   ///
      byte   DISPUB04                  1135-1136   ///
      byte   DISPUNIFORM               1137-1138   ///
      byte   DMONTH                    1139-1140   ///
      byte   DQTR                      1141-1142   ///
      int    DRG                       1143-1145   ///
      int    DRG_NoPOA                 1146-1148   ///
      byte   DRGVER                    1149-1150   ///
      str    DXPOA1                    1151        ///
      str    DXPOA2                    1152        ///
      str    DXPOA3                    1153        ///
      str    DXPOA4                    1154        ///
      str    DXPOA5                    1155        ///
      str    DXPOA6                    1156        ///
      str    DXPOA7                    1157        ///
      str    DXPOA8                    1158        ///
      str    DXPOA9                    1159        ///
      str    DXPOA10                   1160        ///
      str    DXPOA11                   1161        ///
      str    DXPOA12                   1162        ///
      str    DXPOA13                   1163        ///
      str    DXPOA14                   1164        ///
      str    DXPOA15                   1165        ///
      str    DXPOA16                   1166        ///
      str    DXPOA17                   1167        ///
      str    DXPOA18                   1168        ///
      str    DXPOA19                   1169        ///
      str    DXPOA20                   1170        ///
      str    DXPOA21                   1171        ///
      str    DXPOA22                   1172        ///
      str    DXPOA23                   1173        ///
      str    DXPOA24                   1174        ///
      str    DXPOA25                   1175        ///
      str    DXPOA26                   1176        ///
      str    DXPOA27                   1177        ///
      str    DXPOA28                   1178        ///
      str    DXPOA29                   1179        ///
      str    DXPOA30                   1180        ///
      byte   FEMALE                    1181-1182   ///
      byte   HCUP_ED                   1183-1184   ///
      byte   HCUP_OS                   1185-1186   ///
      byte   HISPANIC                  1187-1188   ///
      str    HISPANIC_X                1189        ///
      byte   HospitalUnit              1190-1191   ///
      str    HOSPST                    1192-1193   ///
      str    I10_DX_Admitting          1194-1200   ///
      str    I10_DX1                   1201-1207   ///
      str    I10_DX2                   1208-1214   ///
      str    I10_DX3                   1215-1221   ///
      str    I10_DX4                   1222-1228   ///
      str    I10_DX5                   1229-1235   ///
      str    I10_DX6                   1236-1242   ///
      str    I10_DX7                   1243-1249   ///
      str    I10_DX8                   1250-1256   ///
      str    I10_DX9                   1257-1263   ///
      str    I10_DX10                  1264-1270   ///
      str    I10_DX11                  1271-1277   ///
      str    I10_DX12                  1278-1284   ///
      str    I10_DX13                  1285-1291   ///
      str    I10_DX14                  1292-1298   ///
      str    I10_DX15                  1299-1305   ///
      str    I10_DX16                  1306-1312   ///
      str    I10_DX17                  1313-1319   ///
      str    I10_DX18                  1320-1326   ///
      str    I10_DX19                  1327-1333   ///
      str    I10_DX20                  1334-1340   ///
      str    I10_DX21                  1341-1347   ///
      str    I10_DX22                  1348-1354   ///
      str    I10_DX23                  1355-1361   ///
      str    I10_DX24                  1362-1368   ///
      str    I10_DX25                  1369-1375   ///
      str    I10_DX26                  1376-1382   ///
      str    I10_DX27                  1383-1389   ///
      str    I10_DX28                  1390-1396   ///
      str    I10_DX29                  1397-1403   ///
      str    I10_DX30                  1404-1410   ///
      int    I10_NDX                   1411-1413   ///
      int    I10_NPR                   1414-1416   ///
      str    I10_PR1                   1417-1423   ///
      str    I10_PR2                   1424-1430   ///
      str    I10_PR3                   1431-1437   ///
      str    I10_PR4                   1438-1444   ///
      str    I10_PR5                   1445-1451   ///
      str    I10_PR6                   1452-1458   ///
      str    I10_PR7                   1459-1465   ///
      str    I10_PR8                   1466-1472   ///
      str    I10_PR9                   1473-1479   ///
      str    I10_PR10                  1480-1486   ///
      str    I10_PR11                  1487-1493   ///
      str    I10_PR12                  1494-1500   ///
      str    I10_PR13                  1501-1507   ///
      str    I10_PR14                  1508-1514   ///
      str    I10_PR15                  1515-1521   ///
      str    I10_PR16                  1522-1528   ///
      str    I10_PR17                  1529-1535   ///
      str    I10_PR18                  1536-1542   ///
      str    I10_PR19                  1543-1549   ///
      str    I10_PR20                  1550-1556   ///
      str    I10_PR21                  1557-1563   ///
      str    I10_PR22                  1564-1570   ///
      str    I10_PR23                  1571-1577   ///
      str    I10_PR24                  1578-1584   ///
      str    I10_PR25                  1585-1591   ///
      int    I10_PROCTYPE              1592-1594   ///
      double KEY                       1595-1609   ///
      long   LOS                       1610-1614   ///
      long   LOS_X                     1615-1620   ///
      byte   MDC                       1621-1622   ///
      byte   MDC_NoPOA                 1623-1624   ///
      byte   MEDINCSTQ                 1625-1626   ///
      int    NCPT                      1627-1630   ///
      int    OBSERVATION               1631-1634   ///
      double OS_TIME                   1635-1645   ///
      str    P7EDSRC_X                 1646-1647   ///
      byte   PAY1                      1648-1649   ///
      str    PAY1_X                    1650-1651   ///
      byte   PAY2                      1652-1653   ///
      str    PAY2_X                    1654-1655   ///
      byte   PAY3                      1656-1657   ///
      str    PAY3_X                    1658-1659   ///
      int    PL_CBSA                   1660-1662   ///
      byte   PL_NCHS                   1663-1664   ///
      byte   POA_Disch_Edit1           1665-1666   ///
      byte   POA_Disch_Edit2           1667-1668   ///
      byte   POA_Hosp_Edit1            1669-1670   ///
      byte   POA_Hosp_Edit2            1671-1672   ///
      byte   POA_Hosp_Edit3            1673-1674   ///
      double POA_Hosp_Edit3_Value      1675-1682   ///
      str    PointOfOrigin_X           1683        ///
      str    PointOfOriginUB04         1684        ///
      long   PRDAY1                    1685-1689   ///
      long   PRDAY2                    1690-1694   ///
      long   PRDAY3                    1695-1699   ///
      long   PRDAY4                    1700-1704   ///
      long   PRDAY5                    1705-1709   ///
      long   PRDAY6                    1710-1714   ///
      long   PRDAY7                    1715-1719   ///
      long   PRDAY8                    1720-1724   ///
      long   PRDAY9                    1725-1729   ///
      long   PRDAY10                   1730-1734   ///
      long   PRDAY11                   1735-1739   ///
      long   PRDAY12                   1740-1744   ///
      long   PRDAY13                   1745-1749   ///
      long   PRDAY14                   1750-1754   ///
      long   PRDAY15                   1755-1759   ///
      long   PRDAY16                   1760-1764   ///
      long   PRDAY17                   1765-1769   ///
      long   PRDAY18                   1770-1774   ///
      long   PRDAY19                   1775-1779   ///
      long   PRDAY20                   1780-1784   ///
      long   PRDAY21                   1785-1789   ///
      long   PRDAY22                   1790-1794   ///
      long   PRDAY23                   1795-1799   ///
      long   PRDAY24                   1800-1804   ///
      long   PRDAY25                   1805-1809   ///
      str    PSTATE                    1810-1811   ///
      byte   RACE                      1812-1813   ///
      byte   RACE_EDIT                 1814-1815   ///
      str    RACE_X                    1816        ///
      double TOTCHG                    1817-1826   ///
      double TOTCHG_X                  1827-1841   ///
      byte   TRAN_IN                   1842-1843   ///
      byte   TRAN_OUT                  1844-1845   ///
      long   VisitLink                 1846-1854   ///
      int    YEAR                      1855-1858   ///
      int    ZIPINC_QRTL               1859-1861   ///
      long   HOSPID                    1862-1866   ///
      int    AYEAR                     1867-1870   ///
      byte   BMONTH                    1871-1872   ///
      int    BYEAR                     1873-1876   ///
      byte   PRMONTH1                  1877-1878   ///
      byte   PRMONTH2                  1879-1880   ///
      byte   PRMONTH3                  1881-1882   ///
      byte   PRMONTH4                  1883-1884   ///
      byte   PRMONTH5                  1885-1886   ///
      byte   PRMONTH6                  1887-1888   ///
      byte   PRMONTH7                  1889-1890   ///
      byte   PRMONTH8                  1891-1892   ///
      byte   PRMONTH9                  1893-1894   ///
      byte   PRMONTH10                 1895-1896   ///
      byte   PRMONTH11                 1897-1898   ///
      byte   PRMONTH12                 1899-1900   ///
      byte   PRMONTH13                 1901-1902   ///
      byte   PRMONTH14                 1903-1904   ///
      byte   PRMONTH15                 1905-1906   ///
      byte   PRMONTH16                 1907-1908   ///
      byte   PRMONTH17                 1909-1910   ///
      byte   PRMONTH18                 1911-1912   ///
      byte   PRMONTH19                 1913-1914   ///
      byte   PRMONTH20                 1915-1916   ///
      byte   PRMONTH21                 1917-1918   ///
      byte   PRMONTH22                 1919-1920   ///
      byte   PRMONTH23                 1921-1922   ///
      byte   PRMONTH24                 1923-1924   ///
      byte   PRMONTH25                 1925-1926   ///
      int    PRYEAR1                   1927-1930   ///
      int    PRYEAR2                   1931-1934   ///
      int    PRYEAR3                   1935-1938   ///
      int    PRYEAR4                   1939-1942   ///
      int    PRYEAR5                   1943-1946   ///
      int    PRYEAR6                   1947-1950   ///
      int    PRYEAR7                   1951-1954   ///
      int    PRYEAR8                   1955-1958   ///
      int    PRYEAR9                   1959-1962   ///
      int    PRYEAR10                  1963-1966   ///
      int    PRYEAR11                  1967-1970   ///
      int    PRYEAR12                  1971-1974   ///
      int    PRYEAR13                  1975-1978   ///
      int    PRYEAR14                  1979-1982   ///
      int    PRYEAR15                  1983-1986   ///
      int    PRYEAR16                  1987-1990   ///
      int    PRYEAR17                  1991-1994   ///
      int    PRYEAR18                  1995-1998   ///
      int    PRYEAR19                  1999-2002   ///
      int    PRYEAR20                  2003-2006   ///
      int    PRYEAR21                  2007-2010   ///
      int    PRYEAR22                  2011-2014   ///
      int    PRYEAR23                  2015-2018   ///
      int    PRYEAR24                  2019-2022   ///
      int    PRYEAR25                  2023-2026   ///
      using  "AK_SID_2018_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
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
label var CPTDAY51                 "Number of days from admission to CPT51"
label var CPTDAY52                 "Number of days from admission to CPT52"
label var CPTDAY53                 "Number of days from admission to CPT53"
label var CPTDAY54                 "Number of days from admission to CPT54"
label var CPTDAY55                 "Number of days from admission to CPT55"
label var CPTDAY56                 "Number of days from admission to CPT56"
label var CPTDAY57                 "Number of days from admission to CPT57"
label var CPTDAY58                 "Number of days from admission to CPT58"
label var CPTDAY59                 "Number of days from admission to CPT59"
label var CPTDAY60                 "Number of days from admission to CPT60"
label var CPTDAY61                 "Number of days from admission to CPT61"
label var CPTDAY62                 "Number of days from admission to CPT62"
label var CPTDAY63                 "Number of days from admission to CPT63"
label var CPTDAY64                 "Number of days from admission to CPT64"
label var CPTDAY65                 "Number of days from admission to CPT65"
label var CPTDAY66                 "Number of days from admission to CPT66"
label var CPTDAY67                 "Number of days from admission to CPT67"
label var CPTDAY68                 "Number of days from admission to CPT68"
label var CPTDAY69                 "Number of days from admission to CPT69"
label var CPTDAY70                 "Number of days from admission to CPT70"
label var CPTDAY71                 "Number of days from admission to CPT71"
label var CPTDAY72                 "Number of days from admission to CPT72"
label var CPTDAY73                 "Number of days from admission to CPT73"
label var CPTDAY74                 "Number of days from admission to CPT74"
label var CPTDAY75                 "Number of days from admission to CPT75"
label var CPTDAY76                 "Number of days from admission to CPT76"
label var CPTDAY77                 "Number of days from admission to CPT77"
label var CPTDAY78                 "Number of days from admission to CPT78"
label var CPTDAY79                 "Number of days from admission to CPT79"
label var CPTDAY80                 "Number of days from admission to CPT80"
label var CPTDAY81                 "Number of days from admission to CPT81"
label var CPTDAY82                 "Number of days from admission to CPT82"
label var CPTDAY83                 "Number of days from admission to CPT83"
label var CPTDAY84                 "Number of days from admission to CPT84"
label var CPTDAY85                 "Number of days from admission to CPT85"
label var CPTDAY86                 "Number of days from admission to CPT86"
label var CPTDAY87                 "Number of days from admission to CPT87"
label var CPTDAY88                 "Number of days from admission to CPT88"
label var CPTDAY89                 "Number of days from admission to CPT89"
label var CPTDAY90                 "Number of days from admission to CPT90"
label var CPTDAY91                 "Number of days from admission to CPT91"
label var CPTDAY92                 "Number of days from admission to CPT92"
label var CPTDAY93                 "Number of days from admission to CPT93"
label var CPTDAY94                 "Number of days from admission to CPT94"
label var CPTDAY95                 "Number of days from admission to CPT95"
label var CPTDAY96                 "Number of days from admission to CPT96"
label var CPTDAY97                 "Number of days from admission to CPT97"
label var CPTDAY98                 "Number of days from admission to CPT98"
label var CPTDAY99                 "Number of days from admission to CPT99"
label var CPTDAY100                "Number of days from admission to CPT100"
label var DaysToEvent              "Days from 'start date' to admission"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HospitalUnit             "Patient was discharged from a special unit within an acute care hospital (reported by source)"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var OBSERVATION              "Time for observation services (as received from source)"
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
label var PSTATE                   "Patient State postal code"
label var RACE                     "Race (uniform)"
label var RACE_EDIT                "Race Edit Checks"
label var RACE_X                   "Race (as received from source)"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var VisitLink                "Visit linkage variable"
label var YEAR                     "Calendar year"
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

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
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
recode CPTDAY51                  (-99 -88 -66=.)
recode CPTDAY52                  (-99 -88 -66=.)
recode CPTDAY53                  (-99 -88 -66=.)
recode CPTDAY54                  (-99 -88 -66=.)
recode CPTDAY55                  (-99 -88 -66=.)
recode CPTDAY56                  (-99 -88 -66=.)
recode CPTDAY57                  (-99 -88 -66=.)
recode CPTDAY58                  (-99 -88 -66=.)
recode CPTDAY59                  (-99 -88 -66=.)
recode CPTDAY60                  (-99 -88 -66=.)
recode CPTDAY61                  (-99 -88 -66=.)
recode CPTDAY62                  (-99 -88 -66=.)
recode CPTDAY63                  (-99 -88 -66=.)
recode CPTDAY64                  (-99 -88 -66=.)
recode CPTDAY65                  (-99 -88 -66=.)
recode CPTDAY66                  (-99 -88 -66=.)
recode CPTDAY67                  (-99 -88 -66=.)
recode CPTDAY68                  (-99 -88 -66=.)
recode CPTDAY69                  (-99 -88 -66=.)
recode CPTDAY70                  (-99 -88 -66=.)
recode CPTDAY71                  (-99 -88 -66=.)
recode CPTDAY72                  (-99 -88 -66=.)
recode CPTDAY73                  (-99 -88 -66=.)
recode CPTDAY74                  (-99 -88 -66=.)
recode CPTDAY75                  (-99 -88 -66=.)
recode CPTDAY76                  (-99 -88 -66=.)
recode CPTDAY77                  (-99 -88 -66=.)
recode CPTDAY78                  (-99 -88 -66=.)
recode CPTDAY79                  (-99 -88 -66=.)
recode CPTDAY80                  (-99 -88 -66=.)
recode CPTDAY81                  (-99 -88 -66=.)
recode CPTDAY82                  (-99 -88 -66=.)
recode CPTDAY83                  (-99 -88 -66=.)
recode CPTDAY84                  (-99 -88 -66=.)
recode CPTDAY85                  (-99 -88 -66=.)
recode CPTDAY86                  (-99 -88 -66=.)
recode CPTDAY87                  (-99 -88 -66=.)
recode CPTDAY88                  (-99 -88 -66=.)
recode CPTDAY89                  (-99 -88 -66=.)
recode CPTDAY90                  (-99 -88 -66=.)
recode CPTDAY91                  (-99 -88 -66=.)
recode CPTDAY92                  (-99 -88 -66=.)
recode CPTDAY93                  (-99 -88 -66=.)
recode CPTDAY94                  (-99 -88 -66=.)
recode CPTDAY95                  (-99 -88 -66=.)
recode CPTDAY96                  (-99 -88 -66=.)
recode CPTDAY97                  (-99 -88 -66=.)
recode CPTDAY98                  (-99 -88 -66=.)
recode CPTDAY99                  (-99 -88 -66=.)
recode CPTDAY100                 (-99 -88 -66=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCPT                      (-999 -888 -666=.)
recode OBSERVATION               (-999 -888 -666=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
recode PAY3                      (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
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

save "AK_SID_2018_CORE.dta", replace
