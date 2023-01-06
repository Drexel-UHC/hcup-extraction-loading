/*****************************************************************************
* Creation Date: 08/16/2021   
* MN_SID_2020_CORE.Do
* This program will load the 2020 MN ASCII CORE File into Stata.
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
      int    ADRG                         1-   3   ///
      byte   ADRGRISKMORTALITY            4-   5   ///
      byte   ADRGSEV                      6-   7   ///
      int    AGE                          8-  10   ///
      int    AGEDAY                      11-  13   ///
      int    AGEMONTH                    14-  16   ///
      int    AHOUR                       17-  20   ///
      byte   AMDC                        21-  22   ///
      byte   AMONTH                      23-  24   ///
      byte   ATYPE                       25-  26   ///
      byte   AWEEKEND                    27-  28   ///
      str    BILLTYPE                    29-  32   ///
      int    DHOUR                       33-  36   ///
      byte   DIED                        37-  38   ///
      str    DISP_X                      39-  40   ///
      byte   DISPUB04                    41-  42   ///
      byte   DISPUNIFORM                 43-  44   ///
      byte   DMONTH                      45-  46   ///
      byte   DQTR                        47-  48   ///
      int    DRG                         49-  51   ///
      int    DRG_NoPOA                   52-  54   ///
      byte   DRGVER                      55-  56   ///
      str    DXPOA1                      57        ///
      str    DXPOA2                      58        ///
      str    DXPOA3                      59        ///
      str    DXPOA4                      60        ///
      str    DXPOA5                      61        ///
      str    DXPOA6                      62        ///
      str    DXPOA7                      63        ///
      str    DXPOA8                      64        ///
      str    DXPOA9                      65        ///
      str    DXPOA10                     66        ///
      str    DXPOA11                     67        ///
      str    DXPOA12                     68        ///
      str    DXPOA13                     69        ///
      str    DXPOA14                     70        ///
      str    DXPOA15                     71        ///
      str    DXPOA16                     72        ///
      str    DXPOA17                     73        ///
      str    DXPOA18                     74        ///
      str    DXPOA19                     75        ///
      str    DXPOA20                     76        ///
      str    DXPOA21                     77        ///
      str    DXPOA22                     78        ///
      str    DXPOA23                     79        ///
      str    DXPOA24                     80        ///
      str    DXPOA25                     81        ///
      str    DXPOA26                     82        ///
      str    DXPOA27                     83        ///
      str    DXPOA28                     84        ///
      str    DXPOA29                     85        ///
      str    DXPOA30                     86        ///
      str    DXPOA31                     87        ///
      str    DXPOA32                     88        ///
      str    DXPOA33                     89        ///
      str    DXPOA34                     90        ///
      str    DXPOA35                     91        ///
      str    DXPOA36                     92        ///
      str    DXPOA37                     93        ///
      str    DXPOA38                     94        ///
      str    DXPOA39                     95        ///
      str    DXPOA40                     96        ///
      str    DXPOA41                     97        ///
      str    DXPOA42                     98        ///
      str    DXPOA43                     99        ///
      str    DXPOA44                    100        ///
      str    DXPOA45                    101        ///
      str    DXPOA46                    102        ///
      str    DXPOA47                    103        ///
      str    DXPOA48                    104        ///
      str    DXPOA49                    105        ///
      str    DXPOA50                    106        ///
      str    DXPOA51                    107        ///
      str    DXPOA52                    108        ///
      str    DXPOA53                    109        ///
      str    DXPOA54                    110        ///
      str    DXPOA55                    111        ///
      str    DXPOA56                    112        ///
      byte   FEMALE                     113- 114   ///
      byte   HCUP_ED                    115- 116   ///
      byte   HCUP_OS                    117- 118   ///
      byte   HISPANIC                   119- 120   ///
      str    HISPANIC_X                 121- 122   ///
      str    HOSPST                     123- 124   ///
      int    I10_BIRTH                  125- 127   ///
      int    I10_DELIVERY               128- 130   ///
      str    I10_DX_Admitting           131- 137   ///
      str    I10_DX1                    138- 144   ///
      str    I10_DX2                    145- 151   ///
      str    I10_DX3                    152- 158   ///
      str    I10_DX4                    159- 165   ///
      str    I10_DX5                    166- 172   ///
      str    I10_DX6                    173- 179   ///
      str    I10_DX7                    180- 186   ///
      str    I10_DX8                    187- 193   ///
      str    I10_DX9                    194- 200   ///
      str    I10_DX10                   201- 207   ///
      str    I10_DX11                   208- 214   ///
      str    I10_DX12                   215- 221   ///
      str    I10_DX13                   222- 228   ///
      str    I10_DX14                   229- 235   ///
      str    I10_DX15                   236- 242   ///
      str    I10_DX16                   243- 249   ///
      str    I10_DX17                   250- 256   ///
      str    I10_DX18                   257- 263   ///
      str    I10_DX19                   264- 270   ///
      str    I10_DX20                   271- 277   ///
      str    I10_DX21                   278- 284   ///
      str    I10_DX22                   285- 291   ///
      str    I10_DX23                   292- 298   ///
      str    I10_DX24                   299- 305   ///
      str    I10_DX25                   306- 312   ///
      str    I10_DX26                   313- 319   ///
      str    I10_DX27                   320- 326   ///
      str    I10_DX28                   327- 333   ///
      str    I10_DX29                   334- 340   ///
      str    I10_DX30                   341- 347   ///
      str    I10_DX31                   348- 354   ///
      str    I10_DX32                   355- 361   ///
      str    I10_DX33                   362- 368   ///
      str    I10_DX34                   369- 375   ///
      str    I10_DX35                   376- 382   ///
      str    I10_DX36                   383- 389   ///
      str    I10_DX37                   390- 396   ///
      str    I10_DX38                   397- 403   ///
      str    I10_DX39                   404- 410   ///
      str    I10_DX40                   411- 417   ///
      str    I10_DX41                   418- 424   ///
      str    I10_DX42                   425- 431   ///
      str    I10_DX43                   432- 438   ///
      str    I10_DX44                   439- 445   ///
      str    I10_DX45                   446- 452   ///
      str    I10_DX46                   453- 459   ///
      str    I10_DX47                   460- 466   ///
      str    I10_DX48                   467- 473   ///
      str    I10_DX49                   474- 480   ///
      str    I10_DX50                   481- 487   ///
      str    I10_DX51                   488- 494   ///
      str    I10_DX52                   495- 501   ///
      str    I10_DX53                   502- 508   ///
      str    I10_DX54                   509- 515   ///
      str    I10_DX55                   516- 522   ///
      str    I10_DX56                   523- 529   ///
      int    I10_NDX                    530- 532   ///
      int    I10_NPR                    533- 535   ///
      str    I10_PR1                    536- 542   ///
      str    I10_PR2                    543- 549   ///
      str    I10_PR3                    550- 556   ///
      str    I10_PR4                    557- 563   ///
      str    I10_PR5                    564- 570   ///
      str    I10_PR6                    571- 577   ///
      str    I10_PR7                    578- 584   ///
      str    I10_PR8                    585- 591   ///
      str    I10_PR9                    592- 598   ///
      str    I10_PR10                   599- 605   ///
      str    I10_PR11                   606- 612   ///
      str    I10_PR12                   613- 619   ///
      str    I10_PR13                   620- 626   ///
      str    I10_PR14                   627- 633   ///
      str    I10_PR15                   634- 640   ///
      str    I10_PR16                   641- 647   ///
      str    I10_PR17                   648- 654   ///
      str    I10_PR18                   655- 661   ///
      str    I10_PR19                   662- 668   ///
      str    I10_PR20                   669- 675   ///
      str    I10_PR21                   676- 682   ///
      str    I10_PR22                   683- 689   ///
      str    I10_PR23                   690- 696   ///
      str    I10_PR24                   697- 703   ///
      str    I10_PR25                   704- 710   ///
      str    I10_PR26                   711- 717   ///
      str    I10_PR27                   718- 724   ///
      str    I10_PR28                   725- 731   ///
      str    I10_PR29                   732- 738   ///
      str    I10_PR30                   739- 745   ///
      int    I10_PROCTYPE               746- 748   ///
      byte   I10_SERVICELINE            749- 750   ///
      double KEY                        751- 765   ///
      long   LOS                        766- 770   ///
      long   LOS_X                      771- 776   ///
      byte   MDC                        777- 778   ///
      byte   MDC_NoPOA                  779- 780   ///
      byte   MEDINCSTQ                  781- 782   ///
      long   MRN_R                      783- 791   ///
      double OS_TIME                    792- 802   ///
      byte   PAY1                       803- 804   ///
      str    PAY1_X                     805- 811   ///
      byte   PAY2                       812- 813   ///
      str    PAY2_X                     814- 820   ///
      byte   PAY3                       821- 822   ///
      str    PAY3_X                     823- 829   ///
      byte   PCLASS_ORPROC              830- 831   ///
      int    PL_CBSA                    832- 834   ///
      byte   PL_NCHS                    835- 836   ///
      byte   PL_RUCC                    837- 838   ///
      byte   PL_UIC                     839- 840   ///
      byte   PL_UR_CAT4                 841- 842   ///
      byte   POA_Disch_Edit1            843- 844   ///
      byte   POA_Disch_Edit2            845- 846   ///
      byte   POA_Hosp_Edit1             847- 848   ///
      byte   POA_Hosp_Edit2             849- 850   ///
      byte   POA_Hosp_Edit3             851- 852   ///
      double POA_Hosp_Edit3_Value       853- 860   ///
      str    PointOfOrigin_X            861        ///
      str    PointOfOriginUB04          862        ///
      long   PRDAY1                     863- 867   ///
      long   PRDAY2                     868- 872   ///
      long   PRDAY3                     873- 877   ///
      long   PRDAY4                     878- 882   ///
      long   PRDAY5                     883- 887   ///
      long   PRDAY6                     888- 892   ///
      long   PRDAY7                     893- 897   ///
      long   PRDAY8                     898- 902   ///
      long   PRDAY9                     903- 907   ///
      long   PRDAY10                    908- 912   ///
      long   PRDAY11                    913- 917   ///
      long   PRDAY12                    918- 922   ///
      long   PRDAY13                    923- 927   ///
      long   PRDAY14                    928- 932   ///
      long   PRDAY15                    933- 937   ///
      long   PRDAY16                    938- 942   ///
      long   PRDAY17                    943- 947   ///
      long   PRDAY18                    948- 952   ///
      long   PRDAY19                    953- 957   ///
      long   PRDAY20                    958- 962   ///
      long   PRDAY21                    963- 967   ///
      long   PRDAY22                    968- 972   ///
      long   PRDAY23                    973- 977   ///
      long   PRDAY24                    978- 982   ///
      long   PRDAY25                    983- 987   ///
      long   PRDAY26                    988- 992   ///
      long   PRDAY27                    993- 997   ///
      long   PRDAY28                    998-1002   ///
      long   PRDAY29                   1003-1007   ///
      long   PRDAY30                   1008-1012   ///
      str    PrimLang                  1013-1015   ///
      str    PSTATE                    1016-1017   ///
      str    PSTATE_GEO                1018-1019   ///
      long   PSTCO_GEO                 1020-1024   ///
      byte   RACE                      1025-1026   ///
      float  RACE_PCT_MISS_HOSP        1027-1033   ///
      str    RACE_X                    1034-1053   ///
      double TOTCHG                    1054-1063   ///
      double TOTCHG_X                  1064-1078   ///
      byte   TRAN_IN                   1079-1080   ///
      byte   TRAN_OUT                  1081-1082   ///
      int    YEAR                      1083-1086   ///
      str    ZIP                       1087-1091   ///
      str    ZIP3                      1092-1094   ///
      int    ZIPINC_QRTL               1095-1097   ///
      int    AYEAR                     1098-1101   ///
      byte   BMONTH                    1102-1103   ///
      int    BYEAR                     1104-1107   ///
      byte   PRMONTH1                  1108-1109   ///
      byte   PRMONTH2                  1110-1111   ///
      byte   PRMONTH3                  1112-1113   ///
      byte   PRMONTH4                  1114-1115   ///
      byte   PRMONTH5                  1116-1117   ///
      byte   PRMONTH6                  1118-1119   ///
      byte   PRMONTH7                  1120-1121   ///
      byte   PRMONTH8                  1122-1123   ///
      byte   PRMONTH9                  1124-1125   ///
      byte   PRMONTH10                 1126-1127   ///
      byte   PRMONTH11                 1128-1129   ///
      byte   PRMONTH12                 1130-1131   ///
      byte   PRMONTH13                 1132-1133   ///
      byte   PRMONTH14                 1134-1135   ///
      byte   PRMONTH15                 1136-1137   ///
      byte   PRMONTH16                 1138-1139   ///
      byte   PRMONTH17                 1140-1141   ///
      byte   PRMONTH18                 1142-1143   ///
      byte   PRMONTH19                 1144-1145   ///
      byte   PRMONTH20                 1146-1147   ///
      byte   PRMONTH21                 1148-1149   ///
      byte   PRMONTH22                 1150-1151   ///
      byte   PRMONTH23                 1152-1153   ///
      byte   PRMONTH24                 1154-1155   ///
      byte   PRMONTH25                 1156-1157   ///
      byte   PRMONTH26                 1158-1159   ///
      byte   PRMONTH27                 1160-1161   ///
      byte   PRMONTH28                 1162-1163   ///
      byte   PRMONTH29                 1164-1165   ///
      byte   PRMONTH30                 1166-1167   ///
      int    PRYEAR1                   1168-1171   ///
      int    PRYEAR2                   1172-1175   ///
      int    PRYEAR3                   1176-1179   ///
      int    PRYEAR4                   1180-1183   ///
      int    PRYEAR5                   1184-1187   ///
      int    PRYEAR6                   1188-1191   ///
      int    PRYEAR7                   1192-1195   ///
      int    PRYEAR8                   1196-1199   ///
      int    PRYEAR9                   1200-1203   ///
      int    PRYEAR10                  1204-1207   ///
      int    PRYEAR11                  1208-1211   ///
      int    PRYEAR12                  1212-1215   ///
      int    PRYEAR13                  1216-1219   ///
      int    PRYEAR14                  1220-1223   ///
      int    PRYEAR15                  1224-1227   ///
      int    PRYEAR16                  1228-1231   ///
      int    PRYEAR17                  1232-1235   ///
      int    PRYEAR18                  1236-1239   ///
      int    PRYEAR19                  1240-1243   ///
      int    PRYEAR20                  1244-1247   ///
      int    PRYEAR21                  1248-1251   ///
      int    PRYEAR22                  1252-1255   ///
      int    PRYEAR23                  1256-1259   ///
      int    PRYEAR24                  1260-1263   ///
      int    PRYEAR25                  1264-1267   ///
      int    PRYEAR26                  1268-1271   ///
      int    PRYEAR27                  1272-1275   ///
      int    PRYEAR28                  1276-1279   ///
      int    PRYEAR29                  1280-1283   ///
      int    PRYEAR30                  1284-1287   ///
      using  "MN_SID_2020_CORE.ASC"

***  Assign labels to the data elements ***
label var ADRG                     "All Patient Refined DRG"
label var ADRGRISKMORTALITY        "All Patient Refined DRG mortality risk"
label var ADRGSEV                  "All Patient Refined DRG severity level"
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMDC                     "All Patient Refined MDC"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
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
label var DXPOA50                  "Diagnosis 50, present on admission indicator"
label var DXPOA51                  "Diagnosis 51, present on admission indicator"
label var DXPOA52                  "Diagnosis 52, present on admission indicator"
label var DXPOA53                  "Diagnosis 53, present on admission indicator"
label var DXPOA54                  "Diagnosis 54, present on admission indicator"
label var DXPOA55                  "Diagnosis 55, present on admission indicator"
label var DXPOA56                  "Diagnosis 56, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPST                   "Hospital state postal code"
label var I10_BIRTH                "ICD-10-CM Birth Indicator"
label var I10_DELIVERY             "ICD-10-CM Delivery Indicator"
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
label var I10_DX50                 "ICD-10-CM Diagnosis 50"
label var I10_DX51                 "ICD-10-CM Diagnosis 51"
label var I10_DX52                 "ICD-10-CM Diagnosis 52"
label var I10_DX53                 "ICD-10-CM Diagnosis 53"
label var I10_DX54                 "ICD-10-CM Diagnosis 54"
label var I10_DX55                 "ICD-10-CM Diagnosis 55"
label var I10_DX56                 "ICD-10-CM Diagnosis 56"
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
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
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
label var PAY3                     "Tertiary expected payer (uniform)"
label var PAY3_X                   "Tertiary expected payer (as received from source)"
label var PCLASS_ORPROC            "Indicates operating room (major diagnostic or therapeutic) procedure on the record"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes (RUCC)"
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
label var PrimLang                 "Primary language of patient"
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
label var RACE                     "Race (uniform)"
label var RACE_PCT_MISS_HOSP       "Hospital percentage of missing or invalid race values"
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
recode ADRG                      (-99 -88 -66=.)
recode ADRGRISKMORTALITY         (-9 -8 -6 -5=.)
recode ADRGSEV                   (-9 -8 -6 -5=.)
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
recode AMDC                      (-9 -8 -6 -5=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode I10_BIRTH                 (-99 -88 -66=.)
recode I10_DELIVERY              (-99 -88 -66=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode I10_SERVICELINE           (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
recode PAY3                      (-9 -8 -6 -5=.)
recode PCLASS_ORPROC             (-9 -8 -6 -5=.)
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
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_PCT_MISS_HOSP        (-999.99 -888.88 -666.66=.)
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

save "MN_SID_2020_CORE.dta", replace
