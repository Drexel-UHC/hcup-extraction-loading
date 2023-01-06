/*****************************************************************************
* Creation Date: 05/24/2017   
* KY_SID_2015q4_CORE.Do
* This program will load the 2015 KY ASCII CORE File into Stata.
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
      str    BILLTYPE                    16-  19   ///
      int    BWT                         20-  23   ///
      byte   DIED                        24-  25   ///
      str    DISP_X                      26-  27   ///
      byte   DISPUB04                    28-  29   ///
      byte   DISPUNIFORM                 30-  31   ///
      byte   DMONTH                      32-  33   ///
      byte   DNR                         34-  35   ///
      byte   DQTR                        36-  37   ///
      int    DRG                         38-  40   ///
      int    DRG_NoPOA                   41-  43   ///
      int    DRG32                       44-  46   ///
      byte   DRGVER                      47-  48   ///
      str    DSHOSPID                    49-  65   ///
      str    DXPOA1                      66        ///
      str    DXPOA2                      67        ///
      str    DXPOA3                      68        ///
      str    DXPOA4                      69        ///
      str    DXPOA5                      70        ///
      str    DXPOA6                      71        ///
      str    DXPOA7                      72        ///
      str    DXPOA8                      73        ///
      str    DXPOA9                      74        ///
      str    DXPOA10                     75        ///
      str    DXPOA11                     76        ///
      str    DXPOA12                     77        ///
      str    DXPOA13                     78        ///
      str    DXPOA14                     79        ///
      str    DXPOA15                     80        ///
      str    DXPOA16                     81        ///
      str    DXPOA17                     82        ///
      str    DXPOA18                     83        ///
      str    DXPOA19                     84        ///
      str    DXPOA20                     85        ///
      str    DXPOA21                     86        ///
      str    DXPOA22                     87        ///
      str    DXPOA23                     88        ///
      str    DXPOA24                     89        ///
      str    DXPOA25                     90        ///
      int    DXVER                       91-  93   ///
      str    E_POA1                      94        ///
      str    E_POA2                      95        ///
      str    E_POA3                      96        ///
      str    E_POA4                      97        ///
      str    E_POA5                      98        ///
      str    E_POA6                      99        ///
      str    E_POA7                     100        ///
      str    E_POA8                     101        ///
      str    E_POA9                     102        ///
      byte   FEMALE                     103- 104   ///
      byte   HCUP_ED                    105- 106   ///
      byte   HCUP_OS                    107- 108   ///
      byte   HISPANIC                   109- 110   ///
      str    HISPANIC_X                 111- 112   ///
      str    HOSP_NPI                   113- 122   ///
      str    HOSPST                     123- 124   ///
      str    I10_DX_Admitting           125- 131   ///
      str    I10_DX1                    132- 138   ///
      str    I10_DX2                    139- 145   ///
      str    I10_DX3                    146- 152   ///
      str    I10_DX4                    153- 159   ///
      str    I10_DX5                    160- 166   ///
      str    I10_DX6                    167- 173   ///
      str    I10_DX7                    174- 180   ///
      str    I10_DX8                    181- 187   ///
      str    I10_DX9                    188- 194   ///
      str    I10_DX10                   195- 201   ///
      str    I10_DX11                   202- 208   ///
      str    I10_DX12                   209- 215   ///
      str    I10_DX13                   216- 222   ///
      str    I10_DX14                   223- 229   ///
      str    I10_DX15                   230- 236   ///
      str    I10_DX16                   237- 243   ///
      str    I10_DX17                   244- 250   ///
      str    I10_DX18                   251- 257   ///
      str    I10_DX19                   258- 264   ///
      str    I10_DX20                   265- 271   ///
      str    I10_DX21                   272- 278   ///
      str    I10_DX22                   279- 285   ///
      str    I10_DX23                   286- 292   ///
      str    I10_DX24                   293- 299   ///
      str    I10_DX25                   300- 306   ///
      int    I10_DXCCS1                 307- 310   ///
      int    I10_DXCCS2                 311- 314   ///
      int    I10_DXCCS3                 315- 318   ///
      int    I10_DXCCS4                 319- 322   ///
      int    I10_DXCCS5                 323- 326   ///
      int    I10_DXCCS6                 327- 330   ///
      int    I10_DXCCS7                 331- 334   ///
      int    I10_DXCCS8                 335- 338   ///
      int    I10_DXCCS9                 339- 342   ///
      int    I10_DXCCS10                343- 346   ///
      int    I10_DXCCS11                347- 350   ///
      int    I10_DXCCS12                351- 354   ///
      int    I10_DXCCS13                355- 358   ///
      int    I10_DXCCS14                359- 362   ///
      int    I10_DXCCS15                363- 366   ///
      int    I10_DXCCS16                367- 370   ///
      int    I10_DXCCS17                371- 374   ///
      int    I10_DXCCS18                375- 378   ///
      int    I10_DXCCS19                379- 382   ///
      int    I10_DXCCS20                383- 386   ///
      int    I10_DXCCS21                387- 390   ///
      int    I10_DXCCS22                391- 394   ///
      int    I10_DXCCS23                395- 398   ///
      int    I10_DXCCS24                399- 402   ///
      int    I10_DXCCS25                403- 406   ///
      str    I10_ECAUSE1                407- 413   ///
      str    I10_ECAUSE2                414- 420   ///
      str    I10_ECAUSE3                421- 427   ///
      str    I10_ECAUSE4                428- 434   ///
      str    I10_ECAUSE5                435- 441   ///
      str    I10_ECAUSE6                442- 448   ///
      str    I10_ECAUSE7                449- 455   ///
      str    I10_ECAUSE8                456- 462   ///
      str    I10_ECAUSE9                463- 469   ///
      int    I10_ECauseCCS1             470- 473   ///
      int    I10_ECauseCCS2             474- 477   ///
      int    I10_ECauseCCS3             478- 481   ///
      int    I10_ECauseCCS4             482- 485   ///
      int    I10_ECauseCCS5             486- 489   ///
      int    I10_ECauseCCS6             490- 493   ///
      int    I10_ECauseCCS7             494- 497   ///
      int    I10_ECauseCCS8             498- 501   ///
      int    I10_ECauseCCS9             502- 505   ///
      int    I10_HOSPBRTH               506- 508   ///
      int    I10_NCHRONIC               509- 511   ///
      int    I10_NDX                    512- 514   ///
      byte   I10_NECAUSE                515- 516   ///
      byte   I10_NEOMAT                 517- 518   ///
      int    I10_NPR                    519- 521   ///
      byte   I10_ORPROC                 522- 523   ///
      str    I10_PR1                    524- 530   ///
      str    I10_PR2                    531- 537   ///
      str    I10_PR3                    538- 544   ///
      str    I10_PR4                    545- 551   ///
      str    I10_PR5                    552- 558   ///
      str    I10_PR6                    559- 565   ///
      str    I10_PR7                    566- 572   ///
      str    I10_PR8                    573- 579   ///
      str    I10_PR9                    580- 586   ///
      str    I10_PR10                   587- 593   ///
      str    I10_PR11                   594- 600   ///
      str    I10_PR12                   601- 607   ///
      str    I10_PR13                   608- 614   ///
      str    I10_PR14                   615- 621   ///
      str    I10_PR15                   622- 628   ///
      str    I10_PR16                   629- 635   ///
      str    I10_PR17                   636- 642   ///
      str    I10_PR18                   643- 649   ///
      str    I10_PR19                   650- 656   ///
      str    I10_PR20                   657- 663   ///
      str    I10_PR21                   664- 670   ///
      str    I10_PR22                   671- 677   ///
      str    I10_PR23                   678- 684   ///
      str    I10_PR24                   685- 691   ///
      str    I10_PR25                   692- 698   ///
      int    I10_PRCCS1                 699- 701   ///
      int    I10_PRCCS2                 702- 704   ///
      int    I10_PRCCS3                 705- 707   ///
      int    I10_PRCCS4                 708- 710   ///
      int    I10_PRCCS5                 711- 713   ///
      int    I10_PRCCS6                 714- 716   ///
      int    I10_PRCCS7                 717- 719   ///
      int    I10_PRCCS8                 720- 722   ///
      int    I10_PRCCS9                 723- 725   ///
      int    I10_PRCCS10                726- 728   ///
      int    I10_PRCCS11                729- 731   ///
      int    I10_PRCCS12                732- 734   ///
      int    I10_PRCCS13                735- 737   ///
      int    I10_PRCCS14                738- 740   ///
      int    I10_PRCCS15                741- 743   ///
      int    I10_PRCCS16                744- 746   ///
      int    I10_PRCCS17                747- 749   ///
      int    I10_PRCCS18                750- 752   ///
      int    I10_PRCCS19                753- 755   ///
      int    I10_PRCCS20                756- 758   ///
      int    I10_PRCCS21                759- 761   ///
      int    I10_PRCCS22                762- 764   ///
      int    I10_PRCCS23                765- 767   ///
      int    I10_PRCCS24                768- 770   ///
      int    I10_PRCCS25                771- 773   ///
      int    I10_PROCTYPE               774- 776   ///
      byte   I10_SERVICELINE            777- 778   ///
      double KEY                        779- 793   ///
      long   LOS                        794- 798   ///
      long   LOS_X                      799- 804   ///
      byte   MDC                        805- 806   ///
      byte   MDC_NoPOA                  807- 808   ///
      byte   MDC32                      809- 810   ///
      byte   MEDINCSTQ                  811- 812   ///
      double OS_TIME                    813- 823   ///
      byte   PAY1                       824- 825   ///
      str    PAY1_X                     826- 830   ///
      byte   PAY2                       831- 832   ///
      str    PAY2_X                     833- 837   ///
      byte   PAY3                       838- 839   ///
      str    PAY3_X                     840- 844   ///
      int    PL_CBSA                    845- 847   ///
      byte   PL_NCHS                    848- 849   ///
      byte   PL_RUCC                    850- 851   ///
      byte   PL_UIC                     852- 853   ///
      byte   PL_UR_CAT4                 854- 855   ///
      byte   POA_Disch_Edit1            856- 857   ///
      byte   POA_Disch_Edit2            858- 859   ///
      byte   POA_Hosp_Edit1             860- 861   ///
      byte   POA_Hosp_Edit2             862- 863   ///
      byte   POA_Hosp_Edit3             864- 865   ///
      double POA_Hosp_Edit3_Value       866- 873   ///
      str    PointOfOrigin_X            874        ///
      str    PointOfOriginUB04          875        ///
      long   PRDAY1                     876- 880   ///
      long   PRDAY2                     881- 885   ///
      long   PRDAY3                     886- 890   ///
      long   PRDAY4                     891- 895   ///
      long   PRDAY5                     896- 900   ///
      long   PRDAY6                     901- 905   ///
      long   PRDAY7                     906- 910   ///
      long   PRDAY8                     911- 915   ///
      long   PRDAY9                     916- 920   ///
      long   PRDAY10                    921- 925   ///
      long   PRDAY11                    926- 930   ///
      long   PRDAY12                    931- 935   ///
      long   PRDAY13                    936- 940   ///
      long   PRDAY14                    941- 945   ///
      long   PRDAY15                    946- 950   ///
      long   PRDAY16                    951- 955   ///
      long   PRDAY17                    956- 960   ///
      long   PRDAY18                    961- 965   ///
      long   PRDAY19                    966- 970   ///
      long   PRDAY20                    971- 975   ///
      long   PRDAY21                    976- 980   ///
      long   PRDAY22                    981- 985   ///
      long   PRDAY23                    986- 990   ///
      long   PRDAY24                    991- 995   ///
      long   PRDAY25                    996-1000   ///
      int    PRVER                     1001-1003   ///
      str    PSTATE                    1004-1005   ///
      long   PSTCO                     1006-1010   ///
      long   PSTCO2                    1011-1015   ///
      byte   RACE                      1016-1017   ///
      str    RACE_X                    1018-1019   ///
      double TOTCHG                    1020-1029   ///
      double TOTCHG_X                  1030-1044   ///
      byte   TRAN_IN                   1045-1046   ///
      byte   TRAN_OUT                  1047-1048   ///
      int    YEAR                      1049-1052   ///
      str    ZIP                       1053-1057   ///
      int    ZIPINC_QRTL               1058-1060   ///
      int    AYEAR                     1061-1064   ///
      byte   BMONTH                    1065-1066   ///
      int    BYEAR                     1067-1070   ///
      byte   PRMONTH1                  1071-1072   ///
      byte   PRMONTH2                  1073-1074   ///
      byte   PRMONTH3                  1075-1076   ///
      byte   PRMONTH4                  1077-1078   ///
      byte   PRMONTH5                  1079-1080   ///
      byte   PRMONTH6                  1081-1082   ///
      byte   PRMONTH7                  1083-1084   ///
      byte   PRMONTH8                  1085-1086   ///
      byte   PRMONTH9                  1087-1088   ///
      byte   PRMONTH10                 1089-1090   ///
      byte   PRMONTH11                 1091-1092   ///
      byte   PRMONTH12                 1093-1094   ///
      byte   PRMONTH13                 1095-1096   ///
      byte   PRMONTH14                 1097-1098   ///
      byte   PRMONTH15                 1099-1100   ///
      byte   PRMONTH16                 1101-1102   ///
      byte   PRMONTH17                 1103-1104   ///
      byte   PRMONTH18                 1105-1106   ///
      byte   PRMONTH19                 1107-1108   ///
      byte   PRMONTH20                 1109-1110   ///
      byte   PRMONTH21                 1111-1112   ///
      byte   PRMONTH22                 1113-1114   ///
      byte   PRMONTH23                 1115-1116   ///
      byte   PRMONTH24                 1117-1118   ///
      byte   PRMONTH25                 1119-1120   ///
      int    PRYEAR1                   1121-1124   ///
      int    PRYEAR2                   1125-1128   ///
      int    PRYEAR3                   1129-1132   ///
      int    PRYEAR4                   1133-1136   ///
      int    PRYEAR5                   1137-1140   ///
      int    PRYEAR6                   1141-1144   ///
      int    PRYEAR7                   1145-1148   ///
      int    PRYEAR8                   1149-1152   ///
      int    PRYEAR9                   1153-1156   ///
      int    PRYEAR10                  1157-1160   ///
      int    PRYEAR11                  1161-1164   ///
      int    PRYEAR12                  1165-1168   ///
      int    PRYEAR13                  1169-1172   ///
      int    PRYEAR14                  1173-1176   ///
      int    PRYEAR15                  1177-1180   ///
      int    PRYEAR16                  1181-1184   ///
      int    PRYEAR17                  1185-1188   ///
      int    PRYEAR18                  1189-1192   ///
      int    PRYEAR19                  1193-1196   ///
      int    PRYEAR20                  1197-1200   ///
      int    PRYEAR21                  1201-1204   ///
      int    PRYEAR22                  1205-1208   ///
      int    PRYEAR23                  1209-1212   ///
      int    PRYEAR24                  1213-1216   ///
      int    PRYEAR25                  1217-1220   ///
      using  "KY_SID_2015q4_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var BWT                      "Birth weight in grams"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DNR                      "Do not resuscitate indicator"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSP_NPI                 "Hospital NPI"
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
label var I10_ECauseCCS1           "ICD-10-CM CCS: E Cause 1"
label var I10_ECauseCCS2           "ICD-10-CM CCS: E Cause 2"
label var I10_ECauseCCS3           "ICD-10-CM CCS: E Cause 3"
label var I10_ECauseCCS4           "ICD-10-CM CCS: E Cause 4"
label var I10_ECauseCCS5           "ICD-10-CM CCS: E Cause 5"
label var I10_ECauseCCS6           "ICD-10-CM CCS: E Cause 6"
label var I10_ECauseCCS7           "ICD-10-CM CCS: E Cause 7"
label var I10_ECauseCCS8           "ICD-10-CM CCS: E Cause 8"
label var I10_ECauseCCS9           "ICD-10-CM CCS: E Cause 9"
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
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
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
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DNR                       (-9 -8 -6 -5=.)
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
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
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

save "KY_SID_2015q4_CORE.dta", replace
