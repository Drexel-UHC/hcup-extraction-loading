/*****************************************************************************
* Creation Date: 07/16/2018   
* NY_SID_2015q4_CORE.Do
* This program will load the 2015 NY ASCII CORE File into Stata.
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
      int    ANESTH                      16-  18   ///
      byte   ATYPE                       19-  20   ///
      byte   AWEEKEND                    21-  22   ///
      str    BILLTYPE                    23-  26   ///
      long   BLOOD                       27-  32   ///
      int    BWT                         33-  36   ///
      long   DaysToEvent                 37-  42   ///
      int    DHOUR                       43-  46   ///
      byte   DIED                        47-  48   ///
      str    DISP_X                      49-  50   ///
      byte   DISPUB04                    51-  52   ///
      byte   DISPUNIFORM                 53-  54   ///
      byte   DMONTH                      55-  56   ///
      byte   DQTR                        57-  58   ///
      int    DRG                         59-  61   ///
      int    DRG_NoPOA                   62-  64   ///
      int    DRG32                       65-  67   ///
      byte   DRGVER                      68-  69   ///
      str    DSHOSPID                    70-  86   ///
      str    DXPOA1                      87        ///
      str    DXPOA2                      88        ///
      str    DXPOA3                      89        ///
      str    DXPOA4                      90        ///
      str    DXPOA5                      91        ///
      str    DXPOA6                      92        ///
      str    DXPOA7                      93        ///
      str    DXPOA8                      94        ///
      str    DXPOA9                      95        ///
      str    DXPOA10                     96        ///
      str    DXPOA11                     97        ///
      str    DXPOA12                     98        ///
      str    DXPOA13                     99        ///
      str    DXPOA14                    100        ///
      str    DXPOA15                    101        ///
      str    DXPOA16                    102        ///
      str    DXPOA17                    103        ///
      str    DXPOA18                    104        ///
      str    DXPOA19                    105        ///
      str    DXPOA20                    106        ///
      str    DXPOA21                    107        ///
      str    DXPOA22                    108        ///
      str    DXPOA23                    109        ///
      str    DXPOA24                    110        ///
      str    DXPOA25                    111        ///
      int    DXVER                      112- 114   ///
      str    E_POA1                     115        ///
      str    E_POA2                     116        ///
      str    E_POA3                     117        ///
      str    E_POA4                     118        ///
      str    E_POA5                     119        ///
      str    E_POA6                     120        ///
      str    E_POA7                     121        ///
      str    E_POA8                     122        ///
      str    E_POA9                     123        ///
      str    E_POA10                    124        ///
      byte   FEMALE                     125- 126   ///
      byte   HCUP_ED                    127- 128   ///
      byte   HCUP_OS                    129- 130   ///
      byte   HISPANIC                   131- 132   ///
      str    HISPANIC_X                 133        ///
      byte   Homeless                   134- 135   ///
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
      int    I10_DXCCS1                 320- 323   ///
      int    I10_DXCCS2                 324- 327   ///
      int    I10_DXCCS3                 328- 331   ///
      int    I10_DXCCS4                 332- 335   ///
      int    I10_DXCCS5                 336- 339   ///
      int    I10_DXCCS6                 340- 343   ///
      int    I10_DXCCS7                 344- 347   ///
      int    I10_DXCCS8                 348- 351   ///
      int    I10_DXCCS9                 352- 355   ///
      int    I10_DXCCS10                356- 359   ///
      int    I10_DXCCS11                360- 363   ///
      int    I10_DXCCS12                364- 367   ///
      int    I10_DXCCS13                368- 371   ///
      int    I10_DXCCS14                372- 375   ///
      int    I10_DXCCS15                376- 379   ///
      int    I10_DXCCS16                380- 383   ///
      int    I10_DXCCS17                384- 387   ///
      int    I10_DXCCS18                388- 391   ///
      int    I10_DXCCS19                392- 395   ///
      int    I10_DXCCS20                396- 399   ///
      int    I10_DXCCS21                400- 403   ///
      int    I10_DXCCS22                404- 407   ///
      int    I10_DXCCS23                408- 411   ///
      int    I10_DXCCS24                412- 415   ///
      int    I10_DXCCS25                416- 419   ///
      str    I10_ECAUSE1                420- 426   ///
      str    I10_ECAUSE2                427- 433   ///
      str    I10_ECAUSE3                434- 440   ///
      str    I10_ECAUSE4                441- 447   ///
      str    I10_ECAUSE5                448- 454   ///
      str    I10_ECAUSE6                455- 461   ///
      str    I10_ECAUSE7                462- 468   ///
      str    I10_ECAUSE8                469- 475   ///
      str    I10_ECAUSE9                476- 482   ///
      str    I10_ECAUSE10               483- 489   ///
      int    I10_ECauseCCS1             490- 493   ///
      int    I10_ECauseCCS2             494- 497   ///
      int    I10_ECauseCCS3             498- 501   ///
      int    I10_ECauseCCS4             502- 505   ///
      int    I10_ECauseCCS5             506- 509   ///
      int    I10_ECauseCCS6             510- 513   ///
      int    I10_ECauseCCS7             514- 517   ///
      int    I10_ECauseCCS8             518- 521   ///
      int    I10_ECauseCCS9             522- 525   ///
      int    I10_ECauseCCS10            526- 529   ///
      int    I10_HOSPBRTH               530- 532   ///
      int    I10_NCHRONIC               533- 535   ///
      int    I10_NDX                    536- 538   ///
      byte   I10_NECAUSE                539- 540   ///
      byte   I10_NEOMAT                 541- 542   ///
      int    I10_NPR                    543- 545   ///
      byte   I10_ORPROC                 546- 547   ///
      str    I10_PR1                    548- 554   ///
      str    I10_PR2                    555- 561   ///
      str    I10_PR3                    562- 568   ///
      str    I10_PR4                    569- 575   ///
      str    I10_PR5                    576- 582   ///
      str    I10_PR6                    583- 589   ///
      str    I10_PR7                    590- 596   ///
      str    I10_PR8                    597- 603   ///
      str    I10_PR9                    604- 610   ///
      str    I10_PR10                   611- 617   ///
      str    I10_PR11                   618- 624   ///
      str    I10_PR12                   625- 631   ///
      str    I10_PR13                   632- 638   ///
      str    I10_PR14                   639- 645   ///
      int    I10_PRCCS1                 646- 648   ///
      int    I10_PRCCS2                 649- 651   ///
      int    I10_PRCCS3                 652- 654   ///
      int    I10_PRCCS4                 655- 657   ///
      int    I10_PRCCS5                 658- 660   ///
      int    I10_PRCCS6                 661- 663   ///
      int    I10_PRCCS7                 664- 666   ///
      int    I10_PRCCS8                 667- 669   ///
      int    I10_PRCCS9                 670- 672   ///
      int    I10_PRCCS10                673- 675   ///
      int    I10_PRCCS11                676- 678   ///
      int    I10_PRCCS12                679- 681   ///
      int    I10_PRCCS13                682- 684   ///
      int    I10_PRCCS14                685- 687   ///
      int    I10_PROCTYPE               688- 690   ///
      byte   I10_SERVICELINE            691- 692   ///
      double KEY                        693- 707   ///
      long   LOS                        708- 712   ///
      long   LOS_X                      713- 718   ///
      byte   MDC                        719- 720   ///
      byte   MDC_NoPOA                  721- 722   ///
      byte   MDC32                      723- 724   ///
      long   MDNUM1_R                   725- 733   ///
      long   MDNUM2_R                   734- 742   ///
      byte   MEDINCSTQ                  743- 744   ///
      double OS_TIME                    745- 755   ///
      byte   PAY1                       756- 757   ///
      str    PAY1_X                     758- 759   ///
      byte   PAY2                       760- 761   ///
      str    PAY2_X                     762- 763   ///
      byte   PAY3                       764- 765   ///
      str    PAY3_X                     766- 767   ///
      str    PAYER1_X                   768- 772   ///
      str    PAYER2_X                   773- 777   ///
      int    PL_CBSA                    778- 780   ///
      byte   PL_NCHS                    781- 782   ///
      byte   PL_RUCC                    783- 784   ///
      byte   PL_UIC                     785- 786   ///
      byte   PL_UR_CAT4                 787- 788   ///
      byte   POA_Disch_Edit1            789- 790   ///
      byte   POA_Disch_Edit2            791- 792   ///
      byte   POA_Hosp_Edit1             793- 794   ///
      byte   POA_Hosp_Edit2             795- 796   ///
      byte   POA_Hosp_Edit3             797- 798   ///
      double POA_Hosp_Edit3_Value       799- 806   ///
      str    PointOfOrigin_X            807        ///
      str    PointOfOriginUB04          808        ///
      long   PRDAY1                     809- 813   ///
      long   PRDAY2                     814- 818   ///
      long   PRDAY3                     819- 823   ///
      long   PRDAY4                     824- 828   ///
      long   PRDAY5                     829- 833   ///
      long   PRDAY6                     834- 838   ///
      long   PRDAY7                     839- 843   ///
      long   PRDAY8                     844- 848   ///
      long   PRDAY9                     849- 853   ///
      long   PRDAY10                    854- 858   ///
      long   PRDAY11                    859- 863   ///
      long   PRDAY12                    864- 868   ///
      long   PRDAY13                    869- 873   ///
      long   PRDAY14                    874- 878   ///
      int    PRVER                      879- 881   ///
      str    PSTATE                     882- 883   ///
      long   PSTCO                      884- 888   ///
      long   PSTCO2                     889- 893   ///
      byte   RACE                       894- 895   ///
      str    RACE_X                     896- 897   ///
      double TOTCHG                     898- 907   ///
      double TOTCHG_X                   908- 922   ///
      byte   TRAN_IN                    923- 924   ///
      byte   TRAN_OUT                   925- 926   ///
      long   VisitLink                  927- 935   ///
      int    YEAR                       936- 939   ///
      str    ZIP                        940- 944   ///
      str    ZIP3                       945- 947   ///
      int    ZIPINC_QRTL                948- 950   ///
      int    AYEAR                      951- 954   ///
      byte   BMONTH                     955- 956   ///
      int    BYEAR                      957- 960   ///
      byte   PRMONTH1                   961- 962   ///
      byte   PRMONTH2                   963- 964   ///
      byte   PRMONTH3                   965- 966   ///
      byte   PRMONTH4                   967- 968   ///
      byte   PRMONTH5                   969- 970   ///
      byte   PRMONTH6                   971- 972   ///
      byte   PRMONTH7                   973- 974   ///
      byte   PRMONTH8                   975- 976   ///
      byte   PRMONTH9                   977- 978   ///
      byte   PRMONTH10                  979- 980   ///
      byte   PRMONTH11                  981- 982   ///
      byte   PRMONTH12                  983- 984   ///
      byte   PRMONTH13                  985- 986   ///
      byte   PRMONTH14                  987- 988   ///
      int    PRYEAR1                    989- 992   ///
      int    PRYEAR2                    993- 996   ///
      int    PRYEAR3                    997-1000   ///
      int    PRYEAR4                   1001-1004   ///
      int    PRYEAR5                   1005-1008   ///
      int    PRYEAR6                   1009-1012   ///
      int    PRYEAR7                   1013-1016   ///
      int    PRYEAR8                   1017-1020   ///
      int    PRYEAR9                   1021-1024   ///
      int    PRYEAR10                  1025-1028   ///
      int    PRYEAR11                  1029-1032   ///
      int    PRYEAR12                  1033-1036   ///
      int    PRYEAR13                  1037-1040   ///
      int    PRYEAR14                  1041-1044   ///
      using  "NY_SID_2015q4_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ANESTH                   "Method of anesthesia"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var BLOOD                    "Pints of blood furnished to the patient"
label var BWT                      "Birth weight in grams"
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
label var E_POA10                  "E Cause 10, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
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
label var OS_TIME                  "Observation stay time summed from UNITS"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
label var PAY3                     "Tertiary expected payer (uniform)"
label var PAY3_X                   "Tertiary expected payer (as received from source)"
label var PAYER1_X                 "Primary expected payer plan identifier (as received from source)"
label var PAYER2_X                 "Secondary expected payer plan identifier (as received from source)"
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

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ANESTH                    (-99 -88 -66=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BLOOD                     (-99999 -88888 -66666=.)
recode BWT                       (-999 -888 -666=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DHOUR                     (-999 -888 -666=.)
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
recode Homeless                  (-9 -8 -6 -5=.)
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
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
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

save "NY_SID_2015q4_CORE.dta", replace
