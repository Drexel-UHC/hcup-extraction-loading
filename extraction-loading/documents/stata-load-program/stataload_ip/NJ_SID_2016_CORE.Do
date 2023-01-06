/*****************************************************************************
* Creation Date: 09/07/2018   
* NJ_SID_2016_CORE.Do
* This program will load the 2016 NJ ASCII CORE File into Stata.
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
      byte   ATYPE                       16-  17   ///
      byte   AWEEKEND                    18-  19   ///
      str    BILLTYPE                    20-  23   ///
      int    BWT                         24-  27   ///
      str    CPT1                        28-  32   ///
      str    CPT2                        33-  37   ///
      str    CPT3                        38-  42   ///
      str    CPT4                        43-  47   ///
      str    CPT5                        48-  52   ///
      str    CPT6                        53-  57   ///
      str    CPT7                        58-  62   ///
      str    CPT8                        63-  67   ///
      str    CPT9                        68-  72   ///
      str    CPT10                       73-  77   ///
      str    CPT11                       78-  82   ///
      str    CPT12                       83-  87   ///
      str    CPT13                       88-  92   ///
      str    CPT14                       93-  97   ///
      str    CPT15                       98- 102   ///
      str    CPT16                      103- 107   ///
      str    CPT17                      108- 112   ///
      str    CPT18                      113- 117   ///
      str    CPT19                      118- 122   ///
      str    CPT20                      123- 127   ///
      str    CPT21                      128- 132   ///
      str    CPT22                      133- 137   ///
      str    CPT23                      138- 142   ///
      str    CPT24                      143- 147   ///
      str    CPT25                      148- 152   ///
      str    CPT26                      153- 157   ///
      str    CPT27                      158- 162   ///
      str    CPT28                      163- 167   ///
      str    CPT29                      168- 172   ///
      str    CPT30                      173- 177   ///
      str    CPT31                      178- 182   ///
      str    CPT32                      183- 187   ///
      str    CPT33                      188- 192   ///
      str    CPT34                      193- 197   ///
      str    CPT35                      198- 202   ///
      str    CPT36                      203- 207   ///
      str    CPT37                      208- 212   ///
      str    CPT38                      213- 217   ///
      str    CPT39                      218- 222   ///
      str    CPT40                      223- 227   ///
      str    CPT41                      228- 232   ///
      str    CPT42                      233- 237   ///
      str    CPT43                      238- 242   ///
      str    CPT44                      243- 247   ///
      str    CPT45                      248- 252   ///
      str    CPT46                      253- 257   ///
      str    CPT47                      258- 262   ///
      str    CPT48                      263- 267   ///
      str    CPT49                      268- 272   ///
      str    CPT50                      273- 277   ///
      int    CPTCCS1                    278- 280   ///
      int    CPTCCS2                    281- 283   ///
      int    CPTCCS3                    284- 286   ///
      int    CPTCCS4                    287- 289   ///
      int    CPTCCS5                    290- 292   ///
      int    CPTCCS6                    293- 295   ///
      int    CPTCCS7                    296- 298   ///
      int    CPTCCS8                    299- 301   ///
      int    CPTCCS9                    302- 304   ///
      int    CPTCCS10                   305- 307   ///
      int    CPTCCS11                   308- 310   ///
      int    CPTCCS12                   311- 313   ///
      int    CPTCCS13                   314- 316   ///
      int    CPTCCS14                   317- 319   ///
      int    CPTCCS15                   320- 322   ///
      int    CPTCCS16                   323- 325   ///
      int    CPTCCS17                   326- 328   ///
      int    CPTCCS18                   329- 331   ///
      int    CPTCCS19                   332- 334   ///
      int    CPTCCS20                   335- 337   ///
      int    CPTCCS21                   338- 340   ///
      int    CPTCCS22                   341- 343   ///
      int    CPTCCS23                   344- 346   ///
      int    CPTCCS24                   347- 349   ///
      int    CPTCCS25                   350- 352   ///
      int    CPTCCS26                   353- 355   ///
      int    CPTCCS27                   356- 358   ///
      int    CPTCCS28                   359- 361   ///
      int    CPTCCS29                   362- 364   ///
      int    CPTCCS30                   365- 367   ///
      int    CPTCCS31                   368- 370   ///
      int    CPTCCS32                   371- 373   ///
      int    CPTCCS33                   374- 376   ///
      int    CPTCCS34                   377- 379   ///
      int    CPTCCS35                   380- 382   ///
      int    CPTCCS36                   383- 385   ///
      int    CPTCCS37                   386- 388   ///
      int    CPTCCS38                   389- 391   ///
      int    CPTCCS39                   392- 394   ///
      int    CPTCCS40                   395- 397   ///
      int    CPTCCS41                   398- 400   ///
      int    CPTCCS42                   401- 403   ///
      int    CPTCCS43                   404- 406   ///
      int    CPTCCS44                   407- 409   ///
      int    CPTCCS45                   410- 412   ///
      int    CPTCCS46                   413- 415   ///
      int    CPTCCS47                   416- 418   ///
      int    CPTCCS48                   419- 421   ///
      int    CPTCCS49                   422- 424   ///
      int    CPTCCS50                   425- 427   ///
      str    CPTM1_1                    428- 429   ///
      str    CPTM1_2                    430- 431   ///
      str    CPTM1_3                    432- 433   ///
      str    CPTM1_4                    434- 435   ///
      str    CPTM1_5                    436- 437   ///
      str    CPTM1_6                    438- 439   ///
      str    CPTM1_7                    440- 441   ///
      str    CPTM1_8                    442- 443   ///
      str    CPTM1_9                    444- 445   ///
      str    CPTM1_10                   446- 447   ///
      str    CPTM1_11                   448- 449   ///
      str    CPTM1_12                   450- 451   ///
      str    CPTM1_13                   452- 453   ///
      str    CPTM1_14                   454- 455   ///
      str    CPTM1_15                   456- 457   ///
      str    CPTM1_16                   458- 459   ///
      str    CPTM1_17                   460- 461   ///
      str    CPTM1_18                   462- 463   ///
      str    CPTM1_19                   464- 465   ///
      str    CPTM1_20                   466- 467   ///
      str    CPTM1_21                   468- 469   ///
      str    CPTM1_22                   470- 471   ///
      str    CPTM1_23                   472- 473   ///
      str    CPTM1_24                   474- 475   ///
      str    CPTM1_25                   476- 477   ///
      str    CPTM1_26                   478- 479   ///
      str    CPTM1_27                   480- 481   ///
      str    CPTM1_28                   482- 483   ///
      str    CPTM1_29                   484- 485   ///
      str    CPTM1_30                   486- 487   ///
      str    CPTM1_31                   488- 489   ///
      str    CPTM1_32                   490- 491   ///
      str    CPTM1_33                   492- 493   ///
      str    CPTM1_34                   494- 495   ///
      str    CPTM1_35                   496- 497   ///
      str    CPTM1_36                   498- 499   ///
      str    CPTM1_37                   500- 501   ///
      str    CPTM1_38                   502- 503   ///
      str    CPTM1_39                   504- 505   ///
      str    CPTM1_40                   506- 507   ///
      str    CPTM1_41                   508- 509   ///
      str    CPTM1_42                   510- 511   ///
      str    CPTM1_43                   512- 513   ///
      str    CPTM1_44                   514- 515   ///
      str    CPTM1_45                   516- 517   ///
      str    CPTM1_46                   518- 519   ///
      str    CPTM1_47                   520- 521   ///
      str    CPTM1_48                   522- 523   ///
      str    CPTM1_49                   524- 525   ///
      str    CPTM1_50                   526- 527   ///
      str    CPTM2_1                    528- 529   ///
      str    CPTM2_2                    530- 531   ///
      str    CPTM2_3                    532- 533   ///
      str    CPTM2_4                    534- 535   ///
      str    CPTM2_5                    536- 537   ///
      str    CPTM2_6                    538- 539   ///
      str    CPTM2_7                    540- 541   ///
      str    CPTM2_8                    542- 543   ///
      str    CPTM2_9                    544- 545   ///
      str    CPTM2_10                   546- 547   ///
      str    CPTM2_11                   548- 549   ///
      str    CPTM2_12                   550- 551   ///
      str    CPTM2_13                   552- 553   ///
      str    CPTM2_14                   554- 555   ///
      str    CPTM2_15                   556- 557   ///
      str    CPTM2_16                   558- 559   ///
      str    CPTM2_17                   560- 561   ///
      str    CPTM2_18                   562- 563   ///
      str    CPTM2_19                   564- 565   ///
      str    CPTM2_20                   566- 567   ///
      str    CPTM2_21                   568- 569   ///
      str    CPTM2_22                   570- 571   ///
      str    CPTM2_23                   572- 573   ///
      str    CPTM2_24                   574- 575   ///
      str    CPTM2_25                   576- 577   ///
      str    CPTM2_26                   578- 579   ///
      str    CPTM2_27                   580- 581   ///
      str    CPTM2_28                   582- 583   ///
      str    CPTM2_29                   584- 585   ///
      str    CPTM2_30                   586- 587   ///
      str    CPTM2_31                   588- 589   ///
      str    CPTM2_32                   590- 591   ///
      str    CPTM2_33                   592- 593   ///
      str    CPTM2_34                   594- 595   ///
      str    CPTM2_35                   596- 597   ///
      str    CPTM2_36                   598- 599   ///
      str    CPTM2_37                   600- 601   ///
      str    CPTM2_38                   602- 603   ///
      str    CPTM2_39                   604- 605   ///
      str    CPTM2_40                   606- 607   ///
      str    CPTM2_41                   608- 609   ///
      str    CPTM2_42                   610- 611   ///
      str    CPTM2_43                   612- 613   ///
      str    CPTM2_44                   614- 615   ///
      str    CPTM2_45                   616- 617   ///
      str    CPTM2_46                   618- 619   ///
      str    CPTM2_47                   620- 621   ///
      str    CPTM2_48                   622- 623   ///
      str    CPTM2_49                   624- 625   ///
      str    CPTM2_50                   626- 627   ///
      int    DHOUR                      628- 631   ///
      byte   DIED                       632- 633   ///
      str    DISP_X                     634- 635   ///
      byte   DISPUB04                   636- 637   ///
      byte   DISPUNIFORM                638- 639   ///
      byte   DMONTH                     640- 641   ///
      byte   DNR                        642- 643   ///
      byte   DQTR                       644- 645   ///
      int    DRG                        646- 648   ///
      int    DRG_NoPOA                  649- 651   ///
      byte   DRGVER                     652- 653   ///
      str    DSHOSPID                   654- 670   ///
      str    DXPOA1                     671        ///
      str    DXPOA2                     672        ///
      str    DXPOA3                     673        ///
      str    DXPOA4                     674        ///
      str    DXPOA5                     675        ///
      str    DXPOA6                     676        ///
      str    DXPOA7                     677        ///
      str    DXPOA8                     678        ///
      str    DXPOA9                     679        ///
      str    DXPOA10                    680        ///
      str    DXPOA11                    681        ///
      str    DXPOA12                    682        ///
      str    DXPOA13                    683        ///
      str    DXPOA14                    684        ///
      str    DXPOA15                    685        ///
      str    DXPOA16                    686        ///
      str    DXPOA17                    687        ///
      str    DXPOA18                    688        ///
      str    DXPOA19                    689        ///
      str    DXPOA20                    690        ///
      str    DXPOA21                    691        ///
      str    DXPOA22                    692        ///
      str    DXPOA23                    693        ///
      str    DXPOA24                    694        ///
      str    DXPOA25                    695        ///
      int    DXVER                      696- 698   ///
      str    E_POA1                     699        ///
      str    E_POA2                     700        ///
      str    E_POA3                     701        ///
      str    E_POA4                     702        ///
      str    E_POA5                     703        ///
      str    E_POA6                     704        ///
      str    E_POA7                     705        ///
      str    E_POA8                     706        ///
      str    E_POA9                     707        ///
      byte   FEMALE                     708- 709   ///
      byte   HCUP_ED                    710- 711   ///
      byte   HCUP_OS                    712- 713   ///
      byte   HISPANIC                   714- 715   ///
      str    HISPANIC_X                 716- 720   ///
      byte   Homeless                   721- 722   ///
      str    HOSPST                     723- 724   ///
      str    I10_DX_Admitting           725- 731   ///
      str    I10_DX1                    732- 738   ///
      str    I10_DX2                    739- 745   ///
      str    I10_DX3                    746- 752   ///
      str    I10_DX4                    753- 759   ///
      str    I10_DX5                    760- 766   ///
      str    I10_DX6                    767- 773   ///
      str    I10_DX7                    774- 780   ///
      str    I10_DX8                    781- 787   ///
      str    I10_DX9                    788- 794   ///
      str    I10_DX10                   795- 801   ///
      str    I10_DX11                   802- 808   ///
      str    I10_DX12                   809- 815   ///
      str    I10_DX13                   816- 822   ///
      str    I10_DX14                   823- 829   ///
      str    I10_DX15                   830- 836   ///
      str    I10_DX16                   837- 843   ///
      str    I10_DX17                   844- 850   ///
      str    I10_DX18                   851- 857   ///
      str    I10_DX19                   858- 864   ///
      str    I10_DX20                   865- 871   ///
      str    I10_DX21                   872- 878   ///
      str    I10_DX22                   879- 885   ///
      str    I10_DX23                   886- 892   ///
      str    I10_DX24                   893- 899   ///
      str    I10_DX25                   900- 906   ///
      str    I10_ECAUSE1                907- 913   ///
      str    I10_ECAUSE2                914- 920   ///
      str    I10_ECAUSE3                921- 927   ///
      str    I10_ECAUSE4                928- 934   ///
      str    I10_ECAUSE5                935- 941   ///
      str    I10_ECAUSE6                942- 948   ///
      str    I10_ECAUSE7                949- 955   ///
      str    I10_ECAUSE8                956- 962   ///
      str    I10_ECAUSE9                963- 969   ///
      int    I10_NDX                    970- 972   ///
      byte   I10_NECAUSE                973- 974   ///
      int    I10_NPR                    975- 977   ///
      str    I10_PR1                    978- 984   ///
      str    I10_PR2                    985- 991   ///
      str    I10_PR3                    992- 998   ///
      str    I10_PR4                    999-1005   ///
      str    I10_PR5                   1006-1012   ///
      str    I10_PR6                   1013-1019   ///
      str    I10_PR7                   1020-1026   ///
      str    I10_PR8                   1027-1033   ///
      str    I10_PR9                   1034-1040   ///
      str    I10_PR10                  1041-1047   ///
      str    I10_PR11                  1048-1054   ///
      str    I10_PR12                  1055-1061   ///
      str    I10_PR13                  1062-1068   ///
      str    I10_PR14                  1069-1075   ///
      str    I10_PR15                  1076-1082   ///
      str    I10_PR16                  1083-1089   ///
      str    I10_PR17                  1090-1096   ///
      str    I10_PR18                  1097-1103   ///
      str    I10_PR19                  1104-1110   ///
      str    I10_PR20                  1111-1117   ///
      str    I10_PR21                  1118-1124   ///
      str    I10_PR22                  1125-1131   ///
      str    I10_PR23                  1132-1138   ///
      str    I10_PR24                  1139-1145   ///
      str    I10_PR25                  1146-1152   ///
      int    I10_PROCTYPE              1153-1155   ///
      double KEY                       1156-1170   ///
      long   LOS                       1171-1175   ///
      long   LOS_X                     1176-1181   ///
      str    MARITALSTATUS_X           1182        ///
      str    MARITALSTATUSUB04         1183        ///
      byte   MDC                       1184-1185   ///
      byte   MDC_NoPOA                 1186-1187   ///
      long   MDNUM1_R                  1188-1196   ///
      long   MDNUM2_R                  1197-1205   ///
      byte   MEDINCSTQ                 1206-1207   ///
      long   MOMNUM_R                  1208-1216   ///
      long   MRN_R                     1217-1225   ///
      int    NCPT                      1226-1229   ///
      double OS_TIME                   1230-1240   ///
      str    P7EDSRC_X                 1241-1242   ///
      byte   PAY1                      1243-1244   ///
      str    PAY1_X                    1245-1247   ///
      byte   PAY2                      1248-1249   ///
      str    PAY2_X                    1250-1252   ///
      byte   PAY3                      1253-1254   ///
      str    PAY3_X                    1255-1257   ///
      int    PL_CBSA                   1258-1260   ///
      byte   PL_NCHS                   1261-1262   ///
      byte   PL_RUCC                   1263-1264   ///
      byte   PL_UIC                    1265-1266   ///
      byte   PL_UR_CAT4                1267-1268   ///
      byte   POA_Disch_Edit1           1269-1270   ///
      byte   POA_Disch_Edit2           1271-1272   ///
      byte   POA_Hosp_Edit1            1273-1274   ///
      byte   POA_Hosp_Edit2            1275-1276   ///
      byte   POA_Hosp_Edit3            1277-1278   ///
      double POA_Hosp_Edit3_Value      1279-1286   ///
      str    PointOfOrigin_X           1287        ///
      str    PointOfOriginUB04         1288        ///
      long   PRDAY1                    1289-1293   ///
      long   PRDAY2                    1294-1298   ///
      long   PRDAY3                    1299-1303   ///
      long   PRDAY4                    1304-1308   ///
      long   PRDAY5                    1309-1313   ///
      long   PRDAY6                    1314-1318   ///
      long   PRDAY7                    1319-1323   ///
      long   PRDAY8                    1324-1328   ///
      long   PRDAY9                    1329-1333   ///
      long   PRDAY10                   1334-1338   ///
      long   PRDAY11                   1339-1343   ///
      long   PRDAY12                   1344-1348   ///
      long   PRDAY13                   1349-1353   ///
      long   PRDAY14                   1354-1358   ///
      long   PRDAY15                   1359-1363   ///
      long   PRDAY16                   1364-1368   ///
      long   PRDAY17                   1369-1373   ///
      long   PRDAY18                   1374-1378   ///
      long   PRDAY19                   1379-1383   ///
      long   PRDAY20                   1384-1388   ///
      long   PRDAY21                   1389-1393   ///
      long   PRDAY22                   1394-1398   ///
      long   PRDAY23                   1399-1403   ///
      long   PRDAY24                   1404-1408   ///
      long   PRDAY25                   1409-1413   ///
      str    PrimLang                  1414-1416   ///
      int    PRVER                     1417-1419   ///
      str    PSTATE                    1420-1421   ///
      long   PSTCO                     1422-1426   ///
      long   PSTCO2                    1427-1431   ///
      byte   RACE                      1432-1433   ///
      str    RACE_X                    1434-1438   ///
      byte   READMIT                   1439-1440   ///
      double TOTCHG                    1441-1450   ///
      double TOTCHG_X                  1451-1465   ///
      byte   TRAN_IN                   1466-1467   ///
      byte   TRAN_OUT                  1468-1469   ///
      int    YEAR                      1470-1473   ///
      str    ZIP                       1474-1478   ///
      str    ZIP3                      1479-1481   ///
      int    ZIPINC_QRTL               1482-1484   ///
      str    TOWN                      1485-1488   ///
      int    AYEAR                     1489-1492   ///
      byte   BMONTH                    1493-1494   ///
      int    BYEAR                     1495-1498   ///
      byte   PRMONTH1                  1499-1500   ///
      byte   PRMONTH2                  1501-1502   ///
      byte   PRMONTH3                  1503-1504   ///
      byte   PRMONTH4                  1505-1506   ///
      byte   PRMONTH5                  1507-1508   ///
      byte   PRMONTH6                  1509-1510   ///
      byte   PRMONTH7                  1511-1512   ///
      byte   PRMONTH8                  1513-1514   ///
      byte   PRMONTH9                  1515-1516   ///
      byte   PRMONTH10                 1517-1518   ///
      byte   PRMONTH11                 1519-1520   ///
      byte   PRMONTH12                 1521-1522   ///
      byte   PRMONTH13                 1523-1524   ///
      byte   PRMONTH14                 1525-1526   ///
      byte   PRMONTH15                 1527-1528   ///
      byte   PRMONTH16                 1529-1530   ///
      byte   PRMONTH17                 1531-1532   ///
      byte   PRMONTH18                 1533-1534   ///
      byte   PRMONTH19                 1535-1536   ///
      byte   PRMONTH20                 1537-1538   ///
      byte   PRMONTH21                 1539-1540   ///
      byte   PRMONTH22                 1541-1542   ///
      byte   PRMONTH23                 1543-1544   ///
      byte   PRMONTH24                 1545-1546   ///
      byte   PRMONTH25                 1547-1548   ///
      int    PRYEAR1                   1549-1552   ///
      int    PRYEAR2                   1553-1556   ///
      int    PRYEAR3                   1557-1560   ///
      int    PRYEAR4                   1561-1564   ///
      int    PRYEAR5                   1565-1568   ///
      int    PRYEAR6                   1569-1572   ///
      int    PRYEAR7                   1573-1576   ///
      int    PRYEAR8                   1577-1580   ///
      int    PRYEAR9                   1581-1584   ///
      int    PRYEAR10                  1585-1588   ///
      int    PRYEAR11                  1589-1592   ///
      int    PRYEAR12                  1593-1596   ///
      int    PRYEAR13                  1597-1600   ///
      int    PRYEAR14                  1601-1604   ///
      int    PRYEAR15                  1605-1608   ///
      int    PRYEAR16                  1609-1612   ///
      int    PRYEAR17                  1613-1616   ///
      int    PRYEAR18                  1617-1620   ///
      int    PRYEAR19                  1621-1624   ///
      int    PRYEAR20                  1625-1628   ///
      int    PRYEAR21                  1629-1632   ///
      int    PRYEAR22                  1633-1636   ///
      int    PRYEAR23                  1637-1640   ///
      int    PRYEAR24                  1641-1644   ///
      int    PRYEAR25                  1645-1648   ///
      using  "NJ_SID_2016_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
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
label var DXVER                    "Diagnosis Version"
label var E_POA1                   "External cause 1, present on admission indicator"
label var E_POA2                   "External cause 2, present on admission indicator"
label var E_POA3                   "External cause 3, present on admission indicator"
label var E_POA4                   "External cause 4, present on admission indicator"
label var E_POA5                   "External cause 5, present on admission indicator"
label var E_POA6                   "External cause 6, present on admission indicator"
label var E_POA7                   "External cause 7, present on admission indicator"
label var E_POA8                   "External cause 8, present on admission indicator"
label var E_POA9                   "External cause 9, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
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
label var I10_ECAUSE1              "ICD-10-CM External cause 1"
label var I10_ECAUSE2              "ICD-10-CM External cause 2"
label var I10_ECAUSE3              "ICD-10-CM External cause 3"
label var I10_ECAUSE4              "ICD-10-CM External cause 4"
label var I10_ECAUSE5              "ICD-10-CM External cause 5"
label var I10_ECAUSE6              "ICD-10-CM External cause 6"
label var I10_ECAUSE7              "ICD-10-CM External cause 7"
label var I10_ECAUSE8              "ICD-10-CM External cause 8"
label var I10_ECAUSE9              "ICD-10-CM External cause 9"
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
label var MARITALSTATUS_X          "Patient's marital status (as received from source)"
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MOMNUM_R                 "Mother's number (re-identified)"
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
label var PRDAY22                  "Number of days from admission to I10_PR22"
label var PRDAY23                  "Number of days from admission to I10_PR23"
label var PRDAY24                  "Number of days from admission to I10_PR24"
label var PRDAY25                  "Number of days from admission to I10_PR25"
label var PrimLang                 "Primary language of patient"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var READMIT                  "Readmission"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var TOWN                     "Patient town of residence (as received from source)"
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
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
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
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NECAUSE               (-9 -8 -6 -5=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MOMNUM_R                  (-99999999 -88888888 -66666666=.)
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
recode PRDAY22                   (-9999 -8888 -6666=.)
recode PRDAY23                   (-9999 -8888 -6666=.)
recode PRDAY24                   (-9999 -8888 -6666=.)
recode PRDAY25                   (-9999 -8888 -6666=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode READMIT                   (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
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

save "NJ_SID_2016_CORE.dta", replace
