/*****************************************************************************
* Creation Date: 07/25/2018   
* DC_SID_2016_CORE.Do
* This program will load the 2016 DC ASCII CORE File into Stata.
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
      int    BWT                         24-  27   ///
      int    DHOUR                       28-  31   ///
      byte   DIED                        32-  33   ///
      str    DISP_X                      34-  35   ///
      byte   DISPUB04                    36-  37   ///
      byte   DISPUNIFORM                 38-  39   ///
      byte   DMONTH                      40-  41   ///
      byte   DQTR                        42-  43   ///
      int    DRG                         44-  46   ///
      int    DRG_NoPOA                   47-  49   ///
      byte   DRGVER                      50-  51   ///
      str    DXPOA1                      52        ///
      str    DXPOA2                      53        ///
      str    DXPOA3                      54        ///
      str    DXPOA4                      55        ///
      str    DXPOA5                      56        ///
      str    DXPOA6                      57        ///
      str    DXPOA7                      58        ///
      str    DXPOA8                      59        ///
      str    DXPOA9                      60        ///
      str    DXPOA10                     61        ///
      str    DXPOA11                     62        ///
      str    DXPOA12                     63        ///
      str    DXPOA13                     64        ///
      str    DXPOA14                     65        ///
      str    DXPOA15                     66        ///
      str    DXPOA16                     67        ///
      str    DXPOA17                     68        ///
      str    DXPOA18                     69        ///
      str    DXPOA19                     70        ///
      str    DXPOA20                     71        ///
      str    DXPOA21                     72        ///
      str    DXPOA22                     73        ///
      str    DXPOA23                     74        ///
      str    DXPOA24                     75        ///
      str    DXPOA25                     76        ///
      str    DXPOA26                     77        ///
      str    DXPOA27                     78        ///
      str    DXPOA28                     79        ///
      str    DXPOA29                     80        ///
      str    DXPOA30                     81        ///
      str    DXPOA31                     82        ///
      str    DXPOA32                     83        ///
      str    DXPOA33                     84        ///
      str    DXPOA34                     85        ///
      str    DXPOA35                     86        ///
      str    DXPOA36                     87        ///
      str    DXPOA37                     88        ///
      str    DXPOA38                     89        ///
      str    DXPOA39                     90        ///
      str    DXPOA40                     91        ///
      str    DXPOA41                     92        ///
      str    DXPOA42                     93        ///
      str    DXPOA43                     94        ///
      str    DXPOA44                     95        ///
      str    DXPOA45                     96        ///
      str    DXPOA46                     97        ///
      str    DXPOA47                     98        ///
      str    DXPOA48                     99        ///
      str    DXPOA49                    100        ///
      str    DXPOA50                    101        ///
      int    DXVER                      102- 104   ///
      str    E_POA1                     105        ///
      str    E_POA2                     106        ///
      str    E_POA3                     107        ///
      str    E_POA4                     108        ///
      str    E_POA5                     109        ///
      str    E_POA6                     110        ///
      str    E_POA7                     111        ///
      str    E_POA8                     112        ///
      str    E_POA9                     113        ///
      str    E_POA10                    114        ///
      str    E_POA11                    115        ///
      str    E_POA12                    116        ///
      byte   FEMALE                     117- 118   ///
      byte   HCUP_ED                    119- 120   ///
      byte   HCUP_OS                    121- 122   ///
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
      str    I10_DX26                   307- 313   ///
      str    I10_DX27                   314- 320   ///
      str    I10_DX28                   321- 327   ///
      str    I10_DX29                   328- 334   ///
      str    I10_DX30                   335- 341   ///
      str    I10_DX31                   342- 348   ///
      str    I10_DX32                   349- 355   ///
      str    I10_DX33                   356- 362   ///
      str    I10_DX34                   363- 369   ///
      str    I10_DX35                   370- 376   ///
      str    I10_DX36                   377- 383   ///
      str    I10_DX37                   384- 390   ///
      str    I10_DX38                   391- 397   ///
      str    I10_DX39                   398- 404   ///
      str    I10_DX40                   405- 411   ///
      str    I10_DX41                   412- 418   ///
      str    I10_DX42                   419- 425   ///
      str    I10_DX43                   426- 432   ///
      str    I10_DX44                   433- 439   ///
      str    I10_DX45                   440- 446   ///
      str    I10_DX46                   447- 453   ///
      str    I10_DX47                   454- 460   ///
      str    I10_DX48                   461- 467   ///
      str    I10_DX49                   468- 474   ///
      str    I10_DX50                   475- 481   ///
      str    I10_ECAUSE1                482- 488   ///
      str    I10_ECAUSE2                489- 495   ///
      str    I10_ECAUSE3                496- 502   ///
      str    I10_ECAUSE4                503- 509   ///
      str    I10_ECAUSE5                510- 516   ///
      str    I10_ECAUSE6                517- 523   ///
      str    I10_ECAUSE7                524- 530   ///
      str    I10_ECAUSE8                531- 537   ///
      str    I10_ECAUSE9                538- 544   ///
      str    I10_ECAUSE10               545- 551   ///
      str    I10_ECAUSE11               552- 558   ///
      str    I10_ECAUSE12               559- 565   ///
      int    I10_NDX                    566- 568   ///
      byte   I10_NECAUSE                569- 570   ///
      int    I10_NPR                    571- 573   ///
      str    I10_PR1                    574- 580   ///
      str    I10_PR2                    581- 587   ///
      str    I10_PR3                    588- 594   ///
      str    I10_PR4                    595- 601   ///
      str    I10_PR5                    602- 608   ///
      str    I10_PR6                    609- 615   ///
      str    I10_PR7                    616- 622   ///
      str    I10_PR8                    623- 629   ///
      str    I10_PR9                    630- 636   ///
      str    I10_PR10                   637- 643   ///
      str    I10_PR11                   644- 650   ///
      str    I10_PR12                   651- 657   ///
      str    I10_PR13                   658- 664   ///
      str    I10_PR14                   665- 671   ///
      str    I10_PR15                   672- 678   ///
      str    I10_PR16                   679- 685   ///
      str    I10_PR17                   686- 692   ///
      str    I10_PR18                   693- 699   ///
      str    I10_PR19                   700- 706   ///
      str    I10_PR20                   707- 713   ///
      str    I10_PR21                   714- 720   ///
      str    I10_PR22                   721- 727   ///
      str    I10_PR23                   728- 734   ///
      str    I10_PR24                   735- 741   ///
      str    I10_PR25                   742- 748   ///
      str    I10_PR26                   749- 755   ///
      str    I10_PR27                   756- 762   ///
      str    I10_PR28                   763- 769   ///
      str    I10_PR29                   770- 776   ///
      str    I10_PR30                   777- 783   ///
      str    I10_PR31                   784- 790   ///
      str    I10_PR32                   791- 797   ///
      str    I10_PR33                   798- 804   ///
      str    I10_PR34                   805- 811   ///
      str    I10_PR35                   812- 818   ///
      str    I10_PR36                   819- 825   ///
      str    I10_PR37                   826- 832   ///
      str    I10_PR38                   833- 839   ///
      str    I10_PR39                   840- 846   ///
      str    I10_PR40                   847- 853   ///
      str    I10_PR41                   854- 860   ///
      str    I10_PR42                   861- 867   ///
      str    I10_PR43                   868- 874   ///
      str    I10_PR44                   875- 881   ///
      str    I10_PR45                   882- 888   ///
      str    I10_PR46                   889- 895   ///
      str    I10_PR47                   896- 902   ///
      str    I10_PR48                   903- 909   ///
      str    I10_PR49                   910- 916   ///
      str    I10_PR50                   917- 923   ///
      int    I10_PROCTYPE               924- 926   ///
      double KEY                        927- 941   ///
      long   LOS                        942- 946   ///
      long   LOS_X                      947- 952   ///
      byte   MDC                        953- 954   ///
      byte   MDC_NoPOA                  955- 956   ///
      long   MDNUM1_R                   957- 965   ///
      long   MDNUM2_R                   966- 974   ///
      long   MDNUM3_R                   975- 983   ///
      long   MDNUM4_R                   984- 992   ///
      byte   MEDINCSTQ                  993- 994   ///
      byte   PAY1                       995- 996   ///
      str    PAY1_X                     997-1004   ///
      byte   PAY2                      1005-1006   ///
      str    PAY2_X                    1007-1014   ///
      byte   PAY3                      1015-1016   ///
      str    PAY3_X                    1017-1024   ///
      int    PL_CBSA                   1025-1027   ///
      byte   PL_NCHS                   1028-1029   ///
      byte   PL_RUCC                   1030-1031   ///
      byte   PL_UIC                    1032-1033   ///
      byte   PL_UR_CAT4                1034-1035   ///
      byte   POA_Disch_Edit1           1036-1037   ///
      byte   POA_Disch_Edit2           1038-1039   ///
      byte   POA_Hosp_Edit1            1040-1041   ///
      byte   POA_Hosp_Edit2            1042-1043   ///
      byte   POA_Hosp_Edit3            1044-1045   ///
      double POA_Hosp_Edit3_Value      1046-1053   ///
      str    PointOfOrigin_X           1054-1056   ///
      str    PointOfOriginUB04         1057        ///
      long   PRDAY1                    1058-1062   ///
      long   PRDAY2                    1063-1067   ///
      long   PRDAY3                    1068-1072   ///
      long   PRDAY4                    1073-1077   ///
      long   PRDAY5                    1078-1082   ///
      long   PRDAY6                    1083-1087   ///
      long   PRDAY7                    1088-1092   ///
      long   PRDAY8                    1093-1097   ///
      long   PRDAY9                    1098-1102   ///
      long   PRDAY10                   1103-1107   ///
      long   PRDAY11                   1108-1112   ///
      long   PRDAY12                   1113-1117   ///
      long   PRDAY13                   1118-1122   ///
      long   PRDAY14                   1123-1127   ///
      long   PRDAY15                   1128-1132   ///
      long   PRDAY16                   1133-1137   ///
      long   PRDAY17                   1138-1142   ///
      long   PRDAY18                   1143-1147   ///
      long   PRDAY19                   1148-1152   ///
      long   PRDAY20                   1153-1157   ///
      long   PRDAY21                   1158-1162   ///
      long   PRDAY22                   1163-1167   ///
      long   PRDAY23                   1168-1172   ///
      long   PRDAY24                   1173-1177   ///
      long   PRDAY25                   1178-1182   ///
      long   PRDAY26                   1183-1187   ///
      long   PRDAY27                   1188-1192   ///
      long   PRDAY28                   1193-1197   ///
      long   PRDAY29                   1198-1202   ///
      long   PRDAY30                   1203-1207   ///
      long   PRDAY31                   1208-1212   ///
      long   PRDAY32                   1213-1217   ///
      long   PRDAY33                   1218-1222   ///
      long   PRDAY34                   1223-1227   ///
      long   PRDAY35                   1228-1232   ///
      long   PRDAY36                   1233-1237   ///
      long   PRDAY37                   1238-1242   ///
      long   PRDAY38                   1243-1247   ///
      long   PRDAY39                   1248-1252   ///
      long   PRDAY40                   1253-1257   ///
      long   PRDAY41                   1258-1262   ///
      long   PRDAY42                   1263-1267   ///
      long   PRDAY43                   1268-1272   ///
      long   PRDAY44                   1273-1277   ///
      long   PRDAY45                   1278-1282   ///
      long   PRDAY46                   1283-1287   ///
      long   PRDAY47                   1288-1292   ///
      long   PRDAY48                   1293-1297   ///
      long   PRDAY49                   1298-1302   ///
      long   PRDAY50                   1303-1307   ///
      int    PRVER                     1308-1310   ///
      str    PSTATE                    1311-1312   ///
      long   PSTCO                     1313-1317   ///
      long   PSTCO2                    1318-1322   ///
      str    RACE_X                    1323-1325   ///
      double TOTCHG                    1326-1335   ///
      double TOTCHG_X                  1336-1350   ///
      byte   TRAN_IN                   1351-1352   ///
      byte   TRAN_OUT                  1353-1354   ///
      int    YEAR                      1355-1358   ///
      str    ZIP                       1359-1363   ///
      str    ZIP3                      1364-1366   ///
      int    ZIPINC_QRTL               1367-1369   ///
      long   HOSPID                    1370-1374   ///
      int    AYEAR                     1375-1378   ///
      byte   BMONTH                    1379-1380   ///
      int    BYEAR                     1381-1384   ///
      using  "DC_SID_2016_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var BWT                      "Birth weight in grams"
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
label var DXVER                    "Diagnosis Version"
label var E_POA1                   "External cause 1, present on admission indicator"
label var E_POA2                   "External cause 2, present on admission indicator"
label var E_POA3                   "External cause 3, present on admission indicator"
label var E_POA4                   "External cause 4, present on admission indicator"
label var E_POA5                   "External cause 5, present on admission indicator"
label var E_POA6                   "External cause 6, present on admission indicator"
label var E_POA7                   "External cause 7, present on admission indicator"
label var E_POA8                   "External cause 8, present on admission indicator"
label var E_POA9                   "External cause 9, present on admission indicator"
label var E_POA10                  "External cause 10, present on admission indicator"
label var E_POA11                  "External cause 11, present on admission indicator"
label var E_POA12                  "External cause 12, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
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
label var I10_ECAUSE1              "ICD-10-CM External cause 1"
label var I10_ECAUSE2              "ICD-10-CM External cause 2"
label var I10_ECAUSE3              "ICD-10-CM External cause 3"
label var I10_ECAUSE4              "ICD-10-CM External cause 4"
label var I10_ECAUSE5              "ICD-10-CM External cause 5"
label var I10_ECAUSE6              "ICD-10-CM External cause 6"
label var I10_ECAUSE7              "ICD-10-CM External cause 7"
label var I10_ECAUSE8              "ICD-10-CM External cause 8"
label var I10_ECAUSE9              "ICD-10-CM External cause 9"
label var I10_ECAUSE10             "ICD-10-CM External cause 10"
label var I10_ECAUSE11             "ICD-10-CM External cause 11"
label var I10_ECAUSE12             "ICD-10-CM External cause 12"
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
label var I10_PR38                 "ICD-10-PCS Procedure 38"
label var I10_PR39                 "ICD-10-PCS Procedure 39"
label var I10_PR40                 "ICD-10-PCS Procedure 40"
label var I10_PR41                 "ICD-10-PCS Procedure 41"
label var I10_PR42                 "ICD-10-PCS Procedure 42"
label var I10_PR43                 "ICD-10-PCS Procedure 43"
label var I10_PR44                 "ICD-10-PCS Procedure 44"
label var I10_PR45                 "ICD-10-PCS Procedure 45"
label var I10_PR46                 "ICD-10-PCS Procedure 46"
label var I10_PR47                 "ICD-10-PCS Procedure 47"
label var I10_PR48                 "ICD-10-PCS Procedure 48"
label var I10_PR49                 "ICD-10-PCS Procedure 49"
label var I10_PR50                 "ICD-10-PCS Procedure 50"
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
label var PRDAY38                  "Number of days from admission to I10_PR38"
label var PRDAY39                  "Number of days from admission to I10_PR39"
label var PRDAY40                  "Number of days from admission to I10_PR40"
label var PRDAY41                  "Number of days from admission to I10_PR41"
label var PRDAY42                  "Number of days from admission to I10_PR42"
label var PRDAY43                  "Number of days from admission to I10_PR43"
label var PRDAY44                  "Number of days from admission to I10_PR44"
label var PRDAY45                  "Number of days from admission to I10_PR45"
label var PRDAY46                  "Number of days from admission to I10_PR46"
label var PRDAY47                  "Number of days from admission to I10_PR47"
label var PRDAY48                  "Number of days from admission to I10_PR48"
label var PRDAY49                  "Number of days from admission to I10_PR49"
label var PRDAY50                  "Number of days from admission to I10_PR50"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
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
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
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
recode PRDAY38                   (-9999 -8888 -6666=.)
recode PRDAY39                   (-9999 -8888 -6666=.)
recode PRDAY40                   (-9999 -8888 -6666=.)
recode PRDAY41                   (-9999 -8888 -6666=.)
recode PRDAY42                   (-9999 -8888 -6666=.)
recode PRDAY43                   (-9999 -8888 -6666=.)
recode PRDAY44                   (-9999 -8888 -6666=.)
recode PRDAY45                   (-9999 -8888 -6666=.)
recode PRDAY46                   (-9999 -8888 -6666=.)
recode PRDAY47                   (-9999 -8888 -6666=.)
recode PRDAY48                   (-9999 -8888 -6666=.)
recode PRDAY49                   (-9999 -8888 -6666=.)
recode PRDAY50                   (-9999 -8888 -6666=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)
recode BMONTH                    (-9 -8 -6 -5=.)
recode BYEAR                     (-999 -888 -666=.)

save "DC_SID_2016_CORE.dta", replace
