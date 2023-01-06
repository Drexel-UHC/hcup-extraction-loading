/*****************************************************************************
* Creation Date: 04/13/2021   
* SD_SID_2019_CORE.Do
* This program will load the 2019 SD ASCII CORE File into Stata.
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
      byte   DISPUB04                    22-  23   ///
      byte   DISPUNIFORM                 24-  25   ///
      str    DISP_X                      26-  29   ///
      byte   DMONTH                      30-  31   ///
      byte   DQTR                        32-  33   ///
      int    DRG                         34-  36   ///
      byte   DRGVER                      37-  38   ///
      int    DRG_NoPOA                   39-  41   ///
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
      byte   FEMALE                      87-  88   ///
      byte   HCUP_ED                     89-  90   ///
      byte   HCUP_OS                     91-  92   ///
      byte   HISPANIC                    93-  94   ///
      str    HISPANIC_X                  95        ///
      str    HOSPST                      96-  97   ///
      byte   HospitalUnit                98-  99   ///
      byte   I10_BIRTH                  100- 101   ///
      byte   I10_DELIVERY               102- 103   ///
      str    I10_DX1                    104- 110   ///
      str    I10_DX2                    111- 117   ///
      str    I10_DX3                    118- 124   ///
      str    I10_DX4                    125- 131   ///
      str    I10_DX5                    132- 138   ///
      str    I10_DX6                    139- 145   ///
      str    I10_DX7                    146- 152   ///
      str    I10_DX8                    153- 159   ///
      str    I10_DX9                    160- 166   ///
      str    I10_DX10                   167- 173   ///
      str    I10_DX11                   174- 180   ///
      str    I10_DX12                   181- 187   ///
      str    I10_DX13                   188- 194   ///
      str    I10_DX14                   195- 201   ///
      str    I10_DX15                   202- 208   ///
      str    I10_DX16                   209- 215   ///
      str    I10_DX17                   216- 222   ///
      str    I10_DX18                   223- 229   ///
      str    I10_DX19                   230- 236   ///
      str    I10_DX20                   237- 243   ///
      str    I10_DX21                   244- 250   ///
      str    I10_DX22                   251- 257   ///
      str    I10_DX23                   258- 264   ///
      str    I10_DX24                   265- 271   ///
      str    I10_DX25                   272- 278   ///
      str    I10_DX26                   279- 285   ///
      str    I10_DX27                   286- 292   ///
      str    I10_DX28                   293- 299   ///
      str    I10_DX29                   300- 306   ///
      str    I10_DX30                   307- 313   ///
      str    I10_DX31                   314- 320   ///
      str    I10_DX32                   321- 327   ///
      str    I10_DX33                   328- 334   ///
      str    I10_DX34                   335- 341   ///
      str    I10_DX35                   342- 348   ///
      str    I10_DX36                   349- 355   ///
      str    I10_DX37                   356- 362   ///
      str    I10_DX38                   363- 369   ///
      str    I10_DX39                   370- 376   ///
      str    I10_DX40                   377- 383   ///
      str    I10_DX41                   384- 390   ///
      str    I10_DX42                   391- 397   ///
      str    I10_DX43                   398- 404   ///
      str    I10_DX44                   405- 411   ///
      str    I10_DX45                   412- 418   ///
      str    I10_DX_Admitting           419- 425   ///
      int    I10_NDX                    426- 428   ///
      int    I10_NPR                    429- 431   ///
      byte   I10_ORPROC                 432- 433   ///
      str    I10_PR1                    434- 440   ///
      str    I10_PR2                    441- 447   ///
      str    I10_PR3                    448- 454   ///
      str    I10_PR4                    455- 461   ///
      str    I10_PR5                    462- 468   ///
      str    I10_PR6                    469- 475   ///
      str    I10_PR7                    476- 482   ///
      str    I10_PR8                    483- 489   ///
      str    I10_PR9                    490- 496   ///
      str    I10_PR10                   497- 503   ///
      str    I10_PR11                   504- 510   ///
      str    I10_PR12                   511- 517   ///
      str    I10_PR13                   518- 524   ///
      str    I10_PR14                   525- 531   ///
      str    I10_PR15                   532- 538   ///
      str    I10_PR16                   539- 545   ///
      str    I10_PR17                   546- 552   ///
      str    I10_PR18                   553- 559   ///
      str    I10_PR19                   560- 566   ///
      str    I10_PR20                   567- 573   ///
      str    I10_PR21                   574- 580   ///
      str    I10_PR22                   581- 587   ///
      str    I10_PR23                   588- 594   ///
      str    I10_PR24                   595- 601   ///
      str    I10_PR25                   602- 608   ///
      int    I10_PROCTYPE               609- 611   ///
      byte   I10_SERVICELINE            612- 613   ///
      double KEY                        614- 628   ///
      long   LOS                        629- 633   ///
      long   LOS_X                      634- 639   ///
      byte   MDC                        640- 641   ///
      byte   MDC_NoPOA                  642- 643   ///
      long   MDNUM1_R                   644- 652   ///
      long   MDNUM2_R                   653- 661   ///
      byte   MEDINCSTQ                  662- 663   ///
      long   MRN_R                      664- 672   ///
      str    P7EDSRC_X                  673- 674   ///
      byte   PAY1                       675- 676   ///
      int    PL_CBSA                    677- 679   ///
      byte   PL_NCHS                    680- 681   ///
      byte   PL_RUCC                    682- 683   ///
      byte   PL_UIC                     684- 685   ///
      byte   PL_UR_CAT4                 686- 687   ///
      byte   POA_Disch_Edit1            688- 689   ///
      byte   POA_Disch_Edit2            690- 691   ///
      byte   POA_Hosp_Edit1             692- 693   ///
      byte   POA_Hosp_Edit2             694- 695   ///
      byte   POA_Hosp_Edit3             696- 697   ///
      double POA_Hosp_Edit3_Value       698- 705   ///
      long   PRDAY1                     706- 710   ///
      long   PRDAY2                     711- 715   ///
      long   PRDAY3                     716- 720   ///
      long   PRDAY4                     721- 725   ///
      long   PRDAY5                     726- 730   ///
      long   PRDAY6                     731- 735   ///
      long   PRDAY7                     736- 740   ///
      long   PRDAY8                     741- 745   ///
      long   PRDAY9                     746- 750   ///
      long   PRDAY10                    751- 755   ///
      long   PRDAY11                    756- 760   ///
      long   PRDAY12                    761- 765   ///
      long   PRDAY13                    766- 770   ///
      long   PRDAY14                    771- 775   ///
      long   PRDAY15                    776- 780   ///
      long   PRDAY16                    781- 785   ///
      long   PRDAY17                    786- 790   ///
      long   PRDAY18                    791- 795   ///
      long   PRDAY19                    796- 800   ///
      long   PRDAY20                    801- 805   ///
      long   PRDAY21                    806- 810   ///
      long   PRDAY22                    811- 815   ///
      long   PRDAY23                    816- 820   ///
      long   PRDAY24                    821- 825   ///
      long   PRDAY25                    826- 830   ///
      str    PSTATE                     831- 832   ///
      str    PSTATE_GEO                 833- 834   ///
      long   PSTCO                      835- 839   ///
      long   PSTCO_GEO                  840- 844   ///
      str    PointOfOriginUB04          845        ///
      str    PointOfOrigin_X            846        ///
      byte   RACE                       847- 848   ///
      byte   RACE_EDIT                  849- 850   ///
      str    RACE_X                     851        ///
      double TOTCHG                     852- 861   ///
      double TOTCHG_X                   862- 876   ///
      byte   TRAN_IN                    877- 878   ///
      byte   TRAN_OUT                   879- 880   ///
      int    YEAR                       881- 884   ///
      str    ZIP                        885- 889   ///
      str    ZIP3                       890- 892   ///
      int    ZIPINC_QRTL                893- 895   ///
      long   HOSPID                     896- 900   ///
      int    AYEAR                      901- 904   ///
      byte   BMONTH                     905- 906   ///
      int    BYEAR                      907- 910   ///
      byte   PRMONTH1                   911- 912   ///
      byte   PRMONTH2                   913- 914   ///
      byte   PRMONTH3                   915- 916   ///
      byte   PRMONTH4                   917- 918   ///
      byte   PRMONTH5                   919- 920   ///
      byte   PRMONTH6                   921- 922   ///
      byte   PRMONTH7                   923- 924   ///
      byte   PRMONTH8                   925- 926   ///
      byte   PRMONTH9                   927- 928   ///
      byte   PRMONTH10                  929- 930   ///
      byte   PRMONTH11                  931- 932   ///
      byte   PRMONTH12                  933- 934   ///
      byte   PRMONTH13                  935- 936   ///
      byte   PRMONTH14                  937- 938   ///
      byte   PRMONTH15                  939- 940   ///
      byte   PRMONTH16                  941- 942   ///
      byte   PRMONTH17                  943- 944   ///
      byte   PRMONTH18                  945- 946   ///
      byte   PRMONTH19                  947- 948   ///
      byte   PRMONTH20                  949- 950   ///
      byte   PRMONTH21                  951- 952   ///
      byte   PRMONTH22                  953- 954   ///
      byte   PRMONTH23                  955- 956   ///
      byte   PRMONTH24                  957- 958   ///
      byte   PRMONTH25                  959- 960   ///
      int    PRYEAR1                    961- 964   ///
      int    PRYEAR2                    965- 968   ///
      int    PRYEAR3                    969- 972   ///
      int    PRYEAR4                    973- 976   ///
      int    PRYEAR5                    977- 980   ///
      int    PRYEAR6                    981- 984   ///
      int    PRYEAR7                    985- 988   ///
      int    PRYEAR8                    989- 992   ///
      int    PRYEAR9                    993- 996   ///
      int    PRYEAR10                   997-1000   ///
      int    PRYEAR11                  1001-1004   ///
      int    PRYEAR12                  1005-1008   ///
      int    PRYEAR13                  1009-1012   ///
      int    PRYEAR14                  1013-1016   ///
      int    PRYEAR15                  1017-1020   ///
      int    PRYEAR16                  1021-1024   ///
      int    PRYEAR17                  1025-1028   ///
      int    PRYEAR18                  1029-1032   ///
      int    PRYEAR19                  1033-1036   ///
      int    PRYEAR20                  1037-1040   ///
      int    PRYEAR21                  1041-1044   ///
      int    PRYEAR22                  1045-1048   ///
      int    PRYEAR23                  1049-1052   ///
      int    PRYEAR24                  1053-1056   ///
      int    PRYEAR25                  1057-1060   ///
      using  "SD_SID_2019_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRGVER                   "DRG grouper version used on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPST                   "Hospital state postal code"
label var HospitalUnit             "Patient was discharged from a special unit within an acute care hospital (reported by source)"
label var I10_BIRTH                "ICD-10-CM Birth Indicator"
label var I10_DELIVERY             "ICD-10-CM Delivery Indicator"
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
label var I10_DX_Admitting         "ICD-10-CM Admitting Diagnosis Code"
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
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
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var RACE                     "Race (uniform)"
label var RACE_EDIT                "Race Edit Checks"
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
recode BWT                       (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
recode I10_BIRTH                 (-9 -8 -6 -5=.)
recode I10_DELIVERY              (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_ORPROC                (-9 -8 -6 -5=.)
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
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_EDIT                 (-9 -8 -6 -5=.)
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

save "SD_SID_2019_CORE.dta", replace
