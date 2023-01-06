/*****************************************************************************
* Creation Date: 12/18/2019   
* KY_SID_2018_CORE.Do
* This program will load the 2018 KY ASCII CORE File into Stata.
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
      str    BILLTYPE                    16-  19   ///
      int    BWT                         20-  23   ///
      byte   DIED                        24-  25   ///
      str    DISP_X                      26-  27   ///
      byte   DISPUB04                    28-  29   ///
      byte   DISPUNIFORM                 30-  31   ///
      byte   DMONTH                      32-  33   ///
      byte   DNR                         34-  35   ///
      byte   DQTR                        36-  37   ///
      int    DRG                         38-  40   ///
      int    DRG_NoPOA                   41-  43   ///
      byte   DRGVER                      44-  45   ///
      str    DSHOSPID                    46-  62   ///
      str    DXPOA1                      63        ///
      str    DXPOA2                      64        ///
      str    DXPOA3                      65        ///
      str    DXPOA4                      66        ///
      str    DXPOA5                      67        ///
      str    DXPOA6                      68        ///
      str    DXPOA7                      69        ///
      str    DXPOA8                      70        ///
      str    DXPOA9                      71        ///
      str    DXPOA10                     72        ///
      str    DXPOA11                     73        ///
      str    DXPOA12                     74        ///
      str    DXPOA13                     75        ///
      str    DXPOA14                     76        ///
      str    DXPOA15                     77        ///
      str    DXPOA16                     78        ///
      str    DXPOA17                     79        ///
      str    DXPOA18                     80        ///
      str    DXPOA19                     81        ///
      str    DXPOA20                     82        ///
      str    DXPOA21                     83        ///
      str    DXPOA22                     84        ///
      str    DXPOA23                     85        ///
      str    DXPOA24                     86        ///
      str    DXPOA25                     87        ///
      str    DXPOA26                     88        ///
      str    DXPOA27                     89        ///
      str    DXPOA28                     90        ///
      str    DXPOA29                     91        ///
      str    DXPOA30                     92        ///
      str    DXPOA31                     93        ///
      str    DXPOA32                     94        ///
      str    DXPOA33                     95        ///
      str    DXPOA34                     96        ///
      str    DXPOA35                     97        ///
      str    DXPOA36                     98        ///
      str    DXPOA37                     99        ///
      str    DXPOA38                    100        ///
      str    DXPOA39                    101        ///
      str    DXPOA40                    102        ///
      str    DXPOA41                    103        ///
      str    DXPOA42                    104        ///
      str    DXPOA43                    105        ///
      str    DXPOA44                    106        ///
      str    DXPOA45                    107        ///
      str    DXPOA46                    108        ///
      str    DXPOA47                    109        ///
      str    DXPOA48                    110        ///
      str    DXPOA49                    111        ///
      str    DXPOA50                    112        ///
      byte   FEMALE                     113- 114   ///
      byte   HCUP_ED                    115- 116   ///
      byte   HCUP_OS                    117- 118   ///
      byte   HISPANIC                   119- 120   ///
      str    HISPANIC_X                 121- 122   ///
      str    HOSP_NPI                   123- 132   ///
      str    HOSPST                     133- 134   ///
      str    I10_DX_Admitting           135- 141   ///
      str    I10_DX1                    142- 148   ///
      str    I10_DX2                    149- 155   ///
      str    I10_DX3                    156- 162   ///
      str    I10_DX4                    163- 169   ///
      str    I10_DX5                    170- 176   ///
      str    I10_DX6                    177- 183   ///
      str    I10_DX7                    184- 190   ///
      str    I10_DX8                    191- 197   ///
      str    I10_DX9                    198- 204   ///
      str    I10_DX10                   205- 211   ///
      str    I10_DX11                   212- 218   ///
      str    I10_DX12                   219- 225   ///
      str    I10_DX13                   226- 232   ///
      str    I10_DX14                   233- 239   ///
      str    I10_DX15                   240- 246   ///
      str    I10_DX16                   247- 253   ///
      str    I10_DX17                   254- 260   ///
      str    I10_DX18                   261- 267   ///
      str    I10_DX19                   268- 274   ///
      str    I10_DX20                   275- 281   ///
      str    I10_DX21                   282- 288   ///
      str    I10_DX22                   289- 295   ///
      str    I10_DX23                   296- 302   ///
      str    I10_DX24                   303- 309   ///
      str    I10_DX25                   310- 316   ///
      str    I10_DX26                   317- 323   ///
      str    I10_DX27                   324- 330   ///
      str    I10_DX28                   331- 337   ///
      str    I10_DX29                   338- 344   ///
      str    I10_DX30                   345- 351   ///
      str    I10_DX31                   352- 358   ///
      str    I10_DX32                   359- 365   ///
      str    I10_DX33                   366- 372   ///
      str    I10_DX34                   373- 379   ///
      str    I10_DX35                   380- 386   ///
      str    I10_DX36                   387- 393   ///
      str    I10_DX37                   394- 400   ///
      str    I10_DX38                   401- 407   ///
      str    I10_DX39                   408- 414   ///
      str    I10_DX40                   415- 421   ///
      str    I10_DX41                   422- 428   ///
      str    I10_DX42                   429- 435   ///
      str    I10_DX43                   436- 442   ///
      str    I10_DX44                   443- 449   ///
      str    I10_DX45                   450- 456   ///
      str    I10_DX46                   457- 463   ///
      str    I10_DX47                   464- 470   ///
      str    I10_DX48                   471- 477   ///
      str    I10_DX49                   478- 484   ///
      str    I10_DX50                   485- 491   ///
      int    I10_NDX                    492- 494   ///
      int    I10_NPR                    495- 497   ///
      str    I10_PR1                    498- 504   ///
      str    I10_PR2                    505- 511   ///
      str    I10_PR3                    512- 518   ///
      str    I10_PR4                    519- 525   ///
      str    I10_PR5                    526- 532   ///
      str    I10_PR6                    533- 539   ///
      str    I10_PR7                    540- 546   ///
      str    I10_PR8                    547- 553   ///
      str    I10_PR9                    554- 560   ///
      str    I10_PR10                   561- 567   ///
      str    I10_PR11                   568- 574   ///
      str    I10_PR12                   575- 581   ///
      str    I10_PR13                   582- 588   ///
      str    I10_PR14                   589- 595   ///
      str    I10_PR15                   596- 602   ///
      str    I10_PR16                   603- 609   ///
      str    I10_PR17                   610- 616   ///
      str    I10_PR18                   617- 623   ///
      str    I10_PR19                   624- 630   ///
      str    I10_PR20                   631- 637   ///
      str    I10_PR21                   638- 644   ///
      str    I10_PR22                   645- 651   ///
      str    I10_PR23                   652- 658   ///
      str    I10_PR24                   659- 665   ///
      str    I10_PR25                   666- 672   ///
      int    I10_PROCTYPE               673- 675   ///
      double KEY                        676- 690   ///
      long   LOS                        691- 695   ///
      long   LOS_X                      696- 701   ///
      byte   MDC                        702- 703   ///
      byte   MDC_NoPOA                  704- 705   ///
      byte   MEDINCSTQ                  706- 707   ///
      double OS_TIME                    708- 718   ///
      byte   PAY1                       719- 720   ///
      str    PAY1_X                     721- 725   ///
      byte   PAY2                       726- 727   ///
      str    PAY2_X                     728- 732   ///
      byte   PAY3                       733- 734   ///
      str    PAY3_X                     735- 739   ///
      int    PL_CBSA                    740- 742   ///
      byte   PL_NCHS                    743- 744   ///
      byte   PL_RUCC                    745- 746   ///
      byte   PL_UIC                     747- 748   ///
      byte   PL_UR_CAT4                 749- 750   ///
      byte   POA_Disch_Edit1            751- 752   ///
      byte   POA_Disch_Edit2            753- 754   ///
      byte   POA_Hosp_Edit1             755- 756   ///
      byte   POA_Hosp_Edit2             757- 758   ///
      byte   POA_Hosp_Edit3             759- 760   ///
      double POA_Hosp_Edit3_Value       761- 768   ///
      str    PointOfOrigin_X            769        ///
      str    PointOfOriginUB04          770        ///
      long   PRDAY1                     771- 775   ///
      long   PRDAY2                     776- 780   ///
      long   PRDAY3                     781- 785   ///
      long   PRDAY4                     786- 790   ///
      long   PRDAY5                     791- 795   ///
      long   PRDAY6                     796- 800   ///
      long   PRDAY7                     801- 805   ///
      long   PRDAY8                     806- 810   ///
      long   PRDAY9                     811- 815   ///
      long   PRDAY10                    816- 820   ///
      long   PRDAY11                    821- 825   ///
      long   PRDAY12                    826- 830   ///
      long   PRDAY13                    831- 835   ///
      long   PRDAY14                    836- 840   ///
      long   PRDAY15                    841- 845   ///
      long   PRDAY16                    846- 850   ///
      long   PRDAY17                    851- 855   ///
      long   PRDAY18                    856- 860   ///
      long   PRDAY19                    861- 865   ///
      long   PRDAY20                    866- 870   ///
      long   PRDAY21                    871- 875   ///
      long   PRDAY22                    876- 880   ///
      long   PRDAY23                    881- 885   ///
      long   PRDAY24                    886- 890   ///
      long   PRDAY25                    891- 895   ///
      str    PSTATE                     896- 897   ///
      long   PSTCO                      898- 902   ///
      long   PSTCO2                     903- 907   ///
      byte   RACE                       908- 909   ///
      byte   RACE_EDIT                  910- 911   ///
      str    RACE_X                     912- 913   ///
      double TOTCHG                     914- 923   ///
      double TOTCHG_X                   924- 938   ///
      byte   TRAN_IN                    939- 940   ///
      byte   TRAN_OUT                   941- 942   ///
      int    YEAR                       943- 946   ///
      str    ZIP                        947- 951   ///
      str    ZIP3                       952- 954   ///
      int    ZIPINC_QRTL                955- 957   ///
      int    AYEAR                      958- 961   ///
      byte   BMONTH                     962- 963   ///
      int    BYEAR                      964- 967   ///
      byte   PRMONTH1                   968- 969   ///
      byte   PRMONTH2                   970- 971   ///
      byte   PRMONTH3                   972- 973   ///
      byte   PRMONTH4                   974- 975   ///
      byte   PRMONTH5                   976- 977   ///
      byte   PRMONTH6                   978- 979   ///
      byte   PRMONTH7                   980- 981   ///
      byte   PRMONTH8                   982- 983   ///
      byte   PRMONTH9                   984- 985   ///
      byte   PRMONTH10                  986- 987   ///
      byte   PRMONTH11                  988- 989   ///
      byte   PRMONTH12                  990- 991   ///
      byte   PRMONTH13                  992- 993   ///
      byte   PRMONTH14                  994- 995   ///
      byte   PRMONTH15                  996- 997   ///
      byte   PRMONTH16                  998- 999   ///
      byte   PRMONTH17                 1000-1001   ///
      byte   PRMONTH18                 1002-1003   ///
      byte   PRMONTH19                 1004-1005   ///
      byte   PRMONTH20                 1006-1007   ///
      byte   PRMONTH21                 1008-1009   ///
      byte   PRMONTH22                 1010-1011   ///
      byte   PRMONTH23                 1012-1013   ///
      byte   PRMONTH24                 1014-1015   ///
      byte   PRMONTH25                 1016-1017   ///
      int    PRYEAR1                   1018-1021   ///
      int    PRYEAR2                   1022-1025   ///
      int    PRYEAR3                   1026-1029   ///
      int    PRYEAR4                   1030-1033   ///
      int    PRYEAR5                   1034-1037   ///
      int    PRYEAR6                   1038-1041   ///
      int    PRYEAR7                   1042-1045   ///
      int    PRYEAR8                   1046-1049   ///
      int    PRYEAR9                   1050-1053   ///
      int    PRYEAR10                  1054-1057   ///
      int    PRYEAR11                  1058-1061   ///
      int    PRYEAR12                  1062-1065   ///
      int    PRYEAR13                  1066-1069   ///
      int    PRYEAR14                  1070-1073   ///
      int    PRYEAR15                  1074-1077   ///
      int    PRYEAR16                  1078-1081   ///
      int    PRYEAR17                  1082-1085   ///
      int    PRYEAR18                  1086-1089   ///
      int    PRYEAR19                  1090-1093   ///
      int    PRYEAR20                  1094-1097   ///
      int    PRYEAR21                  1098-1101   ///
      int    PRYEAR22                  1102-1105   ///
      int    PRYEAR23                  1106-1109   ///
      int    PRYEAR24                  1110-1113   ///
      int    PRYEAR25                  1114-1117   ///
      using  "KY_SID_2018_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var BWT                      "Birth weight in grams"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSP_NPI                 "Hospital NPI"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
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
recode DNR                       (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
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
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
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

save "KY_SID_2018_CORE.dta", replace
