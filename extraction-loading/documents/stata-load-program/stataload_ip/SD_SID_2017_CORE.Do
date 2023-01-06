/*****************************************************************************
* Creation Date: 02/22/2019   
* SD_SID_2017_CORE.Do
* This program will load the 2017 SD ASCII CORE File into Stata.
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
      int    DXVER                       82-  84   ///
      byte   FEMALE                      85-  86   ///
      byte   HCUP_ED                     87-  88   ///
      byte   HCUP_OS                     89-  90   ///
      byte   HISPANIC                    91-  92   ///
      str    HISPANIC_X                  93        ///
      byte   HospitalUnit                94-  95   ///
      str    HOSPST                      96-  97   ///
      str    I10_DX_Admitting            98- 104   ///
      str    I10_DX1                    105- 111   ///
      str    I10_DX2                    112- 118   ///
      str    I10_DX3                    119- 125   ///
      str    I10_DX4                    126- 132   ///
      str    I10_DX5                    133- 139   ///
      str    I10_DX6                    140- 146   ///
      str    I10_DX7                    147- 153   ///
      str    I10_DX8                    154- 160   ///
      str    I10_DX9                    161- 167   ///
      str    I10_DX10                   168- 174   ///
      str    I10_DX11                   175- 181   ///
      str    I10_DX12                   182- 188   ///
      str    I10_DX13                   189- 195   ///
      str    I10_DX14                   196- 202   ///
      str    I10_DX15                   203- 209   ///
      str    I10_DX16                   210- 216   ///
      str    I10_DX17                   217- 223   ///
      str    I10_DX18                   224- 230   ///
      str    I10_DX19                   231- 237   ///
      str    I10_DX20                   238- 244   ///
      str    I10_DX21                   245- 251   ///
      str    I10_DX22                   252- 258   ///
      str    I10_DX23                   259- 265   ///
      str    I10_DX24                   266- 272   ///
      str    I10_DX25                   273- 279   ///
      str    I10_DX26                   280- 286   ///
      str    I10_DX27                   287- 293   ///
      str    I10_DX28                   294- 300   ///
      str    I10_DX29                   301- 307   ///
      str    I10_DX30                   308- 314   ///
      str    I10_DX31                   315- 321   ///
      str    I10_DX32                   322- 328   ///
      str    I10_DX33                   329- 335   ///
      str    I10_DX34                   336- 342   ///
      str    I10_DX35                   343- 349   ///
      str    I10_DX36                   350- 356   ///
      str    I10_DX37                   357- 363   ///
      str    I10_DX38                   364- 370   ///
      str    I10_DX39                   371- 377   ///
      str    I10_DX40                   378- 384   ///
      int    I10_NDX                    385- 387   ///
      int    I10_NPR                    388- 390   ///
      str    I10_PR1                    391- 397   ///
      str    I10_PR2                    398- 404   ///
      str    I10_PR3                    405- 411   ///
      str    I10_PR4                    412- 418   ///
      str    I10_PR5                    419- 425   ///
      str    I10_PR6                    426- 432   ///
      str    I10_PR7                    433- 439   ///
      str    I10_PR8                    440- 446   ///
      str    I10_PR9                    447- 453   ///
      str    I10_PR10                   454- 460   ///
      str    I10_PR11                   461- 467   ///
      str    I10_PR12                   468- 474   ///
      str    I10_PR13                   475- 481   ///
      str    I10_PR14                   482- 488   ///
      str    I10_PR15                   489- 495   ///
      str    I10_PR16                   496- 502   ///
      str    I10_PR17                   503- 509   ///
      str    I10_PR18                   510- 516   ///
      str    I10_PR19                   517- 523   ///
      str    I10_PR20                   524- 530   ///
      str    I10_PR21                   531- 537   ///
      str    I10_PR22                   538- 544   ///
      str    I10_PR23                   545- 551   ///
      str    I10_PR24                   552- 558   ///
      str    I10_PR25                   559- 565   ///
      int    I10_PROCTYPE               566- 568   ///
      double KEY                        569- 583   ///
      long   LOS                        584- 588   ///
      long   LOS_X                      589- 594   ///
      byte   MDC                        595- 596   ///
      byte   MDC_NoPOA                  597- 598   ///
      long   MDNUM1_R                   599- 607   ///
      long   MDNUM2_R                   608- 616   ///
      byte   MEDINCSTQ                  617- 618   ///
      long   MRN_R                      619- 627   ///
      str    P7EDSRC_X                  628- 629   ///
      byte   PAY1                       630- 631   ///
      int    PL_CBSA                    632- 634   ///
      byte   PL_NCHS                    635- 636   ///
      byte   PL_RUCC                    637- 638   ///
      byte   PL_UIC                     639- 640   ///
      byte   PL_UR_CAT4                 641- 642   ///
      byte   POA_Disch_Edit1            643- 644   ///
      byte   POA_Disch_Edit2            645- 646   ///
      byte   POA_Hosp_Edit1             647- 648   ///
      byte   POA_Hosp_Edit2             649- 650   ///
      byte   POA_Hosp_Edit3             651- 652   ///
      double POA_Hosp_Edit3_Value       653- 660   ///
      str    PointOfOrigin_X            661        ///
      str    PointOfOriginUB04          662        ///
      long   PRDAY1                     663- 667   ///
      long   PRDAY2                     668- 672   ///
      long   PRDAY3                     673- 677   ///
      long   PRDAY4                     678- 682   ///
      long   PRDAY5                     683- 687   ///
      long   PRDAY6                     688- 692   ///
      long   PRDAY7                     693- 697   ///
      long   PRDAY8                     698- 702   ///
      long   PRDAY9                     703- 707   ///
      long   PRDAY10                    708- 712   ///
      long   PRDAY11                    713- 717   ///
      long   PRDAY12                    718- 722   ///
      long   PRDAY13                    723- 727   ///
      long   PRDAY14                    728- 732   ///
      long   PRDAY15                    733- 737   ///
      long   PRDAY16                    738- 742   ///
      long   PRDAY17                    743- 747   ///
      long   PRDAY18                    748- 752   ///
      long   PRDAY19                    753- 757   ///
      long   PRDAY20                    758- 762   ///
      long   PRDAY21                    763- 767   ///
      long   PRDAY22                    768- 772   ///
      long   PRDAY23                    773- 777   ///
      long   PRDAY24                    778- 782   ///
      long   PRDAY25                    783- 787   ///
      int    PRVER                      788- 790   ///
      str    PSTATE                     791- 792   ///
      long   PSTCO                      793- 797   ///
      long   PSTCO2                     798- 802   ///
      byte   RACE                       803- 804   ///
      byte   RACE_EDIT                  805- 806   ///
      str    RACE_X                     807        ///
      double TOTCHG                     808- 817   ///
      double TOTCHG_X                   818- 832   ///
      byte   TRAN_IN                    833- 834   ///
      byte   TRAN_OUT                   835- 836   ///
      int    YEAR                       837- 840   ///
      str    ZIP                        841- 845   ///
      str    ZIP3                       846- 848   ///
      int    ZIPINC_QRTL                849- 851   ///
      long   HOSPID                     852- 856   ///
      int    AYEAR                      857- 860   ///
      byte   BMONTH                     861- 862   ///
      int    BYEAR                      863- 866   ///
      byte   PRMONTH1                   867- 868   ///
      byte   PRMONTH2                   869- 870   ///
      byte   PRMONTH3                   871- 872   ///
      byte   PRMONTH4                   873- 874   ///
      byte   PRMONTH5                   875- 876   ///
      byte   PRMONTH6                   877- 878   ///
      byte   PRMONTH7                   879- 880   ///
      byte   PRMONTH8                   881- 882   ///
      byte   PRMONTH9                   883- 884   ///
      byte   PRMONTH10                  885- 886   ///
      byte   PRMONTH11                  887- 888   ///
      byte   PRMONTH12                  889- 890   ///
      byte   PRMONTH13                  891- 892   ///
      byte   PRMONTH14                  893- 894   ///
      byte   PRMONTH15                  895- 896   ///
      byte   PRMONTH16                  897- 898   ///
      byte   PRMONTH17                  899- 900   ///
      byte   PRMONTH18                  901- 902   ///
      byte   PRMONTH19                  903- 904   ///
      byte   PRMONTH20                  905- 906   ///
      byte   PRMONTH21                  907- 908   ///
      byte   PRMONTH22                  909- 910   ///
      byte   PRMONTH23                  911- 912   ///
      byte   PRMONTH24                  913- 914   ///
      byte   PRMONTH25                  915- 916   ///
      int    PRYEAR1                    917- 920   ///
      int    PRYEAR2                    921- 924   ///
      int    PRYEAR3                    925- 928   ///
      int    PRYEAR4                    929- 932   ///
      int    PRYEAR5                    933- 936   ///
      int    PRYEAR6                    937- 940   ///
      int    PRYEAR7                    941- 944   ///
      int    PRYEAR8                    945- 948   ///
      int    PRYEAR9                    949- 952   ///
      int    PRYEAR10                   953- 956   ///
      int    PRYEAR11                   957- 960   ///
      int    PRYEAR12                   961- 964   ///
      int    PRYEAR13                   965- 968   ///
      int    PRYEAR14                   969- 972   ///
      int    PRYEAR15                   973- 976   ///
      int    PRYEAR16                   977- 980   ///
      int    PRYEAR17                   981- 984   ///
      int    PRYEAR18                   985- 988   ///
      int    PRYEAR19                   989- 992   ///
      int    PRYEAR20                   993- 996   ///
      int    PRYEAR21                   997-1000   ///
      int    PRYEAR22                  1001-1004   ///
      int    PRYEAR23                  1005-1008   ///
      int    PRYEAR24                  1009-1012   ///
      int    PRYEAR25                  1013-1016   ///
      using  "SD_SID_2017_CORE.ASC"

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
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
label var PAY1                     "Primary expected payer (uniform)"
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
recode PRVER                     (-99 -88 -66=.)
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

save "SD_SID_2017_CORE.dta", replace
