/*****************************************************************************
* Creation Date: 08/13/2018   
* HI_SEDD_2016_CORE.Do
* This program will load the 2016 HI ASCII CORE File into Stata.
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
      int    AGEDAY                       1-   3   ///
      int    AGEMONTH                     4-   6   ///
      byte   AMONTH                       7-   8   ///
      byte   ATYPE                        9-  10   ///
      byte   AWEEKEND                    11-  12   ///
      str    CPT1                        13-  17   ///
      str    CPT2                        18-  22   ///
      str    CPT3                        23-  27   ///
      str    CPT4                        28-  32   ///
      str    CPT5                        33-  37   ///
      str    CPT6                        38-  42   ///
      str    CPT7                        43-  47   ///
      str    CPT8                        48-  52   ///
      str    CPT9                        53-  57   ///
      str    CPT10                       58-  62   ///
      str    CPT11                       63-  67   ///
      str    CPT12                       68-  72   ///
      str    CPT13                       73-  77   ///
      str    CPT14                       78-  82   ///
      str    CPT15                       83-  87   ///
      str    CPT16                       88-  92   ///
      str    CPT17                       93-  97   ///
      str    CPT18                       98- 102   ///
      str    CPT19                      103- 107   ///
      str    CPT20                      108- 112   ///
      str    CPT21                      113- 117   ///
      str    CPT22                      118- 122   ///
      str    CPT23                      123- 127   ///
      str    CPT24                      128- 132   ///
      str    CPT25                      133- 137   ///
      str    CPT26                      138- 142   ///
      str    CPT27                      143- 147   ///
      str    CPT28                      148- 152   ///
      str    CPT29                      153- 157   ///
      str    CPT30                      158- 162   ///
      str    CPT31                      163- 167   ///
      str    CPT32                      168- 172   ///
      str    CPT33                      173- 177   ///
      str    CPT34                      178- 182   ///
      str    CPT35                      183- 187   ///
      str    CPT36                      188- 192   ///
      str    CPT37                      193- 197   ///
      str    CPT38                      198- 202   ///
      str    CPT39                      203- 207   ///
      str    CPT40                      208- 212   ///
      str    CPT41                      213- 217   ///
      str    CPT42                      218- 222   ///
      str    CPT43                      223- 227   ///
      str    CPT44                      228- 232   ///
      str    CPT45                      233- 237   ///
      str    CPT46                      238- 242   ///
      str    CPT47                      243- 247   ///
      str    CPT48                      248- 252   ///
      str    CPT49                      253- 257   ///
      str    CPT50                      258- 262   ///
      int    CPTCCS1                    263- 265   ///
      int    CPTCCS2                    266- 268   ///
      int    CPTCCS3                    269- 271   ///
      int    CPTCCS4                    272- 274   ///
      int    CPTCCS5                    275- 277   ///
      int    CPTCCS6                    278- 280   ///
      int    CPTCCS7                    281- 283   ///
      int    CPTCCS8                    284- 286   ///
      int    CPTCCS9                    287- 289   ///
      int    CPTCCS10                   290- 292   ///
      int    CPTCCS11                   293- 295   ///
      int    CPTCCS12                   296- 298   ///
      int    CPTCCS13                   299- 301   ///
      int    CPTCCS14                   302- 304   ///
      int    CPTCCS15                   305- 307   ///
      int    CPTCCS16                   308- 310   ///
      int    CPTCCS17                   311- 313   ///
      int    CPTCCS18                   314- 316   ///
      int    CPTCCS19                   317- 319   ///
      int    CPTCCS20                   320- 322   ///
      int    CPTCCS21                   323- 325   ///
      int    CPTCCS22                   326- 328   ///
      int    CPTCCS23                   329- 331   ///
      int    CPTCCS24                   332- 334   ///
      int    CPTCCS25                   335- 337   ///
      int    CPTCCS26                   338- 340   ///
      int    CPTCCS27                   341- 343   ///
      int    CPTCCS28                   344- 346   ///
      int    CPTCCS29                   347- 349   ///
      int    CPTCCS30                   350- 352   ///
      int    CPTCCS31                   353- 355   ///
      int    CPTCCS32                   356- 358   ///
      int    CPTCCS33                   359- 361   ///
      int    CPTCCS34                   362- 364   ///
      int    CPTCCS35                   365- 367   ///
      int    CPTCCS36                   368- 370   ///
      int    CPTCCS37                   371- 373   ///
      int    CPTCCS38                   374- 376   ///
      int    CPTCCS39                   377- 379   ///
      int    CPTCCS40                   380- 382   ///
      int    CPTCCS41                   383- 385   ///
      int    CPTCCS42                   386- 388   ///
      int    CPTCCS43                   389- 391   ///
      int    CPTCCS44                   392- 394   ///
      int    CPTCCS45                   395- 397   ///
      int    CPTCCS46                   398- 400   ///
      int    CPTCCS47                   401- 403   ///
      int    CPTCCS48                   404- 406   ///
      int    CPTCCS49                   407- 409   ///
      int    CPTCCS50                   410- 412   ///
      str    CPTM1_1                    413- 414   ///
      str    CPTM1_2                    415- 416   ///
      str    CPTM1_3                    417- 418   ///
      str    CPTM1_4                    419- 420   ///
      str    CPTM1_5                    421- 422   ///
      str    CPTM1_6                    423- 424   ///
      str    CPTM1_7                    425- 426   ///
      str    CPTM1_8                    427- 428   ///
      str    CPTM1_9                    429- 430   ///
      str    CPTM1_10                   431- 432   ///
      str    CPTM1_11                   433- 434   ///
      str    CPTM1_12                   435- 436   ///
      str    CPTM1_13                   437- 438   ///
      str    CPTM1_14                   439- 440   ///
      str    CPTM1_15                   441- 442   ///
      str    CPTM1_16                   443- 444   ///
      str    CPTM1_17                   445- 446   ///
      str    CPTM1_18                   447- 448   ///
      str    CPTM1_19                   449- 450   ///
      str    CPTM1_20                   451- 452   ///
      str    CPTM1_21                   453- 454   ///
      str    CPTM1_22                   455- 456   ///
      str    CPTM1_23                   457- 458   ///
      str    CPTM1_24                   459- 460   ///
      str    CPTM1_25                   461- 462   ///
      str    CPTM1_26                   463- 464   ///
      str    CPTM1_27                   465- 466   ///
      str    CPTM1_28                   467- 468   ///
      str    CPTM1_29                   469- 470   ///
      str    CPTM1_30                   471- 472   ///
      str    CPTM1_31                   473- 474   ///
      str    CPTM1_32                   475- 476   ///
      str    CPTM1_33                   477- 478   ///
      str    CPTM1_34                   479- 480   ///
      str    CPTM1_35                   481- 482   ///
      str    CPTM1_36                   483- 484   ///
      str    CPTM1_37                   485- 486   ///
      str    CPTM1_38                   487- 488   ///
      str    CPTM1_39                   489- 490   ///
      str    CPTM1_40                   491- 492   ///
      str    CPTM1_41                   493- 494   ///
      str    CPTM1_42                   495- 496   ///
      str    CPTM1_43                   497- 498   ///
      str    CPTM1_44                   499- 500   ///
      str    CPTM1_45                   501- 502   ///
      str    CPTM1_46                   503- 504   ///
      str    CPTM1_47                   505- 506   ///
      str    CPTM1_48                   507- 508   ///
      str    CPTM1_49                   509- 510   ///
      str    CPTM1_50                   511- 512   ///
      str    CPTM2_1                    513- 514   ///
      str    CPTM2_2                    515- 516   ///
      str    CPTM2_3                    517- 518   ///
      str    CPTM2_4                    519- 520   ///
      str    CPTM2_5                    521- 522   ///
      str    CPTM2_6                    523- 524   ///
      str    CPTM2_7                    525- 526   ///
      str    CPTM2_8                    527- 528   ///
      str    CPTM2_9                    529- 530   ///
      str    CPTM2_10                   531- 532   ///
      str    CPTM2_11                   533- 534   ///
      str    CPTM2_12                   535- 536   ///
      str    CPTM2_13                   537- 538   ///
      str    CPTM2_14                   539- 540   ///
      str    CPTM2_15                   541- 542   ///
      str    CPTM2_16                   543- 544   ///
      str    CPTM2_17                   545- 546   ///
      str    CPTM2_18                   547- 548   ///
      str    CPTM2_19                   549- 550   ///
      str    CPTM2_20                   551- 552   ///
      str    CPTM2_21                   553- 554   ///
      str    CPTM2_22                   555- 556   ///
      str    CPTM2_23                   557- 558   ///
      str    CPTM2_24                   559- 560   ///
      str    CPTM2_25                   561- 562   ///
      str    CPTM2_26                   563- 564   ///
      str    CPTM2_27                   565- 566   ///
      str    CPTM2_28                   567- 568   ///
      str    CPTM2_29                   569- 570   ///
      str    CPTM2_30                   571- 572   ///
      str    CPTM2_31                   573- 574   ///
      str    CPTM2_32                   575- 576   ///
      str    CPTM2_33                   577- 578   ///
      str    CPTM2_34                   579- 580   ///
      str    CPTM2_35                   581- 582   ///
      str    CPTM2_36                   583- 584   ///
      str    CPTM2_37                   585- 586   ///
      str    CPTM2_38                   587- 588   ///
      str    CPTM2_39                   589- 590   ///
      str    CPTM2_40                   591- 592   ///
      str    CPTM2_41                   593- 594   ///
      str    CPTM2_42                   595- 596   ///
      str    CPTM2_43                   597- 598   ///
      str    CPTM2_44                   599- 600   ///
      str    CPTM2_45                   601- 602   ///
      str    CPTM2_46                   603- 604   ///
      str    CPTM2_47                   605- 606   ///
      str    CPTM2_48                   607- 608   ///
      str    CPTM2_49                   609- 610   ///
      str    CPTM2_50                   611- 612   ///
      byte   DIED                       613- 614   ///
      str    DISP_X                     615- 616   ///
      byte   DISPUB04                   617- 618   ///
      byte   DISPUNIFORM                619- 620   ///
      byte   DMONTH                     621- 622   ///
      byte   DQTR                       623- 624   ///
      int    DXVER                      625- 627   ///
      byte   FEMALE                     628- 629   ///
      byte   HCUP_ED                    630- 631   ///
      byte   HCUP_OS                    632- 633   ///
      str    HOSPST                     634- 635   ///
      str    I10_DX1                    636- 642   ///
      str    I10_DX2                    643- 649   ///
      str    I10_DX3                    650- 656   ///
      str    I10_DX4                    657- 663   ///
      str    I10_DX5                    664- 670   ///
      str    I10_DX6                    671- 677   ///
      str    I10_DX7                    678- 684   ///
      str    I10_DX8                    685- 691   ///
      str    I10_DX9                    692- 698   ///
      str    I10_DX10                   699- 705   ///
      str    I10_DX11                   706- 712   ///
      str    I10_DX12                   713- 719   ///
      str    I10_DX13                   720- 726   ///
      str    I10_DX14                   727- 733   ///
      str    I10_DX15                   734- 740   ///
      str    I10_DX16                   741- 747   ///
      str    I10_DX17                   748- 754   ///
      str    I10_DX18                   755- 761   ///
      str    I10_DX19                   762- 768   ///
      str    I10_DX20                   769- 775   ///
      str    I10_DX21                   776- 782   ///
      str    I10_DX22                   783- 789   ///
      str    I10_DX23                   790- 796   ///
      str    I10_DX24                   797- 803   ///
      str    I10_DX25                   804- 810   ///
      str    I10_DX26                   811- 817   ///
      str    I10_DX27                   818- 824   ///
      str    I10_DX28                   825- 831   ///
      str    I10_ECAUSE1                832- 838   ///
      str    I10_ECAUSE2                839- 845   ///
      str    I10_ECAUSE3                846- 852   ///
      str    I10_ECAUSE4                853- 859   ///
      str    I10_ECAUSE5                860- 866   ///
      str    I10_ECAUSE6                867- 873   ///
      str    I10_ECAUSE7                874- 880   ///
      str    I10_ECAUSE8                881- 887   ///
      str    I10_ECAUSE9                888- 894   ///
      str    I10_ECAUSE10               895- 901   ///
      int    I10_NDX                    902- 904   ///
      byte   I10_NECAUSE                905- 906   ///
      int    I10_NPR                    907- 909   ///
      str    I10_PR1                    910- 916   ///
      str    I10_PR2                    917- 923   ///
      str    I10_PR3                    924- 930   ///
      str    I10_PR4                    931- 937   ///
      str    I10_PR5                    938- 944   ///
      str    I10_PR6                    945- 951   ///
      str    I10_PR7                    952- 958   ///
      str    I10_PR8                    959- 965   ///
      str    I10_PR9                    966- 972   ///
      str    I10_PR10                   973- 979   ///
      str    I10_PR11                   980- 986   ///
      str    I10_PR12                   987- 993   ///
      str    I10_PR13                   994-1000   ///
      str    I10_PR14                  1001-1007   ///
      str    I10_PR15                  1008-1014   ///
      str    I10_PR16                  1015-1021   ///
      str    I10_PR17                  1022-1028   ///
      str    I10_PR18                  1029-1035   ///
      str    I10_PR19                  1036-1042   ///
      str    I10_PR20                  1043-1049   ///
      str    I10_PR21                  1050-1056   ///
      str    I10_PR22                  1057-1063   ///
      str    I10_PR23                  1064-1070   ///
      str    I10_PR24                  1071-1077   ///
      str    I10_PR25                  1078-1084   ///
      int    I10_PROCTYPE              1085-1087   ///
      double KEY                       1088-1102   ///
      long   LOS                       1103-1107   ///
      long   LOS_X                     1108-1113   ///
      byte   MEDINCSTQ                 1114-1115   ///
      long   MRN_R                     1116-1124   ///
      int    NCPT                      1125-1128   ///
      double OS_TIME                   1129-1139   ///
      byte   PAY1                      1140-1141   ///
      str    PAY1_X                    1142-1143   ///
      int    PL_CBSA                   1144-1146   ///
      byte   PL_NCHS                   1147-1148   ///
      byte   PL_RUCC                   1149-1150   ///
      byte   PL_UIC                    1151-1152   ///
      byte   PL_UR_CAT4                1153-1154   ///
      str    PointOfOrigin_X           1155        ///
      str    PointOfOriginUB04         1156        ///
      long   PRDAY1                    1157-1161   ///
      long   PRDAY2                    1162-1166   ///
      long   PRDAY3                    1167-1171   ///
      long   PRDAY4                    1172-1176   ///
      long   PRDAY5                    1177-1181   ///
      long   PRDAY6                    1182-1186   ///
      long   PRDAY7                    1187-1191   ///
      long   PRDAY8                    1192-1196   ///
      long   PRDAY9                    1197-1201   ///
      long   PRDAY10                   1202-1206   ///
      long   PRDAY11                   1207-1211   ///
      long   PRDAY12                   1212-1216   ///
      long   PRDAY13                   1217-1221   ///
      long   PRDAY14                   1222-1226   ///
      long   PRDAY15                   1227-1231   ///
      long   PRDAY16                   1232-1236   ///
      long   PRDAY17                   1237-1241   ///
      long   PRDAY18                   1242-1246   ///
      long   PRDAY19                   1247-1251   ///
      long   PRDAY20                   1252-1256   ///
      long   PRDAY21                   1257-1261   ///
      long   PRDAY22                   1262-1266   ///
      long   PRDAY23                   1267-1271   ///
      long   PRDAY24                   1272-1276   ///
      long   PRDAY25                   1277-1281   ///
      int    PRVER                     1282-1284   ///
      str    PSTATE                    1285-1286   ///
      long   PSTCO2                    1287-1291   ///
      byte   RACE                      1292-1293   ///
      str    RACE_X                    1294-1295   ///
      byte   STATE_AS                  1296-1297   ///
      byte   STATE_ED                  1298-1299   ///
      byte   STATE_OS                  1300-1301   ///
      double TOTCHG                    1302-1311   ///
      double TOTCHG_X                  1312-1326   ///
      int    YEAR                      1327-1330   ///
      str    ZIP3                      1331-1333   ///
      int    ZIPINC_QRTL               1334-1336   ///
      long   HOSPID                    1337-1341   ///
      int    AGEGROUP                  1342-1344   ///
      int    AYEAR                     1345-1348   ///
      byte   BMONTH                    1349-1350   ///
      int    BYEAR                     1351-1354   ///
      byte   PRMONTH1                  1355-1356   ///
      byte   PRMONTH2                  1357-1358   ///
      byte   PRMONTH3                  1359-1360   ///
      byte   PRMONTH4                  1361-1362   ///
      byte   PRMONTH5                  1363-1364   ///
      byte   PRMONTH6                  1365-1366   ///
      byte   PRMONTH7                  1367-1368   ///
      byte   PRMONTH8                  1369-1370   ///
      byte   PRMONTH9                  1371-1372   ///
      byte   PRMONTH10                 1373-1374   ///
      byte   PRMONTH11                 1375-1376   ///
      byte   PRMONTH12                 1377-1378   ///
      byte   PRMONTH13                 1379-1380   ///
      byte   PRMONTH14                 1381-1382   ///
      byte   PRMONTH15                 1383-1384   ///
      byte   PRMONTH16                 1385-1386   ///
      byte   PRMONTH17                 1387-1388   ///
      byte   PRMONTH18                 1389-1390   ///
      byte   PRMONTH19                 1391-1392   ///
      byte   PRMONTH20                 1393-1394   ///
      byte   PRMONTH21                 1395-1396   ///
      byte   PRMONTH22                 1397-1398   ///
      byte   PRMONTH23                 1399-1400   ///
      byte   PRMONTH24                 1401-1402   ///
      byte   PRMONTH25                 1403-1404   ///
      int    PRYEAR1                   1405-1408   ///
      int    PRYEAR2                   1409-1412   ///
      int    PRYEAR3                   1413-1416   ///
      int    PRYEAR4                   1417-1420   ///
      int    PRYEAR5                   1421-1424   ///
      int    PRYEAR6                   1425-1428   ///
      int    PRYEAR7                   1429-1432   ///
      int    PRYEAR8                   1433-1436   ///
      int    PRYEAR9                   1437-1440   ///
      int    PRYEAR10                  1441-1444   ///
      int    PRYEAR11                  1445-1448   ///
      int    PRYEAR12                  1449-1452   ///
      int    PRYEAR13                  1453-1456   ///
      int    PRYEAR14                  1457-1460   ///
      int    PRYEAR15                  1461-1464   ///
      int    PRYEAR16                  1465-1468   ///
      int    PRYEAR17                  1469-1472   ///
      int    PRYEAR18                  1473-1476   ///
      int    PRYEAR19                  1477-1480   ///
      int    PRYEAR20                  1481-1484   ///
      int    PRYEAR21                  1485-1488   ///
      int    PRYEAR22                  1489-1492   ///
      int    PRYEAR23                  1493-1496   ///
      int    PRYEAR24                  1497-1500   ///
      int    PRYEAR25                  1501-1504   ///
      using  "HI_SEDD_2016_CORE.ASC"

***  Assign labels to the data elements ***
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
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
label var CPTM1_1                  "First CPT-4/HCPCS modifier 1"
label var CPTM1_2                  "First CPT-4/HCPCS modifier 2"
label var CPTM1_3                  "First CPT-4/HCPCS modifier 3"
label var CPTM1_4                  "First CPT-4/HCPCS modifier 4"
label var CPTM1_5                  "First CPT-4/HCPCS modifier 5"
label var CPTM1_6                  "First CPT-4/HCPCS modifier 6"
label var CPTM1_7                  "First CPT-4/HCPCS modifier 7"
label var CPTM1_8                  "First CPT-4/HCPCS modifier 8"
label var CPTM1_9                  "First CPT-4/HCPCS modifier 9"
label var CPTM1_10                 "First CPT-4/HCPCS modifier 10"
label var CPTM1_11                 "First CPT-4/HCPCS modifier 11"
label var CPTM1_12                 "First CPT-4/HCPCS modifier 12"
label var CPTM1_13                 "First CPT-4/HCPCS modifier 13"
label var CPTM1_14                 "First CPT-4/HCPCS modifier 14"
label var CPTM1_15                 "First CPT-4/HCPCS modifier 15"
label var CPTM1_16                 "First CPT-4/HCPCS modifier 16"
label var CPTM1_17                 "First CPT-4/HCPCS modifier 17"
label var CPTM1_18                 "First CPT-4/HCPCS modifier 18"
label var CPTM1_19                 "First CPT-4/HCPCS modifier 19"
label var CPTM1_20                 "First CPT-4/HCPCS modifier 20"
label var CPTM1_21                 "First CPT-4/HCPCS modifier 21"
label var CPTM1_22                 "First CPT-4/HCPCS modifier 22"
label var CPTM1_23                 "First CPT-4/HCPCS modifier 23"
label var CPTM1_24                 "First CPT-4/HCPCS modifier 24"
label var CPTM1_25                 "First CPT-4/HCPCS modifier 25"
label var CPTM1_26                 "First CPT-4/HCPCS modifier 26"
label var CPTM1_27                 "First CPT-4/HCPCS modifier 27"
label var CPTM1_28                 "First CPT-4/HCPCS modifier 28"
label var CPTM1_29                 "First CPT-4/HCPCS modifier 29"
label var CPTM1_30                 "First CPT-4/HCPCS modifier 30"
label var CPTM1_31                 "First CPT-4/HCPCS modifier 31"
label var CPTM1_32                 "First CPT-4/HCPCS modifier 32"
label var CPTM1_33                 "First CPT-4/HCPCS modifier 33"
label var CPTM1_34                 "First CPT-4/HCPCS modifier 34"
label var CPTM1_35                 "First CPT-4/HCPCS modifier 35"
label var CPTM1_36                 "First CPT-4/HCPCS modifier 36"
label var CPTM1_37                 "First CPT-4/HCPCS modifier 37"
label var CPTM1_38                 "First CPT-4/HCPCS modifier 38"
label var CPTM1_39                 "First CPT-4/HCPCS modifier 39"
label var CPTM1_40                 "First CPT-4/HCPCS modifier 40"
label var CPTM1_41                 "First CPT-4/HCPCS modifier 41"
label var CPTM1_42                 "First CPT-4/HCPCS modifier 42"
label var CPTM1_43                 "First CPT-4/HCPCS modifier 43"
label var CPTM1_44                 "First CPT-4/HCPCS modifier 44"
label var CPTM1_45                 "First CPT-4/HCPCS modifier 45"
label var CPTM1_46                 "First CPT-4/HCPCS modifier 46"
label var CPTM1_47                 "First CPT-4/HCPCS modifier 47"
label var CPTM1_48                 "First CPT-4/HCPCS modifier 48"
label var CPTM1_49                 "First CPT-4/HCPCS modifier 49"
label var CPTM1_50                 "First CPT-4/HCPCS modifier 50"
label var CPTM2_1                  "Second CPT-4/HCPCS modifier 1"
label var CPTM2_2                  "Second CPT-4/HCPCS modifier 2"
label var CPTM2_3                  "Second CPT-4/HCPCS modifier 3"
label var CPTM2_4                  "Second CPT-4/HCPCS modifier 4"
label var CPTM2_5                  "Second CPT-4/HCPCS modifier 5"
label var CPTM2_6                  "Second CPT-4/HCPCS modifier 6"
label var CPTM2_7                  "Second CPT-4/HCPCS modifier 7"
label var CPTM2_8                  "Second CPT-4/HCPCS modifier 8"
label var CPTM2_9                  "Second CPT-4/HCPCS modifier 9"
label var CPTM2_10                 "Second CPT-4/HCPCS modifier 10"
label var CPTM2_11                 "Second CPT-4/HCPCS modifier 11"
label var CPTM2_12                 "Second CPT-4/HCPCS modifier 12"
label var CPTM2_13                 "Second CPT-4/HCPCS modifier 13"
label var CPTM2_14                 "Second CPT-4/HCPCS modifier 14"
label var CPTM2_15                 "Second CPT-4/HCPCS modifier 15"
label var CPTM2_16                 "Second CPT-4/HCPCS modifier 16"
label var CPTM2_17                 "Second CPT-4/HCPCS modifier 17"
label var CPTM2_18                 "Second CPT-4/HCPCS modifier 18"
label var CPTM2_19                 "Second CPT-4/HCPCS modifier 19"
label var CPTM2_20                 "Second CPT-4/HCPCS modifier 20"
label var CPTM2_21                 "Second CPT-4/HCPCS modifier 21"
label var CPTM2_22                 "Second CPT-4/HCPCS modifier 22"
label var CPTM2_23                 "Second CPT-4/HCPCS modifier 23"
label var CPTM2_24                 "Second CPT-4/HCPCS modifier 24"
label var CPTM2_25                 "Second CPT-4/HCPCS modifier 25"
label var CPTM2_26                 "Second CPT-4/HCPCS modifier 26"
label var CPTM2_27                 "Second CPT-4/HCPCS modifier 27"
label var CPTM2_28                 "Second CPT-4/HCPCS modifier 28"
label var CPTM2_29                 "Second CPT-4/HCPCS modifier 29"
label var CPTM2_30                 "Second CPT-4/HCPCS modifier 30"
label var CPTM2_31                 "Second CPT-4/HCPCS modifier 31"
label var CPTM2_32                 "Second CPT-4/HCPCS modifier 32"
label var CPTM2_33                 "Second CPT-4/HCPCS modifier 33"
label var CPTM2_34                 "Second CPT-4/HCPCS modifier 34"
label var CPTM2_35                 "Second CPT-4/HCPCS modifier 35"
label var CPTM2_36                 "Second CPT-4/HCPCS modifier 36"
label var CPTM2_37                 "Second CPT-4/HCPCS modifier 37"
label var CPTM2_38                 "Second CPT-4/HCPCS modifier 38"
label var CPTM2_39                 "Second CPT-4/HCPCS modifier 39"
label var CPTM2_40                 "Second CPT-4/HCPCS modifier 40"
label var CPTM2_41                 "Second CPT-4/HCPCS modifier 41"
label var CPTM2_42                 "Second CPT-4/HCPCS modifier 42"
label var CPTM2_43                 "Second CPT-4/HCPCS modifier 43"
label var CPTM2_44                 "Second CPT-4/HCPCS modifier 44"
label var CPTM2_45                 "Second CPT-4/HCPCS modifier 45"
label var CPTM2_46                 "Second CPT-4/HCPCS modifier 46"
label var CPTM2_47                 "Second CPT-4/HCPCS modifier 47"
label var CPTM2_48                 "Second CPT-4/HCPCS modifier 48"
label var CPTM2_49                 "Second CPT-4/HCPCS modifier 49"
label var CPTM2_50                 "Second CPT-4/HCPCS modifier 50"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DXVER                    "Diagnosis Version"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HOSPST                   "Hospital state postal code"
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
label var I10_ECAUSE1              "ICD-10-CM External cause 1"
label var I10_ECAUSE2              "ICD-10-CM External cause 2"
label var I10_ECAUSE3              "ICD-10-CM External cause 3"
label var I10_ECAUSE4              "ICD-10-CM External cause 4"
label var I10_ECAUSE5              "ICD-10-CM External cause 5"
label var I10_ECAUSE6              "ICD-10-CM External cause 6"
label var I10_ECAUSE7              "ICD-10-CM External cause 7"
label var I10_ECAUSE8              "ICD-10-CM External cause 8"
label var I10_ECAUSE9              "ICD-10-CM External cause 9"
label var I10_ECAUSE10             "ICD-10-CM External cause 10"
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_NECAUSE              "ICD-10-CM Number of External cause codes on this record"
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
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes(RUCC)"
label var PL_UIC                   "Patient location: Urban Influence Codes"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
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
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var STATE_AS                 "State Ambulatory Surgery service indicator"
label var STATE_ED                 "State Emergency Department service indicator"
label var STATE_OS                 "State Observation Stay service indicator"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var YEAR                     "Calendar year"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var HOSPID                   "HCUP hospital identification number"
label var AGEGROUP                 "Age Group"
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
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NECAUSE               (-9 -8 -6 -5=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode NCPT                      (-999 -888 -666=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
recode PL_RUCC                   (-9 -8 -6 -5=.)
recode PL_UIC                    (-9 -8 -6 -5=.)
recode PL_UR_CAT4                (-9 -8 -6 -5=.)
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
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode STATE_AS                  (-9 -8 -6 -5=.)
recode STATE_ED                  (-9 -8 -6 -5=.)
recode STATE_OS                  (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AGEGROUP                  (-99 -88 -66=.)
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

save "HI_SEDD_2016_CORE.dta", replace
