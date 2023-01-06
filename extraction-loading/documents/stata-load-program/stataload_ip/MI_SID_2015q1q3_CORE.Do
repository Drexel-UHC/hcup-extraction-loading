/*****************************************************************************
* Creation Date: 07/20/2017   
* MI_SID_2015q1q3_CORE.Do
* This program will load the 2015 MI ASCII CORE File into Stata.
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
      byte   DIED                        16-  17   ///
      str    DISP_X                      18-  19   ///
      byte   DISPUB04                    20-  21   ///
      byte   DISPUNIFORM                 22-  23   ///
      byte   DMONTH                      24-  25   ///
      byte   DQTR                        26-  27   ///
      int    DRG                         28-  30   ///
      int    DRG_NoPOA                   31-  33   ///
      int    DRG32                       34-  36   ///
      byte   DRGVER                      37-  38   ///
      str    DX_Admitting                39-  45   ///
      str    DX1                         46-  52   ///
      str    DX2                         53-  59   ///
      str    DX3                         60-  66   ///
      str    DX4                         67-  73   ///
      str    DX5                         74-  80   ///
      str    DX6                         81-  87   ///
      str    DX7                         88-  94   ///
      str    DX8                         95- 101   ///
      str    DX9                        102- 108   ///
      str    DX10                       109- 115   ///
      str    DX11                       116- 122   ///
      str    DX12                       123- 129   ///
      str    DX13                       130- 136   ///
      str    DX14                       137- 143   ///
      str    DX15                       144- 150   ///
      str    DX16                       151- 157   ///
      str    DX17                       158- 164   ///
      str    DX18                       165- 171   ///
      str    DX19                       172- 178   ///
      str    DX20                       179- 185   ///
      str    DX21                       186- 192   ///
      str    DX22                       193- 199   ///
      str    DX23                       200- 206   ///
      str    DX24                       207- 213   ///
      str    DX25                       214- 220   ///
      str    DX26                       221- 227   ///
      str    DX27                       228- 234   ///
      str    DX28                       235- 241   ///
      str    DX29                       242- 248   ///
      str    DX30                       249- 255   ///
      int    DXCCS1                     256- 259   ///
      int    DXCCS2                     260- 263   ///
      int    DXCCS3                     264- 267   ///
      int    DXCCS4                     268- 271   ///
      int    DXCCS5                     272- 275   ///
      int    DXCCS6                     276- 279   ///
      int    DXCCS7                     280- 283   ///
      int    DXCCS8                     284- 287   ///
      int    DXCCS9                     288- 291   ///
      int    DXCCS10                    292- 295   ///
      int    DXCCS11                    296- 299   ///
      int    DXCCS12                    300- 303   ///
      int    DXCCS13                    304- 307   ///
      int    DXCCS14                    308- 311   ///
      int    DXCCS15                    312- 315   ///
      int    DXCCS16                    316- 319   ///
      int    DXCCS17                    320- 323   ///
      int    DXCCS18                    324- 327   ///
      int    DXCCS19                    328- 331   ///
      int    DXCCS20                    332- 335   ///
      int    DXCCS21                    336- 339   ///
      int    DXCCS22                    340- 343   ///
      int    DXCCS23                    344- 347   ///
      int    DXCCS24                    348- 351   ///
      int    DXCCS25                    352- 355   ///
      int    DXCCS26                    356- 359   ///
      int    DXCCS27                    360- 363   ///
      int    DXCCS28                    364- 367   ///
      int    DXCCS29                    368- 371   ///
      int    DXCCS30                    372- 375   ///
      str    DXPOA1                     376        ///
      str    DXPOA2                     377        ///
      str    DXPOA3                     378        ///
      str    DXPOA4                     379        ///
      str    DXPOA5                     380        ///
      str    DXPOA6                     381        ///
      str    DXPOA7                     382        ///
      str    DXPOA8                     383        ///
      str    DXPOA9                     384        ///
      str    DXPOA10                    385        ///
      str    DXPOA11                    386        ///
      str    DXPOA12                    387        ///
      str    DXPOA13                    388        ///
      str    DXPOA14                    389        ///
      str    DXPOA15                    390        ///
      str    DXPOA16                    391        ///
      str    DXPOA17                    392        ///
      str    DXPOA18                    393        ///
      str    DXPOA19                    394        ///
      str    DXPOA20                    395        ///
      str    DXPOA21                    396        ///
      str    DXPOA22                    397        ///
      str    DXPOA23                    398        ///
      str    DXPOA24                    399        ///
      str    DXPOA25                    400        ///
      str    DXPOA26                    401        ///
      str    DXPOA27                    402        ///
      str    DXPOA28                    403        ///
      str    DXPOA29                    404        ///
      str    DXPOA30                    405        ///
      int    DXVER                      406- 408   ///
      int    E_CCS1                     409- 412   ///
      int    E_CCS2                     413- 416   ///
      int    E_CCS3                     417- 420   ///
      int    E_CCS4                     421- 424   ///
      int    E_CCS5                     425- 428   ///
      int    E_CCS6                     429- 432   ///
      int    E_CCS7                     433- 436   ///
      int    E_CCS8                     437- 440   ///
      int    E_CCS9                     441- 444   ///
      int    E_CCS10                    445- 448   ///
      str    E_POA1                     449        ///
      str    E_POA2                     450        ///
      str    E_POA3                     451        ///
      str    E_POA4                     452        ///
      str    E_POA5                     453        ///
      str    E_POA6                     454        ///
      str    E_POA7                     455        ///
      str    E_POA8                     456        ///
      str    E_POA9                     457        ///
      str    E_POA10                    458        ///
      str    ECODE1                     459- 465   ///
      str    ECODE2                     466- 472   ///
      str    ECODE3                     473- 479   ///
      str    ECODE4                     480- 486   ///
      str    ECODE5                     487- 493   ///
      str    ECODE6                     494- 500   ///
      str    ECODE7                     501- 507   ///
      str    ECODE8                     508- 514   ///
      str    ECODE9                     515- 521   ///
      str    ECODE10                    522- 528   ///
      byte   FEMALE                     529- 530   ///
      byte   HCUP_ED                    531- 532   ///
      byte   HCUP_OS                    533- 534   ///
      byte   HISPANIC                   535- 536   ///
      str    HISPANIC_X                 537        ///
      int    HOSPBRTH                   538- 540   ///
      str    HOSPST                     541- 542   ///
      double KEY                        543- 557   ///
      long   LOS                        558- 562   ///
      long   LOS_X                      563- 568   ///
      byte   MDC                        569- 570   ///
      byte   MDC_NoPOA                  571- 572   ///
      byte   MDC32                      573- 574   ///
      long   MDNUM1_R                   575- 583   ///
      byte   MEDINCSTQ                  584- 585   ///
      long   MOMNUM_R                   586- 594   ///
      long   MRN_R                      595- 603   ///
      int    NCHRONIC                   604- 606   ///
      int    NDX                        607- 609   ///
      byte   NECODE                     610- 611   ///
      byte   NEOMAT                     612- 613   ///
      int    NPR                        614- 616   ///
      byte   ORPROC                     617- 618   ///
      byte   PAY1                       619- 620   ///
      str    PAY1_X                     621- 622   ///
      byte   PAY2                       623- 624   ///
      str    PAY2_X                     625- 626   ///
      int    PL_CBSA                    627- 629   ///
      byte   PL_NCHS                    630- 631   ///
      byte   PL_RUCC                    632- 633   ///
      byte   PL_UIC                     634- 635   ///
      byte   PL_UR_CAT4                 636- 637   ///
      byte   POA_Disch_Edit1            638- 639   ///
      byte   POA_Disch_Edit2            640- 641   ///
      byte   POA_Hosp_Edit1             642- 643   ///
      byte   POA_Hosp_Edit2             644- 645   ///
      byte   POA_Hosp_Edit3             646- 647   ///
      double POA_Hosp_Edit3_Value       648- 655   ///
      str    PointOfOrigin_X            656        ///
      str    PointOfOriginUB04          657        ///
      str    PR1                        658- 664   ///
      str    PR2                        665- 671   ///
      str    PR3                        672- 678   ///
      str    PR4                        679- 685   ///
      str    PR5                        686- 692   ///
      str    PR6                        693- 699   ///
      str    PR7                        700- 706   ///
      str    PR8                        707- 713   ///
      str    PR9                        714- 720   ///
      str    PR10                       721- 727   ///
      str    PR11                       728- 734   ///
      str    PR12                       735- 741   ///
      str    PR13                       742- 748   ///
      str    PR14                       749- 755   ///
      str    PR15                       756- 762   ///
      str    PR16                       763- 769   ///
      str    PR17                       770- 776   ///
      str    PR18                       777- 783   ///
      str    PR19                       784- 790   ///
      str    PR20                       791- 797   ///
      str    PR21                       798- 804   ///
      str    PR22                       805- 811   ///
      str    PR23                       812- 818   ///
      str    PR24                       819- 825   ///
      str    PR25                       826- 832   ///
      str    PR26                       833- 839   ///
      str    PR27                       840- 846   ///
      str    PR28                       847- 853   ///
      str    PR29                       854- 860   ///
      str    PR30                       861- 867   ///
      int    PRCCS1                     868- 870   ///
      int    PRCCS2                     871- 873   ///
      int    PRCCS3                     874- 876   ///
      int    PRCCS4                     877- 879   ///
      int    PRCCS5                     880- 882   ///
      int    PRCCS6                     883- 885   ///
      int    PRCCS7                     886- 888   ///
      int    PRCCS8                     889- 891   ///
      int    PRCCS9                     892- 894   ///
      int    PRCCS10                    895- 897   ///
      int    PRCCS11                    898- 900   ///
      int    PRCCS12                    901- 903   ///
      int    PRCCS13                    904- 906   ///
      int    PRCCS14                    907- 909   ///
      int    PRCCS15                    910- 912   ///
      int    PRCCS16                    913- 915   ///
      int    PRCCS17                    916- 918   ///
      int    PRCCS18                    919- 921   ///
      int    PRCCS19                    922- 924   ///
      int    PRCCS20                    925- 927   ///
      int    PRCCS21                    928- 930   ///
      int    PRCCS22                    931- 933   ///
      int    PRCCS23                    934- 936   ///
      int    PRCCS24                    937- 939   ///
      int    PRCCS25                    940- 942   ///
      int    PRCCS26                    943- 945   ///
      int    PRCCS27                    946- 948   ///
      int    PRCCS28                    949- 951   ///
      int    PRCCS29                    952- 954   ///
      int    PRCCS30                    955- 957   ///
      long   PRDAY1                     958- 962   ///
      long   PRDAY2                     963- 967   ///
      long   PRDAY3                     968- 972   ///
      long   PRDAY4                     973- 977   ///
      long   PRDAY5                     978- 982   ///
      long   PRDAY6                     983- 987   ///
      long   PRDAY7                     988- 992   ///
      long   PRDAY8                     993- 997   ///
      long   PRDAY9                     998-1002   ///
      long   PRDAY10                   1003-1007   ///
      long   PRDAY11                   1008-1012   ///
      long   PRDAY12                   1013-1017   ///
      long   PRDAY13                   1018-1022   ///
      long   PRDAY14                   1023-1027   ///
      long   PRDAY15                   1028-1032   ///
      long   PRDAY16                   1033-1037   ///
      long   PRDAY17                   1038-1042   ///
      long   PRDAY18                   1043-1047   ///
      long   PRDAY19                   1048-1052   ///
      long   PRDAY20                   1053-1057   ///
      long   PRDAY21                   1058-1062   ///
      long   PRDAY22                   1063-1067   ///
      long   PRDAY23                   1068-1072   ///
      long   PRDAY24                   1073-1077   ///
      long   PRDAY25                   1078-1082   ///
      long   PRDAY26                   1083-1087   ///
      long   PRDAY27                   1088-1092   ///
      long   PRDAY28                   1093-1097   ///
      long   PRDAY29                   1098-1102   ///
      long   PRDAY30                   1103-1107   ///
      int    PROCTYPE                  1108-1110   ///
      int    PRVER                     1111-1113   ///
      str    PSTATE                    1114-1115   ///
      long   PSTCO2                    1116-1120   ///
      byte   RACE                      1121-1122   ///
      str    RACE_X                    1123        ///
      byte   SERVICELINE               1124-1125   ///
      double TOTCHG                    1126-1135   ///
      double TOTCHG_X                  1136-1150   ///
      byte   TRAN_IN                   1151-1152   ///
      byte   TRAN_OUT                  1153-1154   ///
      int    YEAR                      1155-1158   ///
      str    ZIP                       1159-1163   ///
      str    ZIP3                      1164-1166   ///
      int    ZIPINC_QRTL               1167-1169   ///
      long   HOSPID                    1170-1174   ///
      int    AYEAR                     1175-1178   ///
      byte   BMONTH                    1179-1180   ///
      int    BYEAR                     1181-1184   ///
      byte   PRMONTH1                  1185-1186   ///
      byte   PRMONTH2                  1187-1188   ///
      byte   PRMONTH3                  1189-1190   ///
      byte   PRMONTH4                  1191-1192   ///
      byte   PRMONTH5                  1193-1194   ///
      byte   PRMONTH6                  1195-1196   ///
      byte   PRMONTH7                  1197-1198   ///
      byte   PRMONTH8                  1199-1200   ///
      byte   PRMONTH9                  1201-1202   ///
      byte   PRMONTH10                 1203-1204   ///
      byte   PRMONTH11                 1205-1206   ///
      byte   PRMONTH12                 1207-1208   ///
      byte   PRMONTH13                 1209-1210   ///
      byte   PRMONTH14                 1211-1212   ///
      byte   PRMONTH15                 1213-1214   ///
      byte   PRMONTH16                 1215-1216   ///
      byte   PRMONTH17                 1217-1218   ///
      byte   PRMONTH18                 1219-1220   ///
      byte   PRMONTH19                 1221-1222   ///
      byte   PRMONTH20                 1223-1224   ///
      byte   PRMONTH21                 1225-1226   ///
      byte   PRMONTH22                 1227-1228   ///
      byte   PRMONTH23                 1229-1230   ///
      byte   PRMONTH24                 1231-1232   ///
      byte   PRMONTH25                 1233-1234   ///
      byte   PRMONTH26                 1235-1236   ///
      byte   PRMONTH27                 1237-1238   ///
      byte   PRMONTH28                 1239-1240   ///
      byte   PRMONTH29                 1241-1242   ///
      byte   PRMONTH30                 1243-1244   ///
      int    PRYEAR1                   1245-1248   ///
      int    PRYEAR2                   1249-1252   ///
      int    PRYEAR3                   1253-1256   ///
      int    PRYEAR4                   1257-1260   ///
      int    PRYEAR5                   1261-1264   ///
      int    PRYEAR6                   1265-1268   ///
      int    PRYEAR7                   1269-1272   ///
      int    PRYEAR8                   1273-1276   ///
      int    PRYEAR9                   1277-1280   ///
      int    PRYEAR10                  1281-1284   ///
      int    PRYEAR11                  1285-1288   ///
      int    PRYEAR12                  1289-1292   ///
      int    PRYEAR13                  1293-1296   ///
      int    PRYEAR14                  1297-1300   ///
      int    PRYEAR15                  1301-1304   ///
      int    PRYEAR16                  1305-1308   ///
      int    PRYEAR17                  1309-1312   ///
      int    PRYEAR18                  1313-1316   ///
      int    PRYEAR19                  1317-1320   ///
      int    PRYEAR20                  1321-1324   ///
      int    PRYEAR21                  1325-1328   ///
      int    PRYEAR22                  1329-1332   ///
      int    PRYEAR23                  1333-1336   ///
      int    PRYEAR24                  1337-1340   ///
      int    PRYEAR25                  1341-1344   ///
      int    PRYEAR26                  1345-1348   ///
      int    PRYEAR27                  1349-1352   ///
      int    PRYEAR28                  1353-1356   ///
      int    PRYEAR29                  1357-1360   ///
      int    PRYEAR30                  1361-1364   ///
      using  "MI_SID_2015q1q3_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
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
label var DX_Admitting             "Admitting Diagnosis Code"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDC32                    "MDC, version 32"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MOMNUM_R                 "Mother's number (re-identified)"
label var MRN_R                    "Medical record number (re-identified)"
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
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
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
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDC32                     (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MOMNUM_R                  (-99999999 -88888888 -66666666=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
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

save "MI_SID_2015q1q3_CORE.dta", replace
