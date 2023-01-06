/*****************************************************************************
* Creation Date: 01/19/2021   
* MD_SID_2019_CORE.Do
* This program will load the 2019 MD ASCII CORE File into Stata.
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
      byte   ATYPE                       10-  11   ///
      byte   AWEEKEND                    12-  13   ///
      int    BWT                         14-  17   ///
      byte   DIED                        18-  19   ///
      byte   DISPUB04                    20-  21   ///
      byte   DISPUNIFORM                 22-  23   ///
      str    DISP_X                      24-  25   ///
      byte   DQTR                        26-  27   ///
      int    DRG                         28-  30   ///
      byte   DRGVER                      31-  32   ///
      int    DRG_NoPOA                   33-  35   ///
      str    DSHOSPID                    36-  52   ///
      str    DXPOA1                      53        ///
      str    DXPOA2                      54        ///
      str    DXPOA3                      55        ///
      str    DXPOA4                      56        ///
      str    DXPOA5                      57        ///
      str    DXPOA6                      58        ///
      str    DXPOA7                      59        ///
      str    DXPOA8                      60        ///
      str    DXPOA9                      61        ///
      str    DXPOA10                     62        ///
      str    DXPOA11                     63        ///
      str    DXPOA12                     64        ///
      str    DXPOA13                     65        ///
      str    DXPOA14                     66        ///
      str    DXPOA15                     67        ///
      str    DXPOA16                     68        ///
      str    DXPOA17                     69        ///
      str    DXPOA18                     70        ///
      str    DXPOA19                     71        ///
      str    DXPOA20                     72        ///
      str    DXPOA21                     73        ///
      str    DXPOA22                     74        ///
      str    DXPOA23                     75        ///
      str    DXPOA24                     76        ///
      str    DXPOA25                     77        ///
      str    DXPOA26                     78        ///
      str    DXPOA27                     79        ///
      str    DXPOA28                     80        ///
      str    DXPOA29                     81        ///
      str    DXPOA30                     82        ///
      str    DXPOA31                     83        ///
      str    DXPOA32                     84        ///
      str    DXPOA33                     85        ///
      str    DXPOA34                     86        ///
      str    DXPOA35                     87        ///
      str    DXPOA36                     88        ///
      str    DXPOA37                     89        ///
      str    DXPOA38                     90        ///
      str    DXPOA39                     91        ///
      str    DXPOA40                     92        ///
      str    DXPOA41                     93        ///
      str    DXPOA42                     94        ///
      str    DXPOA43                     95        ///
      str    DXPOA44                     96        ///
      str    DXPOA45                     97        ///
      str    DXPOA46                     98        ///
      str    DXPOA47                     99        ///
      str    DXPOA48                    100        ///
      str    DXPOA49                    101        ///
      str    DXPOA50                    102        ///
      str    DXPOA51                    103        ///
      str    DXPOA52                    104        ///
      str    DXPOA53                    105        ///
      str    DXPOA54                    106        ///
      str    DXPOA55                    107        ///
      str    DXPOA56                    108        ///
      str    DXPOA57                    109        ///
      str    DXPOA58                    110        ///
      str    DXPOA59                    111        ///
      str    DXPOA60                    112        ///
      str    DXPOA61                    113        ///
      str    DXPOA62                    114        ///
      str    DXPOA63                    115        ///
      str    DXPOA64                    116        ///
      str    DXPOA65                    117        ///
      str    DXPOA66                    118        ///
      str    DXPOA67                    119        ///
      str    DXPOA68                    120        ///
      str    DXPOA69                    121        ///
      str    DXPOA70                    122        ///
      str    DXPOA71                    123        ///
      str    DXPOA72                    124        ///
      str    DXPOA73                    125        ///
      str    DXPOA74                    126        ///
      str    DXPOA75                    127        ///
      str    DXPOA76                    128        ///
      str    DXPOA77                    129        ///
      str    DXPOA78                    130        ///
      int    DaysBurnUnit               131- 133   ///
      int    DaysCCU                    134- 136   ///
      int    DaysICU                    137- 139   ///
      int    DaysNICU                   140- 142   ///
      int    DaysPICU                   143- 145   ///
      int    DaysShockUnit              146- 148   ///
      long   DaysToEvent                149- 154   ///
      byte   FEMALE                     155- 156   ///
      byte   HCUP_ED                    157- 158   ///
      byte   HCUP_OS                    159- 160   ///
      byte   HISPANIC                   161- 162   ///
      str    HISPANIC_X                 163        ///
      str    HOSPST                     164- 165   ///
      byte   Homeless                   166- 167   ///
      byte   HospitalUnit               168- 169   ///
      byte   I10_BIRTH                  170- 171   ///
      byte   I10_DELIVERY               172- 173   ///
      str    I10_DX1                    174- 180   ///
      str    I10_DX2                    181- 187   ///
      str    I10_DX3                    188- 194   ///
      str    I10_DX4                    195- 201   ///
      str    I10_DX5                    202- 208   ///
      str    I10_DX6                    209- 215   ///
      str    I10_DX7                    216- 222   ///
      str    I10_DX8                    223- 229   ///
      str    I10_DX9                    230- 236   ///
      str    I10_DX10                   237- 243   ///
      str    I10_DX11                   244- 250   ///
      str    I10_DX12                   251- 257   ///
      str    I10_DX13                   258- 264   ///
      str    I10_DX14                   265- 271   ///
      str    I10_DX15                   272- 278   ///
      str    I10_DX16                   279- 285   ///
      str    I10_DX17                   286- 292   ///
      str    I10_DX18                   293- 299   ///
      str    I10_DX19                   300- 306   ///
      str    I10_DX20                   307- 313   ///
      str    I10_DX21                   314- 320   ///
      str    I10_DX22                   321- 327   ///
      str    I10_DX23                   328- 334   ///
      str    I10_DX24                   335- 341   ///
      str    I10_DX25                   342- 348   ///
      str    I10_DX26                   349- 355   ///
      str    I10_DX27                   356- 362   ///
      str    I10_DX28                   363- 369   ///
      str    I10_DX29                   370- 376   ///
      str    I10_DX30                   377- 383   ///
      str    I10_DX31                   384- 390   ///
      str    I10_DX32                   391- 397   ///
      str    I10_DX33                   398- 404   ///
      str    I10_DX34                   405- 411   ///
      str    I10_DX35                   412- 418   ///
      str    I10_DX36                   419- 425   ///
      str    I10_DX37                   426- 432   ///
      str    I10_DX38                   433- 439   ///
      str    I10_DX39                   440- 446   ///
      str    I10_DX40                   447- 453   ///
      str    I10_DX41                   454- 460   ///
      str    I10_DX42                   461- 467   ///
      str    I10_DX43                   468- 474   ///
      str    I10_DX44                   475- 481   ///
      str    I10_DX45                   482- 488   ///
      str    I10_DX46                   489- 495   ///
      str    I10_DX47                   496- 502   ///
      str    I10_DX48                   503- 509   ///
      str    I10_DX49                   510- 516   ///
      str    I10_DX50                   517- 523   ///
      str    I10_DX51                   524- 530   ///
      str    I10_DX52                   531- 537   ///
      str    I10_DX53                   538- 544   ///
      str    I10_DX54                   545- 551   ///
      str    I10_DX55                   552- 558   ///
      str    I10_DX56                   559- 565   ///
      str    I10_DX57                   566- 572   ///
      str    I10_DX58                   573- 579   ///
      str    I10_DX59                   580- 586   ///
      str    I10_DX60                   587- 593   ///
      str    I10_DX61                   594- 600   ///
      str    I10_DX62                   601- 607   ///
      str    I10_DX63                   608- 614   ///
      str    I10_DX64                   615- 621   ///
      str    I10_DX65                   622- 628   ///
      str    I10_DX66                   629- 635   ///
      str    I10_DX67                   636- 642   ///
      str    I10_DX68                   643- 649   ///
      str    I10_DX69                   650- 656   ///
      str    I10_DX70                   657- 663   ///
      str    I10_DX71                   664- 670   ///
      str    I10_DX72                   671- 677   ///
      str    I10_DX73                   678- 684   ///
      str    I10_DX74                   685- 691   ///
      str    I10_DX75                   692- 698   ///
      str    I10_DX76                   699- 705   ///
      str    I10_DX77                   706- 712   ///
      str    I10_DX78                   713- 719   ///
      int    I10_NDX                    720- 722   ///
      int    I10_NPR                    723- 725   ///
      byte   I10_ORPROC                 726- 727   ///
      str    I10_PR1                    728- 734   ///
      str    I10_PR2                    735- 741   ///
      str    I10_PR3                    742- 748   ///
      str    I10_PR4                    749- 755   ///
      str    I10_PR5                    756- 762   ///
      str    I10_PR6                    763- 769   ///
      str    I10_PR7                    770- 776   ///
      str    I10_PR8                    777- 783   ///
      str    I10_PR9                    784- 790   ///
      str    I10_PR10                   791- 797   ///
      str    I10_PR11                   798- 804   ///
      str    I10_PR12                   805- 811   ///
      str    I10_PR13                   812- 818   ///
      str    I10_PR14                   819- 825   ///
      str    I10_PR15                   826- 832   ///
      str    I10_PR16                   833- 839   ///
      str    I10_PR17                   840- 846   ///
      str    I10_PR18                   847- 853   ///
      str    I10_PR19                   854- 860   ///
      str    I10_PR20                   861- 867   ///
      str    I10_PR21                   868- 874   ///
      str    I10_PR22                   875- 881   ///
      str    I10_PR23                   882- 888   ///
      str    I10_PR24                   889- 895   ///
      str    I10_PR25                   896- 902   ///
      str    I10_PR26                   903- 909   ///
      str    I10_PR27                   910- 916   ///
      str    I10_PR28                   917- 923   ///
      str    I10_PR29                   924- 930   ///
      str    I10_PR30                   931- 937   ///
      str    I10_PR31                   938- 944   ///
      str    I10_PR32                   945- 951   ///
      str    I10_PR33                   952- 958   ///
      str    I10_PR34                   959- 965   ///
      str    I10_PR35                   966- 972   ///
      str    I10_PR36                   973- 979   ///
      str    I10_PR37                   980- 986   ///
      str    I10_PR38                   987- 993   ///
      str    I10_PR39                   994-1000   ///
      str    I10_PR40                  1001-1007   ///
      str    I10_PR41                  1008-1014   ///
      str    I10_PR42                  1015-1021   ///
      str    I10_PR43                  1022-1028   ///
      str    I10_PR44                  1029-1035   ///
      str    I10_PR45                  1036-1042   ///
      str    I10_PR46                  1043-1049   ///
      str    I10_PR47                  1050-1056   ///
      str    I10_PR48                  1057-1063   ///
      str    I10_PR49                  1064-1070   ///
      str    I10_PR50                  1071-1077   ///
      str    I10_PR51                  1078-1084   ///
      str    I10_PR52                  1085-1091   ///
      str    I10_PR53                  1092-1098   ///
      str    I10_PR54                  1099-1105   ///
      str    I10_PR55                  1106-1112   ///
      str    I10_PR56                  1113-1119   ///
      str    I10_PR57                  1120-1126   ///
      str    I10_PR58                  1127-1133   ///
      str    I10_PR59                  1134-1140   ///
      str    I10_PR60                  1141-1147   ///
      str    I10_PR61                  1148-1154   ///
      str    I10_PR62                  1155-1161   ///
      str    I10_PR63                  1162-1168   ///
      str    I10_PR64                  1169-1175   ///
      int    I10_PROCTYPE              1176-1178   ///
      byte   I10_SERVICELINE           1179-1180   ///
      double KEY                       1181-1195   ///
      long   LOS                       1196-1200   ///
      long   LOS_X                     1201-1206   ///
      str    MARITALSTATUSUB04         1207        ///
      str    MARITALSTATUS_X           1208        ///
      byte   MDC                       1209-1210   ///
      byte   MDC_NoPOA                 1211-1212   ///
      long   MDNUM1_R                  1213-1221   ///
      long   MDNUM2_R                  1222-1230   ///
      byte   MEDINCSTQ                 1231-1232   ///
      long   MRN_R                     1233-1241   ///
      double OS_TIME                   1242-1252   ///
      str    P7EDSRC_X                 1253-1254   ///
      byte   PAY1                      1255-1256   ///
      str    PAY1_X                    1257-1258   ///
      byte   PAY2                      1259-1260   ///
      str    PAY2_X                    1261-1262   ///
      byte   PAY3                      1263-1264   ///
      str    PAY3_X                    1265-1266   ///
      str    PAYER1_X                  1267-1268   ///
      str    PAYER2_X                  1269-1270   ///
      str    PAYER3_X                  1271-1272   ///
      int    PL_CBSA                   1273-1275   ///
      byte   PL_NCHS                   1276-1277   ///
      byte   PL_RUCC                   1278-1279   ///
      byte   PL_UIC                    1280-1281   ///
      byte   PL_UR_CAT4                1282-1283   ///
      byte   POA_Disch_Edit1           1284-1285   ///
      byte   POA_Disch_Edit2           1286-1287   ///
      byte   POA_Hosp_Edit1            1288-1289   ///
      byte   POA_Hosp_Edit2            1290-1291   ///
      byte   POA_Hosp_Edit3            1292-1293   ///
      double POA_Hosp_Edit3_Value      1294-1301   ///
      long   PRDAY1                    1302-1306   ///
      long   PRDAY2                    1307-1311   ///
      long   PRDAY3                    1312-1316   ///
      long   PRDAY4                    1317-1321   ///
      long   PRDAY5                    1322-1326   ///
      long   PRDAY6                    1327-1331   ///
      long   PRDAY7                    1332-1336   ///
      long   PRDAY8                    1337-1341   ///
      long   PRDAY9                    1342-1346   ///
      long   PRDAY10                   1347-1351   ///
      long   PRDAY11                   1352-1356   ///
      long   PRDAY12                   1357-1361   ///
      long   PRDAY13                   1362-1366   ///
      long   PRDAY14                   1367-1371   ///
      long   PRDAY15                   1372-1376   ///
      long   PRDAY16                   1377-1381   ///
      long   PRDAY17                   1382-1386   ///
      long   PRDAY18                   1387-1391   ///
      long   PRDAY19                   1392-1396   ///
      long   PRDAY20                   1397-1401   ///
      long   PRDAY21                   1402-1406   ///
      long   PRDAY22                   1407-1411   ///
      long   PRDAY23                   1412-1416   ///
      long   PRDAY24                   1417-1421   ///
      long   PRDAY25                   1422-1426   ///
      long   PRDAY26                   1427-1431   ///
      long   PRDAY27                   1432-1436   ///
      long   PRDAY28                   1437-1441   ///
      long   PRDAY29                   1442-1446   ///
      long   PRDAY30                   1447-1451   ///
      long   PRDAY31                   1452-1456   ///
      long   PRDAY32                   1457-1461   ///
      long   PRDAY33                   1462-1466   ///
      long   PRDAY34                   1467-1471   ///
      long   PRDAY35                   1472-1476   ///
      long   PRDAY36                   1477-1481   ///
      long   PRDAY37                   1482-1486   ///
      long   PRDAY38                   1487-1491   ///
      long   PRDAY39                   1492-1496   ///
      long   PRDAY40                   1497-1501   ///
      long   PRDAY41                   1502-1506   ///
      long   PRDAY42                   1507-1511   ///
      long   PRDAY43                   1512-1516   ///
      long   PRDAY44                   1517-1521   ///
      long   PRDAY45                   1522-1526   ///
      long   PRDAY46                   1527-1531   ///
      long   PRDAY47                   1532-1536   ///
      long   PRDAY48                   1537-1541   ///
      long   PRDAY49                   1542-1546   ///
      long   PRDAY50                   1547-1551   ///
      long   PRDAY51                   1552-1556   ///
      long   PRDAY52                   1557-1561   ///
      long   PRDAY53                   1562-1566   ///
      long   PRDAY54                   1567-1571   ///
      long   PRDAY55                   1572-1576   ///
      long   PRDAY56                   1577-1581   ///
      long   PRDAY57                   1582-1586   ///
      long   PRDAY58                   1587-1591   ///
      long   PRDAY59                   1592-1596   ///
      long   PRDAY60                   1597-1601   ///
      long   PRDAY61                   1602-1606   ///
      long   PRDAY62                   1607-1611   ///
      long   PRDAY63                   1612-1616   ///
      long   PRDAY64                   1617-1621   ///
      str    PSTATE                    1622-1623   ///
      str    PSTATE_GEO                1624-1625   ///
      long   PSTCO                     1626-1630   ///
      long   PSTCO_GEO                 1631-1635   ///
      str    PointOfOriginUB04         1636        ///
      str    PointOfOrigin_X           1637-1638   ///
      str    PrimLang                  1639-1641   ///
      byte   RACE                      1642-1643   ///
      byte   RACE_EDIT                 1644-1645   ///
      str    RACE_X                    1646        ///
      byte   READMIT                   1647-1648   ///
      double TOTCHG                    1649-1658   ///
      double TOTCHG_X                  1659-1673   ///
      byte   TRAN_IN                   1674-1675   ///
      byte   TRAN_OUT                  1676-1677   ///
      long   VisitLink                 1678-1686   ///
      int    YEAR                      1687-1690   ///
      str    ZIP                       1691-1695   ///
      str    ZIP3                      1696-1698   ///
      int    ZIPINC_QRTL               1699-1701   ///
      int    AYEAR                     1702-1705   ///
      using  "MD_SID_2019_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRGVER                   "DRG grouper version used on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
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
label var DXPOA65                  "Diagnosis 65, present on admission indicator"
label var DXPOA66                  "Diagnosis 66, present on admission indicator"
label var DXPOA67                  "Diagnosis 67, present on admission indicator"
label var DXPOA68                  "Diagnosis 68, present on admission indicator"
label var DXPOA69                  "Diagnosis 69, present on admission indicator"
label var DXPOA70                  "Diagnosis 70, present on admission indicator"
label var DXPOA71                  "Diagnosis 71, present on admission indicator"
label var DXPOA72                  "Diagnosis 72, present on admission indicator"
label var DXPOA73                  "Diagnosis 73, present on admission indicator"
label var DXPOA74                  "Diagnosis 74, present on admission indicator"
label var DXPOA75                  "Diagnosis 75, present on admission indicator"
label var DXPOA76                  "Diagnosis 76, present on admission indicator"
label var DXPOA77                  "Diagnosis 77, present on admission indicator"
label var DXPOA78                  "Diagnosis 78, present on admission indicator"
label var DaysBurnUnit             "Days in burn care unit (as received from source)"
label var DaysCCU                  "Days in coronary care unit (as received from source)"
label var DaysICU                  "Days in medical/surgical intensive care unit (as received from source)"
label var DaysNICU                 "Days in neonetal care unit (as received from source)"
label var DaysPICU                 "Days in pediatric care unit (as received from source)"
label var DaysShockUnit            "Days in shock trauma unit (as received from source"
label var DaysToEvent              "Days from 'start date' to admission"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPST                   "Hospital state postal code"
label var Homeless                 "Indicator that patient is homeless"
label var HospitalUnit             "Patient was discharged from a special unit within an acute care hospital (reported by source)"
label var I10_BIRTH                "ICD-10-CM Birth Indicator"
label var I10_DELIVERY             "ICD-10-CM Delivery Indicator"
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
label var I10_DX65                 "ICD-10-CM Diagnosis 65"
label var I10_DX66                 "ICD-10-CM Diagnosis 66"
label var I10_DX67                 "ICD-10-CM Diagnosis 67"
label var I10_DX68                 "ICD-10-CM Diagnosis 68"
label var I10_DX69                 "ICD-10-CM Diagnosis 69"
label var I10_DX70                 "ICD-10-CM Diagnosis 70"
label var I10_DX71                 "ICD-10-CM Diagnosis 71"
label var I10_DX72                 "ICD-10-CM Diagnosis 72"
label var I10_DX73                 "ICD-10-CM Diagnosis 73"
label var I10_DX74                 "ICD-10-CM Diagnosis 74"
label var I10_DX75                 "ICD-10-CM Diagnosis 75"
label var I10_DX76                 "ICD-10-CM Diagnosis 76"
label var I10_DX77                 "ICD-10-CM Diagnosis 77"
label var I10_DX78                 "ICD-10-CM Diagnosis 78"
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
label var I10_PR47                 "ICD-10-PCS Procedure 47"
label var I10_PR48                 "ICD-10-PCS Procedure 48"
label var I10_PR49                 "ICD-10-PCS Procedure 49"
label var I10_PR50                 "ICD-10-PCS Procedure 50"
label var I10_PR51                 "ICD-10-PCS Procedure 51"
label var I10_PR52                 "ICD-10-PCS Procedure 52"
label var I10_PR53                 "ICD-10-PCS Procedure 53"
label var I10_PR54                 "ICD-10-PCS Procedure 54"
label var I10_PR55                 "ICD-10-PCS Procedure 55"
label var I10_PR56                 "ICD-10-PCS Procedure 56"
label var I10_PR57                 "ICD-10-PCS Procedure 57"
label var I10_PR58                 "ICD-10-PCS Procedure 58"
label var I10_PR59                 "ICD-10-PCS Procedure 59"
label var I10_PR60                 "ICD-10-PCS Procedure 60"
label var I10_PR61                 "ICD-10-PCS Procedure 61"
label var I10_PR62                 "ICD-10-PCS Procedure 62"
label var I10_PR63                 "ICD-10-PCS Procedure 63"
label var I10_PR64                 "ICD-10-PCS Procedure 64"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MARITALSTATUS_X          "Patient's marital status (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
label var PAY3                     "Tertiary expected payer (uniform)"
label var PAY3_X                   "Tertiary expected payer (as received from source)"
label var PAYER1_X                 "Primary expected payer plan identifier (as received from source)"
label var PAYER2_X                 "Secondary expected payer plan identifier (as received from source)"
label var PAYER3_X                 "Tertiary expected payer plan identifier (as received from source)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes (RUCC)"
label var PL_UIC                   "Patient location: Urban Influence Codes"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
label var POA_Disch_Edit1          "Discharge has POA missing on all nonexempt diagnoses"
label var POA_Disch_Edit2          "Discharge has POA missing on all nonexempt secondary diagnoses"
label var POA_Hosp_Edit1           "Hospital reported POA as Y on all diagnoses on all discharges"
label var POA_Hosp_Edit2           "Hospital reported POA as missing on all non-Medicare discharges"
label var POA_Hosp_Edit3           "Hospital reported POA as missing on all nonexempt diagnoses for 15% or more of discharges"
label var POA_Hosp_Edit3_Value     "Percentage of discharges with all nonexempt diagnoses missing POA indicators"
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
label var PRDAY47                  "Number of days from admission to I10_PR47"
label var PRDAY48                  "Number of days from admission to I10_PR48"
label var PRDAY49                  "Number of days from admission to I10_PR49"
label var PRDAY50                  "Number of days from admission to I10_PR50"
label var PRDAY51                  "Number of days from admission to I10_PR51"
label var PRDAY52                  "Number of days from admission to I10_PR52"
label var PRDAY53                  "Number of days from admission to I10_PR53"
label var PRDAY54                  "Number of days from admission to I10_PR54"
label var PRDAY55                  "Number of days from admission to I10_PR55"
label var PRDAY56                  "Number of days from admission to I10_PR56"
label var PRDAY57                  "Number of days from admission to I10_PR57"
label var PRDAY58                  "Number of days from admission to I10_PR58"
label var PRDAY59                  "Number of days from admission to I10_PR59"
label var PRDAY60                  "Number of days from admission to I10_PR60"
label var PRDAY61                  "Number of days from admission to I10_PR61"
label var PRDAY62                  "Number of days from admission to I10_PR62"
label var PRDAY63                  "Number of days from admission to I10_PR63"
label var PRDAY64                  "Number of days from admission to I10_PR64"
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PrimLang                 "Primary language of patient"
label var RACE                     "Race (uniform)"
label var RACE_EDIT                "Race Edit Checks"
label var RACE_X                   "Race (as received from source)"
label var READMIT                  "Readmission"
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

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DaysBurnUnit              (-99 -88 -66=.)
recode DaysCCU                   (-99 -88 -66=.)
recode DaysICU                   (-99 -88 -66=.)
recode DaysNICU                  (-99 -88 -66=.)
recode DaysPICU                  (-99 -88 -66=.)
recode DaysShockUnit             (-99 -88 -66=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
recode I10_BIRTH                 (-9 -8 -6 -5=.)
recode I10_DELIVERY              (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_ORPROC                (-9 -8 -6 -5=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode I10_SERVICELINE           (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
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
recode PRDAY47                   (-9999 -8888 -6666=.)
recode PRDAY48                   (-9999 -8888 -6666=.)
recode PRDAY49                   (-9999 -8888 -6666=.)
recode PRDAY50                   (-9999 -8888 -6666=.)
recode PRDAY51                   (-9999 -8888 -6666=.)
recode PRDAY52                   (-9999 -8888 -6666=.)
recode PRDAY53                   (-9999 -8888 -6666=.)
recode PRDAY54                   (-9999 -8888 -6666=.)
recode PRDAY55                   (-9999 -8888 -6666=.)
recode PRDAY56                   (-9999 -8888 -6666=.)
recode PRDAY57                   (-9999 -8888 -6666=.)
recode PRDAY58                   (-9999 -8888 -6666=.)
recode PRDAY59                   (-9999 -8888 -6666=.)
recode PRDAY60                   (-9999 -8888 -6666=.)
recode PRDAY61                   (-9999 -8888 -6666=.)
recode PRDAY62                   (-9999 -8888 -6666=.)
recode PRDAY63                   (-9999 -8888 -6666=.)
recode PRDAY64                   (-9999 -8888 -6666=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_EDIT                 (-9 -8 -6 -5=.)
recode READMIT                   (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
recode VisitLink                 (-99999999 -88888888 -66666666=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)

save "MD_SID_2019_CORE.dta", replace
