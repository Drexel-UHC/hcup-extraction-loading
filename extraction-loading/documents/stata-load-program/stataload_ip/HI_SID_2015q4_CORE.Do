/*****************************************************************************
* Creation Date: 07/05/2017   
* HI_SID_2015q4_CORE.Do
* This program will load the 2015 HI ASCII CORE File into Stata.
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
      int    BWT                         13-  16   ///
      byte   DIED                        17-  18   ///
      str    DISP_X                      19-  20   ///
      byte   DISPUB04                    21-  22   ///
      byte   DISPUNIFORM                 23-  24   ///
      byte   DMONTH                      25-  26   ///
      byte   DQTR                        27-  28   ///
      int    DRG                         29-  31   ///
      int    DRG_NoPOA                   32-  34   ///
      int    DRG32                       35-  37   ///
      byte   DRGVER                      38-  39   ///
      str    DXPOA1                      40        ///
      str    DXPOA2                      41        ///
      str    DXPOA3                      42        ///
      str    DXPOA4                      43        ///
      str    DXPOA5                      44        ///
      str    DXPOA6                      45        ///
      str    DXPOA7                      46        ///
      str    DXPOA8                      47        ///
      str    DXPOA9                      48        ///
      str    DXPOA10                     49        ///
      str    DXPOA11                     50        ///
      str    DXPOA12                     51        ///
      str    DXPOA13                     52        ///
      str    DXPOA14                     53        ///
      str    DXPOA15                     54        ///
      str    DXPOA16                     55        ///
      str    DXPOA17                     56        ///
      str    DXPOA18                     57        ///
      str    DXPOA19                     58        ///
      str    DXPOA20                     59        ///
      str    DXPOA21                     60        ///
      str    DXPOA22                     61        ///
      str    DXPOA23                     62        ///
      str    DXPOA24                     63        ///
      str    DXPOA25                     64        ///
      str    DXPOA26                     65        ///
      str    DXPOA27                     66        ///
      str    DXPOA28                     67        ///
      str    DXPOA29                     68        ///
      str    DXPOA30                     69        ///
      str    DXPOA31                     70        ///
      str    DXPOA32                     71        ///
      str    DXPOA33                     72        ///
      str    DXPOA34                     73        ///
      str    DXPOA35                     74        ///
      str    DXPOA36                     75        ///
      str    DXPOA37                     76        ///
      str    DXPOA38                     77        ///
      int    DXVER                       78-  80   ///
      str    E_POA1                      81        ///
      str    E_POA2                      82        ///
      str    E_POA3                      83        ///
      str    E_POA4                      84        ///
      str    E_POA5                      85        ///
      str    E_POA6                      86        ///
      str    E_POA7                      87        ///
      str    E_POA8                      88        ///
      str    E_POA9                      89        ///
      byte   FEMALE                      90-  91   ///
      byte   HCUP_ED                     92-  93   ///
      byte   HCUP_OS                     94-  95   ///
      str    HOSPST                      96-  97   ///
      str    I10_DX1                     98- 104   ///
      str    I10_DX2                    105- 111   ///
      str    I10_DX3                    112- 118   ///
      str    I10_DX4                    119- 125   ///
      str    I10_DX5                    126- 132   ///
      str    I10_DX6                    133- 139   ///
      str    I10_DX7                    140- 146   ///
      str    I10_DX8                    147- 153   ///
      str    I10_DX9                    154- 160   ///
      str    I10_DX10                   161- 167   ///
      str    I10_DX11                   168- 174   ///
      str    I10_DX12                   175- 181   ///
      str    I10_DX13                   182- 188   ///
      str    I10_DX14                   189- 195   ///
      str    I10_DX15                   196- 202   ///
      str    I10_DX16                   203- 209   ///
      str    I10_DX17                   210- 216   ///
      str    I10_DX18                   217- 223   ///
      str    I10_DX19                   224- 230   ///
      str    I10_DX20                   231- 237   ///
      str    I10_DX21                   238- 244   ///
      str    I10_DX22                   245- 251   ///
      str    I10_DX23                   252- 258   ///
      str    I10_DX24                   259- 265   ///
      str    I10_DX25                   266- 272   ///
      str    I10_DX26                   273- 279   ///
      str    I10_DX27                   280- 286   ///
      str    I10_DX28                   287- 293   ///
      str    I10_DX29                   294- 300   ///
      str    I10_DX30                   301- 307   ///
      str    I10_DX31                   308- 314   ///
      str    I10_DX32                   315- 321   ///
      str    I10_DX33                   322- 328   ///
      str    I10_DX34                   329- 335   ///
      str    I10_DX35                   336- 342   ///
      str    I10_DX36                   343- 349   ///
      str    I10_DX37                   350- 356   ///
      str    I10_DX38                   357- 363   ///
      int    I10_DXCCS1                 364- 367   ///
      int    I10_DXCCS2                 368- 371   ///
      int    I10_DXCCS3                 372- 375   ///
      int    I10_DXCCS4                 376- 379   ///
      int    I10_DXCCS5                 380- 383   ///
      int    I10_DXCCS6                 384- 387   ///
      int    I10_DXCCS7                 388- 391   ///
      int    I10_DXCCS8                 392- 395   ///
      int    I10_DXCCS9                 396- 399   ///
      int    I10_DXCCS10                400- 403   ///
      int    I10_DXCCS11                404- 407   ///
      int    I10_DXCCS12                408- 411   ///
      int    I10_DXCCS13                412- 415   ///
      int    I10_DXCCS14                416- 419   ///
      int    I10_DXCCS15                420- 423   ///
      int    I10_DXCCS16                424- 427   ///
      int    I10_DXCCS17                428- 431   ///
      int    I10_DXCCS18                432- 435   ///
      int    I10_DXCCS19                436- 439   ///
      int    I10_DXCCS20                440- 443   ///
      int    I10_DXCCS21                444- 447   ///
      int    I10_DXCCS22                448- 451   ///
      int    I10_DXCCS23                452- 455   ///
      int    I10_DXCCS24                456- 459   ///
      int    I10_DXCCS25                460- 463   ///
      int    I10_DXCCS26                464- 467   ///
      int    I10_DXCCS27                468- 471   ///
      int    I10_DXCCS28                472- 475   ///
      int    I10_DXCCS29                476- 479   ///
      int    I10_DXCCS30                480- 483   ///
      int    I10_DXCCS31                484- 487   ///
      int    I10_DXCCS32                488- 491   ///
      int    I10_DXCCS33                492- 495   ///
      int    I10_DXCCS34                496- 499   ///
      int    I10_DXCCS35                500- 503   ///
      int    I10_DXCCS36                504- 507   ///
      int    I10_DXCCS37                508- 511   ///
      int    I10_DXCCS38                512- 515   ///
      str    I10_ECAUSE1                516- 522   ///
      str    I10_ECAUSE2                523- 529   ///
      str    I10_ECAUSE3                530- 536   ///
      str    I10_ECAUSE4                537- 543   ///
      str    I10_ECAUSE5                544- 550   ///
      str    I10_ECAUSE6                551- 557   ///
      str    I10_ECAUSE7                558- 564   ///
      str    I10_ECAUSE8                565- 571   ///
      str    I10_ECAUSE9                572- 578   ///
      int    I10_ECauseCCS1             579- 582   ///
      int    I10_ECauseCCS2             583- 586   ///
      int    I10_ECauseCCS3             587- 590   ///
      int    I10_ECauseCCS4             591- 594   ///
      int    I10_ECauseCCS5             595- 598   ///
      int    I10_ECauseCCS6             599- 602   ///
      int    I10_ECauseCCS7             603- 606   ///
      int    I10_ECauseCCS8             607- 610   ///
      int    I10_ECauseCCS9             611- 614   ///
      int    I10_HOSPBRTH               615- 617   ///
      int    I10_NCHRONIC               618- 620   ///
      int    I10_NDX                    621- 623   ///
      byte   I10_NECAUSE                624- 625   ///
      byte   I10_NEOMAT                 626- 627   ///
      int    I10_NPR                    628- 630   ///
      byte   I10_ORPROC                 631- 632   ///
      str    I10_PR1                    633- 639   ///
      str    I10_PR2                    640- 646   ///
      str    I10_PR3                    647- 653   ///
      str    I10_PR4                    654- 660   ///
      str    I10_PR5                    661- 667   ///
      str    I10_PR6                    668- 674   ///
      str    I10_PR7                    675- 681   ///
      str    I10_PR8                    682- 688   ///
      str    I10_PR9                    689- 695   ///
      str    I10_PR10                   696- 702   ///
      str    I10_PR11                   703- 709   ///
      str    I10_PR12                   710- 716   ///
      str    I10_PR13                   717- 723   ///
      str    I10_PR14                   724- 730   ///
      str    I10_PR15                   731- 737   ///
      str    I10_PR16                   738- 744   ///
      str    I10_PR17                   745- 751   ///
      str    I10_PR18                   752- 758   ///
      str    I10_PR19                   759- 765   ///
      str    I10_PR20                   766- 772   ///
      str    I10_PR21                   773- 779   ///
      str    I10_PR22                   780- 786   ///
      str    I10_PR23                   787- 793   ///
      str    I10_PR24                   794- 800   ///
      str    I10_PR25                   801- 807   ///
      str    I10_PR26                   808- 814   ///
      str    I10_PR27                   815- 821   ///
      str    I10_PR28                   822- 828   ///
      str    I10_PR29                   829- 835   ///
      str    I10_PR30                   836- 842   ///
      str    I10_PR31                   843- 849   ///
      str    I10_PR32                   850- 856   ///
      str    I10_PR33                   857- 863   ///
      str    I10_PR34                   864- 870   ///
      str    I10_PR35                   871- 877   ///
      int    I10_PRCCS1                 878- 880   ///
      int    I10_PRCCS2                 881- 883   ///
      int    I10_PRCCS3                 884- 886   ///
      int    I10_PRCCS4                 887- 889   ///
      int    I10_PRCCS5                 890- 892   ///
      int    I10_PRCCS6                 893- 895   ///
      int    I10_PRCCS7                 896- 898   ///
      int    I10_PRCCS8                 899- 901   ///
      int    I10_PRCCS9                 902- 904   ///
      int    I10_PRCCS10                905- 907   ///
      int    I10_PRCCS11                908- 910   ///
      int    I10_PRCCS12                911- 913   ///
      int    I10_PRCCS13                914- 916   ///
      int    I10_PRCCS14                917- 919   ///
      int    I10_PRCCS15                920- 922   ///
      int    I10_PRCCS16                923- 925   ///
      int    I10_PRCCS17                926- 928   ///
      int    I10_PRCCS18                929- 931   ///
      int    I10_PRCCS19                932- 934   ///
      int    I10_PRCCS20                935- 937   ///
      int    I10_PRCCS21                938- 940   ///
      int    I10_PRCCS22                941- 943   ///
      int    I10_PRCCS23                944- 946   ///
      int    I10_PRCCS24                947- 949   ///
      int    I10_PRCCS25                950- 952   ///
      int    I10_PRCCS26                953- 955   ///
      int    I10_PRCCS27                956- 958   ///
      int    I10_PRCCS28                959- 961   ///
      int    I10_PRCCS29                962- 964   ///
      int    I10_PRCCS30                965- 967   ///
      int    I10_PRCCS31                968- 970   ///
      int    I10_PRCCS32                971- 973   ///
      int    I10_PRCCS33                974- 976   ///
      int    I10_PRCCS34                977- 979   ///
      int    I10_PRCCS35                980- 982   ///
      int    I10_PROCTYPE               983- 985   ///
      byte   I10_SERVICELINE            986- 987   ///
      double KEY                        988-1002   ///
      long   LOS                       1003-1007   ///
      long   LOS_X                     1008-1013   ///
      byte   MDC                       1014-1015   ///
      byte   MDC_NoPOA                 1016-1017   ///
      byte   MDC32                     1018-1019   ///
      byte   MEDINCSTQ                 1020-1021   ///
      long   MOMNUM_R                  1022-1030   ///
      long   MRN_R                     1031-1039   ///
      double OS_TIME                   1040-1050   ///
      byte   PAY1                      1051-1052   ///
      str    PAY1_X                    1053-1054   ///
      int    PL_CBSA                   1055-1057   ///
      byte   PL_NCHS                   1058-1059   ///
      byte   PL_RUCC                   1060-1061   ///
      byte   PL_UIC                    1062-1063   ///
      byte   PL_UR_CAT4                1064-1065   ///
      byte   POA_Disch_Edit1           1066-1067   ///
      byte   POA_Disch_Edit2           1068-1069   ///
      byte   POA_Hosp_Edit1            1070-1071   ///
      byte   POA_Hosp_Edit2            1072-1073   ///
      byte   POA_Hosp_Edit3            1074-1075   ///
      double POA_Hosp_Edit3_Value      1076-1083   ///
      str    PointOfOrigin_X           1084        ///
      str    PointOfOriginUB04         1085        ///
      long   PRDAY1                    1086-1090   ///
      long   PRDAY2                    1091-1095   ///
      long   PRDAY3                    1096-1100   ///
      long   PRDAY4                    1101-1105   ///
      long   PRDAY5                    1106-1110   ///
      long   PRDAY6                    1111-1115   ///
      long   PRDAY7                    1116-1120   ///
      long   PRDAY8                    1121-1125   ///
      long   PRDAY9                    1126-1130   ///
      long   PRDAY10                   1131-1135   ///
      long   PRDAY11                   1136-1140   ///
      long   PRDAY12                   1141-1145   ///
      long   PRDAY13                   1146-1150   ///
      long   PRDAY14                   1151-1155   ///
      long   PRDAY15                   1156-1160   ///
      long   PRDAY16                   1161-1165   ///
      long   PRDAY17                   1166-1170   ///
      long   PRDAY18                   1171-1175   ///
      long   PRDAY19                   1176-1180   ///
      long   PRDAY20                   1181-1185   ///
      long   PRDAY21                   1186-1190   ///
      long   PRDAY22                   1191-1195   ///
      long   PRDAY23                   1196-1200   ///
      long   PRDAY24                   1201-1205   ///
      long   PRDAY25                   1206-1210   ///
      long   PRDAY26                   1211-1215   ///
      long   PRDAY27                   1216-1220   ///
      long   PRDAY28                   1221-1225   ///
      long   PRDAY29                   1226-1230   ///
      long   PRDAY30                   1231-1235   ///
      long   PRDAY31                   1236-1240   ///
      long   PRDAY32                   1241-1245   ///
      long   PRDAY33                   1246-1250   ///
      long   PRDAY34                   1251-1255   ///
      long   PRDAY35                   1256-1260   ///
      str    PrimLang                  1261-1263   ///
      int    PRVER                     1264-1266   ///
      str    PSTATE                    1267-1268   ///
      long   PSTCO2                    1269-1273   ///
      byte   RACE                      1274-1275   ///
      str    RACE_X                    1276-1277   ///
      double TOTCHG                    1278-1287   ///
      double TOTCHG_X                  1288-1302   ///
      byte   TRAN_IN                   1303-1304   ///
      byte   TRAN_OUT                  1305-1306   ///
      int    YEAR                      1307-1310   ///
      str    ZIP3                      1311-1313   ///
      int    ZIPINC_QRTL               1314-1316   ///
      long   HOSPID                    1317-1321   ///
      int    AGEGROUP                  1322-1324   ///
      int    AYEAR                     1325-1328   ///
      byte   BMONTH                    1329-1330   ///
      int    BYEAR                     1331-1334   ///
      byte   PRMONTH1                  1335-1336   ///
      byte   PRMONTH2                  1337-1338   ///
      byte   PRMONTH3                  1339-1340   ///
      byte   PRMONTH4                  1341-1342   ///
      byte   PRMONTH5                  1343-1344   ///
      byte   PRMONTH6                  1345-1346   ///
      byte   PRMONTH7                  1347-1348   ///
      byte   PRMONTH8                  1349-1350   ///
      byte   PRMONTH9                  1351-1352   ///
      byte   PRMONTH10                 1353-1354   ///
      byte   PRMONTH11                 1355-1356   ///
      byte   PRMONTH12                 1357-1358   ///
      byte   PRMONTH13                 1359-1360   ///
      byte   PRMONTH14                 1361-1362   ///
      byte   PRMONTH15                 1363-1364   ///
      byte   PRMONTH16                 1365-1366   ///
      byte   PRMONTH17                 1367-1368   ///
      byte   PRMONTH18                 1369-1370   ///
      byte   PRMONTH19                 1371-1372   ///
      byte   PRMONTH20                 1373-1374   ///
      byte   PRMONTH21                 1375-1376   ///
      byte   PRMONTH22                 1377-1378   ///
      byte   PRMONTH23                 1379-1380   ///
      byte   PRMONTH24                 1381-1382   ///
      byte   PRMONTH25                 1383-1384   ///
      byte   PRMONTH26                 1385-1386   ///
      byte   PRMONTH27                 1387-1388   ///
      byte   PRMONTH28                 1389-1390   ///
      byte   PRMONTH29                 1391-1392   ///
      byte   PRMONTH30                 1393-1394   ///
      byte   PRMONTH31                 1395-1396   ///
      byte   PRMONTH32                 1397-1398   ///
      byte   PRMONTH33                 1399-1400   ///
      byte   PRMONTH34                 1401-1402   ///
      byte   PRMONTH35                 1403-1404   ///
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
      int    PRYEAR26                  1505-1508   ///
      int    PRYEAR27                  1509-1512   ///
      int    PRYEAR28                  1513-1516   ///
      int    PRYEAR29                  1517-1520   ///
      int    PRYEAR30                  1521-1524   ///
      int    PRYEAR31                  1525-1528   ///
      int    PRYEAR32                  1529-1532   ///
      int    PRYEAR33                  1533-1536   ///
      int    PRYEAR34                  1537-1540   ///
      int    PRYEAR35                  1541-1544   ///
      using  "HI_SID_2015q4_CORE.ASC"

***  Assign labels to the data elements ***
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
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
label var DXVER                    "Diagnosis Version"
label var E_POA1                   "E Cause 1, present on admission indicator"
label var E_POA2                   "E Cause 2, present on admission indicator"
label var E_POA3                   "E Cause 3, present on admission indicator"
label var E_POA4                   "E Cause 4, present on admission indicator"
label var E_POA5                   "E Cause 5, present on admission indicator"
label var E_POA6                   "E Cause 6, present on admission indicator"
label var E_POA7                   "E Cause 7, present on admission indicator"
label var E_POA8                   "E Cause 8, present on admission indicator"
label var E_POA9                   "E Cause 9, present on admission indicator"
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
label var I10_ECAUSE1              "ICD-10-CM E Cause 1"
label var I10_ECAUSE2              "ICD-10-CM E Cause 2"
label var I10_ECAUSE3              "ICD-10-CM E Cause 3"
label var I10_ECAUSE4              "ICD-10-CM E Cause 4"
label var I10_ECAUSE5              "ICD-10-CM E Cause 5"
label var I10_ECAUSE6              "ICD-10-CM E Cause 6"
label var I10_ECAUSE7              "ICD-10-CM E Cause 7"
label var I10_ECAUSE8              "ICD-10-CM E Cause 8"
label var I10_ECAUSE9              "ICD-10-CM E Cause 9"
label var I10_ECauseCCS1           "ICD-10-CM CCS: E Cause 1"
label var I10_ECauseCCS2           "ICD-10-CM CCS: E Cause 2"
label var I10_ECauseCCS3           "ICD-10-CM CCS: E Cause 3"
label var I10_ECauseCCS4           "ICD-10-CM CCS: E Cause 4"
label var I10_ECauseCCS5           "ICD-10-CM CCS: E Cause 5"
label var I10_ECauseCCS6           "ICD-10-CM CCS: E Cause 6"
label var I10_ECauseCCS7           "ICD-10-CM CCS: E Cause 7"
label var I10_ECauseCCS8           "ICD-10-CM CCS: E Cause 8"
label var I10_ECauseCCS9           "ICD-10-CM CCS: E Cause 9"
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
label var I10_PR31                 "ICD-10-PCS Procedure 31"
label var I10_PR32                 "ICD-10-PCS Procedure 32"
label var I10_PR33                 "ICD-10-PCS Procedure 33"
label var I10_PR34                 "ICD-10-PCS Procedure 34"
label var I10_PR35                 "ICD-10-PCS Procedure 35"
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
label var I10_PRCCS31              "ICD-10-PCS CCS: procedure 31"
label var I10_PRCCS32              "ICD-10-PCS CCS: procedure 32"
label var I10_PRCCS33              "ICD-10-PCS CCS: procedure 33"
label var I10_PRCCS34              "ICD-10-PCS CCS: procedure 34"
label var I10_PRCCS35              "ICD-10-PCS CCS: procedure 35"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDC32                    "MDC, version 32"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MOMNUM_R                 "Mother's number (re-identified)"
label var MRN_R                    "Medical record number (re-identified)"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
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
label var PrimLang                 "Primary language of patient"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
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

*** Convert special values to missing values ***
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
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
recode I10_ECauseCCS1            (-999 -888 -666=.)
recode I10_ECauseCCS2            (-999 -888 -666=.)
recode I10_ECauseCCS3            (-999 -888 -666=.)
recode I10_ECauseCCS4            (-999 -888 -666=.)
recode I10_ECauseCCS5            (-999 -888 -666=.)
recode I10_ECauseCCS6            (-999 -888 -666=.)
recode I10_ECauseCCS7            (-999 -888 -666=.)
recode I10_ECauseCCS8            (-999 -888 -666=.)
recode I10_ECauseCCS9            (-999 -888 -666=.)
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
recode I10_PRCCS31               (-99 -88 -66=.)
recode I10_PRCCS32               (-99 -88 -66=.)
recode I10_PRCCS33               (-99 -88 -66=.)
recode I10_PRCCS34               (-99 -88 -66=.)
recode I10_PRCCS35               (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode I10_SERVICELINE           (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDC32                     (-9 -8 -6 -5=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MOMNUM_R                  (-99999999 -88888888 -66666666=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
recode PAY1                      (-9 -8 -6 -5=.)
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
recode PRVER                     (-99 -88 -66=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
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

save "HI_SID_2015q4_CORE.dta", replace
