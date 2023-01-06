/*****************************************************************************
* Creation Date: 04/18/2017   
* NE_SID_2015q1q3_CORE.Do
* This program will load the 2015 NE ASCII CORE File into Stata.
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
      long   BLOOD                       24-  29   ///
      long   DaysToEvent                 30-  35   ///
      int    DHOUR                       36-  39   ///
      byte   DIED                        40-  41   ///
      str    DISP_X                      42-  43   ///
      byte   DISPUB04                    44-  45   ///
      byte   DISPUNIFORM                 46-  47   ///
      byte   DMONTH                      48-  49   ///
      byte   DQTR                        50-  51   ///
      int    DRG                         52-  54   ///
      int    DRG_NoPOA                   55-  57   ///
      int    DRG32                       58-  60   ///
      byte   DRGVER                      61-  62   ///
      str    DX_Admitting                63-  69   ///
      str    DX1                         70-  76   ///
      str    DX2                         77-  83   ///
      str    DX3                         84-  90   ///
      str    DX4                         91-  97   ///
      str    DX5                         98- 104   ///
      str    DX6                        105- 111   ///
      str    DX7                        112- 118   ///
      str    DX8                        119- 125   ///
      str    DX9                        126- 132   ///
      str    DX10                       133- 139   ///
      str    DX11                       140- 146   ///
      str    DX12                       147- 153   ///
      str    DX13                       154- 160   ///
      str    DX14                       161- 167   ///
      str    DX15                       168- 174   ///
      str    DX16                       175- 181   ///
      str    DX17                       182- 188   ///
      str    DX18                       189- 195   ///
      str    DX19                       196- 202   ///
      str    DX20                       203- 209   ///
      str    DX21                       210- 216   ///
      str    DX22                       217- 223   ///
      str    DX23                       224- 230   ///
      str    DX24                       231- 237   ///
      str    DX25                       238- 244   ///
      int    DXCCS1                     245- 248   ///
      int    DXCCS2                     249- 252   ///
      int    DXCCS3                     253- 256   ///
      int    DXCCS4                     257- 260   ///
      int    DXCCS5                     261- 264   ///
      int    DXCCS6                     265- 268   ///
      int    DXCCS7                     269- 272   ///
      int    DXCCS8                     273- 276   ///
      int    DXCCS9                     277- 280   ///
      int    DXCCS10                    281- 284   ///
      int    DXCCS11                    285- 288   ///
      int    DXCCS12                    289- 292   ///
      int    DXCCS13                    293- 296   ///
      int    DXCCS14                    297- 300   ///
      int    DXCCS15                    301- 304   ///
      int    DXCCS16                    305- 308   ///
      int    DXCCS17                    309- 312   ///
      int    DXCCS18                    313- 316   ///
      int    DXCCS19                    317- 320   ///
      int    DXCCS20                    321- 324   ///
      int    DXCCS21                    325- 328   ///
      int    DXCCS22                    329- 332   ///
      int    DXCCS23                    333- 336   ///
      int    DXCCS24                    337- 340   ///
      int    DXCCS25                    341- 344   ///
      str    DXPOA1                     345        ///
      str    DXPOA2                     346        ///
      str    DXPOA3                     347        ///
      str    DXPOA4                     348        ///
      str    DXPOA5                     349        ///
      str    DXPOA6                     350        ///
      str    DXPOA7                     351        ///
      str    DXPOA8                     352        ///
      str    DXPOA9                     353        ///
      str    DXPOA10                    354        ///
      str    DXPOA11                    355        ///
      str    DXPOA12                    356        ///
      str    DXPOA13                    357        ///
      str    DXPOA14                    358        ///
      str    DXPOA15                    359        ///
      str    DXPOA16                    360        ///
      str    DXPOA17                    361        ///
      str    DXPOA18                    362        ///
      str    DXPOA19                    363        ///
      str    DXPOA20                    364        ///
      str    DXPOA21                    365        ///
      str    DXPOA22                    366        ///
      str    DXPOA23                    367        ///
      str    DXPOA24                    368        ///
      str    DXPOA25                    369        ///
      int    DXVER                      370- 372   ///
      int    E_CCS1                     373- 376   ///
      int    E_CCS2                     377- 380   ///
      int    E_CCS3                     381- 384   ///
      int    E_CCS4                     385- 388   ///
      int    E_CCS5                     389- 392   ///
      int    E_CCS6                     393- 396   ///
      int    E_CCS7                     397- 400   ///
      str    E_POA1                     401        ///
      str    E_POA2                     402        ///
      str    E_POA3                     403        ///
      str    E_POA4                     404        ///
      str    E_POA5                     405        ///
      str    E_POA6                     406        ///
      str    E_POA7                     407        ///
      str    ECODE1                     408- 414   ///
      str    ECODE2                     415- 421   ///
      str    ECODE3                     422- 428   ///
      str    ECODE4                     429- 435   ///
      str    ECODE5                     436- 442   ///
      str    ECODE6                     443- 449   ///
      str    ECODE7                     450- 456   ///
      byte   FEMALE                     457- 458   ///
      byte   HCUP_ED                    459- 460   ///
      byte   HCUP_OS                    461- 462   ///
      int    HOSPBRTH                   463- 465   ///
      str    HOSPST                     466- 467   ///
      double KEY                        468- 482   ///
      long   LOS                        483- 487   ///
      long   LOS_X                      488- 493   ///
      str    MARITALSTATUS_X            494        ///
      str    MARITALSTATUSUB04          495        ///
      byte   MDC                        496- 497   ///
      byte   MDC_NoPOA                  498- 499   ///
      byte   MDC32                      500- 501   ///
      byte   MEDINCSTQ                  502- 503   ///
      int    NCHRONIC                   504- 506   ///
      int    NDX                        507- 509   ///
      byte   NECODE                     510- 511   ///
      byte   NEOMAT                     512- 513   ///
      int    NPR                        514- 516   ///
      byte   ORPROC                     517- 518   ///
      double OS_TIME                    519- 529   ///
      str    P7EDSRC_X                  530- 531   ///
      byte   PAY1                       532- 533   ///
      str    PAY1_X                     534- 535   ///
      byte   PAY2                       536- 537   ///
      str    PAY2_X                     538- 539   ///
      byte   PAY3                       540- 541   ///
      str    PAY3_X                     542- 543   ///
      int    PL_CBSA                    544- 546   ///
      byte   PL_NCHS                    547- 548   ///
      byte   PL_RUCC                    549- 550   ///
      byte   PL_UIC                     551- 552   ///
      byte   PL_UR_CAT4                 553- 554   ///
      byte   POA_Disch_Edit1            555- 556   ///
      byte   POA_Disch_Edit2            557- 558   ///
      byte   POA_Hosp_Edit1             559- 560   ///
      byte   POA_Hosp_Edit2             561- 562   ///
      byte   POA_Hosp_Edit3             563- 564   ///
      double POA_Hosp_Edit3_Value       565- 572   ///
      str    PointOfOrigin_X            573        ///
      str    PointOfOriginUB04          574        ///
      str    PR1                        575- 581   ///
      str    PR2                        582- 588   ///
      str    PR3                        589- 595   ///
      str    PR4                        596- 602   ///
      str    PR5                        603- 609   ///
      str    PR6                        610- 616   ///
      str    PR7                        617- 623   ///
      str    PR8                        624- 630   ///
      str    PR9                        631- 637   ///
      str    PR10                       638- 644   ///
      str    PR11                       645- 651   ///
      str    PR12                       652- 658   ///
      str    PR13                       659- 665   ///
      str    PR14                       666- 672   ///
      str    PR15                       673- 679   ///
      int    PRCCS1                     680- 682   ///
      int    PRCCS2                     683- 685   ///
      int    PRCCS3                     686- 688   ///
      int    PRCCS4                     689- 691   ///
      int    PRCCS5                     692- 694   ///
      int    PRCCS6                     695- 697   ///
      int    PRCCS7                     698- 700   ///
      int    PRCCS8                     701- 703   ///
      int    PRCCS9                     704- 706   ///
      int    PRCCS10                    707- 709   ///
      int    PRCCS11                    710- 712   ///
      int    PRCCS12                    713- 715   ///
      int    PRCCS13                    716- 718   ///
      int    PRCCS14                    719- 721   ///
      int    PRCCS15                    722- 724   ///
      long   PRDAY1                     725- 729   ///
      long   PRDAY2                     730- 734   ///
      long   PRDAY3                     735- 739   ///
      long   PRDAY4                     740- 744   ///
      long   PRDAY5                     745- 749   ///
      long   PRDAY6                     750- 754   ///
      long   PRDAY7                     755- 759   ///
      long   PRDAY8                     760- 764   ///
      long   PRDAY9                     765- 769   ///
      long   PRDAY10                    770- 774   ///
      long   PRDAY11                    775- 779   ///
      long   PRDAY12                    780- 784   ///
      long   PRDAY13                    785- 789   ///
      long   PRDAY14                    790- 794   ///
      long   PRDAY15                    795- 799   ///
      int    PROCTYPE                   800- 802   ///
      int    PRVER                      803- 805   ///
      str    PSTATE                     806- 807   ///
      long   PSTCO2                     808- 812   ///
      byte   SERVICELINE                813- 814   ///
      double TOTCHG                     815- 824   ///
      double TOTCHG_X                   825- 839   ///
      byte   TRAN_IN                    840- 841   ///
      byte   TRAN_OUT                   842- 843   ///
      long   VisitLink                  844- 852   ///
      int    YEAR                       853- 856   ///
      str    ZIP                        857- 861   ///
      int    ZIPINC_QRTL                862- 864   ///
      str    TOWN                       865- 894   ///
      int    AYEAR                      895- 898   ///
      byte   BMONTH                     899- 900   ///
      int    BYEAR                      901- 904   ///
      byte   PRMONTH1                   905- 906   ///
      byte   PRMONTH2                   907- 908   ///
      byte   PRMONTH3                   909- 910   ///
      byte   PRMONTH4                   911- 912   ///
      byte   PRMONTH5                   913- 914   ///
      byte   PRMONTH6                   915- 916   ///
      byte   PRMONTH7                   917- 918   ///
      byte   PRMONTH8                   919- 920   ///
      byte   PRMONTH9                   921- 922   ///
      byte   PRMONTH10                  923- 924   ///
      byte   PRMONTH11                  925- 926   ///
      byte   PRMONTH12                  927- 928   ///
      byte   PRMONTH13                  929- 930   ///
      byte   PRMONTH14                  931- 932   ///
      byte   PRMONTH15                  933- 934   ///
      int    PRYEAR1                    935- 938   ///
      int    PRYEAR2                    939- 942   ///
      int    PRYEAR3                    943- 946   ///
      int    PRYEAR4                    947- 950   ///
      int    PRYEAR5                    951- 954   ///
      int    PRYEAR6                    955- 958   ///
      int    PRYEAR7                    959- 962   ///
      int    PRYEAR8                    963- 966   ///
      int    PRYEAR9                    967- 970   ///
      int    PRYEAR10                   971- 974   ///
      int    PRYEAR11                   975- 978   ///
      int    PRYEAR12                   979- 982   ///
      int    PRYEAR13                   983- 986   ///
      int    PRYEAR14                   987- 990   ///
      int    PRYEAR15                   991- 994   ///
      using  "NE_SID_2015q1q3_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var BLOOD                    "Pints of blood furnished to the patient"
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
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var E_POA7                   "E Code 7, present on admission indicator"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MARITALSTATUS_X          "Patient's marital status (as received from source)"
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDC32                    "MDC, version 32"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCHRONIC                 "Number of chronic conditions"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
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
label var PR15                     "Procedure 15"
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
label var PRCCS15                  "CCS: procedure 15"
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
label var PRDAY15                  "Number of days from admission to PR15"
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var SERVICELINE              "Hospital Service Line"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var VisitLink                "Visit linkage variable"
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var TOWN                     "Patient town of residence (as received from source)"
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

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BLOOD                     (-99999 -88888 -66666=.)
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
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDC32                     (-9 -8 -6 -5=.)
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
recode PRCCS15                   (-99 -88 -66=.)
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
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
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
recode PRMONTH15                 (-9 -8 -6 -5=.)
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

save "NE_SID_2015q1q3_CORE.dta", replace
