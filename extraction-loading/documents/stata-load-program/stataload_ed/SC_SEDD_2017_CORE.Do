/*****************************************************************************
* Creation Date: 07/17/2019   
* SC_SEDD_2017_CORE.Do
* This program will load the 2017 SC ASCII CORE File into Stata.
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
      byte   ATYPE                        3-   4   ///
      byte   AWEEKEND                     5-   6   ///
      str    CPT1                         7-  11   ///
      str    CPT2                        12-  16   ///
      str    CPT3                        17-  21   ///
      str    CPT4                        22-  26   ///
      str    CPT5                        27-  31   ///
      str    CPT6                        32-  36   ///
      str    CPT7                        37-  41   ///
      str    CPT8                        42-  46   ///
      str    CPT9                        47-  51   ///
      str    CPT10                       52-  56   ///
      str    CPT11                       57-  61   ///
      str    CPT12                       62-  66   ///
      str    CPT13                       67-  71   ///
      str    CPT14                       72-  76   ///
      str    CPT15                       77-  81   ///
      str    CPT16                       82-  86   ///
      str    CPT17                       87-  91   ///
      str    CPT18                       92-  96   ///
      str    CPT19                       97- 101   ///
      str    CPT20                      102- 106   ///
      str    CPT21                      107- 111   ///
      str    CPT22                      112- 116   ///
      str    CPT23                      117- 121   ///
      str    CPT24                      122- 126   ///
      str    CPT25                      127- 131   ///
      str    CPT26                      132- 136   ///
      str    CPT27                      137- 141   ///
      str    CPT28                      142- 146   ///
      str    CPT29                      147- 151   ///
      str    CPT30                      152- 156   ///
      str    CPT31                      157- 161   ///
      str    CPT32                      162- 166   ///
      str    CPT33                      167- 171   ///
      str    CPT34                      172- 176   ///
      str    CPT35                      177- 181   ///
      str    CPT36                      182- 186   ///
      str    CPT37                      187- 191   ///
      str    CPT38                      192- 196   ///
      str    CPT39                      197- 201   ///
      str    CPT40                      202- 206   ///
      str    CPT41                      207- 211   ///
      str    CPT42                      212- 216   ///
      str    CPT43                      217- 221   ///
      str    CPT44                      222- 226   ///
      str    CPT45                      227- 231   ///
      str    CPT46                      232- 236   ///
      str    CPT47                      237- 241   ///
      str    CPT48                      242- 246   ///
      str    CPT49                      247- 251   ///
      str    CPT50                      252- 256   ///
      str    CPT51                      257- 261   ///
      str    CPT52                      262- 266   ///
      str    CPT53                      267- 271   ///
      str    CPT54                      272- 276   ///
      str    CPT55                      277- 281   ///
      str    CPT56                      282- 286   ///
      str    CPT57                      287- 291   ///
      str    CPT58                      292- 296   ///
      str    CPT59                      297- 301   ///
      str    CPT60                      302- 306   ///
      str    CPT61                      307- 311   ///
      str    CPT62                      312- 316   ///
      str    CPT63                      317- 321   ///
      str    CPT64                      322- 326   ///
      str    CPT65                      327- 331   ///
      str    CPT66                      332- 336   ///
      str    CPT67                      337- 341   ///
      str    CPT68                      342- 346   ///
      str    CPT69                      347- 351   ///
      str    CPT70                      352- 356   ///
      str    CPT71                      357- 361   ///
      str    CPT72                      362- 366   ///
      str    CPT73                      367- 371   ///
      str    CPT74                      372- 376   ///
      str    CPT75                      377- 381   ///
      str    CPT76                      382- 386   ///
      str    CPT77                      387- 391   ///
      str    CPT78                      392- 396   ///
      str    CPT79                      397- 401   ///
      str    CPT80                      402- 406   ///
      str    CPT81                      407- 411   ///
      str    CPT82                      412- 416   ///
      str    CPT83                      417- 421   ///
      str    CPT84                      422- 426   ///
      str    CPT85                      427- 431   ///
      str    CPT86                      432- 436   ///
      str    CPT87                      437- 441   ///
      str    CPT88                      442- 446   ///
      str    CPT89                      447- 451   ///
      str    CPT90                      452- 456   ///
      str    CPT91                      457- 461   ///
      str    CPT92                      462- 466   ///
      str    CPT93                      467- 471   ///
      str    CPT94                      472- 476   ///
      str    CPT95                      477- 481   ///
      str    CPT96                      482- 486   ///
      str    CPT97                      487- 491   ///
      str    CPT98                      492- 496   ///
      str    CPT99                      497- 501   ///
      str    CPT100                     502- 506   ///
      str    CPT101                     507- 511   ///
      str    CPT102                     512- 516   ///
      str    CPT103                     517- 521   ///
      str    CPT104                     522- 526   ///
      str    CPT105                     527- 531   ///
      str    CPT106                     532- 536   ///
      str    CPT107                     537- 541   ///
      str    CPT108                     542- 546   ///
      str    CPT109                     547- 551   ///
      str    CPT110                     552- 556   ///
      int    CPTCCS1                    557- 559   ///
      int    CPTCCS2                    560- 562   ///
      int    CPTCCS3                    563- 565   ///
      int    CPTCCS4                    566- 568   ///
      int    CPTCCS5                    569- 571   ///
      int    CPTCCS6                    572- 574   ///
      int    CPTCCS7                    575- 577   ///
      int    CPTCCS8                    578- 580   ///
      int    CPTCCS9                    581- 583   ///
      int    CPTCCS10                   584- 586   ///
      int    CPTCCS11                   587- 589   ///
      int    CPTCCS12                   590- 592   ///
      int    CPTCCS13                   593- 595   ///
      int    CPTCCS14                   596- 598   ///
      int    CPTCCS15                   599- 601   ///
      int    CPTCCS16                   602- 604   ///
      int    CPTCCS17                   605- 607   ///
      int    CPTCCS18                   608- 610   ///
      int    CPTCCS19                   611- 613   ///
      int    CPTCCS20                   614- 616   ///
      int    CPTCCS21                   617- 619   ///
      int    CPTCCS22                   620- 622   ///
      int    CPTCCS23                   623- 625   ///
      int    CPTCCS24                   626- 628   ///
      int    CPTCCS25                   629- 631   ///
      int    CPTCCS26                   632- 634   ///
      int    CPTCCS27                   635- 637   ///
      int    CPTCCS28                   638- 640   ///
      int    CPTCCS29                   641- 643   ///
      int    CPTCCS30                   644- 646   ///
      int    CPTCCS31                   647- 649   ///
      int    CPTCCS32                   650- 652   ///
      int    CPTCCS33                   653- 655   ///
      int    CPTCCS34                   656- 658   ///
      int    CPTCCS35                   659- 661   ///
      int    CPTCCS36                   662- 664   ///
      int    CPTCCS37                   665- 667   ///
      int    CPTCCS38                   668- 670   ///
      int    CPTCCS39                   671- 673   ///
      int    CPTCCS40                   674- 676   ///
      int    CPTCCS41                   677- 679   ///
      int    CPTCCS42                   680- 682   ///
      int    CPTCCS43                   683- 685   ///
      int    CPTCCS44                   686- 688   ///
      int    CPTCCS45                   689- 691   ///
      int    CPTCCS46                   692- 694   ///
      int    CPTCCS47                   695- 697   ///
      int    CPTCCS48                   698- 700   ///
      int    CPTCCS49                   701- 703   ///
      int    CPTCCS50                   704- 706   ///
      int    CPTCCS51                   707- 709   ///
      int    CPTCCS52                   710- 712   ///
      int    CPTCCS53                   713- 715   ///
      int    CPTCCS54                   716- 718   ///
      int    CPTCCS55                   719- 721   ///
      int    CPTCCS56                   722- 724   ///
      int    CPTCCS57                   725- 727   ///
      int    CPTCCS58                   728- 730   ///
      int    CPTCCS59                   731- 733   ///
      int    CPTCCS60                   734- 736   ///
      int    CPTCCS61                   737- 739   ///
      int    CPTCCS62                   740- 742   ///
      int    CPTCCS63                   743- 745   ///
      int    CPTCCS64                   746- 748   ///
      int    CPTCCS65                   749- 751   ///
      int    CPTCCS66                   752- 754   ///
      int    CPTCCS67                   755- 757   ///
      int    CPTCCS68                   758- 760   ///
      int    CPTCCS69                   761- 763   ///
      int    CPTCCS70                   764- 766   ///
      int    CPTCCS71                   767- 769   ///
      int    CPTCCS72                   770- 772   ///
      int    CPTCCS73                   773- 775   ///
      int    CPTCCS74                   776- 778   ///
      int    CPTCCS75                   779- 781   ///
      int    CPTCCS76                   782- 784   ///
      int    CPTCCS77                   785- 787   ///
      int    CPTCCS78                   788- 790   ///
      int    CPTCCS79                   791- 793   ///
      int    CPTCCS80                   794- 796   ///
      int    CPTCCS81                   797- 799   ///
      int    CPTCCS82                   800- 802   ///
      int    CPTCCS83                   803- 805   ///
      int    CPTCCS84                   806- 808   ///
      int    CPTCCS85                   809- 811   ///
      int    CPTCCS86                   812- 814   ///
      int    CPTCCS87                   815- 817   ///
      int    CPTCCS88                   818- 820   ///
      int    CPTCCS89                   821- 823   ///
      int    CPTCCS90                   824- 826   ///
      int    CPTCCS91                   827- 829   ///
      int    CPTCCS92                   830- 832   ///
      int    CPTCCS93                   833- 835   ///
      int    CPTCCS94                   836- 838   ///
      int    CPTCCS95                   839- 841   ///
      int    CPTCCS96                   842- 844   ///
      int    CPTCCS97                   845- 847   ///
      int    CPTCCS98                   848- 850   ///
      int    CPTCCS99                   851- 853   ///
      int    CPTCCS100                  854- 856   ///
      int    CPTCCS101                  857- 859   ///
      int    CPTCCS102                  860- 862   ///
      int    CPTCCS103                  863- 865   ///
      int    CPTCCS104                  866- 868   ///
      int    CPTCCS105                  869- 871   ///
      int    CPTCCS106                  872- 874   ///
      int    CPTCCS107                  875- 877   ///
      int    CPTCCS108                  878- 880   ///
      int    CPTCCS109                  881- 883   ///
      int    CPTCCS110                  884- 886   ///
      byte   DIED                       887- 888   ///
      str    DISP_X                     889- 890   ///
      byte   DISPUB04                   891- 892   ///
      byte   DISPUNIFORM                893- 894   ///
      byte   DMONTH                     895- 896   ///
      byte   DQTR                       897- 898   ///
      int    DXVER                      899- 901   ///
      byte   FEMALE                     902- 903   ///
      byte   HCUP_ED                    904- 905   ///
      byte   HCUP_OS                    906- 907   ///
      str    HOSPST                     908- 909   ///
      str    I10_DX_Visit_Reason1       910- 916   ///
      str    I10_DX_Visit_Reason2       917- 923   ///
      str    I10_DX_Visit_Reason3       924- 930   ///
      str    I10_DX1                    931- 937   ///
      str    I10_DX2                    938- 944   ///
      str    I10_DX3                    945- 951   ///
      str    I10_DX4                    952- 958   ///
      str    I10_DX5                    959- 965   ///
      str    I10_DX6                    966- 972   ///
      str    I10_DX7                    973- 979   ///
      str    I10_DX8                    980- 986   ///
      str    I10_DX9                    987- 993   ///
      str    I10_DX10                   994-1000   ///
      str    I10_DX11                  1001-1007   ///
      str    I10_DX12                  1008-1014   ///
      str    I10_DX13                  1015-1021   ///
      str    I10_DX14                  1022-1028   ///
      str    I10_DX15                  1029-1035   ///
      str    I10_DX16                  1036-1042   ///
      str    I10_DX17                  1043-1049   ///
      int    I10_NDX                   1050-1052   ///
      int    I10_PROCTYPE              1053-1055   ///
      double KEY                       1056-1070   ///
      long   LOS                       1071-1075   ///
      long   LOS_X                     1076-1081   ///
      str    MDSPEC1                   1082-1084   ///
      str    MDSPEC2                   1085-1087   ///
      byte   MEDINCSTQ                 1088-1089   ///
      int    NCPT                      1090-1093   ///
      byte   PAY1                      1094-1095   ///
      str    PAY1_X                    1096-1097   ///
      byte   PL_NCHS                   1098-1099   ///
      str    PointOfOrigin_X           1100        ///
      str    PointOfOriginUB04         1101        ///
      str    PSTATE                    1102-1103   ///
      long   PSTCO                     1104-1108   ///
      byte   RACE                      1109-1110   ///
      str    RACE_X                    1111        ///
      byte   STATE_AS                  1112-1113   ///
      byte   STATE_ED                  1114-1115   ///
      byte   STATE_OS                  1116-1117   ///
      double TOTCHG                    1118-1127   ///
      double TOTCHG_X                  1128-1142   ///
      int    YEAR                      1143-1146   ///
      int    ZIPINC_QRTL               1147-1149   ///
      int    AGEGROUP                  1150-1152   ///
      int    AYEAR                     1153-1156   ///
      using  "SC_SEDD_2017_CORE.ASC"

***  Assign labels to the data elements ***
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
label var CPT61                    "CPT/HCPCS procedure code 61"
label var CPT62                    "CPT/HCPCS procedure code 62"
label var CPT63                    "CPT/HCPCS procedure code 63"
label var CPT64                    "CPT/HCPCS procedure code 64"
label var CPT65                    "CPT/HCPCS procedure code 65"
label var CPT66                    "CPT/HCPCS procedure code 66"
label var CPT67                    "CPT/HCPCS procedure code 67"
label var CPT68                    "CPT/HCPCS procedure code 68"
label var CPT69                    "CPT/HCPCS procedure code 69"
label var CPT70                    "CPT/HCPCS procedure code 70"
label var CPT71                    "CPT/HCPCS procedure code 71"
label var CPT72                    "CPT/HCPCS procedure code 72"
label var CPT73                    "CPT/HCPCS procedure code 73"
label var CPT74                    "CPT/HCPCS procedure code 74"
label var CPT75                    "CPT/HCPCS procedure code 75"
label var CPT76                    "CPT/HCPCS procedure code 76"
label var CPT77                    "CPT/HCPCS procedure code 77"
label var CPT78                    "CPT/HCPCS procedure code 78"
label var CPT79                    "CPT/HCPCS procedure code 79"
label var CPT80                    "CPT/HCPCS procedure code 80"
label var CPT81                    "CPT/HCPCS procedure code 81"
label var CPT82                    "CPT/HCPCS procedure code 82"
label var CPT83                    "CPT/HCPCS procedure code 83"
label var CPT84                    "CPT/HCPCS procedure code 84"
label var CPT85                    "CPT/HCPCS procedure code 85"
label var CPT86                    "CPT/HCPCS procedure code 86"
label var CPT87                    "CPT/HCPCS procedure code 87"
label var CPT88                    "CPT/HCPCS procedure code 88"
label var CPT89                    "CPT/HCPCS procedure code 89"
label var CPT90                    "CPT/HCPCS procedure code 90"
label var CPT91                    "CPT/HCPCS procedure code 91"
label var CPT92                    "CPT/HCPCS procedure code 92"
label var CPT93                    "CPT/HCPCS procedure code 93"
label var CPT94                    "CPT/HCPCS procedure code 94"
label var CPT95                    "CPT/HCPCS procedure code 95"
label var CPT96                    "CPT/HCPCS procedure code 96"
label var CPT97                    "CPT/HCPCS procedure code 97"
label var CPT98                    "CPT/HCPCS procedure code 98"
label var CPT99                    "CPT/HCPCS procedure code 99"
label var CPT100                   "CPT/HCPCS procedure code 100"
label var CPT101                   "CPT/HCPCS procedure code 101"
label var CPT102                   "CPT/HCPCS procedure code 102"
label var CPT103                   "CPT/HCPCS procedure code 103"
label var CPT104                   "CPT/HCPCS procedure code 104"
label var CPT105                   "CPT/HCPCS procedure code 105"
label var CPT106                   "CPT/HCPCS procedure code 106"
label var CPT107                   "CPT/HCPCS procedure code 107"
label var CPT108                   "CPT/HCPCS procedure code 108"
label var CPT109                   "CPT/HCPCS procedure code 109"
label var CPT110                   "CPT/HCPCS procedure code 110"
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
label var CPTCCS61                 "CCS: CPT 61"
label var CPTCCS62                 "CCS: CPT 62"
label var CPTCCS63                 "CCS: CPT 63"
label var CPTCCS64                 "CCS: CPT 64"
label var CPTCCS65                 "CCS: CPT 65"
label var CPTCCS66                 "CCS: CPT 66"
label var CPTCCS67                 "CCS: CPT 67"
label var CPTCCS68                 "CCS: CPT 68"
label var CPTCCS69                 "CCS: CPT 69"
label var CPTCCS70                 "CCS: CPT 70"
label var CPTCCS71                 "CCS: CPT 71"
label var CPTCCS72                 "CCS: CPT 72"
label var CPTCCS73                 "CCS: CPT 73"
label var CPTCCS74                 "CCS: CPT 74"
label var CPTCCS75                 "CCS: CPT 75"
label var CPTCCS76                 "CCS: CPT 76"
label var CPTCCS77                 "CCS: CPT 77"
label var CPTCCS78                 "CCS: CPT 78"
label var CPTCCS79                 "CCS: CPT 79"
label var CPTCCS80                 "CCS: CPT 80"
label var CPTCCS81                 "CCS: CPT 81"
label var CPTCCS82                 "CCS: CPT 82"
label var CPTCCS83                 "CCS: CPT 83"
label var CPTCCS84                 "CCS: CPT 84"
label var CPTCCS85                 "CCS: CPT 85"
label var CPTCCS86                 "CCS: CPT 86"
label var CPTCCS87                 "CCS: CPT 87"
label var CPTCCS88                 "CCS: CPT 88"
label var CPTCCS89                 "CCS: CPT 89"
label var CPTCCS90                 "CCS: CPT 90"
label var CPTCCS91                 "CCS: CPT 91"
label var CPTCCS92                 "CCS: CPT 92"
label var CPTCCS93                 "CCS: CPT 93"
label var CPTCCS94                 "CCS: CPT 94"
label var CPTCCS95                 "CCS: CPT 95"
label var CPTCCS96                 "CCS: CPT 96"
label var CPTCCS97                 "CCS: CPT 97"
label var CPTCCS98                 "CCS: CPT 98"
label var CPTCCS99                 "CCS: CPT 99"
label var CPTCCS100                "CCS: CPT 100"
label var CPTCCS101                "CCS: CPT 101"
label var CPTCCS102                "CCS: CPT 102"
label var CPTCCS103                "CCS: CPT 103"
label var CPTCCS104                "CCS: CPT 104"
label var CPTCCS105                "CCS: CPT 105"
label var CPTCCS106                "CCS: CPT 106"
label var CPTCCS107                "CCS: CPT 107"
label var CPTCCS108                "CCS: CPT 108"
label var CPTCCS109                "CCS: CPT 109"
label var CPTCCS110                "CCS: CPT 110"
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
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDSPEC1                  "Physician 1 specialty (as received from source)"
label var MDSPEC2                  "Physician 2 specialty (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var STATE_AS                 "State Ambulatory Surgery service indicator"
label var STATE_ED                 "State Emergency Department service indicator"
label var STATE_OS                 "State Observation Stay service indicator"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var YEAR                     "Calendar year"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var AGEGROUP                 "Age Group"
label var AYEAR                    "Admission year"

*** Convert special values to missing values ***
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
recode CPTCCS61                  (-99 -88 -66=.)
recode CPTCCS62                  (-99 -88 -66=.)
recode CPTCCS63                  (-99 -88 -66=.)
recode CPTCCS64                  (-99 -88 -66=.)
recode CPTCCS65                  (-99 -88 -66=.)
recode CPTCCS66                  (-99 -88 -66=.)
recode CPTCCS67                  (-99 -88 -66=.)
recode CPTCCS68                  (-99 -88 -66=.)
recode CPTCCS69                  (-99 -88 -66=.)
recode CPTCCS70                  (-99 -88 -66=.)
recode CPTCCS71                  (-99 -88 -66=.)
recode CPTCCS72                  (-99 -88 -66=.)
recode CPTCCS73                  (-99 -88 -66=.)
recode CPTCCS74                  (-99 -88 -66=.)
recode CPTCCS75                  (-99 -88 -66=.)
recode CPTCCS76                  (-99 -88 -66=.)
recode CPTCCS77                  (-99 -88 -66=.)
recode CPTCCS78                  (-99 -88 -66=.)
recode CPTCCS79                  (-99 -88 -66=.)
recode CPTCCS80                  (-99 -88 -66=.)
recode CPTCCS81                  (-99 -88 -66=.)
recode CPTCCS82                  (-99 -88 -66=.)
recode CPTCCS83                  (-99 -88 -66=.)
recode CPTCCS84                  (-99 -88 -66=.)
recode CPTCCS85                  (-99 -88 -66=.)
recode CPTCCS86                  (-99 -88 -66=.)
recode CPTCCS87                  (-99 -88 -66=.)
recode CPTCCS88                  (-99 -88 -66=.)
recode CPTCCS89                  (-99 -88 -66=.)
recode CPTCCS90                  (-99 -88 -66=.)
recode CPTCCS91                  (-99 -88 -66=.)
recode CPTCCS92                  (-99 -88 -66=.)
recode CPTCCS93                  (-99 -88 -66=.)
recode CPTCCS94                  (-99 -88 -66=.)
recode CPTCCS95                  (-99 -88 -66=.)
recode CPTCCS96                  (-99 -88 -66=.)
recode CPTCCS97                  (-99 -88 -66=.)
recode CPTCCS98                  (-99 -88 -66=.)
recode CPTCCS99                  (-99 -88 -66=.)
recode CPTCCS100                 (-99 -88 -66=.)
recode CPTCCS101                 (-99 -88 -66=.)
recode CPTCCS102                 (-99 -88 -66=.)
recode CPTCCS103                 (-99 -88 -66=.)
recode CPTCCS104                 (-99 -88 -66=.)
recode CPTCCS105                 (-99 -88 -66=.)
recode CPTCCS106                 (-99 -88 -66=.)
recode CPTCCS107                 (-99 -88 -66=.)
recode CPTCCS108                 (-99 -88 -66=.)
recode CPTCCS109                 (-99 -88 -66=.)
recode CPTCCS110                 (-99 -88 -66=.)
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
recode LOS_X                     (-99999 -88888 -66666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCPT                      (-999 -888 -666=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode STATE_AS                  (-9 -8 -6 -5=.)
recode STATE_ED                  (-9 -8 -6 -5=.)
recode STATE_OS                  (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AGEGROUP                  (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)

save "SC_SEDD_2017_CORE.dta", replace
