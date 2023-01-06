/*****************************************************************************
* Creation Date: 07/27/2022   
* NY_SID_2019_CORE.Do
* This program will load the 2019 NY ASCII CORE File into Stata.
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
      long   BLOOD                       20-  25   ///
      int    BP_DIASTOLIC_X              26-  29   ///
      int    BP_SYSTOLIC_X               30-  33   ///
      int    BWT                         34-  37   ///
      long   DaysToEvent                 38-  43   ///
      int    DHOUR                       44-  47   ///
      byte   DIED                        48-  49   ///
      str    DISP_X                      50-  51   ///
      byte   DISPUB04                    52-  53   ///
      byte   DISPUNIFORM                 54-  55   ///
      byte   DMONTH                      56-  57   ///
      byte   DQTR                        58-  59   ///
      int    DRG                         60-  62   ///
      int    DRG_NoPOA                   63-  65   ///
      byte   DRGVER                      66-  67   ///
      str    DSHOSPID                    68-  84   ///
      str    DXPOA1                      85        ///
      str    DXPOA2                      86        ///
      str    DXPOA3                      87        ///
      str    DXPOA4                      88        ///
      str    DXPOA5                      89        ///
      str    DXPOA6                      90        ///
      str    DXPOA7                      91        ///
      str    DXPOA8                      92        ///
      str    DXPOA9                      93        ///
      str    DXPOA10                     94        ///
      str    DXPOA11                     95        ///
      str    DXPOA12                     96        ///
      str    DXPOA13                     97        ///
      str    DXPOA14                     98        ///
      str    DXPOA15                     99        ///
      str    DXPOA16                    100        ///
      str    DXPOA17                    101        ///
      str    DXPOA18                    102        ///
      str    DXPOA19                    103        ///
      str    DXPOA20                    104        ///
      str    DXPOA21                    105        ///
      str    DXPOA22                    106        ///
      str    DXPOA23                    107        ///
      str    DXPOA24                    108        ///
      str    DXPOA25                    109        ///
      str    DXPOA26                    110        ///
      str    DXPOA27                    111        ///
      str    DXPOA28                    112        ///
      str    DXPOA29                    113        ///
      str    DXPOA30                    114        ///
      str    DXPOA31                    115        ///
      str    DXPOA32                    116        ///
      str    DXPOA33                    117        ///
      str    DXPOA34                    118        ///
      str    DXPOA35                    119        ///
      byte   FEMALE                     120- 121   ///
      byte   HCUP_ED                    122- 123   ///
      byte   HCUP_OS                    124- 125   ///
      int    HEART_RATE_X               126- 129   ///
      byte   HISPANIC                   130- 131   ///
      str    HISPANIC_X                 132- 156   ///
      byte   Homeless                   157- 158   ///
      str    HOSP_NPI                   159- 168   ///
      str    HOSPST                     169- 170   ///
      int    I10_BIRTH                  171- 173   ///
      int    I10_DELIVERY               174- 176   ///
      str    I10_DX_Admitting           177- 183   ///
      str    I10_DX1                    184- 190   ///
      str    I10_DX2                    191- 197   ///
      str    I10_DX3                    198- 204   ///
      str    I10_DX4                    205- 211   ///
      str    I10_DX5                    212- 218   ///
      str    I10_DX6                    219- 225   ///
      str    I10_DX7                    226- 232   ///
      str    I10_DX8                    233- 239   ///
      str    I10_DX9                    240- 246   ///
      str    I10_DX10                   247- 253   ///
      str    I10_DX11                   254- 260   ///
      str    I10_DX12                   261- 267   ///
      str    I10_DX13                   268- 274   ///
      str    I10_DX14                   275- 281   ///
      str    I10_DX15                   282- 288   ///
      str    I10_DX16                   289- 295   ///
      str    I10_DX17                   296- 302   ///
      str    I10_DX18                   303- 309   ///
      str    I10_DX19                   310- 316   ///
      str    I10_DX20                   317- 323   ///
      str    I10_DX21                   324- 330   ///
      str    I10_DX22                   331- 337   ///
      str    I10_DX23                   338- 344   ///
      str    I10_DX24                   345- 351   ///
      str    I10_DX25                   352- 358   ///
      str    I10_DX26                   359- 365   ///
      str    I10_DX27                   366- 372   ///
      str    I10_DX28                   373- 379   ///
      str    I10_DX29                   380- 386   ///
      str    I10_DX30                   387- 393   ///
      str    I10_DX31                   394- 400   ///
      str    I10_DX32                   401- 407   ///
      str    I10_DX33                   408- 414   ///
      str    I10_DX34                   415- 421   ///
      str    I10_DX35                   422- 428   ///
      int    I10_NDX                    429- 431   ///
      int    I10_NPR                    432- 434   ///
      byte   I10_ORPROC                 435- 436   ///
      str    I10_PR1                    437- 443   ///
      str    I10_PR2                    444- 450   ///
      str    I10_PR3                    451- 457   ///
      str    I10_PR4                    458- 464   ///
      str    I10_PR5                    465- 471   ///
      str    I10_PR6                    472- 478   ///
      str    I10_PR7                    479- 485   ///
      str    I10_PR8                    486- 492   ///
      str    I10_PR9                    493- 499   ///
      str    I10_PR10                   500- 506   ///
      str    I10_PR11                   507- 513   ///
      str    I10_PR12                   514- 520   ///
      str    I10_PR13                   521- 527   ///
      str    I10_PR14                   528- 534   ///
      str    I10_PR15                   535- 541   ///
      str    I10_PR16                   542- 548   ///
      str    I10_PR17                   549- 555   ///
      str    I10_PR18                   556- 562   ///
      str    I10_PR19                   563- 569   ///
      str    I10_PR20                   570- 576   ///
      str    I10_PR21                   577- 583   ///
      str    I10_PR22                   584- 590   ///
      str    I10_PR23                   591- 597   ///
      str    I10_PR24                   598- 604   ///
      str    I10_PR25                   605- 611   ///
      int    I10_PROCTYPE               612- 614   ///
      byte   I10_SERVICELINE            615- 616   ///
      double KEY                        617- 631   ///
      long   LOS                        632- 636   ///
      long   LOS_X                      637- 642   ///
      str    MARITALSTATUS_X            643        ///
      str    MARITALSTATUSUB04          644        ///
      byte   MDC                        645- 646   ///
      byte   MDC_NoPOA                  647- 648   ///
      long   MDNUM1_R                   649- 657   ///
      long   MDNUM2_R                   658- 666   ///
      byte   MEDINCSTQ                  667- 668   ///
      double OS_TIME                    669- 679   ///
      str    P7EDSRC_X                  680- 681   ///
      byte   PAY1                       682- 683   ///
      str    PAY1_X                     684- 688   ///
      byte   PAY2                       689- 690   ///
      str    PAY2_X                     691- 695   ///
      byte   PAY3                       696- 697   ///
      str    PAY3_X                     698- 702   ///
      int    PL_CBSA                    703- 705   ///
      byte   PL_NCHS                    706- 707   ///
      byte   PL_RUCC                    708- 709   ///
      byte   PL_UIC                     710- 711   ///
      byte   PL_UR_CAT4                 712- 713   ///
      byte   POA_Disch_Edit1            714- 715   ///
      byte   POA_Disch_Edit2            716- 717   ///
      byte   POA_Hosp_Edit1             718- 719   ///
      byte   POA_Hosp_Edit2             720- 721   ///
      byte   POA_Hosp_Edit3             722- 723   ///
      double POA_Hosp_Edit3_Value       724- 731   ///
      str    PointOfOrigin_X            732        ///
      str    PointOfOriginUB04          733        ///
      long   PRDAY1                     734- 738   ///
      long   PRDAY2                     739- 743   ///
      long   PRDAY3                     744- 748   ///
      long   PRDAY4                     749- 753   ///
      long   PRDAY5                     754- 758   ///
      long   PRDAY6                     759- 763   ///
      long   PRDAY7                     764- 768   ///
      long   PRDAY8                     769- 773   ///
      long   PRDAY9                     774- 778   ///
      long   PRDAY10                    779- 783   ///
      long   PRDAY11                    784- 788   ///
      long   PRDAY12                    789- 793   ///
      long   PRDAY13                    794- 798   ///
      long   PRDAY14                    799- 803   ///
      long   PRDAY15                    804- 808   ///
      long   PRDAY16                    809- 813   ///
      long   PRDAY17                    814- 818   ///
      long   PRDAY18                    819- 823   ///
      long   PRDAY19                    824- 828   ///
      long   PRDAY20                    829- 833   ///
      long   PRDAY21                    834- 838   ///
      long   PRDAY22                    839- 843   ///
      long   PRDAY23                    844- 848   ///
      long   PRDAY24                    849- 853   ///
      long   PRDAY25                    854- 858   ///
      str    PSTATE                     859- 860   ///
      str    PSTATE_GEO                 861- 862   ///
      long   PSTCO                      863- 867   ///
      long   PSTCO_GEO                  868- 872   ///
      byte   RACE                       873- 874   ///
      byte   RACE_EDIT                  875- 876   ///
      str    RACE_X                     877- 920   ///
      double TOTCHG                     921- 930   ///
      double TOTCHG_X                   931- 945   ///
      byte   TRAN_IN                    946- 947   ///
      byte   TRAN_OUT                   948- 949   ///
      long   VisitLink                  950- 958   ///
      int    YEAR                       959- 962   ///
      str    ZIP                        963- 967   ///
      str    ZIP3                       968- 970   ///
      int    ZIPINC_QRTL                971- 973   ///
      int    AYEAR                      974- 977   ///
      byte   BMONTH                     978- 979   ///
      int    BYEAR                      980- 983   ///
      byte   PRMONTH1                   984- 985   ///
      byte   PRMONTH2                   986- 987   ///
      byte   PRMONTH3                   988- 989   ///
      byte   PRMONTH4                   990- 991   ///
      byte   PRMONTH5                   992- 993   ///
      byte   PRMONTH6                   994- 995   ///
      byte   PRMONTH7                   996- 997   ///
      byte   PRMONTH8                   998- 999   ///
      byte   PRMONTH9                  1000-1001   ///
      byte   PRMONTH10                 1002-1003   ///
      byte   PRMONTH11                 1004-1005   ///
      byte   PRMONTH12                 1006-1007   ///
      byte   PRMONTH13                 1008-1009   ///
      byte   PRMONTH14                 1010-1011   ///
      byte   PRMONTH15                 1012-1013   ///
      byte   PRMONTH16                 1014-1015   ///
      byte   PRMONTH17                 1016-1017   ///
      byte   PRMONTH18                 1018-1019   ///
      byte   PRMONTH19                 1020-1021   ///
      byte   PRMONTH20                 1022-1023   ///
      byte   PRMONTH21                 1024-1025   ///
      byte   PRMONTH22                 1026-1027   ///
      byte   PRMONTH23                 1028-1029   ///
      byte   PRMONTH24                 1030-1031   ///
      byte   PRMONTH25                 1032-1033   ///
      int    PRYEAR1                   1034-1037   ///
      int    PRYEAR2                   1038-1041   ///
      int    PRYEAR3                   1042-1045   ///
      int    PRYEAR4                   1046-1049   ///
      int    PRYEAR5                   1050-1053   ///
      int    PRYEAR6                   1054-1057   ///
      int    PRYEAR7                   1058-1061   ///
      int    PRYEAR8                   1062-1065   ///
      int    PRYEAR9                   1066-1069   ///
      int    PRYEAR10                  1070-1073   ///
      int    PRYEAR11                  1074-1077   ///
      int    PRYEAR12                  1078-1081   ///
      int    PRYEAR13                  1082-1085   ///
      int    PRYEAR14                  1086-1089   ///
      int    PRYEAR15                  1090-1093   ///
      int    PRYEAR16                  1094-1097   ///
      int    PRYEAR17                  1098-1101   ///
      int    PRYEAR18                  1102-1105   ///
      int    PRYEAR19                  1106-1109   ///
      int    PRYEAR20                  1110-1113   ///
      int    PRYEAR21                  1114-1117   ///
      int    PRYEAR22                  1118-1121   ///
      int    PRYEAR23                  1122-1125   ///
      int    PRYEAR24                  1126-1129   ///
      int    PRYEAR25                  1130-1133   ///
      using  "NY_SID_2019_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BLOOD                    "Pints of blood furnished to the patient"
label var BP_DIASTOLIC_X           "Diastolic blood pressure of the patient, as received from data source"
label var BP_SYSTOLIC_X            "Systolic blood pressure of the patient, as received from data source"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HEART_RATE_X             "Heart rate of the patient, as received from data source"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
label var HOSP_NPI                 "Hospital NPI"
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
label var MARITALSTATUS_X          "Patient's marital status (as received from source)"
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
label var PAY3                     "Tertiary expected payer (uniform)"
label var PAY3_X                   "Tertiary expected payer (as received from source)"
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
recode BLOOD                     (-99999 -88888 -66666=.)
recode BP_DIASTOLIC_X            (-999 -888 -666=.)
recode BP_SYSTOLIC_X             (-999 -888 -666=.)
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
recode DRGVER                    (-9 -8 -6 -5=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HEART_RATE_X              (-999 -888 -666=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode I10_BIRTH                 (-99 -88 -66=.)
recode I10_DELIVERY              (-99 -88 -66=.)
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
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_EDIT                 (-9 -8 -6 -5=.)
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

save "NY_SID_2019_CORE.dta", replace
