/*****************************************************************************
* Creation Date: 05/07/2021   
* RI_SID_2019_CORE.Do
* This program will load the 2019 RI ASCII CORE File into Stata.
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
      byte   AMONTH                       8-   9   ///
      byte   ATYPE                       10-  11   ///
      byte   AWEEKEND                    12-  13   ///
      int    BWT                         14-  17   ///
      str    CPT1                        18-  22   ///
      str    CPT2                        23-  27   ///
      str    CPT3                        28-  32   ///
      str    CPT4                        33-  37   ///
      str    CPT5                        38-  42   ///
      str    CPT6                        43-  47   ///
      str    CPT7                        48-  52   ///
      str    CPT8                        53-  57   ///
      str    CPT9                        58-  62   ///
      str    CPT10                       63-  67   ///
      str    CPT11                       68-  72   ///
      int    CPTCCS1                     73-  75   ///
      int    CPTCCS2                     76-  78   ///
      int    CPTCCS3                     79-  81   ///
      int    CPTCCS4                     82-  84   ///
      int    CPTCCS5                     85-  87   ///
      int    CPTCCS6                     88-  90   ///
      int    CPTCCS7                     91-  93   ///
      int    CPTCCS8                     94-  96   ///
      int    CPTCCS9                     97-  99   ///
      int    CPTCCS10                   100- 102   ///
      int    CPTCCS11                   103- 105   ///
      int    CPTDAY1                    106- 108   ///
      int    CPTDAY2                    109- 111   ///
      int    CPTDAY3                    112- 114   ///
      int    CPTDAY4                    115- 117   ///
      int    CPTDAY5                    118- 120   ///
      int    CPTDAY6                    121- 123   ///
      int    CPTDAY7                    124- 126   ///
      int    CPTDAY8                    127- 129   ///
      int    CPTDAY9                    130- 132   ///
      int    CPTDAY10                   133- 135   ///
      int    CPTDAY11                   136- 138   ///
      int    DaysCCU                    139- 141   ///
      int    DaysICU                    142- 144   ///
      int    DaysNICU                   145- 147   ///
      int    DHOUR                      148- 151   ///
      byte   DIED                       152- 153   ///
      str    DISP_X                     154- 155   ///
      byte   DISPUB04                   156- 157   ///
      byte   DISPUNIFORM                158- 159   ///
      byte   DMONTH                     160- 161   ///
      byte   DQTR                       162- 163   ///
      int    DRG                        164- 166   ///
      int    DRG_NoPOA                  167- 169   ///
      byte   DRGVER                     170- 171   ///
      str    DSHOSPID                   172- 188   ///
      str    DXPOA1                     189        ///
      str    DXPOA2                     190        ///
      str    DXPOA3                     191        ///
      str    DXPOA4                     192        ///
      str    DXPOA5                     193        ///
      str    DXPOA6                     194        ///
      str    DXPOA7                     195        ///
      str    DXPOA8                     196        ///
      str    DXPOA9                     197        ///
      str    DXPOA10                    198        ///
      str    DXPOA11                    199        ///
      str    DXPOA12                    200        ///
      str    DXPOA13                    201        ///
      str    DXPOA14                    202        ///
      str    DXPOA15                    203        ///
      str    DXPOA16                    204        ///
      str    DXPOA17                    205        ///
      str    DXPOA18                    206        ///
      str    DXPOA19                    207        ///
      str    DXPOA20                    208        ///
      str    DXPOA21                    209        ///
      str    DXPOA22                    210        ///
      str    DXPOA23                    211        ///
      str    DXPOA24                    212        ///
      str    DXPOA25                    213        ///
      str    DXPOA26                    214        ///
      byte   FEMALE                     215- 216   ///
      byte   HCUP_ED                    217- 218   ///
      byte   HCUP_OS                    219- 220   ///
      byte   HISPANIC                   221- 222   ///
      str    HISPANIC_X                 223- 226   ///
      str    HOSPST                     227- 228   ///
      byte   I10_BIRTH                  229- 230   ///
      byte   I10_DELIVERY               231- 232   ///
      str    I10_DX_Admitting           233- 239   ///
      str    I10_DX1                    240- 246   ///
      str    I10_DX2                    247- 253   ///
      str    I10_DX3                    254- 260   ///
      str    I10_DX4                    261- 267   ///
      str    I10_DX5                    268- 274   ///
      str    I10_DX6                    275- 281   ///
      str    I10_DX7                    282- 288   ///
      str    I10_DX8                    289- 295   ///
      str    I10_DX9                    296- 302   ///
      str    I10_DX10                   303- 309   ///
      str    I10_DX11                   310- 316   ///
      str    I10_DX12                   317- 323   ///
      str    I10_DX13                   324- 330   ///
      str    I10_DX14                   331- 337   ///
      str    I10_DX15                   338- 344   ///
      str    I10_DX16                   345- 351   ///
      str    I10_DX17                   352- 358   ///
      str    I10_DX18                   359- 365   ///
      str    I10_DX19                   366- 372   ///
      str    I10_DX20                   373- 379   ///
      str    I10_DX21                   380- 386   ///
      str    I10_DX22                   387- 393   ///
      str    I10_DX23                   394- 400   ///
      str    I10_DX24                   401- 407   ///
      str    I10_DX25                   408- 414   ///
      str    I10_DX26                   415- 421   ///
      int    I10_NDX                    422- 424   ///
      int    I10_NPR                    425- 427   ///
      byte   I10_ORPROC                 428- 429   ///
      str    I10_PR1                    430- 436   ///
      str    I10_PR2                    437- 443   ///
      str    I10_PR3                    444- 450   ///
      str    I10_PR4                    451- 457   ///
      str    I10_PR5                    458- 464   ///
      str    I10_PR6                    465- 471   ///
      str    I10_PR7                    472- 478   ///
      str    I10_PR8                    479- 485   ///
      str    I10_PR9                    486- 492   ///
      str    I10_PR10                   493- 499   ///
      str    I10_PR11                   500- 506   ///
      str    I10_PR12                   507- 513   ///
      str    I10_PR13                   514- 520   ///
      str    I10_PR14                   521- 527   ///
      str    I10_PR15                   528- 534   ///
      str    I10_PR16                   535- 541   ///
      str    I10_PR17                   542- 548   ///
      str    I10_PR18                   549- 555   ///
      str    I10_PR19                   556- 562   ///
      str    I10_PR20                   563- 569   ///
      str    I10_PR21                   570- 576   ///
      str    I10_PR22                   577- 583   ///
      str    I10_PR23                   584- 590   ///
      str    I10_PR24                   591- 597   ///
      str    I10_PR25                   598- 604   ///
      int    I10_PROCTYPE               605- 607   ///
      byte   I10_SERVICELINE            608- 609   ///
      double KEY                        610- 624   ///
      long   LOS                        625- 629   ///
      long   LOS_X                      630- 635   ///
      byte   MDC                        636- 637   ///
      byte   MDC_NoPOA                  638- 639   ///
      long   MDNUM1_R                   640- 648   ///
      long   MDNUM2_R                   649- 657   ///
      long   MDNUM3_R                   658- 666   ///
      byte   MEDINCSTQ                  667- 668   ///
      int    NCPT                       669- 672   ///
      int    OBSERVATION                673- 676   ///
      byte   PAY1                       677- 678   ///
      str    PAY1_X                     679- 689   ///
      int    PL_CBSA                    690- 692   ///
      byte   PL_NCHS                    693- 694   ///
      byte   PL_RUCC                    695- 696   ///
      byte   PL_UIC                     697- 698   ///
      byte   PL_UR_CAT4                 699- 700   ///
      byte   POA_Disch_Edit1            701- 702   ///
      byte   POA_Disch_Edit2            703- 704   ///
      byte   POA_Hosp_Edit1             705- 706   ///
      byte   POA_Hosp_Edit2             707- 708   ///
      byte   POA_Hosp_Edit3             709- 710   ///
      double POA_Hosp_Edit3_Value       711- 718   ///
      str    PointOfOrigin_X            719        ///
      str    PointOfOriginUB04          720        ///
      long   PRDAY1                     721- 725   ///
      long   PRDAY2                     726- 730   ///
      long   PRDAY3                     731- 735   ///
      long   PRDAY4                     736- 740   ///
      long   PRDAY5                     741- 745   ///
      long   PRDAY6                     746- 750   ///
      long   PRDAY7                     751- 755   ///
      long   PRDAY8                     756- 760   ///
      long   PRDAY9                     761- 765   ///
      long   PRDAY10                    766- 770   ///
      long   PRDAY11                    771- 775   ///
      long   PRDAY12                    776- 780   ///
      long   PRDAY13                    781- 785   ///
      long   PRDAY14                    786- 790   ///
      long   PRDAY15                    791- 795   ///
      long   PRDAY16                    796- 800   ///
      long   PRDAY17                    801- 805   ///
      long   PRDAY18                    806- 810   ///
      long   PRDAY19                    811- 815   ///
      long   PRDAY20                    816- 820   ///
      long   PRDAY21                    821- 825   ///
      long   PRDAY22                    826- 830   ///
      long   PRDAY23                    831- 835   ///
      long   PRDAY24                    836- 840   ///
      long   PRDAY25                    841- 845   ///
      str    PSTATE                     846- 847   ///
      str    PSTATE_GEO                 848- 849   ///
      long   PSTCO                      850- 854   ///
      long   PSTCO_GEO                  855- 859   ///
      byte   RACE                       860- 861   ///
      byte   RACE_EDIT                  862- 863   ///
      str    RACE_X                     864- 871   ///
      double TOTCHG                     872- 881   ///
      double TOTCHG_X                   882- 896   ///
      byte   TRAN_IN                    897- 898   ///
      byte   TRAN_OUT                   899- 900   ///
      int    YEAR                       901- 904   ///
      str    ZIP                        905- 909   ///
      int    ZIPINC_QRTL                910- 912   ///
      str    TOWN                       913- 914   ///
      int    AYEAR                      915- 918   ///
      byte   PRMONTH1                   919- 920   ///
      byte   PRMONTH2                   921- 922   ///
      byte   PRMONTH3                   923- 924   ///
      byte   PRMONTH4                   925- 926   ///
      byte   PRMONTH5                   927- 928   ///
      byte   PRMONTH6                   929- 930   ///
      byte   PRMONTH7                   931- 932   ///
      byte   PRMONTH8                   933- 934   ///
      byte   PRMONTH9                   935- 936   ///
      byte   PRMONTH10                  937- 938   ///
      byte   PRMONTH11                  939- 940   ///
      byte   PRMONTH12                  941- 942   ///
      byte   PRMONTH13                  943- 944   ///
      byte   PRMONTH14                  945- 946   ///
      byte   PRMONTH15                  947- 948   ///
      byte   PRMONTH16                  949- 950   ///
      byte   PRMONTH17                  951- 952   ///
      byte   PRMONTH18                  953- 954   ///
      byte   PRMONTH19                  955- 956   ///
      byte   PRMONTH20                  957- 958   ///
      byte   PRMONTH21                  959- 960   ///
      byte   PRMONTH22                  961- 962   ///
      byte   PRMONTH23                  963- 964   ///
      byte   PRMONTH24                  965- 966   ///
      byte   PRMONTH25                  967- 968   ///
      int    PRYEAR1                    969- 972   ///
      int    PRYEAR2                    973- 976   ///
      int    PRYEAR3                    977- 980   ///
      int    PRYEAR4                    981- 984   ///
      int    PRYEAR5                    985- 988   ///
      int    PRYEAR6                    989- 992   ///
      int    PRYEAR7                    993- 996   ///
      int    PRYEAR8                    997-1000   ///
      int    PRYEAR9                   1001-1004   ///
      int    PRYEAR10                  1005-1008   ///
      int    PRYEAR11                  1009-1012   ///
      int    PRYEAR12                  1013-1016   ///
      int    PRYEAR13                  1017-1020   ///
      int    PRYEAR14                  1021-1024   ///
      int    PRYEAR15                  1025-1028   ///
      int    PRYEAR16                  1029-1032   ///
      int    PRYEAR17                  1033-1036   ///
      int    PRYEAR18                  1037-1040   ///
      int    PRYEAR19                  1041-1044   ///
      int    PRYEAR20                  1045-1048   ///
      int    PRYEAR21                  1049-1052   ///
      int    PRYEAR22                  1053-1056   ///
      int    PRYEAR23                  1057-1060   ///
      int    PRYEAR24                  1061-1064   ///
      int    PRYEAR25                  1065-1068   ///
      using  "RI_SID_2019_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
label var CPT1                     "CPT/HCPCS procedure code 1"
label var CPT2                     "CPT/HCPCS procedure code 2"
label var CPT3                     "CPT/HCPCS procedure code 3"
label var CPT4                     "CPT/HCPCS procedure code 4"
label var CPT5                     "CPT/HCPCS procedure code 5"
label var CPT6                     "CPT/HCPCS procedure code 6"
label var CPT7                     "CPT/HCPCS procedure code 7"
label var CPT8                     "CPT/HCPCS procedure code 8"
label var CPT9                     "CPT/HCPCS procedure code 9"
label var CPT10                    "CPT/HCPCS procedure code 10"
label var CPT11                    "CPT/HCPCS procedure code 11"
label var CPTCCS1                  "CCS: CPT 1"
label var CPTCCS2                  "CCS: CPT 2"
label var CPTCCS3                  "CCS: CPT 3"
label var CPTCCS4                  "CCS: CPT 4"
label var CPTCCS5                  "CCS: CPT 5"
label var CPTCCS6                  "CCS: CPT 6"
label var CPTCCS7                  "CCS: CPT 7"
label var CPTCCS8                  "CCS: CPT 8"
label var CPTCCS9                  "CCS: CPT 9"
label var CPTCCS10                 "CCS: CPT 10"
label var CPTCCS11                 "CCS: CPT 11"
label var CPTDAY1                  "Number of days from admission to CPT1"
label var CPTDAY2                  "Number of days from admission to CPT2"
label var CPTDAY3                  "Number of days from admission to CPT3"
label var CPTDAY4                  "Number of days from admission to CPT4"
label var CPTDAY5                  "Number of days from admission to CPT5"
label var CPTDAY6                  "Number of days from admission to CPT6"
label var CPTDAY7                  "Number of days from admission to CPT7"
label var CPTDAY8                  "Number of days from admission to CPT8"
label var CPTDAY9                  "Number of days from admission to CPT9"
label var CPTDAY10                 "Number of days from admission to CPT10"
label var CPTDAY11                 "Number of days from admission to CPT11"
label var DaysCCU                  "Days in coronary care unit (as received from source)"
label var DaysICU                  "Days in medical/surgical intensive care unit (as received from source)"
label var DaysNICU                 "Days in neonetal care unit (as received from source)"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
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
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var OBSERVATION              "Time for observation services (as received from source)"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
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
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
label var RACE                     "Race (uniform)"
label var RACE_EDIT                "Race Edit Checks"
label var RACE_X                   "Race (as received from source)"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var TOWN                     "Patient town of residence (as received from source)"
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
recode AHOUR                     (-999 -888 -666=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
recode CPTCCS1                   (-99 -88 -66=.)
recode CPTCCS2                   (-99 -88 -66=.)
recode CPTCCS3                   (-99 -88 -66=.)
recode CPTCCS4                   (-99 -88 -66=.)
recode CPTCCS5                   (-99 -88 -66=.)
recode CPTCCS6                   (-99 -88 -66=.)
recode CPTCCS7                   (-99 -88 -66=.)
recode CPTCCS8                   (-99 -88 -66=.)
recode CPTCCS9                   (-99 -88 -66=.)
recode CPTCCS10                  (-99 -88 -66=.)
recode CPTCCS11                  (-99 -88 -66=.)
recode CPTDAY1                   (-99 -88 -66=.)
recode CPTDAY2                   (-99 -88 -66=.)
recode CPTDAY3                   (-99 -88 -66=.)
recode CPTDAY4                   (-99 -88 -66=.)
recode CPTDAY5                   (-99 -88 -66=.)
recode CPTDAY6                   (-99 -88 -66=.)
recode CPTDAY7                   (-99 -88 -66=.)
recode CPTDAY8                   (-99 -88 -66=.)
recode CPTDAY9                   (-99 -88 -66=.)
recode CPTDAY10                  (-99 -88 -66=.)
recode CPTDAY11                  (-99 -88 -66=.)
recode DaysCCU                   (-99 -88 -66=.)
recode DaysICU                   (-99 -88 -66=.)
recode DaysNICU                  (-99 -88 -66=.)
recode DHOUR                     (-999 -888 -666=.)
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
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCPT                      (-999 -888 -666=.)
recode OBSERVATION               (-999 -888 -666=.)
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

save "RI_SID_2019_CORE.dta", replace
