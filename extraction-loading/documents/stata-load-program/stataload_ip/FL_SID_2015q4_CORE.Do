/*****************************************************************************
* Creation Date: 03/27/2017   
* FL_SID_2015q4_CORE.Do
* This program will load the 2015 FL ASCII CORE File into Stata.
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
      int    AHOUR                        4-   7   ///
      byte   ATYPE                        8-   9   ///
      byte   AWEEKEND                    10-  11   ///
      long   DaysToEvent                 12-  17   ///
      int    DHOUR                       18-  21   ///
      byte   DIED                        22-  23   ///
      str    DISP_X                      24-  25   ///
      byte   DISPUB04                    26-  27   ///
      byte   DISPUNIFORM                 28-  29   ///
      byte   DQTR                        30-  31   ///
      int    DRG                         32-  34   ///
      int    DRG_NoPOA                   35-  37   ///
      int    DRG32                       38-  40   ///
      byte   DRGVER                      41-  42   ///
      str    DSHOSPID                    43-  59   ///
      str    DXPOA1                      60        ///
      str    DXPOA2                      61        ///
      str    DXPOA3                      62        ///
      str    DXPOA4                      63        ///
      str    DXPOA5                      64        ///
      str    DXPOA6                      65        ///
      str    DXPOA7                      66        ///
      str    DXPOA8                      67        ///
      str    DXPOA9                      68        ///
      str    DXPOA10                     69        ///
      str    DXPOA11                     70        ///
      str    DXPOA12                     71        ///
      str    DXPOA13                     72        ///
      str    DXPOA14                     73        ///
      str    DXPOA15                     74        ///
      str    DXPOA16                     75        ///
      str    DXPOA17                     76        ///
      str    DXPOA18                     77        ///
      str    DXPOA19                     78        ///
      str    DXPOA20                     79        ///
      str    DXPOA21                     80        ///
      str    DXPOA22                     81        ///
      str    DXPOA23                     82        ///
      str    DXPOA24                     83        ///
      str    DXPOA25                     84        ///
      str    DXPOA26                     85        ///
      str    DXPOA27                     86        ///
      str    DXPOA28                     87        ///
      str    DXPOA29                     88        ///
      str    DXPOA30                     89        ///
      str    DXPOA31                     90        ///
      int    DXVER                       91-  93   ///
      str    E_POA1                      94        ///
      str    E_POA2                      95        ///
      str    E_POA3                      96        ///
      str    E_POA4                      97        ///
      str    E_POA5                      98        ///
      str    E_POA6                      99        ///
      int    EDHOUR                     100- 103   ///
      byte   FEMALE                     104- 105   ///
      byte   HCUP_ED                    106- 107   ///
      byte   HCUP_OS                    108- 109   ///
      byte   HISPANIC                   110- 111   ///
      str    HISPANIC_X                 112- 113   ///
      byte   Homeless                   114- 115   ///
      byte   HospitalUnit               116- 117   ///
      str    HOSPST                     118- 119   ///
      str    I10_DX_Admitting           120- 126   ///
      str    I10_DX1                    127- 133   ///
      str    I10_DX2                    134- 140   ///
      str    I10_DX3                    141- 147   ///
      str    I10_DX4                    148- 154   ///
      str    I10_DX5                    155- 161   ///
      str    I10_DX6                    162- 168   ///
      str    I10_DX7                    169- 175   ///
      str    I10_DX8                    176- 182   ///
      str    I10_DX9                    183- 189   ///
      str    I10_DX10                   190- 196   ///
      str    I10_DX11                   197- 203   ///
      str    I10_DX12                   204- 210   ///
      str    I10_DX13                   211- 217   ///
      str    I10_DX14                   218- 224   ///
      str    I10_DX15                   225- 231   ///
      str    I10_DX16                   232- 238   ///
      str    I10_DX17                   239- 245   ///
      str    I10_DX18                   246- 252   ///
      str    I10_DX19                   253- 259   ///
      str    I10_DX20                   260- 266   ///
      str    I10_DX21                   267- 273   ///
      str    I10_DX22                   274- 280   ///
      str    I10_DX23                   281- 287   ///
      str    I10_DX24                   288- 294   ///
      str    I10_DX25                   295- 301   ///
      str    I10_DX26                   302- 308   ///
      str    I10_DX27                   309- 315   ///
      str    I10_DX28                   316- 322   ///
      str    I10_DX29                   323- 329   ///
      str    I10_DX30                   330- 336   ///
      str    I10_DX31                   337- 343   ///
      int    I10_DXCCS1                 344- 347   ///
      int    I10_DXCCS2                 348- 351   ///
      int    I10_DXCCS3                 352- 355   ///
      int    I10_DXCCS4                 356- 359   ///
      int    I10_DXCCS5                 360- 363   ///
      int    I10_DXCCS6                 364- 367   ///
      int    I10_DXCCS7                 368- 371   ///
      int    I10_DXCCS8                 372- 375   ///
      int    I10_DXCCS9                 376- 379   ///
      int    I10_DXCCS10                380- 383   ///
      int    I10_DXCCS11                384- 387   ///
      int    I10_DXCCS12                388- 391   ///
      int    I10_DXCCS13                392- 395   ///
      int    I10_DXCCS14                396- 399   ///
      int    I10_DXCCS15                400- 403   ///
      int    I10_DXCCS16                404- 407   ///
      int    I10_DXCCS17                408- 411   ///
      int    I10_DXCCS18                412- 415   ///
      int    I10_DXCCS19                416- 419   ///
      int    I10_DXCCS20                420- 423   ///
      int    I10_DXCCS21                424- 427   ///
      int    I10_DXCCS22                428- 431   ///
      int    I10_DXCCS23                432- 435   ///
      int    I10_DXCCS24                436- 439   ///
      int    I10_DXCCS25                440- 443   ///
      int    I10_DXCCS26                444- 447   ///
      int    I10_DXCCS27                448- 451   ///
      int    I10_DXCCS28                452- 455   ///
      int    I10_DXCCS29                456- 459   ///
      int    I10_DXCCS30                460- 463   ///
      int    I10_DXCCS31                464- 467   ///
      str    I10_ECAUSE1                468- 474   ///
      str    I10_ECAUSE2                475- 481   ///
      str    I10_ECAUSE3                482- 488   ///
      str    I10_ECAUSE4                489- 495   ///
      str    I10_ECAUSE5                496- 502   ///
      str    I10_ECAUSE6                503- 509   ///
      int    I10_ECauseCCS1             510- 513   ///
      int    I10_ECauseCCS2             514- 517   ///
      int    I10_ECauseCCS3             518- 521   ///
      int    I10_ECauseCCS4             522- 525   ///
      int    I10_ECauseCCS5             526- 529   ///
      int    I10_ECauseCCS6             530- 533   ///
      int    I10_HOSPBRTH               534- 536   ///
      int    I10_NCHRONIC               537- 539   ///
      int    I10_NDX                    540- 542   ///
      byte   I10_NECAUSE                543- 544   ///
      byte   I10_NEOMAT                 545- 546   ///
      int    I10_NPR                    547- 549   ///
      byte   I10_ORPROC                 550- 551   ///
      str    I10_PR1                    552- 558   ///
      str    I10_PR2                    559- 565   ///
      str    I10_PR3                    566- 572   ///
      str    I10_PR4                    573- 579   ///
      str    I10_PR5                    580- 586   ///
      str    I10_PR6                    587- 593   ///
      str    I10_PR7                    594- 600   ///
      str    I10_PR8                    601- 607   ///
      str    I10_PR9                    608- 614   ///
      str    I10_PR10                   615- 621   ///
      str    I10_PR11                   622- 628   ///
      str    I10_PR12                   629- 635   ///
      str    I10_PR13                   636- 642   ///
      str    I10_PR14                   643- 649   ///
      str    I10_PR15                   650- 656   ///
      str    I10_PR16                   657- 663   ///
      str    I10_PR17                   664- 670   ///
      str    I10_PR18                   671- 677   ///
      str    I10_PR19                   678- 684   ///
      str    I10_PR20                   685- 691   ///
      str    I10_PR21                   692- 698   ///
      str    I10_PR22                   699- 705   ///
      str    I10_PR23                   706- 712   ///
      str    I10_PR24                   713- 719   ///
      str    I10_PR25                   720- 726   ///
      str    I10_PR26                   727- 733   ///
      str    I10_PR27                   734- 740   ///
      str    I10_PR28                   741- 747   ///
      str    I10_PR29                   748- 754   ///
      str    I10_PR30                   755- 761   ///
      str    I10_PR31                   762- 768   ///
      int    I10_PRCCS1                 769- 771   ///
      int    I10_PRCCS2                 772- 774   ///
      int    I10_PRCCS3                 775- 777   ///
      int    I10_PRCCS4                 778- 780   ///
      int    I10_PRCCS5                 781- 783   ///
      int    I10_PRCCS6                 784- 786   ///
      int    I10_PRCCS7                 787- 789   ///
      int    I10_PRCCS8                 790- 792   ///
      int    I10_PRCCS9                 793- 795   ///
      int    I10_PRCCS10                796- 798   ///
      int    I10_PRCCS11                799- 801   ///
      int    I10_PRCCS12                802- 804   ///
      int    I10_PRCCS13                805- 807   ///
      int    I10_PRCCS14                808- 810   ///
      int    I10_PRCCS15                811- 813   ///
      int    I10_PRCCS16                814- 816   ///
      int    I10_PRCCS17                817- 819   ///
      int    I10_PRCCS18                820- 822   ///
      int    I10_PRCCS19                823- 825   ///
      int    I10_PRCCS20                826- 828   ///
      int    I10_PRCCS21                829- 831   ///
      int    I10_PRCCS22                832- 834   ///
      int    I10_PRCCS23                835- 837   ///
      int    I10_PRCCS24                838- 840   ///
      int    I10_PRCCS25                841- 843   ///
      int    I10_PRCCS26                844- 846   ///
      int    I10_PRCCS27                847- 849   ///
      int    I10_PRCCS28                850- 852   ///
      int    I10_PRCCS29                853- 855   ///
      int    I10_PRCCS30                856- 858   ///
      int    I10_PRCCS31                859- 861   ///
      int    I10_PROCTYPE               862- 864   ///
      byte   I10_SERVICELINE            865- 866   ///
      double KEY                        867- 881   ///
      long   LOS                        882- 886   ///
      long   LOS_X                      887- 892   ///
      byte   MDC                        893- 894   ///
      byte   MDC_NoPOA                  895- 896   ///
      byte   MDC32                      897- 898   ///
      long   MDNUM1_R                   899- 907   ///
      long   MDNUM2_R                   908- 916   ///
      long   MDNUM3_R                   917- 925   ///
      byte   MEDINCSTQ                  926- 927   ///
      str    P7EDSRC_X                  928- 929   ///
      byte   PAY1                       930- 931   ///
      str    PAY1_X                     932        ///
      int    PL_CBSA                    933- 935   ///
      byte   PL_NCHS                    936- 937   ///
      byte   PL_RUCC                    938- 939   ///
      byte   PL_UIC                     940- 941   ///
      byte   PL_UR_CAT4                 942- 943   ///
      byte   POA_Disch_Edit1            944- 945   ///
      byte   POA_Disch_Edit2            946- 947   ///
      byte   POA_Hosp_Edit1             948- 949   ///
      byte   POA_Hosp_Edit2             950- 951   ///
      byte   POA_Hosp_Edit3             952- 953   ///
      double POA_Hosp_Edit3_Value       954- 961   ///
      str    PointOfOrigin_X            962- 963   ///
      str    PointOfOriginUB04          964        ///
      long   PRDAY1                     965- 969   ///
      long   PRDAY2                     970- 974   ///
      long   PRDAY3                     975- 979   ///
      long   PRDAY4                     980- 984   ///
      long   PRDAY5                     985- 989   ///
      long   PRDAY6                     990- 994   ///
      long   PRDAY7                     995- 999   ///
      long   PRDAY8                    1000-1004   ///
      long   PRDAY9                    1005-1009   ///
      long   PRDAY10                   1010-1014   ///
      long   PRDAY11                   1015-1019   ///
      long   PRDAY12                   1020-1024   ///
      long   PRDAY13                   1025-1029   ///
      long   PRDAY14                   1030-1034   ///
      long   PRDAY15                   1035-1039   ///
      long   PRDAY16                   1040-1044   ///
      long   PRDAY17                   1045-1049   ///
      long   PRDAY18                   1050-1054   ///
      long   PRDAY19                   1055-1059   ///
      long   PRDAY20                   1060-1064   ///
      long   PRDAY21                   1065-1069   ///
      long   PRDAY22                   1070-1074   ///
      long   PRDAY23                   1075-1079   ///
      long   PRDAY24                   1080-1084   ///
      long   PRDAY25                   1085-1089   ///
      long   PRDAY26                   1090-1094   ///
      long   PRDAY27                   1095-1099   ///
      long   PRDAY28                   1100-1104   ///
      long   PRDAY29                   1105-1109   ///
      long   PRDAY30                   1110-1114   ///
      long   PRDAY31                   1115-1119   ///
      int    PRVER                     1120-1122   ///
      str    PSTATE                    1123-1124   ///
      long   PSTCO2                    1125-1129   ///
      byte   RACE                      1130-1131   ///
      str    RACE_X                    1132        ///
      double TOTCHG                    1133-1142   ///
      double TOTCHG_X                  1143-1157   ///
      byte   TRAN_IN                   1158-1159   ///
      byte   TRAN_OUT                  1160-1161   ///
      long   VisitLink                 1162-1170   ///
      int    YEAR                      1171-1174   ///
      str    ZIP                       1175-1179   ///
      str    ZIP3                      1180-1182   ///
      int    ZIPINC_QRTL               1183-1185   ///
      int    EDYEAR                    1186-1189   ///
      int    PRYEAR1                   1190-1193   ///
      int    PRYEAR2                   1194-1197   ///
      int    PRYEAR3                   1198-1201   ///
      int    PRYEAR4                   1202-1205   ///
      int    PRYEAR5                   1206-1209   ///
      int    PRYEAR6                   1210-1213   ///
      int    PRYEAR7                   1214-1217   ///
      int    PRYEAR8                   1218-1221   ///
      int    PRYEAR9                   1222-1225   ///
      int    PRYEAR10                  1226-1229   ///
      int    PRYEAR11                  1230-1233   ///
      int    PRYEAR12                  1234-1237   ///
      int    PRYEAR13                  1238-1241   ///
      int    PRYEAR14                  1242-1245   ///
      int    PRYEAR15                  1246-1249   ///
      int    PRYEAR16                  1250-1253   ///
      int    PRYEAR17                  1254-1257   ///
      int    PRYEAR18                  1258-1261   ///
      int    PRYEAR19                  1262-1265   ///
      int    PRYEAR20                  1266-1269   ///
      int    PRYEAR21                  1270-1273   ///
      int    PRYEAR22                  1274-1277   ///
      int    PRYEAR23                  1278-1281   ///
      int    PRYEAR24                  1282-1285   ///
      int    PRYEAR25                  1286-1289   ///
      int    PRYEAR26                  1290-1293   ///
      int    PRYEAR27                  1294-1297   ///
      int    PRYEAR28                  1298-1301   ///
      int    PRYEAR29                  1302-1305   ///
      int    PRYEAR30                  1306-1309   ///
      int    PRYEAR31                  1310-1313   ///
      using  "FL_SID_2015q4_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AHOUR                    "Admission Hour"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var DaysToEvent              "Days from 'start date' to admission"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
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
label var DXPOA26                  "Diagnosis 26, present on admission indicator"
label var DXPOA27                  "Diagnosis 27, present on admission indicator"
label var DXPOA28                  "Diagnosis 28, present on admission indicator"
label var DXPOA29                  "Diagnosis 29, present on admission indicator"
label var DXPOA30                  "Diagnosis 30, present on admission indicator"
label var DXPOA31                  "Diagnosis 31, present on admission indicator"
label var DXVER                    "Diagnosis Version"
label var E_POA1                   "E Cause 1, present on admission indicator"
label var E_POA2                   "E Cause 2, present on admission indicator"
label var E_POA3                   "E Cause 3, present on admission indicator"
label var E_POA4                   "E Cause 4, present on admission indicator"
label var E_POA5                   "E Cause 5, present on admission indicator"
label var E_POA6                   "E Cause 6, present on admission indicator"
label var EDHOUR                   "Emergency department time of arrival prior to inpatient admission"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
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
label var I10_DXCCS26              "ICD-10-CM CCS: diagnosis 26"
label var I10_DXCCS27              "ICD-10-CM CCS: diagnosis 27"
label var I10_DXCCS28              "ICD-10-CM CCS: diagnosis 28"
label var I10_DXCCS29              "ICD-10-CM CCS: diagnosis 29"
label var I10_DXCCS30              "ICD-10-CM CCS: diagnosis 30"
label var I10_DXCCS31              "ICD-10-CM CCS: diagnosis 31"
label var I10_ECAUSE1              "ICD-10-CM E Cause 1"
label var I10_ECAUSE2              "ICD-10-CM E Cause 2"
label var I10_ECAUSE3              "ICD-10-CM E Cause 3"
label var I10_ECAUSE4              "ICD-10-CM E Cause 4"
label var I10_ECAUSE5              "ICD-10-CM E Cause 5"
label var I10_ECAUSE6              "ICD-10-CM E Cause 6"
label var I10_ECauseCCS1           "ICD-10-CM CCS: E Cause 1"
label var I10_ECauseCCS2           "ICD-10-CM CCS: E Cause 2"
label var I10_ECauseCCS3           "ICD-10-CM CCS: E Cause 3"
label var I10_ECauseCCS4           "ICD-10-CM CCS: E Cause 4"
label var I10_ECauseCCS5           "ICD-10-CM CCS: E Cause 5"
label var I10_ECauseCCS6           "ICD-10-CM CCS: E Cause 6"
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
label var I10_PR26                 "ICD-10-PCS Procedure 26"
label var I10_PR27                 "ICD-10-PCS Procedure 27"
label var I10_PR28                 "ICD-10-PCS Procedure 28"
label var I10_PR29                 "ICD-10-PCS Procedure 29"
label var I10_PR30                 "ICD-10-PCS Procedure 30"
label var I10_PR31                 "ICD-10-PCS Procedure 31"
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
label var I10_PRCCS26              "ICD-10-PCS CCS: procedure 26"
label var I10_PRCCS27              "ICD-10-PCS CCS: procedure 27"
label var I10_PRCCS28              "ICD-10-PCS CCS: procedure 28"
label var I10_PRCCS29              "ICD-10-PCS CCS: procedure 29"
label var I10_PRCCS30              "ICD-10-PCS CCS: procedure 30"
label var I10_PRCCS31              "ICD-10-PCS CCS: procedure 31"
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
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
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
label var EDYEAR                   "Emergency Department arrival year"
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
recode AHOUR                     (-999 -888 -666=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRG32                     (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DXVER                     (-99 -88 -66=.)
recode EDHOUR                    (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
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
recode I10_DXCCS26               (-999 -888 -666=.)
recode I10_DXCCS27               (-999 -888 -666=.)
recode I10_DXCCS28               (-999 -888 -666=.)
recode I10_DXCCS29               (-999 -888 -666=.)
recode I10_DXCCS30               (-999 -888 -666=.)
recode I10_DXCCS31               (-999 -888 -666=.)
recode I10_ECauseCCS1            (-999 -888 -666=.)
recode I10_ECauseCCS2            (-999 -888 -666=.)
recode I10_ECauseCCS3            (-999 -888 -666=.)
recode I10_ECauseCCS4            (-999 -888 -666=.)
recode I10_ECauseCCS5            (-999 -888 -666=.)
recode I10_ECauseCCS6            (-999 -888 -666=.)
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
recode I10_PRCCS26               (-99 -88 -66=.)
recode I10_PRCCS27               (-99 -88 -66=.)
recode I10_PRCCS28               (-99 -88 -66=.)
recode I10_PRCCS29               (-99 -88 -66=.)
recode I10_PRCCS30               (-99 -88 -66=.)
recode I10_PRCCS31               (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode I10_SERVICELINE           (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDC32                     (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
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
recode PRDAY26                   (-9999 -8888 -6666=.)
recode PRDAY27                   (-9999 -8888 -6666=.)
recode PRDAY28                   (-9999 -8888 -6666=.)
recode PRDAY29                   (-9999 -8888 -6666=.)
recode PRDAY30                   (-9999 -8888 -6666=.)
recode PRDAY31                   (-9999 -8888 -6666=.)
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
recode EDYEAR                    (-999 -888 -666=.)
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

save "FL_SID_2015q4_CORE.dta", replace
