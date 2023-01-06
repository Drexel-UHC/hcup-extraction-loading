/*****************************************************************************
* Creation Date: 01/07/2019   
* OR_SID_2016_CORE.Do
* This program will load the 2016 OR ASCII CORE File into Stata.
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
      int    BWT                         20-  23   ///
      int    DHOUR                       24-  27   ///
      byte   DIED                        28-  29   ///
      str    DISP_X                      30-  31   ///
      byte   DISPUB04                    32-  33   ///
      byte   DISPUNIFORM                 34-  35   ///
      byte   DMONTH                      36-  37   ///
      byte   DNR                         38-  39   ///
      byte   DQTR                        40-  41   ///
      int    DRG                         42-  44   ///
      int    DRG_NoPOA                   45-  47   ///
      byte   DRGVER                      48-  49   ///
      str    DSHOSPID                    50-  66   ///
      str    DXPOA1                      67        ///
      str    DXPOA2                      68        ///
      str    DXPOA3                      69        ///
      str    DXPOA4                      70        ///
      str    DXPOA5                      71        ///
      str    DXPOA6                      72        ///
      str    DXPOA7                      73        ///
      str    DXPOA8                      74        ///
      str    DXPOA9                      75        ///
      str    DXPOA10                     76        ///
      str    DXPOA11                     77        ///
      str    DXPOA12                     78        ///
      str    DXPOA13                     79        ///
      str    DXPOA14                     80        ///
      str    DXPOA15                     81        ///
      str    DXPOA16                     82        ///
      str    DXPOA17                     83        ///
      str    DXPOA18                     84        ///
      str    DXPOA19                     85        ///
      str    DXPOA20                     86        ///
      str    DXPOA21                     87        ///
      str    DXPOA22                     88        ///
      str    DXPOA23                     89        ///
      str    DXPOA24                     90        ///
      str    DXPOA25                     91        ///
      str    DXPOA26                     92        ///
      str    DXPOA27                     93        ///
      str    DXPOA28                     94        ///
      int    DXVER                       95-  97   ///
      str    E_POA1                      98        ///
      str    E_POA2                      99        ///
      str    E_POA3                     100        ///
      str    E_POA4                     101        ///
      str    E_POA5                     102        ///
      str    E_POA6                     103        ///
      byte   FEMALE                     104- 105   ///
      byte   HCUP_ED                    106- 107   ///
      byte   HCUP_OS                    108- 109   ///
      byte   HISPANIC                   110- 111   ///
      str    HISPANIC_X                 112- 113   ///
      byte   HospitalUnit               114- 115   ///
      str    HOSPST                     116- 117   ///
      str    I10_DX_Admitting           118- 124   ///
      str    I10_DX1                    125- 131   ///
      str    I10_DX2                    132- 138   ///
      str    I10_DX3                    139- 145   ///
      str    I10_DX4                    146- 152   ///
      str    I10_DX5                    153- 159   ///
      str    I10_DX6                    160- 166   ///
      str    I10_DX7                    167- 173   ///
      str    I10_DX8                    174- 180   ///
      str    I10_DX9                    181- 187   ///
      str    I10_DX10                   188- 194   ///
      str    I10_DX11                   195- 201   ///
      str    I10_DX12                   202- 208   ///
      str    I10_DX13                   209- 215   ///
      str    I10_DX14                   216- 222   ///
      str    I10_DX15                   223- 229   ///
      str    I10_DX16                   230- 236   ///
      str    I10_DX17                   237- 243   ///
      str    I10_DX18                   244- 250   ///
      str    I10_DX19                   251- 257   ///
      str    I10_DX20                   258- 264   ///
      str    I10_DX21                   265- 271   ///
      str    I10_DX22                   272- 278   ///
      str    I10_DX23                   279- 285   ///
      str    I10_DX24                   286- 292   ///
      str    I10_DX25                   293- 299   ///
      str    I10_DX26                   300- 306   ///
      str    I10_DX27                   307- 313   ///
      str    I10_DX28                   314- 320   ///
      str    I10_ECAUSE1                321- 327   ///
      str    I10_ECAUSE2                328- 334   ///
      str    I10_ECAUSE3                335- 341   ///
      str    I10_ECAUSE4                342- 348   ///
      str    I10_ECAUSE5                349- 355   ///
      str    I10_ECAUSE6                356- 362   ///
      int    I10_NDX                    363- 365   ///
      byte   I10_NECAUSE                366- 367   ///
      int    I10_NPR                    368- 370   ///
      str    I10_PR1                    371- 377   ///
      str    I10_PR2                    378- 384   ///
      str    I10_PR3                    385- 391   ///
      str    I10_PR4                    392- 398   ///
      str    I10_PR5                    399- 405   ///
      str    I10_PR6                    406- 412   ///
      str    I10_PR7                    413- 419   ///
      str    I10_PR8                    420- 426   ///
      str    I10_PR9                    427- 433   ///
      str    I10_PR10                   434- 440   ///
      str    I10_PR11                   441- 447   ///
      str    I10_PR12                   448- 454   ///
      str    I10_PR13                   455- 461   ///
      str    I10_PR14                   462- 468   ///
      str    I10_PR15                   469- 475   ///
      str    I10_PR16                   476- 482   ///
      str    I10_PR17                   483- 489   ///
      str    I10_PR18                   490- 496   ///
      str    I10_PR19                   497- 503   ///
      str    I10_PR20                   504- 510   ///
      str    I10_PR21                   511- 517   ///
      str    I10_PR22                   518- 524   ///
      str    I10_PR23                   525- 531   ///
      str    I10_PR24                   532- 538   ///
      str    I10_PR25                   539- 545   ///
      str    I10_PR26                   546- 552   ///
      str    I10_PR27                   553- 559   ///
      str    I10_PR28                   560- 566   ///
      str    I10_PR29                   567- 573   ///
      str    I10_PR30                   574- 580   ///
      str    I10_PR31                   581- 587   ///
      str    I10_PR32                   588- 594   ///
      str    I10_PR33                   595- 601   ///
      str    I10_PR34                   602- 608   ///
      str    I10_PR35                   609- 615   ///
      str    I10_PR36                   616- 622   ///
      str    I10_PR37                   623- 629   ///
      int    I10_PROCTYPE               630- 632   ///
      double KEY                        633- 647   ///
      long   LOS                        648- 652   ///
      long   LOS_X                      653- 658   ///
      byte   MDC                        659- 660   ///
      byte   MDC_NoPOA                  661- 662   ///
      long   MDNUM1_R                   663- 671   ///
      long   MDNUM2_R                   672- 680   ///
      long   MDNUM3_R                   681- 689   ///
      long   MDNUM4_R                   690- 698   ///
      byte   MEDINCSTQ                  699- 700   ///
      double OS_TIME                    701- 711   ///
      byte   PAY1                       712- 713   ///
      str    PAY1_X                     714- 722   ///
      byte   PAY2                       723- 724   ///
      str    PAY2_X                     725- 733   ///
      byte   PAY3                       734- 735   ///
      str    PAY3_X                     736- 744   ///
      int    PL_CBSA                    745- 747   ///
      byte   PL_NCHS                    748- 749   ///
      byte   PL_RUCC                    750- 751   ///
      byte   PL_UIC                     752- 753   ///
      byte   PL_UR_CAT4                 754- 755   ///
      byte   POA_Disch_Edit1            756- 757   ///
      byte   POA_Disch_Edit2            758- 759   ///
      byte   POA_Hosp_Edit1             760- 761   ///
      byte   POA_Hosp_Edit2             762- 763   ///
      byte   POA_Hosp_Edit3             764- 765   ///
      double POA_Hosp_Edit3_Value       766- 773   ///
      str    PointOfOrigin_X            774- 775   ///
      str    PointOfOriginUB04          776        ///
      long   PRDAY1                     777- 781   ///
      long   PRDAY2                     782- 786   ///
      long   PRDAY3                     787- 791   ///
      long   PRDAY4                     792- 796   ///
      long   PRDAY5                     797- 801   ///
      long   PRDAY6                     802- 806   ///
      long   PRDAY7                     807- 811   ///
      long   PRDAY8                     812- 816   ///
      long   PRDAY9                     817- 821   ///
      long   PRDAY10                    822- 826   ///
      long   PRDAY11                    827- 831   ///
      long   PRDAY12                    832- 836   ///
      long   PRDAY13                    837- 841   ///
      long   PRDAY14                    842- 846   ///
      long   PRDAY15                    847- 851   ///
      long   PRDAY16                    852- 856   ///
      long   PRDAY17                    857- 861   ///
      long   PRDAY18                    862- 866   ///
      long   PRDAY19                    867- 871   ///
      long   PRDAY20                    872- 876   ///
      long   PRDAY21                    877- 881   ///
      long   PRDAY22                    882- 886   ///
      long   PRDAY23                    887- 891   ///
      long   PRDAY24                    892- 896   ///
      long   PRDAY25                    897- 901   ///
      long   PRDAY26                    902- 906   ///
      long   PRDAY27                    907- 911   ///
      long   PRDAY28                    912- 916   ///
      long   PRDAY29                    917- 921   ///
      long   PRDAY30                    922- 926   ///
      long   PRDAY31                    927- 931   ///
      long   PRDAY32                    932- 936   ///
      long   PRDAY33                    937- 941   ///
      long   PRDAY34                    942- 946   ///
      long   PRDAY35                    947- 951   ///
      long   PRDAY36                    952- 956   ///
      long   PRDAY37                    957- 961   ///
      int    PRVER                      962- 964   ///
      str    PSTATE                     965- 966   ///
      long   PSTCO                      967- 971   ///
      long   PSTCO2                     972- 976   ///
      byte   RACE                       977- 978   ///
      str    RACE_X                     979- 980   ///
      double TOTCHG                     981- 990   ///
      double TOTCHG_X                   991-1005   ///
      byte   TRAN_IN                   1006-1007   ///
      byte   TRAN_OUT                  1008-1009   ///
      int    YEAR                      1010-1013   ///
      str    ZIP                       1014-1018   ///
      str    ZIP3                      1019-1021   ///
      int    ZIPINC_QRTL               1022-1024   ///
      int    AYEAR                     1025-1028   ///
      byte   BMONTH                    1029-1030   ///
      int    BYEAR                     1031-1034   ///
      byte   PRMONTH1                  1035-1036   ///
      byte   PRMONTH2                  1037-1038   ///
      byte   PRMONTH3                  1039-1040   ///
      byte   PRMONTH4                  1041-1042   ///
      byte   PRMONTH5                  1043-1044   ///
      byte   PRMONTH6                  1045-1046   ///
      byte   PRMONTH7                  1047-1048   ///
      byte   PRMONTH8                  1049-1050   ///
      byte   PRMONTH9                  1051-1052   ///
      byte   PRMONTH10                 1053-1054   ///
      byte   PRMONTH11                 1055-1056   ///
      byte   PRMONTH12                 1057-1058   ///
      byte   PRMONTH13                 1059-1060   ///
      byte   PRMONTH14                 1061-1062   ///
      byte   PRMONTH15                 1063-1064   ///
      byte   PRMONTH16                 1065-1066   ///
      byte   PRMONTH17                 1067-1068   ///
      byte   PRMONTH18                 1069-1070   ///
      byte   PRMONTH19                 1071-1072   ///
      byte   PRMONTH20                 1073-1074   ///
      byte   PRMONTH21                 1075-1076   ///
      byte   PRMONTH22                 1077-1078   ///
      byte   PRMONTH23                 1079-1080   ///
      byte   PRMONTH24                 1081-1082   ///
      byte   PRMONTH25                 1083-1084   ///
      byte   PRMONTH26                 1085-1086   ///
      byte   PRMONTH27                 1087-1088   ///
      byte   PRMONTH28                 1089-1090   ///
      byte   PRMONTH29                 1091-1092   ///
      byte   PRMONTH30                 1093-1094   ///
      byte   PRMONTH31                 1095-1096   ///
      byte   PRMONTH32                 1097-1098   ///
      byte   PRMONTH33                 1099-1100   ///
      byte   PRMONTH34                 1101-1102   ///
      byte   PRMONTH35                 1103-1104   ///
      byte   PRMONTH36                 1105-1106   ///
      byte   PRMONTH37                 1107-1108   ///
      int    PRYEAR1                   1109-1112   ///
      int    PRYEAR2                   1113-1116   ///
      int    PRYEAR3                   1117-1120   ///
      int    PRYEAR4                   1121-1124   ///
      int    PRYEAR5                   1125-1128   ///
      int    PRYEAR6                   1129-1132   ///
      int    PRYEAR7                   1133-1136   ///
      int    PRYEAR8                   1137-1140   ///
      int    PRYEAR9                   1141-1144   ///
      int    PRYEAR10                  1145-1148   ///
      int    PRYEAR11                  1149-1152   ///
      int    PRYEAR12                  1153-1156   ///
      int    PRYEAR13                  1157-1160   ///
      int    PRYEAR14                  1161-1164   ///
      int    PRYEAR15                  1165-1168   ///
      int    PRYEAR16                  1169-1172   ///
      int    PRYEAR17                  1173-1176   ///
      int    PRYEAR18                  1177-1180   ///
      int    PRYEAR19                  1181-1184   ///
      int    PRYEAR20                  1185-1188   ///
      int    PRYEAR21                  1189-1192   ///
      int    PRYEAR22                  1193-1196   ///
      int    PRYEAR23                  1197-1200   ///
      int    PRYEAR24                  1201-1204   ///
      int    PRYEAR25                  1205-1208   ///
      int    PRYEAR26                  1209-1212   ///
      int    PRYEAR27                  1213-1216   ///
      int    PRYEAR28                  1217-1220   ///
      int    PRYEAR29                  1221-1224   ///
      int    PRYEAR30                  1225-1228   ///
      int    PRYEAR31                  1229-1232   ///
      int    PRYEAR32                  1233-1236   ///
      int    PRYEAR33                  1237-1240   ///
      int    PRYEAR34                  1241-1244   ///
      int    PRYEAR35                  1245-1248   ///
      int    PRYEAR36                  1249-1252   ///
      int    PRYEAR37                  1253-1256   ///
      using  "OR_SID_2016_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DNR                      "Do not resuscitate indicator"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
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
label var DXPOA26                  "Diagnosis 26, present on admission indicator"
label var DXPOA27                  "Diagnosis 27, present on admission indicator"
label var DXPOA28                  "Diagnosis 28, present on admission indicator"
label var DXVER                    "Diagnosis Version"
label var E_POA1                   "External cause 1, present on admission indicator"
label var E_POA2                   "External cause 2, present on admission indicator"
label var E_POA3                   "External cause 3, present on admission indicator"
label var E_POA4                   "External cause 4, present on admission indicator"
label var E_POA5                   "External cause 5, present on admission indicator"
label var E_POA6                   "External cause 6, present on admission indicator"
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
label var I10_DX26                 "ICD-10-CM Diagnosis 26"
label var I10_DX27                 "ICD-10-CM Diagnosis 27"
label var I10_DX28                 "ICD-10-CM Diagnosis 28"
label var I10_ECAUSE1              "ICD-10-CM External cause 1"
label var I10_ECAUSE2              "ICD-10-CM External cause 2"
label var I10_ECAUSE3              "ICD-10-CM External cause 3"
label var I10_ECAUSE4              "ICD-10-CM External cause 4"
label var I10_ECAUSE5              "ICD-10-CM External cause 5"
label var I10_ECAUSE6              "ICD-10-CM External cause 6"
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_NECAUSE              "ICD-10-CM Number of External cause codes on this record"
label var I10_NPR                  "ICD-10-PCS Number of procedures on this record"
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
label var I10_PR26                 "ICD-10-PCS Procedure 26"
label var I10_PR27                 "ICD-10-PCS Procedure 27"
label var I10_PR28                 "ICD-10-PCS Procedure 28"
label var I10_PR29                 "ICD-10-PCS Procedure 29"
label var I10_PR30                 "ICD-10-PCS Procedure 30"
label var I10_PR31                 "ICD-10-PCS Procedure 31"
label var I10_PR32                 "ICD-10-PCS Procedure 32"
label var I10_PR33                 "ICD-10-PCS Procedure 33"
label var I10_PR34                 "ICD-10-PCS Procedure 34"
label var I10_PR35                 "ICD-10-PCS Procedure 35"
label var I10_PR36                 "ICD-10-PCS Procedure 36"
label var I10_PR37                 "ICD-10-PCS Procedure 37"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MDNUM4_R                 "Physician 4 number (re-identified)"
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
label var PRDAY26                  "Number of days from admission to I10_PR26"
label var PRDAY27                  "Number of days from admission to I10_PR27"
label var PRDAY28                  "Number of days from admission to I10_PR28"
label var PRDAY29                  "Number of days from admission to I10_PR29"
label var PRDAY30                  "Number of days from admission to I10_PR30"
label var PRDAY31                  "Number of days from admission to I10_PR31"
label var PRDAY32                  "Number of days from admission to I10_PR32"
label var PRDAY33                  "Number of days from admission to I10_PR33"
label var PRDAY34                  "Number of days from admission to I10_PR34"
label var PRDAY35                  "Number of days from admission to I10_PR35"
label var PRDAY36                  "Number of days from admission to I10_PR36"
label var PRDAY37                  "Number of days from admission to I10_PR37"
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
label var PRMONTH31                "Month of procedure 31"
label var PRMONTH32                "Month of procedure 32"
label var PRMONTH33                "Month of procedure 33"
label var PRMONTH34                "Month of procedure 34"
label var PRMONTH35                "Month of procedure 35"
label var PRMONTH36                "Month of procedure 36"
label var PRMONTH37                "Month of procedure 37"
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
label var PRYEAR31                 "Year of procedure 31"
label var PRYEAR32                 "Year of procedure 32"
label var PRYEAR33                 "Year of procedure 33"
label var PRYEAR34                 "Year of procedure 34"
label var PRYEAR35                 "Year of procedure 35"
label var PRYEAR36                 "Year of procedure 36"
label var PRYEAR37                 "Year of procedure 37"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DNR                       (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NECAUSE               (-9 -8 -6 -5=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM4_R                  (-99999999 -88888888 -66666666=.)
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
recode PRDAY26                   (-9999 -8888 -6666=.)
recode PRDAY27                   (-9999 -8888 -6666=.)
recode PRDAY28                   (-9999 -8888 -6666=.)
recode PRDAY29                   (-9999 -8888 -6666=.)
recode PRDAY30                   (-9999 -8888 -6666=.)
recode PRDAY31                   (-9999 -8888 -6666=.)
recode PRDAY32                   (-9999 -8888 -6666=.)
recode PRDAY33                   (-9999 -8888 -6666=.)
recode PRDAY34                   (-9999 -8888 -6666=.)
recode PRDAY35                   (-9999 -8888 -6666=.)
recode PRDAY36                   (-9999 -8888 -6666=.)
recode PRDAY37                   (-9999 -8888 -6666=.)
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
recode PRMONTH26                 (-9 -8 -6 -5=.)
recode PRMONTH27                 (-9 -8 -6 -5=.)
recode PRMONTH28                 (-9 -8 -6 -5=.)
recode PRMONTH29                 (-9 -8 -6 -5=.)
recode PRMONTH30                 (-9 -8 -6 -5=.)
recode PRMONTH31                 (-9 -8 -6 -5=.)
recode PRMONTH32                 (-9 -8 -6 -5=.)
recode PRMONTH33                 (-9 -8 -6 -5=.)
recode PRMONTH34                 (-9 -8 -6 -5=.)
recode PRMONTH35                 (-9 -8 -6 -5=.)
recode PRMONTH36                 (-9 -8 -6 -5=.)
recode PRMONTH37                 (-9 -8 -6 -5=.)
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
recode PRYEAR31                  (-999 -888 -666=.)
recode PRYEAR32                  (-999 -888 -666=.)
recode PRYEAR33                  (-999 -888 -666=.)
recode PRYEAR34                  (-999 -888 -666=.)
recode PRYEAR35                  (-999 -888 -666=.)
recode PRYEAR36                  (-999 -888 -666=.)
recode PRYEAR37                  (-999 -888 -666=.)

save "OR_SID_2016_CORE.dta", replace
