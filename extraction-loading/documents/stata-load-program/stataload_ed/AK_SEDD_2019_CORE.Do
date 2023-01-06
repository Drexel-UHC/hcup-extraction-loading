/*****************************************************************************
* Creation Date: 07/06/2022   
* AK_SEDD_2019_CORE.Do
* This program will load the 2019 AK ASCII CORE File into Stata.
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
      int    CPTCCS1                    396- 398   ///
      int    CPTCCS2                    399- 401   ///
      int    CPTCCS3                    402- 404   ///
      int    CPTCCS4                    405- 407   ///
      int    CPTCCS5                    408- 410   ///
      int    CPTCCS6                    411- 413   ///
      int    CPTCCS7                    414- 416   ///
      int    CPTCCS8                    417- 419   ///
      int    CPTCCS9                    420- 422   ///
      int    CPTCCS10                   423- 425   ///
      int    CPTCCS11                   426- 428   ///
      int    CPTCCS12                   429- 431   ///
      int    CPTCCS13                   432- 434   ///
      int    CPTCCS14                   435- 437   ///
      int    CPTCCS15                   438- 440   ///
      int    CPTCCS16                   441- 443   ///
      int    CPTCCS17                   444- 446   ///
      int    CPTCCS18                   447- 449   ///
      int    CPTCCS19                   450- 452   ///
      int    CPTCCS20                   453- 455   ///
      int    CPTCCS21                   456- 458   ///
      int    CPTCCS22                   459- 461   ///
      int    CPTCCS23                   462- 464   ///
      int    CPTCCS24                   465- 467   ///
      int    CPTCCS25                   468- 470   ///
      int    CPTCCS26                   471- 473   ///
      int    CPTCCS27                   474- 476   ///
      int    CPTCCS28                   477- 479   ///
      int    CPTCCS29                   480- 482   ///
      int    CPTCCS30                   483- 485   ///
      int    CPTCCS31                   486- 488   ///
      int    CPTCCS32                   489- 491   ///
      int    CPTCCS33                   492- 494   ///
      int    CPTCCS34                   495- 497   ///
      int    CPTCCS35                   498- 500   ///
      int    CPTCCS36                   501- 503   ///
      int    CPTCCS37                   504- 506   ///
      int    CPTCCS38                   507- 509   ///
      int    CPTCCS39                   510- 512   ///
      int    CPTCCS40                   513- 515   ///
      int    CPTCCS41                   516- 518   ///
      int    CPTCCS42                   519- 521   ///
      int    CPTCCS43                   522- 524   ///
      int    CPTCCS44                   525- 527   ///
      int    CPTCCS45                   528- 530   ///
      int    CPTCCS46                   531- 533   ///
      int    CPTCCS47                   534- 536   ///
      int    CPTCCS48                   537- 539   ///
      int    CPTCCS49                   540- 542   ///
      int    CPTCCS50                   543- 545   ///
      int    CPTCCS51                   546- 548   ///
      int    CPTCCS52                   549- 551   ///
      int    CPTCCS53                   552- 554   ///
      int    CPTCCS54                   555- 557   ///
      int    CPTCCS55                   558- 560   ///
      int    CPTCCS56                   561- 563   ///
      int    CPTCCS57                   564- 566   ///
      int    CPTCCS58                   567- 569   ///
      int    CPTCCS59                   570- 572   ///
      int    CPTCCS60                   573- 575   ///
      int    CPTCCS61                   576- 578   ///
      int    CPTCCS62                   579- 581   ///
      int    CPTCCS63                   582- 584   ///
      int    CPTCCS64                   585- 587   ///
      int    CPTCCS65                   588- 590   ///
      int    CPTCCS66                   591- 593   ///
      int    CPTCCS67                   594- 596   ///
      int    CPTCCS68                   597- 599   ///
      int    CPTCCS69                   600- 602   ///
      int    CPTCCS70                   603- 605   ///
      int    CPTCCS71                   606- 608   ///
      int    CPTCCS72                   609- 611   ///
      int    CPTCCS73                   612- 614   ///
      int    CPTCCS74                   615- 617   ///
      int    CPTCCS75                   618- 620   ///
      int    CPTDAY1                    621- 623   ///
      int    CPTDAY2                    624- 626   ///
      int    CPTDAY3                    627- 629   ///
      int    CPTDAY4                    630- 632   ///
      int    CPTDAY5                    633- 635   ///
      int    CPTDAY6                    636- 638   ///
      int    CPTDAY7                    639- 641   ///
      int    CPTDAY8                    642- 644   ///
      int    CPTDAY9                    645- 647   ///
      int    CPTDAY10                   648- 650   ///
      int    CPTDAY11                   651- 653   ///
      int    CPTDAY12                   654- 656   ///
      int    CPTDAY13                   657- 659   ///
      int    CPTDAY14                   660- 662   ///
      int    CPTDAY15                   663- 665   ///
      int    CPTDAY16                   666- 668   ///
      int    CPTDAY17                   669- 671   ///
      int    CPTDAY18                   672- 674   ///
      int    CPTDAY19                   675- 677   ///
      int    CPTDAY20                   678- 680   ///
      int    CPTDAY21                   681- 683   ///
      int    CPTDAY22                   684- 686   ///
      int    CPTDAY23                   687- 689   ///
      int    CPTDAY24                   690- 692   ///
      int    CPTDAY25                   693- 695   ///
      int    CPTDAY26                   696- 698   ///
      int    CPTDAY27                   699- 701   ///
      int    CPTDAY28                   702- 704   ///
      int    CPTDAY29                   705- 707   ///
      int    CPTDAY30                   708- 710   ///
      int    CPTDAY31                   711- 713   ///
      int    CPTDAY32                   714- 716   ///
      int    CPTDAY33                   717- 719   ///
      int    CPTDAY34                   720- 722   ///
      int    CPTDAY35                   723- 725   ///
      int    CPTDAY36                   726- 728   ///
      int    CPTDAY37                   729- 731   ///
      int    CPTDAY38                   732- 734   ///
      int    CPTDAY39                   735- 737   ///
      int    CPTDAY40                   738- 740   ///
      int    CPTDAY41                   741- 743   ///
      int    CPTDAY42                   744- 746   ///
      int    CPTDAY43                   747- 749   ///
      int    CPTDAY44                   750- 752   ///
      int    CPTDAY45                   753- 755   ///
      int    CPTDAY46                   756- 758   ///
      int    CPTDAY47                   759- 761   ///
      int    CPTDAY48                   762- 764   ///
      int    CPTDAY49                   765- 767   ///
      int    CPTDAY50                   768- 770   ///
      int    CPTDAY51                   771- 773   ///
      int    CPTDAY52                   774- 776   ///
      int    CPTDAY53                   777- 779   ///
      int    CPTDAY54                   780- 782   ///
      int    CPTDAY55                   783- 785   ///
      int    CPTDAY56                   786- 788   ///
      int    CPTDAY57                   789- 791   ///
      int    CPTDAY58                   792- 794   ///
      int    CPTDAY59                   795- 797   ///
      int    CPTDAY60                   798- 800   ///
      int    CPTDAY61                   801- 803   ///
      int    CPTDAY62                   804- 806   ///
      int    CPTDAY63                   807- 809   ///
      int    CPTDAY64                   810- 812   ///
      int    CPTDAY65                   813- 815   ///
      int    CPTDAY66                   816- 818   ///
      int    CPTDAY67                   819- 821   ///
      int    CPTDAY68                   822- 824   ///
      int    CPTDAY69                   825- 827   ///
      int    CPTDAY70                   828- 830   ///
      int    CPTDAY71                   831- 833   ///
      int    CPTDAY72                   834- 836   ///
      int    CPTDAY73                   837- 839   ///
      int    CPTDAY74                   840- 842   ///
      int    CPTDAY75                   843- 845   ///
      long   DaysToEvent                846- 851   ///
      int    DHOUR                      852- 855   ///
      byte   DIED                       856- 857   ///
      str    DISP_X                     858- 859   ///
      byte   DISPUB04                   860- 861   ///
      byte   DISPUNIFORM                862- 863   ///
      byte   DMONTH                     864- 865   ///
      byte   DQTR                       866- 867   ///
      long   DURATION                   868- 873   ///
      str    DXPOA1                     874        ///
      str    DXPOA2                     875        ///
      str    DXPOA3                     876        ///
      str    DXPOA4                     877        ///
      str    DXPOA5                     878        ///
      str    DXPOA6                     879        ///
      str    DXPOA7                     880        ///
      str    DXPOA8                     881        ///
      str    DXPOA9                     882        ///
      str    DXPOA10                    883        ///
      str    DXPOA11                    884        ///
      str    DXPOA12                    885        ///
      str    DXPOA13                    886        ///
      str    DXPOA14                    887        ///
      str    DXPOA15                    888        ///
      str    DXPOA16                    889        ///
      str    DXPOA17                    890        ///
      str    DXPOA18                    891        ///
      str    DXPOA19                    892        ///
      str    DXPOA20                    893        ///
      str    DXPOA21                    894        ///
      str    DXPOA22                    895        ///
      str    DXPOA23                    896        ///
      str    DXPOA24                    897        ///
      str    DXPOA25                    898        ///
      str    DXPOA26                    899        ///
      str    DXPOA27                    900        ///
      str    DXPOA28                    901        ///
      str    DXPOA29                    902        ///
      str    DXPOA30                    903        ///
      byte   FEMALE                     904- 905   ///
      byte   HCUP_ED                    906- 907   ///
      byte   HCUP_OS                    908- 909   ///
      byte   HISPANIC                   910- 911   ///
      str    HISPANIC_X                 912        ///
      str    HOSPST                     913- 914   ///
      str    I10_DX_Visit_Reason1       915- 921   ///
      str    I10_DX_Visit_Reason2       922- 928   ///
      str    I10_DX_Visit_Reason3       929- 935   ///
      str    I10_DX1                    936- 942   ///
      str    I10_DX2                    943- 949   ///
      str    I10_DX3                    950- 956   ///
      str    I10_DX4                    957- 963   ///
      str    I10_DX5                    964- 970   ///
      str    I10_DX6                    971- 977   ///
      str    I10_DX7                    978- 984   ///
      str    I10_DX8                    985- 991   ///
      str    I10_DX9                    992- 998   ///
      str    I10_DX10                   999-1005   ///
      str    I10_DX11                  1006-1012   ///
      str    I10_DX12                  1013-1019   ///
      str    I10_DX13                  1020-1026   ///
      str    I10_DX14                  1027-1033   ///
      str    I10_DX15                  1034-1040   ///
      str    I10_DX16                  1041-1047   ///
      str    I10_DX17                  1048-1054   ///
      str    I10_DX18                  1055-1061   ///
      str    I10_DX19                  1062-1068   ///
      str    I10_DX20                  1069-1075   ///
      str    I10_DX21                  1076-1082   ///
      str    I10_DX22                  1083-1089   ///
      str    I10_DX23                  1090-1096   ///
      str    I10_DX24                  1097-1103   ///
      str    I10_DX25                  1104-1110   ///
      str    I10_DX26                  1111-1117   ///
      str    I10_DX27                  1118-1124   ///
      str    I10_DX28                  1125-1131   ///
      str    I10_DX29                  1132-1138   ///
      str    I10_DX30                  1139-1145   ///
      int    I10_NDX                   1146-1148   ///
      int    I10_NPR                   1149-1151   ///
      byte   I10_ORPROC                1152-1153   ///
      str    I10_PR1                   1154-1160   ///
      str    I10_PR2                   1161-1167   ///
      str    I10_PR3                   1168-1174   ///
      str    I10_PR4                   1175-1181   ///
      str    I10_PR5                   1182-1188   ///
      str    I10_PR6                   1189-1195   ///
      str    I10_PR7                   1196-1202   ///
      str    I10_PR8                   1203-1209   ///
      str    I10_PR9                   1210-1216   ///
      str    I10_PR10                  1217-1223   ///
      int    I10_PROCTYPE              1224-1226   ///
      double KEY                       1227-1241   ///
      long   LOS                       1242-1246   ///
      long   LOS_X                     1247-1252   ///
      byte   MEDINCSTQ                 1253-1254   ///
      int    NCPT                      1255-1258   ///
      int    OBSERVATION               1259-1262   ///
      str    OPservice                 1263        ///
      double OS_TIME                   1264-1274   ///
      byte   PAY1                      1275-1276   ///
      str    PAY1_X                    1277-1278   ///
      byte   PAY2                      1279-1280   ///
      str    PAY2_X                    1281-1282   ///
      byte   PAY3                      1283-1284   ///
      str    PAY3_X                    1285-1286   ///
      int    PL_CBSA                   1287-1289   ///
      byte   PL_NCHS                   1290-1291   ///
      byte   POA_Disch_Edit1           1292-1293   ///
      byte   POA_Disch_Edit2           1294-1295   ///
      byte   POA_Hosp_Edit1            1296-1297   ///
      byte   POA_Hosp_Edit2            1298-1299   ///
      byte   POA_Hosp_Edit3            1300-1301   ///
      double POA_Hosp_Edit3_Value      1302-1309   ///
      str    PointOfOrigin_X           1310        ///
      str    PointOfOriginUB04         1311        ///
      long   PRDAY1                    1312-1316   ///
      long   PRDAY2                    1317-1321   ///
      long   PRDAY3                    1322-1326   ///
      long   PRDAY4                    1327-1331   ///
      long   PRDAY5                    1332-1336   ///
      long   PRDAY6                    1337-1341   ///
      long   PRDAY7                    1342-1346   ///
      long   PRDAY8                    1347-1351   ///
      long   PRDAY9                    1352-1356   ///
      long   PRDAY10                   1357-1361   ///
      str    PSTATE                    1362-1363   ///
      str    PSTATE_GEO                1364-1365   ///
      byte   RACE                      1366-1367   ///
      str    RACE_X                    1368        ///
      byte   STATE_AS                  1369-1370   ///
      byte   STATE_ED                  1371-1372   ///
      byte   STATE_OS                  1373-1374   ///
      double TOTCHG                    1375-1384   ///
      double TOTCHG_X                  1385-1399   ///
      long   VisitLink                 1400-1408   ///
      int    YEAR                      1409-1412   ///
      int    ZIPINC_QRTL               1413-1415   ///
      long   HOSPID                    1416-1420   ///
      int    AYEAR                     1421-1424   ///
      byte   BMONTH                    1425-1426   ///
      int    BYEAR                     1427-1430   ///
      byte   PRMONTH1                  1431-1432   ///
      byte   PRMONTH2                  1433-1434   ///
      byte   PRMONTH3                  1435-1436   ///
      byte   PRMONTH4                  1437-1438   ///
      byte   PRMONTH5                  1439-1440   ///
      byte   PRMONTH6                  1441-1442   ///
      byte   PRMONTH7                  1443-1444   ///
      byte   PRMONTH8                  1445-1446   ///
      byte   PRMONTH9                  1447-1448   ///
      byte   PRMONTH10                 1449-1450   ///
      int    PRYEAR1                   1451-1454   ///
      int    PRYEAR2                   1455-1458   ///
      int    PRYEAR3                   1459-1462   ///
      int    PRYEAR4                   1463-1466   ///
      int    PRYEAR5                   1467-1470   ///
      int    PRYEAR6                   1471-1474   ///
      int    PRYEAR7                   1475-1478   ///
      int    PRYEAR8                   1479-1482   ///
      int    PRYEAR9                   1483-1486   ///
      int    PRYEAR10                  1487-1490   ///
      using  "AK_SEDD_2019_CORE.ASC"

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
label var DaysToEvent              "Days from 'start date' to admission"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DURATION                 "Elapsed time for hospital care in hours and minutes"
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
label var I10_DX_Visit_Reason1     "ICD-10-CM Reason for visit diagnosis 1"
label var I10_DX_Visit_Reason2     "ICD-10-CM Reason for visit diagnosis 2"
label var I10_DX_Visit_Reason3     "ICD-10-CM Reason for visit diagnosis 3"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var OBSERVATION              "Time for observation services (as received from source)"
label var OPservice                "Indicator of outpatient service (as received from source)"
label var OS_TIME                  "Observation stay time summed from UNITS"
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
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var STATE_AS                 "State Ambulatory Surgery service indicator"
label var STATE_ED                 "State Emergency Department service indicator"
label var STATE_OS                 "State Observation Stay service indicator"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
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
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DURATION                  (-99999 -88888 -66666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_ORPROC                (-9 -8 -6 -5=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
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
recode RACE                      (-9 -8 -6 -5=.)
recode STATE_AS                  (-9 -8 -6 -5=.)
recode STATE_ED                  (-9 -8 -6 -5=.)
recode STATE_OS                  (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
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

save "AK_SEDD_2019_CORE.dta", replace
