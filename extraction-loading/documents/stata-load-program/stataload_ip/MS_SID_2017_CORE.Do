/*****************************************************************************
* Creation Date: 12/11/2018   
* MS_SID_2017_CORE.Do
* This program will load the 2017 MS ASCII CORE File into Stata.
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
      str    DISP_X                      32-  33   ///
      byte   DISPUB04                    34-  35   ///
      byte   DISPUNIFORM                 36-  37   ///
      byte   DMONTH                      38-  39   ///
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
      str    DXPOA29                     95        ///
      str    DXPOA30                     96        ///
      str    DXPOA31                     97        ///
      str    DXPOA32                     98        ///
      str    DXPOA33                     99        ///
      str    DXPOA34                    100        ///
      str    DXPOA35                    101        ///
      str    DXPOA36                    102        ///
      str    DXPOA37                    103        ///
      str    DXPOA38                    104        ///
      str    DXPOA39                    105        ///
      str    DXPOA40                    106        ///
      str    DXPOA41                    107        ///
      str    DXPOA42                    108        ///
      str    DXPOA43                    109        ///
      str    DXPOA44                    110        ///
      str    DXPOA45                    111        ///
      str    DXPOA46                    112        ///
      str    DXPOA47                    113        ///
      str    DXPOA48                    114        ///
      str    DXPOA49                    115        ///
      str    DXPOA50                    116        ///
      str    DXPOA51                    117        ///
      str    DXPOA52                    118        ///
      str    DXPOA53                    119        ///
      str    DXPOA54                    120        ///
      str    DXPOA55                    121        ///
      int    DXVER                      122- 124   ///
      byte   FEMALE                     125- 126   ///
      byte   HCUP_ED                    127- 128   ///
      byte   HCUP_OS                    129- 130   ///
      byte   HISPANIC                   131- 132   ///
      str    HISPANIC_X                 133        ///
      byte   HospitalUnit               134- 135   ///
      str    HOSPST                     136- 137   ///
      str    I10_DX_Admitting           138- 144   ///
      str    I10_DX1                    145- 151   ///
      str    I10_DX2                    152- 158   ///
      str    I10_DX3                    159- 165   ///
      str    I10_DX4                    166- 172   ///
      str    I10_DX5                    173- 179   ///
      str    I10_DX6                    180- 186   ///
      str    I10_DX7                    187- 193   ///
      str    I10_DX8                    194- 200   ///
      str    I10_DX9                    201- 207   ///
      str    I10_DX10                   208- 214   ///
      str    I10_DX11                   215- 221   ///
      str    I10_DX12                   222- 228   ///
      str    I10_DX13                   229- 235   ///
      str    I10_DX14                   236- 242   ///
      str    I10_DX15                   243- 249   ///
      str    I10_DX16                   250- 256   ///
      str    I10_DX17                   257- 263   ///
      str    I10_DX18                   264- 270   ///
      str    I10_DX19                   271- 277   ///
      str    I10_DX20                   278- 284   ///
      str    I10_DX21                   285- 291   ///
      str    I10_DX22                   292- 298   ///
      str    I10_DX23                   299- 305   ///
      str    I10_DX24                   306- 312   ///
      str    I10_DX25                   313- 319   ///
      str    I10_DX26                   320- 326   ///
      str    I10_DX27                   327- 333   ///
      str    I10_DX28                   334- 340   ///
      str    I10_DX29                   341- 347   ///
      str    I10_DX30                   348- 354   ///
      str    I10_DX31                   355- 361   ///
      str    I10_DX32                   362- 368   ///
      str    I10_DX33                   369- 375   ///
      str    I10_DX34                   376- 382   ///
      str    I10_DX35                   383- 389   ///
      str    I10_DX36                   390- 396   ///
      str    I10_DX37                   397- 403   ///
      str    I10_DX38                   404- 410   ///
      str    I10_DX39                   411- 417   ///
      str    I10_DX40                   418- 424   ///
      str    I10_DX41                   425- 431   ///
      str    I10_DX42                   432- 438   ///
      str    I10_DX43                   439- 445   ///
      str    I10_DX44                   446- 452   ///
      str    I10_DX45                   453- 459   ///
      str    I10_DX46                   460- 466   ///
      str    I10_DX47                   467- 473   ///
      str    I10_DX48                   474- 480   ///
      str    I10_DX49                   481- 487   ///
      str    I10_DX50                   488- 494   ///
      str    I10_DX51                   495- 501   ///
      str    I10_DX52                   502- 508   ///
      str    I10_DX53                   509- 515   ///
      str    I10_DX54                   516- 522   ///
      str    I10_DX55                   523- 529   ///
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
      double KEY                        749- 763   ///
      long   LOS                        764- 768   ///
      long   LOS_X                      769- 774   ///
      byte   MDC                        775- 776   ///
      byte   MDC_NoPOA                  777- 778   ///
      long   MDNUM1_R                   779- 787   ///
      long   MDNUM2_R                   788- 796   ///
      long   MDNUM3_R                   797- 805   ///
      byte   MEDINCSTQ                  806- 807   ///
      str    P7EDSRC_X                  808- 809   ///
      byte   PAY1                       810- 811   ///
      str    PAY1_X                     812- 816   ///
      byte   PAY2                       817- 818   ///
      str    PAY2_X                     819- 823   ///
      byte   PAY3                       824- 825   ///
      str    PAY3_X                     826- 830   ///
      int    PL_CBSA                    831- 833   ///
      byte   PL_NCHS                    834- 835   ///
      byte   PL_RUCC                    836- 837   ///
      byte   PL_UIC                     838- 839   ///
      byte   PL_UR_CAT4                 840- 841   ///
      byte   POA_Disch_Edit1            842- 843   ///
      byte   POA_Disch_Edit2            844- 845   ///
      byte   POA_Hosp_Edit1             846- 847   ///
      byte   POA_Hosp_Edit2             848- 849   ///
      byte   POA_Hosp_Edit3             850- 851   ///
      double POA_Hosp_Edit3_Value       852- 859   ///
      str    PointOfOrigin_X            860        ///
      str    PointOfOriginUB04          861        ///
      long   PRDAY1                     862- 866   ///
      long   PRDAY2                     867- 871   ///
      long   PRDAY3                     872- 876   ///
      long   PRDAY4                     877- 881   ///
      long   PRDAY5                     882- 886   ///
      long   PRDAY6                     887- 891   ///
      long   PRDAY7                     892- 896   ///
      long   PRDAY8                     897- 901   ///
      long   PRDAY9                     902- 906   ///
      long   PRDAY10                    907- 911   ///
      long   PRDAY11                    912- 916   ///
      long   PRDAY12                    917- 921   ///
      long   PRDAY13                    922- 926   ///
      long   PRDAY14                    927- 931   ///
      long   PRDAY15                    932- 936   ///
      long   PRDAY16                    937- 941   ///
      long   PRDAY17                    942- 946   ///
      long   PRDAY18                    947- 951   ///
      long   PRDAY19                    952- 956   ///
      long   PRDAY20                    957- 961   ///
      long   PRDAY21                    962- 966   ///
      long   PRDAY22                    967- 971   ///
      long   PRDAY23                    972- 976   ///
      long   PRDAY24                    977- 981   ///
      long   PRDAY25                    982- 986   ///
      long   PRDAY26                    987- 991   ///
      long   PRDAY27                    992- 996   ///
      long   PRDAY28                    997-1001   ///
      long   PRDAY29                   1002-1006   ///
      long   PRDAY30                   1007-1011   ///
      int    PRVER                     1012-1014   ///
      str    PSTATE                    1015-1016   ///
      long   PSTCO                     1017-1021   ///
      long   PSTCO2                    1022-1026   ///
      byte   RACE                      1027-1028   ///
      byte   RACE_EDIT                 1029-1030   ///
      str    RACE_X                    1031        ///
      double TOTCHG                    1032-1041   ///
      double TOTCHG_X                  1042-1056   ///
      byte   TRAN_IN                   1057-1058   ///
      byte   TRAN_OUT                  1059-1060   ///
      long   VisitLink                 1061-1069   ///
      int    YEAR                      1070-1073   ///
      str    ZIP                       1074-1078   ///
      str    ZIP3                      1079-1081   ///
      int    ZIPINC_QRTL               1082-1084   ///
      int    AYEAR                     1085-1088   ///
      byte   BMONTH                    1089-1090   ///
      int    BYEAR                     1091-1094   ///
      byte   PRMONTH1                  1095-1096   ///
      byte   PRMONTH2                  1097-1098   ///
      byte   PRMONTH3                  1099-1100   ///
      byte   PRMONTH4                  1101-1102   ///
      byte   PRMONTH5                  1103-1104   ///
      byte   PRMONTH6                  1105-1106   ///
      byte   PRMONTH7                  1107-1108   ///
      byte   PRMONTH8                  1109-1110   ///
      byte   PRMONTH9                  1111-1112   ///
      byte   PRMONTH10                 1113-1114   ///
      byte   PRMONTH11                 1115-1116   ///
      byte   PRMONTH12                 1117-1118   ///
      byte   PRMONTH13                 1119-1120   ///
      byte   PRMONTH14                 1121-1122   ///
      byte   PRMONTH15                 1123-1124   ///
      byte   PRMONTH16                 1125-1126   ///
      byte   PRMONTH17                 1127-1128   ///
      byte   PRMONTH18                 1129-1130   ///
      byte   PRMONTH19                 1131-1132   ///
      byte   PRMONTH20                 1133-1134   ///
      byte   PRMONTH21                 1135-1136   ///
      byte   PRMONTH22                 1137-1138   ///
      byte   PRMONTH23                 1139-1140   ///
      byte   PRMONTH24                 1141-1142   ///
      byte   PRMONTH25                 1143-1144   ///
      byte   PRMONTH26                 1145-1146   ///
      byte   PRMONTH27                 1147-1148   ///
      byte   PRMONTH28                 1149-1150   ///
      byte   PRMONTH29                 1151-1152   ///
      byte   PRMONTH30                 1153-1154   ///
      int    PRYEAR1                   1155-1158   ///
      int    PRYEAR2                   1159-1162   ///
      int    PRYEAR3                   1163-1166   ///
      int    PRYEAR4                   1167-1170   ///
      int    PRYEAR5                   1171-1174   ///
      int    PRYEAR6                   1175-1178   ///
      int    PRYEAR7                   1179-1182   ///
      int    PRYEAR8                   1183-1186   ///
      int    PRYEAR9                   1187-1190   ///
      int    PRYEAR10                  1191-1194   ///
      int    PRYEAR11                  1195-1198   ///
      int    PRYEAR12                  1199-1202   ///
      int    PRYEAR13                  1203-1206   ///
      int    PRYEAR14                  1207-1210   ///
      int    PRYEAR15                  1211-1214   ///
      int    PRYEAR16                  1215-1218   ///
      int    PRYEAR17                  1219-1222   ///
      int    PRYEAR18                  1223-1226   ///
      int    PRYEAR19                  1227-1230   ///
      int    PRYEAR20                  1231-1234   ///
      int    PRYEAR21                  1235-1238   ///
      int    PRYEAR22                  1239-1242   ///
      int    PRYEAR23                  1243-1246   ///
      int    PRYEAR24                  1247-1250   ///
      int    PRYEAR25                  1251-1254   ///
      int    PRYEAR26                  1255-1258   ///
      int    PRYEAR27                  1259-1262   ///
      int    PRYEAR28                  1263-1266   ///
      int    PRYEAR29                  1267-1270   ///
      int    PRYEAR30                  1271-1274   ///
      using  "MS_SID_2017_CORE.ASC"

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
label var DXPOA50                  "Diagnosis 50, present on admission indicator"
label var DXPOA51                  "Diagnosis 51, present on admission indicator"
label var DXPOA52                  "Diagnosis 52, present on admission indicator"
label var DXPOA53                  "Diagnosis 53, present on admission indicator"
label var DXPOA54                  "Diagnosis 54, present on admission indicator"
label var DXPOA55                  "Diagnosis 55, present on admission indicator"
label var DXVER                    "Diagnosis Version"
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
label var I10_DX50                 "ICD-10-CM Diagnosis 50"
label var I10_DX51                 "ICD-10-CM Diagnosis 51"
label var I10_DX52                 "ICD-10-CM Diagnosis 52"
label var I10_DX53                 "ICD-10-CM Diagnosis 53"
label var I10_DX54                 "ICD-10-CM Diagnosis 54"
label var I10_DX55                 "ICD-10-CM Diagnosis 55"
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
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_EDIT                "Race Edit Checks"
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
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_EDIT                 (-9 -8 -6 -5=.)
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

save "MS_SID_2017_CORE.dta", replace
