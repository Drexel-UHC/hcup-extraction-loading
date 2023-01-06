/*****************************************************************************
* Creation Date: 04/27/2018   
* MS_SID_2015q4_CORE.Do
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
      str    DXPOA1                      72        ///
      str    DXPOA2                      73        ///
      str    DXPOA3                      74        ///
      str    DXPOA4                      75        ///
      str    DXPOA5                      76        ///
      str    DXPOA6                      77        ///
      str    DXPOA7                      78        ///
      str    DXPOA8                      79        ///
      str    DXPOA9                      80        ///
      str    DXPOA10                     81        ///
      str    DXPOA11                     82        ///
      str    DXPOA12                     83        ///
      str    DXPOA13                     84        ///
      str    DXPOA14                     85        ///
      str    DXPOA15                     86        ///
      str    DXPOA16                     87        ///
      str    DXPOA17                     88        ///
      str    DXPOA18                     89        ///
      str    DXPOA19                     90        ///
      str    DXPOA20                     91        ///
      str    DXPOA21                     92        ///
      str    DXPOA22                     93        ///
      str    DXPOA23                     94        ///
      str    DXPOA24                     95        ///
      str    DXPOA25                     96        ///
      str    DXPOA26                     97        ///
      str    DXPOA27                     98        ///
      str    DXPOA28                     99        ///
      str    DXPOA29                    100        ///
      str    DXPOA30                    101        ///
      str    DXPOA31                    102        ///
      str    DXPOA32                    103        ///
      str    DXPOA33                    104        ///
      str    DXPOA34                    105        ///
      str    DXPOA35                    106        ///
      str    DXPOA36                    107        ///
      str    DXPOA37                    108        ///
      str    DXPOA38                    109        ///
      str    DXPOA39                    110        ///
      str    DXPOA40                    111        ///
      str    DXPOA41                    112        ///
      str    DXPOA42                    113        ///
      str    DXPOA43                    114        ///
      str    DXPOA44                    115        ///
      str    DXPOA45                    116        ///
      str    DXPOA46                    117        ///
      str    DXPOA47                    118        ///
      str    DXPOA48                    119        ///
      int    DXVER                      120- 122   ///
      str    E_POA1                     123        ///
      str    E_POA2                     124        ///
      str    E_POA3                     125        ///
      str    E_POA4                     126        ///
      str    E_POA5                     127        ///
      str    E_POA6                     128        ///
      byte   FEMALE                     129- 130   ///
      byte   HCUP_ED                    131- 132   ///
      byte   HCUP_OS                    133- 134   ///
      byte   HISPANIC                   135- 136   ///
      str    HISPANIC_X                 137        ///
      byte   HospitalUnit               138- 139   ///
      str    HOSPST                     140- 141   ///
      str    I10_DX_Admitting           142- 148   ///
      str    I10_DX1                    149- 155   ///
      str    I10_DX2                    156- 162   ///
      str    I10_DX3                    163- 169   ///
      str    I10_DX4                    170- 176   ///
      str    I10_DX5                    177- 183   ///
      str    I10_DX6                    184- 190   ///
      str    I10_DX7                    191- 197   ///
      str    I10_DX8                    198- 204   ///
      str    I10_DX9                    205- 211   ///
      str    I10_DX10                   212- 218   ///
      str    I10_DX11                   219- 225   ///
      str    I10_DX12                   226- 232   ///
      str    I10_DX13                   233- 239   ///
      str    I10_DX14                   240- 246   ///
      str    I10_DX15                   247- 253   ///
      str    I10_DX16                   254- 260   ///
      str    I10_DX17                   261- 267   ///
      str    I10_DX18                   268- 274   ///
      str    I10_DX19                   275- 281   ///
      str    I10_DX20                   282- 288   ///
      str    I10_DX21                   289- 295   ///
      str    I10_DX22                   296- 302   ///
      str    I10_DX23                   303- 309   ///
      str    I10_DX24                   310- 316   ///
      str    I10_DX25                   317- 323   ///
      str    I10_DX26                   324- 330   ///
      str    I10_DX27                   331- 337   ///
      str    I10_DX28                   338- 344   ///
      str    I10_DX29                   345- 351   ///
      str    I10_DX30                   352- 358   ///
      str    I10_DX31                   359- 365   ///
      str    I10_DX32                   366- 372   ///
      str    I10_DX33                   373- 379   ///
      str    I10_DX34                   380- 386   ///
      str    I10_DX35                   387- 393   ///
      str    I10_DX36                   394- 400   ///
      str    I10_DX37                   401- 407   ///
      str    I10_DX38                   408- 414   ///
      str    I10_DX39                   415- 421   ///
      str    I10_DX40                   422- 428   ///
      str    I10_DX41                   429- 435   ///
      str    I10_DX42                   436- 442   ///
      str    I10_DX43                   443- 449   ///
      str    I10_DX44                   450- 456   ///
      str    I10_DX45                   457- 463   ///
      str    I10_DX46                   464- 470   ///
      str    I10_DX47                   471- 477   ///
      str    I10_DX48                   478- 484   ///
      int    I10_DXCCS1                 485- 488   ///
      int    I10_DXCCS2                 489- 492   ///
      int    I10_DXCCS3                 493- 496   ///
      int    I10_DXCCS4                 497- 500   ///
      int    I10_DXCCS5                 501- 504   ///
      int    I10_DXCCS6                 505- 508   ///
      int    I10_DXCCS7                 509- 512   ///
      int    I10_DXCCS8                 513- 516   ///
      int    I10_DXCCS9                 517- 520   ///
      int    I10_DXCCS10                521- 524   ///
      int    I10_DXCCS11                525- 528   ///
      int    I10_DXCCS12                529- 532   ///
      int    I10_DXCCS13                533- 536   ///
      int    I10_DXCCS14                537- 540   ///
      int    I10_DXCCS15                541- 544   ///
      int    I10_DXCCS16                545- 548   ///
      int    I10_DXCCS17                549- 552   ///
      int    I10_DXCCS18                553- 556   ///
      int    I10_DXCCS19                557- 560   ///
      int    I10_DXCCS20                561- 564   ///
      int    I10_DXCCS21                565- 568   ///
      int    I10_DXCCS22                569- 572   ///
      int    I10_DXCCS23                573- 576   ///
      int    I10_DXCCS24                577- 580   ///
      int    I10_DXCCS25                581- 584   ///
      int    I10_DXCCS26                585- 588   ///
      int    I10_DXCCS27                589- 592   ///
      int    I10_DXCCS28                593- 596   ///
      int    I10_DXCCS29                597- 600   ///
      int    I10_DXCCS30                601- 604   ///
      int    I10_DXCCS31                605- 608   ///
      int    I10_DXCCS32                609- 612   ///
      int    I10_DXCCS33                613- 616   ///
      int    I10_DXCCS34                617- 620   ///
      int    I10_DXCCS35                621- 624   ///
      int    I10_DXCCS36                625- 628   ///
      int    I10_DXCCS37                629- 632   ///
      int    I10_DXCCS38                633- 636   ///
      int    I10_DXCCS39                637- 640   ///
      int    I10_DXCCS40                641- 644   ///
      int    I10_DXCCS41                645- 648   ///
      int    I10_DXCCS42                649- 652   ///
      int    I10_DXCCS43                653- 656   ///
      int    I10_DXCCS44                657- 660   ///
      int    I10_DXCCS45                661- 664   ///
      int    I10_DXCCS46                665- 668   ///
      int    I10_DXCCS47                669- 672   ///
      int    I10_DXCCS48                673- 676   ///
      str    I10_ECAUSE1                677- 683   ///
      str    I10_ECAUSE2                684- 690   ///
      str    I10_ECAUSE3                691- 697   ///
      str    I10_ECAUSE4                698- 704   ///
      str    I10_ECAUSE5                705- 711   ///
      str    I10_ECAUSE6                712- 718   ///
      int    I10_ECauseCCS1             719- 722   ///
      int    I10_ECauseCCS2             723- 726   ///
      int    I10_ECauseCCS3             727- 730   ///
      int    I10_ECauseCCS4             731- 734   ///
      int    I10_ECauseCCS5             735- 738   ///
      int    I10_ECauseCCS6             739- 742   ///
      int    I10_HOSPBRTH               743- 745   ///
      int    I10_NCHRONIC               746- 748   ///
      int    I10_NDX                    749- 751   ///
      byte   I10_NECAUSE                752- 753   ///
      byte   I10_NEOMAT                 754- 755   ///
      int    I10_NPR                    756- 758   ///
      byte   I10_ORPROC                 759- 760   ///
      str    I10_PR1                    761- 767   ///
      str    I10_PR2                    768- 774   ///
      str    I10_PR3                    775- 781   ///
      str    I10_PR4                    782- 788   ///
      str    I10_PR5                    789- 795   ///
      str    I10_PR6                    796- 802   ///
      str    I10_PR7                    803- 809   ///
      str    I10_PR8                    810- 816   ///
      str    I10_PR9                    817- 823   ///
      str    I10_PR10                   824- 830   ///
      str    I10_PR11                   831- 837   ///
      str    I10_PR12                   838- 844   ///
      str    I10_PR13                   845- 851   ///
      str    I10_PR14                   852- 858   ///
      str    I10_PR15                   859- 865   ///
      str    I10_PR16                   866- 872   ///
      str    I10_PR17                   873- 879   ///
      str    I10_PR18                   880- 886   ///
      str    I10_PR19                   887- 893   ///
      str    I10_PR20                   894- 900   ///
      str    I10_PR21                   901- 907   ///
      str    I10_PR22                   908- 914   ///
      str    I10_PR23                   915- 921   ///
      str    I10_PR24                   922- 928   ///
      str    I10_PR25                   929- 935   ///
      str    I10_PR26                   936- 942   ///
      str    I10_PR27                   943- 949   ///
      str    I10_PR28                   950- 956   ///
      str    I10_PR29                   957- 963   ///
      str    I10_PR30                   964- 970   ///
      int    I10_PRCCS1                 971- 973   ///
      int    I10_PRCCS2                 974- 976   ///
      int    I10_PRCCS3                 977- 979   ///
      int    I10_PRCCS4                 980- 982   ///
      int    I10_PRCCS5                 983- 985   ///
      int    I10_PRCCS6                 986- 988   ///
      int    I10_PRCCS7                 989- 991   ///
      int    I10_PRCCS8                 992- 994   ///
      int    I10_PRCCS9                 995- 997   ///
      int    I10_PRCCS10                998-1000   ///
      int    I10_PRCCS11               1001-1003   ///
      int    I10_PRCCS12               1004-1006   ///
      int    I10_PRCCS13               1007-1009   ///
      int    I10_PRCCS14               1010-1012   ///
      int    I10_PRCCS15               1013-1015   ///
      int    I10_PRCCS16               1016-1018   ///
      int    I10_PRCCS17               1019-1021   ///
      int    I10_PRCCS18               1022-1024   ///
      int    I10_PRCCS19               1025-1027   ///
      int    I10_PRCCS20               1028-1030   ///
      int    I10_PRCCS21               1031-1033   ///
      int    I10_PRCCS22               1034-1036   ///
      int    I10_PRCCS23               1037-1039   ///
      int    I10_PRCCS24               1040-1042   ///
      int    I10_PRCCS25               1043-1045   ///
      int    I10_PRCCS26               1046-1048   ///
      int    I10_PRCCS27               1049-1051   ///
      int    I10_PRCCS28               1052-1054   ///
      int    I10_PRCCS29               1055-1057   ///
      int    I10_PRCCS30               1058-1060   ///
      int    I10_PROCTYPE              1061-1063   ///
      byte   I10_SERVICELINE           1064-1065   ///
      double KEY                       1066-1080   ///
      long   LOS                       1081-1085   ///
      long   LOS_X                     1086-1091   ///
      byte   MDC                       1092-1093   ///
      byte   MDC_NoPOA                 1094-1095   ///
      byte   MDC32                     1096-1097   ///
      long   MDNUM1_R                  1098-1106   ///
      long   MDNUM2_R                  1107-1115   ///
      long   MDNUM3_R                  1116-1124   ///
      byte   MEDINCSTQ                 1125-1126   ///
      str    P7EDSRC_X                 1127-1128   ///
      byte   PAY1                      1129-1130   ///
      str    PAY1_X                    1131-1135   ///
      byte   PAY2                      1136-1137   ///
      str    PAY2_X                    1138-1142   ///
      byte   PAY3                      1143-1144   ///
      str    PAY3_X                    1145-1149   ///
      int    PL_CBSA                   1150-1152   ///
      byte   PL_NCHS                   1153-1154   ///
      byte   PL_RUCC                   1155-1156   ///
      byte   PL_UIC                    1157-1158   ///
      byte   PL_UR_CAT4                1159-1160   ///
      byte   POA_Disch_Edit1           1161-1162   ///
      byte   POA_Disch_Edit2           1163-1164   ///
      byte   POA_Hosp_Edit1            1165-1166   ///
      byte   POA_Hosp_Edit2            1167-1168   ///
      byte   POA_Hosp_Edit3            1169-1170   ///
      double POA_Hosp_Edit3_Value      1171-1178   ///
      str    PointOfOrigin_X           1179        ///
      str    PointOfOriginUB04         1180        ///
      long   PRDAY1                    1181-1185   ///
      long   PRDAY2                    1186-1190   ///
      long   PRDAY3                    1191-1195   ///
      long   PRDAY4                    1196-1200   ///
      long   PRDAY5                    1201-1205   ///
      long   PRDAY6                    1206-1210   ///
      long   PRDAY7                    1211-1215   ///
      long   PRDAY8                    1216-1220   ///
      long   PRDAY9                    1221-1225   ///
      long   PRDAY10                   1226-1230   ///
      long   PRDAY11                   1231-1235   ///
      long   PRDAY12                   1236-1240   ///
      long   PRDAY13                   1241-1245   ///
      long   PRDAY14                   1246-1250   ///
      long   PRDAY15                   1251-1255   ///
      long   PRDAY16                   1256-1260   ///
      long   PRDAY17                   1261-1265   ///
      long   PRDAY18                   1266-1270   ///
      long   PRDAY19                   1271-1275   ///
      long   PRDAY20                   1276-1280   ///
      long   PRDAY21                   1281-1285   ///
      long   PRDAY22                   1286-1290   ///
      long   PRDAY23                   1291-1295   ///
      long   PRDAY24                   1296-1300   ///
      long   PRDAY25                   1301-1305   ///
      long   PRDAY26                   1306-1310   ///
      long   PRDAY27                   1311-1315   ///
      long   PRDAY28                   1316-1320   ///
      long   PRDAY29                   1321-1325   ///
      long   PRDAY30                   1326-1330   ///
      int    PRVER                     1331-1333   ///
      str    PSTATE                    1334-1335   ///
      long   PSTCO2                    1336-1340   ///
      byte   RACE                      1341-1342   ///
      str    RACE_X                    1343        ///
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
      using  "MS_SID_2015q4_CORE.ASC"

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
label var E_POA1                   "E Cause 1, present on admission indicator"
label var E_POA2                   "E Cause 2, present on admission indicator"
label var E_POA3                   "E Cause 3, present on admission indicator"
label var E_POA4                   "E Cause 4, present on admission indicator"
label var E_POA5                   "E Cause 5, present on admission indicator"
label var E_POA6                   "E Cause 6, present on admission indicator"
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
label var I10_DXCCS31              "ICD-10-CM CCS: diagnosis 31"
label var I10_DXCCS32              "ICD-10-CM CCS: diagnosis 32"
label var I10_DXCCS33              "ICD-10-CM CCS: diagnosis 33"
label var I10_DXCCS34              "ICD-10-CM CCS: diagnosis 34"
label var I10_DXCCS35              "ICD-10-CM CCS: diagnosis 35"
label var I10_DXCCS36              "ICD-10-CM CCS: diagnosis 36"
label var I10_DXCCS37              "ICD-10-CM CCS: diagnosis 37"
label var I10_DXCCS38              "ICD-10-CM CCS: diagnosis 38"
label var I10_DXCCS39              "ICD-10-CM CCS: diagnosis 39"
label var I10_DXCCS40              "ICD-10-CM CCS: diagnosis 40"
label var I10_DXCCS41              "ICD-10-CM CCS: diagnosis 41"
label var I10_DXCCS42              "ICD-10-CM CCS: diagnosis 42"
label var I10_DXCCS43              "ICD-10-CM CCS: diagnosis 43"
label var I10_DXCCS44              "ICD-10-CM CCS: diagnosis 44"
label var I10_DXCCS45              "ICD-10-CM CCS: diagnosis 45"
label var I10_DXCCS46              "ICD-10-CM CCS: diagnosis 46"
label var I10_DXCCS47              "ICD-10-CM CCS: diagnosis 47"
label var I10_DXCCS48              "ICD-10-CM CCS: diagnosis 48"
label var I10_ECAUSE1              "ICD-10-CM E Cause 1"
label var I10_ECAUSE2              "ICD-10-CM E Cause 2"
label var I10_ECAUSE3              "ICD-10-CM E Cause 3"
label var I10_ECAUSE4              "ICD-10-CM E Cause 4"
label var I10_ECAUSE5              "ICD-10-CM E Cause 5"
label var I10_ECAUSE6              "ICD-10-CM E Cause 6"
label var I10_ECauseCCS1           "ICD-10-CM CCS: E Cause 1"
label var I10_ECauseCCS2           "ICD-10-CM CCS: E Cause 2"
label var I10_ECauseCCS3           "ICD-10-CM CCS: E Cause 3"
label var I10_ECauseCCS4           "ICD-10-CM CCS: E Cause 4"
label var I10_ECauseCCS5           "ICD-10-CM CCS: E Cause 5"
label var I10_ECauseCCS6           "ICD-10-CM CCS: E Cause 6"
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
label var I10_PR22                 "ICD-10-PCS Procedure 22"
label var I10_PR23                 "ICD-10-PCS Procedure 23"
label var I10_PR24                 "ICD-10-PCS Procedure 24"
label var I10_PR25                 "ICD-10-PCS Procedure 25"
label var I10_PR26                 "ICD-10-PCS Procedure 26"
label var I10_PR27                 "ICD-10-PCS Procedure 27"
label var I10_PR28                 "ICD-10-PCS Procedure 28"
label var I10_PR29                 "ICD-10-PCS Procedure 29"
label var I10_PR30                 "ICD-10-PCS Procedure 30"
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
label var I10_PRCCS22              "ICD-10-PCS CCS: procedure 22"
label var I10_PRCCS23              "ICD-10-PCS CCS: procedure 23"
label var I10_PRCCS24              "ICD-10-PCS CCS: procedure 24"
label var I10_PRCCS25              "ICD-10-PCS CCS: procedure 25"
label var I10_PRCCS26              "ICD-10-PCS CCS: procedure 26"
label var I10_PRCCS27              "ICD-10-PCS CCS: procedure 27"
label var I10_PRCCS28              "ICD-10-PCS CCS: procedure 28"
label var I10_PRCCS29              "ICD-10-PCS CCS: procedure 29"
label var I10_PRCCS30              "ICD-10-PCS CCS: procedure 30"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
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
label var PRDAY26                  "Number of days from admission to I10_PR26"
label var PRDAY27                  "Number of days from admission to I10_PR27"
label var PRDAY28                  "Number of days from admission to I10_PR28"
label var PRDAY29                  "Number of days from admission to I10_PR29"
label var PRDAY30                  "Number of days from admission to I10_PR30"
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
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
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
recode I10_DXCCS31               (-999 -888 -666=.)
recode I10_DXCCS32               (-999 -888 -666=.)
recode I10_DXCCS33               (-999 -888 -666=.)
recode I10_DXCCS34               (-999 -888 -666=.)
recode I10_DXCCS35               (-999 -888 -666=.)
recode I10_DXCCS36               (-999 -888 -666=.)
recode I10_DXCCS37               (-999 -888 -666=.)
recode I10_DXCCS38               (-999 -888 -666=.)
recode I10_DXCCS39               (-999 -888 -666=.)
recode I10_DXCCS40               (-999 -888 -666=.)
recode I10_DXCCS41               (-999 -888 -666=.)
recode I10_DXCCS42               (-999 -888 -666=.)
recode I10_DXCCS43               (-999 -888 -666=.)
recode I10_DXCCS44               (-999 -888 -666=.)
recode I10_DXCCS45               (-999 -888 -666=.)
recode I10_DXCCS46               (-999 -888 -666=.)
recode I10_DXCCS47               (-999 -888 -666=.)
recode I10_DXCCS48               (-999 -888 -666=.)
recode I10_ECauseCCS1            (-999 -888 -666=.)
recode I10_ECauseCCS2            (-999 -888 -666=.)
recode I10_ECauseCCS3            (-999 -888 -666=.)
recode I10_ECauseCCS4            (-999 -888 -666=.)
recode I10_ECauseCCS5            (-999 -888 -666=.)
recode I10_ECauseCCS6            (-999 -888 -666=.)
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
recode I10_PRCCS22               (-99 -88 -66=.)
recode I10_PRCCS23               (-99 -88 -66=.)
recode I10_PRCCS24               (-99 -88 -66=.)
recode I10_PRCCS25               (-99 -88 -66=.)
recode I10_PRCCS26               (-99 -88 -66=.)
recode I10_PRCCS27               (-99 -88 -66=.)
recode I10_PRCCS28               (-99 -88 -66=.)
recode I10_PRCCS29               (-99 -88 -66=.)
recode I10_PRCCS30               (-99 -88 -66=.)
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
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
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

save "MS_SID_2015q4_CORE.dta", replace
