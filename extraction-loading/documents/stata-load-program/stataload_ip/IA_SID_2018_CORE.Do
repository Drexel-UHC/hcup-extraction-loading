/*****************************************************************************
* Creation Date: 07/02/2019   
* IA_SID_2018_CORE.Do
* This program will load the 2018 IA ASCII CORE File into Stata.
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
      int    BWT                         16-  19   ///
      long   DaysToEvent                 20-  25   ///
      byte   DIED                        26-  27   ///
      str    DISP_X                      28-  31   ///
      byte   DISPUB04                    32-  33   ///
      byte   DISPUNIFORM                 34-  35   ///
      byte   DMONTH                      36-  37   ///
      byte   DQTR                        38-  39   ///
      int    DRG                         40-  42   ///
      int    DRG_NoPOA                   43-  45   ///
      byte   DRGVER                      46-  47   ///
      str    DXPOA1                      48        ///
      str    DXPOA2                      49        ///
      str    DXPOA3                      50        ///
      str    DXPOA4                      51        ///
      str    DXPOA5                      52        ///
      str    DXPOA6                      53        ///
      str    DXPOA7                      54        ///
      str    DXPOA8                      55        ///
      str    DXPOA9                      56        ///
      str    DXPOA10                     57        ///
      str    DXPOA11                     58        ///
      str    DXPOA12                     59        ///
      str    DXPOA13                     60        ///
      str    DXPOA14                     61        ///
      str    DXPOA15                     62        ///
      str    DXPOA16                     63        ///
      str    DXPOA17                     64        ///
      str    DXPOA18                     65        ///
      str    DXPOA19                     66        ///
      str    DXPOA20                     67        ///
      str    DXPOA21                     68        ///
      str    DXPOA22                     69        ///
      str    DXPOA23                     70        ///
      str    DXPOA24                     71        ///
      str    DXPOA25                     72        ///
      str    DXPOA26                     73        ///
      str    DXPOA27                     74        ///
      str    DXPOA28                     75        ///
      str    DXPOA29                     76        ///
      str    DXPOA30                     77        ///
      str    DXPOA31                     78        ///
      str    DXPOA32                     79        ///
      str    DXPOA33                     80        ///
      str    DXPOA34                     81        ///
      str    DXPOA35                     82        ///
      str    DXPOA36                     83        ///
      str    DXPOA37                     84        ///
      str    DXPOA38                     85        ///
      str    DXPOA39                     86        ///
      str    DXPOA40                     87        ///
      str    DXPOA41                     88        ///
      str    DXPOA42                     89        ///
      str    DXPOA43                     90        ///
      str    DXPOA44                     91        ///
      str    DXPOA45                     92        ///
      str    DXPOA46                     93        ///
      str    DXPOA47                     94        ///
      str    DXPOA48                     95        ///
      str    DXPOA49                     96        ///
      str    DXPOA50                     97        ///
      str    DXPOA51                     98        ///
      str    DXPOA52                     99        ///
      str    DXPOA53                    100        ///
      str    DXPOA54                    101        ///
      str    DXPOA55                    102        ///
      str    DXPOA56                    103        ///
      str    DXPOA57                    104        ///
      str    DXPOA58                    105        ///
      str    DXPOA59                    106        ///
      str    DXPOA60                    107        ///
      str    DXPOA61                    108        ///
      str    DXPOA62                    109        ///
      str    DXPOA63                    110        ///
      str    DXPOA64                    111        ///
      byte   FEMALE                     112- 113   ///
      byte   HCUP_ED                    114- 115   ///
      byte   HCUP_OS                    116- 117   ///
      byte   HISPANIC                   118- 119   ///
      str    HISPANIC_X                 120        ///
      byte   HospitalUnit               121- 122   ///
      str    HOSPST                     123- 124   ///
      str    I10_DX_Admitting           125- 131   ///
      str    I10_DX1                    132- 138   ///
      str    I10_DX2                    139- 145   ///
      str    I10_DX3                    146- 152   ///
      str    I10_DX4                    153- 159   ///
      str    I10_DX5                    160- 166   ///
      str    I10_DX6                    167- 173   ///
      str    I10_DX7                    174- 180   ///
      str    I10_DX8                    181- 187   ///
      str    I10_DX9                    188- 194   ///
      str    I10_DX10                   195- 201   ///
      str    I10_DX11                   202- 208   ///
      str    I10_DX12                   209- 215   ///
      str    I10_DX13                   216- 222   ///
      str    I10_DX14                   223- 229   ///
      str    I10_DX15                   230- 236   ///
      str    I10_DX16                   237- 243   ///
      str    I10_DX17                   244- 250   ///
      str    I10_DX18                   251- 257   ///
      str    I10_DX19                   258- 264   ///
      str    I10_DX20                   265- 271   ///
      str    I10_DX21                   272- 278   ///
      str    I10_DX22                   279- 285   ///
      str    I10_DX23                   286- 292   ///
      str    I10_DX24                   293- 299   ///
      str    I10_DX25                   300- 306   ///
      str    I10_DX26                   307- 313   ///
      str    I10_DX27                   314- 320   ///
      str    I10_DX28                   321- 327   ///
      str    I10_DX29                   328- 334   ///
      str    I10_DX30                   335- 341   ///
      str    I10_DX31                   342- 348   ///
      str    I10_DX32                   349- 355   ///
      str    I10_DX33                   356- 362   ///
      str    I10_DX34                   363- 369   ///
      str    I10_DX35                   370- 376   ///
      str    I10_DX36                   377- 383   ///
      str    I10_DX37                   384- 390   ///
      str    I10_DX38                   391- 397   ///
      str    I10_DX39                   398- 404   ///
      str    I10_DX40                   405- 411   ///
      str    I10_DX41                   412- 418   ///
      str    I10_DX42                   419- 425   ///
      str    I10_DX43                   426- 432   ///
      str    I10_DX44                   433- 439   ///
      str    I10_DX45                   440- 446   ///
      str    I10_DX46                   447- 453   ///
      str    I10_DX47                   454- 460   ///
      str    I10_DX48                   461- 467   ///
      str    I10_DX49                   468- 474   ///
      str    I10_DX50                   475- 481   ///
      str    I10_DX51                   482- 488   ///
      str    I10_DX52                   489- 495   ///
      str    I10_DX53                   496- 502   ///
      str    I10_DX54                   503- 509   ///
      str    I10_DX55                   510- 516   ///
      str    I10_DX56                   517- 523   ///
      str    I10_DX57                   524- 530   ///
      str    I10_DX58                   531- 537   ///
      str    I10_DX59                   538- 544   ///
      str    I10_DX60                   545- 551   ///
      str    I10_DX61                   552- 558   ///
      str    I10_DX62                   559- 565   ///
      str    I10_DX63                   566- 572   ///
      str    I10_DX64                   573- 579   ///
      int    I10_NDX                    580- 582   ///
      int    I10_NPR                    583- 585   ///
      str    I10_PR1                    586- 592   ///
      str    I10_PR2                    593- 599   ///
      str    I10_PR3                    600- 606   ///
      str    I10_PR4                    607- 613   ///
      str    I10_PR5                    614- 620   ///
      str    I10_PR6                    621- 627   ///
      str    I10_PR7                    628- 634   ///
      str    I10_PR8                    635- 641   ///
      str    I10_PR9                    642- 648   ///
      str    I10_PR10                   649- 655   ///
      str    I10_PR11                   656- 662   ///
      str    I10_PR12                   663- 669   ///
      str    I10_PR13                   670- 676   ///
      str    I10_PR14                   677- 683   ///
      str    I10_PR15                   684- 690   ///
      str    I10_PR16                   691- 697   ///
      str    I10_PR17                   698- 704   ///
      str    I10_PR18                   705- 711   ///
      str    I10_PR19                   712- 718   ///
      str    I10_PR20                   719- 725   ///
      str    I10_PR21                   726- 732   ///
      str    I10_PR22                   733- 739   ///
      str    I10_PR23                   740- 746   ///
      str    I10_PR24                   747- 753   ///
      str    I10_PR25                   754- 760   ///
      str    I10_PR26                   761- 767   ///
      str    I10_PR27                   768- 774   ///
      str    I10_PR28                   775- 781   ///
      str    I10_PR29                   782- 788   ///
      str    I10_PR30                   789- 795   ///
      str    I10_PR31                   796- 802   ///
      str    I10_PR32                   803- 809   ///
      str    I10_PR33                   810- 816   ///
      str    I10_PR34                   817- 823   ///
      str    I10_PR35                   824- 830   ///
      str    I10_PR36                   831- 837   ///
      str    I10_PR37                   838- 844   ///
      str    I10_PR38                   845- 851   ///
      str    I10_PR39                   852- 858   ///
      str    I10_PR40                   859- 865   ///
      str    I10_PR41                   866- 872   ///
      str    I10_PR42                   873- 879   ///
      str    I10_PR43                   880- 886   ///
      str    I10_PR44                   887- 893   ///
      str    I10_PR45                   894- 900   ///
      str    I10_PR46                   901- 907   ///
      int    I10_PROCTYPE               908- 910   ///
      double KEY                        911- 925   ///
      long   LOS                        926- 930   ///
      long   LOS_X                      931- 936   ///
      byte   MDC                        937- 938   ///
      byte   MDC_NoPOA                  939- 940   ///
      long   MDNUM1_R                   941- 949   ///
      long   MDNUM2_R                   950- 958   ///
      long   MDNUM3_R                   959- 967   ///
      byte   MEDINCSTQ                  968- 969   ///
      long   MRN_R                      970- 978   ///
      str    P7EDSRC_X                  979- 980   ///
      byte   PAY1                       981- 982   ///
      str    PAY1_X                     983- 986   ///
      byte   PAY2                       987- 988   ///
      str    PAY2_X                     989- 992   ///
      byte   PAY3                       993- 994   ///
      str    PAY3_X                     995- 998   ///
      int    PL_CBSA                    999-1001   ///
      byte   PL_NCHS                   1002-1003   ///
      byte   PL_RUCC                   1004-1005   ///
      byte   PL_UIC                    1006-1007   ///
      byte   PL_UR_CAT4                1008-1009   ///
      byte   POA_Disch_Edit1           1010-1011   ///
      byte   POA_Disch_Edit2           1012-1013   ///
      byte   POA_Hosp_Edit1            1014-1015   ///
      byte   POA_Hosp_Edit2            1016-1017   ///
      byte   POA_Hosp_Edit3            1018-1019   ///
      double POA_Hosp_Edit3_Value      1020-1027   ///
      str    PointOfOrigin_X           1028        ///
      str    PointOfOriginUB04         1029        ///
      long   PRDAY1                    1030-1034   ///
      long   PRDAY2                    1035-1039   ///
      long   PRDAY3                    1040-1044   ///
      long   PRDAY4                    1045-1049   ///
      long   PRDAY5                    1050-1054   ///
      long   PRDAY6                    1055-1059   ///
      long   PRDAY7                    1060-1064   ///
      long   PRDAY8                    1065-1069   ///
      long   PRDAY9                    1070-1074   ///
      long   PRDAY10                   1075-1079   ///
      long   PRDAY11                   1080-1084   ///
      long   PRDAY12                   1085-1089   ///
      long   PRDAY13                   1090-1094   ///
      long   PRDAY14                   1095-1099   ///
      long   PRDAY15                   1100-1104   ///
      long   PRDAY16                   1105-1109   ///
      long   PRDAY17                   1110-1114   ///
      long   PRDAY18                   1115-1119   ///
      long   PRDAY19                   1120-1124   ///
      long   PRDAY20                   1125-1129   ///
      long   PRDAY21                   1130-1134   ///
      long   PRDAY22                   1135-1139   ///
      long   PRDAY23                   1140-1144   ///
      long   PRDAY24                   1145-1149   ///
      long   PRDAY25                   1150-1154   ///
      long   PRDAY26                   1155-1159   ///
      long   PRDAY27                   1160-1164   ///
      long   PRDAY28                   1165-1169   ///
      long   PRDAY29                   1170-1174   ///
      long   PRDAY30                   1175-1179   ///
      long   PRDAY31                   1180-1184   ///
      long   PRDAY32                   1185-1189   ///
      long   PRDAY33                   1190-1194   ///
      long   PRDAY34                   1195-1199   ///
      long   PRDAY35                   1200-1204   ///
      long   PRDAY36                   1205-1209   ///
      long   PRDAY37                   1210-1214   ///
      long   PRDAY38                   1215-1219   ///
      long   PRDAY39                   1220-1224   ///
      long   PRDAY40                   1225-1229   ///
      long   PRDAY41                   1230-1234   ///
      long   PRDAY42                   1235-1239   ///
      long   PRDAY43                   1240-1244   ///
      long   PRDAY44                   1245-1249   ///
      long   PRDAY45                   1250-1254   ///
      long   PRDAY46                   1255-1259   ///
      str    PrimLang                  1260-1262   ///
      str    PSTATE                    1263-1264   ///
      long   PSTCO                     1265-1269   ///
      long   PSTCO2                    1270-1274   ///
      byte   RACE                      1275-1276   ///
      byte   RACE_EDIT                 1277-1278   ///
      str    RACE_X                    1279-1282   ///
      double TOTCHG                    1283-1292   ///
      double TOTCHG_X                  1293-1307   ///
      byte   TRAN_IN                   1308-1309   ///
      byte   TRAN_OUT                  1310-1311   ///
      long   VisitLink                 1312-1320   ///
      int    YEAR                      1321-1324   ///
      str    ZIP                       1325-1329   ///
      str    ZIP3                      1330-1332   ///
      int    ZIPINC_QRTL               1333-1335   ///
      int    AYEAR                     1336-1339   ///
      byte   BMONTH                    1340-1341   ///
      int    BYEAR                     1342-1345   ///
      byte   PRMONTH1                  1346-1347   ///
      byte   PRMONTH2                  1348-1349   ///
      byte   PRMONTH3                  1350-1351   ///
      byte   PRMONTH4                  1352-1353   ///
      byte   PRMONTH5                  1354-1355   ///
      byte   PRMONTH6                  1356-1357   ///
      byte   PRMONTH7                  1358-1359   ///
      byte   PRMONTH8                  1360-1361   ///
      byte   PRMONTH9                  1362-1363   ///
      byte   PRMONTH10                 1364-1365   ///
      byte   PRMONTH11                 1366-1367   ///
      byte   PRMONTH12                 1368-1369   ///
      byte   PRMONTH13                 1370-1371   ///
      byte   PRMONTH14                 1372-1373   ///
      byte   PRMONTH15                 1374-1375   ///
      byte   PRMONTH16                 1376-1377   ///
      byte   PRMONTH17                 1378-1379   ///
      byte   PRMONTH18                 1380-1381   ///
      byte   PRMONTH19                 1382-1383   ///
      byte   PRMONTH20                 1384-1385   ///
      byte   PRMONTH21                 1386-1387   ///
      byte   PRMONTH22                 1388-1389   ///
      byte   PRMONTH23                 1390-1391   ///
      byte   PRMONTH24                 1392-1393   ///
      byte   PRMONTH25                 1394-1395   ///
      byte   PRMONTH26                 1396-1397   ///
      byte   PRMONTH27                 1398-1399   ///
      byte   PRMONTH28                 1400-1401   ///
      byte   PRMONTH29                 1402-1403   ///
      byte   PRMONTH30                 1404-1405   ///
      byte   PRMONTH31                 1406-1407   ///
      byte   PRMONTH32                 1408-1409   ///
      byte   PRMONTH33                 1410-1411   ///
      byte   PRMONTH34                 1412-1413   ///
      byte   PRMONTH35                 1414-1415   ///
      byte   PRMONTH36                 1416-1417   ///
      byte   PRMONTH37                 1418-1419   ///
      byte   PRMONTH38                 1420-1421   ///
      byte   PRMONTH39                 1422-1423   ///
      byte   PRMONTH40                 1424-1425   ///
      byte   PRMONTH41                 1426-1427   ///
      byte   PRMONTH42                 1428-1429   ///
      byte   PRMONTH43                 1430-1431   ///
      byte   PRMONTH44                 1432-1433   ///
      byte   PRMONTH45                 1434-1435   ///
      byte   PRMONTH46                 1436-1437   ///
      int    PRYEAR1                   1438-1441   ///
      int    PRYEAR2                   1442-1445   ///
      int    PRYEAR3                   1446-1449   ///
      int    PRYEAR4                   1450-1453   ///
      int    PRYEAR5                   1454-1457   ///
      int    PRYEAR6                   1458-1461   ///
      int    PRYEAR7                   1462-1465   ///
      int    PRYEAR8                   1466-1469   ///
      int    PRYEAR9                   1470-1473   ///
      int    PRYEAR10                  1474-1477   ///
      int    PRYEAR11                  1478-1481   ///
      int    PRYEAR12                  1482-1485   ///
      int    PRYEAR13                  1486-1489   ///
      int    PRYEAR14                  1490-1493   ///
      int    PRYEAR15                  1494-1497   ///
      int    PRYEAR16                  1498-1501   ///
      int    PRYEAR17                  1502-1505   ///
      int    PRYEAR18                  1506-1509   ///
      int    PRYEAR19                  1510-1513   ///
      int    PRYEAR20                  1514-1517   ///
      int    PRYEAR21                  1518-1521   ///
      int    PRYEAR22                  1522-1525   ///
      int    PRYEAR23                  1526-1529   ///
      int    PRYEAR24                  1530-1533   ///
      int    PRYEAR25                  1534-1537   ///
      int    PRYEAR26                  1538-1541   ///
      int    PRYEAR27                  1542-1545   ///
      int    PRYEAR28                  1546-1549   ///
      int    PRYEAR29                  1550-1553   ///
      int    PRYEAR30                  1554-1557   ///
      int    PRYEAR31                  1558-1561   ///
      int    PRYEAR32                  1562-1565   ///
      int    PRYEAR33                  1566-1569   ///
      int    PRYEAR34                  1570-1573   ///
      int    PRYEAR35                  1574-1577   ///
      int    PRYEAR36                  1578-1581   ///
      int    PRYEAR37                  1582-1585   ///
      int    PRYEAR38                  1586-1589   ///
      int    PRYEAR39                  1590-1593   ///
      int    PRYEAR40                  1594-1597   ///
      int    PRYEAR41                  1598-1601   ///
      int    PRYEAR42                  1602-1605   ///
      int    PRYEAR43                  1606-1609   ///
      int    PRYEAR44                  1610-1613   ///
      int    PRYEAR45                  1614-1617   ///
      int    PRYEAR46                  1618-1621   ///
      using  "IA_SID_2018_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
label var DaysToEvent              "Days from 'start date' to admission"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
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
label var PrimLang                 "Primary language of patient"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
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

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
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
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
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
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
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

save "IA_SID_2018_CORE.dta", replace
