/*****************************************************************************
* Creation Date: 07/25/2018   
* IA_SEDD_2016_CORE.Do
* This program will load the 2016 IA ASCII CORE File into Stata.
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
      str    CPT1                        16-  20   ///
      str    CPT2                        21-  25   ///
      str    CPT3                        26-  30   ///
      str    CPT4                        31-  35   ///
      str    CPT5                        36-  40   ///
      str    CPT6                        41-  45   ///
      str    CPT7                        46-  50   ///
      str    CPT8                        51-  55   ///
      str    CPT9                        56-  60   ///
      str    CPT10                       61-  65   ///
      str    CPT11                       66-  70   ///
      str    CPT12                       71-  75   ///
      str    CPT13                       76-  80   ///
      str    CPT14                       81-  85   ///
      str    CPT15                       86-  90   ///
      str    CPT16                       91-  95   ///
      str    CPT17                       96- 100   ///
      str    CPT18                      101- 105   ///
      str    CPT19                      106- 110   ///
      str    CPT20                      111- 115   ///
      str    CPT21                      116- 120   ///
      str    CPT22                      121- 125   ///
      str    CPT23                      126- 130   ///
      str    CPT24                      131- 135   ///
      str    CPT25                      136- 140   ///
      str    CPT26                      141- 145   ///
      str    CPT27                      146- 150   ///
      str    CPT28                      151- 155   ///
      str    CPT29                      156- 160   ///
      str    CPT30                      161- 165   ///
      str    CPT31                      166- 170   ///
      str    CPT32                      171- 175   ///
      str    CPT33                      176- 180   ///
      str    CPT34                      181- 185   ///
      str    CPT35                      186- 190   ///
      str    CPT36                      191- 195   ///
      str    CPT37                      196- 200   ///
      str    CPT38                      201- 205   ///
      str    CPT39                      206- 210   ///
      str    CPT40                      211- 215   ///
      str    CPT41                      216- 220   ///
      str    CPT42                      221- 225   ///
      str    CPT43                      226- 230   ///
      str    CPT44                      231- 235   ///
      str    CPT45                      236- 240   ///
      str    CPT46                      241- 245   ///
      str    CPT47                      246- 250   ///
      str    CPT48                      251- 255   ///
      str    CPT49                      256- 260   ///
      str    CPT50                      261- 265   ///
      int    CPTCCS1                    266- 268   ///
      int    CPTCCS2                    269- 271   ///
      int    CPTCCS3                    272- 274   ///
      int    CPTCCS4                    275- 277   ///
      int    CPTCCS5                    278- 280   ///
      int    CPTCCS6                    281- 283   ///
      int    CPTCCS7                    284- 286   ///
      int    CPTCCS8                    287- 289   ///
      int    CPTCCS9                    290- 292   ///
      int    CPTCCS10                   293- 295   ///
      int    CPTCCS11                   296- 298   ///
      int    CPTCCS12                   299- 301   ///
      int    CPTCCS13                   302- 304   ///
      int    CPTCCS14                   305- 307   ///
      int    CPTCCS15                   308- 310   ///
      int    CPTCCS16                   311- 313   ///
      int    CPTCCS17                   314- 316   ///
      int    CPTCCS18                   317- 319   ///
      int    CPTCCS19                   320- 322   ///
      int    CPTCCS20                   323- 325   ///
      int    CPTCCS21                   326- 328   ///
      int    CPTCCS22                   329- 331   ///
      int    CPTCCS23                   332- 334   ///
      int    CPTCCS24                   335- 337   ///
      int    CPTCCS25                   338- 340   ///
      int    CPTCCS26                   341- 343   ///
      int    CPTCCS27                   344- 346   ///
      int    CPTCCS28                   347- 349   ///
      int    CPTCCS29                   350- 352   ///
      int    CPTCCS30                   353- 355   ///
      int    CPTCCS31                   356- 358   ///
      int    CPTCCS32                   359- 361   ///
      int    CPTCCS33                   362- 364   ///
      int    CPTCCS34                   365- 367   ///
      int    CPTCCS35                   368- 370   ///
      int    CPTCCS36                   371- 373   ///
      int    CPTCCS37                   374- 376   ///
      int    CPTCCS38                   377- 379   ///
      int    CPTCCS39                   380- 382   ///
      int    CPTCCS40                   383- 385   ///
      int    CPTCCS41                   386- 388   ///
      int    CPTCCS42                   389- 391   ///
      int    CPTCCS43                   392- 394   ///
      int    CPTCCS44                   395- 397   ///
      int    CPTCCS45                   398- 400   ///
      int    CPTCCS46                   401- 403   ///
      int    CPTCCS47                   404- 406   ///
      int    CPTCCS48                   407- 409   ///
      int    CPTCCS49                   410- 412   ///
      int    CPTCCS50                   413- 415   ///
      int    CPTDAY1                    416- 418   ///
      int    CPTDAY2                    419- 421   ///
      int    CPTDAY3                    422- 424   ///
      int    CPTDAY4                    425- 427   ///
      int    CPTDAY5                    428- 430   ///
      int    CPTDAY6                    431- 433   ///
      int    CPTDAY7                    434- 436   ///
      int    CPTDAY8                    437- 439   ///
      int    CPTDAY9                    440- 442   ///
      int    CPTDAY10                   443- 445   ///
      int    CPTDAY11                   446- 448   ///
      int    CPTDAY12                   449- 451   ///
      int    CPTDAY13                   452- 454   ///
      int    CPTDAY14                   455- 457   ///
      int    CPTDAY15                   458- 460   ///
      int    CPTDAY16                   461- 463   ///
      int    CPTDAY17                   464- 466   ///
      int    CPTDAY18                   467- 469   ///
      int    CPTDAY19                   470- 472   ///
      int    CPTDAY20                   473- 475   ///
      int    CPTDAY21                   476- 478   ///
      int    CPTDAY22                   479- 481   ///
      int    CPTDAY23                   482- 484   ///
      int    CPTDAY24                   485- 487   ///
      int    CPTDAY25                   488- 490   ///
      int    CPTDAY26                   491- 493   ///
      int    CPTDAY27                   494- 496   ///
      int    CPTDAY28                   497- 499   ///
      int    CPTDAY29                   500- 502   ///
      int    CPTDAY30                   503- 505   ///
      int    CPTDAY31                   506- 508   ///
      int    CPTDAY32                   509- 511   ///
      int    CPTDAY33                   512- 514   ///
      int    CPTDAY34                   515- 517   ///
      int    CPTDAY35                   518- 520   ///
      int    CPTDAY36                   521- 523   ///
      int    CPTDAY37                   524- 526   ///
      int    CPTDAY38                   527- 529   ///
      int    CPTDAY39                   530- 532   ///
      int    CPTDAY40                   533- 535   ///
      int    CPTDAY41                   536- 538   ///
      int    CPTDAY42                   539- 541   ///
      int    CPTDAY43                   542- 544   ///
      int    CPTDAY44                   545- 547   ///
      int    CPTDAY45                   548- 550   ///
      int    CPTDAY46                   551- 553   ///
      int    CPTDAY47                   554- 556   ///
      int    CPTDAY48                   557- 559   ///
      int    CPTDAY49                   560- 562   ///
      int    CPTDAY50                   563- 565   ///
      str    CPTM1_1                    566- 567   ///
      str    CPTM1_2                    568- 569   ///
      str    CPTM1_3                    570- 571   ///
      str    CPTM1_4                    572- 573   ///
      str    CPTM1_5                    574- 575   ///
      str    CPTM1_6                    576- 577   ///
      str    CPTM1_7                    578- 579   ///
      str    CPTM1_8                    580- 581   ///
      str    CPTM1_9                    582- 583   ///
      str    CPTM1_10                   584- 585   ///
      str    CPTM1_11                   586- 587   ///
      str    CPTM1_12                   588- 589   ///
      str    CPTM1_13                   590- 591   ///
      str    CPTM1_14                   592- 593   ///
      str    CPTM1_15                   594- 595   ///
      str    CPTM1_16                   596- 597   ///
      str    CPTM1_17                   598- 599   ///
      str    CPTM1_18                   600- 601   ///
      str    CPTM1_19                   602- 603   ///
      str    CPTM1_20                   604- 605   ///
      str    CPTM1_21                   606- 607   ///
      str    CPTM1_22                   608- 609   ///
      str    CPTM1_23                   610- 611   ///
      str    CPTM1_24                   612- 613   ///
      str    CPTM1_25                   614- 615   ///
      str    CPTM1_26                   616- 617   ///
      str    CPTM1_27                   618- 619   ///
      str    CPTM1_28                   620- 621   ///
      str    CPTM1_29                   622- 623   ///
      str    CPTM1_30                   624- 625   ///
      str    CPTM1_31                   626- 627   ///
      str    CPTM1_32                   628- 629   ///
      str    CPTM1_33                   630- 631   ///
      str    CPTM1_34                   632- 633   ///
      str    CPTM1_35                   634- 635   ///
      str    CPTM1_36                   636- 637   ///
      str    CPTM1_37                   638- 639   ///
      str    CPTM1_38                   640- 641   ///
      str    CPTM1_39                   642- 643   ///
      str    CPTM1_40                   644- 645   ///
      str    CPTM1_41                   646- 647   ///
      str    CPTM1_42                   648- 649   ///
      str    CPTM1_43                   650- 651   ///
      str    CPTM1_44                   652- 653   ///
      str    CPTM1_45                   654- 655   ///
      str    CPTM1_46                   656- 657   ///
      str    CPTM1_47                   658- 659   ///
      str    CPTM1_48                   660- 661   ///
      str    CPTM1_49                   662- 663   ///
      str    CPTM1_50                   664- 665   ///
      str    CPTM2_1                    666- 667   ///
      str    CPTM2_2                    668- 669   ///
      str    CPTM2_3                    670- 671   ///
      str    CPTM2_4                    672- 673   ///
      str    CPTM2_5                    674- 675   ///
      str    CPTM2_6                    676- 677   ///
      str    CPTM2_7                    678- 679   ///
      str    CPTM2_8                    680- 681   ///
      str    CPTM2_9                    682- 683   ///
      str    CPTM2_10                   684- 685   ///
      str    CPTM2_11                   686- 687   ///
      str    CPTM2_12                   688- 689   ///
      str    CPTM2_13                   690- 691   ///
      str    CPTM2_14                   692- 693   ///
      str    CPTM2_15                   694- 695   ///
      str    CPTM2_16                   696- 697   ///
      str    CPTM2_17                   698- 699   ///
      str    CPTM2_18                   700- 701   ///
      str    CPTM2_19                   702- 703   ///
      str    CPTM2_20                   704- 705   ///
      str    CPTM2_21                   706- 707   ///
      str    CPTM2_22                   708- 709   ///
      str    CPTM2_23                   710- 711   ///
      str    CPTM2_24                   712- 713   ///
      str    CPTM2_25                   714- 715   ///
      str    CPTM2_26                   716- 717   ///
      str    CPTM2_27                   718- 719   ///
      str    CPTM2_28                   720- 721   ///
      str    CPTM2_29                   722- 723   ///
      str    CPTM2_30                   724- 725   ///
      str    CPTM2_31                   726- 727   ///
      str    CPTM2_32                   728- 729   ///
      str    CPTM2_33                   730- 731   ///
      str    CPTM2_34                   732- 733   ///
      str    CPTM2_35                   734- 735   ///
      str    CPTM2_36                   736- 737   ///
      str    CPTM2_37                   738- 739   ///
      str    CPTM2_38                   740- 741   ///
      str    CPTM2_39                   742- 743   ///
      str    CPTM2_40                   744- 745   ///
      str    CPTM2_41                   746- 747   ///
      str    CPTM2_42                   748- 749   ///
      str    CPTM2_43                   750- 751   ///
      str    CPTM2_44                   752- 753   ///
      str    CPTM2_45                   754- 755   ///
      str    CPTM2_46                   756- 757   ///
      str    CPTM2_47                   758- 759   ///
      str    CPTM2_48                   760- 761   ///
      str    CPTM2_49                   762- 763   ///
      str    CPTM2_50                   764- 765   ///
      long   DaysToEvent                766- 771   ///
      byte   DIED                       772- 773   ///
      str    DISP_X                     774- 775   ///
      byte   DISPUB04                   776- 777   ///
      byte   DISPUNIFORM                778- 779   ///
      byte   DMONTH                     780- 781   ///
      byte   DQTR                       782- 783   ///
      int    DXVER                      784- 786   ///
      byte   FEMALE                     787- 788   ///
      byte   HCUP_ED                    789- 790   ///
      byte   HCUP_OS                    791- 792   ///
      byte   HISPANIC                   793- 794   ///
      str    HISPANIC_X                 795        ///
      str    HOSPST                     796- 797   ///
      str    I10_DX_Visit_Reason1       798- 804   ///
      str    I10_DX_Visit_Reason2       805- 811   ///
      str    I10_DX_Visit_Reason3       812- 818   ///
      str    I10_DX1                    819- 825   ///
      str    I10_DX2                    826- 832   ///
      str    I10_DX3                    833- 839   ///
      str    I10_DX4                    840- 846   ///
      str    I10_DX5                    847- 853   ///
      str    I10_DX6                    854- 860   ///
      str    I10_DX7                    861- 867   ///
      str    I10_DX8                    868- 874   ///
      str    I10_DX9                    875- 881   ///
      str    I10_DX10                   882- 888   ///
      str    I10_DX11                   889- 895   ///
      str    I10_DX12                   896- 902   ///
      str    I10_DX13                   903- 909   ///
      str    I10_DX14                   910- 916   ///
      str    I10_DX15                   917- 923   ///
      str    I10_DX16                   924- 930   ///
      str    I10_DX17                   931- 937   ///
      str    I10_DX18                   938- 944   ///
      str    I10_DX19                   945- 951   ///
      str    I10_DX20                   952- 958   ///
      str    I10_DX21                   959- 965   ///
      str    I10_DX22                   966- 972   ///
      str    I10_DX23                   973- 979   ///
      str    I10_DX24                   980- 986   ///
      str    I10_DX25                   987- 993   ///
      str    I10_DX26                   994-1000   ///
      str    I10_DX27                  1001-1007   ///
      str    I10_DX28                  1008-1014   ///
      str    I10_DX29                  1015-1021   ///
      str    I10_DX30                  1022-1028   ///
      str    I10_DX31                  1029-1035   ///
      str    I10_DX32                  1036-1042   ///
      str    I10_DX33                  1043-1049   ///
      str    I10_DX34                  1050-1056   ///
      str    I10_DX35                  1057-1063   ///
      str    I10_ECAUSE1               1064-1070   ///
      str    I10_ECAUSE2               1071-1077   ///
      str    I10_ECAUSE3               1078-1084   ///
      str    I10_ECAUSE4               1085-1091   ///
      str    I10_ECAUSE5               1092-1098   ///
      str    I10_ECAUSE6               1099-1105   ///
      int    I10_NDX                   1106-1108   ///
      byte   I10_NECAUSE               1109-1110   ///
      int    I10_PROCTYPE              1111-1113   ///
      double KEY                       1114-1128   ///
      long   LOS                       1129-1133   ///
      long   LOS_X                     1134-1139   ///
      long   MDNUM1_R                  1140-1148   ///
      long   MDNUM2_R                  1149-1157   ///
      long   MDNUM3_R                  1158-1166   ///
      byte   MEDINCSTQ                 1167-1168   ///
      long   MRN_R                     1169-1177   ///
      int    NCPT                      1178-1181   ///
      str    OPservice                 1182-1186   ///
      double OS_TIME                   1187-1197   ///
      byte   PAY1                      1198-1199   ///
      str    PAY1_X                    1200-1203   ///
      byte   PAY2                      1204-1205   ///
      str    PAY2_X                    1206-1209   ///
      byte   PAY3                      1210-1211   ///
      str    PAY3_X                    1212-1215   ///
      int    PL_CBSA                   1216-1218   ///
      byte   PL_NCHS                   1219-1220   ///
      byte   PL_RUCC                   1221-1222   ///
      byte   PL_UIC                    1223-1224   ///
      byte   PL_UR_CAT4                1225-1226   ///
      str    PointOfOrigin_X           1227        ///
      str    PointOfOriginUB04         1228        ///
      str    PSTATE                    1229-1230   ///
      long   PSTCO                     1231-1235   ///
      long   PSTCO2                    1236-1240   ///
      byte   RACE                      1241-1242   ///
      str    RACE_X                    1243-1246   ///
      byte   STATE_AS                  1247-1248   ///
      byte   STATE_ED                  1249-1250   ///
      byte   STATE_OS                  1251-1252   ///
      double TOTCHG                    1253-1262   ///
      double TOTCHG_X                  1263-1277   ///
      long   VisitLink                 1278-1286   ///
      int    YEAR                      1287-1290   ///
      str    ZIP                       1291-1295   ///
      str    ZIP3                      1296-1298   ///
      int    ZIPINC_QRTL               1299-1301   ///
      int    AYEAR                     1302-1305   ///
      byte   BMONTH                    1306-1307   ///
      int    BYEAR                     1308-1311   ///
      using  "IA_SEDD_2016_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
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
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DXVER                    "Diagnosis Version"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPST                   "Hospital state postal code"
label var I10_DX_Visit_Reason1     "ICD-10-CM Reason for visit diagnosis 1"
label var I10_DX_Visit_Reason2     "ICD-10-CM Reason for visit diagnosis 2"
label var I10_DX_Visit_Reason3     "ICD-10-CM Reason for visit diagnosis 3"
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
label var I10_ECAUSE1              "ICD-10-CM E Cause 1"
label var I10_ECAUSE2              "ICD-10-CM E Cause 2"
label var I10_ECAUSE3              "ICD-10-CM E Cause 3"
label var I10_ECAUSE4              "ICD-10-CM E Cause 4"
label var I10_ECAUSE5              "ICD-10-CM E Cause 5"
label var I10_ECAUSE6              "ICD-10-CM E Cause 6"
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_NECAUSE              "ICD-10-CM Number of E Causes on this record"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var OPservice                "Indicator of outpatient service (as received from source)"
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
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
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
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NECAUSE               (-9 -8 -6 -5=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode NCPT                      (-999 -888 -666=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
recode PAY3                      (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
recode PL_RUCC                   (-9 -8 -6 -5=.)
recode PL_UIC                    (-9 -8 -6 -5=.)
recode PL_UR_CAT4                (-9 -8 -6 -5=.)
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

save "IA_SEDD_2016_CORE.dta", replace
