/*****************************************************************************
* Creation Date: 07/25/2018   
* MS_SID_2016_CORE.Do
* This program will load the 2016 MS ASCII CORE File into Stata.
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
      long   DaysToEvent                 20-  25   ///
      int    DHOUR                       26-  29   ///
      byte   DIED                        30-  31   ///
      str    DISP_X                      32-  35   ///
      byte   DISPUB04                    36-  37   ///
      byte   DISPUNIFORM                 38-  39   ///
      byte   DMONTH                      40-  41   ///
      byte   DQTR                        42-  43   ///
      int    DRG                         44-  46   ///
      int    DRG_NoPOA                   47-  49   ///
      byte   DRGVER                      50-  51   ///
      str    DSHOSPID                    52-  68   ///
      str    DXPOA1                      69        ///
      str    DXPOA2                      70        ///
      str    DXPOA3                      71        ///
      str    DXPOA4                      72        ///
      str    DXPOA5                      73        ///
      str    DXPOA6                      74        ///
      str    DXPOA7                      75        ///
      str    DXPOA8                      76        ///
      str    DXPOA9                      77        ///
      str    DXPOA10                     78        ///
      str    DXPOA11                     79        ///
      str    DXPOA12                     80        ///
      str    DXPOA13                     81        ///
      str    DXPOA14                     82        ///
      str    DXPOA15                     83        ///
      str    DXPOA16                     84        ///
      str    DXPOA17                     85        ///
      str    DXPOA18                     86        ///
      str    DXPOA19                     87        ///
      str    DXPOA20                     88        ///
      str    DXPOA21                     89        ///
      str    DXPOA22                     90        ///
      str    DXPOA23                     91        ///
      str    DXPOA24                     92        ///
      str    DXPOA25                     93        ///
      str    DXPOA26                     94        ///
      str    DXPOA27                     95        ///
      str    DXPOA28                     96        ///
      str    DXPOA29                     97        ///
      str    DXPOA30                     98        ///
      str    DXPOA31                     99        ///
      str    DXPOA32                    100        ///
      str    DXPOA33                    101        ///
      str    DXPOA34                    102        ///
      str    DXPOA35                    103        ///
      str    DXPOA36                    104        ///
      str    DXPOA37                    105        ///
      str    DXPOA38                    106        ///
      str    DXPOA39                    107        ///
      str    DXPOA40                    108        ///
      str    DXPOA41                    109        ///
      str    DXPOA42                    110        ///
      str    DXPOA43                    111        ///
      str    DXPOA44                    112        ///
      str    DXPOA45                    113        ///
      str    DXPOA46                    114        ///
      str    DXPOA47                    115        ///
      str    DXPOA48                    116        ///
      str    DXPOA49                    117        ///
      int    DXVER                      118- 120   ///
      str    E_POA1                     121        ///
      str    E_POA2                     122        ///
      str    E_POA3                     123        ///
      str    E_POA4                     124        ///
      str    E_POA5                     125        ///
      str    E_POA6                     126        ///
      byte   FEMALE                     127- 128   ///
      byte   HCUP_ED                    129- 130   ///
      byte   HCUP_OS                    131- 132   ///
      byte   HISPANIC                   133- 134   ///
      str    HISPANIC_X                 135        ///
      byte   HospitalUnit               136- 137   ///
      str    HOSPST                     138- 139   ///
      str    I10_DX_Admitting           140- 146   ///
      str    I10_DX1                    147- 153   ///
      str    I10_DX2                    154- 160   ///
      str    I10_DX3                    161- 167   ///
      str    I10_DX4                    168- 174   ///
      str    I10_DX5                    175- 181   ///
      str    I10_DX6                    182- 188   ///
      str    I10_DX7                    189- 195   ///
      str    I10_DX8                    196- 202   ///
      str    I10_DX9                    203- 209   ///
      str    I10_DX10                   210- 216   ///
      str    I10_DX11                   217- 223   ///
      str    I10_DX12                   224- 230   ///
      str    I10_DX13                   231- 237   ///
      str    I10_DX14                   238- 244   ///
      str    I10_DX15                   245- 251   ///
      str    I10_DX16                   252- 258   ///
      str    I10_DX17                   259- 265   ///
      str    I10_DX18                   266- 272   ///
      str    I10_DX19                   273- 279   ///
      str    I10_DX20                   280- 286   ///
      str    I10_DX21                   287- 293   ///
      str    I10_DX22                   294- 300   ///
      str    I10_DX23                   301- 307   ///
      str    I10_DX24                   308- 314   ///
      str    I10_DX25                   315- 321   ///
      str    I10_DX26                   322- 328   ///
      str    I10_DX27                   329- 335   ///
      str    I10_DX28                   336- 342   ///
      str    I10_DX29                   343- 349   ///
      str    I10_DX30                   350- 356   ///
      str    I10_DX31                   357- 363   ///
      str    I10_DX32                   364- 370   ///
      str    I10_DX33                   371- 377   ///
      str    I10_DX34                   378- 384   ///
      str    I10_DX35                   385- 391   ///
      str    I10_DX36                   392- 398   ///
      str    I10_DX37                   399- 405   ///
      str    I10_DX38                   406- 412   ///
      str    I10_DX39                   413- 419   ///
      str    I10_DX40                   420- 426   ///
      str    I10_DX41                   427- 433   ///
      str    I10_DX42                   434- 440   ///
      str    I10_DX43                   441- 447   ///
      str    I10_DX44                   448- 454   ///
      str    I10_DX45                   455- 461   ///
      str    I10_DX46                   462- 468   ///
      str    I10_DX47                   469- 475   ///
      str    I10_DX48                   476- 482   ///
      str    I10_DX49                   483- 489   ///
      str    I10_ECAUSE1                490- 496   ///
      str    I10_ECAUSE2                497- 503   ///
      str    I10_ECAUSE3                504- 510   ///
      str    I10_ECAUSE4                511- 517   ///
      str    I10_ECAUSE5                518- 524   ///
      str    I10_ECAUSE6                525- 531   ///
      int    I10_NDX                    532- 534   ///
      byte   I10_NECAUSE                535- 536   ///
      int    I10_NPR                    537- 539   ///
      str    I10_PR1                    540- 546   ///
      str    I10_PR2                    547- 553   ///
      str    I10_PR3                    554- 560   ///
      str    I10_PR4                    561- 567   ///
      str    I10_PR5                    568- 574   ///
      str    I10_PR6                    575- 581   ///
      str    I10_PR7                    582- 588   ///
      str    I10_PR8                    589- 595   ///
      str    I10_PR9                    596- 602   ///
      str    I10_PR10                   603- 609   ///
      str    I10_PR11                   610- 616   ///
      str    I10_PR12                   617- 623   ///
      str    I10_PR13                   624- 630   ///
      str    I10_PR14                   631- 637   ///
      str    I10_PR15                   638- 644   ///
      str    I10_PR16                   645- 651   ///
      str    I10_PR17                   652- 658   ///
      str    I10_PR18                   659- 665   ///
      str    I10_PR19                   666- 672   ///
      str    I10_PR20                   673- 679   ///
      str    I10_PR21                   680- 686   ///
      str    I10_PR22                   687- 693   ///
      str    I10_PR23                   694- 700   ///
      str    I10_PR24                   701- 707   ///
      str    I10_PR25                   708- 714   ///
      str    I10_PR26                   715- 721   ///
      str    I10_PR27                   722- 728   ///
      str    I10_PR28                   729- 735   ///
      str    I10_PR29                   736- 742   ///
      str    I10_PR30                   743- 749   ///
      int    I10_PROCTYPE               750- 752   ///
      double KEY                        753- 767   ///
      long   LOS                        768- 772   ///
      long   LOS_X                      773- 778   ///
      byte   MDC                        779- 780   ///
      byte   MDC_NoPOA                  781- 782   ///
      long   MDNUM1_R                   783- 791   ///
      long   MDNUM2_R                   792- 800   ///
      long   MDNUM3_R                   801- 809   ///
      byte   MEDINCSTQ                  810- 811   ///
      str    P7EDSRC_X                  812- 813   ///
      byte   PAY1                       814- 815   ///
      str    PAY1_X                     816- 820   ///
      byte   PAY2                       821- 822   ///
      str    PAY2_X                     823- 827   ///
      byte   PAY3                       828- 829   ///
      str    PAY3_X                     830- 834   ///
      int    PL_CBSA                    835- 837   ///
      byte   PL_NCHS                    838- 839   ///
      byte   PL_RUCC                    840- 841   ///
      byte   PL_UIC                     842- 843   ///
      byte   PL_UR_CAT4                 844- 845   ///
      byte   POA_Disch_Edit1            846- 847   ///
      byte   POA_Disch_Edit2            848- 849   ///
      byte   POA_Hosp_Edit1             850- 851   ///
      byte   POA_Hosp_Edit2             852- 853   ///
      byte   POA_Hosp_Edit3             854- 855   ///
      double POA_Hosp_Edit3_Value       856- 863   ///
      str    PointOfOrigin_X            864        ///
      str    PointOfOriginUB04          865        ///
      long   PRDAY1                     866- 870   ///
      long   PRDAY2                     871- 875   ///
      long   PRDAY3                     876- 880   ///
      long   PRDAY4                     881- 885   ///
      long   PRDAY5                     886- 890   ///
      long   PRDAY6                     891- 895   ///
      long   PRDAY7                     896- 900   ///
      long   PRDAY8                     901- 905   ///
      long   PRDAY9                     906- 910   ///
      long   PRDAY10                    911- 915   ///
      long   PRDAY11                    916- 920   ///
      long   PRDAY12                    921- 925   ///
      long   PRDAY13                    926- 930   ///
      long   PRDAY14                    931- 935   ///
      long   PRDAY15                    936- 940   ///
      long   PRDAY16                    941- 945   ///
      long   PRDAY17                    946- 950   ///
      long   PRDAY18                    951- 955   ///
      long   PRDAY19                    956- 960   ///
      long   PRDAY20                    961- 965   ///
      long   PRDAY21                    966- 970   ///
      long   PRDAY22                    971- 975   ///
      long   PRDAY23                    976- 980   ///
      long   PRDAY24                    981- 985   ///
      long   PRDAY25                    986- 990   ///
      long   PRDAY26                    991- 995   ///
      long   PRDAY27                    996-1000   ///
      long   PRDAY28                   1001-1005   ///
      long   PRDAY29                   1006-1010   ///
      long   PRDAY30                   1011-1015   ///
      int    PRVER                     1016-1018   ///
      str    PSTATE                    1019-1020   ///
      long   PSTCO2                    1021-1025   ///
      byte   RACE                      1026-1027   ///
      str    RACE_X                    1028        ///
      double TOTCHG                    1029-1038   ///
      double TOTCHG_X                  1039-1053   ///
      byte   TRAN_IN                   1054-1055   ///
      byte   TRAN_OUT                  1056-1057   ///
      long   VisitLink                 1058-1066   ///
      int    YEAR                      1067-1070   ///
      str    ZIP                       1071-1075   ///
      str    ZIP3                      1076-1078   ///
      int    ZIPINC_QRTL               1079-1081   ///
      int    AYEAR                     1082-1085   ///
      byte   BMONTH                    1086-1087   ///
      int    BYEAR                     1088-1091   ///
      byte   PRMONTH1                  1092-1093   ///
      byte   PRMONTH2                  1094-1095   ///
      byte   PRMONTH3                  1096-1097   ///
      byte   PRMONTH4                  1098-1099   ///
      byte   PRMONTH5                  1100-1101   ///
      byte   PRMONTH6                  1102-1103   ///
      byte   PRMONTH7                  1104-1105   ///
      byte   PRMONTH8                  1106-1107   ///
      byte   PRMONTH9                  1108-1109   ///
      byte   PRMONTH10                 1110-1111   ///
      byte   PRMONTH11                 1112-1113   ///
      byte   PRMONTH12                 1114-1115   ///
      byte   PRMONTH13                 1116-1117   ///
      byte   PRMONTH14                 1118-1119   ///
      byte   PRMONTH15                 1120-1121   ///
      byte   PRMONTH16                 1122-1123   ///
      byte   PRMONTH17                 1124-1125   ///
      byte   PRMONTH18                 1126-1127   ///
      byte   PRMONTH19                 1128-1129   ///
      byte   PRMONTH20                 1130-1131   ///
      byte   PRMONTH21                 1132-1133   ///
      byte   PRMONTH22                 1134-1135   ///
      byte   PRMONTH23                 1136-1137   ///
      byte   PRMONTH24                 1138-1139   ///
      byte   PRMONTH25                 1140-1141   ///
      byte   PRMONTH26                 1142-1143   ///
      byte   PRMONTH27                 1144-1145   ///
      byte   PRMONTH28                 1146-1147   ///
      byte   PRMONTH29                 1148-1149   ///
      byte   PRMONTH30                 1150-1151   ///
      int    PRYEAR1                   1152-1155   ///
      int    PRYEAR2                   1156-1159   ///
      int    PRYEAR3                   1160-1163   ///
      int    PRYEAR4                   1164-1167   ///
      int    PRYEAR5                   1168-1171   ///
      int    PRYEAR6                   1172-1175   ///
      int    PRYEAR7                   1176-1179   ///
      int    PRYEAR8                   1180-1183   ///
      int    PRYEAR9                   1184-1187   ///
      int    PRYEAR10                  1188-1191   ///
      int    PRYEAR11                  1192-1195   ///
      int    PRYEAR12                  1196-1199   ///
      int    PRYEAR13                  1200-1203   ///
      int    PRYEAR14                  1204-1207   ///
      int    PRYEAR15                  1208-1211   ///
      int    PRYEAR16                  1212-1215   ///
      int    PRYEAR17                  1216-1219   ///
      int    PRYEAR18                  1220-1223   ///
      int    PRYEAR19                  1224-1227   ///
      int    PRYEAR20                  1228-1231   ///
      int    PRYEAR21                  1232-1235   ///
      int    PRYEAR22                  1236-1239   ///
      int    PRYEAR23                  1240-1243   ///
      int    PRYEAR24                  1244-1247   ///
      int    PRYEAR25                  1248-1251   ///
      int    PRYEAR26                  1252-1255   ///
      int    PRYEAR27                  1256-1259   ///
      int    PRYEAR28                  1260-1263   ///
      int    PRYEAR29                  1264-1267   ///
      int    PRYEAR30                  1268-1271   ///
      using  "MS_SID_2016_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var DaysToEvent              "Days from 'start date' to admission"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
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
label var DXPOA29                  "Diagnosis 29, present on admission indicator"
label var DXPOA30                  "Diagnosis 30, present on admission indicator"
label var DXPOA31                  "Diagnosis 31, present on admission indicator"
label var DXPOA32                  "Diagnosis 32, present on admission indicator"
label var DXPOA33                  "Diagnosis 33, present on admission indicator"
label var DXPOA34                  "Diagnosis 34, present on admission indicator"
label var DXPOA35                  "Diagnosis 35, present on admission indicator"
label var DXPOA36                  "Diagnosis 36, present on admission indicator"
label var DXPOA37                  "Diagnosis 37, present on admission indicator"
label var DXPOA38                  "Diagnosis 38, present on admission indicator"
label var DXPOA39                  "Diagnosis 39, present on admission indicator"
label var DXPOA40                  "Diagnosis 40, present on admission indicator"
label var DXPOA41                  "Diagnosis 41, present on admission indicator"
label var DXPOA42                  "Diagnosis 42, present on admission indicator"
label var DXPOA43                  "Diagnosis 43, present on admission indicator"
label var DXPOA44                  "Diagnosis 44, present on admission indicator"
label var DXPOA45                  "Diagnosis 45, present on admission indicator"
label var DXPOA46                  "Diagnosis 46, present on admission indicator"
label var DXPOA47                  "Diagnosis 47, present on admission indicator"
label var DXPOA48                  "Diagnosis 48, present on admission indicator"
label var DXPOA49                  "Diagnosis 49, present on admission indicator"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
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
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var VisitLink                "Visit linkage variable"
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
recode AHOUR                     (-999 -888 -666=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
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
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
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
recode PRVER                     (-99 -88 -66=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
recode VisitLink                 (-99999999 -88888888 -66666666=.)
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

save "MS_SID_2016_CORE.dta", replace
