/*****************************************************************************
* Creation Date: 11/07/2018   
* NV_SEDD_2016_CORE.Do
* This program will load the 2016 NV ASCII CORE File into Stata.
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
      str    CPT1                        24-  28   ///
      str    CPT2                        29-  33   ///
      str    CPT3                        34-  38   ///
      str    CPT4                        39-  43   ///
      str    CPT5                        44-  48   ///
      str    CPT6                        49-  53   ///
      str    CPT7                        54-  58   ///
      str    CPT8                        59-  63   ///
      str    CPT9                        64-  68   ///
      str    CPT10                       69-  73   ///
      str    CPT11                       74-  78   ///
      str    CPT12                       79-  83   ///
      str    CPT13                       84-  88   ///
      str    CPT14                       89-  93   ///
      str    CPT15                       94-  98   ///
      str    CPT16                       99- 103   ///
      str    CPT17                      104- 108   ///
      str    CPT18                      109- 113   ///
      str    CPT19                      114- 118   ///
      str    CPT20                      119- 123   ///
      str    CPT21                      124- 128   ///
      str    CPT22                      129- 133   ///
      str    CPT23                      134- 138   ///
      str    CPT24                      139- 143   ///
      str    CPT25                      144- 148   ///
      str    CPT26                      149- 153   ///
      str    CPT27                      154- 158   ///
      str    CPT28                      159- 163   ///
      str    CPT29                      164- 168   ///
      str    CPT30                      169- 173   ///
      str    CPT31                      174- 178   ///
      str    CPT32                      179- 183   ///
      str    CPT33                      184- 188   ///
      str    CPT34                      189- 193   ///
      str    CPT35                      194- 198   ///
      str    CPT36                      199- 203   ///
      str    CPT37                      204- 208   ///
      str    CPT38                      209- 213   ///
      str    CPT39                      214- 218   ///
      str    CPT40                      219- 223   ///
      str    CPT41                      224- 228   ///
      str    CPT42                      229- 233   ///
      str    CPT43                      234- 238   ///
      str    CPT44                      239- 243   ///
      str    CPT45                      244- 248   ///
      str    CPT46                      249- 253   ///
      str    CPT47                      254- 258   ///
      str    CPT48                      259- 263   ///
      str    CPT49                      264- 268   ///
      str    CPT50                      269- 273   ///
      str    CPT51                      274- 278   ///
      str    CPT52                      279- 283   ///
      str    CPT53                      284- 288   ///
      str    CPT54                      289- 293   ///
      str    CPT55                      294- 298   ///
      str    CPT56                      299- 303   ///
      str    CPT57                      304- 308   ///
      str    CPT58                      309- 313   ///
      str    CPT59                      314- 318   ///
      str    CPT60                      319- 323   ///
      int    CPTCCS1                    324- 326   ///
      int    CPTCCS2                    327- 329   ///
      int    CPTCCS3                    330- 332   ///
      int    CPTCCS4                    333- 335   ///
      int    CPTCCS5                    336- 338   ///
      int    CPTCCS6                    339- 341   ///
      int    CPTCCS7                    342- 344   ///
      int    CPTCCS8                    345- 347   ///
      int    CPTCCS9                    348- 350   ///
      int    CPTCCS10                   351- 353   ///
      int    CPTCCS11                   354- 356   ///
      int    CPTCCS12                   357- 359   ///
      int    CPTCCS13                   360- 362   ///
      int    CPTCCS14                   363- 365   ///
      int    CPTCCS15                   366- 368   ///
      int    CPTCCS16                   369- 371   ///
      int    CPTCCS17                   372- 374   ///
      int    CPTCCS18                   375- 377   ///
      int    CPTCCS19                   378- 380   ///
      int    CPTCCS20                   381- 383   ///
      int    CPTCCS21                   384- 386   ///
      int    CPTCCS22                   387- 389   ///
      int    CPTCCS23                   390- 392   ///
      int    CPTCCS24                   393- 395   ///
      int    CPTCCS25                   396- 398   ///
      int    CPTCCS26                   399- 401   ///
      int    CPTCCS27                   402- 404   ///
      int    CPTCCS28                   405- 407   ///
      int    CPTCCS29                   408- 410   ///
      int    CPTCCS30                   411- 413   ///
      int    CPTCCS31                   414- 416   ///
      int    CPTCCS32                   417- 419   ///
      int    CPTCCS33                   420- 422   ///
      int    CPTCCS34                   423- 425   ///
      int    CPTCCS35                   426- 428   ///
      int    CPTCCS36                   429- 431   ///
      int    CPTCCS37                   432- 434   ///
      int    CPTCCS38                   435- 437   ///
      int    CPTCCS39                   438- 440   ///
      int    CPTCCS40                   441- 443   ///
      int    CPTCCS41                   444- 446   ///
      int    CPTCCS42                   447- 449   ///
      int    CPTCCS43                   450- 452   ///
      int    CPTCCS44                   453- 455   ///
      int    CPTCCS45                   456- 458   ///
      int    CPTCCS46                   459- 461   ///
      int    CPTCCS47                   462- 464   ///
      int    CPTCCS48                   465- 467   ///
      int    CPTCCS49                   468- 470   ///
      int    CPTCCS50                   471- 473   ///
      int    CPTCCS51                   474- 476   ///
      int    CPTCCS52                   477- 479   ///
      int    CPTCCS53                   480- 482   ///
      int    CPTCCS54                   483- 485   ///
      int    CPTCCS55                   486- 488   ///
      int    CPTCCS56                   489- 491   ///
      int    CPTCCS57                   492- 494   ///
      int    CPTCCS58                   495- 497   ///
      int    CPTCCS59                   498- 500   ///
      int    CPTCCS60                   501- 503   ///
      str    CPTM1_1                    504- 505   ///
      str    CPTM1_2                    506- 507   ///
      str    CPTM1_3                    508- 509   ///
      str    CPTM1_4                    510- 511   ///
      str    CPTM1_5                    512- 513   ///
      str    CPTM1_6                    514- 515   ///
      str    CPTM1_7                    516- 517   ///
      str    CPTM1_8                    518- 519   ///
      str    CPTM1_9                    520- 521   ///
      str    CPTM1_10                   522- 523   ///
      str    CPTM1_11                   524- 525   ///
      str    CPTM1_12                   526- 527   ///
      str    CPTM1_13                   528- 529   ///
      str    CPTM1_14                   530- 531   ///
      str    CPTM1_15                   532- 533   ///
      str    CPTM1_16                   534- 535   ///
      str    CPTM1_17                   536- 537   ///
      str    CPTM1_18                   538- 539   ///
      str    CPTM1_19                   540- 541   ///
      str    CPTM1_20                   542- 543   ///
      str    CPTM1_21                   544- 545   ///
      str    CPTM1_22                   546- 547   ///
      str    CPTM1_23                   548- 549   ///
      str    CPTM1_24                   550- 551   ///
      str    CPTM1_25                   552- 553   ///
      str    CPTM1_26                   554- 555   ///
      str    CPTM1_27                   556- 557   ///
      str    CPTM1_28                   558- 559   ///
      str    CPTM1_29                   560- 561   ///
      str    CPTM1_30                   562- 563   ///
      str    CPTM1_31                   564- 565   ///
      str    CPTM1_32                   566- 567   ///
      str    CPTM1_33                   568- 569   ///
      str    CPTM1_34                   570- 571   ///
      str    CPTM1_35                   572- 573   ///
      str    CPTM1_36                   574- 575   ///
      str    CPTM1_37                   576- 577   ///
      str    CPTM1_38                   578- 579   ///
      str    CPTM1_39                   580- 581   ///
      str    CPTM1_40                   582- 583   ///
      str    CPTM1_41                   584- 585   ///
      str    CPTM1_42                   586- 587   ///
      str    CPTM1_43                   588- 589   ///
      str    CPTM1_44                   590- 591   ///
      str    CPTM1_45                   592- 593   ///
      str    CPTM1_46                   594- 595   ///
      str    CPTM1_47                   596- 597   ///
      str    CPTM1_48                   598- 599   ///
      str    CPTM1_49                   600- 601   ///
      str    CPTM1_50                   602- 603   ///
      str    CPTM1_51                   604- 605   ///
      str    CPTM1_52                   606- 607   ///
      str    CPTM1_53                   608- 609   ///
      str    CPTM1_54                   610- 611   ///
      str    CPTM1_55                   612- 613   ///
      str    CPTM1_56                   614- 615   ///
      str    CPTM1_57                   616- 617   ///
      str    CPTM1_58                   618- 619   ///
      str    CPTM1_59                   620- 621   ///
      str    CPTM1_60                   622- 623   ///
      str    CPTM2_1                    624- 625   ///
      str    CPTM2_2                    626- 627   ///
      str    CPTM2_3                    628- 629   ///
      str    CPTM2_4                    630- 631   ///
      str    CPTM2_5                    632- 633   ///
      str    CPTM2_6                    634- 635   ///
      str    CPTM2_7                    636- 637   ///
      str    CPTM2_8                    638- 639   ///
      str    CPTM2_9                    640- 641   ///
      str    CPTM2_10                   642- 643   ///
      str    CPTM2_11                   644- 645   ///
      str    CPTM2_12                   646- 647   ///
      str    CPTM2_13                   648- 649   ///
      str    CPTM2_14                   650- 651   ///
      str    CPTM2_15                   652- 653   ///
      str    CPTM2_16                   654- 655   ///
      str    CPTM2_17                   656- 657   ///
      str    CPTM2_18                   658- 659   ///
      str    CPTM2_19                   660- 661   ///
      str    CPTM2_20                   662- 663   ///
      str    CPTM2_21                   664- 665   ///
      str    CPTM2_22                   666- 667   ///
      str    CPTM2_23                   668- 669   ///
      str    CPTM2_24                   670- 671   ///
      str    CPTM2_25                   672- 673   ///
      str    CPTM2_26                   674- 675   ///
      str    CPTM2_27                   676- 677   ///
      str    CPTM2_28                   678- 679   ///
      str    CPTM2_29                   680- 681   ///
      str    CPTM2_30                   682- 683   ///
      str    CPTM2_31                   684- 685   ///
      str    CPTM2_32                   686- 687   ///
      str    CPTM2_33                   688- 689   ///
      str    CPTM2_34                   690- 691   ///
      str    CPTM2_35                   692- 693   ///
      str    CPTM2_36                   694- 695   ///
      str    CPTM2_37                   696- 697   ///
      str    CPTM2_38                   698- 699   ///
      str    CPTM2_39                   700- 701   ///
      str    CPTM2_40                   702- 703   ///
      str    CPTM2_41                   704- 705   ///
      str    CPTM2_42                   706- 707   ///
      str    CPTM2_43                   708- 709   ///
      str    CPTM2_44                   710- 711   ///
      str    CPTM2_45                   712- 713   ///
      str    CPTM2_46                   714- 715   ///
      str    CPTM2_47                   716- 717   ///
      str    CPTM2_48                   718- 719   ///
      str    CPTM2_49                   720- 721   ///
      str    CPTM2_50                   722- 723   ///
      str    CPTM2_51                   724- 725   ///
      str    CPTM2_52                   726- 727   ///
      str    CPTM2_53                   728- 729   ///
      str    CPTM2_54                   730- 731   ///
      str    CPTM2_55                   732- 733   ///
      str    CPTM2_56                   734- 735   ///
      str    CPTM2_57                   736- 737   ///
      str    CPTM2_58                   738- 739   ///
      str    CPTM2_59                   740- 741   ///
      str    CPTM2_60                   742- 743   ///
      int    DHOUR                      744- 747   ///
      byte   DIED                       748- 749   ///
      str    DISP_X                     750- 751   ///
      byte   DISPUB04                   752- 753   ///
      byte   DISPUNIFORM                754- 755   ///
      byte   DMONTH                     756- 757   ///
      byte   DQTR                       758- 759   ///
      str    DSHOSPID                   760- 776   ///
      long   DURATION                   777- 782   ///
      int    DXVER                      783- 785   ///
      byte   FEMALE                     786- 787   ///
      byte   HCUP_ED                    788- 789   ///
      byte   HCUP_OS                    790- 791   ///
      byte   HISPANIC                   792- 793   ///
      str    HOSPST                     794- 795   ///
      str    I10_DX1                    796- 802   ///
      str    I10_DX2                    803- 809   ///
      str    I10_DX3                    810- 816   ///
      str    I10_DX4                    817- 823   ///
      str    I10_DX5                    824- 830   ///
      str    I10_DX6                    831- 837   ///
      str    I10_DX7                    838- 844   ///
      str    I10_DX8                    845- 851   ///
      str    I10_DX9                    852- 858   ///
      str    I10_DX10                   859- 865   ///
      str    I10_DX11                   866- 872   ///
      str    I10_DX12                   873- 879   ///
      str    I10_DX13                   880- 886   ///
      str    I10_DX14                   887- 893   ///
      str    I10_DX15                   894- 900   ///
      str    I10_DX16                   901- 907   ///
      str    I10_DX17                   908- 914   ///
      str    I10_DX18                   915- 921   ///
      str    I10_DX19                   922- 928   ///
      str    I10_DX20                   929- 935   ///
      str    I10_DX21                   936- 942   ///
      str    I10_DX22                   943- 949   ///
      str    I10_DX23                   950- 956   ///
      str    I10_DX24                   957- 963   ///
      str    I10_DX25                   964- 970   ///
      str    I10_DX26                   971- 977   ///
      str    I10_DX27                   978- 984   ///
      str    I10_DX28                   985- 991   ///
      str    I10_DX29                   992- 998   ///
      str    I10_DX30                   999-1005   ///
      str    I10_DX31                  1006-1012   ///
      str    I10_DX32                  1013-1019   ///
      str    I10_DX33                  1020-1026   ///
      str    I10_ECAUSE1               1027-1033   ///
      str    I10_ECAUSE2               1034-1040   ///
      str    I10_ECAUSE3               1041-1047   ///
      str    I10_ECAUSE4               1048-1054   ///
      str    I10_ECAUSE5               1055-1061   ///
      str    I10_ECAUSE6               1062-1068   ///
      str    I10_ECAUSE7               1069-1075   ///
      str    I10_ECAUSE8               1076-1082   ///
      int    I10_NDX                   1083-1085   ///
      byte   I10_NECAUSE               1086-1087   ///
      int    I10_PROCTYPE              1088-1090   ///
      double KEY                       1091-1105   ///
      long   LOS                       1106-1110   ///
      long   LOS_X                     1111-1116   ///
      str    MARITALSTATUS_X           1117        ///
      str    MARITALSTATUSUB04         1118        ///
      long   MDNUM1_R                  1119-1127   ///
      long   MDNUM2_R                  1128-1136   ///
      str    MDNUMTYPE1                1137        ///
      str    MDNUMTYPE2                1138        ///
      byte   MEDINCSTQ                 1139-1140   ///
      int    NCPT                      1141-1144   ///
      double OS_TIME                   1145-1155   ///
      byte   PAY1                      1156-1157   ///
      str    PAY1_X                    1158-1159   ///
      byte   PAY2                      1160-1161   ///
      str    PAY2_X                    1162-1163   ///
      byte   PAY3                      1164-1165   ///
      str    PAY3_X                    1166-1167   ///
      byte   PL_NCHS                   1168-1169   ///
      byte   PL_RUCC                   1170-1171   ///
      byte   PL_UIC                    1172-1173   ///
      byte   PL_UR_CAT4                1174-1175   ///
      str    PointOfOrigin_X           1176-1177   ///
      str    PointOfOriginUB04         1178        ///
      str    PSTATE                    1179-1180   ///
      long   PSTCO                     1181-1185   ///
      long   PSTCO2                    1186-1190   ///
      byte   RACE                      1191-1192   ///
      str    RACE_X                    1193-1194   ///
      byte   STATE_AS                  1195-1196   ///
      byte   STATE_ED                  1197-1198   ///
      byte   STATE_OS                  1199-1200   ///
      double TOTCHG                    1201-1210   ///
      double TOTCHG_X                  1211-1225   ///
      int    YEAR                      1226-1229   ///
      int    ZIPINC_QRTL               1230-1232   ///
      int    AYEAR                     1233-1236   ///
      using  "NV_SEDD_2016_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
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
label var CPTM1_51                 "First CPT-4/HCPCS modifier 51"
label var CPTM1_52                 "First CPT-4/HCPCS modifier 52"
label var CPTM1_53                 "First CPT-4/HCPCS modifier 53"
label var CPTM1_54                 "First CPT-4/HCPCS modifier 54"
label var CPTM1_55                 "First CPT-4/HCPCS modifier 55"
label var CPTM1_56                 "First CPT-4/HCPCS modifier 56"
label var CPTM1_57                 "First CPT-4/HCPCS modifier 57"
label var CPTM1_58                 "First CPT-4/HCPCS modifier 58"
label var CPTM1_59                 "First CPT-4/HCPCS modifier 59"
label var CPTM1_60                 "First CPT-4/HCPCS modifier 60"
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
label var CPTM2_51                 "Second CPT-4/HCPCS modifier 51"
label var CPTM2_52                 "Second CPT-4/HCPCS modifier 52"
label var CPTM2_53                 "Second CPT-4/HCPCS modifier 53"
label var CPTM2_54                 "Second CPT-4/HCPCS modifier 54"
label var CPTM2_55                 "Second CPT-4/HCPCS modifier 55"
label var CPTM2_56                 "Second CPT-4/HCPCS modifier 56"
label var CPTM2_57                 "Second CPT-4/HCPCS modifier 57"
label var CPTM2_58                 "Second CPT-4/HCPCS modifier 58"
label var CPTM2_59                 "Second CPT-4/HCPCS modifier 59"
label var CPTM2_60                 "Second CPT-4/HCPCS modifier 60"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DSHOSPID                 "Data source hospital identifier"
label var DURATION                 "Elapsed time for hospital care in hours and minutes"
label var DXVER                    "Diagnosis Version"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
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
label var I10_ECAUSE1              "ICD-10-CM External cause 1"
label var I10_ECAUSE2              "ICD-10-CM External cause 2"
label var I10_ECAUSE3              "ICD-10-CM External cause 3"
label var I10_ECAUSE4              "ICD-10-CM External cause 4"
label var I10_ECAUSE5              "ICD-10-CM External cause 5"
label var I10_ECAUSE6              "ICD-10-CM External cause 6"
label var I10_ECAUSE7              "ICD-10-CM External cause 7"
label var I10_ECAUSE8              "ICD-10-CM External cause 8"
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_NECAUSE              "ICD-10-CM Number of External cause codes on this record"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MARITALSTATUS_X          "Patient's marital status (as received from source)"
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUMTYPE1               "Physician 1 number type"
label var MDNUMTYPE2               "Physician 2 number type"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
label var PAY3                     "Tertiary expected payer (uniform)"
label var PAY3_X                   "Tertiary expected payer (as received from source)"
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
label var YEAR                     "Calendar year"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var AYEAR                    "Admission year"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
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
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DURATION                  (-99999 -88888 -66666=.)
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
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCPT                      (-999 -888 -666=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
recode PAY3                      (-9 -8 -6 -5=.)
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
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)

save "NV_SEDD_2016_CORE.dta", replace
