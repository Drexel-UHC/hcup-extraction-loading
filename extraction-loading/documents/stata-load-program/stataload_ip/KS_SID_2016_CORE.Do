/*****************************************************************************
* Creation Date: 07/25/2018   
* KS_SID_2016_CORE.Do
* This program will load the 2016 KS ASCII CORE File into Stata.
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
      int    DHOUR                       24-  27   ///
      byte   DIED                        28-  29   ///
      str    DISP_X                      30-  31   ///
      byte   DISPUB04                    32-  33   ///
      byte   DISPUNIFORM                 34-  35   ///
      byte   DMONTH                      36-  37   ///
      byte   DQTR                        38-  39   ///
      int    DRG                         40-  42   ///
      int    DRG_NoPOA                   43-  45   ///
      byte   DRGVER                      46-  47   ///
      str    DXPOA1                      48        ///
      str    DXPOA2                      49        ///
      str    DXPOA3                      50        ///
      str    DXPOA4                      51        ///
      str    DXPOA5                      52        ///
      str    DXPOA6                      53        ///
      str    DXPOA7                      54        ///
      str    DXPOA8                      55        ///
      str    DXPOA9                      56        ///
      str    DXPOA10                     57        ///
      str    DXPOA11                     58        ///
      str    DXPOA12                     59        ///
      str    DXPOA13                     60        ///
      str    DXPOA14                     61        ///
      str    DXPOA15                     62        ///
      str    DXPOA16                     63        ///
      str    DXPOA17                     64        ///
      str    DXPOA18                     65        ///
      str    DXPOA19                     66        ///
      str    DXPOA20                     67        ///
      str    DXPOA21                     68        ///
      str    DXPOA22                     69        ///
      str    DXPOA23                     70        ///
      str    DXPOA24                     71        ///
      str    DXPOA25                     72        ///
      str    DXPOA26                     73        ///
      str    DXPOA27                     74        ///
      str    DXPOA28                     75        ///
      str    DXPOA29                     76        ///
      str    DXPOA30                     77        ///
      int    DXVER                       78-  80   ///
      str    E_POA1                      81        ///
      str    E_POA2                      82        ///
      str    E_POA3                      83        ///
      str    E_POA4                      84        ///
      str    E_POA5                      85        ///
      str    E_POA6                      86        ///
      str    E_POA7                      87        ///
      str    E_POA8                      88        ///
      str    E_POA9                      89        ///
      str    E_POA10                     90        ///
      str    E_POA11                     91        ///
      str    E_POA12                     92        ///
      str    E_POA13                     93        ///
      str    E_POA14                     94        ///
      str    E_POA15                     95        ///
      str    E_POA16                     96        ///
      str    E_POA17                     97        ///
      str    E_POA18                     98        ///
      str    E_POA19                     99        ///
      byte   FEMALE                     100- 101   ///
      byte   HCUP_ED                    102- 103   ///
      byte   HCUP_OS                    104- 105   ///
      byte   HISPANIC                   106- 107   ///
      str    HISPANIC_X                 108        ///
      byte   HospitalUnit               109- 110   ///
      str    HOSPST                     111- 112   ///
      str    I10_DX1                    113- 119   ///
      str    I10_DX2                    120- 126   ///
      str    I10_DX3                    127- 133   ///
      str    I10_DX4                    134- 140   ///
      str    I10_DX5                    141- 147   ///
      str    I10_DX6                    148- 154   ///
      str    I10_DX7                    155- 161   ///
      str    I10_DX8                    162- 168   ///
      str    I10_DX9                    169- 175   ///
      str    I10_DX10                   176- 182   ///
      str    I10_DX11                   183- 189   ///
      str    I10_DX12                   190- 196   ///
      str    I10_DX13                   197- 203   ///
      str    I10_DX14                   204- 210   ///
      str    I10_DX15                   211- 217   ///
      str    I10_DX16                   218- 224   ///
      str    I10_DX17                   225- 231   ///
      str    I10_DX18                   232- 238   ///
      str    I10_DX19                   239- 245   ///
      str    I10_DX20                   246- 252   ///
      str    I10_DX21                   253- 259   ///
      str    I10_DX22                   260- 266   ///
      str    I10_DX23                   267- 273   ///
      str    I10_DX24                   274- 280   ///
      str    I10_DX25                   281- 287   ///
      str    I10_DX26                   288- 294   ///
      str    I10_DX27                   295- 301   ///
      str    I10_DX28                   302- 308   ///
      str    I10_DX29                   309- 315   ///
      str    I10_DX30                   316- 322   ///
      str    I10_ECAUSE1                323- 329   ///
      str    I10_ECAUSE2                330- 336   ///
      str    I10_ECAUSE3                337- 343   ///
      str    I10_ECAUSE4                344- 350   ///
      str    I10_ECAUSE5                351- 357   ///
      str    I10_ECAUSE6                358- 364   ///
      str    I10_ECAUSE7                365- 371   ///
      str    I10_ECAUSE8                372- 378   ///
      str    I10_ECAUSE9                379- 385   ///
      str    I10_ECAUSE10               386- 392   ///
      str    I10_ECAUSE11               393- 399   ///
      str    I10_ECAUSE12               400- 406   ///
      str    I10_ECAUSE13               407- 413   ///
      str    I10_ECAUSE14               414- 420   ///
      str    I10_ECAUSE15               421- 427   ///
      str    I10_ECAUSE16               428- 434   ///
      str    I10_ECAUSE17               435- 441   ///
      str    I10_ECAUSE18               442- 448   ///
      str    I10_ECAUSE19               449- 455   ///
      int    I10_NDX                    456- 458   ///
      byte   I10_NECAUSE                459- 460   ///
      int    I10_NPR                    461- 463   ///
      str    I10_PR1                    464- 470   ///
      str    I10_PR2                    471- 477   ///
      str    I10_PR3                    478- 484   ///
      str    I10_PR4                    485- 491   ///
      str    I10_PR5                    492- 498   ///
      str    I10_PR6                    499- 505   ///
      str    I10_PR7                    506- 512   ///
      str    I10_PR8                    513- 519   ///
      str    I10_PR9                    520- 526   ///
      str    I10_PR10                   527- 533   ///
      str    I10_PR11                   534- 540   ///
      str    I10_PR12                   541- 547   ///
      str    I10_PR13                   548- 554   ///
      str    I10_PR14                   555- 561   ///
      str    I10_PR15                   562- 568   ///
      str    I10_PR16                   569- 575   ///
      str    I10_PR17                   576- 582   ///
      str    I10_PR18                   583- 589   ///
      str    I10_PR19                   590- 596   ///
      str    I10_PR20                   597- 603   ///
      str    I10_PR21                   604- 610   ///
      str    I10_PR22                   611- 617   ///
      str    I10_PR23                   618- 624   ///
      str    I10_PR24                   625- 631   ///
      str    I10_PR25                   632- 638   ///
      int    I10_PROCTYPE               639- 641   ///
      double KEY                        642- 656   ///
      long   LOS                        657- 661   ///
      long   LOS_X                      662- 667   ///
      byte   MDC                        668- 669   ///
      byte   MDC_NoPOA                  670- 671   ///
      byte   MEDINCSTQ                  672- 673   ///
      double OS_TIME                    674- 684   ///
      byte   PAY1                       685- 686   ///
      str    PAY1_X                     687- 689   ///
      byte   PAY2                       690- 691   ///
      str    PAY2_X                     692- 694   ///
      byte   PAY3                       695- 696   ///
      str    PAY3_X                     697- 699   ///
      int    PL_CBSA                    700- 702   ///
      byte   PL_NCHS                    703- 704   ///
      byte   PL_RUCC                    705- 706   ///
      byte   PL_UIC                     707- 708   ///
      byte   PL_UR_CAT4                 709- 710   ///
      byte   POA_Disch_Edit1            711- 712   ///
      byte   POA_Disch_Edit2            713- 714   ///
      byte   POA_Hosp_Edit1             715- 716   ///
      byte   POA_Hosp_Edit2             717- 718   ///
      byte   POA_Hosp_Edit3             719- 720   ///
      double POA_Hosp_Edit3_Value       721- 728   ///
      str    PointOfOrigin_X            729        ///
      str    PointOfOriginUB04          730        ///
      long   PRDAY1                     731- 735   ///
      long   PRDAY2                     736- 740   ///
      long   PRDAY3                     741- 745   ///
      long   PRDAY4                     746- 750   ///
      long   PRDAY5                     751- 755   ///
      long   PRDAY6                     756- 760   ///
      long   PRDAY7                     761- 765   ///
      long   PRDAY8                     766- 770   ///
      long   PRDAY9                     771- 775   ///
      long   PRDAY10                    776- 780   ///
      long   PRDAY11                    781- 785   ///
      long   PRDAY12                    786- 790   ///
      long   PRDAY13                    791- 795   ///
      long   PRDAY14                    796- 800   ///
      long   PRDAY15                    801- 805   ///
      long   PRDAY16                    806- 810   ///
      long   PRDAY17                    811- 815   ///
      long   PRDAY18                    816- 820   ///
      long   PRDAY19                    821- 825   ///
      long   PRDAY20                    826- 830   ///
      long   PRDAY21                    831- 835   ///
      long   PRDAY22                    836- 840   ///
      long   PRDAY23                    841- 845   ///
      long   PRDAY24                    846- 850   ///
      long   PRDAY25                    851- 855   ///
      int    PRVER                      856- 858   ///
      str    PSTATE                     859- 860   ///
      long   PSTCO                      861- 865   ///
      long   PSTCO2                     866- 870   ///
      byte   RACE                       871- 872   ///
      str    RACE_X                     873        ///
      double TOTCHG                     874- 883   ///
      double TOTCHG_X                   884- 898   ///
      byte   TRAN_IN                    899- 900   ///
      byte   TRAN_OUT                   901- 902   ///
      int    YEAR                       903- 906   ///
      str    ZIP3                       907- 909   ///
      int    ZIPINC_QRTL                910- 912   ///
      long   HOSPID                     913- 917   ///
      int    AYEAR                      918- 921   ///
      byte   BMONTH                     922- 923   ///
      int    BYEAR                      924- 927   ///
      byte   PRMONTH1                   928- 929   ///
      byte   PRMONTH2                   930- 931   ///
      byte   PRMONTH3                   932- 933   ///
      byte   PRMONTH4                   934- 935   ///
      byte   PRMONTH5                   936- 937   ///
      byte   PRMONTH6                   938- 939   ///
      byte   PRMONTH7                   940- 941   ///
      byte   PRMONTH8                   942- 943   ///
      byte   PRMONTH9                   944- 945   ///
      byte   PRMONTH10                  946- 947   ///
      byte   PRMONTH11                  948- 949   ///
      byte   PRMONTH12                  950- 951   ///
      byte   PRMONTH13                  952- 953   ///
      byte   PRMONTH14                  954- 955   ///
      byte   PRMONTH15                  956- 957   ///
      byte   PRMONTH16                  958- 959   ///
      byte   PRMONTH17                  960- 961   ///
      byte   PRMONTH18                  962- 963   ///
      byte   PRMONTH19                  964- 965   ///
      byte   PRMONTH20                  966- 967   ///
      byte   PRMONTH21                  968- 969   ///
      byte   PRMONTH22                  970- 971   ///
      byte   PRMONTH23                  972- 973   ///
      byte   PRMONTH24                  974- 975   ///
      byte   PRMONTH25                  976- 977   ///
      int    PRYEAR1                    978- 981   ///
      int    PRYEAR2                    982- 985   ///
      int    PRYEAR3                    986- 989   ///
      int    PRYEAR4                    990- 993   ///
      int    PRYEAR5                    994- 997   ///
      int    PRYEAR6                    998-1001   ///
      int    PRYEAR7                   1002-1005   ///
      int    PRYEAR8                   1006-1009   ///
      int    PRYEAR9                   1010-1013   ///
      int    PRYEAR10                  1014-1017   ///
      int    PRYEAR11                  1018-1021   ///
      int    PRYEAR12                  1022-1025   ///
      int    PRYEAR13                  1026-1029   ///
      int    PRYEAR14                  1030-1033   ///
      int    PRYEAR15                  1034-1037   ///
      int    PRYEAR16                  1038-1041   ///
      int    PRYEAR17                  1042-1045   ///
      int    PRYEAR18                  1046-1049   ///
      int    PRYEAR19                  1050-1053   ///
      int    PRYEAR20                  1054-1057   ///
      int    PRYEAR21                  1058-1061   ///
      int    PRYEAR22                  1062-1065   ///
      int    PRYEAR23                  1066-1069   ///
      int    PRYEAR24                  1070-1073   ///
      int    PRYEAR25                  1074-1077   ///
      using  "KS_SID_2016_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
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
label var E_POA13                  "External cause 13, present on admission indicator"
label var E_POA14                  "External cause 14, present on admission indicator"
label var E_POA15                  "External cause 15, present on admission indicator"
label var E_POA16                  "External cause 16, present on admission indicator"
label var E_POA17                  "External cause 17, present on admission indicator"
label var E_POA18                  "External cause 18, present on admission indicator"
label var E_POA19                  "External cause 19, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HospitalUnit             "Patient was discharged from a special unit within an acute care hospital (reported by source)"
label var HOSPST                   "Hospital state postal code"
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
label var I10_ECAUSE13             "ICD-10-CM External cause 13"
label var I10_ECAUSE14             "ICD-10-CM External cause 14"
label var I10_ECAUSE15             "ICD-10-CM External cause 15"
label var I10_ECAUSE16             "ICD-10-CM External cause 16"
label var I10_ECAUSE17             "ICD-10-CM External cause 17"
label var I10_ECAUSE18             "ICD-10-CM External cause 18"
label var I10_ECAUSE19             "ICD-10-CM External cause 19"
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
label var YEAR                     "Calendar year"
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
recode AHOUR                     (-999 -888 -666=.)
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
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
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

save "KS_SID_2016_CORE.dta", replace
