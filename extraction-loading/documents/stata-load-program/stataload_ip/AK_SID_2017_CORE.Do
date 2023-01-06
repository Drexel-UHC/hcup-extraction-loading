/*****************************************************************************
* Creation Date: 10/26/2019   
* AK_SID_2017_CORE.Do
* This program will load the 2017 AK ASCII CORE File into Stata.
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
      int    CPTCCS1                    271- 273   ///
      int    CPTCCS2                    274- 276   ///
      int    CPTCCS3                    277- 279   ///
      int    CPTCCS4                    280- 282   ///
      int    CPTCCS5                    283- 285   ///
      int    CPTCCS6                    286- 288   ///
      int    CPTCCS7                    289- 291   ///
      int    CPTCCS8                    292- 294   ///
      int    CPTCCS9                    295- 297   ///
      int    CPTCCS10                   298- 300   ///
      int    CPTCCS11                   301- 303   ///
      int    CPTCCS12                   304- 306   ///
      int    CPTCCS13                   307- 309   ///
      int    CPTCCS14                   310- 312   ///
      int    CPTCCS15                   313- 315   ///
      int    CPTCCS16                   316- 318   ///
      int    CPTCCS17                   319- 321   ///
      int    CPTCCS18                   322- 324   ///
      int    CPTCCS19                   325- 327   ///
      int    CPTCCS20                   328- 330   ///
      int    CPTCCS21                   331- 333   ///
      int    CPTCCS22                   334- 336   ///
      int    CPTCCS23                   337- 339   ///
      int    CPTCCS24                   340- 342   ///
      int    CPTCCS25                   343- 345   ///
      int    CPTCCS26                   346- 348   ///
      int    CPTCCS27                   349- 351   ///
      int    CPTCCS28                   352- 354   ///
      int    CPTCCS29                   355- 357   ///
      int    CPTCCS30                   358- 360   ///
      int    CPTCCS31                   361- 363   ///
      int    CPTCCS32                   364- 366   ///
      int    CPTCCS33                   367- 369   ///
      int    CPTCCS34                   370- 372   ///
      int    CPTCCS35                   373- 375   ///
      int    CPTCCS36                   376- 378   ///
      int    CPTCCS37                   379- 381   ///
      int    CPTCCS38                   382- 384   ///
      int    CPTCCS39                   385- 387   ///
      int    CPTCCS40                   388- 390   ///
      int    CPTCCS41                   391- 393   ///
      int    CPTCCS42                   394- 396   ///
      int    CPTCCS43                   397- 399   ///
      int    CPTCCS44                   400- 402   ///
      int    CPTCCS45                   403- 405   ///
      int    CPTCCS46                   406- 408   ///
      int    CPTCCS47                   409- 411   ///
      int    CPTCCS48                   412- 414   ///
      int    CPTCCS49                   415- 417   ///
      int    CPTCCS50                   418- 420   ///
      int    CPTDAY1                    421- 423   ///
      int    CPTDAY2                    424- 426   ///
      int    CPTDAY3                    427- 429   ///
      int    CPTDAY4                    430- 432   ///
      int    CPTDAY5                    433- 435   ///
      int    CPTDAY6                    436- 438   ///
      int    CPTDAY7                    439- 441   ///
      int    CPTDAY8                    442- 444   ///
      int    CPTDAY9                    445- 447   ///
      int    CPTDAY10                   448- 450   ///
      int    CPTDAY11                   451- 453   ///
      int    CPTDAY12                   454- 456   ///
      int    CPTDAY13                   457- 459   ///
      int    CPTDAY14                   460- 462   ///
      int    CPTDAY15                   463- 465   ///
      int    CPTDAY16                   466- 468   ///
      int    CPTDAY17                   469- 471   ///
      int    CPTDAY18                   472- 474   ///
      int    CPTDAY19                   475- 477   ///
      int    CPTDAY20                   478- 480   ///
      int    CPTDAY21                   481- 483   ///
      int    CPTDAY22                   484- 486   ///
      int    CPTDAY23                   487- 489   ///
      int    CPTDAY24                   490- 492   ///
      int    CPTDAY25                   493- 495   ///
      int    CPTDAY26                   496- 498   ///
      int    CPTDAY27                   499- 501   ///
      int    CPTDAY28                   502- 504   ///
      int    CPTDAY29                   505- 507   ///
      int    CPTDAY30                   508- 510   ///
      int    CPTDAY31                   511- 513   ///
      int    CPTDAY32                   514- 516   ///
      int    CPTDAY33                   517- 519   ///
      int    CPTDAY34                   520- 522   ///
      int    CPTDAY35                   523- 525   ///
      int    CPTDAY36                   526- 528   ///
      int    CPTDAY37                   529- 531   ///
      int    CPTDAY38                   532- 534   ///
      int    CPTDAY39                   535- 537   ///
      int    CPTDAY40                   538- 540   ///
      int    CPTDAY41                   541- 543   ///
      int    CPTDAY42                   544- 546   ///
      int    CPTDAY43                   547- 549   ///
      int    CPTDAY44                   550- 552   ///
      int    CPTDAY45                   553- 555   ///
      int    CPTDAY46                   556- 558   ///
      int    CPTDAY47                   559- 561   ///
      int    CPTDAY48                   562- 564   ///
      int    CPTDAY49                   565- 567   ///
      int    CPTDAY50                   568- 570   ///
      long   DaysToEvent                571- 576   ///
      int    DHOUR                      577- 580   ///
      byte   DIED                       581- 582   ///
      str    DISP_X                     583- 584   ///
      byte   DISPUB04                   585- 586   ///
      byte   DISPUNIFORM                587- 588   ///
      byte   DMONTH                     589- 590   ///
      byte   DQTR                       591- 592   ///
      int    DRG                        593- 595   ///
      int    DRG_NoPOA                  596- 598   ///
      byte   DRGVER                     599- 600   ///
      str    DXPOA1                     601        ///
      str    DXPOA2                     602        ///
      str    DXPOA3                     603        ///
      str    DXPOA4                     604        ///
      str    DXPOA5                     605        ///
      str    DXPOA6                     606        ///
      str    DXPOA7                     607        ///
      str    DXPOA8                     608        ///
      str    DXPOA9                     609        ///
      str    DXPOA10                    610        ///
      str    DXPOA11                    611        ///
      str    DXPOA12                    612        ///
      str    DXPOA13                    613        ///
      str    DXPOA14                    614        ///
      str    DXPOA15                    615        ///
      str    DXPOA16                    616        ///
      str    DXPOA17                    617        ///
      str    DXPOA18                    618        ///
      str    DXPOA19                    619        ///
      str    DXPOA20                    620        ///
      str    DXPOA21                    621        ///
      str    DXPOA22                    622        ///
      str    DXPOA23                    623        ///
      str    DXPOA24                    624        ///
      str    DXPOA25                    625        ///
      str    DXPOA26                    626        ///
      str    DXPOA27                    627        ///
      str    DXPOA28                    628        ///
      str    DXPOA29                    629        ///
      str    DXPOA30                    630        ///
      int    DXVER                      631- 633   ///
      byte   FEMALE                     634- 635   ///
      byte   HCUP_ED                    636- 637   ///
      byte   HCUP_OS                    638- 639   ///
      byte   HISPANIC                   640- 641   ///
      str    HISPANIC_X                 642        ///
      byte   HospitalUnit               643- 644   ///
      str    HOSPST                     645- 646   ///
      str    I10_DX_Admitting           647- 653   ///
      str    I10_DX1                    654- 660   ///
      str    I10_DX2                    661- 667   ///
      str    I10_DX3                    668- 674   ///
      str    I10_DX4                    675- 681   ///
      str    I10_DX5                    682- 688   ///
      str    I10_DX6                    689- 695   ///
      str    I10_DX7                    696- 702   ///
      str    I10_DX8                    703- 709   ///
      str    I10_DX9                    710- 716   ///
      str    I10_DX10                   717- 723   ///
      str    I10_DX11                   724- 730   ///
      str    I10_DX12                   731- 737   ///
      str    I10_DX13                   738- 744   ///
      str    I10_DX14                   745- 751   ///
      str    I10_DX15                   752- 758   ///
      str    I10_DX16                   759- 765   ///
      str    I10_DX17                   766- 772   ///
      str    I10_DX18                   773- 779   ///
      str    I10_DX19                   780- 786   ///
      str    I10_DX20                   787- 793   ///
      str    I10_DX21                   794- 800   ///
      str    I10_DX22                   801- 807   ///
      str    I10_DX23                   808- 814   ///
      str    I10_DX24                   815- 821   ///
      str    I10_DX25                   822- 828   ///
      str    I10_DX26                   829- 835   ///
      str    I10_DX27                   836- 842   ///
      str    I10_DX28                   843- 849   ///
      str    I10_DX29                   850- 856   ///
      str    I10_DX30                   857- 863   ///
      int    I10_NDX                    864- 866   ///
      int    I10_NPR                    867- 869   ///
      str    I10_PR1                    870- 876   ///
      str    I10_PR2                    877- 883   ///
      str    I10_PR3                    884- 890   ///
      str    I10_PR4                    891- 897   ///
      str    I10_PR5                    898- 904   ///
      str    I10_PR6                    905- 911   ///
      str    I10_PR7                    912- 918   ///
      str    I10_PR8                    919- 925   ///
      str    I10_PR9                    926- 932   ///
      str    I10_PR10                   933- 939   ///
      str    I10_PR11                   940- 946   ///
      str    I10_PR12                   947- 953   ///
      str    I10_PR13                   954- 960   ///
      str    I10_PR14                   961- 967   ///
      str    I10_PR15                   968- 974   ///
      str    I10_PR16                   975- 981   ///
      str    I10_PR17                   982- 988   ///
      str    I10_PR18                   989- 995   ///
      str    I10_PR19                   996-1002   ///
      str    I10_PR20                  1003-1009   ///
      str    I10_PR21                  1010-1016   ///
      str    I10_PR22                  1017-1023   ///
      str    I10_PR23                  1024-1030   ///
      str    I10_PR24                  1031-1037   ///
      str    I10_PR25                  1038-1044   ///
      int    I10_PROCTYPE              1045-1047   ///
      double KEY                       1048-1062   ///
      long   LOS                       1063-1067   ///
      long   LOS_X                     1068-1073   ///
      byte   MDC                       1074-1075   ///
      byte   MDC_NoPOA                 1076-1077   ///
      byte   MEDINCSTQ                 1078-1079   ///
      int    NCPT                      1080-1083   ///
      int    OBSERVATION               1084-1087   ///
      double OS_TIME                   1088-1098   ///
      str    P7EDSRC_X                 1099-1100   ///
      byte   PAY1                      1101-1102   ///
      str    PAY1_X                    1103-1104   ///
      byte   PAY2                      1105-1106   ///
      str    PAY2_X                    1107-1108   ///
      byte   PAY3                      1109-1110   ///
      str    PAY3_X                    1111-1112   ///
      int    PL_CBSA                   1113-1115   ///
      byte   PL_NCHS                   1116-1117   ///
      byte   POA_Disch_Edit1           1118-1119   ///
      byte   POA_Disch_Edit2           1120-1121   ///
      byte   POA_Hosp_Edit1            1122-1123   ///
      byte   POA_Hosp_Edit2            1124-1125   ///
      byte   POA_Hosp_Edit3            1126-1127   ///
      double POA_Hosp_Edit3_Value      1128-1135   ///
      str    PointOfOrigin_X           1136        ///
      str    PointOfOriginUB04         1137        ///
      long   PRDAY1                    1138-1142   ///
      long   PRDAY2                    1143-1147   ///
      long   PRDAY3                    1148-1152   ///
      long   PRDAY4                    1153-1157   ///
      long   PRDAY5                    1158-1162   ///
      long   PRDAY6                    1163-1167   ///
      long   PRDAY7                    1168-1172   ///
      long   PRDAY8                    1173-1177   ///
      long   PRDAY9                    1178-1182   ///
      long   PRDAY10                   1183-1187   ///
      long   PRDAY11                   1188-1192   ///
      long   PRDAY12                   1193-1197   ///
      long   PRDAY13                   1198-1202   ///
      long   PRDAY14                   1203-1207   ///
      long   PRDAY15                   1208-1212   ///
      long   PRDAY16                   1213-1217   ///
      long   PRDAY17                   1218-1222   ///
      long   PRDAY18                   1223-1227   ///
      long   PRDAY19                   1228-1232   ///
      long   PRDAY20                   1233-1237   ///
      long   PRDAY21                   1238-1242   ///
      long   PRDAY22                   1243-1247   ///
      long   PRDAY23                   1248-1252   ///
      long   PRDAY24                   1253-1257   ///
      long   PRDAY25                   1258-1262   ///
      int    PRVER                     1263-1265   ///
      str    PSTATE                    1266-1267   ///
      byte   RACE                      1268-1269   ///
      byte   RACE_EDIT                 1270-1271   ///
      str    RACE_X                    1272        ///
      double TOTCHG                    1273-1282   ///
      double TOTCHG_X                  1283-1297   ///
      byte   TRAN_IN                   1298-1299   ///
      byte   TRAN_OUT                  1300-1301   ///
      long   VisitLink                 1302-1310   ///
      int    YEAR                      1311-1314   ///
      int    ZIPINC_QRTL               1315-1317   ///
      long   HOSPID                    1318-1322   ///
      int    AYEAR                     1323-1326   ///
      byte   BMONTH                    1327-1328   ///
      int    BYEAR                     1329-1332   ///
      byte   PRMONTH1                  1333-1334   ///
      byte   PRMONTH2                  1335-1336   ///
      byte   PRMONTH3                  1337-1338   ///
      byte   PRMONTH4                  1339-1340   ///
      byte   PRMONTH5                  1341-1342   ///
      byte   PRMONTH6                  1343-1344   ///
      byte   PRMONTH7                  1345-1346   ///
      byte   PRMONTH8                  1347-1348   ///
      byte   PRMONTH9                  1349-1350   ///
      byte   PRMONTH10                 1351-1352   ///
      byte   PRMONTH11                 1353-1354   ///
      byte   PRMONTH12                 1355-1356   ///
      byte   PRMONTH13                 1357-1358   ///
      byte   PRMONTH14                 1359-1360   ///
      byte   PRMONTH15                 1361-1362   ///
      byte   PRMONTH16                 1363-1364   ///
      byte   PRMONTH17                 1365-1366   ///
      byte   PRMONTH18                 1367-1368   ///
      byte   PRMONTH19                 1369-1370   ///
      byte   PRMONTH20                 1371-1372   ///
      byte   PRMONTH21                 1373-1374   ///
      byte   PRMONTH22                 1375-1376   ///
      byte   PRMONTH23                 1377-1378   ///
      byte   PRMONTH24                 1379-1380   ///
      byte   PRMONTH25                 1381-1382   ///
      int    PRYEAR1                   1383-1386   ///
      int    PRYEAR2                   1387-1390   ///
      int    PRYEAR3                   1391-1394   ///
      int    PRYEAR4                   1395-1398   ///
      int    PRYEAR5                   1399-1402   ///
      int    PRYEAR6                   1403-1406   ///
      int    PRYEAR7                   1407-1410   ///
      int    PRYEAR8                   1411-1414   ///
      int    PRYEAR9                   1415-1418   ///
      int    PRYEAR10                  1419-1422   ///
      int    PRYEAR11                  1423-1426   ///
      int    PRYEAR12                  1427-1430   ///
      int    PRYEAR13                  1431-1434   ///
      int    PRYEAR14                  1435-1438   ///
      int    PRYEAR15                  1439-1442   ///
      int    PRYEAR16                  1443-1446   ///
      int    PRYEAR17                  1447-1450   ///
      int    PRYEAR18                  1451-1454   ///
      int    PRYEAR19                  1455-1458   ///
      int    PRYEAR20                  1459-1462   ///
      int    PRYEAR21                  1463-1466   ///
      int    PRYEAR22                  1467-1470   ///
      int    PRYEAR23                  1471-1474   ///
      int    PRYEAR24                  1475-1478   ///
      int    PRYEAR25                  1479-1482   ///
      using  "AK_SID_2017_CORE.ASC"

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
label var DXVER                    "Diagnosis Version"
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
label var PRVER                    "Procedure Version"
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
recode DXVER                     (-99 -88 -66=.)
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
recode PRVER                     (-99 -88 -66=.)
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

save "AK_SID_2017_CORE.dta", replace
