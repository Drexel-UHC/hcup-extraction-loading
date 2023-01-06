/*****************************************************************************
* Creation Date: 07/11/2019   
* ME_SEDD_2017_CORE.Do
* This program will load the 2017 ME ASCII CORE File into Stata.
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
      byte   AMONTH                       1-   2   ///
      byte   AWEEKEND                     3-   4   ///
      str    BILLTYPE                     5-   8   ///
      str    CPT1                         9-  13   ///
      str    CPT2                        14-  18   ///
      str    CPT3                        19-  23   ///
      str    CPT4                        24-  28   ///
      str    CPT5                        29-  33   ///
      str    CPT6                        34-  38   ///
      str    CPT7                        39-  43   ///
      str    CPT8                        44-  48   ///
      str    CPT9                        49-  53   ///
      str    CPT10                       54-  58   ///
      str    CPT11                       59-  63   ///
      str    CPT12                       64-  68   ///
      str    CPT13                       69-  73   ///
      str    CPT14                       74-  78   ///
      str    CPT15                       79-  83   ///
      str    CPT16                       84-  88   ///
      str    CPT17                       89-  93   ///
      str    CPT18                       94-  98   ///
      str    CPT19                       99- 103   ///
      str    CPT20                      104- 108   ///
      str    CPT21                      109- 113   ///
      str    CPT22                      114- 118   ///
      str    CPT23                      119- 123   ///
      str    CPT24                      124- 128   ///
      str    CPT25                      129- 133   ///
      str    CPT26                      134- 138   ///
      str    CPT27                      139- 143   ///
      str    CPT28                      144- 148   ///
      str    CPT29                      149- 153   ///
      str    CPT30                      154- 158   ///
      str    CPT31                      159- 163   ///
      str    CPT32                      164- 168   ///
      str    CPT33                      169- 173   ///
      str    CPT34                      174- 178   ///
      str    CPT35                      179- 183   ///
      str    CPT36                      184- 188   ///
      str    CPT37                      189- 193   ///
      str    CPT38                      194- 198   ///
      str    CPT39                      199- 203   ///
      str    CPT40                      204- 208   ///
      str    CPT41                      209- 213   ///
      str    CPT42                      214- 218   ///
      str    CPT43                      219- 223   ///
      str    CPT44                      224- 228   ///
      str    CPT45                      229- 233   ///
      str    CPT46                      234- 238   ///
      str    CPT47                      239- 243   ///
      str    CPT48                      244- 248   ///
      str    CPT49                      249- 253   ///
      str    CPT50                      254- 258   ///
      int    CPTCCS1                    259- 261   ///
      int    CPTCCS2                    262- 264   ///
      int    CPTCCS3                    265- 267   ///
      int    CPTCCS4                    268- 270   ///
      int    CPTCCS5                    271- 273   ///
      int    CPTCCS6                    274- 276   ///
      int    CPTCCS7                    277- 279   ///
      int    CPTCCS8                    280- 282   ///
      int    CPTCCS9                    283- 285   ///
      int    CPTCCS10                   286- 288   ///
      int    CPTCCS11                   289- 291   ///
      int    CPTCCS12                   292- 294   ///
      int    CPTCCS13                   295- 297   ///
      int    CPTCCS14                   298- 300   ///
      int    CPTCCS15                   301- 303   ///
      int    CPTCCS16                   304- 306   ///
      int    CPTCCS17                   307- 309   ///
      int    CPTCCS18                   310- 312   ///
      int    CPTCCS19                   313- 315   ///
      int    CPTCCS20                   316- 318   ///
      int    CPTCCS21                   319- 321   ///
      int    CPTCCS22                   322- 324   ///
      int    CPTCCS23                   325- 327   ///
      int    CPTCCS24                   328- 330   ///
      int    CPTCCS25                   331- 333   ///
      int    CPTCCS26                   334- 336   ///
      int    CPTCCS27                   337- 339   ///
      int    CPTCCS28                   340- 342   ///
      int    CPTCCS29                   343- 345   ///
      int    CPTCCS30                   346- 348   ///
      int    CPTCCS31                   349- 351   ///
      int    CPTCCS32                   352- 354   ///
      int    CPTCCS33                   355- 357   ///
      int    CPTCCS34                   358- 360   ///
      int    CPTCCS35                   361- 363   ///
      int    CPTCCS36                   364- 366   ///
      int    CPTCCS37                   367- 369   ///
      int    CPTCCS38                   370- 372   ///
      int    CPTCCS39                   373- 375   ///
      int    CPTCCS40                   376- 378   ///
      int    CPTCCS41                   379- 381   ///
      int    CPTCCS42                   382- 384   ///
      int    CPTCCS43                   385- 387   ///
      int    CPTCCS44                   388- 390   ///
      int    CPTCCS45                   391- 393   ///
      int    CPTCCS46                   394- 396   ///
      int    CPTCCS47                   397- 399   ///
      int    CPTCCS48                   400- 402   ///
      int    CPTCCS49                   403- 405   ///
      int    CPTCCS50                   406- 408   ///
      int    CPTDAY1                    409- 411   ///
      int    CPTDAY2                    412- 414   ///
      int    CPTDAY3                    415- 417   ///
      int    CPTDAY4                    418- 420   ///
      int    CPTDAY5                    421- 423   ///
      int    CPTDAY6                    424- 426   ///
      int    CPTDAY7                    427- 429   ///
      int    CPTDAY8                    430- 432   ///
      int    CPTDAY9                    433- 435   ///
      int    CPTDAY10                   436- 438   ///
      int    CPTDAY11                   439- 441   ///
      int    CPTDAY12                   442- 444   ///
      int    CPTDAY13                   445- 447   ///
      int    CPTDAY14                   448- 450   ///
      int    CPTDAY15                   451- 453   ///
      int    CPTDAY16                   454- 456   ///
      int    CPTDAY17                   457- 459   ///
      int    CPTDAY18                   460- 462   ///
      int    CPTDAY19                   463- 465   ///
      int    CPTDAY20                   466- 468   ///
      int    CPTDAY21                   469- 471   ///
      int    CPTDAY22                   472- 474   ///
      int    CPTDAY23                   475- 477   ///
      int    CPTDAY24                   478- 480   ///
      int    CPTDAY25                   481- 483   ///
      int    CPTDAY26                   484- 486   ///
      int    CPTDAY27                   487- 489   ///
      int    CPTDAY28                   490- 492   ///
      int    CPTDAY29                   493- 495   ///
      int    CPTDAY30                   496- 498   ///
      int    CPTDAY31                   499- 501   ///
      int    CPTDAY32                   502- 504   ///
      int    CPTDAY33                   505- 507   ///
      int    CPTDAY34                   508- 510   ///
      int    CPTDAY35                   511- 513   ///
      int    CPTDAY36                   514- 516   ///
      int    CPTDAY37                   517- 519   ///
      int    CPTDAY38                   520- 522   ///
      int    CPTDAY39                   523- 525   ///
      int    CPTDAY40                   526- 528   ///
      int    CPTDAY41                   529- 531   ///
      int    CPTDAY42                   532- 534   ///
      int    CPTDAY43                   535- 537   ///
      int    CPTDAY44                   538- 540   ///
      int    CPTDAY45                   541- 543   ///
      int    CPTDAY46                   544- 546   ///
      int    CPTDAY47                   547- 549   ///
      int    CPTDAY48                   550- 552   ///
      int    CPTDAY49                   553- 555   ///
      int    CPTDAY50                   556- 558   ///
      str    CPTM1_1                    559- 560   ///
      str    CPTM1_2                    561- 562   ///
      str    CPTM1_3                    563- 564   ///
      str    CPTM1_4                    565- 566   ///
      str    CPTM1_5                    567- 568   ///
      str    CPTM1_6                    569- 570   ///
      str    CPTM1_7                    571- 572   ///
      str    CPTM1_8                    573- 574   ///
      str    CPTM1_9                    575- 576   ///
      str    CPTM1_10                   577- 578   ///
      str    CPTM1_11                   579- 580   ///
      str    CPTM1_12                   581- 582   ///
      str    CPTM1_13                   583- 584   ///
      str    CPTM1_14                   585- 586   ///
      str    CPTM1_15                   587- 588   ///
      str    CPTM1_16                   589- 590   ///
      str    CPTM1_17                   591- 592   ///
      str    CPTM1_18                   593- 594   ///
      str    CPTM1_19                   595- 596   ///
      str    CPTM1_20                   597- 598   ///
      str    CPTM1_21                   599- 600   ///
      str    CPTM1_22                   601- 602   ///
      str    CPTM1_23                   603- 604   ///
      str    CPTM1_24                   605- 606   ///
      str    CPTM1_25                   607- 608   ///
      str    CPTM1_26                   609- 610   ///
      str    CPTM1_27                   611- 612   ///
      str    CPTM1_28                   613- 614   ///
      str    CPTM1_29                   615- 616   ///
      str    CPTM1_30                   617- 618   ///
      str    CPTM1_31                   619- 620   ///
      str    CPTM1_32                   621- 622   ///
      str    CPTM1_33                   623- 624   ///
      str    CPTM1_34                   625- 626   ///
      str    CPTM1_35                   627- 628   ///
      str    CPTM1_36                   629- 630   ///
      str    CPTM1_37                   631- 632   ///
      str    CPTM1_38                   633- 634   ///
      str    CPTM1_39                   635- 636   ///
      str    CPTM1_40                   637- 638   ///
      str    CPTM1_41                   639- 640   ///
      str    CPTM1_42                   641- 642   ///
      str    CPTM1_43                   643- 644   ///
      str    CPTM1_44                   645- 646   ///
      str    CPTM1_45                   647- 648   ///
      str    CPTM1_46                   649- 650   ///
      str    CPTM1_47                   651- 652   ///
      str    CPTM1_48                   653- 654   ///
      str    CPTM1_49                   655- 656   ///
      str    CPTM1_50                   657- 658   ///
      str    CPTM2_1                    659- 660   ///
      str    CPTM2_2                    661- 662   ///
      str    CPTM2_3                    663- 664   ///
      str    CPTM2_4                    665- 666   ///
      str    CPTM2_5                    667- 668   ///
      str    CPTM2_6                    669- 670   ///
      str    CPTM2_7                    671- 672   ///
      str    CPTM2_8                    673- 674   ///
      str    CPTM2_9                    675- 676   ///
      str    CPTM2_10                   677- 678   ///
      str    CPTM2_11                   679- 680   ///
      str    CPTM2_12                   681- 682   ///
      str    CPTM2_13                   683- 684   ///
      str    CPTM2_14                   685- 686   ///
      str    CPTM2_15                   687- 688   ///
      str    CPTM2_16                   689- 690   ///
      str    CPTM2_17                   691- 692   ///
      str    CPTM2_18                   693- 694   ///
      str    CPTM2_19                   695- 696   ///
      str    CPTM2_20                   697- 698   ///
      str    CPTM2_21                   699- 700   ///
      str    CPTM2_22                   701- 702   ///
      str    CPTM2_23                   703- 704   ///
      str    CPTM2_24                   705- 706   ///
      str    CPTM2_25                   707- 708   ///
      str    CPTM2_26                   709- 710   ///
      str    CPTM2_27                   711- 712   ///
      str    CPTM2_28                   713- 714   ///
      str    CPTM2_29                   715- 716   ///
      str    CPTM2_30                   717- 718   ///
      str    CPTM2_31                   719- 720   ///
      str    CPTM2_32                   721- 722   ///
      str    CPTM2_33                   723- 724   ///
      str    CPTM2_34                   725- 726   ///
      str    CPTM2_35                   727- 728   ///
      str    CPTM2_36                   729- 730   ///
      str    CPTM2_37                   731- 732   ///
      str    CPTM2_38                   733- 734   ///
      str    CPTM2_39                   735- 736   ///
      str    CPTM2_40                   737- 738   ///
      str    CPTM2_41                   739- 740   ///
      str    CPTM2_42                   741- 742   ///
      str    CPTM2_43                   743- 744   ///
      str    CPTM2_44                   745- 746   ///
      str    CPTM2_45                   747- 748   ///
      str    CPTM2_46                   749- 750   ///
      str    CPTM2_47                   751- 752   ///
      str    CPTM2_48                   753- 754   ///
      str    CPTM2_49                   755- 756   ///
      str    CPTM2_50                   757- 758   ///
      byte   DIED                       759- 760   ///
      byte   DISPUB04                   761- 762   ///
      byte   DISPUNIFORM                763- 764   ///
      byte   DMONTH                     765- 766   ///
      byte   DQTR                       767- 768   ///
      int    DXVER                      769- 771   ///
      byte   FEMALE                     772- 773   ///
      byte   HCUP_ED                    774- 775   ///
      byte   HCUP_OS                    776- 777   ///
      str    HOSPST                     778- 779   ///
      str    I10_DX_Visit_Reason1       780- 786   ///
      str    I10_DX_Visit_Reason2       787- 793   ///
      str    I10_DX_Visit_Reason3       794- 800   ///
      str    I10_DX1                    801- 807   ///
      str    I10_DX2                    808- 814   ///
      str    I10_DX3                    815- 821   ///
      str    I10_DX4                    822- 828   ///
      str    I10_DX5                    829- 835   ///
      str    I10_DX6                    836- 842   ///
      str    I10_DX7                    843- 849   ///
      str    I10_DX8                    850- 856   ///
      str    I10_DX9                    857- 863   ///
      str    I10_DX10                   864- 870   ///
      str    I10_DX11                   871- 877   ///
      str    I10_DX12                   878- 884   ///
      str    I10_DX13                   885- 891   ///
      str    I10_DX14                   892- 898   ///
      str    I10_DX15                   899- 905   ///
      str    I10_DX16                   906- 912   ///
      str    I10_DX17                   913- 919   ///
      str    I10_DX18                   920- 926   ///
      str    I10_DX19                   927- 933   ///
      str    I10_DX20                   934- 940   ///
      str    I10_DX21                   941- 947   ///
      str    I10_DX22                   948- 954   ///
      str    I10_DX23                   955- 961   ///
      str    I10_DX24                   962- 968   ///
      str    I10_DX25                   969- 975   ///
      str    I10_DX26                   976- 982   ///
      str    I10_DX27                   983- 989   ///
      str    I10_DX28                   990- 996   ///
      str    I10_DX29                   997-1003   ///
      str    I10_DX30                  1004-1010   ///
      str    I10_DX31                  1011-1017   ///
      str    I10_DX32                  1018-1024   ///
      str    I10_DX33                  1025-1031   ///
      int    I10_NDX                   1032-1034   ///
      int    I10_PROCTYPE              1035-1037   ///
      double KEY                       1038-1052   ///
      long   LOS                       1053-1057   ///
      str    MDSPEC1                   1058-1059   ///
      str    MDSPEC2                   1060-1061   ///
      byte   MEDINCSTQ                 1062-1063   ///
      long   MRN_R                     1064-1072   ///
      int    NCPT                      1073-1076   ///
      str    OPservice                 1077        ///
      double OS_TIME                   1078-1088   ///
      byte   PAY1                      1089-1090   ///
      byte   PAY2                      1091-1092   ///
      byte   PAY3                      1093-1094   ///
      int    PL_CBSA                   1095-1097   ///
      byte   PL_NCHS                   1098-1099   ///
      byte   PL_UIC                    1100-1101   ///
      byte   PL_UR_CAT4                1102-1103   ///
      str    PointOfOriginUB04         1104        ///
      str    PSTATE                    1105-1106   ///
      long   PSTCO                     1107-1111   ///
      long   PSTCO2                    1112-1116   ///
      byte   STATE_AS                  1117-1118   ///
      byte   STATE_ED                  1119-1120   ///
      byte   STATE_OS                  1121-1122   ///
      int    YEAR                      1123-1126   ///
      str    ZIP3                      1127-1129   ///
      int    ZIPINC_QRTL               1130-1132   ///
      int    AGEGROUP                  1133-1135   ///
      long   HOSPID                    1136-1140   ///
      int    AYEAR                     1141-1144   ///
      using  "ME_SEDD_2017_CORE.ASC"

***  Assign labels to the data elements ***
label var AMONTH                   "Admission month"
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
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DXVER                    "Diagnosis Version"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
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
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var MDSPEC1                  "Physician 1 specialty (as received from source)"
label var MDSPEC2                  "Physician 2 specialty (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var OPservice                "Indicator of outpatient service (as received from source)"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY3                     "Tertiary expected payer (uniform)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_UIC                   "Patient location: Urban Influence Codes"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var STATE_AS                 "State Ambulatory Surgery service indicator"
label var STATE_ED                 "State Emergency Department service indicator"
label var STATE_OS                 "State Observation Stay service indicator"
label var YEAR                     "Calendar year"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var AGEGROUP                 " "
label var HOSPID                   "HCUP hospital identification number"
label var AYEAR                    "Admission year"

*** Convert special values to missing values ***
recode AMONTH                    (-9 -8 -6 -5=.)
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
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode NCPT                      (-999 -888 -666=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
recode PAY3                      (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
recode PL_UIC                    (-9 -8 -6 -5=.)
recode PL_UR_CAT4                (-9 -8 -6 -5=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode STATE_AS                  (-9 -8 -6 -5=.)
recode STATE_ED                  (-9 -8 -6 -5=.)
recode STATE_OS                  (-9 -8 -6 -5=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AGEGROUP                  (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)

save "ME_SEDD_2017_CORE.dta", replace
