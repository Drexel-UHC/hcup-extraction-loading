/*****************************************************************************
* Creation Date: 05/18/2021   
* IN_SEDD_2019_CORE.Do
* This program will load the 2019 IN ASCII CORE File into Stata.
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
      str    BILLTYPE                    16-  19   ///
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
      int    CPTCCS1                    320- 322   ///
      int    CPTCCS2                    323- 325   ///
      int    CPTCCS3                    326- 328   ///
      int    CPTCCS4                    329- 331   ///
      int    CPTCCS5                    332- 334   ///
      int    CPTCCS6                    335- 337   ///
      int    CPTCCS7                    338- 340   ///
      int    CPTCCS8                    341- 343   ///
      int    CPTCCS9                    344- 346   ///
      int    CPTCCS10                   347- 349   ///
      int    CPTCCS11                   350- 352   ///
      int    CPTCCS12                   353- 355   ///
      int    CPTCCS13                   356- 358   ///
      int    CPTCCS14                   359- 361   ///
      int    CPTCCS15                   362- 364   ///
      int    CPTCCS16                   365- 367   ///
      int    CPTCCS17                   368- 370   ///
      int    CPTCCS18                   371- 373   ///
      int    CPTCCS19                   374- 376   ///
      int    CPTCCS20                   377- 379   ///
      int    CPTCCS21                   380- 382   ///
      int    CPTCCS22                   383- 385   ///
      int    CPTCCS23                   386- 388   ///
      int    CPTCCS24                   389- 391   ///
      int    CPTCCS25                   392- 394   ///
      int    CPTCCS26                   395- 397   ///
      int    CPTCCS27                   398- 400   ///
      int    CPTCCS28                   401- 403   ///
      int    CPTCCS29                   404- 406   ///
      int    CPTCCS30                   407- 409   ///
      int    CPTCCS31                   410- 412   ///
      int    CPTCCS32                   413- 415   ///
      int    CPTCCS33                   416- 418   ///
      int    CPTCCS34                   419- 421   ///
      int    CPTCCS35                   422- 424   ///
      int    CPTCCS36                   425- 427   ///
      int    CPTCCS37                   428- 430   ///
      int    CPTCCS38                   431- 433   ///
      int    CPTCCS39                   434- 436   ///
      int    CPTCCS40                   437- 439   ///
      int    CPTCCS41                   440- 442   ///
      int    CPTCCS42                   443- 445   ///
      int    CPTCCS43                   446- 448   ///
      int    CPTCCS44                   449- 451   ///
      int    CPTCCS45                   452- 454   ///
      int    CPTCCS46                   455- 457   ///
      int    CPTCCS47                   458- 460   ///
      int    CPTCCS48                   461- 463   ///
      int    CPTCCS49                   464- 466   ///
      int    CPTCCS50                   467- 469   ///
      int    CPTCCS51                   470- 472   ///
      int    CPTCCS52                   473- 475   ///
      int    CPTCCS53                   476- 478   ///
      int    CPTCCS54                   479- 481   ///
      int    CPTCCS55                   482- 484   ///
      int    CPTCCS56                   485- 487   ///
      int    CPTCCS57                   488- 490   ///
      int    CPTCCS58                   491- 493   ///
      int    CPTCCS59                   494- 496   ///
      int    CPTCCS60                   497- 499   ///
      byte   DIED                       500- 501   ///
      byte   DISPUB04                   502- 503   ///
      byte   DISPUNIFORM                504- 505   ///
      str    DISP_X                     506- 507   ///
      byte   DMONTH                     508- 509   ///
      byte   DQTR                       510- 511   ///
      str    DXPOA1                     512        ///
      str    DXPOA2                     513        ///
      str    DXPOA3                     514        ///
      str    DXPOA4                     515        ///
      str    DXPOA5                     516        ///
      str    DXPOA6                     517        ///
      str    DXPOA7                     518        ///
      str    DXPOA8                     519        ///
      str    DXPOA9                     520        ///
      str    DXPOA10                    521        ///
      str    DXPOA11                    522        ///
      str    DXPOA12                    523        ///
      str    DXPOA13                    524        ///
      str    DXPOA14                    525        ///
      str    DXPOA15                    526        ///
      str    DXPOA16                    527        ///
      str    DXPOA17                    528        ///
      str    DXPOA18                    529        ///
      str    DXPOA19                    530        ///
      str    DXPOA20                    531        ///
      str    DXPOA21                    532        ///
      str    DXPOA22                    533        ///
      str    DXPOA23                    534        ///
      str    DXPOA24                    535        ///
      str    DXPOA25                    536        ///
      str    DXPOA26                    537        ///
      str    DXPOA27                    538        ///
      str    DXPOA28                    539        ///
      str    DXPOA29                    540        ///
      str    DXPOA30                    541        ///
      str    DXPOA31                    542        ///
      str    DXPOA32                    543        ///
      str    DXPOA33                    544        ///
      str    DXPOA34                    545        ///
      str    DXPOA35                    546        ///
      str    DXPOA36                    547        ///
      str    DXPOA37                    548        ///
      str    DXPOA38                    549        ///
      str    DXPOA39                    550        ///
      str    DXPOA40                    551        ///
      str    DXPOA41                    552        ///
      str    DXPOA42                    553        ///
      str    DXPOA43                    554        ///
      str    DXPOA44                    555        ///
      str    DXPOA45                    556        ///
      str    DXPOA46                    557        ///
      str    DXPOA47                    558        ///
      str    DXPOA48                    559        ///
      str    DXPOA49                    560        ///
      str    DXPOA50                    561        ///
      long   DaysToEvent                562- 567   ///
      byte   FEMALE                     568- 569   ///
      byte   HCUP_ED                    570- 571   ///
      byte   HCUP_OS                    572- 573   ///
      byte   HISPANIC                   574- 575   ///
      str    HISPANIC_X                 576        ///
      str    HOSPST                     577- 578   ///
      str    I10_DX1                    579- 585   ///
      str    I10_DX2                    586- 592   ///
      str    I10_DX3                    593- 599   ///
      str    I10_DX4                    600- 606   ///
      str    I10_DX5                    607- 613   ///
      str    I10_DX6                    614- 620   ///
      str    I10_DX7                    621- 627   ///
      str    I10_DX8                    628- 634   ///
      str    I10_DX9                    635- 641   ///
      str    I10_DX10                   642- 648   ///
      str    I10_DX11                   649- 655   ///
      str    I10_DX12                   656- 662   ///
      str    I10_DX13                   663- 669   ///
      str    I10_DX14                   670- 676   ///
      str    I10_DX15                   677- 683   ///
      str    I10_DX16                   684- 690   ///
      str    I10_DX17                   691- 697   ///
      str    I10_DX18                   698- 704   ///
      str    I10_DX19                   705- 711   ///
      str    I10_DX20                   712- 718   ///
      str    I10_DX21                   719- 725   ///
      str    I10_DX22                   726- 732   ///
      str    I10_DX23                   733- 739   ///
      str    I10_DX24                   740- 746   ///
      str    I10_DX25                   747- 753   ///
      str    I10_DX26                   754- 760   ///
      str    I10_DX27                   761- 767   ///
      str    I10_DX28                   768- 774   ///
      str    I10_DX29                   775- 781   ///
      str    I10_DX30                   782- 788   ///
      str    I10_DX31                   789- 795   ///
      str    I10_DX32                   796- 802   ///
      str    I10_DX33                   803- 809   ///
      str    I10_DX34                   810- 816   ///
      str    I10_DX35                   817- 823   ///
      str    I10_DX36                   824- 830   ///
      str    I10_DX37                   831- 837   ///
      str    I10_DX38                   838- 844   ///
      str    I10_DX39                   845- 851   ///
      str    I10_DX40                   852- 858   ///
      str    I10_DX41                   859- 865   ///
      str    I10_DX42                   866- 872   ///
      str    I10_DX43                   873- 879   ///
      str    I10_DX44                   880- 886   ///
      str    I10_DX45                   887- 893   ///
      str    I10_DX46                   894- 900   ///
      str    I10_DX47                   901- 907   ///
      str    I10_DX48                   908- 914   ///
      str    I10_DX49                   915- 921   ///
      str    I10_DX50                   922- 928   ///
      str    I10_DX_Visit_Reason1       929- 935   ///
      int    I10_NDX                    936- 938   ///
      int    I10_NPR                    939- 941   ///
      byte   I10_ORPROC                 942- 943   ///
      str    I10_PR1                    944- 950   ///
      str    I10_PR2                    951- 957   ///
      str    I10_PR3                    958- 964   ///
      str    I10_PR4                    965- 971   ///
      str    I10_PR5                    972- 978   ///
      str    I10_PR6                    979- 985   ///
      str    I10_PR7                    986- 992   ///
      str    I10_PR8                    993- 999   ///
      str    I10_PR9                   1000-1006   ///
      str    I10_PR10                  1007-1013   ///
      str    I10_PR11                  1014-1020   ///
      str    I10_PR12                  1021-1027   ///
      str    I10_PR13                  1028-1034   ///
      str    I10_PR14                  1035-1041   ///
      str    I10_PR15                  1042-1048   ///
      str    I10_PR16                  1049-1055   ///
      str    I10_PR17                  1056-1062   ///
      int    I10_PROCTYPE              1063-1065   ///
      double KEY                       1066-1080   ///
      long   LOS                       1081-1085   ///
      long   LOS_X                     1086-1091   ///
      byte   MEDINCSTQ                 1092-1093   ///
      int    NCPT                      1094-1097   ///
      byte   PAY1                      1098-1099   ///
      str    PAY1_X                    1100        ///
      byte   PAY2                      1101-1102   ///
      str    PAY2_X                    1103        ///
      int    PL_CBSA                   1104-1106   ///
      byte   PL_NCHS                   1107-1108   ///
      byte   PL_RUCC                   1109-1110   ///
      byte   PL_UIC                    1111-1112   ///
      byte   PL_UR_CAT4                1113-1114   ///
      byte   POA_Disch_Edit1           1115-1116   ///
      byte   POA_Disch_Edit2           1117-1118   ///
      byte   POA_Hosp_Edit1            1119-1120   ///
      byte   POA_Hosp_Edit2            1121-1122   ///
      byte   POA_Hosp_Edit3            1123-1124   ///
      double POA_Hosp_Edit3_Value      1125-1132   ///
      long   PRDAY1                    1133-1137   ///
      long   PRDAY2                    1138-1142   ///
      long   PRDAY3                    1143-1147   ///
      long   PRDAY4                    1148-1152   ///
      long   PRDAY5                    1153-1157   ///
      long   PRDAY6                    1158-1162   ///
      long   PRDAY7                    1163-1167   ///
      long   PRDAY8                    1168-1172   ///
      long   PRDAY9                    1173-1177   ///
      long   PRDAY10                   1178-1182   ///
      long   PRDAY11                   1183-1187   ///
      long   PRDAY12                   1188-1192   ///
      long   PRDAY13                   1193-1197   ///
      long   PRDAY14                   1198-1202   ///
      long   PRDAY15                   1203-1207   ///
      long   PRDAY16                   1208-1212   ///
      long   PRDAY17                   1213-1217   ///
      str    PSTATE                    1218-1219   ///
      str    PSTATE_GEO                1220-1221   ///
      long   PSTCO                     1222-1226   ///
      long   PSTCO_GEO                 1227-1231   ///
      str    PointOfOriginUB04         1232        ///
      str    PointOfOrigin_X           1233-1234   ///
      str    PrimLang                  1235-1237   ///
      byte   RACE                      1238-1239   ///
      str    RACE_X                    1240-1244   ///
      byte   STATE_AS                  1245-1246   ///
      byte   STATE_ED                  1247-1248   ///
      byte   STATE_OS                  1249-1250   ///
      double TOTCHG                    1251-1260   ///
      double TOTCHG_X                  1261-1275   ///
      long   VisitLink                 1276-1284   ///
      int    YEAR                      1285-1288   ///
      str    ZIP                       1289-1293   ///
      str    ZIP3                      1294-1296   ///
      int    ZIPINC_QRTL               1297-1299   ///
      long   HOSPID                    1300-1304   ///
      int    AYEAR                     1305-1308   ///
      byte   BMONTH                    1309-1310   ///
      int    BYEAR                     1311-1314   ///
      byte   PRMONTH1                  1315-1316   ///
      byte   PRMONTH2                  1317-1318   ///
      byte   PRMONTH3                  1319-1320   ///
      byte   PRMONTH4                  1321-1322   ///
      byte   PRMONTH5                  1323-1324   ///
      byte   PRMONTH6                  1325-1326   ///
      byte   PRMONTH7                  1327-1328   ///
      byte   PRMONTH8                  1329-1330   ///
      byte   PRMONTH9                  1331-1332   ///
      byte   PRMONTH10                 1333-1334   ///
      byte   PRMONTH11                 1335-1336   ///
      byte   PRMONTH12                 1337-1338   ///
      byte   PRMONTH13                 1339-1340   ///
      byte   PRMONTH14                 1341-1342   ///
      byte   PRMONTH15                 1343-1344   ///
      byte   PRMONTH16                 1345-1346   ///
      byte   PRMONTH17                 1347-1348   ///
      int    PRYEAR1                   1349-1352   ///
      int    PRYEAR2                   1353-1356   ///
      int    PRYEAR3                   1357-1360   ///
      int    PRYEAR4                   1361-1364   ///
      int    PRYEAR5                   1365-1368   ///
      int    PRYEAR6                   1369-1372   ///
      int    PRYEAR7                   1373-1376   ///
      int    PRYEAR8                   1377-1380   ///
      int    PRYEAR9                   1381-1384   ///
      int    PRYEAR10                  1385-1388   ///
      int    PRYEAR11                  1389-1392   ///
      int    PRYEAR12                  1393-1396   ///
      int    PRYEAR13                  1397-1400   ///
      int    PRYEAR14                  1401-1404   ///
      int    PRYEAR15                  1405-1408   ///
      int    PRYEAR16                  1409-1412   ///
      int    PRYEAR17                  1413-1416   ///
      using  "IN_SEDD_2019_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
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
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
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
label var DaysToEvent              "Days from 'start date' to admission"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
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
label var I10_DX_Visit_Reason1     "ICD-10-CM Reason for visit diagnosis 1"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
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
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PrimLang                 "Primary language of patient"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var STATE_AS                 "State Ambulatory Surgery service indicator"
label var STATE_ED                 "State Emergency Department service indicator"
label var STATE_OS                 "State Observation Stay service indicator"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var VisitLink                "Visit linkage variable"
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var HOSPID                   "HCUP hospital identification number"
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

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
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
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_ORPROC                (-9 -8 -6 -5=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCPT                      (-999 -888 -666=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
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
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode STATE_AS                  (-9 -8 -6 -5=.)
recode STATE_ED                  (-9 -8 -6 -5=.)
recode STATE_OS                  (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
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

save "IN_SEDD_2019_CORE.dta", replace
