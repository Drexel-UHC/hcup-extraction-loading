/*****************************************************************************
* Creation Date: 07/05/2017   
* HI_SID_2015q1q3_CORE.Do
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
      str    DX1                         40-  46   ///
      str    DX2                         47-  53   ///
      str    DX3                         54-  60   ///
      str    DX4                         61-  67   ///
      str    DX5                         68-  74   ///
      str    DX6                         75-  81   ///
      str    DX7                         82-  88   ///
      str    DX8                         89-  95   ///
      str    DX9                         96- 102   ///
      str    DX10                       103- 109   ///
      str    DX11                       110- 116   ///
      str    DX12                       117- 123   ///
      str    DX13                       124- 130   ///
      str    DX14                       131- 137   ///
      str    DX15                       138- 144   ///
      str    DX16                       145- 151   ///
      str    DX17                       152- 158   ///
      str    DX18                       159- 165   ///
      str    DX19                       166- 172   ///
      str    DX20                       173- 179   ///
      str    DX21                       180- 186   ///
      str    DX22                       187- 193   ///
      str    DX23                       194- 200   ///
      str    DX24                       201- 207   ///
      str    DX25                       208- 214   ///
      str    DX26                       215- 221   ///
      str    DX27                       222- 228   ///
      str    DX28                       229- 235   ///
      str    DX29                       236- 242   ///
      str    DX30                       243- 249   ///
      str    DX31                       250- 256   ///
      str    DX32                       257- 263   ///
      str    DX33                       264- 270   ///
      str    DX34                       271- 277   ///
      str    DX35                       278- 284   ///
      str    DX36                       285- 291   ///
      str    DX37                       292- 298   ///
      str    DX38                       299- 305   ///
      int    DXCCS1                     306- 309   ///
      int    DXCCS2                     310- 313   ///
      int    DXCCS3                     314- 317   ///
      int    DXCCS4                     318- 321   ///
      int    DXCCS5                     322- 325   ///
      int    DXCCS6                     326- 329   ///
      int    DXCCS7                     330- 333   ///
      int    DXCCS8                     334- 337   ///
      int    DXCCS9                     338- 341   ///
      int    DXCCS10                    342- 345   ///
      int    DXCCS11                    346- 349   ///
      int    DXCCS12                    350- 353   ///
      int    DXCCS13                    354- 357   ///
      int    DXCCS14                    358- 361   ///
      int    DXCCS15                    362- 365   ///
      int    DXCCS16                    366- 369   ///
      int    DXCCS17                    370- 373   ///
      int    DXCCS18                    374- 377   ///
      int    DXCCS19                    378- 381   ///
      int    DXCCS20                    382- 385   ///
      int    DXCCS21                    386- 389   ///
      int    DXCCS22                    390- 393   ///
      int    DXCCS23                    394- 397   ///
      int    DXCCS24                    398- 401   ///
      int    DXCCS25                    402- 405   ///
      int    DXCCS26                    406- 409   ///
      int    DXCCS27                    410- 413   ///
      int    DXCCS28                    414- 417   ///
      int    DXCCS29                    418- 421   ///
      int    DXCCS30                    422- 425   ///
      int    DXCCS31                    426- 429   ///
      int    DXCCS32                    430- 433   ///
      int    DXCCS33                    434- 437   ///
      int    DXCCS34                    438- 441   ///
      int    DXCCS35                    442- 445   ///
      int    DXCCS36                    446- 449   ///
      int    DXCCS37                    450- 453   ///
      int    DXCCS38                    454- 457   ///
      str    DXPOA1                     458        ///
      str    DXPOA2                     459        ///
      str    DXPOA3                     460        ///
      str    DXPOA4                     461        ///
      str    DXPOA5                     462        ///
      str    DXPOA6                     463        ///
      str    DXPOA7                     464        ///
      str    DXPOA8                     465        ///
      str    DXPOA9                     466        ///
      str    DXPOA10                    467        ///
      str    DXPOA11                    468        ///
      str    DXPOA12                    469        ///
      str    DXPOA13                    470        ///
      str    DXPOA14                    471        ///
      str    DXPOA15                    472        ///
      str    DXPOA16                    473        ///
      str    DXPOA17                    474        ///
      str    DXPOA18                    475        ///
      str    DXPOA19                    476        ///
      str    DXPOA20                    477        ///
      str    DXPOA21                    478        ///
      str    DXPOA22                    479        ///
      str    DXPOA23                    480        ///
      str    DXPOA24                    481        ///
      str    DXPOA25                    482        ///
      str    DXPOA26                    483        ///
      str    DXPOA27                    484        ///
      str    DXPOA28                    485        ///
      str    DXPOA29                    486        ///
      str    DXPOA30                    487        ///
      str    DXPOA31                    488        ///
      str    DXPOA32                    489        ///
      str    DXPOA33                    490        ///
      str    DXPOA34                    491        ///
      str    DXPOA35                    492        ///
      str    DXPOA36                    493        ///
      str    DXPOA37                    494        ///
      str    DXPOA38                    495        ///
      int    DXVER                      496- 498   ///
      int    E_CCS1                     499- 502   ///
      int    E_CCS2                     503- 506   ///
      int    E_CCS3                     507- 510   ///
      int    E_CCS4                     511- 514   ///
      int    E_CCS5                     515- 518   ///
      int    E_CCS6                     519- 522   ///
      int    E_CCS7                     523- 526   ///
      int    E_CCS8                     527- 530   ///
      int    E_CCS9                     531- 534   ///
      str    E_POA1                     535        ///
      str    E_POA2                     536        ///
      str    E_POA3                     537        ///
      str    E_POA4                     538        ///
      str    E_POA5                     539        ///
      str    E_POA6                     540        ///
      str    E_POA7                     541        ///
      str    E_POA8                     542        ///
      str    E_POA9                     543        ///
      str    ECODE1                     544- 550   ///
      str    ECODE2                     551- 557   ///
      str    ECODE3                     558- 564   ///
      str    ECODE4                     565- 571   ///
      str    ECODE5                     572- 578   ///
      str    ECODE6                     579- 585   ///
      str    ECODE7                     586- 592   ///
      str    ECODE8                     593- 599   ///
      str    ECODE9                     600- 606   ///
      byte   FEMALE                     607- 608   ///
      byte   HCUP_ED                    609- 610   ///
      byte   HCUP_OS                    611- 612   ///
      int    HOSPBRTH                   613- 615   ///
      str    HOSPST                     616- 617   ///
      double KEY                        618- 632   ///
      long   LOS                        633- 637   ///
      long   LOS_X                      638- 643   ///
      byte   MDC                        644- 645   ///
      byte   MDC_NoPOA                  646- 647   ///
      byte   MDC32                      648- 649   ///
      byte   MEDINCSTQ                  650- 651   ///
      long   MOMNUM_R                   652- 660   ///
      long   MRN_R                      661- 669   ///
      int    NCHRONIC                   670- 672   ///
      int    NDX                        673- 675   ///
      byte   NECODE                     676- 677   ///
      byte   NEOMAT                     678- 679   ///
      int    NPR                        680- 682   ///
      byte   ORPROC                     683- 684   ///
      double OS_TIME                    685- 695   ///
      byte   PAY1                       696- 697   ///
      str    PAY1_X                     698- 699   ///
      int    PL_CBSA                    700- 702   ///
      byte   PL_NCHS                    703- 704   ///
      byte   PL_RUCC                    705- 706   ///
      byte   PL_UIC                     707- 708   ///
      byte   PL_UR_CAT4                 709- 710   ///
      byte   POA_Disch_Edit1            711- 712   ///
      byte   POA_Disch_Edit2            713- 714   ///
      byte   POA_Hosp_Edit1             715- 716   ///
      byte   POA_Hosp_Edit2             717- 718   ///
      byte   POA_Hosp_Edit3             719- 720   ///
      double POA_Hosp_Edit3_Value       721- 728   ///
      str    PointOfOrigin_X            729        ///
      str    PointOfOriginUB04          730        ///
      str    PR1                        731- 737   ///
      str    PR2                        738- 744   ///
      str    PR3                        745- 751   ///
      str    PR4                        752- 758   ///
      str    PR5                        759- 765   ///
      str    PR6                        766- 772   ///
      str    PR7                        773- 779   ///
      str    PR8                        780- 786   ///
      str    PR9                        787- 793   ///
      str    PR10                       794- 800   ///
      str    PR11                       801- 807   ///
      str    PR12                       808- 814   ///
      str    PR13                       815- 821   ///
      str    PR14                       822- 828   ///
      str    PR15                       829- 835   ///
      str    PR16                       836- 842   ///
      str    PR17                       843- 849   ///
      str    PR18                       850- 856   ///
      str    PR19                       857- 863   ///
      str    PR20                       864- 870   ///
      str    PR21                       871- 877   ///
      str    PR22                       878- 884   ///
      str    PR23                       885- 891   ///
      str    PR24                       892- 898   ///
      str    PR25                       899- 905   ///
      str    PR26                       906- 912   ///
      str    PR27                       913- 919   ///
      str    PR28                       920- 926   ///
      str    PR29                       927- 933   ///
      str    PR30                       934- 940   ///
      str    PR31                       941- 947   ///
      str    PR32                       948- 954   ///
      str    PR33                       955- 961   ///
      str    PR34                       962- 968   ///
      str    PR35                       969- 975   ///
      int    PRCCS1                     976- 978   ///
      int    PRCCS2                     979- 981   ///
      int    PRCCS3                     982- 984   ///
      int    PRCCS4                     985- 987   ///
      int    PRCCS5                     988- 990   ///
      int    PRCCS6                     991- 993   ///
      int    PRCCS7                     994- 996   ///
      int    PRCCS8                     997- 999   ///
      int    PRCCS9                    1000-1002   ///
      int    PRCCS10                   1003-1005   ///
      int    PRCCS11                   1006-1008   ///
      int    PRCCS12                   1009-1011   ///
      int    PRCCS13                   1012-1014   ///
      int    PRCCS14                   1015-1017   ///
      int    PRCCS15                   1018-1020   ///
      int    PRCCS16                   1021-1023   ///
      int    PRCCS17                   1024-1026   ///
      int    PRCCS18                   1027-1029   ///
      int    PRCCS19                   1030-1032   ///
      int    PRCCS20                   1033-1035   ///
      int    PRCCS21                   1036-1038   ///
      int    PRCCS22                   1039-1041   ///
      int    PRCCS23                   1042-1044   ///
      int    PRCCS24                   1045-1047   ///
      int    PRCCS25                   1048-1050   ///
      int    PRCCS26                   1051-1053   ///
      int    PRCCS27                   1054-1056   ///
      int    PRCCS28                   1057-1059   ///
      int    PRCCS29                   1060-1062   ///
      int    PRCCS30                   1063-1065   ///
      int    PRCCS31                   1066-1068   ///
      int    PRCCS32                   1069-1071   ///
      int    PRCCS33                   1072-1074   ///
      int    PRCCS34                   1075-1077   ///
      int    PRCCS35                   1078-1080   ///
      long   PRDAY1                    1081-1085   ///
      long   PRDAY2                    1086-1090   ///
      long   PRDAY3                    1091-1095   ///
      long   PRDAY4                    1096-1100   ///
      long   PRDAY5                    1101-1105   ///
      long   PRDAY6                    1106-1110   ///
      long   PRDAY7                    1111-1115   ///
      long   PRDAY8                    1116-1120   ///
      long   PRDAY9                    1121-1125   ///
      long   PRDAY10                   1126-1130   ///
      long   PRDAY11                   1131-1135   ///
      long   PRDAY12                   1136-1140   ///
      long   PRDAY13                   1141-1145   ///
      long   PRDAY14                   1146-1150   ///
      long   PRDAY15                   1151-1155   ///
      long   PRDAY16                   1156-1160   ///
      long   PRDAY17                   1161-1165   ///
      long   PRDAY18                   1166-1170   ///
      long   PRDAY19                   1171-1175   ///
      long   PRDAY20                   1176-1180   ///
      long   PRDAY21                   1181-1185   ///
      long   PRDAY22                   1186-1190   ///
      long   PRDAY23                   1191-1195   ///
      long   PRDAY24                   1196-1200   ///
      long   PRDAY25                   1201-1205   ///
      long   PRDAY26                   1206-1210   ///
      long   PRDAY27                   1211-1215   ///
      long   PRDAY28                   1216-1220   ///
      long   PRDAY29                   1221-1225   ///
      long   PRDAY30                   1226-1230   ///
      long   PRDAY31                   1231-1235   ///
      long   PRDAY32                   1236-1240   ///
      long   PRDAY33                   1241-1245   ///
      long   PRDAY34                   1246-1250   ///
      long   PRDAY35                   1251-1255   ///
      str    PrimLang                  1256-1258   ///
      int    PROCTYPE                  1259-1261   ///
      int    PRVER                     1262-1264   ///
      str    PSTATE                    1265-1266   ///
      long   PSTCO2                    1267-1271   ///
      byte   RACE                      1272-1273   ///
      str    RACE_X                    1274-1275   ///
      byte   SERVICELINE               1276-1277   ///
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
      using  "HI_SID_2015q1q3_CORE.ASC"

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
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDC32                    "MDC, version 32"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MOMNUM_R                 "Mother's number (re-identified)"
label var MRN_R                    "Medical record number (re-identified)"
label var NCHRONIC                 "Number of chronic conditions"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
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
label var PR31                     "Procedure 31"
label var PR32                     "Procedure 32"
label var PR33                     "Procedure 33"
label var PR34                     "Procedure 34"
label var PR35                     "Procedure 35"
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
label var PRCCS31                  "CCS: procedure 31"
label var PRCCS32                  "CCS: procedure 32"
label var PRCCS33                  "CCS: procedure 33"
label var PRCCS34                  "CCS: procedure 34"
label var PRCCS35                  "CCS: procedure 35"
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
label var PRDAY31                  "Number of days from admission to PR31"
label var PRDAY32                  "Number of days from admission to PR32"
label var PRDAY33                  "Number of days from admission to PR33"
label var PRDAY34                  "Number of days from admission to PR34"
label var PRDAY35                  "Number of days from admission to PR35"
label var PrimLang                 "Primary language of patient"
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
recode HOSPBRTH                  (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDC32                     (-9 -8 -6 -5=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MOMNUM_R                  (-99999999 -88888888 -66666666=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
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
recode PRCCS31                   (-99 -88 -66=.)
recode PRCCS32                   (-99 -88 -66=.)
recode PRCCS33                   (-99 -88 -66=.)
recode PRCCS34                   (-99 -88 -66=.)
recode PRCCS35                   (-99 -88 -66=.)
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
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode SERVICELINE               (-9 -8 -6 -5=.)
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

save "HI_SID_2015q1q3_CORE.dta", replace
