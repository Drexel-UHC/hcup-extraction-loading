/*****************************************************************************
* Creation Date: 02/26/2018   
* KS_SID_2015q1q3_CORE.Do
* This program will load the 2015 KS ASCII CORE File into Stata.
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
      int    DHOUR                       24-  27   ///
      byte   DIED                        28-  29   ///
      str    DISP_X                      30-  31   ///
      byte   DISPUB04                    32-  33   ///
      byte   DISPUNIFORM                 34-  35   ///
      byte   DMONTH                      36-  37   ///
      byte   DQTR                        38-  39   ///
      int    DRG                         40-  42   ///
      int    DRG_NoPOA                   43-  45   ///
      int    DRG32                       46-  48   ///
      byte   DRGVER                      49-  50   ///
      str    DX1                         51-  57   ///
      str    DX2                         58-  64   ///
      str    DX3                         65-  71   ///
      str    DX4                         72-  78   ///
      str    DX5                         79-  85   ///
      str    DX6                         86-  92   ///
      str    DX7                         93-  99   ///
      str    DX8                        100- 106   ///
      str    DX9                        107- 113   ///
      str    DX10                       114- 120   ///
      str    DX11                       121- 127   ///
      str    DX12                       128- 134   ///
      str    DX13                       135- 141   ///
      str    DX14                       142- 148   ///
      str    DX15                       149- 155   ///
      str    DX16                       156- 162   ///
      str    DX17                       163- 169   ///
      str    DX18                       170- 176   ///
      str    DX19                       177- 183   ///
      str    DX20                       184- 190   ///
      str    DX21                       191- 197   ///
      str    DX22                       198- 204   ///
      str    DX23                       205- 211   ///
      str    DX24                       212- 218   ///
      str    DX25                       219- 225   ///
      str    DX26                       226- 232   ///
      str    DX27                       233- 239   ///
      str    DX28                       240- 246   ///
      str    DX29                       247- 253   ///
      str    DX30                       254- 260   ///
      int    DXCCS1                     261- 264   ///
      int    DXCCS2                     265- 268   ///
      int    DXCCS3                     269- 272   ///
      int    DXCCS4                     273- 276   ///
      int    DXCCS5                     277- 280   ///
      int    DXCCS6                     281- 284   ///
      int    DXCCS7                     285- 288   ///
      int    DXCCS8                     289- 292   ///
      int    DXCCS9                     293- 296   ///
      int    DXCCS10                    297- 300   ///
      int    DXCCS11                    301- 304   ///
      int    DXCCS12                    305- 308   ///
      int    DXCCS13                    309- 312   ///
      int    DXCCS14                    313- 316   ///
      int    DXCCS15                    317- 320   ///
      int    DXCCS16                    321- 324   ///
      int    DXCCS17                    325- 328   ///
      int    DXCCS18                    329- 332   ///
      int    DXCCS19                    333- 336   ///
      int    DXCCS20                    337- 340   ///
      int    DXCCS21                    341- 344   ///
      int    DXCCS22                    345- 348   ///
      int    DXCCS23                    349- 352   ///
      int    DXCCS24                    353- 356   ///
      int    DXCCS25                    357- 360   ///
      int    DXCCS26                    361- 364   ///
      int    DXCCS27                    365- 368   ///
      int    DXCCS28                    369- 372   ///
      int    DXCCS29                    373- 376   ///
      int    DXCCS30                    377- 380   ///
      str    DXPOA1                     381        ///
      str    DXPOA2                     382        ///
      str    DXPOA3                     383        ///
      str    DXPOA4                     384        ///
      str    DXPOA5                     385        ///
      str    DXPOA6                     386        ///
      str    DXPOA7                     387        ///
      str    DXPOA8                     388        ///
      str    DXPOA9                     389        ///
      str    DXPOA10                    390        ///
      str    DXPOA11                    391        ///
      str    DXPOA12                    392        ///
      str    DXPOA13                    393        ///
      str    DXPOA14                    394        ///
      str    DXPOA15                    395        ///
      str    DXPOA16                    396        ///
      str    DXPOA17                    397        ///
      str    DXPOA18                    398        ///
      str    DXPOA19                    399        ///
      str    DXPOA20                    400        ///
      str    DXPOA21                    401        ///
      str    DXPOA22                    402        ///
      str    DXPOA23                    403        ///
      str    DXPOA24                    404        ///
      str    DXPOA25                    405        ///
      str    DXPOA26                    406        ///
      str    DXPOA27                    407        ///
      str    DXPOA28                    408        ///
      str    DXPOA29                    409        ///
      str    DXPOA30                    410        ///
      int    DXVER                      411- 413   ///
      int    E_CCS1                     414- 417   ///
      int    E_CCS2                     418- 421   ///
      int    E_CCS3                     422- 425   ///
      int    E_CCS4                     426- 429   ///
      int    E_CCS5                     430- 433   ///
      int    E_CCS6                     434- 437   ///
      int    E_CCS7                     438- 441   ///
      int    E_CCS8                     442- 445   ///
      int    E_CCS9                     446- 449   ///
      int    E_CCS10                    450- 453   ///
      int    E_CCS11                    454- 457   ///
      str    E_POA1                     458        ///
      str    E_POA2                     459        ///
      str    E_POA3                     460        ///
      str    E_POA4                     461        ///
      str    E_POA5                     462        ///
      str    E_POA6                     463        ///
      str    E_POA7                     464        ///
      str    E_POA8                     465        ///
      str    E_POA9                     466        ///
      str    E_POA10                    467        ///
      str    E_POA11                    468        ///
      str    ECODE1                     469- 475   ///
      str    ECODE2                     476- 482   ///
      str    ECODE3                     483- 489   ///
      str    ECODE4                     490- 496   ///
      str    ECODE5                     497- 503   ///
      str    ECODE6                     504- 510   ///
      str    ECODE7                     511- 517   ///
      str    ECODE8                     518- 524   ///
      str    ECODE9                     525- 531   ///
      str    ECODE10                    532- 538   ///
      str    ECODE11                    539- 545   ///
      byte   FEMALE                     546- 547   ///
      byte   HCUP_ED                    548- 549   ///
      byte   HCUP_OS                    550- 551   ///
      byte   HISPANIC                   552- 553   ///
      str    HISPANIC_X                 554        ///
      int    HOSPBRTH                   555- 557   ///
      byte   HospitalUnit               558- 559   ///
      str    HOSPST                     560- 561   ///
      double KEY                        562- 576   ///
      long   LOS                        577- 581   ///
      long   LOS_X                      582- 587   ///
      byte   MDC                        588- 589   ///
      byte   MDC_NoPOA                  590- 591   ///
      byte   MDC32                      592- 593   ///
      byte   MEDINCSTQ                  594- 595   ///
      int    NCHRONIC                   596- 598   ///
      int    NDX                        599- 601   ///
      byte   NECODE                     602- 603   ///
      byte   NEOMAT                     604- 605   ///
      int    NPR                        606- 608   ///
      byte   ORPROC                     609- 610   ///
      double OS_TIME                    611- 621   ///
      byte   PAY1                       622- 623   ///
      str    PAY1_X                     624- 626   ///
      byte   PAY2                       627- 628   ///
      str    PAY2_X                     629- 631   ///
      byte   PAY3                       632- 633   ///
      str    PAY3_X                     634- 636   ///
      int    PL_CBSA                    637- 639   ///
      byte   PL_NCHS                    640- 641   ///
      byte   PL_RUCC                    642- 643   ///
      byte   PL_UIC                     644- 645   ///
      byte   PL_UR_CAT4                 646- 647   ///
      byte   POA_Disch_Edit1            648- 649   ///
      byte   POA_Disch_Edit2            650- 651   ///
      byte   POA_Hosp_Edit1             652- 653   ///
      byte   POA_Hosp_Edit2             654- 655   ///
      byte   POA_Hosp_Edit3             656- 657   ///
      double POA_Hosp_Edit3_Value       658- 665   ///
      str    PointOfOrigin_X            666        ///
      str    PointOfOriginUB04          667        ///
      str    PR1                        668- 674   ///
      str    PR2                        675- 681   ///
      str    PR3                        682- 688   ///
      str    PR4                        689- 695   ///
      str    PR5                        696- 702   ///
      str    PR6                        703- 709   ///
      str    PR7                        710- 716   ///
      str    PR8                        717- 723   ///
      str    PR9                        724- 730   ///
      str    PR10                       731- 737   ///
      str    PR11                       738- 744   ///
      str    PR12                       745- 751   ///
      str    PR13                       752- 758   ///
      str    PR14                       759- 765   ///
      str    PR15                       766- 772   ///
      str    PR16                       773- 779   ///
      str    PR17                       780- 786   ///
      str    PR18                       787- 793   ///
      str    PR19                       794- 800   ///
      str    PR20                       801- 807   ///
      str    PR21                       808- 814   ///
      str    PR22                       815- 821   ///
      str    PR23                       822- 828   ///
      str    PR24                       829- 835   ///
      str    PR25                       836- 842   ///
      int    PRCCS1                     843- 845   ///
      int    PRCCS2                     846- 848   ///
      int    PRCCS3                     849- 851   ///
      int    PRCCS4                     852- 854   ///
      int    PRCCS5                     855- 857   ///
      int    PRCCS6                     858- 860   ///
      int    PRCCS7                     861- 863   ///
      int    PRCCS8                     864- 866   ///
      int    PRCCS9                     867- 869   ///
      int    PRCCS10                    870- 872   ///
      int    PRCCS11                    873- 875   ///
      int    PRCCS12                    876- 878   ///
      int    PRCCS13                    879- 881   ///
      int    PRCCS14                    882- 884   ///
      int    PRCCS15                    885- 887   ///
      int    PRCCS16                    888- 890   ///
      int    PRCCS17                    891- 893   ///
      int    PRCCS18                    894- 896   ///
      int    PRCCS19                    897- 899   ///
      int    PRCCS20                    900- 902   ///
      int    PRCCS21                    903- 905   ///
      int    PRCCS22                    906- 908   ///
      int    PRCCS23                    909- 911   ///
      int    PRCCS24                    912- 914   ///
      int    PRCCS25                    915- 917   ///
      long   PRDAY1                     918- 922   ///
      long   PRDAY2                     923- 927   ///
      long   PRDAY3                     928- 932   ///
      long   PRDAY4                     933- 937   ///
      long   PRDAY5                     938- 942   ///
      long   PRDAY6                     943- 947   ///
      long   PRDAY7                     948- 952   ///
      long   PRDAY8                     953- 957   ///
      long   PRDAY9                     958- 962   ///
      long   PRDAY10                    963- 967   ///
      long   PRDAY11                    968- 972   ///
      long   PRDAY12                    973- 977   ///
      long   PRDAY13                    978- 982   ///
      long   PRDAY14                    983- 987   ///
      long   PRDAY15                    988- 992   ///
      long   PRDAY16                    993- 997   ///
      long   PRDAY17                    998-1002   ///
      long   PRDAY18                   1003-1007   ///
      long   PRDAY19                   1008-1012   ///
      long   PRDAY20                   1013-1017   ///
      long   PRDAY21                   1018-1022   ///
      long   PRDAY22                   1023-1027   ///
      long   PRDAY23                   1028-1032   ///
      long   PRDAY24                   1033-1037   ///
      long   PRDAY25                   1038-1042   ///
      int    PROCTYPE                  1043-1045   ///
      int    PRVER                     1046-1048   ///
      str    PSTATE                    1049-1050   ///
      long   PSTCO                     1051-1055   ///
      long   PSTCO2                    1056-1060   ///
      byte   RACE                      1061-1062   ///
      str    RACE_X                    1063        ///
      byte   SERVICELINE               1064-1065   ///
      double TOTCHG                    1066-1075   ///
      double TOTCHG_X                  1076-1090   ///
      byte   TRAN_IN                   1091-1092   ///
      byte   TRAN_OUT                  1093-1094   ///
      int    YEAR                      1095-1098   ///
      str    ZIP3                      1099-1101   ///
      int    ZIPINC_QRTL               1102-1104   ///
      long   HOSPID                    1105-1109   ///
      int    AYEAR                     1110-1113   ///
      byte   BMONTH                    1114-1115   ///
      int    BYEAR                     1116-1119   ///
      byte   PRMONTH1                  1120-1121   ///
      byte   PRMONTH2                  1122-1123   ///
      byte   PRMONTH3                  1124-1125   ///
      byte   PRMONTH4                  1126-1127   ///
      byte   PRMONTH5                  1128-1129   ///
      byte   PRMONTH6                  1130-1131   ///
      byte   PRMONTH7                  1132-1133   ///
      byte   PRMONTH8                  1134-1135   ///
      byte   PRMONTH9                  1136-1137   ///
      byte   PRMONTH10                 1138-1139   ///
      byte   PRMONTH11                 1140-1141   ///
      byte   PRMONTH12                 1142-1143   ///
      byte   PRMONTH13                 1144-1145   ///
      byte   PRMONTH14                 1146-1147   ///
      byte   PRMONTH15                 1148-1149   ///
      byte   PRMONTH16                 1150-1151   ///
      byte   PRMONTH17                 1152-1153   ///
      byte   PRMONTH18                 1154-1155   ///
      byte   PRMONTH19                 1156-1157   ///
      byte   PRMONTH20                 1158-1159   ///
      byte   PRMONTH21                 1160-1161   ///
      byte   PRMONTH22                 1162-1163   ///
      byte   PRMONTH23                 1164-1165   ///
      byte   PRMONTH24                 1166-1167   ///
      byte   PRMONTH25                 1168-1169   ///
      int    PRYEAR1                   1170-1173   ///
      int    PRYEAR2                   1174-1177   ///
      int    PRYEAR3                   1178-1181   ///
      int    PRYEAR4                   1182-1185   ///
      int    PRYEAR5                   1186-1189   ///
      int    PRYEAR6                   1190-1193   ///
      int    PRYEAR7                   1194-1197   ///
      int    PRYEAR8                   1198-1201   ///
      int    PRYEAR9                   1202-1205   ///
      int    PRYEAR10                  1206-1209   ///
      int    PRYEAR11                  1210-1213   ///
      int    PRYEAR12                  1214-1217   ///
      int    PRYEAR13                  1218-1221   ///
      int    PRYEAR14                  1222-1225   ///
      int    PRYEAR15                  1226-1229   ///
      int    PRYEAR16                  1230-1233   ///
      int    PRYEAR17                  1234-1237   ///
      int    PRYEAR18                  1238-1241   ///
      int    PRYEAR19                  1242-1245   ///
      int    PRYEAR20                  1246-1249   ///
      int    PRYEAR21                  1250-1253   ///
      int    PRYEAR22                  1254-1257   ///
      int    PRYEAR23                  1258-1261   ///
      int    PRYEAR24                  1262-1265   ///
      int    PRYEAR25                  1266-1269   ///
      using  "KS_SID_2015q1q3_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HospitalUnit             "Patient was discharged from a special unit within an acute care hospital (reported by source)"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDC32                    "MDC, version 32"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCHRONIC                 "Number of chronic conditions"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
label var OS_TIME                  "Observation stay time summed from UNITS"
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
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDC32                     (-9 -8 -6 -5=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
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

save "KS_SID_2015q1q3_CORE.dta", replace
