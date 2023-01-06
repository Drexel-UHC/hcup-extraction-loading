/*****************************************************************************
* Creation Date: 07/12/2016   
* Modify Date:   10/19/2017 - matches data created on date above.
* DC_SID_2014_CORE.Do
* This program will load the 2014 DC ASCII CORE File into Stata.
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
      int    DHOUR                       28-  31   ///
      byte   DIED                        32-  33   ///
      byte   DISPUB04                    34-  35   ///
      byte   DISPUNIFORM                 36-  37   ///
      str    DISP_X                      38-  39   ///
      byte   DMONTH                      40-  41   ///
      byte   DQTR                        42-  43   ///
      int    DRG                         44-  46   ///
      int    DRG24                       47-  49   ///
      byte   DRGVER                      50-  51   ///
      int    DRG_NoPOA                   52-  54   ///
      str    DX1                         55-  61   ///
      str    DX2                         62-  68   ///
      str    DX3                         69-  75   ///
      str    DX4                         76-  82   ///
      str    DX5                         83-  89   ///
      str    DX6                         90-  96   ///
      str    DX7                         97- 103   ///
      str    DX8                        104- 110   ///
      str    DX9                        111- 117   ///
      str    DX10                       118- 124   ///
      str    DX11                       125- 131   ///
      str    DX12                       132- 138   ///
      str    DX13                       139- 145   ///
      str    DX14                       146- 152   ///
      str    DX15                       153- 159   ///
      str    DX16                       160- 166   ///
      str    DX17                       167- 173   ///
      str    DX18                       174- 180   ///
      str    DX19                       181- 187   ///
      str    DX20                       188- 194   ///
      str    DX21                       195- 201   ///
      str    DX22                       202- 208   ///
      str    DX23                       209- 215   ///
      str    DX24                       216- 222   ///
      str    DX25                       223- 229   ///
      str    DX26                       230- 236   ///
      str    DX27                       237- 243   ///
      str    DX28                       244- 250   ///
      str    DX29                       251- 257   ///
      str    DX30                       258- 264   ///
      str    DX31                       265- 271   ///
      str    DX32                       272- 278   ///
      str    DX33                       279- 285   ///
      str    DX34                       286- 292   ///
      str    DX35                       293- 299   ///
      str    DX36                       300- 306   ///
      str    DX37                       307- 313   ///
      str    DX38                       314- 320   ///
      str    DX39                       321- 327   ///
      str    DX40                       328- 334   ///
      str    DX41                       335- 341   ///
      str    DX42                       342- 348   ///
      str    DX43                       349- 355   ///
      str    DX44                       356- 362   ///
      str    DX45                       363- 369   ///
      str    DX46                       370- 376   ///
      str    DX47                       377- 383   ///
      str    DX48                       384- 390   ///
      int    DXCCS1                     391- 394   ///
      int    DXCCS2                     395- 398   ///
      int    DXCCS3                     399- 402   ///
      int    DXCCS4                     403- 406   ///
      int    DXCCS5                     407- 410   ///
      int    DXCCS6                     411- 414   ///
      int    DXCCS7                     415- 418   ///
      int    DXCCS8                     419- 422   ///
      int    DXCCS9                     423- 426   ///
      int    DXCCS10                    427- 430   ///
      int    DXCCS11                    431- 434   ///
      int    DXCCS12                    435- 438   ///
      int    DXCCS13                    439- 442   ///
      int    DXCCS14                    443- 446   ///
      int    DXCCS15                    447- 450   ///
      int    DXCCS16                    451- 454   ///
      int    DXCCS17                    455- 458   ///
      int    DXCCS18                    459- 462   ///
      int    DXCCS19                    463- 466   ///
      int    DXCCS20                    467- 470   ///
      int    DXCCS21                    471- 474   ///
      int    DXCCS22                    475- 478   ///
      int    DXCCS23                    479- 482   ///
      int    DXCCS24                    483- 486   ///
      int    DXCCS25                    487- 490   ///
      int    DXCCS26                    491- 494   ///
      int    DXCCS27                    495- 498   ///
      int    DXCCS28                    499- 502   ///
      int    DXCCS29                    503- 506   ///
      int    DXCCS30                    507- 510   ///
      int    DXCCS31                    511- 514   ///
      int    DXCCS32                    515- 518   ///
      int    DXCCS33                    519- 522   ///
      int    DXCCS34                    523- 526   ///
      int    DXCCS35                    527- 530   ///
      int    DXCCS36                    531- 534   ///
      int    DXCCS37                    535- 538   ///
      int    DXCCS38                    539- 542   ///
      int    DXCCS39                    543- 546   ///
      int    DXCCS40                    547- 550   ///
      int    DXCCS41                    551- 554   ///
      int    DXCCS42                    555- 558   ///
      int    DXCCS43                    559- 562   ///
      int    DXCCS44                    563- 566   ///
      int    DXCCS45                    567- 570   ///
      int    DXCCS46                    571- 574   ///
      int    DXCCS47                    575- 578   ///
      int    DXCCS48                    579- 582   ///
      str    DXPOA1                     583        ///
      str    DXPOA2                     584        ///
      str    DXPOA3                     585        ///
      str    DXPOA4                     586        ///
      str    DXPOA5                     587        ///
      str    DXPOA6                     588        ///
      str    DXPOA7                     589        ///
      str    DXPOA8                     590        ///
      str    DXPOA9                     591        ///
      str    DXPOA10                    592        ///
      str    DXPOA11                    593        ///
      str    DXPOA12                    594        ///
      str    DXPOA13                    595        ///
      str    DXPOA14                    596        ///
      str    DXPOA15                    597        ///
      str    DXPOA16                    598        ///
      str    DXPOA17                    599        ///
      str    DXPOA18                    600        ///
      str    DXPOA19                    601        ///
      str    DXPOA20                    602        ///
      str    DXPOA21                    603        ///
      str    DXPOA22                    604        ///
      str    DXPOA23                    605        ///
      str    DXPOA24                    606        ///
      str    DXPOA25                    607        ///
      str    DXPOA26                    608        ///
      str    DXPOA27                    609        ///
      str    DXPOA28                    610        ///
      str    DXPOA29                    611        ///
      str    DXPOA30                    612        ///
      str    DXPOA31                    613        ///
      str    DXPOA32                    614        ///
      str    DXPOA33                    615        ///
      str    DXPOA34                    616        ///
      str    DXPOA35                    617        ///
      str    DXPOA36                    618        ///
      str    DXPOA37                    619        ///
      str    DXPOA38                    620        ///
      str    DXPOA39                    621        ///
      str    DXPOA40                    622        ///
      str    DXPOA41                    623        ///
      str    DXPOA42                    624        ///
      str    DXPOA43                    625        ///
      str    DXPOA44                    626        ///
      str    DXPOA45                    627        ///
      str    DXPOA46                    628        ///
      str    DXPOA47                    629        ///
      str    DXPOA48                    630        ///
      int    DXVER                      631- 633   ///
      str    DX_Admitting               634- 640   ///
      str    ECODE1                     641- 647   ///
      str    ECODE2                     648- 654   ///
      str    ECODE3                     655- 661   ///
      str    ECODE4                     662- 668   ///
      str    ECODE5                     669- 675   ///
      str    ECODE6                     676- 682   ///
      int    E_CCS1                     683- 686   ///
      int    E_CCS2                     687- 690   ///
      int    E_CCS3                     691- 694   ///
      int    E_CCS4                     695- 698   ///
      int    E_CCS5                     699- 702   ///
      int    E_CCS6                     703- 706   ///
      str    E_POA1                     707        ///
      str    E_POA2                     708        ///
      str    E_POA3                     709        ///
      str    E_POA4                     710        ///
      str    E_POA5                     711        ///
      str    E_POA6                     712        ///
      byte   FEMALE                     713- 714   ///
      byte   HCUP_ED                    715- 716   ///
      byte   HCUP_OS                    717- 718   ///
      int    HOSPBRTH                   719- 721   ///
      str    HOSPST                     722- 723   ///
      double KEY                        724- 738   ///
      long   LOS                        739- 743   ///
      long   LOS_X                      744- 749   ///
      byte   MDC                        750- 751   ///
      byte   MDC24                      752- 753   ///
      byte   MDC_NoPOA                  754- 755   ///
      long   MDNUM1_R                   756- 764   ///
      long   MDNUM2_R                   765- 773   ///
      long   MDNUM3_R                   774- 782   ///
      long   MDNUM4_R                   783- 791   ///
      byte   MEDINCSTQ                  792- 793   ///
      int    NCHRONIC                   794- 796   ///
      int    NDX                        797- 799   ///
      byte   NECODE                     800- 801   ///
      byte   NEOMAT                     802- 803   ///
      int    NPR                        804- 806   ///
      byte   ORPROC                     807- 808   ///
      byte   PAY1                       809- 810   ///
      str    PAY1_X                     811- 818   ///
      byte   PAY2                       819- 820   ///
      str    PAY2_X                     821- 828   ///
      byte   PAY3                       829- 830   ///
      str    PAY3_X                     831- 838   ///
      int    PL_CBSA                    839- 841   ///
      byte   PL_NCHS                    842- 843   ///
      byte   PL_RUCC                    844- 845   ///
      byte   PL_UIC                     846- 847   ///
      byte   PL_UR_CAT4                 848- 849   ///
      byte   POA_Disch_Edit1            850- 851   ///
      byte   POA_Disch_Edit2            852- 853   ///
      byte   POA_Hosp_Edit1             854- 855   ///
      byte   POA_Hosp_Edit2             856- 857   ///
      byte   POA_Hosp_Edit3             858- 859   ///
      double POA_Hosp_Edit3_Value       860- 867   ///
      str    PR1                        868- 874   ///
      str    PR2                        875- 881   ///
      str    PR3                        882- 888   ///
      str    PR4                        889- 895   ///
      str    PR5                        896- 902   ///
      str    PR6                        903- 909   ///
      str    PR7                        910- 916   ///
      str    PR8                        917- 923   ///
      str    PR9                        924- 930   ///
      str    PR10                       931- 937   ///
      str    PR11                       938- 944   ///
      str    PR12                       945- 951   ///
      str    PR13                       952- 958   ///
      str    PR14                       959- 965   ///
      str    PR15                       966- 972   ///
      str    PR16                       973- 979   ///
      str    PR17                       980- 986   ///
      str    PR18                       987- 993   ///
      str    PR19                       994-1000   ///
      str    PR20                      1001-1007   ///
      str    PR21                      1008-1014   ///
      str    PR22                      1015-1021   ///
      str    PR23                      1022-1028   ///
      str    PR24                      1029-1035   ///
      str    PR25                      1036-1042   ///
      str    PR26                      1043-1049   ///
      str    PR27                      1050-1056   ///
      str    PR28                      1057-1063   ///
      str    PR29                      1064-1070   ///
      str    PR30                      1071-1077   ///
      str    PR31                      1078-1084   ///
      int    PRCCS1                    1085-1087   ///
      int    PRCCS2                    1088-1090   ///
      int    PRCCS3                    1091-1093   ///
      int    PRCCS4                    1094-1096   ///
      int    PRCCS5                    1097-1099   ///
      int    PRCCS6                    1100-1102   ///
      int    PRCCS7                    1103-1105   ///
      int    PRCCS8                    1106-1108   ///
      int    PRCCS9                    1109-1111   ///
      int    PRCCS10                   1112-1114   ///
      int    PRCCS11                   1115-1117   ///
      int    PRCCS12                   1118-1120   ///
      int    PRCCS13                   1121-1123   ///
      int    PRCCS14                   1124-1126   ///
      int    PRCCS15                   1127-1129   ///
      int    PRCCS16                   1130-1132   ///
      int    PRCCS17                   1133-1135   ///
      int    PRCCS18                   1136-1138   ///
      int    PRCCS19                   1139-1141   ///
      int    PRCCS20                   1142-1144   ///
      int    PRCCS21                   1145-1147   ///
      int    PRCCS22                   1148-1150   ///
      int    PRCCS23                   1151-1153   ///
      int    PRCCS24                   1154-1156   ///
      int    PRCCS25                   1157-1159   ///
      int    PRCCS26                   1160-1162   ///
      int    PRCCS27                   1163-1165   ///
      int    PRCCS28                   1166-1168   ///
      int    PRCCS29                   1169-1171   ///
      int    PRCCS30                   1172-1174   ///
      int    PRCCS31                   1175-1177   ///
      long   PRDAY1                    1178-1182   ///
      long   PRDAY2                    1183-1187   ///
      long   PRDAY3                    1188-1192   ///
      long   PRDAY4                    1193-1197   ///
      long   PRDAY5                    1198-1202   ///
      long   PRDAY6                    1203-1207   ///
      long   PRDAY7                    1208-1212   ///
      long   PRDAY8                    1213-1217   ///
      long   PRDAY9                    1218-1222   ///
      long   PRDAY10                   1223-1227   ///
      long   PRDAY11                   1228-1232   ///
      long   PRDAY12                   1233-1237   ///
      long   PRDAY13                   1238-1242   ///
      long   PRDAY14                   1243-1247   ///
      long   PRDAY15                   1248-1252   ///
      long   PRDAY16                   1253-1257   ///
      long   PRDAY17                   1258-1262   ///
      long   PRDAY18                   1263-1267   ///
      long   PRDAY19                   1268-1272   ///
      long   PRDAY20                   1273-1277   ///
      long   PRDAY21                   1278-1282   ///
      long   PRDAY22                   1283-1287   ///
      long   PRDAY23                   1288-1292   ///
      long   PRDAY24                   1293-1297   ///
      long   PRDAY25                   1298-1302   ///
      long   PRDAY26                   1303-1307   ///
      long   PRDAY27                   1308-1312   ///
      long   PRDAY28                   1313-1317   ///
      long   PRDAY29                   1318-1322   ///
      long   PRDAY30                   1323-1327   ///
      long   PRDAY31                   1328-1332   ///
      int    PROCTYPE                  1333-1335   ///
      int    PRVER                     1336-1338   ///
      str    PSTATE                    1339-1340   ///
      long   PSTCO                     1341-1345   ///
      long   PSTCO2                    1346-1350   ///
      str    PointOfOriginUB04         1351        ///
      str    PointOfOrigin_X           1352-1353   ///
      byte   RACE                      1354-1355   ///
      str    RACE_X                    1356        ///
      byte   SERVICELINE               1357-1358   ///
      double TOTCHG                    1359-1368   ///
      double TOTCHG_X                  1369-1383   ///
      byte   TRAN_IN                   1384-1385   ///
      byte   TRAN_OUT                  1386-1387   ///
      int    YEAR                      1388-1391   ///
      str    ZIP                       1392-1396   ///
      str    ZIP3                      1397-1399   ///
      int    ZIPINC_QRTL               1400-1402   ///
      long   HOSPID                    1403-1407   ///
      int    AYEAR                     1408-1411   ///
      byte   BMONTH                    1412-1413   ///
      int    BYEAR                     1414-1417   ///
      using  "DC_SID_2014_CORE.ASC"

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
label var DX_Admitting             "Admitting Diagnosis Code"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC24                    "MDC, version 24"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MDNUM4_R                 "Physician 4 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCHRONIC                 "Number of chronic conditions"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
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
label var POA_Disch_Edit1          "Indication that a discharge has POA missing on all nonexempt diagnoses"
label var POA_Disch_Edit2          "Indication that a discharge has POA missing on all nonexempt secondary diagnoses"
label var POA_Hosp_Edit1           "Indication that a hospital has POA reported as Y on all diagnoses on all discharges"
label var POA_Hosp_Edit2           "Indication that a hospital has POA reported as missing on all non-Medicare discharges"
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
label var PR26                     "Procedure 26"
label var PR27                     "Procedure 27"
label var PR28                     "Procedure 28"
label var PR29                     "Procedure 29"
label var PR30                     "Procedure 30"
label var PR31                     "Procedure 31"
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
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
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
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var HOSPID                   "HCUP hospital identification number"
label var AYEAR                    "Admission year"
label var BMONTH                   "Birth month"
label var BYEAR                    "Birth year"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
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
recode HOSPBRTH                  (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC24                     (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM4_R                  (-99999999 -88888888 -66666666=.)
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
recode PRCCS31                   (-99 -88 -66=.)
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
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode SERVICELINE               (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)
recode BMONTH                    (-9 -8 -6 -5=.)
recode BYEAR                     (-999 -888 -666=.)

save "DC_SID_2014_CORE.dta", replace
