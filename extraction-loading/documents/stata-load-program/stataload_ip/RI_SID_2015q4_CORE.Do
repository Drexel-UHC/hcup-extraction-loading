/*****************************************************************************
* Creation Date: 11/13/2017   
* RI_SID_2015q4_CORE.Do
* This program will load the 2015 RI ASCII CORE File into Stata.
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
      int    DaysCCU                    139- 141   ///
      int    DaysICU                    142- 144   ///
      int    DaysNICU                   145- 147   ///
      int    DHOUR                      148- 151   ///
      byte   DIED                       152- 153   ///
      str    DISP_X                     154- 155   ///
      byte   DISPUB04                   156- 157   ///
      byte   DISPUNIFORM                158- 159   ///
      byte   DMONTH                     160- 161   ///
      byte   DQTR                       162- 163   ///
      int    DRG                        164- 166   ///
      int    DRG_NoPOA                  167- 169   ///
      int    DRG32                      170- 172   ///
      byte   DRGVER                     173- 174   ///
      str    DSHOSPID                   175- 191   ///
      str    DXPOA1                     192        ///
      str    DXPOA2                     193        ///
      str    DXPOA3                     194        ///
      str    DXPOA4                     195        ///
      str    DXPOA5                     196        ///
      str    DXPOA6                     197        ///
      str    DXPOA7                     198        ///
      str    DXPOA8                     199        ///
      str    DXPOA9                     200        ///
      str    DXPOA10                    201        ///
      str    DXPOA11                    202        ///
      str    DXPOA12                    203        ///
      str    DXPOA13                    204        ///
      str    DXPOA14                    205        ///
      str    DXPOA15                    206        ///
      str    DXPOA16                    207        ///
      str    DXPOA17                    208        ///
      str    DXPOA18                    209        ///
      str    DXPOA19                    210        ///
      str    DXPOA20                    211        ///
      str    DXPOA21                    212        ///
      str    DXPOA22                    213        ///
      str    DXPOA23                    214        ///
      str    DXPOA24                    215        ///
      str    DXPOA25                    216        ///
      int    DXVER                      217- 219   ///
      str    E_POA1                     220        ///
      str    E_POA2                     221        ///
      str    E_POA3                     222        ///
      str    E_POA4                     223        ///
      str    E_POA5                     224        ///
      str    E_POA6                     225        ///
      str    E_POA7                     226        ///
      str    E_POA8                     227        ///
      str    E_POA9                     228        ///
      str    E_POA10                    229        ///
      str    E_POA11                    230        ///
      str    E_POA12                    231        ///
      byte   FEMALE                     232- 233   ///
      byte   HCUP_ED                    234- 235   ///
      byte   HCUP_OS                    236- 237   ///
      byte   HISPANIC                   238- 239   ///
      str    HISPANIC_X                 240- 243   ///
      str    HOSPST                     244- 245   ///
      str    I10_DX_Admitting           246- 252   ///
      str    I10_DX1                    253- 259   ///
      str    I10_DX2                    260- 266   ///
      str    I10_DX3                    267- 273   ///
      str    I10_DX4                    274- 280   ///
      str    I10_DX5                    281- 287   ///
      str    I10_DX6                    288- 294   ///
      str    I10_DX7                    295- 301   ///
      str    I10_DX8                    302- 308   ///
      str    I10_DX9                    309- 315   ///
      str    I10_DX10                   316- 322   ///
      str    I10_DX11                   323- 329   ///
      str    I10_DX12                   330- 336   ///
      str    I10_DX13                   337- 343   ///
      str    I10_DX14                   344- 350   ///
      str    I10_DX15                   351- 357   ///
      str    I10_DX16                   358- 364   ///
      str    I10_DX17                   365- 371   ///
      str    I10_DX18                   372- 378   ///
      str    I10_DX19                   379- 385   ///
      str    I10_DX20                   386- 392   ///
      str    I10_DX21                   393- 399   ///
      str    I10_DX22                   400- 406   ///
      str    I10_DX23                   407- 413   ///
      str    I10_DX24                   414- 420   ///
      str    I10_DX25                   421- 427   ///
      int    I10_DXCCS1                 428- 431   ///
      int    I10_DXCCS2                 432- 435   ///
      int    I10_DXCCS3                 436- 439   ///
      int    I10_DXCCS4                 440- 443   ///
      int    I10_DXCCS5                 444- 447   ///
      int    I10_DXCCS6                 448- 451   ///
      int    I10_DXCCS7                 452- 455   ///
      int    I10_DXCCS8                 456- 459   ///
      int    I10_DXCCS9                 460- 463   ///
      int    I10_DXCCS10                464- 467   ///
      int    I10_DXCCS11                468- 471   ///
      int    I10_DXCCS12                472- 475   ///
      int    I10_DXCCS13                476- 479   ///
      int    I10_DXCCS14                480- 483   ///
      int    I10_DXCCS15                484- 487   ///
      int    I10_DXCCS16                488- 491   ///
      int    I10_DXCCS17                492- 495   ///
      int    I10_DXCCS18                496- 499   ///
      int    I10_DXCCS19                500- 503   ///
      int    I10_DXCCS20                504- 507   ///
      int    I10_DXCCS21                508- 511   ///
      int    I10_DXCCS22                512- 515   ///
      int    I10_DXCCS23                516- 519   ///
      int    I10_DXCCS24                520- 523   ///
      int    I10_DXCCS25                524- 527   ///
      str    I10_ECAUSE1                528- 534   ///
      str    I10_ECAUSE2                535- 541   ///
      str    I10_ECAUSE3                542- 548   ///
      str    I10_ECAUSE4                549- 555   ///
      str    I10_ECAUSE5                556- 562   ///
      str    I10_ECAUSE6                563- 569   ///
      str    I10_ECAUSE7                570- 576   ///
      str    I10_ECAUSE8                577- 583   ///
      str    I10_ECAUSE9                584- 590   ///
      str    I10_ECAUSE10               591- 597   ///
      str    I10_ECAUSE11               598- 604   ///
      str    I10_ECAUSE12               605- 611   ///
      int    I10_ECauseCCS1             612- 615   ///
      int    I10_ECauseCCS2             616- 619   ///
      int    I10_ECauseCCS3             620- 623   ///
      int    I10_ECauseCCS4             624- 627   ///
      int    I10_ECauseCCS5             628- 631   ///
      int    I10_ECauseCCS6             632- 635   ///
      int    I10_ECauseCCS7             636- 639   ///
      int    I10_ECauseCCS8             640- 643   ///
      int    I10_ECauseCCS9             644- 647   ///
      int    I10_ECauseCCS10            648- 651   ///
      int    I10_ECauseCCS11            652- 655   ///
      int    I10_ECauseCCS12            656- 659   ///
      int    I10_HOSPBRTH               660- 662   ///
      int    I10_NCHRONIC               663- 665   ///
      int    I10_NDX                    666- 668   ///
      byte   I10_NECAUSE                669- 670   ///
      byte   I10_NEOMAT                 671- 672   ///
      int    I10_NPR                    673- 675   ///
      byte   I10_ORPROC                 676- 677   ///
      str    I10_PR1                    678- 684   ///
      str    I10_PR2                    685- 691   ///
      str    I10_PR3                    692- 698   ///
      str    I10_PR4                    699- 705   ///
      str    I10_PR5                    706- 712   ///
      str    I10_PR6                    713- 719   ///
      str    I10_PR7                    720- 726   ///
      str    I10_PR8                    727- 733   ///
      str    I10_PR9                    734- 740   ///
      str    I10_PR10                   741- 747   ///
      str    I10_PR11                   748- 754   ///
      str    I10_PR12                   755- 761   ///
      str    I10_PR13                   762- 768   ///
      str    I10_PR14                   769- 775   ///
      str    I10_PR15                   776- 782   ///
      str    I10_PR16                   783- 789   ///
      str    I10_PR17                   790- 796   ///
      str    I10_PR18                   797- 803   ///
      str    I10_PR19                   804- 810   ///
      str    I10_PR20                   811- 817   ///
      str    I10_PR21                   818- 824   ///
      str    I10_PR22                   825- 831   ///
      str    I10_PR23                   832- 838   ///
      str    I10_PR24                   839- 845   ///
      str    I10_PR25                   846- 852   ///
      int    I10_PRCCS1                 853- 855   ///
      int    I10_PRCCS2                 856- 858   ///
      int    I10_PRCCS3                 859- 861   ///
      int    I10_PRCCS4                 862- 864   ///
      int    I10_PRCCS5                 865- 867   ///
      int    I10_PRCCS6                 868- 870   ///
      int    I10_PRCCS7                 871- 873   ///
      int    I10_PRCCS8                 874- 876   ///
      int    I10_PRCCS9                 877- 879   ///
      int    I10_PRCCS10                880- 882   ///
      int    I10_PRCCS11                883- 885   ///
      int    I10_PRCCS12                886- 888   ///
      int    I10_PRCCS13                889- 891   ///
      int    I10_PRCCS14                892- 894   ///
      int    I10_PRCCS15                895- 897   ///
      int    I10_PRCCS16                898- 900   ///
      int    I10_PRCCS17                901- 903   ///
      int    I10_PRCCS18                904- 906   ///
      int    I10_PRCCS19                907- 909   ///
      int    I10_PRCCS20                910- 912   ///
      int    I10_PRCCS21                913- 915   ///
      int    I10_PRCCS22                916- 918   ///
      int    I10_PRCCS23                919- 921   ///
      int    I10_PRCCS24                922- 924   ///
      int    I10_PRCCS25                925- 927   ///
      int    I10_PROCTYPE               928- 930   ///
      byte   I10_SERVICELINE            931- 932   ///
      double KEY                        933- 947   ///
      long   LOS                        948- 952   ///
      long   LOS_X                      953- 958   ///
      byte   MDC                        959- 960   ///
      byte   MDC_NoPOA                  961- 962   ///
      byte   MDC32                      963- 964   ///
      long   MDNUM1_R                   965- 973   ///
      long   MDNUM2_R                   974- 982   ///
      long   MDNUM3_R                   983- 991   ///
      byte   MEDINCSTQ                  992- 993   ///
      int    NCPT                       994- 997   ///
      int    OBSERVATION                998-1001   ///
      byte   PAY1                      1002-1003   ///
      str    PAY1_X                    1004-1014   ///
      int    PL_CBSA                   1015-1017   ///
      byte   PL_NCHS                   1018-1019   ///
      byte   PL_RUCC                   1020-1021   ///
      byte   PL_UIC                    1022-1023   ///
      byte   PL_UR_CAT4                1024-1025   ///
      byte   POA_Disch_Edit1           1026-1027   ///
      byte   POA_Disch_Edit2           1028-1029   ///
      byte   POA_Hosp_Edit1            1030-1031   ///
      byte   POA_Hosp_Edit2            1032-1033   ///
      byte   POA_Hosp_Edit3            1034-1035   ///
      double POA_Hosp_Edit3_Value      1036-1043   ///
      str    PointOfOrigin_X           1044        ///
      str    PointOfOriginUB04         1045        ///
      long   PRDAY1                    1046-1050   ///
      long   PRDAY2                    1051-1055   ///
      long   PRDAY3                    1056-1060   ///
      long   PRDAY4                    1061-1065   ///
      long   PRDAY5                    1066-1070   ///
      long   PRDAY6                    1071-1075   ///
      long   PRDAY7                    1076-1080   ///
      long   PRDAY8                    1081-1085   ///
      long   PRDAY9                    1086-1090   ///
      long   PRDAY10                   1091-1095   ///
      long   PRDAY11                   1096-1100   ///
      long   PRDAY12                   1101-1105   ///
      long   PRDAY13                   1106-1110   ///
      long   PRDAY14                   1111-1115   ///
      long   PRDAY15                   1116-1120   ///
      long   PRDAY16                   1121-1125   ///
      long   PRDAY17                   1126-1130   ///
      long   PRDAY18                   1131-1135   ///
      long   PRDAY19                   1136-1140   ///
      long   PRDAY20                   1141-1145   ///
      long   PRDAY21                   1146-1150   ///
      long   PRDAY22                   1151-1155   ///
      long   PRDAY23                   1156-1160   ///
      long   PRDAY24                   1161-1165   ///
      long   PRDAY25                   1166-1170   ///
      int    PRVER                     1171-1173   ///
      str    PSTATE                    1174-1175   ///
      long   PSTCO                     1176-1180   ///
      long   PSTCO2                    1181-1185   ///
      byte   RACE                      1186-1187   ///
      str    RACE_X                    1188-1195   ///
      double TOTCHG                    1196-1205   ///
      double TOTCHG_X                  1206-1220   ///
      byte   TRAN_IN                   1221-1222   ///
      byte   TRAN_OUT                  1223-1224   ///
      int    YEAR                      1225-1228   ///
      str    ZIP                       1229-1233   ///
      int    ZIPINC_QRTL               1234-1236   ///
      str    TOWN                      1237-1238   ///
      int    AYEAR                     1239-1242   ///
      byte   PRMONTH1                  1243-1244   ///
      byte   PRMONTH2                  1245-1246   ///
      byte   PRMONTH3                  1247-1248   ///
      byte   PRMONTH4                  1249-1250   ///
      byte   PRMONTH5                  1251-1252   ///
      byte   PRMONTH6                  1253-1254   ///
      byte   PRMONTH7                  1255-1256   ///
      byte   PRMONTH8                  1257-1258   ///
      byte   PRMONTH9                  1259-1260   ///
      byte   PRMONTH10                 1261-1262   ///
      byte   PRMONTH11                 1263-1264   ///
      byte   PRMONTH12                 1265-1266   ///
      byte   PRMONTH13                 1267-1268   ///
      byte   PRMONTH14                 1269-1270   ///
      byte   PRMONTH15                 1271-1272   ///
      byte   PRMONTH16                 1273-1274   ///
      byte   PRMONTH17                 1275-1276   ///
      byte   PRMONTH18                 1277-1278   ///
      byte   PRMONTH19                 1279-1280   ///
      byte   PRMONTH20                 1281-1282   ///
      byte   PRMONTH21                 1283-1284   ///
      byte   PRMONTH22                 1285-1286   ///
      byte   PRMONTH23                 1287-1288   ///
      byte   PRMONTH24                 1289-1290   ///
      byte   PRMONTH25                 1291-1292   ///
      int    PRYEAR1                   1293-1296   ///
      int    PRYEAR2                   1297-1300   ///
      int    PRYEAR3                   1301-1304   ///
      int    PRYEAR4                   1305-1308   ///
      int    PRYEAR5                   1309-1312   ///
      int    PRYEAR6                   1313-1316   ///
      int    PRYEAR7                   1317-1320   ///
      int    PRYEAR8                   1321-1324   ///
      int    PRYEAR9                   1325-1328   ///
      int    PRYEAR10                  1329-1332   ///
      int    PRYEAR11                  1333-1336   ///
      int    PRYEAR12                  1337-1340   ///
      int    PRYEAR13                  1341-1344   ///
      int    PRYEAR14                  1345-1348   ///
      int    PRYEAR15                  1349-1352   ///
      int    PRYEAR16                  1353-1356   ///
      int    PRYEAR17                  1357-1360   ///
      int    PRYEAR18                  1361-1364   ///
      int    PRYEAR19                  1365-1368   ///
      int    PRYEAR20                  1369-1372   ///
      int    PRYEAR21                  1373-1376   ///
      int    PRYEAR22                  1377-1380   ///
      int    PRYEAR23                  1381-1384   ///
      int    PRYEAR24                  1385-1388   ///
      int    PRYEAR25                  1389-1392   ///
      using  "RI_SID_2015q4_CORE.ASC"

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
label var DaysCCU                  "Days in coronary care unit (as received from source)"
label var DaysICU                  "Days in medical/surgical intensive care unit (as received from source)"
label var DaysNICU                 "Days in neonetal care unit (as received from source)"
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
label var E_POA10                  "E Cause 10, present on admission indicator"
label var E_POA11                  "E Cause 11, present on admission indicator"
label var E_POA12                  "E Cause 12, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
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
label var I10_ECAUSE1              "ICD-10-CM E Cause 1"
label var I10_ECAUSE2              "ICD-10-CM E Cause 2"
label var I10_ECAUSE3              "ICD-10-CM E Cause 3"
label var I10_ECAUSE4              "ICD-10-CM E Cause 4"
label var I10_ECAUSE5              "ICD-10-CM E Cause 5"
label var I10_ECAUSE6              "ICD-10-CM E Cause 6"
label var I10_ECAUSE7              "ICD-10-CM E Cause 7"
label var I10_ECAUSE8              "ICD-10-CM E Cause 8"
label var I10_ECAUSE9              "ICD-10-CM E Cause 9"
label var I10_ECAUSE10             "ICD-10-CM E Cause 10"
label var I10_ECAUSE11             "ICD-10-CM E Cause 11"
label var I10_ECAUSE12             "ICD-10-CM E Cause 12"
label var I10_ECauseCCS1           "ICD-10-CM CCS: E Cause 1"
label var I10_ECauseCCS2           "ICD-10-CM CCS: E Cause 2"
label var I10_ECauseCCS3           "ICD-10-CM CCS: E Cause 3"
label var I10_ECauseCCS4           "ICD-10-CM CCS: E Cause 4"
label var I10_ECauseCCS5           "ICD-10-CM CCS: E Cause 5"
label var I10_ECauseCCS6           "ICD-10-CM CCS: E Cause 6"
label var I10_ECauseCCS7           "ICD-10-CM CCS: E Cause 7"
label var I10_ECauseCCS8           "ICD-10-CM CCS: E Cause 8"
label var I10_ECauseCCS9           "ICD-10-CM CCS: E Cause 9"
label var I10_ECauseCCS10          "ICD-10-CM CCS: E Cause 10"
label var I10_ECauseCCS11          "ICD-10-CM CCS: E Cause 11"
label var I10_ECauseCCS12          "ICD-10-CM CCS: E Cause 12"
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
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var OBSERVATION              "Time for observation services (as received from source)"
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
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
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
recode DaysCCU                   (-99 -88 -66=.)
recode DaysICU                   (-99 -88 -66=.)
recode DaysNICU                  (-99 -88 -66=.)
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
recode I10_ECauseCCS1            (-999 -888 -666=.)
recode I10_ECauseCCS2            (-999 -888 -666=.)
recode I10_ECauseCCS3            (-999 -888 -666=.)
recode I10_ECauseCCS4            (-999 -888 -666=.)
recode I10_ECauseCCS5            (-999 -888 -666=.)
recode I10_ECauseCCS6            (-999 -888 -666=.)
recode I10_ECauseCCS7            (-999 -888 -666=.)
recode I10_ECauseCCS8            (-999 -888 -666=.)
recode I10_ECauseCCS9            (-999 -888 -666=.)
recode I10_ECauseCCS10           (-999 -888 -666=.)
recode I10_ECauseCCS11           (-999 -888 -666=.)
recode I10_ECauseCCS12           (-999 -888 -666=.)
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
recode NCPT                      (-999 -888 -666=.)
recode OBSERVATION               (-999 -888 -666=.)
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
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
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

save "RI_SID_2015q4_CORE.dta", replace
