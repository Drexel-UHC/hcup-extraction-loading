/*****************************************************************************
* Creation Date: 05/11/2016   
* Modify Date:   10/19/2017 - matches data created on date above.
* RI_SID_2014_CORE.Do
* This program will load the 2014 RI ASCII CORE File into Stata.
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
      int    AHOUR                        4-   7   ///
      byte   AMONTH                       8-   9   ///
      byte   ATYPE                       10-  11   ///
      byte   AWEEKEND                    12-  13   ///
      int    BWT                         14-  17   ///
      str    CPT1                        18-  22   ///
      str    CPT2                        23-  27   ///
      str    CPT3                        28-  32   ///
      str    CPT4                        33-  37   ///
      str    CPT5                        38-  42   ///
      str    CPT6                        43-  47   ///
      str    CPT7                        48-  52   ///
      str    CPT8                        53-  57   ///
      str    CPT9                        58-  62   ///
      str    CPT10                       63-  67   ///
      str    CPT11                       68-  72   ///
      int    CPTCCS1                     73-  75   ///
      int    CPTCCS2                     76-  78   ///
      int    CPTCCS3                     79-  81   ///
      int    CPTCCS4                     82-  84   ///
      int    CPTCCS5                     85-  87   ///
      int    CPTCCS6                     88-  90   ///
      int    CPTCCS7                     91-  93   ///
      int    CPTCCS8                     94-  96   ///
      int    CPTCCS9                     97-  99   ///
      int    CPTCCS10                   100- 102   ///
      int    CPTCCS11                   103- 105   ///
      int    CPTDAY1                    106- 108   ///
      int    CPTDAY2                    109- 111   ///
      int    CPTDAY3                    112- 114   ///
      int    CPTDAY4                    115- 117   ///
      int    CPTDAY5                    118- 120   ///
      int    CPTDAY6                    121- 123   ///
      int    CPTDAY7                    124- 126   ///
      int    CPTDAY8                    127- 129   ///
      int    CPTDAY9                    130- 132   ///
      int    CPTDAY10                   133- 135   ///
      int    CPTDAY11                   136- 138   ///
      int    DHOUR                      139- 142   ///
      byte   DIED                       143- 144   ///
      byte   DISPUB04                   145- 146   ///
      byte   DISPUNIFORM                147- 148   ///
      str    DISP_X                     149- 150   ///
      byte   DMONTH                     151- 152   ///
      byte   DQTR                       153- 154   ///
      int    DRG                        155- 157   ///
      int    DRG24                      158- 160   ///
      byte   DRGVER                     161- 162   ///
      int    DRG_NoPOA                  163- 165   ///
      str    DSHOSPID                   166- 182   ///
      str    DX1                        183- 189   ///
      str    DX2                        190- 196   ///
      str    DX3                        197- 203   ///
      str    DX4                        204- 210   ///
      str    DX5                        211- 217   ///
      str    DX6                        218- 224   ///
      str    DX7                        225- 231   ///
      str    DX8                        232- 238   ///
      str    DX9                        239- 245   ///
      str    DX10                       246- 252   ///
      str    DX11                       253- 259   ///
      str    DX12                       260- 266   ///
      str    DX13                       267- 273   ///
      str    DX14                       274- 280   ///
      str    DX15                       281- 287   ///
      str    DX16                       288- 294   ///
      str    DX17                       295- 301   ///
      str    DX18                       302- 308   ///
      str    DX19                       309- 315   ///
      str    DX20                       316- 322   ///
      str    DX21                       323- 329   ///
      str    DX22                       330- 336   ///
      str    DX23                       337- 343   ///
      str    DX24                       344- 350   ///
      str    DX25                       351- 357   ///
      int    DXCCS1                     358- 361   ///
      int    DXCCS2                     362- 365   ///
      int    DXCCS3                     366- 369   ///
      int    DXCCS4                     370- 373   ///
      int    DXCCS5                     374- 377   ///
      int    DXCCS6                     378- 381   ///
      int    DXCCS7                     382- 385   ///
      int    DXCCS8                     386- 389   ///
      int    DXCCS9                     390- 393   ///
      int    DXCCS10                    394- 397   ///
      int    DXCCS11                    398- 401   ///
      int    DXCCS12                    402- 405   ///
      int    DXCCS13                    406- 409   ///
      int    DXCCS14                    410- 413   ///
      int    DXCCS15                    414- 417   ///
      int    DXCCS16                    418- 421   ///
      int    DXCCS17                    422- 425   ///
      int    DXCCS18                    426- 429   ///
      int    DXCCS19                    430- 433   ///
      int    DXCCS20                    434- 437   ///
      int    DXCCS21                    438- 441   ///
      int    DXCCS22                    442- 445   ///
      int    DXCCS23                    446- 449   ///
      int    DXCCS24                    450- 453   ///
      int    DXCCS25                    454- 457   ///
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
      int    DXVER                      483- 485   ///
      str    DX_Admitting               486- 492   ///
      int    DaysCCU                    493- 495   ///
      int    DaysICU                    496- 498   ///
      int    DaysNICU                   499- 501   ///
      str    ECODE1                     502- 508   ///
      str    ECODE2                     509- 515   ///
      str    ECODE3                     516- 522   ///
      str    ECODE4                     523- 529   ///
      str    ECODE5                     530- 536   ///
      str    ECODE6                     537- 543   ///
      str    ECODE7                     544- 550   ///
      str    ECODE8                     551- 557   ///
      str    ECODE9                     558- 564   ///
      str    ECODE10                    565- 571   ///
      str    ECODE11                    572- 578   ///
      str    ECODE12                    579- 585   ///
      int    E_CCS1                     586- 589   ///
      int    E_CCS2                     590- 593   ///
      int    E_CCS3                     594- 597   ///
      int    E_CCS4                     598- 601   ///
      int    E_CCS5                     602- 605   ///
      int    E_CCS6                     606- 609   ///
      int    E_CCS7                     610- 613   ///
      int    E_CCS8                     614- 617   ///
      int    E_CCS9                     618- 621   ///
      int    E_CCS10                    622- 625   ///
      int    E_CCS11                    626- 629   ///
      int    E_CCS12                    630- 633   ///
      str    E_POA1                     634        ///
      str    E_POA2                     635        ///
      str    E_POA3                     636        ///
      str    E_POA4                     637        ///
      str    E_POA5                     638        ///
      str    E_POA6                     639        ///
      str    E_POA7                     640        ///
      str    E_POA8                     641        ///
      str    E_POA9                     642        ///
      str    E_POA10                    643        ///
      str    E_POA11                    644        ///
      str    E_POA12                    645        ///
      byte   FEMALE                     646- 647   ///
      byte   HCUP_ED                    648- 649   ///
      byte   HCUP_OS                    650- 651   ///
      str    HISPANIC_X                 652- 659   ///
      int    HOSPBRTH                   660- 662   ///
      str    HOSPST                     663- 664   ///
      double KEY                        665- 679   ///
      long   LOS                        680- 684   ///
      long   LOS_X                      685- 690   ///
      byte   MDC                        691- 692   ///
      byte   MDC24                      693- 694   ///
      byte   MDC_NoPOA                  695- 696   ///
      long   MDNUM1_R                   697- 705   ///
      long   MDNUM2_R                   706- 714   ///
      long   MDNUM3_R                   715- 723   ///
      byte   MEDINCSTQ                  724- 725   ///
      int    NCHRONIC                   726- 728   ///
      int    NCPT                       729- 732   ///
      int    NDX                        733- 735   ///
      byte   NECODE                     736- 737   ///
      byte   NEOMAT                     738- 739   ///
      int    NPR                        740- 742   ///
      int    OBSERVATION                743- 746   ///
      byte   ORPROC                     747- 748   ///
      byte   PAY1                       749- 750   ///
      str    PAY1_X                     751- 757   ///
      int    PL_CBSA                    758- 760   ///
      byte   PL_NCHS                    761- 762   ///
      byte   PL_RUCC                    763- 764   ///
      byte   PL_UIC                     765- 766   ///
      byte   PL_UR_CAT4                 767- 768   ///
      byte   POA_Disch_Edit1            769- 770   ///
      byte   POA_Disch_Edit2            771- 772   ///
      byte   POA_Hosp_Edit1             773- 774   ///
      byte   POA_Hosp_Edit2             775- 776   ///
      byte   POA_Hosp_Edit3             777- 778   ///
      double POA_Hosp_Edit3_Value       779- 786   ///
      str    PR1                        787- 793   ///
      str    PR2                        794- 800   ///
      str    PR3                        801- 807   ///
      str    PR4                        808- 814   ///
      str    PR5                        815- 821   ///
      str    PR6                        822- 828   ///
      str    PR7                        829- 835   ///
      str    PR8                        836- 842   ///
      str    PR9                        843- 849   ///
      str    PR10                       850- 856   ///
      str    PR11                       857- 863   ///
      str    PR12                       864- 870   ///
      str    PR13                       871- 877   ///
      str    PR14                       878- 884   ///
      str    PR15                       885- 891   ///
      str    PR16                       892- 898   ///
      str    PR17                       899- 905   ///
      str    PR18                       906- 912   ///
      str    PR19                       913- 919   ///
      str    PR20                       920- 926   ///
      str    PR21                       927- 933   ///
      str    PR22                       934- 940   ///
      str    PR23                       941- 947   ///
      str    PR24                       948- 954   ///
      str    PR25                       955- 961   ///
      int    PRCCS1                     962- 964   ///
      int    PRCCS2                     965- 967   ///
      int    PRCCS3                     968- 970   ///
      int    PRCCS4                     971- 973   ///
      int    PRCCS5                     974- 976   ///
      int    PRCCS6                     977- 979   ///
      int    PRCCS7                     980- 982   ///
      int    PRCCS8                     983- 985   ///
      int    PRCCS9                     986- 988   ///
      int    PRCCS10                    989- 991   ///
      int    PRCCS11                    992- 994   ///
      int    PRCCS12                    995- 997   ///
      int    PRCCS13                    998-1000   ///
      int    PRCCS14                   1001-1003   ///
      int    PRCCS15                   1004-1006   ///
      int    PRCCS16                   1007-1009   ///
      int    PRCCS17                   1010-1012   ///
      int    PRCCS18                   1013-1015   ///
      int    PRCCS19                   1016-1018   ///
      int    PRCCS20                   1019-1021   ///
      int    PRCCS21                   1022-1024   ///
      int    PRCCS22                   1025-1027   ///
      int    PRCCS23                   1028-1030   ///
      int    PRCCS24                   1031-1033   ///
      int    PRCCS25                   1034-1036   ///
      long   PRDAY1                    1037-1041   ///
      long   PRDAY2                    1042-1046   ///
      long   PRDAY3                    1047-1051   ///
      long   PRDAY4                    1052-1056   ///
      long   PRDAY5                    1057-1061   ///
      long   PRDAY6                    1062-1066   ///
      long   PRDAY7                    1067-1071   ///
      long   PRDAY8                    1072-1076   ///
      long   PRDAY9                    1077-1081   ///
      long   PRDAY10                   1082-1086   ///
      long   PRDAY11                   1087-1091   ///
      long   PRDAY12                   1092-1096   ///
      long   PRDAY13                   1097-1101   ///
      long   PRDAY14                   1102-1106   ///
      long   PRDAY15                   1107-1111   ///
      long   PRDAY16                   1112-1116   ///
      long   PRDAY17                   1117-1121   ///
      long   PRDAY18                   1122-1126   ///
      long   PRDAY19                   1127-1131   ///
      long   PRDAY20                   1132-1136   ///
      long   PRDAY21                   1137-1141   ///
      long   PRDAY22                   1142-1146   ///
      long   PRDAY23                   1147-1151   ///
      long   PRDAY24                   1152-1156   ///
      long   PRDAY25                   1157-1161   ///
      int    PROCTYPE                  1162-1164   ///
      int    PRVER                     1165-1167   ///
      str    PSTATE                    1168-1169   ///
      long   PSTCO                     1170-1174   ///
      long   PSTCO2                    1175-1179   ///
      str    PointOfOriginUB04         1180        ///
      str    PointOfOrigin_X           1181        ///
      byte   RACE                      1182-1183   ///
      str    RACE_X                    1184-1191   ///
      byte   SERVICELINE               1192-1193   ///
      double TOTCHG                    1194-1203   ///
      double TOTCHG_X                  1204-1218   ///
      byte   TRAN_IN                   1219-1220   ///
      byte   TRAN_OUT                  1221-1222   ///
      int    YEAR                      1223-1226   ///
      str    ZIP                       1227-1231   ///
      int    ZIPINC_QRTL               1232-1234   ///
      str    TOWN                      1235-1236   ///
      int    AYEAR                     1237-1240   ///
      byte   PRMONTH1                  1241-1242   ///
      byte   PRMONTH2                  1243-1244   ///
      byte   PRMONTH3                  1245-1246   ///
      byte   PRMONTH4                  1247-1248   ///
      byte   PRMONTH5                  1249-1250   ///
      byte   PRMONTH6                  1251-1252   ///
      byte   PRMONTH7                  1253-1254   ///
      byte   PRMONTH8                  1255-1256   ///
      byte   PRMONTH9                  1257-1258   ///
      byte   PRMONTH10                 1259-1260   ///
      byte   PRMONTH11                 1261-1262   ///
      byte   PRMONTH12                 1263-1264   ///
      byte   PRMONTH13                 1265-1266   ///
      byte   PRMONTH14                 1267-1268   ///
      byte   PRMONTH15                 1269-1270   ///
      byte   PRMONTH16                 1271-1272   ///
      byte   PRMONTH17                 1273-1274   ///
      byte   PRMONTH18                 1275-1276   ///
      byte   PRMONTH19                 1277-1278   ///
      byte   PRMONTH20                 1279-1280   ///
      byte   PRMONTH21                 1281-1282   ///
      byte   PRMONTH22                 1283-1284   ///
      byte   PRMONTH23                 1285-1286   ///
      byte   PRMONTH24                 1287-1288   ///
      byte   PRMONTH25                 1289-1290   ///
      int    PRYEAR1                   1291-1294   ///
      int    PRYEAR2                   1295-1298   ///
      int    PRYEAR3                   1299-1302   ///
      int    PRYEAR4                   1303-1306   ///
      int    PRYEAR5                   1307-1310   ///
      int    PRYEAR6                   1311-1314   ///
      int    PRYEAR7                   1315-1318   ///
      int    PRYEAR8                   1319-1322   ///
      int    PRYEAR9                   1323-1326   ///
      int    PRYEAR10                  1327-1330   ///
      int    PRYEAR11                  1331-1334   ///
      int    PRYEAR12                  1335-1338   ///
      int    PRYEAR13                  1339-1342   ///
      int    PRYEAR14                  1343-1346   ///
      int    PRYEAR15                  1347-1350   ///
      int    PRYEAR16                  1351-1354   ///
      int    PRYEAR17                  1355-1358   ///
      int    PRYEAR18                  1359-1362   ///
      int    PRYEAR19                  1363-1366   ///
      int    PRYEAR20                  1367-1370   ///
      int    PRYEAR21                  1371-1374   ///
      int    PRYEAR22                  1375-1378   ///
      int    PRYEAR23                  1379-1382   ///
      int    PRYEAR24                  1383-1386   ///
      int    PRYEAR25                  1387-1390   ///
      using  "RI_SID_2014_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
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
label var CPTDAY1                  "Number of days from admission to CPT1"
label var CPTDAY2                  "Number of days from admission to CPT2"
label var CPTDAY3                  "Number of days from admission to CPT3"
label var CPTDAY4                  "Number of days from admission to CPT4"
label var CPTDAY5                  "Number of days from admission to CPT5"
label var CPTDAY6                  "Number of days from admission to CPT6"
label var CPTDAY7                  "Number of days from admission to CPT7"
label var CPTDAY8                  "Number of days from admission to CPT8"
label var CPTDAY9                  "Number of days from admission to CPT9"
label var CPTDAY10                 "Number of days from admission to CPT10"
label var CPTDAY11                 "Number of days from admission to CPT11"
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
label var DXVER                    "Diagnosis Version"
label var DX_Admitting             "Admitting Diagnosis Code"
label var DaysCCU                  "Days in coronary care unit (as received from source)"
label var DaysICU                  "Days in medical/surgical intensive care unit (as received from source)"
label var DaysNICU                 "Days in neonetal care unit (as received from source)"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var ECODE8                   "E code 8"
label var ECODE9                   "E code 9"
label var ECODE10                  "E code 10"
label var ECODE11                  "E code 11"
label var ECODE12                  "E code 12"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_CCS7                   "CCS: E Code 7"
label var E_CCS8                   "CCS: E Code 8"
label var E_CCS9                   "CCS: E Code 9"
label var E_CCS10                  "CCS: E Code 10"
label var E_CCS11                  "CCS: E Code 11"
label var E_CCS12                  "CCS: E Code 12"
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var E_POA7                   "E Code 7, present on admission indicator"
label var E_POA8                   "E Code 8, present on admission indicator"
label var E_POA9                   "E Code 9, present on admission indicator"
label var E_POA10                  "E Code 10, present on admission indicator"
label var E_POA11                  "E Code 11, present on admission indicator"
label var E_POA12                  "E Code 12, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
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
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCHRONIC                 "Number of chronic conditions"
label var NCPT                     "Number of CPT/HCPCS procedures on this record"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var OBSERVATION              "Time for observation services (as received from source)"
label var ORPROC                   "Major operating room procedure indicator"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
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
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var TOWN                     "Patient town of residence (as received from source)"
label var AYEAR                    "Admission year"
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
recode AHOUR                     (-999 -888 -666=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
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
recode CPTDAY1                   (-99 -88 -66=.)
recode CPTDAY2                   (-99 -88 -66=.)
recode CPTDAY3                   (-99 -88 -66=.)
recode CPTDAY4                   (-99 -88 -66=.)
recode CPTDAY5                   (-99 -88 -66=.)
recode CPTDAY6                   (-99 -88 -66=.)
recode CPTDAY7                   (-99 -88 -66=.)
recode CPTDAY8                   (-99 -88 -66=.)
recode CPTDAY9                   (-99 -88 -66=.)
recode CPTDAY10                  (-99 -88 -66=.)
recode CPTDAY11                  (-99 -88 -66=.)
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
recode DXVER                     (-99 -88 -66=.)
recode DaysCCU                   (-99 -88 -66=.)
recode DaysICU                   (-99 -88 -66=.)
recode DaysNICU                  (-99 -88 -66=.)
recode E_CCS1                    (-999 -888 -666=.)
recode E_CCS2                    (-999 -888 -666=.)
recode E_CCS3                    (-999 -888 -666=.)
recode E_CCS4                    (-999 -888 -666=.)
recode E_CCS5                    (-999 -888 -666=.)
recode E_CCS6                    (-999 -888 -666=.)
recode E_CCS7                    (-999 -888 -666=.)
recode E_CCS8                    (-999 -888 -666=.)
recode E_CCS9                    (-999 -888 -666=.)
recode E_CCS10                   (-999 -888 -666=.)
recode E_CCS11                   (-999 -888 -666=.)
recode E_CCS12                   (-999 -888 -666=.)
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
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NCPT                      (-999 -888 -666=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode OBSERVATION               (-999 -888 -666=.)
recode ORPROC                    (-9 -8 -6 -5=.)
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

save "RI_SID_2014_CORE.dta", replace
