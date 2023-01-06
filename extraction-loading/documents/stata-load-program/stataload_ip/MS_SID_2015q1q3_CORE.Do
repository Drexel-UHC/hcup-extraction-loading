/*****************************************************************************
* Creation Date: 04/27/2018   
* MS_SID_2015q1q3_CORE.Do
* This program will load the 2015 MS ASCII CORE File into Stata.
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
      long   DaysToEvent                 20-  25   ///
      int    DHOUR                       26-  29   ///
      byte   DIED                        30-  31   ///
      str    DISP_X                      32-  35   ///
      byte   DISPUB04                    36-  37   ///
      byte   DISPUNIFORM                 38-  39   ///
      byte   DMONTH                      40-  41   ///
      byte   DQTR                        42-  43   ///
      int    DRG                         44-  46   ///
      int    DRG_NoPOA                   47-  49   ///
      int    DRG32                       50-  52   ///
      byte   DRGVER                      53-  54   ///
      str    DSHOSPID                    55-  71   ///
      str    DX_Admitting                72-  78   ///
      str    DX1                         79-  85   ///
      str    DX2                         86-  92   ///
      str    DX3                         93-  99   ///
      str    DX4                        100- 106   ///
      str    DX5                        107- 113   ///
      str    DX6                        114- 120   ///
      str    DX7                        121- 127   ///
      str    DX8                        128- 134   ///
      str    DX9                        135- 141   ///
      str    DX10                       142- 148   ///
      str    DX11                       149- 155   ///
      str    DX12                       156- 162   ///
      str    DX13                       163- 169   ///
      str    DX14                       170- 176   ///
      str    DX15                       177- 183   ///
      str    DX16                       184- 190   ///
      str    DX17                       191- 197   ///
      str    DX18                       198- 204   ///
      str    DX19                       205- 211   ///
      str    DX20                       212- 218   ///
      str    DX21                       219- 225   ///
      str    DX22                       226- 232   ///
      str    DX23                       233- 239   ///
      str    DX24                       240- 246   ///
      str    DX25                       247- 253   ///
      str    DX26                       254- 260   ///
      str    DX27                       261- 267   ///
      str    DX28                       268- 274   ///
      str    DX29                       275- 281   ///
      str    DX30                       282- 288   ///
      str    DX31                       289- 295   ///
      str    DX32                       296- 302   ///
      str    DX33                       303- 309   ///
      str    DX34                       310- 316   ///
      str    DX35                       317- 323   ///
      str    DX36                       324- 330   ///
      str    DX37                       331- 337   ///
      str    DX38                       338- 344   ///
      str    DX39                       345- 351   ///
      str    DX40                       352- 358   ///
      str    DX41                       359- 365   ///
      str    DX42                       366- 372   ///
      str    DX43                       373- 379   ///
      str    DX44                       380- 386   ///
      str    DX45                       387- 393   ///
      str    DX46                       394- 400   ///
      str    DX47                       401- 407   ///
      str    DX48                       408- 414   ///
      int    DXCCS1                     415- 418   ///
      int    DXCCS2                     419- 422   ///
      int    DXCCS3                     423- 426   ///
      int    DXCCS4                     427- 430   ///
      int    DXCCS5                     431- 434   ///
      int    DXCCS6                     435- 438   ///
      int    DXCCS7                     439- 442   ///
      int    DXCCS8                     443- 446   ///
      int    DXCCS9                     447- 450   ///
      int    DXCCS10                    451- 454   ///
      int    DXCCS11                    455- 458   ///
      int    DXCCS12                    459- 462   ///
      int    DXCCS13                    463- 466   ///
      int    DXCCS14                    467- 470   ///
      int    DXCCS15                    471- 474   ///
      int    DXCCS16                    475- 478   ///
      int    DXCCS17                    479- 482   ///
      int    DXCCS18                    483- 486   ///
      int    DXCCS19                    487- 490   ///
      int    DXCCS20                    491- 494   ///
      int    DXCCS21                    495- 498   ///
      int    DXCCS22                    499- 502   ///
      int    DXCCS23                    503- 506   ///
      int    DXCCS24                    507- 510   ///
      int    DXCCS25                    511- 514   ///
      int    DXCCS26                    515- 518   ///
      int    DXCCS27                    519- 522   ///
      int    DXCCS28                    523- 526   ///
      int    DXCCS29                    527- 530   ///
      int    DXCCS30                    531- 534   ///
      int    DXCCS31                    535- 538   ///
      int    DXCCS32                    539- 542   ///
      int    DXCCS33                    543- 546   ///
      int    DXCCS34                    547- 550   ///
      int    DXCCS35                    551- 554   ///
      int    DXCCS36                    555- 558   ///
      int    DXCCS37                    559- 562   ///
      int    DXCCS38                    563- 566   ///
      int    DXCCS39                    567- 570   ///
      int    DXCCS40                    571- 574   ///
      int    DXCCS41                    575- 578   ///
      int    DXCCS42                    579- 582   ///
      int    DXCCS43                    583- 586   ///
      int    DXCCS44                    587- 590   ///
      int    DXCCS45                    591- 594   ///
      int    DXCCS46                    595- 598   ///
      int    DXCCS47                    599- 602   ///
      int    DXCCS48                    603- 606   ///
      str    DXPOA1                     607        ///
      str    DXPOA2                     608        ///
      str    DXPOA3                     609        ///
      str    DXPOA4                     610        ///
      str    DXPOA5                     611        ///
      str    DXPOA6                     612        ///
      str    DXPOA7                     613        ///
      str    DXPOA8                     614        ///
      str    DXPOA9                     615        ///
      str    DXPOA10                    616        ///
      str    DXPOA11                    617        ///
      str    DXPOA12                    618        ///
      str    DXPOA13                    619        ///
      str    DXPOA14                    620        ///
      str    DXPOA15                    621        ///
      str    DXPOA16                    622        ///
      str    DXPOA17                    623        ///
      str    DXPOA18                    624        ///
      str    DXPOA19                    625        ///
      str    DXPOA20                    626        ///
      str    DXPOA21                    627        ///
      str    DXPOA22                    628        ///
      str    DXPOA23                    629        ///
      str    DXPOA24                    630        ///
      str    DXPOA25                    631        ///
      str    DXPOA26                    632        ///
      str    DXPOA27                    633        ///
      str    DXPOA28                    634        ///
      str    DXPOA29                    635        ///
      str    DXPOA30                    636        ///
      str    DXPOA31                    637        ///
      str    DXPOA32                    638        ///
      str    DXPOA33                    639        ///
      str    DXPOA34                    640        ///
      str    DXPOA35                    641        ///
      str    DXPOA36                    642        ///
      str    DXPOA37                    643        ///
      str    DXPOA38                    644        ///
      str    DXPOA39                    645        ///
      str    DXPOA40                    646        ///
      str    DXPOA41                    647        ///
      str    DXPOA42                    648        ///
      str    DXPOA43                    649        ///
      str    DXPOA44                    650        ///
      str    DXPOA45                    651        ///
      str    DXPOA46                    652        ///
      str    DXPOA47                    653        ///
      str    DXPOA48                    654        ///
      int    DXVER                      655- 657   ///
      int    E_CCS1                     658- 661   ///
      int    E_CCS2                     662- 665   ///
      int    E_CCS3                     666- 669   ///
      int    E_CCS4                     670- 673   ///
      int    E_CCS5                     674- 677   ///
      int    E_CCS6                     678- 681   ///
      str    E_POA1                     682        ///
      str    E_POA2                     683        ///
      str    E_POA3                     684        ///
      str    E_POA4                     685        ///
      str    E_POA5                     686        ///
      str    E_POA6                     687        ///
      str    ECODE1                     688- 694   ///
      str    ECODE2                     695- 701   ///
      str    ECODE3                     702- 708   ///
      str    ECODE4                     709- 715   ///
      str    ECODE5                     716- 722   ///
      str    ECODE6                     723- 729   ///
      byte   FEMALE                     730- 731   ///
      byte   HCUP_ED                    732- 733   ///
      byte   HCUP_OS                    734- 735   ///
      byte   HISPANIC                   736- 737   ///
      str    HISPANIC_X                 738        ///
      int    HOSPBRTH                   739- 741   ///
      byte   HospitalUnit               742- 743   ///
      str    HOSPST                     744- 745   ///
      double KEY                        746- 760   ///
      long   LOS                        761- 765   ///
      long   LOS_X                      766- 771   ///
      byte   MDC                        772- 773   ///
      byte   MDC_NoPOA                  774- 775   ///
      byte   MDC32                      776- 777   ///
      long   MDNUM1_R                   778- 786   ///
      long   MDNUM2_R                   787- 795   ///
      long   MDNUM3_R                   796- 804   ///
      byte   MEDINCSTQ                  805- 806   ///
      int    NCHRONIC                   807- 809   ///
      int    NDX                        810- 812   ///
      byte   NECODE                     813- 814   ///
      byte   NEOMAT                     815- 816   ///
      int    NPR                        817- 819   ///
      byte   ORPROC                     820- 821   ///
      str    P7EDSRC_X                  822- 823   ///
      byte   PAY1                       824- 825   ///
      str    PAY1_X                     826- 830   ///
      byte   PAY2                       831- 832   ///
      str    PAY2_X                     833- 837   ///
      byte   PAY3                       838- 839   ///
      str    PAY3_X                     840- 844   ///
      int    PL_CBSA                    845- 847   ///
      byte   PL_NCHS                    848- 849   ///
      byte   PL_RUCC                    850- 851   ///
      byte   PL_UIC                     852- 853   ///
      byte   PL_UR_CAT4                 854- 855   ///
      byte   POA_Disch_Edit1            856- 857   ///
      byte   POA_Disch_Edit2            858- 859   ///
      byte   POA_Hosp_Edit1             860- 861   ///
      byte   POA_Hosp_Edit2             862- 863   ///
      byte   POA_Hosp_Edit3             864- 865   ///
      double POA_Hosp_Edit3_Value       866- 873   ///
      str    PointOfOrigin_X            874        ///
      str    PointOfOriginUB04          875        ///
      str    PR1                        876- 882   ///
      str    PR2                        883- 889   ///
      str    PR3                        890- 896   ///
      str    PR4                        897- 903   ///
      str    PR5                        904- 910   ///
      str    PR6                        911- 917   ///
      str    PR7                        918- 924   ///
      str    PR8                        925- 931   ///
      str    PR9                        932- 938   ///
      str    PR10                       939- 945   ///
      str    PR11                       946- 952   ///
      str    PR12                       953- 959   ///
      str    PR13                       960- 966   ///
      str    PR14                       967- 973   ///
      str    PR15                       974- 980   ///
      str    PR16                       981- 987   ///
      str    PR17                       988- 994   ///
      str    PR18                       995-1001   ///
      str    PR19                      1002-1008   ///
      str    PR20                      1009-1015   ///
      str    PR21                      1016-1022   ///
      str    PR22                      1023-1029   ///
      str    PR23                      1030-1036   ///
      str    PR24                      1037-1043   ///
      str    PR25                      1044-1050   ///
      str    PR26                      1051-1057   ///
      str    PR27                      1058-1064   ///
      str    PR28                      1065-1071   ///
      str    PR29                      1072-1078   ///
      str    PR30                      1079-1085   ///
      int    PRCCS1                    1086-1088   ///
      int    PRCCS2                    1089-1091   ///
      int    PRCCS3                    1092-1094   ///
      int    PRCCS4                    1095-1097   ///
      int    PRCCS5                    1098-1100   ///
      int    PRCCS6                    1101-1103   ///
      int    PRCCS7                    1104-1106   ///
      int    PRCCS8                    1107-1109   ///
      int    PRCCS9                    1110-1112   ///
      int    PRCCS10                   1113-1115   ///
      int    PRCCS11                   1116-1118   ///
      int    PRCCS12                   1119-1121   ///
      int    PRCCS13                   1122-1124   ///
      int    PRCCS14                   1125-1127   ///
      int    PRCCS15                   1128-1130   ///
      int    PRCCS16                   1131-1133   ///
      int    PRCCS17                   1134-1136   ///
      int    PRCCS18                   1137-1139   ///
      int    PRCCS19                   1140-1142   ///
      int    PRCCS20                   1143-1145   ///
      int    PRCCS21                   1146-1148   ///
      int    PRCCS22                   1149-1151   ///
      int    PRCCS23                   1152-1154   ///
      int    PRCCS24                   1155-1157   ///
      int    PRCCS25                   1158-1160   ///
      int    PRCCS26                   1161-1163   ///
      int    PRCCS27                   1164-1166   ///
      int    PRCCS28                   1167-1169   ///
      int    PRCCS29                   1170-1172   ///
      int    PRCCS30                   1173-1175   ///
      long   PRDAY1                    1176-1180   ///
      long   PRDAY2                    1181-1185   ///
      long   PRDAY3                    1186-1190   ///
      long   PRDAY4                    1191-1195   ///
      long   PRDAY5                    1196-1200   ///
      long   PRDAY6                    1201-1205   ///
      long   PRDAY7                    1206-1210   ///
      long   PRDAY8                    1211-1215   ///
      long   PRDAY9                    1216-1220   ///
      long   PRDAY10                   1221-1225   ///
      long   PRDAY11                   1226-1230   ///
      long   PRDAY12                   1231-1235   ///
      long   PRDAY13                   1236-1240   ///
      long   PRDAY14                   1241-1245   ///
      long   PRDAY15                   1246-1250   ///
      long   PRDAY16                   1251-1255   ///
      long   PRDAY17                   1256-1260   ///
      long   PRDAY18                   1261-1265   ///
      long   PRDAY19                   1266-1270   ///
      long   PRDAY20                   1271-1275   ///
      long   PRDAY21                   1276-1280   ///
      long   PRDAY22                   1281-1285   ///
      long   PRDAY23                   1286-1290   ///
      long   PRDAY24                   1291-1295   ///
      long   PRDAY25                   1296-1300   ///
      long   PRDAY26                   1301-1305   ///
      long   PRDAY27                   1306-1310   ///
      long   PRDAY28                   1311-1315   ///
      long   PRDAY29                   1316-1320   ///
      long   PRDAY30                   1321-1325   ///
      int    PROCTYPE                  1326-1328   ///
      int    PRVER                     1329-1331   ///
      str    PSTATE                    1332-1333   ///
      long   PSTCO2                    1334-1338   ///
      byte   RACE                      1339-1340   ///
      str    RACE_X                    1341        ///
      byte   SERVICELINE               1342-1343   ///
      double TOTCHG                    1344-1353   ///
      double TOTCHG_X                  1354-1368   ///
      byte   TRAN_IN                   1369-1370   ///
      byte   TRAN_OUT                  1371-1372   ///
      long   VisitLink                 1373-1381   ///
      int    YEAR                      1382-1385   ///
      str    ZIP                       1386-1390   ///
      str    ZIP3                      1391-1393   ///
      int    ZIPINC_QRTL               1394-1396   ///
      int    AYEAR                     1397-1400   ///
      byte   BMONTH                    1401-1402   ///
      int    BYEAR                     1403-1406   ///
      byte   PRMONTH1                  1407-1408   ///
      byte   PRMONTH2                  1409-1410   ///
      byte   PRMONTH3                  1411-1412   ///
      byte   PRMONTH4                  1413-1414   ///
      byte   PRMONTH5                  1415-1416   ///
      byte   PRMONTH6                  1417-1418   ///
      byte   PRMONTH7                  1419-1420   ///
      byte   PRMONTH8                  1421-1422   ///
      byte   PRMONTH9                  1423-1424   ///
      byte   PRMONTH10                 1425-1426   ///
      byte   PRMONTH11                 1427-1428   ///
      byte   PRMONTH12                 1429-1430   ///
      byte   PRMONTH13                 1431-1432   ///
      byte   PRMONTH14                 1433-1434   ///
      byte   PRMONTH15                 1435-1436   ///
      byte   PRMONTH16                 1437-1438   ///
      byte   PRMONTH17                 1439-1440   ///
      byte   PRMONTH18                 1441-1442   ///
      byte   PRMONTH19                 1443-1444   ///
      byte   PRMONTH20                 1445-1446   ///
      byte   PRMONTH21                 1447-1448   ///
      byte   PRMONTH22                 1449-1450   ///
      byte   PRMONTH23                 1451-1452   ///
      byte   PRMONTH24                 1453-1454   ///
      byte   PRMONTH25                 1455-1456   ///
      byte   PRMONTH26                 1457-1458   ///
      byte   PRMONTH27                 1459-1460   ///
      byte   PRMONTH28                 1461-1462   ///
      byte   PRMONTH29                 1463-1464   ///
      byte   PRMONTH30                 1465-1466   ///
      int    PRYEAR1                   1467-1470   ///
      int    PRYEAR2                   1471-1474   ///
      int    PRYEAR3                   1475-1478   ///
      int    PRYEAR4                   1479-1482   ///
      int    PRYEAR5                   1483-1486   ///
      int    PRYEAR6                   1487-1490   ///
      int    PRYEAR7                   1491-1494   ///
      int    PRYEAR8                   1495-1498   ///
      int    PRYEAR9                   1499-1502   ///
      int    PRYEAR10                  1503-1506   ///
      int    PRYEAR11                  1507-1510   ///
      int    PRYEAR12                  1511-1514   ///
      int    PRYEAR13                  1515-1518   ///
      int    PRYEAR14                  1519-1522   ///
      int    PRYEAR15                  1523-1526   ///
      int    PRYEAR16                  1527-1530   ///
      int    PRYEAR17                  1531-1534   ///
      int    PRYEAR18                  1535-1538   ///
      int    PRYEAR19                  1539-1542   ///
      int    PRYEAR20                  1543-1546   ///
      int    PRYEAR21                  1547-1550   ///
      int    PRYEAR22                  1551-1554   ///
      int    PRYEAR23                  1555-1558   ///
      int    PRYEAR24                  1559-1562   ///
      int    PRYEAR25                  1563-1566   ///
      int    PRYEAR26                  1567-1570   ///
      int    PRYEAR27                  1571-1574   ///
      int    PRYEAR28                  1575-1578   ///
      int    PRYEAR29                  1579-1582   ///
      int    PRYEAR30                  1583-1586   ///
      using  "MS_SID_2015q1q3_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
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
label var DRG32                    "DRG, version 32"
label var DRGVER                   "DRG grouper version used on discharge date"
label var DSHOSPID                 "Data source hospital identifier"
label var DX_Admitting             "Admitting Diagnosis Code"
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
label var DX33                     "Diagnosis 33"
label var DX34                     "Diagnosis 34"
label var DX35                     "Diagnosis 35"
label var DX36                     "Diagnosis 36"
label var DX37                     "Diagnosis 37"
label var DX38                     "Diagnosis 38"
label var DX39                     "Diagnosis 39"
label var DX40                     "Diagnosis 40"
label var DX41                     "Diagnosis 41"
label var DX42                     "Diagnosis 42"
label var DX43                     "Diagnosis 43"
label var DX44                     "Diagnosis 44"
label var DX45                     "Diagnosis 45"
label var DX46                     "Diagnosis 46"
label var DX47                     "Diagnosis 47"
label var DX48                     "Diagnosis 48"
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
label var DXCCS33                  "CCS: diagnosis 33"
label var DXCCS34                  "CCS: diagnosis 34"
label var DXCCS35                  "CCS: diagnosis 35"
label var DXCCS36                  "CCS: diagnosis 36"
label var DXCCS37                  "CCS: diagnosis 37"
label var DXCCS38                  "CCS: diagnosis 38"
label var DXCCS39                  "CCS: diagnosis 39"
label var DXCCS40                  "CCS: diagnosis 40"
label var DXCCS41                  "CCS: diagnosis 41"
label var DXCCS42                  "CCS: diagnosis 42"
label var DXCCS43                  "CCS: diagnosis 43"
label var DXCCS44                  "CCS: diagnosis 44"
label var DXCCS45                  "CCS: diagnosis 45"
label var DXCCS46                  "CCS: diagnosis 46"
label var DXCCS47                  "CCS: diagnosis 47"
label var DXCCS48                  "CCS: diagnosis 48"
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
label var DXVER                    "Diagnosis Version"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HospitalUnit             "Patient was discharged from a special unit within an acute care hospital (reported by source)"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDC32                    "MDC, version 32"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCHRONIC                 "Number of chronic conditions"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
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
label var PR24                     "Procedure 24"
label var PR25                     "Procedure 25"
label var PR26                     "Procedure 26"
label var PR27                     "Procedure 27"
label var PR28                     "Procedure 28"
label var PR29                     "Procedure 29"
label var PR30                     "Procedure 30"
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
label var PRCCS24                  "CCS: procedure 24"
label var PRCCS25                  "CCS: procedure 25"
label var PRCCS26                  "CCS: procedure 26"
label var PRCCS27                  "CCS: procedure 27"
label var PRCCS28                  "CCS: procedure 28"
label var PRCCS29                  "CCS: procedure 29"
label var PRCCS30                  "CCS: procedure 30"
label var PRDAY1                   "Number of days from admission to PR1"
label var PRDAY2                   "Number of days from admission to PR2"
label var PRDAY3                   "Number of days from admission to PR3"
label var PRDAY4                   "Number of days from admission to PR4"
label var PRDAY5                   "Number of days from admission to PR5"
label var PRDAY6                   "Number of days from admission to PR6"
label var PRDAY7                   "Number of days from admission to PR7"
label var PRDAY8                   "Number of days from admission to PR8"
label var PRDAY9                   "Number of days from admission to PR9"
label var PRDAY10                  "Number of days from admission to PR10"
label var PRDAY11                  "Number of days from admission to PR11"
label var PRDAY12                  "Number of days from admission to PR12"
label var PRDAY13                  "Number of days from admission to PR13"
label var PRDAY14                  "Number of days from admission to PR14"
label var PRDAY15                  "Number of days from admission to PR15"
label var PRDAY16                  "Number of days from admission to PR16"
label var PRDAY17                  "Number of days from admission to PR17"
label var PRDAY18                  "Number of days from admission to PR18"
label var PRDAY19                  "Number of days from admission to PR19"
label var PRDAY20                  "Number of days from admission to PR20"
label var PRDAY21                  "Number of days from admission to PR21"
label var PRDAY22                  "Number of days from admission to PR22"
label var PRDAY23                  "Number of days from admission to PR23"
label var PRDAY24                  "Number of days from admission to PR24"
label var PRDAY25                  "Number of days from admission to PR25"
label var PRDAY26                  "Number of days from admission to PR26"
label var PRDAY27                  "Number of days from admission to PR27"
label var PRDAY28                  "Number of days from admission to PR28"
label var PRDAY29                  "Number of days from admission to PR29"
label var PRDAY30                  "Number of days from admission to PR30"
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var SERVICELINE              "Hospital Service Line"
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

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRG32                     (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
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
recode DXCCS33                   (-999 -888 -666=.)
recode DXCCS34                   (-999 -888 -666=.)
recode DXCCS35                   (-999 -888 -666=.)
recode DXCCS36                   (-999 -888 -666=.)
recode DXCCS37                   (-999 -888 -666=.)
recode DXCCS38                   (-999 -888 -666=.)
recode DXCCS39                   (-999 -888 -666=.)
recode DXCCS40                   (-999 -888 -666=.)
recode DXCCS41                   (-999 -888 -666=.)
recode DXCCS42                   (-999 -888 -666=.)
recode DXCCS43                   (-999 -888 -666=.)
recode DXCCS44                   (-999 -888 -666=.)
recode DXCCS45                   (-999 -888 -666=.)
recode DXCCS46                   (-999 -888 -666=.)
recode DXCCS47                   (-999 -888 -666=.)
recode DXCCS48                   (-999 -888 -666=.)
recode DXVER                     (-99 -88 -66=.)
recode E_CCS1                    (-999 -888 -666=.)
recode E_CCS2                    (-999 -888 -666=.)
recode E_CCS3                    (-999 -888 -666=.)
recode E_CCS4                    (-999 -888 -666=.)
recode E_CCS5                    (-999 -888 -666=.)
recode E_CCS6                    (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDC32                     (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
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
recode PRCCS24                   (-99 -88 -66=.)
recode PRCCS25                   (-99 -88 -66=.)
recode PRCCS26                   (-99 -88 -66=.)
recode PRCCS27                   (-99 -88 -66=.)
recode PRCCS28                   (-99 -88 -66=.)
recode PRCCS29                   (-99 -88 -66=.)
recode PRCCS30                   (-99 -88 -66=.)
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
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode SERVICELINE               (-9 -8 -6 -5=.)
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

save "MS_SID_2015q1q3_CORE.dta", replace
