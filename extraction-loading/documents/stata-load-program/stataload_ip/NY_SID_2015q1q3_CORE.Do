/*****************************************************************************
* Creation Date: 06/14/2018   
* NY_SID_2015q1q3_CORE.Do
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
      str    DX_Admitting                87-  93   ///
      str    DX1                         94- 100   ///
      str    DX2                        101- 107   ///
      str    DX3                        108- 114   ///
      str    DX4                        115- 121   ///
      str    DX5                        122- 128   ///
      str    DX6                        129- 135   ///
      str    DX7                        136- 142   ///
      str    DX8                        143- 149   ///
      str    DX9                        150- 156   ///
      str    DX10                       157- 163   ///
      str    DX11                       164- 170   ///
      str    DX12                       171- 177   ///
      str    DX13                       178- 184   ///
      str    DX14                       185- 191   ///
      str    DX15                       192- 198   ///
      str    DX16                       199- 205   ///
      str    DX17                       206- 212   ///
      str    DX18                       213- 219   ///
      str    DX19                       220- 226   ///
      str    DX20                       227- 233   ///
      str    DX21                       234- 240   ///
      str    DX22                       241- 247   ///
      str    DX23                       248- 254   ///
      str    DX24                       255- 261   ///
      str    DX25                       262- 268   ///
      int    DXCCS1                     269- 272   ///
      int    DXCCS2                     273- 276   ///
      int    DXCCS3                     277- 280   ///
      int    DXCCS4                     281- 284   ///
      int    DXCCS5                     285- 288   ///
      int    DXCCS6                     289- 292   ///
      int    DXCCS7                     293- 296   ///
      int    DXCCS8                     297- 300   ///
      int    DXCCS9                     301- 304   ///
      int    DXCCS10                    305- 308   ///
      int    DXCCS11                    309- 312   ///
      int    DXCCS12                    313- 316   ///
      int    DXCCS13                    317- 320   ///
      int    DXCCS14                    321- 324   ///
      int    DXCCS15                    325- 328   ///
      int    DXCCS16                    329- 332   ///
      int    DXCCS17                    333- 336   ///
      int    DXCCS18                    337- 340   ///
      int    DXCCS19                    341- 344   ///
      int    DXCCS20                    345- 348   ///
      int    DXCCS21                    349- 352   ///
      int    DXCCS22                    353- 356   ///
      int    DXCCS23                    357- 360   ///
      int    DXCCS24                    361- 364   ///
      int    DXCCS25                    365- 368   ///
      str    DXPOA1                     369        ///
      str    DXPOA2                     370        ///
      str    DXPOA3                     371        ///
      str    DXPOA4                     372        ///
      str    DXPOA5                     373        ///
      str    DXPOA6                     374        ///
      str    DXPOA7                     375        ///
      str    DXPOA8                     376        ///
      str    DXPOA9                     377        ///
      str    DXPOA10                    378        ///
      str    DXPOA11                    379        ///
      str    DXPOA12                    380        ///
      str    DXPOA13                    381        ///
      str    DXPOA14                    382        ///
      str    DXPOA15                    383        ///
      str    DXPOA16                    384        ///
      str    DXPOA17                    385        ///
      str    DXPOA18                    386        ///
      str    DXPOA19                    387        ///
      str    DXPOA20                    388        ///
      str    DXPOA21                    389        ///
      str    DXPOA22                    390        ///
      str    DXPOA23                    391        ///
      str    DXPOA24                    392        ///
      str    DXPOA25                    393        ///
      int    DXVER                      394- 396   ///
      int    E_CCS1                     397- 400   ///
      int    E_CCS2                     401- 404   ///
      int    E_CCS3                     405- 408   ///
      int    E_CCS4                     409- 412   ///
      int    E_CCS5                     413- 416   ///
      int    E_CCS6                     417- 420   ///
      int    E_CCS7                     421- 424   ///
      int    E_CCS8                     425- 428   ///
      int    E_CCS9                     429- 432   ///
      int    E_CCS10                    433- 436   ///
      str    E_POA1                     437        ///
      str    E_POA2                     438        ///
      str    E_POA3                     439        ///
      str    E_POA4                     440        ///
      str    E_POA5                     441        ///
      str    E_POA6                     442        ///
      str    E_POA7                     443        ///
      str    E_POA8                     444        ///
      str    E_POA9                     445        ///
      str    E_POA10                    446        ///
      str    ECODE1                     447- 453   ///
      str    ECODE2                     454- 460   ///
      str    ECODE3                     461- 467   ///
      str    ECODE4                     468- 474   ///
      str    ECODE5                     475- 481   ///
      str    ECODE6                     482- 488   ///
      str    ECODE7                     489- 495   ///
      str    ECODE8                     496- 502   ///
      str    ECODE9                     503- 509   ///
      str    ECODE10                    510- 516   ///
      byte   FEMALE                     517- 518   ///
      byte   HCUP_ED                    519- 520   ///
      byte   HCUP_OS                    521- 522   ///
      byte   HISPANIC                   523- 524   ///
      str    HISPANIC_X                 525        ///
      byte   Homeless                   526- 527   ///
      int    HOSPBRTH                   528- 530   ///
      str    HOSPST                     531- 532   ///
      double KEY                        533- 547   ///
      long   LOS                        548- 552   ///
      long   LOS_X                      553- 558   ///
      byte   MDC                        559- 560   ///
      byte   MDC_NoPOA                  561- 562   ///
      byte   MDC32                      563- 564   ///
      long   MDNUM1_R                   565- 573   ///
      long   MDNUM2_R                   574- 582   ///
      byte   MEDINCSTQ                  583- 584   ///
      int    NCHRONIC                   585- 587   ///
      int    NDX                        588- 590   ///
      byte   NECODE                     591- 592   ///
      byte   NEOMAT                     593- 594   ///
      int    NPR                        595- 597   ///
      byte   ORPROC                     598- 599   ///
      double OS_TIME                    600- 610   ///
      byte   PAY1                       611- 612   ///
      str    PAY1_X                     613- 614   ///
      byte   PAY2                       615- 616   ///
      str    PAY2_X                     617- 618   ///
      byte   PAY3                       619- 620   ///
      str    PAY3_X                     621- 622   ///
      str    PAYER1_X                   623- 627   ///
      str    PAYER2_X                   628- 632   ///
      int    PL_CBSA                    633- 635   ///
      byte   PL_NCHS                    636- 637   ///
      byte   PL_RUCC                    638- 639   ///
      byte   PL_UIC                     640- 641   ///
      byte   PL_UR_CAT4                 642- 643   ///
      byte   POA_Disch_Edit1            644- 645   ///
      byte   POA_Disch_Edit2            646- 647   ///
      byte   POA_Hosp_Edit1             648- 649   ///
      byte   POA_Hosp_Edit2             650- 651   ///
      byte   POA_Hosp_Edit3             652- 653   ///
      double POA_Hosp_Edit3_Value       654- 661   ///
      str    PointOfOrigin_X            662        ///
      str    PointOfOriginUB04          663        ///
      str    PR1                        664- 670   ///
      str    PR2                        671- 677   ///
      str    PR3                        678- 684   ///
      str    PR4                        685- 691   ///
      str    PR5                        692- 698   ///
      str    PR6                        699- 705   ///
      str    PR7                        706- 712   ///
      str    PR8                        713- 719   ///
      str    PR9                        720- 726   ///
      str    PR10                       727- 733   ///
      str    PR11                       734- 740   ///
      str    PR12                       741- 747   ///
      str    PR13                       748- 754   ///
      str    PR14                       755- 761   ///
      int    PRCCS1                     762- 764   ///
      int    PRCCS2                     765- 767   ///
      int    PRCCS3                     768- 770   ///
      int    PRCCS4                     771- 773   ///
      int    PRCCS5                     774- 776   ///
      int    PRCCS6                     777- 779   ///
      int    PRCCS7                     780- 782   ///
      int    PRCCS8                     783- 785   ///
      int    PRCCS9                     786- 788   ///
      int    PRCCS10                    789- 791   ///
      int    PRCCS11                    792- 794   ///
      int    PRCCS12                    795- 797   ///
      int    PRCCS13                    798- 800   ///
      int    PRCCS14                    801- 803   ///
      long   PRDAY1                     804- 808   ///
      long   PRDAY2                     809- 813   ///
      long   PRDAY3                     814- 818   ///
      long   PRDAY4                     819- 823   ///
      long   PRDAY5                     824- 828   ///
      long   PRDAY6                     829- 833   ///
      long   PRDAY7                     834- 838   ///
      long   PRDAY8                     839- 843   ///
      long   PRDAY9                     844- 848   ///
      long   PRDAY10                    849- 853   ///
      long   PRDAY11                    854- 858   ///
      long   PRDAY12                    859- 863   ///
      long   PRDAY13                    864- 868   ///
      long   PRDAY14                    869- 873   ///
      int    PROCTYPE                   874- 876   ///
      int    PRVER                      877- 879   ///
      str    PSTATE                     880- 881   ///
      long   PSTCO                      882- 886   ///
      long   PSTCO2                     887- 891   ///
      byte   RACE                       892- 893   ///
      str    RACE_X                     894- 895   ///
      byte   SERVICELINE                896- 897   ///
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
      using  "NY_SID_2015q1q3_CORE.ASC"

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
label var DX_Admitting             "Admitting Diagnosis Code"
label var DX1                      "Diagnosis 1"
label var DX2                      "Diagnosis 2"
label var DX3                      "Diagnosis 3"
label var DX4                      "Diagnosis 4"
label var DX5                      "Diagnosis 5"
label var DX6                      "Diagnosis 6"
label var DX7                      "Diagnosis 7"
label var DX8                      "Diagnosis 8"
label var DX9                      "Diagnosis 9"
label var DX10                     "Diagnosis 10"
label var DX11                     "Diagnosis 11"
label var DX12                     "Diagnosis 12"
label var DX13                     "Diagnosis 13"
label var DX14                     "Diagnosis 14"
label var DX15                     "Diagnosis 15"
label var DX16                     "Diagnosis 16"
label var DX17                     "Diagnosis 17"
label var DX18                     "Diagnosis 18"
label var DX19                     "Diagnosis 19"
label var DX20                     "Diagnosis 20"
label var DX21                     "Diagnosis 21"
label var DX22                     "Diagnosis 22"
label var DX23                     "Diagnosis 23"
label var DX24                     "Diagnosis 24"
label var DX25                     "Diagnosis 25"
label var DXCCS1                   "CCS: diagnosis 1"
label var DXCCS2                   "CCS: diagnosis 2"
label var DXCCS3                   "CCS: diagnosis 3"
label var DXCCS4                   "CCS: diagnosis 4"
label var DXCCS5                   "CCS: diagnosis 5"
label var DXCCS6                   "CCS: diagnosis 6"
label var DXCCS7                   "CCS: diagnosis 7"
label var DXCCS8                   "CCS: diagnosis 8"
label var DXCCS9                   "CCS: diagnosis 9"
label var DXCCS10                  "CCS: diagnosis 10"
label var DXCCS11                  "CCS: diagnosis 11"
label var DXCCS12                  "CCS: diagnosis 12"
label var DXCCS13                  "CCS: diagnosis 13"
label var DXCCS14                  "CCS: diagnosis 14"
label var DXCCS15                  "CCS: diagnosis 15"
label var DXCCS16                  "CCS: diagnosis 16"
label var DXCCS17                  "CCS: diagnosis 17"
label var DXCCS18                  "CCS: diagnosis 18"
label var DXCCS19                  "CCS: diagnosis 19"
label var DXCCS20                  "CCS: diagnosis 20"
label var DXCCS21                  "CCS: diagnosis 21"
label var DXCCS22                  "CCS: diagnosis 22"
label var DXCCS23                  "CCS: diagnosis 23"
label var DXCCS24                  "CCS: diagnosis 24"
label var DXCCS25                  "CCS: diagnosis 25"
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
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_CCS7                   "CCS: E Code 7"
label var E_CCS8                   "CCS: E Code 8"
label var E_CCS9                   "CCS: E Code 9"
label var E_CCS10                  "CCS: E Code 10"
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var E_POA7                   "E Code 7, present on admission indicator"
label var E_POA8                   "E Code 8, present on admission indicator"
label var E_POA9                   "E Code 9, present on admission indicator"
label var E_POA10                  "E Code 10, present on admission indicator"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var ECODE8                   "E code 8"
label var ECODE9                   "E code 9"
label var ECODE10                  "E code 10"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDC32                    "MDC, version 32"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCHRONIC                 "Number of chronic conditions"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
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
label var PR1                      "Procedure 1"
label var PR2                      "Procedure 2"
label var PR3                      "Procedure 3"
label var PR4                      "Procedure 4"
label var PR5                      "Procedure 5"
label var PR6                      "Procedure 6"
label var PR7                      "Procedure 7"
label var PR8                      "Procedure 8"
label var PR9                      "Procedure 9"
label var PR10                     "Procedure 10"
label var PR11                     "Procedure 11"
label var PR12                     "Procedure 12"
label var PR13                     "Procedure 13"
label var PR14                     "Procedure 14"
label var PRCCS1                   "CCS: procedure 1"
label var PRCCS2                   "CCS: procedure 2"
label var PRCCS3                   "CCS: procedure 3"
label var PRCCS4                   "CCS: procedure 4"
label var PRCCS5                   "CCS: procedure 5"
label var PRCCS6                   "CCS: procedure 6"
label var PRCCS7                   "CCS: procedure 7"
label var PRCCS8                   "CCS: procedure 8"
label var PRCCS9                   "CCS: procedure 9"
label var PRCCS10                  "CCS: procedure 10"
label var PRCCS11                  "CCS: procedure 11"
label var PRCCS12                  "CCS: procedure 12"
label var PRCCS13                  "CCS: procedure 13"
label var PRCCS14                  "CCS: procedure 14"
label var PRDAY1                   "Number of days from admission to PR1"
label var PRDAY2                   "Number of days from admission to PR2"
label var PRDAY3                   "Number of days from admission to PR3"
label var PRDAY4                   "Number of days from admission to PR4"
label var PRDAY5                   "Number of days from admission to PR5"
label var PRDAY6                   "Number of days from admission to PR6"
label var PRDAY7                   "Number of days from admission to PR7"
label var PRDAY8                   "Number of days from admission to PR8"
label var PRDAY9                   "Number of days from admission to PR9"
label var PRDAY10                  "Number of days from admission to PR10"
label var PRDAY11                  "Number of days from admission to PR11"
label var PRDAY12                  "Number of days from admission to PR12"
label var PRDAY13                  "Number of days from admission to PR13"
label var PRDAY14                  "Number of days from admission to PR14"
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var SERVICELINE              "Hospital Service Line"
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
recode DXCCS1                    (-999 -888 -666=.)
recode DXCCS2                    (-999 -888 -666=.)
recode DXCCS3                    (-999 -888 -666=.)
recode DXCCS4                    (-999 -888 -666=.)
recode DXCCS5                    (-999 -888 -666=.)
recode DXCCS6                    (-999 -888 -666=.)
recode DXCCS7                    (-999 -888 -666=.)
recode DXCCS8                    (-999 -888 -666=.)
recode DXCCS9                    (-999 -888 -666=.)
recode DXCCS10                   (-999 -888 -666=.)
recode DXCCS11                   (-999 -888 -666=.)
recode DXCCS12                   (-999 -888 -666=.)
recode DXCCS13                   (-999 -888 -666=.)
recode DXCCS14                   (-999 -888 -666=.)
recode DXCCS15                   (-999 -888 -666=.)
recode DXCCS16                   (-999 -888 -666=.)
recode DXCCS17                   (-999 -888 -666=.)
recode DXCCS18                   (-999 -888 -666=.)
recode DXCCS19                   (-999 -888 -666=.)
recode DXCCS20                   (-999 -888 -666=.)
recode DXCCS21                   (-999 -888 -666=.)
recode DXCCS22                   (-999 -888 -666=.)
recode DXCCS23                   (-999 -888 -666=.)
recode DXCCS24                   (-999 -888 -666=.)
recode DXCCS25                   (-999 -888 -666=.)
recode DXVER                     (-99 -88 -66=.)
recode E_CCS1                    (-999 -888 -666=.)
recode E_CCS2                    (-999 -888 -666=.)
recode E_CCS3                    (-999 -888 -666=.)
recode E_CCS4                    (-999 -888 -666=.)
recode E_CCS5                    (-999 -888 -666=.)
recode E_CCS6                    (-999 -888 -666=.)
recode E_CCS7                    (-999 -888 -666=.)
recode E_CCS8                    (-999 -888 -666=.)
recode E_CCS9                    (-999 -888 -666=.)
recode E_CCS10                   (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDC32                     (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
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
recode PRCCS1                    (-99 -88 -66=.)
recode PRCCS2                    (-99 -88 -66=.)
recode PRCCS3                    (-99 -88 -66=.)
recode PRCCS4                    (-99 -88 -66=.)
recode PRCCS5                    (-99 -88 -66=.)
recode PRCCS6                    (-99 -88 -66=.)
recode PRCCS7                    (-99 -88 -66=.)
recode PRCCS8                    (-99 -88 -66=.)
recode PRCCS9                    (-99 -88 -66=.)
recode PRCCS10                   (-99 -88 -66=.)
recode PRCCS11                   (-99 -88 -66=.)
recode PRCCS12                   (-99 -88 -66=.)
recode PRCCS13                   (-99 -88 -66=.)
recode PRCCS14                   (-99 -88 -66=.)
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
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode SERVICELINE               (-9 -8 -6 -5=.)
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

save "NY_SID_2015q1q3_CORE.dta", replace
