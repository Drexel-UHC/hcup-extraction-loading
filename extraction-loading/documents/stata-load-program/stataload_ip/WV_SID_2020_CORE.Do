/*****************************************************************************
* Creation Date: 04/20/2022   
* WV_SID_2020_CORE.Do
* This program will load the 2020 WV ASCII CORE File into Stata.
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
      byte   ATYPE                       10-  11   ///
      byte   AWEEKEND                    12-  13   ///
      str    BILLTYPE                    14-  17   ///
      byte   DIED                        18-  19   ///
      str    DISP_X                      20-  21   ///
      byte   DISPUB04                    22-  23   ///
      byte   DISPUNIFORM                 24-  25   ///
      byte   DQTR                        26-  27   ///
      int    DRG                         28-  30   ///
      int    DRG_NoPOA                   31-  33   ///
      byte   DRGVER                      34-  35   ///
      str    DSHOSPID                    36-  52   ///
      str    DXPOA1                      53        ///
      str    DXPOA2                      54        ///
      str    DXPOA3                      55        ///
      str    DXPOA4                      56        ///
      str    DXPOA5                      57        ///
      str    DXPOA6                      58        ///
      str    DXPOA7                      59        ///
      str    DXPOA8                      60        ///
      str    DXPOA9                      61        ///
      str    DXPOA10                     62        ///
      str    DXPOA11                     63        ///
      str    DXPOA12                     64        ///
      str    DXPOA13                     65        ///
      str    DXPOA14                     66        ///
      str    DXPOA15                     67        ///
      str    DXPOA16                     68        ///
      str    DXPOA17                     69        ///
      str    DXPOA18                     70        ///
      str    DXPOA19                     71        ///
      str    DXPOA20                     72        ///
      str    DXPOA21                     73        ///
      str    DXPOA22                     74        ///
      str    DXPOA23                     75        ///
      str    DXPOA24                     76        ///
      str    DXPOA25                     77        ///
      str    DXPOA26                     78        ///
      str    DXPOA27                     79        ///
      str    DXPOA28                     80        ///
      str    DXPOA29                     81        ///
      str    DXPOA30                     82        ///
      str    DXPOA31                     83        ///
      str    DXPOA32                     84        ///
      str    DXPOA33                     85        ///
      str    DXPOA34                     86        ///
      str    DXPOA35                     87        ///
      str    DXPOA36                     88        ///
      str    DXPOA37                     89        ///
      str    DXPOA38                     90        ///
      str    DXPOA39                     91        ///
      byte   FEMALE                      92-  93   ///
      byte   HCUP_ED                     94-  95   ///
      byte   HCUP_OS                     96-  97   ///
      byte   HISPANIC                    98-  99   ///
      str    HOSPST                     100- 101   ///
      int    I10_BIRTH                  102- 104   ///
      int    I10_DELIVERY               105- 107   ///
      str    I10_DX_Admitting           108- 114   ///
      str    I10_DX1                    115- 121   ///
      str    I10_DX2                    122- 128   ///
      str    I10_DX3                    129- 135   ///
      str    I10_DX4                    136- 142   ///
      str    I10_DX5                    143- 149   ///
      str    I10_DX6                    150- 156   ///
      str    I10_DX7                    157- 163   ///
      str    I10_DX8                    164- 170   ///
      str    I10_DX9                    171- 177   ///
      str    I10_DX10                   178- 184   ///
      str    I10_DX11                   185- 191   ///
      str    I10_DX12                   192- 198   ///
      str    I10_DX13                   199- 205   ///
      str    I10_DX14                   206- 212   ///
      str    I10_DX15                   213- 219   ///
      str    I10_DX16                   220- 226   ///
      str    I10_DX17                   227- 233   ///
      str    I10_DX18                   234- 240   ///
      str    I10_DX19                   241- 247   ///
      str    I10_DX20                   248- 254   ///
      str    I10_DX21                   255- 261   ///
      str    I10_DX22                   262- 268   ///
      str    I10_DX23                   269- 275   ///
      str    I10_DX24                   276- 282   ///
      str    I10_DX25                   283- 289   ///
      str    I10_DX26                   290- 296   ///
      str    I10_DX27                   297- 303   ///
      str    I10_DX28                   304- 310   ///
      str    I10_DX29                   311- 317   ///
      str    I10_DX30                   318- 324   ///
      str    I10_DX31                   325- 331   ///
      str    I10_DX32                   332- 338   ///
      str    I10_DX33                   339- 345   ///
      str    I10_DX34                   346- 352   ///
      str    I10_DX35                   353- 359   ///
      str    I10_DX36                   360- 366   ///
      str    I10_DX37                   367- 373   ///
      str    I10_DX38                   374- 380   ///
      str    I10_DX39                   381- 387   ///
      int    I10_NDX                    388- 390   ///
      int    I10_NPR                    391- 393   ///
      str    I10_PR1                    394- 400   ///
      str    I10_PR2                    401- 407   ///
      str    I10_PR3                    408- 414   ///
      str    I10_PR4                    415- 421   ///
      str    I10_PR5                    422- 428   ///
      str    I10_PR6                    429- 435   ///
      str    I10_PR7                    436- 442   ///
      str    I10_PR8                    443- 449   ///
      str    I10_PR9                    450- 456   ///
      str    I10_PR10                   457- 463   ///
      str    I10_PR11                   464- 470   ///
      str    I10_PR12                   471- 477   ///
      str    I10_PR13                   478- 484   ///
      str    I10_PR14                   485- 491   ///
      str    I10_PR15                   492- 498   ///
      str    I10_PR16                   499- 505   ///
      str    I10_PR17                   506- 512   ///
      str    I10_PR18                   513- 519   ///
      str    I10_PR19                   520- 526   ///
      str    I10_PR20                   527- 533   ///
      str    I10_PR21                   534- 540   ///
      str    I10_PR22                   541- 547   ///
      str    I10_PR23                   548- 554   ///
      str    I10_PR24                   555- 561   ///
      str    I10_PR25                   562- 568   ///
      int    I10_PROCTYPE               569- 571   ///
      byte   I10_SERVICELINE            572- 573   ///
      double KEY                        574- 588   ///
      long   LOS                        589- 593   ///
      long   LOS_X                      594- 599   ///
      byte   MDC                        600- 601   ///
      byte   MDC_NoPOA                  602- 603   ///
      byte   MEDINCSTQ                  604- 605   ///
      double OS_TIME                    606- 616   ///
      str    P7EDSRC_X                  617- 618   ///
      byte   PAY1                       619- 620   ///
      byte   PAY2                       621- 622   ///
      byte   PAY3                       623- 624   ///
      byte   PCLASS_ORPROC              625- 626   ///
      int    PL_CBSA                    627- 629   ///
      byte   PL_NCHS                    630- 631   ///
      byte   PL_UR_CAT4                 632- 633   ///
      byte   POA_Disch_Edit1            634- 635   ///
      byte   POA_Disch_Edit2            636- 637   ///
      byte   POA_Hosp_Edit1             638- 639   ///
      byte   POA_Hosp_Edit2             640- 641   ///
      byte   POA_Hosp_Edit3             642- 643   ///
      double POA_Hosp_Edit3_Value       644- 651   ///
      str    PointOfOrigin_X            652        ///
      str    PointOfOriginUB04          653        ///
      long   PRDAY1                     654- 658   ///
      long   PRDAY2                     659- 663   ///
      long   PRDAY3                     664- 668   ///
      long   PRDAY4                     669- 673   ///
      long   PRDAY5                     674- 678   ///
      long   PRDAY6                     679- 683   ///
      long   PRDAY7                     684- 688   ///
      long   PRDAY8                     689- 693   ///
      long   PRDAY9                     694- 698   ///
      long   PRDAY10                    699- 703   ///
      long   PRDAY11                    704- 708   ///
      long   PRDAY12                    709- 713   ///
      long   PRDAY13                    714- 718   ///
      long   PRDAY14                    719- 723   ///
      long   PRDAY15                    724- 728   ///
      long   PRDAY16                    729- 733   ///
      long   PRDAY17                    734- 738   ///
      long   PRDAY18                    739- 743   ///
      long   PRDAY19                    744- 748   ///
      long   PRDAY20                    749- 753   ///
      long   PRDAY21                    754- 758   ///
      long   PRDAY22                    759- 763   ///
      long   PRDAY23                    764- 768   ///
      long   PRDAY24                    769- 773   ///
      long   PRDAY25                    774- 778   ///
      str    PSTATE                     779- 780   ///
      str    PSTATE_GEO                 781- 782   ///
      long   PSTCO                      783- 787   ///
      byte   RACE                       788- 789   ///
      float  RACE_PCT_MISS_HOSP         790- 796   ///
      str    RACE_X                     797        ///
      double TOTCHG                     798- 807   ///
      double TOTCHG_X                   808- 822   ///
      byte   TRAN_IN                    823- 824   ///
      byte   TRAN_OUT                   825- 826   ///
      int    YEAR                       827- 830   ///
      int    ZIPINC_QRTL                831- 833   ///
      int    AYEAR                      834- 837   ///
      byte   PRMONTH1                   838- 839   ///
      byte   PRMONTH2                   840- 841   ///
      byte   PRMONTH3                   842- 843   ///
      byte   PRMONTH4                   844- 845   ///
      byte   PRMONTH5                   846- 847   ///
      byte   PRMONTH6                   848- 849   ///
      byte   PRMONTH7                   850- 851   ///
      byte   PRMONTH8                   852- 853   ///
      byte   PRMONTH9                   854- 855   ///
      byte   PRMONTH10                  856- 857   ///
      byte   PRMONTH11                  858- 859   ///
      byte   PRMONTH12                  860- 861   ///
      byte   PRMONTH13                  862- 863   ///
      byte   PRMONTH14                  864- 865   ///
      byte   PRMONTH15                  866- 867   ///
      byte   PRMONTH16                  868- 869   ///
      byte   PRMONTH17                  870- 871   ///
      byte   PRMONTH18                  872- 873   ///
      byte   PRMONTH19                  874- 875   ///
      byte   PRMONTH20                  876- 877   ///
      byte   PRMONTH21                  878- 879   ///
      byte   PRMONTH22                  880- 881   ///
      byte   PRMONTH23                  882- 883   ///
      byte   PRMONTH24                  884- 885   ///
      byte   PRMONTH25                  886- 887   ///
      int    PRYEAR1                    888- 891   ///
      int    PRYEAR2                    892- 895   ///
      int    PRYEAR3                    896- 899   ///
      int    PRYEAR4                    900- 903   ///
      int    PRYEAR5                    904- 907   ///
      int    PRYEAR6                    908- 911   ///
      int    PRYEAR7                    912- 915   ///
      int    PRYEAR8                    916- 919   ///
      int    PRYEAR9                    920- 923   ///
      int    PRYEAR10                   924- 927   ///
      int    PRYEAR11                   928- 931   ///
      int    PRYEAR12                   932- 935   ///
      int    PRYEAR13                   936- 939   ///
      int    PRYEAR14                   940- 943   ///
      int    PRYEAR15                   944- 947   ///
      int    PRYEAR16                   948- 951   ///
      int    PRYEAR17                   952- 955   ///
      int    PRYEAR18                   956- 959   ///
      int    PRYEAR19                   960- 963   ///
      int    PRYEAR20                   964- 967   ///
      int    PRYEAR21                   968- 971   ///
      int    PRYEAR22                   972- 975   ///
      int    PRYEAR23                   976- 979   ///
      int    PRYEAR24                   980- 983   ///
      int    PRYEAR25                   984- 987   ///
      using  "WV_SID_2020_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
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
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY3                     "Tertiary expected payer (uniform)"
label var PCLASS_ORPROC            "Indicates operating room (major diagnostic or therapeutic) procedure on the record"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
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
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO                    "Patient state/county FIPS code"
label var RACE                     "Race (uniform)"
label var RACE_PCT_MISS_HOSP       "Hospital percentage of missing or invalid race values"
label var RACE_X                   "Race (as received from source)"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var YEAR                     "Calendar year"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var AYEAR                    "Admission year"
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
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
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
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
recode PAY3                      (-9 -8 -6 -5=.)
recode PCLASS_ORPROC             (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
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
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_PCT_MISS_HOSP        (-999.99 -888.88 -666.66=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)
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

save "WV_SID_2020_CORE.dta", replace
