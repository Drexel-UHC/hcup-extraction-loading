/*****************************************************************************
* Creation Date: 02/08/2022   
* SD_SID_2020_CORE.Do
* This program will load the 2020 SD ASCII CORE File into Stata.
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
      int    BWT                         16-  19   ///
      byte   DIED                        20-  21   ///
      str    DISP_X                      22-  25   ///
      byte   DISPUB04                    26-  27   ///
      byte   DISPUNIFORM                 28-  29   ///
      byte   DMONTH                      30-  31   ///
      byte   DQTR                        32-  33   ///
      int    DRG                         34-  36   ///
      int    DRG_NoPOA                   37-  39   ///
      byte   DRGVER                      40-  41   ///
      str    DXPOA1                      42        ///
      str    DXPOA2                      43        ///
      str    DXPOA3                      44        ///
      str    DXPOA4                      45        ///
      str    DXPOA5                      46        ///
      str    DXPOA6                      47        ///
      str    DXPOA7                      48        ///
      str    DXPOA8                      49        ///
      str    DXPOA9                      50        ///
      str    DXPOA10                     51        ///
      str    DXPOA11                     52        ///
      str    DXPOA12                     53        ///
      str    DXPOA13                     54        ///
      str    DXPOA14                     55        ///
      str    DXPOA15                     56        ///
      str    DXPOA16                     57        ///
      str    DXPOA17                     58        ///
      str    DXPOA18                     59        ///
      str    DXPOA19                     60        ///
      str    DXPOA20                     61        ///
      str    DXPOA21                     62        ///
      str    DXPOA22                     63        ///
      str    DXPOA23                     64        ///
      str    DXPOA24                     65        ///
      str    DXPOA25                     66        ///
      str    DXPOA26                     67        ///
      str    DXPOA27                     68        ///
      str    DXPOA28                     69        ///
      str    DXPOA29                     70        ///
      str    DXPOA30                     71        ///
      str    DXPOA31                     72        ///
      str    DXPOA32                     73        ///
      str    DXPOA33                     74        ///
      str    DXPOA34                     75        ///
      str    DXPOA35                     76        ///
      str    DXPOA36                     77        ///
      str    DXPOA37                     78        ///
      str    DXPOA38                     79        ///
      str    DXPOA39                     80        ///
      str    DXPOA40                     81        ///
      str    DXPOA41                     82        ///
      str    DXPOA42                     83        ///
      str    DXPOA43                     84        ///
      str    DXPOA44                     85        ///
      str    DXPOA45                     86        ///
      str    DXPOA46                     87        ///
      str    DXPOA47                     88        ///
      str    DXPOA48                     89        ///
      str    DXPOA49                     90        ///
      str    DXPOA50                     91        ///
      str    DXPOA51                     92        ///
      str    DXPOA52                     93        ///
      str    DXPOA53                     94        ///
      str    DXPOA54                     95        ///
      str    DXPOA55                     96        ///
      str    DXPOA56                     97        ///
      str    DXPOA57                     98        ///
      str    DXPOA58                     99        ///
      str    DXPOA59                    100        ///
      str    DXPOA60                    101        ///
      str    DXPOA61                    102        ///
      str    DXPOA62                    103        ///
      str    DXPOA63                    104        ///
      str    DXPOA64                    105        ///
      str    DXPOA65                    106        ///
      str    DXPOA66                    107        ///
      byte   FEMALE                     108- 109   ///
      byte   HCUP_ED                    110- 111   ///
      byte   HCUP_OS                    112- 113   ///
      byte   HISPANIC                   114- 115   ///
      str    HISPANIC_X                 116        ///
      byte   HospitalUnit               117- 118   ///
      str    HOSPST                     119- 120   ///
      int    I10_BIRTH                  121- 123   ///
      int    I10_DELIVERY               124- 126   ///
      str    I10_DX_Admitting           127- 133   ///
      str    I10_DX1                    134- 140   ///
      str    I10_DX2                    141- 147   ///
      str    I10_DX3                    148- 154   ///
      str    I10_DX4                    155- 161   ///
      str    I10_DX5                    162- 168   ///
      str    I10_DX6                    169- 175   ///
      str    I10_DX7                    176- 182   ///
      str    I10_DX8                    183- 189   ///
      str    I10_DX9                    190- 196   ///
      str    I10_DX10                   197- 203   ///
      str    I10_DX11                   204- 210   ///
      str    I10_DX12                   211- 217   ///
      str    I10_DX13                   218- 224   ///
      str    I10_DX14                   225- 231   ///
      str    I10_DX15                   232- 238   ///
      str    I10_DX16                   239- 245   ///
      str    I10_DX17                   246- 252   ///
      str    I10_DX18                   253- 259   ///
      str    I10_DX19                   260- 266   ///
      str    I10_DX20                   267- 273   ///
      str    I10_DX21                   274- 280   ///
      str    I10_DX22                   281- 287   ///
      str    I10_DX23                   288- 294   ///
      str    I10_DX24                   295- 301   ///
      str    I10_DX25                   302- 308   ///
      str    I10_DX26                   309- 315   ///
      str    I10_DX27                   316- 322   ///
      str    I10_DX28                   323- 329   ///
      str    I10_DX29                   330- 336   ///
      str    I10_DX30                   337- 343   ///
      str    I10_DX31                   344- 350   ///
      str    I10_DX32                   351- 357   ///
      str    I10_DX33                   358- 364   ///
      str    I10_DX34                   365- 371   ///
      str    I10_DX35                   372- 378   ///
      str    I10_DX36                   379- 385   ///
      str    I10_DX37                   386- 392   ///
      str    I10_DX38                   393- 399   ///
      str    I10_DX39                   400- 406   ///
      str    I10_DX40                   407- 413   ///
      str    I10_DX41                   414- 420   ///
      str    I10_DX42                   421- 427   ///
      str    I10_DX43                   428- 434   ///
      str    I10_DX44                   435- 441   ///
      str    I10_DX45                   442- 448   ///
      str    I10_DX46                   449- 455   ///
      str    I10_DX47                   456- 462   ///
      str    I10_DX48                   463- 469   ///
      str    I10_DX49                   470- 476   ///
      str    I10_DX50                   477- 483   ///
      str    I10_DX51                   484- 490   ///
      str    I10_DX52                   491- 497   ///
      str    I10_DX53                   498- 504   ///
      str    I10_DX54                   505- 511   ///
      str    I10_DX55                   512- 518   ///
      str    I10_DX56                   519- 525   ///
      str    I10_DX57                   526- 532   ///
      str    I10_DX58                   533- 539   ///
      str    I10_DX59                   540- 546   ///
      str    I10_DX60                   547- 553   ///
      str    I10_DX61                   554- 560   ///
      str    I10_DX62                   561- 567   ///
      str    I10_DX63                   568- 574   ///
      str    I10_DX64                   575- 581   ///
      str    I10_DX65                   582- 588   ///
      str    I10_DX66                   589- 595   ///
      int    I10_NDX                    596- 598   ///
      int    I10_NPR                    599- 601   ///
      str    I10_PR1                    602- 608   ///
      str    I10_PR2                    609- 615   ///
      str    I10_PR3                    616- 622   ///
      str    I10_PR4                    623- 629   ///
      str    I10_PR5                    630- 636   ///
      str    I10_PR6                    637- 643   ///
      str    I10_PR7                    644- 650   ///
      str    I10_PR8                    651- 657   ///
      str    I10_PR9                    658- 664   ///
      str    I10_PR10                   665- 671   ///
      str    I10_PR11                   672- 678   ///
      str    I10_PR12                   679- 685   ///
      str    I10_PR13                   686- 692   ///
      str    I10_PR14                   693- 699   ///
      str    I10_PR15                   700- 706   ///
      str    I10_PR16                   707- 713   ///
      str    I10_PR17                   714- 720   ///
      str    I10_PR18                   721- 727   ///
      str    I10_PR19                   728- 734   ///
      str    I10_PR20                   735- 741   ///
      str    I10_PR21                   742- 748   ///
      str    I10_PR22                   749- 755   ///
      str    I10_PR23                   756- 762   ///
      str    I10_PR24                   763- 769   ///
      str    I10_PR25                   770- 776   ///
      str    I10_PR26                   777- 783   ///
      str    I10_PR27                   784- 790   ///
      str    I10_PR28                   791- 797   ///
      str    I10_PR29                   798- 804   ///
      str    I10_PR30                   805- 811   ///
      str    I10_PR31                   812- 818   ///
      int    I10_PROCTYPE               819- 821   ///
      byte   I10_SERVICELINE            822- 823   ///
      double KEY                        824- 838   ///
      long   LOS                        839- 843   ///
      long   LOS_X                      844- 849   ///
      byte   MDC                        850- 851   ///
      byte   MDC_NoPOA                  852- 853   ///
      long   MDNUM1_R                   854- 862   ///
      long   MDNUM2_R                   863- 871   ///
      byte   MEDINCSTQ                  872- 873   ///
      long   MRN_R                      874- 882   ///
      str    P7EDSRC_X                  883- 884   ///
      byte   PAY1                       885- 886   ///
      byte   PCLASS_ORPROC              887- 888   ///
      int    PL_CBSA                    889- 891   ///
      byte   PL_NCHS                    892- 893   ///
      byte   PL_RUCC                    894- 895   ///
      byte   PL_UIC                     896- 897   ///
      byte   PL_UR_CAT4                 898- 899   ///
      byte   POA_Disch_Edit1            900- 901   ///
      byte   POA_Disch_Edit2            902- 903   ///
      byte   POA_Hosp_Edit1             904- 905   ///
      byte   POA_Hosp_Edit2             906- 907   ///
      byte   POA_Hosp_Edit3             908- 909   ///
      double POA_Hosp_Edit3_Value       910- 917   ///
      str    PointOfOrigin_X            918        ///
      str    PointOfOriginUB04          919        ///
      long   PRDAY1                     920- 924   ///
      long   PRDAY2                     925- 929   ///
      long   PRDAY3                     930- 934   ///
      long   PRDAY4                     935- 939   ///
      long   PRDAY5                     940- 944   ///
      long   PRDAY6                     945- 949   ///
      long   PRDAY7                     950- 954   ///
      long   PRDAY8                     955- 959   ///
      long   PRDAY9                     960- 964   ///
      long   PRDAY10                    965- 969   ///
      long   PRDAY11                    970- 974   ///
      long   PRDAY12                    975- 979   ///
      long   PRDAY13                    980- 984   ///
      long   PRDAY14                    985- 989   ///
      long   PRDAY15                    990- 994   ///
      long   PRDAY16                    995- 999   ///
      long   PRDAY17                   1000-1004   ///
      long   PRDAY18                   1005-1009   ///
      long   PRDAY19                   1010-1014   ///
      long   PRDAY20                   1015-1019   ///
      long   PRDAY21                   1020-1024   ///
      long   PRDAY22                   1025-1029   ///
      long   PRDAY23                   1030-1034   ///
      long   PRDAY24                   1035-1039   ///
      long   PRDAY25                   1040-1044   ///
      long   PRDAY26                   1045-1049   ///
      long   PRDAY27                   1050-1054   ///
      long   PRDAY28                   1055-1059   ///
      long   PRDAY29                   1060-1064   ///
      long   PRDAY30                   1065-1069   ///
      long   PRDAY31                   1070-1074   ///
      str    PSTATE                    1075-1076   ///
      str    PSTATE_GEO                1077-1078   ///
      long   PSTCO                     1079-1083   ///
      long   PSTCO_GEO                 1084-1088   ///
      byte   RACE                      1089-1090   ///
      float  RACE_PCT_MISS_HOSP        1091-1097   ///
      str    RACE_X                    1098        ///
      double TOTCHG                    1099-1108   ///
      double TOTCHG_X                  1109-1123   ///
      byte   TRAN_IN                   1124-1125   ///
      byte   TRAN_OUT                  1126-1127   ///
      int    YEAR                      1128-1131   ///
      str    ZIP                       1132-1136   ///
      str    ZIP3                      1137-1139   ///
      int    ZIPINC_QRTL               1140-1142   ///
      long   HOSPID                    1143-1147   ///
      int    AYEAR                     1148-1151   ///
      byte   BMONTH                    1152-1153   ///
      int    BYEAR                     1154-1157   ///
      byte   PRMONTH1                  1158-1159   ///
      byte   PRMONTH2                  1160-1161   ///
      byte   PRMONTH3                  1162-1163   ///
      byte   PRMONTH4                  1164-1165   ///
      byte   PRMONTH5                  1166-1167   ///
      byte   PRMONTH6                  1168-1169   ///
      byte   PRMONTH7                  1170-1171   ///
      byte   PRMONTH8                  1172-1173   ///
      byte   PRMONTH9                  1174-1175   ///
      byte   PRMONTH10                 1176-1177   ///
      byte   PRMONTH11                 1178-1179   ///
      byte   PRMONTH12                 1180-1181   ///
      byte   PRMONTH13                 1182-1183   ///
      byte   PRMONTH14                 1184-1185   ///
      byte   PRMONTH15                 1186-1187   ///
      byte   PRMONTH16                 1188-1189   ///
      byte   PRMONTH17                 1190-1191   ///
      byte   PRMONTH18                 1192-1193   ///
      byte   PRMONTH19                 1194-1195   ///
      byte   PRMONTH20                 1196-1197   ///
      byte   PRMONTH21                 1198-1199   ///
      byte   PRMONTH22                 1200-1201   ///
      byte   PRMONTH23                 1202-1203   ///
      byte   PRMONTH24                 1204-1205   ///
      byte   PRMONTH25                 1206-1207   ///
      byte   PRMONTH26                 1208-1209   ///
      byte   PRMONTH27                 1210-1211   ///
      byte   PRMONTH28                 1212-1213   ///
      byte   PRMONTH29                 1214-1215   ///
      byte   PRMONTH30                 1216-1217   ///
      byte   PRMONTH31                 1218-1219   ///
      int    PRYEAR1                   1220-1223   ///
      int    PRYEAR2                   1224-1227   ///
      int    PRYEAR3                   1228-1231   ///
      int    PRYEAR4                   1232-1235   ///
      int    PRYEAR5                   1236-1239   ///
      int    PRYEAR6                   1240-1243   ///
      int    PRYEAR7                   1244-1247   ///
      int    PRYEAR8                   1248-1251   ///
      int    PRYEAR9                   1252-1255   ///
      int    PRYEAR10                  1256-1259   ///
      int    PRYEAR11                  1260-1263   ///
      int    PRYEAR12                  1264-1267   ///
      int    PRYEAR13                  1268-1271   ///
      int    PRYEAR14                  1272-1275   ///
      int    PRYEAR15                  1276-1279   ///
      int    PRYEAR16                  1280-1283   ///
      int    PRYEAR17                  1284-1287   ///
      int    PRYEAR18                  1288-1291   ///
      int    PRYEAR19                  1292-1295   ///
      int    PRYEAR20                  1296-1299   ///
      int    PRYEAR21                  1300-1303   ///
      int    PRYEAR22                  1304-1307   ///
      int    PRYEAR23                  1308-1311   ///
      int    PRYEAR24                  1312-1315   ///
      int    PRYEAR25                  1316-1319   ///
      int    PRYEAR26                  1320-1323   ///
      int    PRYEAR27                  1324-1327   ///
      int    PRYEAR28                  1328-1331   ///
      int    PRYEAR29                  1332-1335   ///
      int    PRYEAR30                  1336-1339   ///
      int    PRYEAR31                  1340-1343   ///
      using  "SD_SID_2020_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
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
label var DXPOA57                  "Diagnosis 57, present on admission indicator"
label var DXPOA58                  "Diagnosis 58, present on admission indicator"
label var DXPOA59                  "Diagnosis 59, present on admission indicator"
label var DXPOA60                  "Diagnosis 60, present on admission indicator"
label var DXPOA61                  "Diagnosis 61, present on admission indicator"
label var DXPOA62                  "Diagnosis 62, present on admission indicator"
label var DXPOA63                  "Diagnosis 63, present on admission indicator"
label var DXPOA64                  "Diagnosis 64, present on admission indicator"
label var DXPOA65                  "Diagnosis 65, present on admission indicator"
label var DXPOA66                  "Diagnosis 66, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HospitalUnit             "Patient was discharged from a special unit within an acute care hospital (reported by source)"
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
label var I10_DX57                 "ICD-10-CM Diagnosis 57"
label var I10_DX58                 "ICD-10-CM Diagnosis 58"
label var I10_DX59                 "ICD-10-CM Diagnosis 59"
label var I10_DX60                 "ICD-10-CM Diagnosis 60"
label var I10_DX61                 "ICD-10-CM Diagnosis 61"
label var I10_DX62                 "ICD-10-CM Diagnosis 62"
label var I10_DX63                 "ICD-10-CM Diagnosis 63"
label var I10_DX64                 "ICD-10-CM Diagnosis 64"
label var I10_DX65                 "ICD-10-CM Diagnosis 65"
label var I10_DX66                 "ICD-10-CM Diagnosis 66"
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
label var I10_PR31                 "ICD-10-PCS Procedure 31"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
label var PAY1                     "Primary expected payer (uniform)"
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
label var PRDAY31                  "Number of days from admission to I10_PR31"
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO                    "Patient state/county FIPS code"
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
label var PRMONTH26                "Month of procedure 26"
label var PRMONTH27                "Month of procedure 27"
label var PRMONTH28                "Month of procedure 28"
label var PRMONTH29                "Month of procedure 29"
label var PRMONTH30                "Month of procedure 30"
label var PRMONTH31                "Month of procedure 31"
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
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
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
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode PAY1                      (-9 -8 -6 -5=.)
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
recode PRDAY31                   (-9999 -8888 -6666=.)
recode PSTCO                     (-9999 -8888 -6666=.)
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
recode PRMONTH31                 (-9 -8 -6 -5=.)
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

save "SD_SID_2020_CORE.dta", replace
