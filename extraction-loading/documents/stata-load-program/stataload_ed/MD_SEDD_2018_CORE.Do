/*****************************************************************************
* Creation Date: 05/20/2020   
* MD_SEDD_2018_CORE.Do
* This program will load the 2018 MD ASCII CORE File into Stata.
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
      byte   ASOURCE                     10-  11   ///
      str    ASOURCE_X                   12-  13   ///
      byte   ATYPE                       14-  15   ///
      byte   AWEEKEND                    16-  17   ///
      str    BILLTYPE                    18-  21   ///
      str    CPT1                        22-  26   ///
      str    CPT2                        27-  31   ///
      str    CPT3                        32-  36   ///
      str    CPT4                        37-  41   ///
      str    CPT5                        42-  46   ///
      str    CPT6                        47-  51   ///
      str    CPT7                        52-  56   ///
      str    CPT8                        57-  61   ///
      str    CPT9                        62-  66   ///
      str    CPT10                       67-  71   ///
      str    CPT11                       72-  76   ///
      str    CPT12                       77-  81   ///
      str    CPT13                       82-  86   ///
      str    CPT14                       87-  91   ///
      str    CPT15                       92-  96   ///
      str    CPT16                       97- 101   ///
      str    CPT17                      102- 106   ///
      str    CPT18                      107- 111   ///
      str    CPT19                      112- 116   ///
      str    CPT20                      117- 121   ///
      str    CPT21                      122- 126   ///
      str    CPT22                      127- 131   ///
      str    CPT23                      132- 136   ///
      str    CPT24                      137- 141   ///
      str    CPT25                      142- 146   ///
      str    CPT26                      147- 151   ///
      str    CPT27                      152- 156   ///
      str    CPT28                      157- 161   ///
      str    CPT29                      162- 166   ///
      str    CPT30                      167- 171   ///
      str    CPT31                      172- 176   ///
      str    CPT32                      177- 181   ///
      str    CPT33                      182- 186   ///
      str    CPT34                      187- 191   ///
      str    CPT35                      192- 196   ///
      str    CPT36                      197- 201   ///
      str    CPT37                      202- 206   ///
      str    CPT38                      207- 211   ///
      str    CPT39                      212- 216   ///
      str    CPT40                      217- 221   ///
      str    CPT41                      222- 226   ///
      str    CPT42                      227- 231   ///
      str    CPT43                      232- 236   ///
      str    CPT44                      237- 241   ///
      str    CPT45                      242- 246   ///
      int    CPTCCS1                    247- 249   ///
      int    CPTCCS2                    250- 252   ///
      int    CPTCCS3                    253- 255   ///
      int    CPTCCS4                    256- 258   ///
      int    CPTCCS5                    259- 261   ///
      int    CPTCCS6                    262- 264   ///
      int    CPTCCS7                    265- 267   ///
      int    CPTCCS8                    268- 270   ///
      int    CPTCCS9                    271- 273   ///
      int    CPTCCS10                   274- 276   ///
      int    CPTCCS11                   277- 279   ///
      int    CPTCCS12                   280- 282   ///
      int    CPTCCS13                   283- 285   ///
      int    CPTCCS14                   286- 288   ///
      int    CPTCCS15                   289- 291   ///
      int    CPTCCS16                   292- 294   ///
      int    CPTCCS17                   295- 297   ///
      int    CPTCCS18                   298- 300   ///
      int    CPTCCS19                   301- 303   ///
      int    CPTCCS20                   304- 306   ///
      int    CPTCCS21                   307- 309   ///
      int    CPTCCS22                   310- 312   ///
      int    CPTCCS23                   313- 315   ///
      int    CPTCCS24                   316- 318   ///
      int    CPTCCS25                   319- 321   ///
      int    CPTCCS26                   322- 324   ///
      int    CPTCCS27                   325- 327   ///
      int    CPTCCS28                   328- 330   ///
      int    CPTCCS29                   331- 333   ///
      int    CPTCCS30                   334- 336   ///
      int    CPTCCS31                   337- 339   ///
      int    CPTCCS32                   340- 342   ///
      int    CPTCCS33                   343- 345   ///
      int    CPTCCS34                   346- 348   ///
      int    CPTCCS35                   349- 351   ///
      int    CPTCCS36                   352- 354   ///
      int    CPTCCS37                   355- 357   ///
      int    CPTCCS38                   358- 360   ///
      int    CPTCCS39                   361- 363   ///
      int    CPTCCS40                   364- 366   ///
      int    CPTCCS41                   367- 369   ///
      int    CPTCCS42                   370- 372   ///
      int    CPTCCS43                   373- 375   ///
      int    CPTCCS44                   376- 378   ///
      int    CPTCCS45                   379- 381   ///
      int    CPTDAY1                    382- 384   ///
      int    CPTDAY2                    385- 387   ///
      int    CPTDAY3                    388- 390   ///
      int    CPTDAY4                    391- 393   ///
      int    CPTDAY5                    394- 396   ///
      int    CPTDAY6                    397- 399   ///
      int    CPTDAY7                    400- 402   ///
      int    CPTDAY8                    403- 405   ///
      int    CPTDAY9                    406- 408   ///
      int    CPTDAY10                   409- 411   ///
      int    CPTDAY11                   412- 414   ///
      int    CPTDAY12                   415- 417   ///
      int    CPTDAY13                   418- 420   ///
      int    CPTDAY14                   421- 423   ///
      int    CPTDAY15                   424- 426   ///
      int    CPTDAY16                   427- 429   ///
      int    CPTDAY17                   430- 432   ///
      int    CPTDAY18                   433- 435   ///
      int    CPTDAY19                   436- 438   ///
      int    CPTDAY20                   439- 441   ///
      int    CPTDAY21                   442- 444   ///
      int    CPTDAY22                   445- 447   ///
      int    CPTDAY23                   448- 450   ///
      int    CPTDAY24                   451- 453   ///
      int    CPTDAY25                   454- 456   ///
      int    CPTDAY26                   457- 459   ///
      int    CPTDAY27                   460- 462   ///
      int    CPTDAY28                   463- 465   ///
      int    CPTDAY29                   466- 468   ///
      int    CPTDAY30                   469- 471   ///
      int    CPTDAY31                   472- 474   ///
      int    CPTDAY32                   475- 477   ///
      int    CPTDAY33                   478- 480   ///
      int    CPTDAY34                   481- 483   ///
      int    CPTDAY35                   484- 486   ///
      int    CPTDAY36                   487- 489   ///
      int    CPTDAY37                   490- 492   ///
      int    CPTDAY38                   493- 495   ///
      int    CPTDAY39                   496- 498   ///
      int    CPTDAY40                   499- 501   ///
      int    CPTDAY41                   502- 504   ///
      int    CPTDAY42                   505- 507   ///
      int    CPTDAY43                   508- 510   ///
      int    CPTDAY44                   511- 513   ///
      int    CPTDAY45                   514- 516   ///
      str    CPTM1_1                    517- 518   ///
      str    CPTM1_2                    519- 520   ///
      str    CPTM1_3                    521- 522   ///
      str    CPTM1_4                    523- 524   ///
      str    CPTM1_5                    525- 526   ///
      str    CPTM1_6                    527- 528   ///
      str    CPTM1_7                    529- 530   ///
      str    CPTM1_8                    531- 532   ///
      str    CPTM1_9                    533- 534   ///
      str    CPTM1_10                   535- 536   ///
      str    CPTM1_11                   537- 538   ///
      str    CPTM1_12                   539- 540   ///
      str    CPTM1_13                   541- 542   ///
      str    CPTM1_14                   543- 544   ///
      str    CPTM1_15                   545- 546   ///
      str    CPTM1_16                   547- 548   ///
      str    CPTM1_17                   549- 550   ///
      str    CPTM1_18                   551- 552   ///
      str    CPTM1_19                   553- 554   ///
      str    CPTM1_20                   555- 556   ///
      str    CPTM1_21                   557- 558   ///
      str    CPTM1_22                   559- 560   ///
      str    CPTM1_23                   561- 562   ///
      str    CPTM1_24                   563- 564   ///
      str    CPTM1_25                   565- 566   ///
      str    CPTM1_26                   567- 568   ///
      str    CPTM1_27                   569- 570   ///
      str    CPTM1_28                   571- 572   ///
      str    CPTM1_29                   573- 574   ///
      str    CPTM1_30                   575- 576   ///
      str    CPTM1_31                   577- 578   ///
      str    CPTM1_32                   579- 580   ///
      str    CPTM1_33                   581- 582   ///
      str    CPTM1_34                   583- 584   ///
      str    CPTM1_35                   585- 586   ///
      str    CPTM1_36                   587- 588   ///
      str    CPTM1_37                   589- 590   ///
      str    CPTM1_38                   591- 592   ///
      str    CPTM1_39                   593- 594   ///
      str    CPTM1_40                   595- 596   ///
      str    CPTM1_41                   597- 598   ///
      str    CPTM1_42                   599- 600   ///
      str    CPTM1_43                   601- 602   ///
      str    CPTM1_44                   603- 604   ///
      str    CPTM1_45                   605- 606   ///
      long   DaysToEvent                607- 612   ///
      byte   DIED                       613- 614   ///
      str    DISP_X                     615- 616   ///
      byte   DISPUB04                   617- 618   ///
      byte   DISPUNIFORM                619- 620   ///
      byte   DQTR                       621- 622   ///
      str    DSHOSPID                   623- 639   ///
      byte   FEMALE                     640- 641   ///
      byte   HCUP_ED                    642- 643   ///
      byte   HCUP_OS                    644- 645   ///
      byte   HISPANIC                   646- 647   ///
      str    HISPANIC_X                 648        ///
      byte   Homeless                   649- 650   ///
      str    HOSPST                     651- 652   ///
      str    I10_DX_Visit_Reason1       653- 659   ///
      str    I10_DX1                    660- 666   ///
      str    I10_DX2                    667- 673   ///
      str    I10_DX3                    674- 680   ///
      str    I10_DX4                    681- 687   ///
      str    I10_DX5                    688- 694   ///
      str    I10_DX6                    695- 701   ///
      str    I10_DX7                    702- 708   ///
      str    I10_DX8                    709- 715   ///
      str    I10_DX9                    716- 722   ///
      str    I10_DX10                   723- 729   ///
      str    I10_DX11                   730- 736   ///
      str    I10_DX12                   737- 743   ///
      str    I10_DX13                   744- 750   ///
      str    I10_DX14                   751- 757   ///
      str    I10_DX15                   758- 764   ///
      str    I10_DX16                   765- 771   ///
      str    I10_DX17                   772- 778   ///
      str    I10_DX18                   779- 785   ///
      str    I10_DX19                   786- 792   ///
      str    I10_DX20                   793- 799   ///
      str    I10_DX21                   800- 806   ///
      str    I10_DX22                   807- 813   ///
      str    I10_DX23                   814- 820   ///
      str    I10_DX24                   821- 827   ///
      str    I10_DX25                   828- 834   ///
      str    I10_DX26                   835- 841   ///
      str    I10_DX27                   842- 848   ///
      str    I10_DX28                   849- 855   ///
      str    I10_DX29                   856- 862   ///
      str    I10_DX30                   863- 869   ///
      str    I10_DX31                   870- 876   ///
      str    I10_DX32                   877- 883   ///
      str    I10_DX33                   884- 890   ///
      str    I10_DX34                   891- 897   ///
      str    I10_DX35                   898- 904   ///
      str    I10_DX36                   905- 911   ///
      str    I10_DX37                   912- 918   ///
      str    I10_DX38                   919- 925   ///
      str    I10_DX39                   926- 932   ///
      str    I10_DX40                   933- 939   ///
      str    I10_DX41                   940- 946   ///
      str    I10_DX42                   947- 953   ///
      str    I10_DX43                   954- 960   ///
      str    I10_DX44                   961- 967   ///
      str    I10_DX45                   968- 974   ///
      str    I10_DX46                   975- 981   ///
      str    I10_DX47                   982- 988   ///
      str    I10_DX48                   989- 995   ///
      str    I10_DX49                   996-1002   ///
      str    I10_DX50                  1003-1009   ///
      str    I10_DX51                  1010-1016   ///
      str    I10_DX52                  1017-1023   ///
      str    I10_DX53                  1024-1030   ///
      str    I10_DX54                  1031-1037   ///
      str    I10_DX55                  1038-1044   ///
      str    I10_DX56                  1045-1051   ///
      str    I10_DX57                  1052-1058   ///
      str    I10_DX58                  1059-1065   ///
      str    I10_DX59                  1066-1072   ///
      str    I10_DX60                  1073-1079   ///
      int    I10_NDX                   1080-1082   ///
      int    I10_PROCTYPE              1083-1085   ///
      double KEY                       1086-1100   ///
      long   LOS                       1101-1105   ///
      long   LOS_X                     1106-1111   ///
      str    MARITALSTATUS_X           1112        ///
      str    MARITALSTATUSUB04         1113        ///
      long   MDNUM1_R                  1114-1122   ///
      long   MDNUM2_R                  1123-1131   ///
      byte   MEDINCSTQ                 1132-1133   ///
      long   MRN_R                     1134-1142   ///
      int    NCPT                      1143-1146   ///
      str    OPservice                 1147-1148   ///
      double OS_TIME                   1149-1159   ///
      byte   PAY1                      1160-1161   ///
      str    PAY1_X                    1162-1163   ///
      byte   PAY2                      1164-1165   ///
      str    PAY2_X                    1166-1167   ///
      byte   PAY3                      1168-1169   ///
      str    PAY3_X                    1170-1171   ///
      str    PAYER1_X                  1172-1173   ///
      str    PAYER2_X                  1174-1175   ///
      str    PAYER3_X                  1176-1177   ///
      int    PL_CBSA                   1178-1180   ///
      byte   PL_NCHS                   1181-1182   ///
      byte   PL_RUCC                   1183-1184   ///
      byte   PL_UIC                    1185-1186   ///
      byte   PL_UR_CAT4                1187-1188   ///
      str    PointOfOrigin_X           1189-1190   ///
      str    PointOfOriginUB04         1191        ///
      str    PSTATE                    1192-1193   ///
      long   PSTCO                     1194-1198   ///
      long   PSTCO2                    1199-1203   ///
      byte   RACE                      1204-1205   ///
      str    RACE_X                    1206        ///
      int    SpannedServiceCount       1207-1209   ///
      byte   STATE_AS                  1210-1211   ///
      byte   STATE_ED                  1212-1213   ///
      byte   STATE_OS                  1214-1215   ///
      double TOTCHG                    1216-1225   ///
      double TOTCHG_X                  1226-1240   ///
      long   VisitLink                 1241-1249   ///
      int    YEAR                      1250-1253   ///
      str    ZIP                       1254-1258   ///
      str    ZIP3                      1259-1261   ///
      int    ZIPINC_QRTL               1262-1264   ///
      int    AYEAR                     1265-1268   ///
      using  "MD_SEDD_2018_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var ASOURCE                  "Admission source (uniform)"
label var ASOURCE_X                "Admission source (as received from source)"
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
label var DaysToEvent              "Days from 'start date' to admission"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DQTR                     "Discharge quarter"
label var DSHOSPID                 "Data source hospital identifier"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
label var HOSPST                   "Hospital state postal code"
label var I10_DX_Visit_Reason1     "ICD-10-CM Reason for visit diagnosis 1"
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
label var I10_DX51                 "ICD-10-CM Diagnosis 51"
label var I10_DX52                 "ICD-10-CM Diagnosis 52"
label var I10_DX53                 "ICD-10-CM Diagnosis 53"
label var I10_DX54                 "ICD-10-CM Diagnosis 54"
label var I10_DX55                 "ICD-10-CM Diagnosis 55"
label var I10_DX56                 "ICD-10-CM Diagnosis 56"
label var I10_DX57                 "ICD-10-CM Diagnosis 57"
label var I10_DX58                 "ICD-10-CM Diagnosis 58"
label var I10_DX59                 "ICD-10-CM Diagnosis 59"
label var I10_DX60                 "ICD-10-CM Diagnosis 60"
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MARITALSTATUS_X          "Patient's marital status (as received from source)"
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
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
label var PAYER1_X                 "Primary expected payer plan identifier (as received from source)"
label var PAYER2_X                 "Secondary expected payer plan identifier (as received from source)"
label var PAYER3_X                 "Tertiary expected payer plan identifier (as received from source)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes (RUCC)"
label var PL_UIC                   "Patient location: Urban Influence Codes"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var SpannedServiceCount      "Count of spanned services included on this record, as received from source"
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

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode ASOURCE                   (-9 -8 -6 -5=.)
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
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
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
recode SpannedServiceCount       (-99 -88 -66=.)
recode STATE_AS                  (-9 -8 -6 -5=.)
recode STATE_ED                  (-9 -8 -6 -5=.)
recode STATE_OS                  (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode VisitLink                 (-99999999 -88888888 -66666666=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)

save "MD_SEDD_2018_CORE.dta", replace
