/*****************************************************************************
* Creation Date: 06/20/2018   
* NY_SEDD_2015q1q3_CORE.Do
* This program will load the 2015 NY ASCII CORE File into Stata.
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
      int    ANESTH                      16-  18   ///
      byte   AWEEKEND                    19-  20   ///
      str    BILLTYPE                    21-  24   ///
      str    CPT1                        25-  29   ///
      str    CPT2                        30-  34   ///
      str    CPT3                        35-  39   ///
      str    CPT4                        40-  44   ///
      str    CPT5                        45-  49   ///
      str    CPT6                        50-  54   ///
      str    CPT7                        55-  59   ///
      str    CPT8                        60-  64   ///
      str    CPT9                        65-  69   ///
      str    CPT10                       70-  74   ///
      str    CPT11                       75-  79   ///
      str    CPT12                       80-  84   ///
      str    CPT13                       85-  89   ///
      str    CPT14                       90-  94   ///
      str    CPT15                       95-  99   ///
      str    CPT16                      100- 104   ///
      str    CPT17                      105- 109   ///
      str    CPT18                      110- 114   ///
      str    CPT19                      115- 119   ///
      str    CPT20                      120- 124   ///
      str    CPT21                      125- 129   ///
      str    CPT22                      130- 134   ///
      str    CPT23                      135- 139   ///
      str    CPT24                      140- 144   ///
      str    CPT25                      145- 149   ///
      str    CPT26                      150- 154   ///
      str    CPT27                      155- 159   ///
      str    CPT28                      160- 164   ///
      str    CPT29                      165- 169   ///
      str    CPT30                      170- 174   ///
      str    CPT31                      175- 179   ///
      str    CPT32                      180- 184   ///
      str    CPT33                      185- 189   ///
      str    CPT34                      190- 194   ///
      str    CPT35                      195- 199   ///
      str    CPT36                      200- 204   ///
      str    CPT37                      205- 209   ///
      str    CPT38                      210- 214   ///
      str    CPT39                      215- 219   ///
      str    CPT40                      220- 224   ///
      str    CPT41                      225- 229   ///
      str    CPT42                      230- 234   ///
      str    CPT43                      235- 239   ///
      str    CPT44                      240- 244   ///
      str    CPT45                      245- 249   ///
      str    CPT46                      250- 254   ///
      str    CPT47                      255- 259   ///
      str    CPT48                      260- 264   ///
      str    CPT49                      265- 269   ///
      str    CPT50                      270- 274   ///
      int    CPTCCS1                    275- 277   ///
      int    CPTCCS2                    278- 280   ///
      int    CPTCCS3                    281- 283   ///
      int    CPTCCS4                    284- 286   ///
      int    CPTCCS5                    287- 289   ///
      int    CPTCCS6                    290- 292   ///
      int    CPTCCS7                    293- 295   ///
      int    CPTCCS8                    296- 298   ///
      int    CPTCCS9                    299- 301   ///
      int    CPTCCS10                   302- 304   ///
      int    CPTCCS11                   305- 307   ///
      int    CPTCCS12                   308- 310   ///
      int    CPTCCS13                   311- 313   ///
      int    CPTCCS14                   314- 316   ///
      int    CPTCCS15                   317- 319   ///
      int    CPTCCS16                   320- 322   ///
      int    CPTCCS17                   323- 325   ///
      int    CPTCCS18                   326- 328   ///
      int    CPTCCS19                   329- 331   ///
      int    CPTCCS20                   332- 334   ///
      int    CPTCCS21                   335- 337   ///
      int    CPTCCS22                   338- 340   ///
      int    CPTCCS23                   341- 343   ///
      int    CPTCCS24                   344- 346   ///
      int    CPTCCS25                   347- 349   ///
      int    CPTCCS26                   350- 352   ///
      int    CPTCCS27                   353- 355   ///
      int    CPTCCS28                   356- 358   ///
      int    CPTCCS29                   359- 361   ///
      int    CPTCCS30                   362- 364   ///
      int    CPTCCS31                   365- 367   ///
      int    CPTCCS32                   368- 370   ///
      int    CPTCCS33                   371- 373   ///
      int    CPTCCS34                   374- 376   ///
      int    CPTCCS35                   377- 379   ///
      int    CPTCCS36                   380- 382   ///
      int    CPTCCS37                   383- 385   ///
      int    CPTCCS38                   386- 388   ///
      int    CPTCCS39                   389- 391   ///
      int    CPTCCS40                   392- 394   ///
      int    CPTCCS41                   395- 397   ///
      int    CPTCCS42                   398- 400   ///
      int    CPTCCS43                   401- 403   ///
      int    CPTCCS44                   404- 406   ///
      int    CPTCCS45                   407- 409   ///
      int    CPTCCS46                   410- 412   ///
      int    CPTCCS47                   413- 415   ///
      int    CPTCCS48                   416- 418   ///
      int    CPTCCS49                   419- 421   ///
      int    CPTCCS50                   422- 424   ///
      int    CPTDAY1                    425- 427   ///
      int    CPTDAY2                    428- 430   ///
      int    CPTDAY3                    431- 433   ///
      int    CPTDAY4                    434- 436   ///
      int    CPTDAY5                    437- 439   ///
      int    CPTDAY6                    440- 442   ///
      int    CPTDAY7                    443- 445   ///
      int    CPTDAY8                    446- 448   ///
      int    CPTDAY9                    449- 451   ///
      int    CPTDAY10                   452- 454   ///
      int    CPTDAY11                   455- 457   ///
      int    CPTDAY12                   458- 460   ///
      int    CPTDAY13                   461- 463   ///
      int    CPTDAY14                   464- 466   ///
      int    CPTDAY15                   467- 469   ///
      int    CPTDAY16                   470- 472   ///
      int    CPTDAY17                   473- 475   ///
      int    CPTDAY18                   476- 478   ///
      int    CPTDAY19                   479- 481   ///
      int    CPTDAY20                   482- 484   ///
      int    CPTDAY21                   485- 487   ///
      int    CPTDAY22                   488- 490   ///
      int    CPTDAY23                   491- 493   ///
      int    CPTDAY24                   494- 496   ///
      int    CPTDAY25                   497- 499   ///
      int    CPTDAY26                   500- 502   ///
      int    CPTDAY27                   503- 505   ///
      int    CPTDAY28                   506- 508   ///
      int    CPTDAY29                   509- 511   ///
      int    CPTDAY30                   512- 514   ///
      int    CPTDAY31                   515- 517   ///
      int    CPTDAY32                   518- 520   ///
      int    CPTDAY33                   521- 523   ///
      int    CPTDAY34                   524- 526   ///
      int    CPTDAY35                   527- 529   ///
      int    CPTDAY36                   530- 532   ///
      int    CPTDAY37                   533- 535   ///
      int    CPTDAY38                   536- 538   ///
      int    CPTDAY39                   539- 541   ///
      int    CPTDAY40                   542- 544   ///
      int    CPTDAY41                   545- 547   ///
      int    CPTDAY42                   548- 550   ///
      int    CPTDAY43                   551- 553   ///
      int    CPTDAY44                   554- 556   ///
      int    CPTDAY45                   557- 559   ///
      int    CPTDAY46                   560- 562   ///
      int    CPTDAY47                   563- 565   ///
      int    CPTDAY48                   566- 568   ///
      int    CPTDAY49                   569- 571   ///
      int    CPTDAY50                   572- 574   ///
      str    CPTM1_1                    575- 576   ///
      str    CPTM1_2                    577- 578   ///
      str    CPTM1_3                    579- 580   ///
      str    CPTM1_4                    581- 582   ///
      str    CPTM1_5                    583- 584   ///
      str    CPTM1_6                    585- 586   ///
      str    CPTM1_7                    587- 588   ///
      str    CPTM1_8                    589- 590   ///
      str    CPTM1_9                    591- 592   ///
      str    CPTM1_10                   593- 594   ///
      str    CPTM1_11                   595- 596   ///
      str    CPTM1_12                   597- 598   ///
      str    CPTM1_13                   599- 600   ///
      str    CPTM1_14                   601- 602   ///
      str    CPTM1_15                   603- 604   ///
      str    CPTM1_16                   605- 606   ///
      str    CPTM1_17                   607- 608   ///
      str    CPTM1_18                   609- 610   ///
      str    CPTM1_19                   611- 612   ///
      str    CPTM1_20                   613- 614   ///
      str    CPTM1_21                   615- 616   ///
      str    CPTM1_22                   617- 618   ///
      str    CPTM1_23                   619- 620   ///
      str    CPTM1_24                   621- 622   ///
      str    CPTM1_25                   623- 624   ///
      str    CPTM1_26                   625- 626   ///
      str    CPTM1_27                   627- 628   ///
      str    CPTM1_28                   629- 630   ///
      str    CPTM1_29                   631- 632   ///
      str    CPTM1_30                   633- 634   ///
      str    CPTM1_31                   635- 636   ///
      str    CPTM1_32                   637- 638   ///
      str    CPTM1_33                   639- 640   ///
      str    CPTM1_34                   641- 642   ///
      str    CPTM1_35                   643- 644   ///
      str    CPTM1_36                   645- 646   ///
      str    CPTM1_37                   647- 648   ///
      str    CPTM1_38                   649- 650   ///
      str    CPTM1_39                   651- 652   ///
      str    CPTM1_40                   653- 654   ///
      str    CPTM1_41                   655- 656   ///
      str    CPTM1_42                   657- 658   ///
      str    CPTM1_43                   659- 660   ///
      str    CPTM1_44                   661- 662   ///
      str    CPTM1_45                   663- 664   ///
      str    CPTM1_46                   665- 666   ///
      str    CPTM1_47                   667- 668   ///
      str    CPTM1_48                   669- 670   ///
      str    CPTM1_49                   671- 672   ///
      str    CPTM1_50                   673- 674   ///
      str    CPTM2_1                    675- 676   ///
      str    CPTM2_2                    677- 678   ///
      str    CPTM2_3                    679- 680   ///
      str    CPTM2_4                    681- 682   ///
      str    CPTM2_5                    683- 684   ///
      str    CPTM2_6                    685- 686   ///
      str    CPTM2_7                    687- 688   ///
      str    CPTM2_8                    689- 690   ///
      str    CPTM2_9                    691- 692   ///
      str    CPTM2_10                   693- 694   ///
      str    CPTM2_11                   695- 696   ///
      str    CPTM2_12                   697- 698   ///
      str    CPTM2_13                   699- 700   ///
      str    CPTM2_14                   701- 702   ///
      str    CPTM2_15                   703- 704   ///
      str    CPTM2_16                   705- 706   ///
      str    CPTM2_17                   707- 708   ///
      str    CPTM2_18                   709- 710   ///
      str    CPTM2_19                   711- 712   ///
      str    CPTM2_20                   713- 714   ///
      str    CPTM2_21                   715- 716   ///
      str    CPTM2_22                   717- 718   ///
      str    CPTM2_23                   719- 720   ///
      str    CPTM2_24                   721- 722   ///
      str    CPTM2_25                   723- 724   ///
      str    CPTM2_26                   725- 726   ///
      str    CPTM2_27                   727- 728   ///
      str    CPTM2_28                   729- 730   ///
      str    CPTM2_29                   731- 732   ///
      str    CPTM2_30                   733- 734   ///
      str    CPTM2_31                   735- 736   ///
      str    CPTM2_32                   737- 738   ///
      str    CPTM2_33                   739- 740   ///
      str    CPTM2_34                   741- 742   ///
      str    CPTM2_35                   743- 744   ///
      str    CPTM2_36                   745- 746   ///
      str    CPTM2_37                   747- 748   ///
      str    CPTM2_38                   749- 750   ///
      str    CPTM2_39                   751- 752   ///
      str    CPTM2_40                   753- 754   ///
      str    CPTM2_41                   755- 756   ///
      str    CPTM2_42                   757- 758   ///
      str    CPTM2_43                   759- 760   ///
      str    CPTM2_44                   761- 762   ///
      str    CPTM2_45                   763- 764   ///
      str    CPTM2_46                   765- 766   ///
      str    CPTM2_47                   767- 768   ///
      str    CPTM2_48                   769- 770   ///
      str    CPTM2_49                   771- 772   ///
      str    CPTM2_50                   773- 774   ///
      long   DaysToEvent                775- 780   ///
      int    DHOUR                      781- 784   ///
      byte   DIED                       785- 786   ///
      str    DISP_X                     787- 788   ///
      byte   DISPUB04                   789- 790   ///
      byte   DISPUNIFORM                791- 792   ///
      byte   DMONTH                     793- 794   ///
      byte   DQTR                       795- 796   ///
      str    DSHOSPID                   797- 813   ///
      long   DURATION                   814- 819   ///
      str    DX_Visit_Reason1           820- 826   ///
      str    DX1                        827- 833   ///
      str    DX2                        834- 840   ///
      str    DX3                        841- 847   ///
      str    DX4                        848- 854   ///
      str    DX5                        855- 861   ///
      str    DX6                        862- 868   ///
      str    DX7                        869- 875   ///
      str    DX8                        876- 882   ///
      str    DX9                        883- 889   ///
      str    DX10                       890- 896   ///
      str    DX11                       897- 903   ///
      str    DX12                       904- 910   ///
      str    DX13                       911- 917   ///
      str    DX14                       918- 924   ///
      str    DX15                       925- 931   ///
      str    DX16                       932- 938   ///
      str    DX17                       939- 945   ///
      str    DX18                       946- 952   ///
      str    DX19                       953- 959   ///
      str    DX20                       960- 966   ///
      str    DX21                       967- 973   ///
      str    DX22                       974- 980   ///
      str    DX23                       981- 987   ///
      str    DX24                       988- 994   ///
      str    DX25                       995-1001   ///
      int    DXCCS1                    1002-1005   ///
      int    DXCCS2                    1006-1009   ///
      int    DXCCS3                    1010-1013   ///
      int    DXCCS4                    1014-1017   ///
      int    DXCCS5                    1018-1021   ///
      int    DXCCS6                    1022-1025   ///
      int    DXCCS7                    1026-1029   ///
      int    DXCCS8                    1030-1033   ///
      int    DXCCS9                    1034-1037   ///
      int    DXCCS10                   1038-1041   ///
      int    DXCCS11                   1042-1045   ///
      int    DXCCS12                   1046-1049   ///
      int    DXCCS13                   1050-1053   ///
      int    DXCCS14                   1054-1057   ///
      int    DXCCS15                   1058-1061   ///
      int    DXCCS16                   1062-1065   ///
      int    DXCCS17                   1066-1069   ///
      int    DXCCS18                   1070-1073   ///
      int    DXCCS19                   1074-1077   ///
      int    DXCCS20                   1078-1081   ///
      int    DXCCS21                   1082-1085   ///
      int    DXCCS22                   1086-1089   ///
      int    DXCCS23                   1090-1093   ///
      int    DXCCS24                   1094-1097   ///
      int    DXCCS25                   1098-1101   ///
      int    DXVER                     1102-1104   ///
      int    E_CCS1                    1105-1108   ///
      int    E_CCS2                    1109-1112   ///
      int    E_CCS3                    1113-1116   ///
      int    E_CCS4                    1117-1120   ///
      int    E_CCS5                    1121-1124   ///
      int    E_CCS6                    1125-1128   ///
      int    E_CCS7                    1129-1132   ///
      int    E_CCS8                    1133-1136   ///
      int    E_CCS9                    1137-1140   ///
      str    ECODE1                    1141-1147   ///
      str    ECODE2                    1148-1154   ///
      str    ECODE3                    1155-1161   ///
      str    ECODE4                    1162-1168   ///
      str    ECODE5                    1169-1175   ///
      str    ECODE6                    1176-1182   ///
      str    ECODE7                    1183-1189   ///
      str    ECODE8                    1190-1196   ///
      str    ECODE9                    1197-1203   ///
      byte   FEMALE                    1204-1205   ///
      byte   HCUP_ED                   1206-1207   ///
      byte   HCUP_OS                   1208-1209   ///
      byte   HISPANIC                  1210-1211   ///
      str    HISPANIC_X                1212        ///
      byte   Homeless                  1213-1214   ///
      int    HOSPBRTH                  1215-1217   ///
      str    HOSPST                    1218-1219   ///
      double KEY                       1220-1234   ///
      long   LOS                       1235-1239   ///
      long   LOS_X                     1240-1245   ///
      long   MDNUM1_R                  1246-1254   ///
      long   MDNUM2_R                  1255-1263   ///
      byte   MEDINCSTQ                 1264-1265   ///
      int    NCHRONIC                  1266-1268   ///
      int    NCPT                      1269-1272   ///
      int    NDX                       1273-1275   ///
      byte   NECODE                    1276-1277   ///
      byte   NEOMAT                    1278-1279   ///
      str    OPservice                 1280        ///
      int    ORTIME                    1281-1284   ///
      double OS_TIME                   1285-1295   ///
      byte   PAY1                      1296-1297   ///
      str    PAY1_X                    1298-1299   ///
      byte   PAY2                      1300-1301   ///
      str    PAY2_X                    1302        ///
      byte   PAY3                      1303-1304   ///
      str    PAY3_X                    1305        ///
      str    PAYER1_X                  1306-1310   ///
      str    PAYER2_X                  1311-1315   ///
      int    PL_CBSA                   1316-1318   ///
      byte   PL_NCHS                   1319-1320   ///
      byte   PL_RUCC                   1321-1322   ///
      byte   PL_UIC                    1323-1324   ///
      byte   PL_UR_CAT4                1325-1326   ///
      int    PROCTYPE                  1327-1329   ///
      str    PSTATE                    1330-1331   ///
      long   PSTCO                     1332-1336   ///
      long   PSTCO2                    1337-1341   ///
      byte   RACE                      1342-1343   ///
      str    RACE_X                    1344-1345   ///
      byte   STATE_AS                  1346-1347   ///
      byte   STATE_ED                  1348-1349   ///
      byte   STATE_OS                  1350-1351   ///
      double TOTCHG                    1352-1361   ///
      double TOTCHG_X                  1362-1376   ///
      long   VisitLink                 1377-1385   ///
      int    YEAR                      1386-1389   ///
      str    ZIP                       1390-1394   ///
      str    ZIP3                      1395-1397   ///
      int    ZIPINC_QRTL               1398-1400   ///
      int    AYEAR                     1401-1404   ///
      byte   BMONTH                    1405-1406   ///
      int    BYEAR                     1407-1410   ///
      using  "NY_SEDD_2015q1q3_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ANESTH                   "Method of anesthesia"
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
label var CPTDAY12                 "Number of days from admission to CPT12"
label var CPTDAY13                 "Number of days from admission to CPT13"
label var CPTDAY14                 "Number of days from admission to CPT14"
label var CPTDAY15                 "Number of days from admission to CPT15"
label var CPTDAY16                 "Number of days from admission to CPT16"
label var CPTDAY17                 "Number of days from admission to CPT17"
label var CPTDAY18                 "Number of days from admission to CPT18"
label var CPTDAY19                 "Number of days from admission to CPT19"
label var CPTDAY20                 "Number of days from admission to CPT20"
label var CPTDAY21                 "Number of days from admission to CPT21"
label var CPTDAY22                 "Number of days from admission to CPT22"
label var CPTDAY23                 "Number of days from admission to CPT23"
label var CPTDAY24                 "Number of days from admission to CPT24"
label var CPTDAY25                 "Number of days from admission to CPT25"
label var CPTDAY26                 "Number of days from admission to CPT26"
label var CPTDAY27                 "Number of days from admission to CPT27"
label var CPTDAY28                 "Number of days from admission to CPT28"
label var CPTDAY29                 "Number of days from admission to CPT29"
label var CPTDAY30                 "Number of days from admission to CPT30"
label var CPTDAY31                 "Number of days from admission to CPT31"
label var CPTDAY32                 "Number of days from admission to CPT32"
label var CPTDAY33                 "Number of days from admission to CPT33"
label var CPTDAY34                 "Number of days from admission to CPT34"
label var CPTDAY35                 "Number of days from admission to CPT35"
label var CPTDAY36                 "Number of days from admission to CPT36"
label var CPTDAY37                 "Number of days from admission to CPT37"
label var CPTDAY38                 "Number of days from admission to CPT38"
label var CPTDAY39                 "Number of days from admission to CPT39"
label var CPTDAY40                 "Number of days from admission to CPT40"
label var CPTDAY41                 "Number of days from admission to CPT41"
label var CPTDAY42                 "Number of days from admission to CPT42"
label var CPTDAY43                 "Number of days from admission to CPT43"
label var CPTDAY44                 "Number of days from admission to CPT44"
label var CPTDAY45                 "Number of days from admission to CPT45"
label var CPTDAY46                 "Number of days from admission to CPT46"
label var CPTDAY47                 "Number of days from admission to CPT47"
label var CPTDAY48                 "Number of days from admission to CPT48"
label var CPTDAY49                 "Number of days from admission to CPT49"
label var CPTDAY50                 "Number of days from admission to CPT50"
label var CPTM1_1                  "First CPT-4/HCPCS modifier 1"
label var CPTM1_2                  "First CPT-4/HCPCS modifier 2"
label var CPTM1_3                  "First CPT-4/HCPCS modifier 3"
label var CPTM1_4                  "First CPT-4/HCPCS modifier 4"
label var CPTM1_5                  "First CPT-4/HCPCS modifier 5"
label var CPTM1_6                  "First CPT-4/HCPCS modifier 6"
label var CPTM1_7                  "First CPT-4/HCPCS modifier 7"
label var CPTM1_8                  "First CPT-4/HCPCS modifier 8"
label var CPTM1_9                  "First CPT-4/HCPCS modifier 9"
label var CPTM1_10                 "First CPT-4/HCPCS modifier 10"
label var CPTM1_11                 "First CPT-4/HCPCS modifier 11"
label var CPTM1_12                 "First CPT-4/HCPCS modifier 12"
label var CPTM1_13                 "First CPT-4/HCPCS modifier 13"
label var CPTM1_14                 "First CPT-4/HCPCS modifier 14"
label var CPTM1_15                 "First CPT-4/HCPCS modifier 15"
label var CPTM1_16                 "First CPT-4/HCPCS modifier 16"
label var CPTM1_17                 "First CPT-4/HCPCS modifier 17"
label var CPTM1_18                 "First CPT-4/HCPCS modifier 18"
label var CPTM1_19                 "First CPT-4/HCPCS modifier 19"
label var CPTM1_20                 "First CPT-4/HCPCS modifier 20"
label var CPTM1_21                 "First CPT-4/HCPCS modifier 21"
label var CPTM1_22                 "First CPT-4/HCPCS modifier 22"
label var CPTM1_23                 "First CPT-4/HCPCS modifier 23"
label var CPTM1_24                 "First CPT-4/HCPCS modifier 24"
label var CPTM1_25                 "First CPT-4/HCPCS modifier 25"
label var CPTM1_26                 "First CPT-4/HCPCS modifier 26"
label var CPTM1_27                 "First CPT-4/HCPCS modifier 27"
label var CPTM1_28                 "First CPT-4/HCPCS modifier 28"
label var CPTM1_29                 "First CPT-4/HCPCS modifier 29"
label var CPTM1_30                 "First CPT-4/HCPCS modifier 30"
label var CPTM1_31                 "First CPT-4/HCPCS modifier 31"
label var CPTM1_32                 "First CPT-4/HCPCS modifier 32"
label var CPTM1_33                 "First CPT-4/HCPCS modifier 33"
label var CPTM1_34                 "First CPT-4/HCPCS modifier 34"
label var CPTM1_35                 "First CPT-4/HCPCS modifier 35"
label var CPTM1_36                 "First CPT-4/HCPCS modifier 36"
label var CPTM1_37                 "First CPT-4/HCPCS modifier 37"
label var CPTM1_38                 "First CPT-4/HCPCS modifier 38"
label var CPTM1_39                 "First CPT-4/HCPCS modifier 39"
label var CPTM1_40                 "First CPT-4/HCPCS modifier 40"
label var CPTM1_41                 "First CPT-4/HCPCS modifier 41"
label var CPTM1_42                 "First CPT-4/HCPCS modifier 42"
label var CPTM1_43                 "First CPT-4/HCPCS modifier 43"
label var CPTM1_44                 "First CPT-4/HCPCS modifier 44"
label var CPTM1_45                 "First CPT-4/HCPCS modifier 45"
label var CPTM1_46                 "First CPT-4/HCPCS modifier 46"
label var CPTM1_47                 "First CPT-4/HCPCS modifier 47"
label var CPTM1_48                 "First CPT-4/HCPCS modifier 48"
label var CPTM1_49                 "First CPT-4/HCPCS modifier 49"
label var CPTM1_50                 "First CPT-4/HCPCS modifier 50"
label var CPTM2_1                  "Second CPT-4/HCPCS modifier 1"
label var CPTM2_2                  "Second CPT-4/HCPCS modifier 2"
label var CPTM2_3                  "Second CPT-4/HCPCS modifier 3"
label var CPTM2_4                  "Second CPT-4/HCPCS modifier 4"
label var CPTM2_5                  "Second CPT-4/HCPCS modifier 5"
label var CPTM2_6                  "Second CPT-4/HCPCS modifier 6"
label var CPTM2_7                  "Second CPT-4/HCPCS modifier 7"
label var CPTM2_8                  "Second CPT-4/HCPCS modifier 8"
label var CPTM2_9                  "Second CPT-4/HCPCS modifier 9"
label var CPTM2_10                 "Second CPT-4/HCPCS modifier 10"
label var CPTM2_11                 "Second CPT-4/HCPCS modifier 11"
label var CPTM2_12                 "Second CPT-4/HCPCS modifier 12"
label var CPTM2_13                 "Second CPT-4/HCPCS modifier 13"
label var CPTM2_14                 "Second CPT-4/HCPCS modifier 14"
label var CPTM2_15                 "Second CPT-4/HCPCS modifier 15"
label var CPTM2_16                 "Second CPT-4/HCPCS modifier 16"
label var CPTM2_17                 "Second CPT-4/HCPCS modifier 17"
label var CPTM2_18                 "Second CPT-4/HCPCS modifier 18"
label var CPTM2_19                 "Second CPT-4/HCPCS modifier 19"
label var CPTM2_20                 "Second CPT-4/HCPCS modifier 20"
label var CPTM2_21                 "Second CPT-4/HCPCS modifier 21"
label var CPTM2_22                 "Second CPT-4/HCPCS modifier 22"
label var CPTM2_23                 "Second CPT-4/HCPCS modifier 23"
label var CPTM2_24                 "Second CPT-4/HCPCS modifier 24"
label var CPTM2_25                 "Second CPT-4/HCPCS modifier 25"
label var CPTM2_26                 "Second CPT-4/HCPCS modifier 26"
label var CPTM2_27                 "Second CPT-4/HCPCS modifier 27"
label var CPTM2_28                 "Second CPT-4/HCPCS modifier 28"
label var CPTM2_29                 "Second CPT-4/HCPCS modifier 29"
label var CPTM2_30                 "Second CPT-4/HCPCS modifier 30"
label var CPTM2_31                 "Second CPT-4/HCPCS modifier 31"
label var CPTM2_32                 "Second CPT-4/HCPCS modifier 32"
label var CPTM2_33                 "Second CPT-4/HCPCS modifier 33"
label var CPTM2_34                 "Second CPT-4/HCPCS modifier 34"
label var CPTM2_35                 "Second CPT-4/HCPCS modifier 35"
label var CPTM2_36                 "Second CPT-4/HCPCS modifier 36"
label var CPTM2_37                 "Second CPT-4/HCPCS modifier 37"
label var CPTM2_38                 "Second CPT-4/HCPCS modifier 38"
label var CPTM2_39                 "Second CPT-4/HCPCS modifier 39"
label var CPTM2_40                 "Second CPT-4/HCPCS modifier 40"
label var CPTM2_41                 "Second CPT-4/HCPCS modifier 41"
label var CPTM2_42                 "Second CPT-4/HCPCS modifier 42"
label var CPTM2_43                 "Second CPT-4/HCPCS modifier 43"
label var CPTM2_44                 "Second CPT-4/HCPCS modifier 44"
label var CPTM2_45                 "Second CPT-4/HCPCS modifier 45"
label var CPTM2_46                 "Second CPT-4/HCPCS modifier 46"
label var CPTM2_47                 "Second CPT-4/HCPCS modifier 47"
label var CPTM2_48                 "Second CPT-4/HCPCS modifier 48"
label var CPTM2_49                 "Second CPT-4/HCPCS modifier 49"
label var CPTM2_50                 "Second CPT-4/HCPCS modifier 50"
label var DaysToEvent              "Days from 'start date' to admission"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DSHOSPID                 "Data source hospital identifier"
label var DURATION                 "Elapsed time for hospital care in hours and minutes"
label var DX_Visit_Reason1         "Reason for visit diagnosis 1"
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
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCHRONIC                 "Number of chronic conditions"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var OPservice                "Indicator of outpatient service (as received from source)"
label var ORTIME                   "Operating room time in minutes"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
label var PAY3                     "Tertiary expected payer (uniform)"
label var PAY3_X                   "Tertiary expected payer (as received from source)"
label var PAYER1_X                 "Primary expected payer plan identifier (as received from source)"
label var PAYER2_X                 "Secondary expected payer plan identifier (as received from source)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes(RUCC)"
label var PL_UIC                   "Patient location: Urban Influence Codes"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
label var PROCTYPE                 "Procedure type indicator"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
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
label var AYEAR                    "Admission year"
label var BMONTH                   "Birth month"
label var BYEAR                    "Birth year"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ANESTH                    (-99 -88 -66=.)
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
recode CPTDAY12                  (-99 -88 -66=.)
recode CPTDAY13                  (-99 -88 -66=.)
recode CPTDAY14                  (-99 -88 -66=.)
recode CPTDAY15                  (-99 -88 -66=.)
recode CPTDAY16                  (-99 -88 -66=.)
recode CPTDAY17                  (-99 -88 -66=.)
recode CPTDAY18                  (-99 -88 -66=.)
recode CPTDAY19                  (-99 -88 -66=.)
recode CPTDAY20                  (-99 -88 -66=.)
recode CPTDAY21                  (-99 -88 -66=.)
recode CPTDAY22                  (-99 -88 -66=.)
recode CPTDAY23                  (-99 -88 -66=.)
recode CPTDAY24                  (-99 -88 -66=.)
recode CPTDAY25                  (-99 -88 -66=.)
recode CPTDAY26                  (-99 -88 -66=.)
recode CPTDAY27                  (-99 -88 -66=.)
recode CPTDAY28                  (-99 -88 -66=.)
recode CPTDAY29                  (-99 -88 -66=.)
recode CPTDAY30                  (-99 -88 -66=.)
recode CPTDAY31                  (-99 -88 -66=.)
recode CPTDAY32                  (-99 -88 -66=.)
recode CPTDAY33                  (-99 -88 -66=.)
recode CPTDAY34                  (-99 -88 -66=.)
recode CPTDAY35                  (-99 -88 -66=.)
recode CPTDAY36                  (-99 -88 -66=.)
recode CPTDAY37                  (-99 -88 -66=.)
recode CPTDAY38                  (-99 -88 -66=.)
recode CPTDAY39                  (-99 -88 -66=.)
recode CPTDAY40                  (-99 -88 -66=.)
recode CPTDAY41                  (-99 -88 -66=.)
recode CPTDAY42                  (-99 -88 -66=.)
recode CPTDAY43                  (-99 -88 -66=.)
recode CPTDAY44                  (-99 -88 -66=.)
recode CPTDAY45                  (-99 -88 -66=.)
recode CPTDAY46                  (-99 -88 -66=.)
recode CPTDAY47                  (-99 -88 -66=.)
recode CPTDAY48                  (-99 -88 -66=.)
recode CPTDAY49                  (-99 -88 -66=.)
recode CPTDAY50                  (-99 -88 -66=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DURATION                  (-99999 -88888 -66666=.)
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
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NCPT                      (-999 -888 -666=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode ORTIME                    (-999 -888 -666=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
recode PAY3                      (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
recode PL_RUCC                   (-9 -8 -6 -5=.)
recode PL_UIC                    (-9 -8 -6 -5=.)
recode PL_UR_CAT4                (-9 -8 -6 -5=.)
recode PROCTYPE                  (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
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

save "NY_SEDD_2015q1q3_CORE.dta", replace
