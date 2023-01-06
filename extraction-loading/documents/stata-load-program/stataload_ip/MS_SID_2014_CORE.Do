/*****************************************************************************
* Creation Date: 05/01/2018   
* MS_SID_2014_CORE.Do
* This program will load the 2014 MS ASCII CORE File into Stata.
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
      int    DHOUR                       20-  23   ///
      byte   DIED                        24-  25   ///
      byte   DISPUB04                    26-  27   ///
      byte   DISPUNIFORM                 28-  29   ///
      str    DISP_X                      30-  33   ///
      byte   DMONTH                      34-  35   ///
      byte   DQTR                        36-  37   ///
      int    DRG                         38-  40   ///
      int    DRG24                       41-  43   ///
      byte   DRGVER                      44-  45   ///
      int    DRG_NoPOA                   46-  48   ///
      str    DSHOSPID                    49-  65   ///
      str    DX1                         66-  72   ///
      str    DX2                         73-  79   ///
      str    DX3                         80-  86   ///
      str    DX4                         87-  93   ///
      str    DX5                         94- 100   ///
      str    DX6                        101- 107   ///
      str    DX7                        108- 114   ///
      str    DX8                        115- 121   ///
      str    DX9                        122- 128   ///
      str    DX10                       129- 135   ///
      str    DX11                       136- 142   ///
      str    DX12                       143- 149   ///
      str    DX13                       150- 156   ///
      str    DX14                       157- 163   ///
      str    DX15                       164- 170   ///
      str    DX16                       171- 177   ///
      str    DX17                       178- 184   ///
      str    DX18                       185- 191   ///
      str    DX19                       192- 198   ///
      str    DX20                       199- 205   ///
      str    DX21                       206- 212   ///
      str    DX22                       213- 219   ///
      str    DX23                       220- 226   ///
      str    DX24                       227- 233   ///
      str    DX25                       234- 240   ///
      str    DX26                       241- 247   ///
      str    DX27                       248- 254   ///
      str    DX28                       255- 261   ///
      str    DX29                       262- 268   ///
      str    DX30                       269- 275   ///
      str    DX31                       276- 282   ///
      str    DX32                       283- 289   ///
      str    DX33                       290- 296   ///
      str    DX34                       297- 303   ///
      str    DX35                       304- 310   ///
      str    DX36                       311- 317   ///
      str    DX37                       318- 324   ///
      str    DX38                       325- 331   ///
      str    DX39                       332- 338   ///
      int    DXCCS1                     339- 342   ///
      int    DXCCS2                     343- 346   ///
      int    DXCCS3                     347- 350   ///
      int    DXCCS4                     351- 354   ///
      int    DXCCS5                     355- 358   ///
      int    DXCCS6                     359- 362   ///
      int    DXCCS7                     363- 366   ///
      int    DXCCS8                     367- 370   ///
      int    DXCCS9                     371- 374   ///
      int    DXCCS10                    375- 378   ///
      int    DXCCS11                    379- 382   ///
      int    DXCCS12                    383- 386   ///
      int    DXCCS13                    387- 390   ///
      int    DXCCS14                    391- 394   ///
      int    DXCCS15                    395- 398   ///
      int    DXCCS16                    399- 402   ///
      int    DXCCS17                    403- 406   ///
      int    DXCCS18                    407- 410   ///
      int    DXCCS19                    411- 414   ///
      int    DXCCS20                    415- 418   ///
      int    DXCCS21                    419- 422   ///
      int    DXCCS22                    423- 426   ///
      int    DXCCS23                    427- 430   ///
      int    DXCCS24                    431- 434   ///
      int    DXCCS25                    435- 438   ///
      int    DXCCS26                    439- 442   ///
      int    DXCCS27                    443- 446   ///
      int    DXCCS28                    447- 450   ///
      int    DXCCS29                    451- 454   ///
      int    DXCCS30                    455- 458   ///
      int    DXCCS31                    459- 462   ///
      int    DXCCS32                    463- 466   ///
      int    DXCCS33                    467- 470   ///
      int    DXCCS34                    471- 474   ///
      int    DXCCS35                    475- 478   ///
      int    DXCCS36                    479- 482   ///
      int    DXCCS37                    483- 486   ///
      int    DXCCS38                    487- 490   ///
      int    DXCCS39                    491- 494   ///
      str    DXPOA1                     495        ///
      str    DXPOA2                     496        ///
      str    DXPOA3                     497        ///
      str    DXPOA4                     498        ///
      str    DXPOA5                     499        ///
      str    DXPOA6                     500        ///
      str    DXPOA7                     501        ///
      str    DXPOA8                     502        ///
      str    DXPOA9                     503        ///
      str    DXPOA10                    504        ///
      str    DXPOA11                    505        ///
      str    DXPOA12                    506        ///
      str    DXPOA13                    507        ///
      str    DXPOA14                    508        ///
      str    DXPOA15                    509        ///
      str    DXPOA16                    510        ///
      str    DXPOA17                    511        ///
      str    DXPOA18                    512        ///
      str    DXPOA19                    513        ///
      str    DXPOA20                    514        ///
      str    DXPOA21                    515        ///
      str    DXPOA22                    516        ///
      str    DXPOA23                    517        ///
      str    DXPOA24                    518        ///
      str    DXPOA25                    519        ///
      str    DXPOA26                    520        ///
      str    DXPOA27                    521        ///
      str    DXPOA28                    522        ///
      str    DXPOA29                    523        ///
      str    DXPOA30                    524        ///
      str    DXPOA31                    525        ///
      str    DXPOA32                    526        ///
      str    DXPOA33                    527        ///
      str    DXPOA34                    528        ///
      str    DXPOA35                    529        ///
      str    DXPOA36                    530        ///
      str    DXPOA37                    531        ///
      str    DXPOA38                    532        ///
      str    DXPOA39                    533        ///
      int    DXVER                      534- 536   ///
      str    DX_Admitting               537- 543   ///
      long   DaysToEvent                544- 549   ///
      str    ECODE1                     550- 556   ///
      str    ECODE2                     557- 563   ///
      str    ECODE3                     564- 570   ///
      str    ECODE4                     571- 577   ///
      str    ECODE5                     578- 584   ///
      str    ECODE6                     585- 591   ///
      str    ECODE7                     592- 598   ///
      str    ECODE8                     599- 605   ///
      int    E_CCS1                     606- 609   ///
      int    E_CCS2                     610- 613   ///
      int    E_CCS3                     614- 617   ///
      int    E_CCS4                     618- 621   ///
      int    E_CCS5                     622- 625   ///
      int    E_CCS6                     626- 629   ///
      int    E_CCS7                     630- 633   ///
      int    E_CCS8                     634- 637   ///
      str    E_POA1                     638        ///
      str    E_POA2                     639        ///
      str    E_POA3                     640        ///
      str    E_POA4                     641        ///
      str    E_POA5                     642        ///
      str    E_POA6                     643        ///
      str    E_POA7                     644        ///
      str    E_POA8                     645        ///
      byte   FEMALE                     646- 647   ///
      byte   HCUP_ED                    648- 649   ///
      byte   HCUP_OS                    650- 651   ///
      str    HISPANIC_X                 652        ///
      int    HOSPBRTH                   653- 655   ///
      str    HOSPST                     656- 657   ///
      byte   HospitalUnit               658- 659   ///
      double KEY                        660- 674   ///
      long   LOS                        675- 679   ///
      long   LOS_X                      680- 685   ///
      byte   MDC                        686- 687   ///
      byte   MDC24                      688- 689   ///
      byte   MDC_NoPOA                  690- 691   ///
      long   MDNUM1_R                   692- 700   ///
      long   MDNUM2_R                   701- 709   ///
      long   MDNUM3_R                   710- 718   ///
      byte   MEDINCSTQ                  719- 720   ///
      int    NCHRONIC                   721- 723   ///
      int    NDX                        724- 726   ///
      byte   NECODE                     727- 728   ///
      byte   NEOMAT                     729- 730   ///
      int    NPR                        731- 733   ///
      byte   ORPROC                     734- 735   ///
      str    P7EDSRC_X                  736- 737   ///
      byte   PAY1                       738- 739   ///
      str    PAY1_X                     740- 744   ///
      byte   PAY2                       745- 746   ///
      str    PAY2_X                     747- 751   ///
      byte   PAY3                       752- 753   ///
      str    PAY3_X                     754- 758   ///
      int    PL_CBSA                    759- 761   ///
      byte   PL_NCHS                    762- 763   ///
      byte   PL_RUCC                    764- 765   ///
      byte   PL_UIC                     766- 767   ///
      byte   PL_UR_CAT4                 768- 769   ///
      byte   POA_Disch_Edit1            770- 771   ///
      byte   POA_Disch_Edit2            772- 773   ///
      byte   POA_Hosp_Edit1             774- 775   ///
      byte   POA_Hosp_Edit2             776- 777   ///
      byte   POA_Hosp_Edit3             778- 779   ///
      double POA_Hosp_Edit3_Value       780- 787   ///
      str    PR1                        788- 794   ///
      str    PR2                        795- 801   ///
      str    PR3                        802- 808   ///
      str    PR4                        809- 815   ///
      str    PR5                        816- 822   ///
      str    PR6                        823- 829   ///
      str    PR7                        830- 836   ///
      str    PR8                        837- 843   ///
      str    PR9                        844- 850   ///
      str    PR10                       851- 857   ///
      str    PR11                       858- 864   ///
      str    PR12                       865- 871   ///
      str    PR13                       872- 878   ///
      str    PR14                       879- 885   ///
      str    PR15                       886- 892   ///
      str    PR16                       893- 899   ///
      str    PR17                       900- 906   ///
      str    PR18                       907- 913   ///
      str    PR19                       914- 920   ///
      str    PR20                       921- 927   ///
      str    PR21                       928- 934   ///
      str    PR22                       935- 941   ///
      str    PR23                       942- 948   ///
      str    PR24                       949- 955   ///
      str    PR25                       956- 962   ///
      int    PRCCS1                     963- 965   ///
      int    PRCCS2                     966- 968   ///
      int    PRCCS3                     969- 971   ///
      int    PRCCS4                     972- 974   ///
      int    PRCCS5                     975- 977   ///
      int    PRCCS6                     978- 980   ///
      int    PRCCS7                     981- 983   ///
      int    PRCCS8                     984- 986   ///
      int    PRCCS9                     987- 989   ///
      int    PRCCS10                    990- 992   ///
      int    PRCCS11                    993- 995   ///
      int    PRCCS12                    996- 998   ///
      int    PRCCS13                    999-1001   ///
      int    PRCCS14                   1002-1004   ///
      int    PRCCS15                   1005-1007   ///
      int    PRCCS16                   1008-1010   ///
      int    PRCCS17                   1011-1013   ///
      int    PRCCS18                   1014-1016   ///
      int    PRCCS19                   1017-1019   ///
      int    PRCCS20                   1020-1022   ///
      int    PRCCS21                   1023-1025   ///
      int    PRCCS22                   1026-1028   ///
      int    PRCCS23                   1029-1031   ///
      int    PRCCS24                   1032-1034   ///
      int    PRCCS25                   1035-1037   ///
      long   PRDAY1                    1038-1042   ///
      long   PRDAY2                    1043-1047   ///
      long   PRDAY3                    1048-1052   ///
      long   PRDAY4                    1053-1057   ///
      long   PRDAY5                    1058-1062   ///
      long   PRDAY6                    1063-1067   ///
      long   PRDAY7                    1068-1072   ///
      long   PRDAY8                    1073-1077   ///
      long   PRDAY9                    1078-1082   ///
      long   PRDAY10                   1083-1087   ///
      long   PRDAY11                   1088-1092   ///
      long   PRDAY12                   1093-1097   ///
      long   PRDAY13                   1098-1102   ///
      long   PRDAY14                   1103-1107   ///
      long   PRDAY15                   1108-1112   ///
      long   PRDAY16                   1113-1117   ///
      long   PRDAY17                   1118-1122   ///
      long   PRDAY18                   1123-1127   ///
      long   PRDAY19                   1128-1132   ///
      long   PRDAY20                   1133-1137   ///
      long   PRDAY21                   1138-1142   ///
      long   PRDAY22                   1143-1147   ///
      long   PRDAY23                   1148-1152   ///
      long   PRDAY24                   1153-1157   ///
      long   PRDAY25                   1158-1162   ///
      int    PROCTYPE                  1163-1165   ///
      int    PRVER                     1166-1168   ///
      str    PSTATE                    1169-1170   ///
      long   PSTCO2                    1171-1175   ///
      str    PointOfOriginUB04         1176        ///
      str    PointOfOrigin_X           1177        ///
      byte   RACE                      1178-1179   ///
      str    RACE_X                    1180        ///
      byte   SERVICELINE               1181-1182   ///
      double TOTCHG                    1183-1192   ///
      double TOTCHG_X                  1193-1207   ///
      byte   TRAN_IN                   1208-1209   ///
      byte   TRAN_OUT                  1210-1211   ///
      long   VisitLink                 1212-1220   ///
      int    YEAR                      1221-1224   ///
      str    ZIP                       1225-1229   ///
      str    ZIP3                      1230-1232   ///
      int    ZIPINC_QRTL               1233-1235   ///
      int    AYEAR                     1236-1239   ///
      byte   BMONTH                    1240-1241   ///
      int    BYEAR                     1242-1245   ///
      byte   PRMONTH1                  1246-1247   ///
      byte   PRMONTH2                  1248-1249   ///
      byte   PRMONTH3                  1250-1251   ///
      byte   PRMONTH4                  1252-1253   ///
      byte   PRMONTH5                  1254-1255   ///
      byte   PRMONTH6                  1256-1257   ///
      byte   PRMONTH7                  1258-1259   ///
      byte   PRMONTH8                  1260-1261   ///
      byte   PRMONTH9                  1262-1263   ///
      byte   PRMONTH10                 1264-1265   ///
      byte   PRMONTH11                 1266-1267   ///
      byte   PRMONTH12                 1268-1269   ///
      byte   PRMONTH13                 1270-1271   ///
      byte   PRMONTH14                 1272-1273   ///
      byte   PRMONTH15                 1274-1275   ///
      byte   PRMONTH16                 1276-1277   ///
      byte   PRMONTH17                 1278-1279   ///
      byte   PRMONTH18                 1280-1281   ///
      byte   PRMONTH19                 1282-1283   ///
      byte   PRMONTH20                 1284-1285   ///
      byte   PRMONTH21                 1286-1287   ///
      byte   PRMONTH22                 1288-1289   ///
      byte   PRMONTH23                 1290-1291   ///
      byte   PRMONTH24                 1292-1293   ///
      byte   PRMONTH25                 1294-1295   ///
      int    PRYEAR1                   1296-1299   ///
      int    PRYEAR2                   1300-1303   ///
      int    PRYEAR3                   1304-1307   ///
      int    PRYEAR4                   1308-1311   ///
      int    PRYEAR5                   1312-1315   ///
      int    PRYEAR6                   1316-1319   ///
      int    PRYEAR7                   1320-1323   ///
      int    PRYEAR8                   1324-1327   ///
      int    PRYEAR9                   1328-1331   ///
      int    PRYEAR10                  1332-1335   ///
      int    PRYEAR11                  1336-1339   ///
      int    PRYEAR12                  1340-1343   ///
      int    PRYEAR13                  1344-1347   ///
      int    PRYEAR14                  1348-1351   ///
      int    PRYEAR15                  1352-1355   ///
      int    PRYEAR16                  1356-1359   ///
      int    PRYEAR17                  1360-1363   ///
      int    PRYEAR18                  1364-1367   ///
      int    PRYEAR19                  1368-1371   ///
      int    PRYEAR20                  1372-1375   ///
      int    PRYEAR21                  1376-1379   ///
      int    PRYEAR22                  1380-1383   ///
      int    PRYEAR23                  1384-1387   ///
      int    PRYEAR24                  1388-1391   ///
      int    PRYEAR25                  1392-1395   ///
      using  "MS_SID_2014_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRG24                    "DRG, version 24"
label var DRGVER                   "DRG grouper version used on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
label var DSHOSPID                 "Data source hospital identifier"
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
label var DXVER                    "Diagnosis Version"
label var DX_Admitting             "Admitting Diagnosis Code"
label var DaysToEvent              "Days from 'start date' to admission"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var ECODE8                   "E code 8"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_CCS7                   "CCS: E Code 7"
label var E_CCS8                   "CCS: E Code 8"
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var E_POA7                   "E Code 7, present on admission indicator"
label var E_POA8                   "E Code 8, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var HospitalUnit             "Patient was discharged from a special unit within an acute care hospital (reported by source)"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC24                    "MDC, version 24"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
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
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
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
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG24                     (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
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
recode DXVER                     (-99 -88 -66=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode E_CCS1                    (-999 -888 -666=.)
recode E_CCS2                    (-999 -888 -666=.)
recode E_CCS3                    (-999 -888 -666=.)
recode E_CCS4                    (-999 -888 -666=.)
recode E_CCS5                    (-999 -888 -666=.)
recode E_CCS6                    (-999 -888 -666=.)
recode E_CCS7                    (-999 -888 -666=.)
recode E_CCS8                    (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC24                     (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
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

save "MS_SID_2014_CORE.dta", replace
