/*****************************************************************************
* Creation Date: 03/14/2017   
* CO_SID_2015q1q3_CORE.Do
* This program will load the 2015 CO ASCII CORE File into Stata.
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
      str    DSHOSPID                    40-  56   ///
      str    DX1                         57-  63   ///
      str    DX2                         64-  70   ///
      str    DX3                         71-  77   ///
      str    DX4                         78-  84   ///
      str    DX5                         85-  91   ///
      str    DX6                         92-  98   ///
      str    DX7                         99- 105   ///
      str    DX8                        106- 112   ///
      str    DX9                        113- 119   ///
      str    DX10                       120- 126   ///
      str    DX11                       127- 133   ///
      str    DX12                       134- 140   ///
      str    DX13                       141- 147   ///
      str    DX14                       148- 154   ///
      str    DX15                       155- 161   ///
      str    DX16                       162- 168   ///
      str    DX17                       169- 175   ///
      str    DX18                       176- 182   ///
      str    DX19                       183- 189   ///
      str    DX20                       190- 196   ///
      str    DX21                       197- 203   ///
      str    DX22                       204- 210   ///
      str    DX23                       211- 217   ///
      str    DX24                       218- 224   ///
      str    DX25                       225- 231   ///
      str    DX26                       232- 238   ///
      str    DX27                       239- 245   ///
      str    DX28                       246- 252   ///
      str    DX29                       253- 259   ///
      str    DX30                       260- 266   ///
      int    DXCCS1                     267- 270   ///
      int    DXCCS2                     271- 274   ///
      int    DXCCS3                     275- 278   ///
      int    DXCCS4                     279- 282   ///
      int    DXCCS5                     283- 286   ///
      int    DXCCS6                     287- 290   ///
      int    DXCCS7                     291- 294   ///
      int    DXCCS8                     295- 298   ///
      int    DXCCS9                     299- 302   ///
      int    DXCCS10                    303- 306   ///
      int    DXCCS11                    307- 310   ///
      int    DXCCS12                    311- 314   ///
      int    DXCCS13                    315- 318   ///
      int    DXCCS14                    319- 322   ///
      int    DXCCS15                    323- 326   ///
      int    DXCCS16                    327- 330   ///
      int    DXCCS17                    331- 334   ///
      int    DXCCS18                    335- 338   ///
      int    DXCCS19                    339- 342   ///
      int    DXCCS20                    343- 346   ///
      int    DXCCS21                    347- 350   ///
      int    DXCCS22                    351- 354   ///
      int    DXCCS23                    355- 358   ///
      int    DXCCS24                    359- 362   ///
      int    DXCCS25                    363- 366   ///
      int    DXCCS26                    367- 370   ///
      int    DXCCS27                    371- 374   ///
      int    DXCCS28                    375- 378   ///
      int    DXCCS29                    379- 382   ///
      int    DXCCS30                    383- 386   ///
      int    DXVER                      387- 389   ///
      int    E_CCS1                     390- 393   ///
      int    E_CCS2                     394- 397   ///
      int    E_CCS3                     398- 401   ///
      int    E_CCS4                     402- 405   ///
      int    E_CCS5                     406- 409   ///
      int    E_CCS6                     410- 413   ///
      int    E_CCS7                     414- 417   ///
      int    E_CCS8                     418- 421   ///
      int    E_CCS9                     422- 425   ///
      int    E_CCS10                    426- 429   ///
      int    E_CCS11                    430- 433   ///
      int    E_CCS12                    434- 437   ///
      int    E_CCS13                    438- 441   ///
      int    E_CCS14                    442- 445   ///
      str    ECODE1                     446- 452   ///
      str    ECODE2                     453- 459   ///
      str    ECODE3                     460- 466   ///
      str    ECODE4                     467- 473   ///
      str    ECODE5                     474- 480   ///
      str    ECODE6                     481- 487   ///
      str    ECODE7                     488- 494   ///
      str    ECODE8                     495- 501   ///
      str    ECODE9                     502- 508   ///
      str    ECODE10                    509- 515   ///
      str    ECODE11                    516- 522   ///
      str    ECODE12                    523- 529   ///
      str    ECODE13                    530- 536   ///
      str    ECODE14                    537- 543   ///
      byte   FEMALE                     544- 545   ///
      byte   HCUP_ED                    546- 547   ///
      byte   HCUP_OS                    548- 549   ///
      byte   Homeless                   550- 551   ///
      int    HOSPBRTH                   552- 554   ///
      str    HOSPST                     555- 556   ///
      double KEY                        557- 571   ///
      long   LOS                        572- 576   ///
      long   LOS_X                      577- 582   ///
      byte   MDC                        583- 584   ///
      byte   MDC_NoPOA                  585- 586   ///
      byte   MDC32                      587- 588   ///
      long   MDNUM1_R                   589- 597   ///
      long   MDNUM2_R                   598- 606   ///
      byte   MEDINCSTQ                  607- 608   ///
      long   MRN_R                      609- 617   ///
      int    NCHRONIC                   618- 620   ///
      int    NDX                        621- 623   ///
      byte   NECODE                     624- 625   ///
      byte   NEOMAT                     626- 627   ///
      int    NPR                        628- 630   ///
      byte   ORPROC                     631- 632   ///
      str    P7EDSRC_X                  633- 634   ///
      byte   PAY1                       635- 636   ///
      str    PAY1_X                     637- 638   ///
      int    PL_CBSA                    639- 641   ///
      byte   PL_NCHS                    642- 643   ///
      byte   PL_RUCC                    644- 645   ///
      byte   PL_UIC                     646- 647   ///
      byte   PL_UR_CAT4                 648- 649   ///
      str    PointOfOrigin_X            650        ///
      str    PointOfOriginUB04          651        ///
      str    PR1                        652- 658   ///
      str    PR2                        659- 665   ///
      str    PR3                        666- 672   ///
      str    PR4                        673- 679   ///
      str    PR5                        680- 686   ///
      str    PR6                        687- 693   ///
      str    PR7                        694- 700   ///
      str    PR8                        701- 707   ///
      str    PR9                        708- 714   ///
      str    PR10                       715- 721   ///
      str    PR11                       722- 728   ///
      str    PR12                       729- 735   ///
      str    PR13                       736- 742   ///
      str    PR14                       743- 749   ///
      str    PR15                       750- 756   ///
      str    PR16                       757- 763   ///
      str    PR17                       764- 770   ///
      str    PR18                       771- 777   ///
      str    PR19                       778- 784   ///
      str    PR20                       785- 791   ///
      str    PR21                       792- 798   ///
      str    PR22                       799- 805   ///
      str    PR23                       806- 812   ///
      str    PR24                       813- 819   ///
      str    PR25                       820- 826   ///
      str    PR26                       827- 833   ///
      str    PR27                       834- 840   ///
      str    PR28                       841- 847   ///
      str    PR29                       848- 854   ///
      str    PR30                       855- 861   ///
      int    PRCCS1                     862- 864   ///
      int    PRCCS2                     865- 867   ///
      int    PRCCS3                     868- 870   ///
      int    PRCCS4                     871- 873   ///
      int    PRCCS5                     874- 876   ///
      int    PRCCS6                     877- 879   ///
      int    PRCCS7                     880- 882   ///
      int    PRCCS8                     883- 885   ///
      int    PRCCS9                     886- 888   ///
      int    PRCCS10                    889- 891   ///
      int    PRCCS11                    892- 894   ///
      int    PRCCS12                    895- 897   ///
      int    PRCCS13                    898- 900   ///
      int    PRCCS14                    901- 903   ///
      int    PRCCS15                    904- 906   ///
      int    PRCCS16                    907- 909   ///
      int    PRCCS17                    910- 912   ///
      int    PRCCS18                    913- 915   ///
      int    PRCCS19                    916- 918   ///
      int    PRCCS20                    919- 921   ///
      int    PRCCS21                    922- 924   ///
      int    PRCCS22                    925- 927   ///
      int    PRCCS23                    928- 930   ///
      int    PRCCS24                    931- 933   ///
      int    PRCCS25                    934- 936   ///
      int    PRCCS26                    937- 939   ///
      int    PRCCS27                    940- 942   ///
      int    PRCCS28                    943- 945   ///
      int    PRCCS29                    946- 948   ///
      int    PRCCS30                    949- 951   ///
      long   PRDAY1                     952- 956   ///
      long   PRDAY2                     957- 961   ///
      long   PRDAY3                     962- 966   ///
      long   PRDAY4                     967- 971   ///
      long   PRDAY5                     972- 976   ///
      long   PRDAY6                     977- 981   ///
      long   PRDAY7                     982- 986   ///
      long   PRDAY8                     987- 991   ///
      long   PRDAY9                     992- 996   ///
      long   PRDAY10                    997-1001   ///
      long   PRDAY11                   1002-1006   ///
      long   PRDAY12                   1007-1011   ///
      long   PRDAY13                   1012-1016   ///
      long   PRDAY14                   1017-1021   ///
      long   PRDAY15                   1022-1026   ///
      long   PRDAY16                   1027-1031   ///
      long   PRDAY17                   1032-1036   ///
      long   PRDAY18                   1037-1041   ///
      long   PRDAY19                   1042-1046   ///
      long   PRDAY20                   1047-1051   ///
      long   PRDAY21                   1052-1056   ///
      long   PRDAY22                   1057-1061   ///
      long   PRDAY23                   1062-1066   ///
      long   PRDAY24                   1067-1071   ///
      long   PRDAY25                   1072-1076   ///
      long   PRDAY26                   1077-1081   ///
      long   PRDAY27                   1082-1086   ///
      long   PRDAY28                   1087-1091   ///
      long   PRDAY29                   1092-1096   ///
      long   PRDAY30                   1097-1101   ///
      int    PROCTYPE                  1102-1104   ///
      int    PRVER                     1105-1107   ///
      str    PSTATE                    1108-1109   ///
      long   PSTCO                     1110-1114   ///
      long   PSTCO2                    1115-1119   ///
      byte   RACE                      1120-1121   ///
      str    RACE_X                    1122        ///
      byte   SERVICELINE               1123-1124   ///
      double TOTCHG                    1125-1134   ///
      double TOTCHG_X                  1135-1149   ///
      byte   TRAN_IN                   1150-1151   ///
      byte   TRAN_OUT                  1152-1153   ///
      int    YEAR                      1154-1157   ///
      str    ZIP                       1158-1162   ///
      str    ZIP3                      1163-1165   ///
      int    ZIPINC_QRTL               1166-1168   ///
      int    AYEAR                     1169-1172   ///
      byte   BMONTH                    1173-1174   ///
      int    BYEAR                     1175-1178   ///
      byte   PRMONTH1                  1179-1180   ///
      byte   PRMONTH2                  1181-1182   ///
      byte   PRMONTH3                  1183-1184   ///
      byte   PRMONTH4                  1185-1186   ///
      byte   PRMONTH5                  1187-1188   ///
      byte   PRMONTH6                  1189-1190   ///
      byte   PRMONTH7                  1191-1192   ///
      byte   PRMONTH8                  1193-1194   ///
      byte   PRMONTH9                  1195-1196   ///
      byte   PRMONTH10                 1197-1198   ///
      byte   PRMONTH11                 1199-1200   ///
      byte   PRMONTH12                 1201-1202   ///
      byte   PRMONTH13                 1203-1204   ///
      byte   PRMONTH14                 1205-1206   ///
      byte   PRMONTH15                 1207-1208   ///
      byte   PRMONTH16                 1209-1210   ///
      byte   PRMONTH17                 1211-1212   ///
      byte   PRMONTH18                 1213-1214   ///
      byte   PRMONTH19                 1215-1216   ///
      byte   PRMONTH20                 1217-1218   ///
      byte   PRMONTH21                 1219-1220   ///
      byte   PRMONTH22                 1221-1222   ///
      byte   PRMONTH23                 1223-1224   ///
      byte   PRMONTH24                 1225-1226   ///
      byte   PRMONTH25                 1227-1228   ///
      byte   PRMONTH26                 1229-1230   ///
      byte   PRMONTH27                 1231-1232   ///
      byte   PRMONTH28                 1233-1234   ///
      byte   PRMONTH29                 1235-1236   ///
      byte   PRMONTH30                 1237-1238   ///
      int    PRYEAR1                   1239-1242   ///
      int    PRYEAR2                   1243-1246   ///
      int    PRYEAR3                   1247-1250   ///
      int    PRYEAR4                   1251-1254   ///
      int    PRYEAR5                   1255-1258   ///
      int    PRYEAR6                   1259-1262   ///
      int    PRYEAR7                   1263-1266   ///
      int    PRYEAR8                   1267-1270   ///
      int    PRYEAR9                   1271-1274   ///
      int    PRYEAR10                  1275-1278   ///
      int    PRYEAR11                  1279-1282   ///
      int    PRYEAR12                  1283-1286   ///
      int    PRYEAR13                  1287-1290   ///
      int    PRYEAR14                  1291-1294   ///
      int    PRYEAR15                  1295-1298   ///
      int    PRYEAR16                  1299-1302   ///
      int    PRYEAR17                  1303-1306   ///
      int    PRYEAR18                  1307-1310   ///
      int    PRYEAR19                  1311-1314   ///
      int    PRYEAR20                  1315-1318   ///
      int    PRYEAR21                  1319-1322   ///
      int    PRYEAR22                  1323-1326   ///
      int    PRYEAR23                  1327-1330   ///
      int    PRYEAR24                  1331-1334   ///
      int    PRYEAR25                  1335-1338   ///
      int    PRYEAR26                  1339-1342   ///
      int    PRYEAR27                  1343-1346   ///
      int    PRYEAR28                  1347-1350   ///
      int    PRYEAR29                  1351-1354   ///
      int    PRYEAR30                  1355-1358   ///
      using  "CO_SID_2015q1q3_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
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
label var E_CCS10                  "CCS: E Code 10"
label var E_CCS11                  "CCS: E Code 11"
label var E_CCS12                  "CCS: E Code 12"
label var E_CCS13                  "CCS: E Code 13"
label var E_CCS14                  "CCS: E Code 14"
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
label var ECODE13                  "E code 13"
label var ECODE14                  "E code 14"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var Homeless                 "Indicator that patient is homeless"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDC32                    "MDC, version 32"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var NCHRONIC                 "Number of chronic conditions"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes(RUCC)"
label var PL_UIC                   "Patient location: Urban Influence Codes"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
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
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
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
recode E_CCS10                   (-999 -888 -666=.)
recode E_CCS11                   (-999 -888 -666=.)
recode E_CCS12                   (-999 -888 -666=.)
recode E_CCS13                   (-999 -888 -666=.)
recode E_CCS14                   (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDC32                     (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
recode PL_RUCC                   (-9 -8 -6 -5=.)
recode PL_UIC                    (-9 -8 -6 -5=.)
recode PL_UR_CAT4                (-9 -8 -6 -5=.)
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

save "CO_SID_2015q1q3_CORE.dta", replace
