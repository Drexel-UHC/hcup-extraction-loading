/*****************************************************************************
* Creation Date: 07/20/2017   
* MI_SID_2015q4_CORE.Do
* This program will load the 2015 MI ASCII CORE File into Stata.
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
      str    DISP_X                      18-  19   ///
      byte   DISPUB04                    20-  21   ///
      byte   DISPUNIFORM                 22-  23   ///
      byte   DMONTH                      24-  25   ///
      byte   DQTR                        26-  27   ///
      int    DRG                         28-  30   ///
      int    DRG_NoPOA                   31-  33   ///
      int    DRG32                       34-  36   ///
      byte   DRGVER                      37-  38   ///
      str    DXPOA1                      39        ///
      str    DXPOA2                      40        ///
      str    DXPOA3                      41        ///
      str    DXPOA4                      42        ///
      str    DXPOA5                      43        ///
      str    DXPOA6                      44        ///
      str    DXPOA7                      45        ///
      str    DXPOA8                      46        ///
      str    DXPOA9                      47        ///
      str    DXPOA10                     48        ///
      str    DXPOA11                     49        ///
      str    DXPOA12                     50        ///
      str    DXPOA13                     51        ///
      str    DXPOA14                     52        ///
      str    DXPOA15                     53        ///
      str    DXPOA16                     54        ///
      str    DXPOA17                     55        ///
      str    DXPOA18                     56        ///
      str    DXPOA19                     57        ///
      str    DXPOA20                     58        ///
      str    DXPOA21                     59        ///
      str    DXPOA22                     60        ///
      str    DXPOA23                     61        ///
      str    DXPOA24                     62        ///
      str    DXPOA25                     63        ///
      str    DXPOA26                     64        ///
      str    DXPOA27                     65        ///
      str    DXPOA28                     66        ///
      str    DXPOA29                     67        ///
      str    DXPOA30                     68        ///
      int    DXVER                       69-  71   ///
      str    E_POA1                      72        ///
      str    E_POA2                      73        ///
      str    E_POA3                      74        ///
      str    E_POA4                      75        ///
      str    E_POA5                      76        ///
      str    E_POA6                      77        ///
      str    E_POA7                      78        ///
      str    E_POA8                      79        ///
      str    E_POA9                      80        ///
      str    E_POA10                     81        ///
      byte   FEMALE                      82-  83   ///
      byte   HCUP_ED                     84-  85   ///
      byte   HCUP_OS                     86-  87   ///
      byte   HISPANIC                    88-  89   ///
      str    HISPANIC_X                  90        ///
      str    HOSPST                      91-  92   ///
      str    I10_DX_Admitting            93-  99   ///
      str    I10_DX1                    100- 106   ///
      str    I10_DX2                    107- 113   ///
      str    I10_DX3                    114- 120   ///
      str    I10_DX4                    121- 127   ///
      str    I10_DX5                    128- 134   ///
      str    I10_DX6                    135- 141   ///
      str    I10_DX7                    142- 148   ///
      str    I10_DX8                    149- 155   ///
      str    I10_DX9                    156- 162   ///
      str    I10_DX10                   163- 169   ///
      str    I10_DX11                   170- 176   ///
      str    I10_DX12                   177- 183   ///
      str    I10_DX13                   184- 190   ///
      str    I10_DX14                   191- 197   ///
      str    I10_DX15                   198- 204   ///
      str    I10_DX16                   205- 211   ///
      str    I10_DX17                   212- 218   ///
      str    I10_DX18                   219- 225   ///
      str    I10_DX19                   226- 232   ///
      str    I10_DX20                   233- 239   ///
      str    I10_DX21                   240- 246   ///
      str    I10_DX22                   247- 253   ///
      str    I10_DX23                   254- 260   ///
      str    I10_DX24                   261- 267   ///
      str    I10_DX25                   268- 274   ///
      str    I10_DX26                   275- 281   ///
      str    I10_DX27                   282- 288   ///
      str    I10_DX28                   289- 295   ///
      str    I10_DX29                   296- 302   ///
      str    I10_DX30                   303- 309   ///
      int    I10_DXCCS1                 310- 313   ///
      int    I10_DXCCS2                 314- 317   ///
      int    I10_DXCCS3                 318- 321   ///
      int    I10_DXCCS4                 322- 325   ///
      int    I10_DXCCS5                 326- 329   ///
      int    I10_DXCCS6                 330- 333   ///
      int    I10_DXCCS7                 334- 337   ///
      int    I10_DXCCS8                 338- 341   ///
      int    I10_DXCCS9                 342- 345   ///
      int    I10_DXCCS10                346- 349   ///
      int    I10_DXCCS11                350- 353   ///
      int    I10_DXCCS12                354- 357   ///
      int    I10_DXCCS13                358- 361   ///
      int    I10_DXCCS14                362- 365   ///
      int    I10_DXCCS15                366- 369   ///
      int    I10_DXCCS16                370- 373   ///
      int    I10_DXCCS17                374- 377   ///
      int    I10_DXCCS18                378- 381   ///
      int    I10_DXCCS19                382- 385   ///
      int    I10_DXCCS20                386- 389   ///
      int    I10_DXCCS21                390- 393   ///
      int    I10_DXCCS22                394- 397   ///
      int    I10_DXCCS23                398- 401   ///
      int    I10_DXCCS24                402- 405   ///
      int    I10_DXCCS25                406- 409   ///
      int    I10_DXCCS26                410- 413   ///
      int    I10_DXCCS27                414- 417   ///
      int    I10_DXCCS28                418- 421   ///
      int    I10_DXCCS29                422- 425   ///
      int    I10_DXCCS30                426- 429   ///
      str    I10_ECAUSE1                430- 436   ///
      str    I10_ECAUSE2                437- 443   ///
      str    I10_ECAUSE3                444- 450   ///
      str    I10_ECAUSE4                451- 457   ///
      str    I10_ECAUSE5                458- 464   ///
      str    I10_ECAUSE6                465- 471   ///
      str    I10_ECAUSE7                472- 478   ///
      str    I10_ECAUSE8                479- 485   ///
      str    I10_ECAUSE9                486- 492   ///
      str    I10_ECAUSE10               493- 499   ///
      int    I10_ECauseCCS1             500- 503   ///
      int    I10_ECauseCCS2             504- 507   ///
      int    I10_ECauseCCS3             508- 511   ///
      int    I10_ECauseCCS4             512- 515   ///
      int    I10_ECauseCCS5             516- 519   ///
      int    I10_ECauseCCS6             520- 523   ///
      int    I10_ECauseCCS7             524- 527   ///
      int    I10_ECauseCCS8             528- 531   ///
      int    I10_ECauseCCS9             532- 535   ///
      int    I10_ECauseCCS10            536- 539   ///
      int    I10_HOSPBRTH               540- 542   ///
      int    I10_NCHRONIC               543- 545   ///
      int    I10_NDX                    546- 548   ///
      byte   I10_NECAUSE                549- 550   ///
      byte   I10_NEOMAT                 551- 552   ///
      int    I10_NPR                    553- 555   ///
      byte   I10_ORPROC                 556- 557   ///
      str    I10_PR1                    558- 564   ///
      str    I10_PR2                    565- 571   ///
      str    I10_PR3                    572- 578   ///
      str    I10_PR4                    579- 585   ///
      str    I10_PR5                    586- 592   ///
      str    I10_PR6                    593- 599   ///
      str    I10_PR7                    600- 606   ///
      str    I10_PR8                    607- 613   ///
      str    I10_PR9                    614- 620   ///
      str    I10_PR10                   621- 627   ///
      str    I10_PR11                   628- 634   ///
      str    I10_PR12                   635- 641   ///
      str    I10_PR13                   642- 648   ///
      str    I10_PR14                   649- 655   ///
      str    I10_PR15                   656- 662   ///
      str    I10_PR16                   663- 669   ///
      str    I10_PR17                   670- 676   ///
      str    I10_PR18                   677- 683   ///
      str    I10_PR19                   684- 690   ///
      str    I10_PR20                   691- 697   ///
      str    I10_PR21                   698- 704   ///
      str    I10_PR22                   705- 711   ///
      str    I10_PR23                   712- 718   ///
      str    I10_PR24                   719- 725   ///
      str    I10_PR25                   726- 732   ///
      str    I10_PR26                   733- 739   ///
      str    I10_PR27                   740- 746   ///
      str    I10_PR28                   747- 753   ///
      str    I10_PR29                   754- 760   ///
      str    I10_PR30                   761- 767   ///
      int    I10_PRCCS1                 768- 770   ///
      int    I10_PRCCS2                 771- 773   ///
      int    I10_PRCCS3                 774- 776   ///
      int    I10_PRCCS4                 777- 779   ///
      int    I10_PRCCS5                 780- 782   ///
      int    I10_PRCCS6                 783- 785   ///
      int    I10_PRCCS7                 786- 788   ///
      int    I10_PRCCS8                 789- 791   ///
      int    I10_PRCCS9                 792- 794   ///
      int    I10_PRCCS10                795- 797   ///
      int    I10_PRCCS11                798- 800   ///
      int    I10_PRCCS12                801- 803   ///
      int    I10_PRCCS13                804- 806   ///
      int    I10_PRCCS14                807- 809   ///
      int    I10_PRCCS15                810- 812   ///
      int    I10_PRCCS16                813- 815   ///
      int    I10_PRCCS17                816- 818   ///
      int    I10_PRCCS18                819- 821   ///
      int    I10_PRCCS19                822- 824   ///
      int    I10_PRCCS20                825- 827   ///
      int    I10_PRCCS21                828- 830   ///
      int    I10_PRCCS22                831- 833   ///
      int    I10_PRCCS23                834- 836   ///
      int    I10_PRCCS24                837- 839   ///
      int    I10_PRCCS25                840- 842   ///
      int    I10_PRCCS26                843- 845   ///
      int    I10_PRCCS27                846- 848   ///
      int    I10_PRCCS28                849- 851   ///
      int    I10_PRCCS29                852- 854   ///
      int    I10_PRCCS30                855- 857   ///
      int    I10_PROCTYPE               858- 860   ///
      byte   I10_SERVICELINE            861- 862   ///
      double KEY                        863- 877   ///
      long   LOS                        878- 882   ///
      long   LOS_X                      883- 888   ///
      byte   MDC                        889- 890   ///
      byte   MDC_NoPOA                  891- 892   ///
      byte   MDC32                      893- 894   ///
      long   MDNUM1_R                   895- 903   ///
      byte   MEDINCSTQ                  904- 905   ///
      long   MOMNUM_R                   906- 914   ///
      long   MRN_R                      915- 923   ///
      byte   PAY1                       924- 925   ///
      str    PAY1_X                     926- 927   ///
      byte   PAY2                       928- 929   ///
      str    PAY2_X                     930- 931   ///
      int    PL_CBSA                    932- 934   ///
      byte   PL_NCHS                    935- 936   ///
      byte   PL_RUCC                    937- 938   ///
      byte   PL_UIC                     939- 940   ///
      byte   PL_UR_CAT4                 941- 942   ///
      byte   POA_Disch_Edit1            943- 944   ///
      byte   POA_Disch_Edit2            945- 946   ///
      byte   POA_Hosp_Edit1             947- 948   ///
      byte   POA_Hosp_Edit2             949- 950   ///
      byte   POA_Hosp_Edit3             951- 952   ///
      double POA_Hosp_Edit3_Value       953- 960   ///
      str    PointOfOrigin_X            961        ///
      str    PointOfOriginUB04          962        ///
      long   PRDAY1                     963- 967   ///
      long   PRDAY2                     968- 972   ///
      long   PRDAY3                     973- 977   ///
      long   PRDAY4                     978- 982   ///
      long   PRDAY5                     983- 987   ///
      long   PRDAY6                     988- 992   ///
      long   PRDAY7                     993- 997   ///
      long   PRDAY8                     998-1002   ///
      long   PRDAY9                    1003-1007   ///
      long   PRDAY10                   1008-1012   ///
      long   PRDAY11                   1013-1017   ///
      long   PRDAY12                   1018-1022   ///
      long   PRDAY13                   1023-1027   ///
      long   PRDAY14                   1028-1032   ///
      long   PRDAY15                   1033-1037   ///
      long   PRDAY16                   1038-1042   ///
      long   PRDAY17                   1043-1047   ///
      long   PRDAY18                   1048-1052   ///
      long   PRDAY19                   1053-1057   ///
      long   PRDAY20                   1058-1062   ///
      long   PRDAY21                   1063-1067   ///
      long   PRDAY22                   1068-1072   ///
      long   PRDAY23                   1073-1077   ///
      long   PRDAY24                   1078-1082   ///
      long   PRDAY25                   1083-1087   ///
      long   PRDAY26                   1088-1092   ///
      long   PRDAY27                   1093-1097   ///
      long   PRDAY28                   1098-1102   ///
      long   PRDAY29                   1103-1107   ///
      long   PRDAY30                   1108-1112   ///
      int    PRVER                     1113-1115   ///
      str    PSTATE                    1116-1117   ///
      long   PSTCO2                    1118-1122   ///
      byte   RACE                      1123-1124   ///
      str    RACE_X                    1125        ///
      double TOTCHG                    1126-1135   ///
      double TOTCHG_X                  1136-1150   ///
      byte   TRAN_IN                   1151-1152   ///
      byte   TRAN_OUT                  1153-1154   ///
      int    YEAR                      1155-1158   ///
      str    ZIP                       1159-1163   ///
      str    ZIP3                      1164-1166   ///
      int    ZIPINC_QRTL               1167-1169   ///
      long   HOSPID                    1170-1174   ///
      int    AYEAR                     1175-1178   ///
      byte   BMONTH                    1179-1180   ///
      int    BYEAR                     1181-1184   ///
      byte   PRMONTH1                  1185-1186   ///
      byte   PRMONTH2                  1187-1188   ///
      byte   PRMONTH3                  1189-1190   ///
      byte   PRMONTH4                  1191-1192   ///
      byte   PRMONTH5                  1193-1194   ///
      byte   PRMONTH6                  1195-1196   ///
      byte   PRMONTH7                  1197-1198   ///
      byte   PRMONTH8                  1199-1200   ///
      byte   PRMONTH9                  1201-1202   ///
      byte   PRMONTH10                 1203-1204   ///
      byte   PRMONTH11                 1205-1206   ///
      byte   PRMONTH12                 1207-1208   ///
      byte   PRMONTH13                 1209-1210   ///
      byte   PRMONTH14                 1211-1212   ///
      byte   PRMONTH15                 1213-1214   ///
      byte   PRMONTH16                 1215-1216   ///
      byte   PRMONTH17                 1217-1218   ///
      byte   PRMONTH18                 1219-1220   ///
      byte   PRMONTH19                 1221-1222   ///
      byte   PRMONTH20                 1223-1224   ///
      byte   PRMONTH21                 1225-1226   ///
      byte   PRMONTH22                 1227-1228   ///
      byte   PRMONTH23                 1229-1230   ///
      byte   PRMONTH24                 1231-1232   ///
      byte   PRMONTH25                 1233-1234   ///
      byte   PRMONTH26                 1235-1236   ///
      byte   PRMONTH27                 1237-1238   ///
      byte   PRMONTH28                 1239-1240   ///
      byte   PRMONTH29                 1241-1242   ///
      byte   PRMONTH30                 1243-1244   ///
      int    PRYEAR1                   1245-1248   ///
      int    PRYEAR2                   1249-1252   ///
      int    PRYEAR3                   1253-1256   ///
      int    PRYEAR4                   1257-1260   ///
      int    PRYEAR5                   1261-1264   ///
      int    PRYEAR6                   1265-1268   ///
      int    PRYEAR7                   1269-1272   ///
      int    PRYEAR8                   1273-1276   ///
      int    PRYEAR9                   1277-1280   ///
      int    PRYEAR10                  1281-1284   ///
      int    PRYEAR11                  1285-1288   ///
      int    PRYEAR12                  1289-1292   ///
      int    PRYEAR13                  1293-1296   ///
      int    PRYEAR14                  1297-1300   ///
      int    PRYEAR15                  1301-1304   ///
      int    PRYEAR16                  1305-1308   ///
      int    PRYEAR17                  1309-1312   ///
      int    PRYEAR18                  1313-1316   ///
      int    PRYEAR19                  1317-1320   ///
      int    PRYEAR20                  1321-1324   ///
      int    PRYEAR21                  1325-1328   ///
      int    PRYEAR22                  1329-1332   ///
      int    PRYEAR23                  1333-1336   ///
      int    PRYEAR24                  1337-1340   ///
      int    PRYEAR25                  1341-1344   ///
      int    PRYEAR26                  1345-1348   ///
      int    PRYEAR27                  1349-1352   ///
      int    PRYEAR28                  1353-1356   ///
      int    PRYEAR29                  1357-1360   ///
      int    PRYEAR30                  1361-1364   ///
      using  "MI_SID_2015q4_CORE.ASC"

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
label var DXPOA26                  "Diagnosis 26, present on admission indicator"
label var DXPOA27                  "Diagnosis 27, present on admission indicator"
label var DXPOA28                  "Diagnosis 28, present on admission indicator"
label var DXPOA29                  "Diagnosis 29, present on admission indicator"
label var DXPOA30                  "Diagnosis 30, present on admission indicator"
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
label var E_POA10                  "E Cause 10, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
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
label var I10_ECAUSE1              "ICD-10-CM E Cause 1"
label var I10_ECAUSE2              "ICD-10-CM E Cause 2"
label var I10_ECAUSE3              "ICD-10-CM E Cause 3"
label var I10_ECAUSE4              "ICD-10-CM E Cause 4"
label var I10_ECAUSE5              "ICD-10-CM E Cause 5"
label var I10_ECAUSE6              "ICD-10-CM E Cause 6"
label var I10_ECAUSE7              "ICD-10-CM E Cause 7"
label var I10_ECAUSE8              "ICD-10-CM E Cause 8"
label var I10_ECAUSE9              "ICD-10-CM E Cause 9"
label var I10_ECAUSE10             "ICD-10-CM E Cause 10"
label var I10_ECauseCCS1           "ICD-10-CM CCS: E Cause 1"
label var I10_ECauseCCS2           "ICD-10-CM CCS: E Cause 2"
label var I10_ECauseCCS3           "ICD-10-CM CCS: E Cause 3"
label var I10_ECauseCCS4           "ICD-10-CM CCS: E Cause 4"
label var I10_ECauseCCS5           "ICD-10-CM CCS: E Cause 5"
label var I10_ECauseCCS6           "ICD-10-CM CCS: E Cause 6"
label var I10_ECauseCCS7           "ICD-10-CM CCS: E Cause 7"
label var I10_ECauseCCS8           "ICD-10-CM CCS: E Cause 8"
label var I10_ECauseCCS9           "ICD-10-CM CCS: E Cause 9"
label var I10_ECauseCCS10          "ICD-10-CM CCS: E Cause 10"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDC32                    "MDC, version 32"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MOMNUM_R                 "Mother's number (re-identified)"
label var MRN_R                    "Medical record number (re-identified)"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
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
recode I10_ECauseCCS1            (-999 -888 -666=.)
recode I10_ECauseCCS2            (-999 -888 -666=.)
recode I10_ECauseCCS3            (-999 -888 -666=.)
recode I10_ECauseCCS4            (-999 -888 -666=.)
recode I10_ECauseCCS5            (-999 -888 -666=.)
recode I10_ECauseCCS6            (-999 -888 -666=.)
recode I10_ECauseCCS7            (-999 -888 -666=.)
recode I10_ECauseCCS8            (-999 -888 -666=.)
recode I10_ECauseCCS9            (-999 -888 -666=.)
recode I10_ECauseCCS10           (-999 -888 -666=.)
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
recode I10_PROCTYPE              (-99 -88 -66=.)
recode I10_SERVICELINE           (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDC32                     (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MOMNUM_R                  (-99999999 -88888888 -66666666=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
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

save "MI_SID_2015q4_CORE.dta", replace
