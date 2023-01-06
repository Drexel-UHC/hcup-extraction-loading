/*****************************************************************************
* Creation Date: 01/04/2018   
* MA_SEDD_2015q1q3_CORE.Do
* This program will load the 2015 MA ASCII CORE File into Stata.
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
      byte   ASOURCE                     13-  14   ///
      str    ASOURCE_X                   15        ///
      byte   ATYPE                       16-  17   ///
      byte   AWEEKEND                    18-  19   ///
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
      int    CPTCCS1                    420- 422   ///
      int    CPTCCS2                    423- 425   ///
      int    CPTCCS3                    426- 428   ///
      int    CPTCCS4                    429- 431   ///
      int    CPTCCS5                    432- 434   ///
      int    CPTCCS6                    435- 437   ///
      int    CPTCCS7                    438- 440   ///
      int    CPTCCS8                    441- 443   ///
      int    CPTCCS9                    444- 446   ///
      int    CPTCCS10                   447- 449   ///
      int    CPTCCS11                   450- 452   ///
      int    CPTCCS12                   453- 455   ///
      int    CPTCCS13                   456- 458   ///
      int    CPTCCS14                   459- 461   ///
      int    CPTCCS15                   462- 464   ///
      int    CPTCCS16                   465- 467   ///
      int    CPTCCS17                   468- 470   ///
      int    CPTCCS18                   471- 473   ///
      int    CPTCCS19                   474- 476   ///
      int    CPTCCS20                   477- 479   ///
      int    CPTCCS21                   480- 482   ///
      int    CPTCCS22                   483- 485   ///
      int    CPTCCS23                   486- 488   ///
      int    CPTCCS24                   489- 491   ///
      int    CPTCCS25                   492- 494   ///
      int    CPTCCS26                   495- 497   ///
      int    CPTCCS27                   498- 500   ///
      int    CPTCCS28                   501- 503   ///
      int    CPTCCS29                   504- 506   ///
      int    CPTCCS30                   507- 509   ///
      int    CPTCCS31                   510- 512   ///
      int    CPTCCS32                   513- 515   ///
      int    CPTCCS33                   516- 518   ///
      int    CPTCCS34                   519- 521   ///
      int    CPTCCS35                   522- 524   ///
      int    CPTCCS36                   525- 527   ///
      int    CPTCCS37                   528- 530   ///
      int    CPTCCS38                   531- 533   ///
      int    CPTCCS39                   534- 536   ///
      int    CPTCCS40                   537- 539   ///
      int    CPTCCS41                   540- 542   ///
      int    CPTCCS42                   543- 545   ///
      int    CPTCCS43                   546- 548   ///
      int    CPTCCS44                   549- 551   ///
      int    CPTCCS45                   552- 554   ///
      int    CPTCCS46                   555- 557   ///
      int    CPTCCS47                   558- 560   ///
      int    CPTCCS48                   561- 563   ///
      int    CPTCCS49                   564- 566   ///
      int    CPTCCS50                   567- 569   ///
      int    CPTCCS51                   570- 572   ///
      int    CPTCCS52                   573- 575   ///
      int    CPTCCS53                   576- 578   ///
      int    CPTCCS54                   579- 581   ///
      int    CPTCCS55                   582- 584   ///
      int    CPTCCS56                   585- 587   ///
      int    CPTCCS57                   588- 590   ///
      int    CPTCCS58                   591- 593   ///
      int    CPTCCS59                   594- 596   ///
      int    CPTCCS60                   597- 599   ///
      int    CPTCCS61                   600- 602   ///
      int    CPTCCS62                   603- 605   ///
      int    CPTCCS63                   606- 608   ///
      int    CPTCCS64                   609- 611   ///
      int    CPTCCS65                   612- 614   ///
      int    CPTCCS66                   615- 617   ///
      int    CPTCCS67                   618- 620   ///
      int    CPTCCS68                   621- 623   ///
      int    CPTCCS69                   624- 626   ///
      int    CPTCCS70                   627- 629   ///
      int    CPTCCS71                   630- 632   ///
      int    CPTCCS72                   633- 635   ///
      int    CPTCCS73                   636- 638   ///
      int    CPTCCS74                   639- 641   ///
      int    CPTCCS75                   642- 644   ///
      int    CPTCCS76                   645- 647   ///
      int    CPTCCS77                   648- 650   ///
      int    CPTCCS78                   651- 653   ///
      int    CPTCCS79                   654- 656   ///
      int    CPTCCS80                   657- 659   ///
      int    DaysBetweenVisits          660- 663   ///
      long   DaysToEvent                664- 669   ///
      int    DHOUR                      670- 673   ///
      byte   DIED                       674- 675   ///
      str    DISP_X                     676        ///
      byte   DISPUNIFORM                677- 678   ///
      byte   DMONTH                     679- 680   ///
      byte   DQTR                       681- 682   ///
      str    DSHOSPID                   683- 699   ///
      long   DURATION                   700- 705   ///
      str    DX1                        706- 712   ///
      str    DX2                        713- 719   ///
      str    DX3                        720- 726   ///
      str    DX4                        727- 733   ///
      str    DX5                        734- 740   ///
      str    DX6                        741- 747   ///
      str    DX7                        748- 754   ///
      str    DX8                        755- 761   ///
      str    DX9                        762- 768   ///
      str    DX10                       769- 775   ///
      str    DX11                       776- 782   ///
      str    DX12                       783- 789   ///
      str    DX13                       790- 796   ///
      str    DX14                       797- 803   ///
      str    DX15                       804- 810   ///
      str    DX16                       811- 817   ///
      str    DX17                       818- 824   ///
      str    DX18                       825- 831   ///
      str    DX19                       832- 838   ///
      str    DX20                       839- 845   ///
      str    DX21                       846- 852   ///
      str    DX22                       853- 859   ///
      str    DX23                       860- 866   ///
      str    DX24                       867- 873   ///
      str    DX25                       874- 880   ///
      str    DX26                       881- 887   ///
      str    DX27                       888- 894   ///
      str    DX28                       895- 901   ///
      str    DX29                       902- 908   ///
      str    DX30                       909- 915   ///
      str    DX31                       916- 922   ///
      str    DX32                       923- 929   ///
      int    DXCCS1                     930- 933   ///
      int    DXCCS2                     934- 937   ///
      int    DXCCS3                     938- 941   ///
      int    DXCCS4                     942- 945   ///
      int    DXCCS5                     946- 949   ///
      int    DXCCS6                     950- 953   ///
      int    DXCCS7                     954- 957   ///
      int    DXCCS8                     958- 961   ///
      int    DXCCS9                     962- 965   ///
      int    DXCCS10                    966- 969   ///
      int    DXCCS11                    970- 973   ///
      int    DXCCS12                    974- 977   ///
      int    DXCCS13                    978- 981   ///
      int    DXCCS14                    982- 985   ///
      int    DXCCS15                    986- 989   ///
      int    DXCCS16                    990- 993   ///
      int    DXCCS17                    994- 997   ///
      int    DXCCS18                    998-1001   ///
      int    DXCCS19                   1002-1005   ///
      int    DXCCS20                   1006-1009   ///
      int    DXCCS21                   1010-1013   ///
      int    DXCCS22                   1014-1017   ///
      int    DXCCS23                   1018-1021   ///
      int    DXCCS24                   1022-1025   ///
      int    DXCCS25                   1026-1029   ///
      int    DXCCS26                   1030-1033   ///
      int    DXCCS27                   1034-1037   ///
      int    DXCCS28                   1038-1041   ///
      int    DXCCS29                   1042-1045   ///
      int    DXCCS30                   1046-1049   ///
      int    DXCCS31                   1050-1053   ///
      int    DXCCS32                   1054-1057   ///
      str    DXPOA1                    1058        ///
      str    DXPOA2                    1059        ///
      str    DXPOA3                    1060        ///
      str    DXPOA4                    1061        ///
      str    DXPOA5                    1062        ///
      str    DXPOA6                    1063        ///
      str    DXPOA7                    1064        ///
      str    DXPOA8                    1065        ///
      str    DXPOA9                    1066        ///
      str    DXPOA10                   1067        ///
      str    DXPOA11                   1068        ///
      str    DXPOA12                   1069        ///
      str    DXPOA13                   1070        ///
      str    DXPOA14                   1071        ///
      str    DXPOA15                   1072        ///
      str    DXPOA16                   1073        ///
      str    DXPOA17                   1074        ///
      str    DXPOA18                   1075        ///
      str    DXPOA19                   1076        ///
      str    DXPOA20                   1077        ///
      str    DXPOA21                   1078        ///
      str    DXPOA22                   1079        ///
      str    DXPOA23                   1080        ///
      str    DXPOA24                   1081        ///
      str    DXPOA25                   1082        ///
      str    DXPOA26                   1083        ///
      str    DXPOA27                   1084        ///
      str    DXPOA28                   1085        ///
      str    DXPOA29                   1086        ///
      str    DXPOA30                   1087        ///
      str    DXPOA31                   1088        ///
      str    DXPOA32                   1089        ///
      int    DXVER                     1090-1092   ///
      int    E_CCS1                    1093-1096   ///
      int    E_CCS2                    1097-1100   ///
      int    E_CCS3                    1101-1104   ///
      int    E_CCS4                    1105-1108   ///
      int    E_CCS5                    1109-1112   ///
      int    E_CCS6                    1113-1116   ///
      int    E_CCS7                    1117-1120   ///
      int    E_CCS8                    1121-1124   ///
      int    E_CCS9                    1125-1128   ///
      str    E_POA1                    1129        ///
      str    E_POA2                    1130        ///
      str    E_POA3                    1131        ///
      str    E_POA4                    1132        ///
      str    E_POA5                    1133        ///
      str    E_POA6                    1134        ///
      str    E_POA7                    1135        ///
      str    E_POA8                    1136        ///
      str    E_POA9                    1137        ///
      str    ECODE1                    1138-1144   ///
      str    ECODE2                    1145-1151   ///
      str    ECODE3                    1152-1158   ///
      str    ECODE4                    1159-1165   ///
      str    ECODE5                    1166-1172   ///
      str    ECODE6                    1173-1179   ///
      str    ECODE7                    1180-1186   ///
      str    ECODE8                    1187-1193   ///
      str    ECODE9                    1194-1200   ///
      byte   FEMALE                    1201-1202   ///
      byte   HCUP_ED                   1203-1204   ///
      byte   HCUP_OS                   1205-1206   ///
      byte   HISPANIC                  1207-1208   ///
      str    HISPANIC_X                1209-1223   ///
      byte   Homeless                  1224-1225   ///
      int    HOSPBRTH                  1226-1228   ///
      str    HOSPST                    1229-1230   ///
      double KEY                       1231-1245   ///
      long   LOS                       1246-1250   ///
      long   LOS_X                     1251-1256   ///
      byte   MEDINCSTQ                 1257-1258   ///
      int    NCHRONIC                  1259-1261   ///
      int    NCPT                      1262-1265   ///
      int    NDX                       1266-1268   ///
      byte   NECODE                    1269-1270   ///
      byte   NEOMAT                    1271-1272   ///
      int    NPR                       1273-1275   ///
      byte   ORPROC                    1276-1277   ///
      byte   PAY1                      1278-1279   ///
      str    PAY1_X                    1280-1282   ///
      byte   PAY2                      1283-1284   ///
      str    PAY2_X                    1285-1287   ///
      int    PL_CBSA                   1288-1290   ///
      byte   PL_UR_CAT4                1291-1292   ///
      byte   POA_Disch_Edit1           1293-1294   ///
      byte   POA_Disch_Edit2           1295-1296   ///
      byte   POA_Hosp_Edit1            1297-1298   ///
      byte   POA_Hosp_Edit2            1299-1300   ///
      byte   POA_Hosp_Edit3            1301-1302   ///
      double POA_Hosp_Edit3_Value      1303-1310   ///
      str    PR1                       1311-1317   ///
      str    PR2                       1318-1324   ///
      str    PR3                       1325-1331   ///
      str    PR4                       1332-1338   ///
      str    PR5                       1339-1345   ///
      str    PR6                       1346-1352   ///
      str    PR7                       1353-1359   ///
      str    PR8                       1360-1366   ///
      str    PR9                       1367-1373   ///
      str    PR10                      1374-1380   ///
      str    PR11                      1381-1387   ///
      str    PR12                      1388-1394   ///
      str    PR13                      1395-1401   ///
      str    PR14                      1402-1408   ///
      str    PR15                      1409-1415   ///
      str    PR16                      1416-1422   ///
      str    PR17                      1423-1429   ///
      str    PR18                      1430-1436   ///
      str    PR19                      1437-1443   ///
      str    PR20                      1444-1450   ///
      str    PR21                      1451-1457   ///
      str    PR22                      1458-1464   ///
      str    PR23                      1465-1471   ///
      int    PRCCS1                    1472-1474   ///
      int    PRCCS2                    1475-1477   ///
      int    PRCCS3                    1478-1480   ///
      int    PRCCS4                    1481-1483   ///
      int    PRCCS5                    1484-1486   ///
      int    PRCCS6                    1487-1489   ///
      int    PRCCS7                    1490-1492   ///
      int    PRCCS8                    1493-1495   ///
      int    PRCCS9                    1496-1498   ///
      int    PRCCS10                   1499-1501   ///
      int    PRCCS11                   1502-1504   ///
      int    PRCCS12                   1505-1507   ///
      int    PRCCS13                   1508-1510   ///
      int    PRCCS14                   1511-1513   ///
      int    PRCCS15                   1514-1516   ///
      int    PRCCS16                   1517-1519   ///
      int    PRCCS17                   1520-1522   ///
      int    PRCCS18                   1523-1525   ///
      int    PRCCS19                   1526-1528   ///
      int    PRCCS20                   1529-1531   ///
      int    PRCCS21                   1532-1534   ///
      int    PRCCS22                   1535-1537   ///
      int    PRCCS23                   1538-1540   ///
      int    PROCTYPE                  1541-1543   ///
      int    PRVER                     1544-1546   ///
      str    PSTATE                    1547-1548   ///
      long   PSTCO2                    1549-1553   ///
      byte   RACE                      1554-1555   ///
      str    RACE_X                    1556-1560   ///
      byte   STATE_AS                  1561-1562   ///
      byte   STATE_ED                  1563-1564   ///
      byte   STATE_OS                  1565-1566   ///
      double TOTCHG                    1567-1576   ///
      double TOTCHG_X                  1577-1591   ///
      byte   TransportToHosp           1592-1593   ///
      long   VisitLink                 1594-1602   ///
      int    YEAR                      1603-1606   ///
      str    ZIP3                      1607-1609   ///
      int    ZIPINC_QRTL               1610-1612   ///
      int    AYEAR                     1613-1616   ///
      using  "MA_SEDD_2015q1q3_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ASOURCE                  "Admission source (uniform)"
label var ASOURCE_X                "Admission source (as received from source)"
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
label var DaysBetweenVisits        "Number of days between visits"
label var DaysToEvent              "Days from 'start date' to admission"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DSHOSPID                 "Data source hospital identifier"
label var DURATION                 "Elapsed time for hospital care in hours and minutes"
label var DX1                      "Diagnosis 1"
label var DX2                      "Diagnosis 2"
label var DX3                      "Diagnosis 3"
label var DX4                      "Diagnosis 4"
label var DX5                      "Diagnosis 5"
label var DX6                      "Diagnosis 6"
label var DX7                      "Diagnosis 7"
label var DX8                      "Diagnosis 8"
label var DX9                      "Diagnosis 9"
label var DX10                     "Diagnosis 10"
label var DX11                     "Diagnosis 11"
label var DX12                     "Diagnosis 12"
label var DX13                     "Diagnosis 13"
label var DX14                     "Diagnosis 14"
label var DX15                     "Diagnosis 15"
label var DX16                     "Diagnosis 16"
label var DX17                     "Diagnosis 17"
label var DX18                     "Diagnosis 18"
label var DX19                     "Diagnosis 19"
label var DX20                     "Diagnosis 20"
label var DX21                     "Diagnosis 21"
label var DX22                     "Diagnosis 22"
label var DX23                     "Diagnosis 23"
label var DX24                     "Diagnosis 24"
label var DX25                     "Diagnosis 25"
label var DX26                     "Diagnosis 26"
label var DX27                     "Diagnosis 27"
label var DX28                     "Diagnosis 28"
label var DX29                     "Diagnosis 29"
label var DX30                     "Diagnosis 30"
label var DX31                     "Diagnosis 31"
label var DX32                     "Diagnosis 32"
label var DXCCS1                   "CCS: diagnosis 1"
label var DXCCS2                   "CCS: diagnosis 2"
label var DXCCS3                   "CCS: diagnosis 3"
label var DXCCS4                   "CCS: diagnosis 4"
label var DXCCS5                   "CCS: diagnosis 5"
label var DXCCS6                   "CCS: diagnosis 6"
label var DXCCS7                   "CCS: diagnosis 7"
label var DXCCS8                   "CCS: diagnosis 8"
label var DXCCS9                   "CCS: diagnosis 9"
label var DXCCS10                  "CCS: diagnosis 10"
label var DXCCS11                  "CCS: diagnosis 11"
label var DXCCS12                  "CCS: diagnosis 12"
label var DXCCS13                  "CCS: diagnosis 13"
label var DXCCS14                  "CCS: diagnosis 14"
label var DXCCS15                  "CCS: diagnosis 15"
label var DXCCS16                  "CCS: diagnosis 16"
label var DXCCS17                  "CCS: diagnosis 17"
label var DXCCS18                  "CCS: diagnosis 18"
label var DXCCS19                  "CCS: diagnosis 19"
label var DXCCS20                  "CCS: diagnosis 20"
label var DXCCS21                  "CCS: diagnosis 21"
label var DXCCS22                  "CCS: diagnosis 22"
label var DXCCS23                  "CCS: diagnosis 23"
label var DXCCS24                  "CCS: diagnosis 24"
label var DXCCS25                  "CCS: diagnosis 25"
label var DXCCS26                  "CCS: diagnosis 26"
label var DXCCS27                  "CCS: diagnosis 27"
label var DXCCS28                  "CCS: diagnosis 28"
label var DXCCS29                  "CCS: diagnosis 29"
label var DXCCS30                  "CCS: diagnosis 30"
label var DXCCS31                  "CCS: diagnosis 31"
label var DXCCS32                  "CCS: diagnosis 32"
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
label var DXVER                    "Diagnosis Version"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_CCS7                   "CCS: E Code 7"
label var E_CCS8                   "CCS: E Code 8"
label var E_CCS9                   "CCS: E Code 9"
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var E_POA7                   "E Code 7, present on admission indicator"
label var E_POA8                   "E Code 8, present on admission indicator"
label var E_POA9                   "E Code 9, present on admission indicator"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var ECODE8                   "E code 8"
label var ECODE9                   "E code 9"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCHRONIC                 "Number of chronic conditions"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
label var POA_Disch_Edit1          "Discharge has POA missing on all nonexempt diagnoses"
label var POA_Disch_Edit2          "Discharge has POA missing on all nonexempt secondary diagnoses"
label var POA_Hosp_Edit1           "Hospital reported POA as Y on all diagnoses on all discharges"
label var POA_Hosp_Edit2           "Hospital reported POA as missing on all non-Medicare discharges"
label var POA_Hosp_Edit3           "Hospital reported POA as missing on all nonexempt diagnoses for 15% or more of discharges"
label var POA_Hosp_Edit3_Value     "Percentage of discharges with all nonexempt diagnoses missing POA indicators"
label var PR1                      "Procedure 1"
label var PR2                      "Procedure 2"
label var PR3                      "Procedure 3"
label var PR4                      "Procedure 4"
label var PR5                      "Procedure 5"
label var PR6                      "Procedure 6"
label var PR7                      "Procedure 7"
label var PR8                      "Procedure 8"
label var PR9                      "Procedure 9"
label var PR10                     "Procedure 10"
label var PR11                     "Procedure 11"
label var PR12                     "Procedure 12"
label var PR13                     "Procedure 13"
label var PR14                     "Procedure 14"
label var PR15                     "Procedure 15"
label var PR16                     "Procedure 16"
label var PR17                     "Procedure 17"
label var PR18                     "Procedure 18"
label var PR19                     "Procedure 19"
label var PR20                     "Procedure 20"
label var PR21                     "Procedure 21"
label var PR22                     "Procedure 22"
label var PR23                     "Procedure 23"
label var PRCCS1                   "CCS: procedure 1"
label var PRCCS2                   "CCS: procedure 2"
label var PRCCS3                   "CCS: procedure 3"
label var PRCCS4                   "CCS: procedure 4"
label var PRCCS5                   "CCS: procedure 5"
label var PRCCS6                   "CCS: procedure 6"
label var PRCCS7                   "CCS: procedure 7"
label var PRCCS8                   "CCS: procedure 8"
label var PRCCS9                   "CCS: procedure 9"
label var PRCCS10                  "CCS: procedure 10"
label var PRCCS11                  "CCS: procedure 11"
label var PRCCS12                  "CCS: procedure 12"
label var PRCCS13                  "CCS: procedure 13"
label var PRCCS14                  "CCS: procedure 14"
label var PRCCS15                  "CCS: procedure 15"
label var PRCCS16                  "CCS: procedure 16"
label var PRCCS17                  "CCS: procedure 17"
label var PRCCS18                  "CCS: procedure 18"
label var PRCCS19                  "CCS: procedure 19"
label var PRCCS20                  "CCS: procedure 20"
label var PRCCS21                  "CCS: procedure 21"
label var PRCCS22                  "CCS: procedure 22"
label var PRCCS23                  "CCS: procedure 23"
label var PROCTYPE                 "Procedure type indicator"
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
label var TransportToHosp          "Method of transportation to hospital"
label var VisitLink                "Visit linkage variable"
label var YEAR                     "Calendar year"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var AYEAR                    "Admission year"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ASOURCE                   (-9 -8 -6 -5=.)
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
recode DaysBetweenVisits         (-999 -888 -666=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DURATION                  (-99999 -88888 -66666=.)
recode DXCCS1                    (-999 -888 -666=.)
recode DXCCS2                    (-999 -888 -666=.)
recode DXCCS3                    (-999 -888 -666=.)
recode DXCCS4                    (-999 -888 -666=.)
recode DXCCS5                    (-999 -888 -666=.)
recode DXCCS6                    (-999 -888 -666=.)
recode DXCCS7                    (-999 -888 -666=.)
recode DXCCS8                    (-999 -888 -666=.)
recode DXCCS9                    (-999 -888 -666=.)
recode DXCCS10                   (-999 -888 -666=.)
recode DXCCS11                   (-999 -888 -666=.)
recode DXCCS12                   (-999 -888 -666=.)
recode DXCCS13                   (-999 -888 -666=.)
recode DXCCS14                   (-999 -888 -666=.)
recode DXCCS15                   (-999 -888 -666=.)
recode DXCCS16                   (-999 -888 -666=.)
recode DXCCS17                   (-999 -888 -666=.)
recode DXCCS18                   (-999 -888 -666=.)
recode DXCCS19                   (-999 -888 -666=.)
recode DXCCS20                   (-999 -888 -666=.)
recode DXCCS21                   (-999 -888 -666=.)
recode DXCCS22                   (-999 -888 -666=.)
recode DXCCS23                   (-999 -888 -666=.)
recode DXCCS24                   (-999 -888 -666=.)
recode DXCCS25                   (-999 -888 -666=.)
recode DXCCS26                   (-999 -888 -666=.)
recode DXCCS27                   (-999 -888 -666=.)
recode DXCCS28                   (-999 -888 -666=.)
recode DXCCS29                   (-999 -888 -666=.)
recode DXCCS30                   (-999 -888 -666=.)
recode DXCCS31                   (-999 -888 -666=.)
recode DXCCS32                   (-999 -888 -666=.)
recode DXVER                     (-99 -88 -66=.)
recode E_CCS1                    (-999 -888 -666=.)
recode E_CCS2                    (-999 -888 -666=.)
recode E_CCS3                    (-999 -888 -666=.)
recode E_CCS4                    (-999 -888 -666=.)
recode E_CCS5                    (-999 -888 -666=.)
recode E_CCS6                    (-999 -888 -666=.)
recode E_CCS7                    (-999 -888 -666=.)
recode E_CCS8                    (-999 -888 -666=.)
recode E_CCS9                    (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NCPT                      (-999 -888 -666=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_UR_CAT4                (-9 -8 -6 -5=.)
recode POA_Disch_Edit1           (-9 -8 -6 -5=.)
recode POA_Disch_Edit2           (-9 -8 -6 -5=.)
recode POA_Hosp_Edit1            (-9 -8 -6 -5=.)
recode POA_Hosp_Edit2            (-9 -8 -6 -5=.)
recode POA_Hosp_Edit3            (-9 -8 -6 -5=.)
recode POA_Hosp_Edit3_Value      (-9999.99 -8888.88 -6666.66=.)
recode PRCCS1                    (-99 -88 -66=.)
recode PRCCS2                    (-99 -88 -66=.)
recode PRCCS3                    (-99 -88 -66=.)
recode PRCCS4                    (-99 -88 -66=.)
recode PRCCS5                    (-99 -88 -66=.)
recode PRCCS6                    (-99 -88 -66=.)
recode PRCCS7                    (-99 -88 -66=.)
recode PRCCS8                    (-99 -88 -66=.)
recode PRCCS9                    (-99 -88 -66=.)
recode PRCCS10                   (-99 -88 -66=.)
recode PRCCS11                   (-99 -88 -66=.)
recode PRCCS12                   (-99 -88 -66=.)
recode PRCCS13                   (-99 -88 -66=.)
recode PRCCS14                   (-99 -88 -66=.)
recode PRCCS15                   (-99 -88 -66=.)
recode PRCCS16                   (-99 -88 -66=.)
recode PRCCS17                   (-99 -88 -66=.)
recode PRCCS18                   (-99 -88 -66=.)
recode PRCCS19                   (-99 -88 -66=.)
recode PRCCS20                   (-99 -88 -66=.)
recode PRCCS21                   (-99 -88 -66=.)
recode PRCCS22                   (-99 -88 -66=.)
recode PRCCS23                   (-99 -88 -66=.)
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode STATE_AS                  (-9 -8 -6 -5=.)
recode STATE_ED                  (-9 -8 -6 -5=.)
recode STATE_OS                  (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TransportToHosp           (-9 -8 -6 -5=.)
recode VisitLink                 (-99999999 -88888888 -66666666=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)

save "MA_SEDD_2015q1q3_CORE.dta", replace
