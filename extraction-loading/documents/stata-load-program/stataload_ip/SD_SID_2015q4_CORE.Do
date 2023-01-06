/*****************************************************************************
* Creation Date: 03/24/2017   
* SD_SID_2015q4_CORE.Do
* This program will load the 2015 SD ASCII CORE File into Stata.
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
      str    DISP_X                      18-  21   ///
      byte   DISPUB04                    22-  23   ///
      byte   DISPUNIFORM                 24-  25   ///
      byte   DMONTH                      26-  27   ///
      byte   DQTR                        28-  29   ///
      int    DRG                         30-  32   ///
      int    DRG_NoPOA                   33-  35   ///
      int    DRG32                       36-  38   ///
      byte   DRGVER                      39-  40   ///
      str    DXPOA1                      41        ///
      str    DXPOA2                      42        ///
      str    DXPOA3                      43        ///
      str    DXPOA4                      44        ///
      str    DXPOA5                      45        ///
      str    DXPOA6                      46        ///
      str    DXPOA7                      47        ///
      str    DXPOA8                      48        ///
      str    DXPOA9                      49        ///
      str    DXPOA10                     50        ///
      str    DXPOA11                     51        ///
      str    DXPOA12                     52        ///
      str    DXPOA13                     53        ///
      str    DXPOA14                     54        ///
      str    DXPOA15                     55        ///
      str    DXPOA16                     56        ///
      str    DXPOA17                     57        ///
      str    DXPOA18                     58        ///
      str    DXPOA19                     59        ///
      str    DXPOA20                     60        ///
      str    DXPOA21                     61        ///
      str    DXPOA22                     62        ///
      str    DXPOA23                     63        ///
      str    DXPOA24                     64        ///
      str    DXPOA25                     65        ///
      int    DXVER                       66-  68   ///
      str    E_POA1                      69        ///
      str    E_POA2                      70        ///
      str    E_POA3                      71        ///
      str    E_POA4                      72        ///
      str    E_POA5                      73        ///
      byte   FEMALE                      74-  75   ///
      byte   HCUP_ED                     76-  77   ///
      byte   HCUP_OS                     78-  79   ///
      byte   HISPANIC                    80-  81   ///
      str    HISPANIC_X                  82        ///
      byte   HospitalUnit                83-  84   ///
      str    HOSPST                      85-  86   ///
      str    I10_DX_Admitting            87-  93   ///
      str    I10_DX1                     94- 100   ///
      str    I10_DX2                    101- 107   ///
      str    I10_DX3                    108- 114   ///
      str    I10_DX4                    115- 121   ///
      str    I10_DX5                    122- 128   ///
      str    I10_DX6                    129- 135   ///
      str    I10_DX7                    136- 142   ///
      str    I10_DX8                    143- 149   ///
      str    I10_DX9                    150- 156   ///
      str    I10_DX10                   157- 163   ///
      str    I10_DX11                   164- 170   ///
      str    I10_DX12                   171- 177   ///
      str    I10_DX13                   178- 184   ///
      str    I10_DX14                   185- 191   ///
      str    I10_DX15                   192- 198   ///
      str    I10_DX16                   199- 205   ///
      str    I10_DX17                   206- 212   ///
      str    I10_DX18                   213- 219   ///
      str    I10_DX19                   220- 226   ///
      str    I10_DX20                   227- 233   ///
      str    I10_DX21                   234- 240   ///
      str    I10_DX22                   241- 247   ///
      str    I10_DX23                   248- 254   ///
      str    I10_DX24                   255- 261   ///
      str    I10_DX25                   262- 268   ///
      int    I10_DXCCS1                 269- 272   ///
      int    I10_DXCCS2                 273- 276   ///
      int    I10_DXCCS3                 277- 280   ///
      int    I10_DXCCS4                 281- 284   ///
      int    I10_DXCCS5                 285- 288   ///
      int    I10_DXCCS6                 289- 292   ///
      int    I10_DXCCS7                 293- 296   ///
      int    I10_DXCCS8                 297- 300   ///
      int    I10_DXCCS9                 301- 304   ///
      int    I10_DXCCS10                305- 308   ///
      int    I10_DXCCS11                309- 312   ///
      int    I10_DXCCS12                313- 316   ///
      int    I10_DXCCS13                317- 320   ///
      int    I10_DXCCS14                321- 324   ///
      int    I10_DXCCS15                325- 328   ///
      int    I10_DXCCS16                329- 332   ///
      int    I10_DXCCS17                333- 336   ///
      int    I10_DXCCS18                337- 340   ///
      int    I10_DXCCS19                341- 344   ///
      int    I10_DXCCS20                345- 348   ///
      int    I10_DXCCS21                349- 352   ///
      int    I10_DXCCS22                353- 356   ///
      int    I10_DXCCS23                357- 360   ///
      int    I10_DXCCS24                361- 364   ///
      int    I10_DXCCS25                365- 368   ///
      str    I10_ECAUSE1                369- 375   ///
      str    I10_ECAUSE2                376- 382   ///
      str    I10_ECAUSE3                383- 389   ///
      str    I10_ECAUSE4                390- 396   ///
      str    I10_ECAUSE5                397- 403   ///
      int    I10_ECauseCCS1             404- 407   ///
      int    I10_ECauseCCS2             408- 411   ///
      int    I10_ECauseCCS3             412- 415   ///
      int    I10_ECauseCCS4             416- 419   ///
      int    I10_ECauseCCS5             420- 423   ///
      int    I10_HOSPBRTH               424- 426   ///
      int    I10_NCHRONIC               427- 429   ///
      int    I10_NDX                    430- 432   ///
      byte   I10_NECAUSE                433- 434   ///
      byte   I10_NEOMAT                 435- 436   ///
      int    I10_NPR                    437- 439   ///
      byte   I10_ORPROC                 440- 441   ///
      str    I10_PR1                    442- 448   ///
      str    I10_PR2                    449- 455   ///
      str    I10_PR3                    456- 462   ///
      str    I10_PR4                    463- 469   ///
      str    I10_PR5                    470- 476   ///
      str    I10_PR6                    477- 483   ///
      str    I10_PR7                    484- 490   ///
      str    I10_PR8                    491- 497   ///
      str    I10_PR9                    498- 504   ///
      str    I10_PR10                   505- 511   ///
      str    I10_PR11                   512- 518   ///
      str    I10_PR12                   519- 525   ///
      str    I10_PR13                   526- 532   ///
      str    I10_PR14                   533- 539   ///
      str    I10_PR15                   540- 546   ///
      str    I10_PR16                   547- 553   ///
      str    I10_PR17                   554- 560   ///
      str    I10_PR18                   561- 567   ///
      str    I10_PR19                   568- 574   ///
      str    I10_PR20                   575- 581   ///
      str    I10_PR21                   582- 588   ///
      str    I10_PR22                   589- 595   ///
      str    I10_PR23                   596- 602   ///
      str    I10_PR24                   603- 609   ///
      str    I10_PR25                   610- 616   ///
      int    I10_PRCCS1                 617- 619   ///
      int    I10_PRCCS2                 620- 622   ///
      int    I10_PRCCS3                 623- 625   ///
      int    I10_PRCCS4                 626- 628   ///
      int    I10_PRCCS5                 629- 631   ///
      int    I10_PRCCS6                 632- 634   ///
      int    I10_PRCCS7                 635- 637   ///
      int    I10_PRCCS8                 638- 640   ///
      int    I10_PRCCS9                 641- 643   ///
      int    I10_PRCCS10                644- 646   ///
      int    I10_PRCCS11                647- 649   ///
      int    I10_PRCCS12                650- 652   ///
      int    I10_PRCCS13                653- 655   ///
      int    I10_PRCCS14                656- 658   ///
      int    I10_PRCCS15                659- 661   ///
      int    I10_PRCCS16                662- 664   ///
      int    I10_PRCCS17                665- 667   ///
      int    I10_PRCCS18                668- 670   ///
      int    I10_PRCCS19                671- 673   ///
      int    I10_PRCCS20                674- 676   ///
      int    I10_PRCCS21                677- 679   ///
      int    I10_PRCCS22                680- 682   ///
      int    I10_PRCCS23                683- 685   ///
      int    I10_PRCCS24                686- 688   ///
      int    I10_PRCCS25                689- 691   ///
      int    I10_PROCTYPE               692- 694   ///
      byte   I10_SERVICELINE            695- 696   ///
      double KEY                        697- 711   ///
      long   LOS                        712- 716   ///
      long   LOS_X                      717- 722   ///
      byte   MDC                        723- 724   ///
      byte   MDC_NoPOA                  725- 726   ///
      byte   MDC32                      727- 728   ///
      long   MDNUM1_R                   729- 737   ///
      long   MDNUM2_R                   738- 746   ///
      byte   MEDINCSTQ                  747- 748   ///
      long   MRN_R                      749- 757   ///
      str    P7EDSRC_X                  758- 759   ///
      byte   PAY1                       760- 761   ///
      int    PL_CBSA                    762- 764   ///
      byte   PL_NCHS                    765- 766   ///
      byte   PL_RUCC                    767- 768   ///
      byte   PL_UIC                     769- 770   ///
      byte   PL_UR_CAT4                 771- 772   ///
      byte   POA_Disch_Edit1            773- 774   ///
      byte   POA_Disch_Edit2            775- 776   ///
      byte   POA_Hosp_Edit1             777- 778   ///
      byte   POA_Hosp_Edit2             779- 780   ///
      byte   POA_Hosp_Edit3             781- 782   ///
      double POA_Hosp_Edit3_Value       783- 790   ///
      str    PointOfOrigin_X            791        ///
      str    PointOfOriginUB04          792        ///
      long   PRDAY1                     793- 797   ///
      long   PRDAY2                     798- 802   ///
      long   PRDAY3                     803- 807   ///
      long   PRDAY4                     808- 812   ///
      long   PRDAY5                     813- 817   ///
      long   PRDAY6                     818- 822   ///
      long   PRDAY7                     823- 827   ///
      long   PRDAY8                     828- 832   ///
      long   PRDAY9                     833- 837   ///
      long   PRDAY10                    838- 842   ///
      long   PRDAY11                    843- 847   ///
      long   PRDAY12                    848- 852   ///
      long   PRDAY13                    853- 857   ///
      long   PRDAY14                    858- 862   ///
      long   PRDAY15                    863- 867   ///
      long   PRDAY16                    868- 872   ///
      long   PRDAY17                    873- 877   ///
      long   PRDAY18                    878- 882   ///
      long   PRDAY19                    883- 887   ///
      long   PRDAY20                    888- 892   ///
      long   PRDAY21                    893- 897   ///
      long   PRDAY22                    898- 902   ///
      long   PRDAY23                    903- 907   ///
      long   PRDAY24                    908- 912   ///
      long   PRDAY25                    913- 917   ///
      int    PRVER                      918- 920   ///
      str    PSTATE                     921- 922   ///
      long   PSTCO                      923- 927   ///
      long   PSTCO2                     928- 932   ///
      byte   RACE                       933- 934   ///
      str    RACE_X                     935        ///
      double TOTCHG                     936- 945   ///
      double TOTCHG_X                   946- 960   ///
      byte   TRAN_IN                    961- 962   ///
      byte   TRAN_OUT                   963- 964   ///
      int    YEAR                       965- 968   ///
      str    ZIP                        969- 973   ///
      str    ZIP3                       974- 976   ///
      int    ZIPINC_QRTL                977- 979   ///
      long   HOSPID                     980- 984   ///
      int    AYEAR                      985- 988   ///
      byte   BMONTH                     989- 990   ///
      int    BYEAR                      991- 994   ///
      byte   PRMONTH1                   995- 996   ///
      byte   PRMONTH2                   997- 998   ///
      byte   PRMONTH3                   999-1000   ///
      byte   PRMONTH4                  1001-1002   ///
      byte   PRMONTH5                  1003-1004   ///
      byte   PRMONTH6                  1005-1006   ///
      byte   PRMONTH7                  1007-1008   ///
      byte   PRMONTH8                  1009-1010   ///
      byte   PRMONTH9                  1011-1012   ///
      byte   PRMONTH10                 1013-1014   ///
      byte   PRMONTH11                 1015-1016   ///
      byte   PRMONTH12                 1017-1018   ///
      byte   PRMONTH13                 1019-1020   ///
      byte   PRMONTH14                 1021-1022   ///
      byte   PRMONTH15                 1023-1024   ///
      byte   PRMONTH16                 1025-1026   ///
      byte   PRMONTH17                 1027-1028   ///
      byte   PRMONTH18                 1029-1030   ///
      byte   PRMONTH19                 1031-1032   ///
      byte   PRMONTH20                 1033-1034   ///
      byte   PRMONTH21                 1035-1036   ///
      byte   PRMONTH22                 1037-1038   ///
      byte   PRMONTH23                 1039-1040   ///
      byte   PRMONTH24                 1041-1042   ///
      byte   PRMONTH25                 1043-1044   ///
      int    PRYEAR1                   1045-1048   ///
      int    PRYEAR2                   1049-1052   ///
      int    PRYEAR3                   1053-1056   ///
      int    PRYEAR4                   1057-1060   ///
      int    PRYEAR5                   1061-1064   ///
      int    PRYEAR6                   1065-1068   ///
      int    PRYEAR7                   1069-1072   ///
      int    PRYEAR8                   1073-1076   ///
      int    PRYEAR9                   1077-1080   ///
      int    PRYEAR10                  1081-1084   ///
      int    PRYEAR11                  1085-1088   ///
      int    PRYEAR12                  1089-1092   ///
      int    PRYEAR13                  1093-1096   ///
      int    PRYEAR14                  1097-1100   ///
      int    PRYEAR15                  1101-1104   ///
      int    PRYEAR16                  1105-1108   ///
      int    PRYEAR17                  1109-1112   ///
      int    PRYEAR18                  1113-1116   ///
      int    PRYEAR19                  1117-1120   ///
      int    PRYEAR20                  1121-1124   ///
      int    PRYEAR21                  1125-1128   ///
      int    PRYEAR22                  1129-1132   ///
      int    PRYEAR23                  1133-1136   ///
      int    PRYEAR24                  1137-1140   ///
      int    PRYEAR25                  1141-1144   ///
      using  "SD_SID_2015q4_CORE.ASC"

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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HospitalUnit             "Patient was discharged from a special unit within an acute care hospital (reported by source)"
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
label var I10_ECauseCCS1           "ICD-10-CM CCS: E Cause 1"
label var I10_ECauseCCS2           "ICD-10-CM CCS: E Cause 2"
label var I10_ECauseCCS3           "ICD-10-CM CCS: E Cause 3"
label var I10_ECauseCCS4           "ICD-10-CM CCS: E Cause 4"
label var I10_ECauseCCS5           "ICD-10-CM CCS: E Cause 5"
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
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
label var PAY1                     "Primary expected payer (uniform)"
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
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
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
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode PAY1                      (-9 -8 -6 -5=.)
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

save "SD_SID_2015q4_CORE.dta", replace
