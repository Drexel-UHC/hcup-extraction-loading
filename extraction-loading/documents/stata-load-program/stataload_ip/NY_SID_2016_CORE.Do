/*****************************************************************************
* Creation Date: 09/19/2018   
* NY_SID_2016_CORE.Do
* This program will load the 2016 NY ASCII CORE File into Stata.
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
      byte   DRGVER                      65-  66   ///
      str    DSHOSPID                    67-  83   ///
      str    DXPOA1                      84        ///
      str    DXPOA2                      85        ///
      str    DXPOA3                      86        ///
      str    DXPOA4                      87        ///
      str    DXPOA5                      88        ///
      str    DXPOA6                      89        ///
      str    DXPOA7                      90        ///
      str    DXPOA8                      91        ///
      str    DXPOA9                      92        ///
      str    DXPOA10                     93        ///
      str    DXPOA11                     94        ///
      str    DXPOA12                     95        ///
      str    DXPOA13                     96        ///
      str    DXPOA14                     97        ///
      str    DXPOA15                     98        ///
      str    DXPOA16                     99        ///
      str    DXPOA17                    100        ///
      str    DXPOA18                    101        ///
      str    DXPOA19                    102        ///
      str    DXPOA20                    103        ///
      str    DXPOA21                    104        ///
      str    DXPOA22                    105        ///
      str    DXPOA23                    106        ///
      str    DXPOA24                    107        ///
      str    DXPOA25                    108        ///
      int    DXVER                      109- 111   ///
      str    E_POA1                     112        ///
      str    E_POA2                     113        ///
      str    E_POA3                     114        ///
      str    E_POA4                     115        ///
      str    E_POA5                     116        ///
      str    E_POA6                     117        ///
      str    E_POA7                     118        ///
      str    E_POA8                     119        ///
      str    E_POA9                     120        ///
      byte   FEMALE                     121- 122   ///
      byte   HCUP_ED                    123- 124   ///
      byte   HCUP_OS                    125- 126   ///
      byte   HISPANIC                   127- 128   ///
      str    HISPANIC_X                 129        ///
      byte   Homeless                   130- 131   ///
      str    HOSPST                     132- 133   ///
      str    I10_DX_Admitting           134- 140   ///
      str    I10_DX1                    141- 147   ///
      str    I10_DX2                    148- 154   ///
      str    I10_DX3                    155- 161   ///
      str    I10_DX4                    162- 168   ///
      str    I10_DX5                    169- 175   ///
      str    I10_DX6                    176- 182   ///
      str    I10_DX7                    183- 189   ///
      str    I10_DX8                    190- 196   ///
      str    I10_DX9                    197- 203   ///
      str    I10_DX10                   204- 210   ///
      str    I10_DX11                   211- 217   ///
      str    I10_DX12                   218- 224   ///
      str    I10_DX13                   225- 231   ///
      str    I10_DX14                   232- 238   ///
      str    I10_DX15                   239- 245   ///
      str    I10_DX16                   246- 252   ///
      str    I10_DX17                   253- 259   ///
      str    I10_DX18                   260- 266   ///
      str    I10_DX19                   267- 273   ///
      str    I10_DX20                   274- 280   ///
      str    I10_DX21                   281- 287   ///
      str    I10_DX22                   288- 294   ///
      str    I10_DX23                   295- 301   ///
      str    I10_DX24                   302- 308   ///
      str    I10_DX25                   309- 315   ///
      str    I10_ECAUSE1                316- 322   ///
      str    I10_ECAUSE2                323- 329   ///
      str    I10_ECAUSE3                330- 336   ///
      str    I10_ECAUSE4                337- 343   ///
      str    I10_ECAUSE5                344- 350   ///
      str    I10_ECAUSE6                351- 357   ///
      str    I10_ECAUSE7                358- 364   ///
      str    I10_ECAUSE8                365- 371   ///
      str    I10_ECAUSE9                372- 378   ///
      int    I10_NDX                    379- 381   ///
      byte   I10_NECAUSE                382- 383   ///
      int    I10_NPR                    384- 386   ///
      str    I10_PR1                    387- 393   ///
      str    I10_PR2                    394- 400   ///
      str    I10_PR3                    401- 407   ///
      str    I10_PR4                    408- 414   ///
      str    I10_PR5                    415- 421   ///
      str    I10_PR6                    422- 428   ///
      str    I10_PR7                    429- 435   ///
      str    I10_PR8                    436- 442   ///
      str    I10_PR9                    443- 449   ///
      str    I10_PR10                   450- 456   ///
      str    I10_PR11                   457- 463   ///
      str    I10_PR12                   464- 470   ///
      str    I10_PR13                   471- 477   ///
      str    I10_PR14                   478- 484   ///
      int    I10_PROCTYPE               485- 487   ///
      double KEY                        488- 502   ///
      long   LOS                        503- 507   ///
      long   LOS_X                      508- 513   ///
      byte   MDC                        514- 515   ///
      byte   MDC_NoPOA                  516- 517   ///
      long   MDNUM1_R                   518- 526   ///
      long   MDNUM2_R                   527- 535   ///
      byte   MEDINCSTQ                  536- 537   ///
      double OS_TIME                    538- 548   ///
      byte   PAY1                       549- 550   ///
      str    PAY1_X                     551- 552   ///
      byte   PAY2                       553- 554   ///
      str    PAY2_X                     555- 556   ///
      byte   PAY3                       557- 558   ///
      str    PAY3_X                     559- 560   ///
      str    PAYER1_X                   561- 565   ///
      str    PAYER2_X                   566- 570   ///
      int    PL_CBSA                    571- 573   ///
      byte   PL_NCHS                    574- 575   ///
      byte   PL_RUCC                    576- 577   ///
      byte   PL_UIC                     578- 579   ///
      byte   PL_UR_CAT4                 580- 581   ///
      byte   POA_Disch_Edit1            582- 583   ///
      byte   POA_Disch_Edit2            584- 585   ///
      byte   POA_Hosp_Edit1             586- 587   ///
      byte   POA_Hosp_Edit2             588- 589   ///
      byte   POA_Hosp_Edit3             590- 591   ///
      double POA_Hosp_Edit3_Value       592- 599   ///
      str    PointOfOrigin_X            600        ///
      str    PointOfOriginUB04          601        ///
      long   PRDAY1                     602- 606   ///
      long   PRDAY2                     607- 611   ///
      long   PRDAY3                     612- 616   ///
      long   PRDAY4                     617- 621   ///
      long   PRDAY5                     622- 626   ///
      long   PRDAY6                     627- 631   ///
      long   PRDAY7                     632- 636   ///
      long   PRDAY8                     637- 641   ///
      long   PRDAY9                     642- 646   ///
      long   PRDAY10                    647- 651   ///
      long   PRDAY11                    652- 656   ///
      long   PRDAY12                    657- 661   ///
      long   PRDAY13                    662- 666   ///
      long   PRDAY14                    667- 671   ///
      int    PRVER                      672- 674   ///
      str    PSTATE                     675- 676   ///
      long   PSTCO                      677- 681   ///
      long   PSTCO2                     682- 686   ///
      byte   RACE                       687- 688   ///
      str    RACE_X                     689- 690   ///
      double TOTCHG                     691- 700   ///
      double TOTCHG_X                   701- 715   ///
      byte   TRAN_IN                    716- 717   ///
      byte   TRAN_OUT                   718- 719   ///
      long   VisitLink                  720- 728   ///
      int    YEAR                       729- 732   ///
      str    ZIP                        733- 737   ///
      str    ZIP3                       738- 740   ///
      int    ZIPINC_QRTL                741- 743   ///
      int    AYEAR                      744- 747   ///
      byte   BMONTH                     748- 749   ///
      int    BYEAR                      750- 753   ///
      byte   PRMONTH1                   754- 755   ///
      byte   PRMONTH2                   756- 757   ///
      byte   PRMONTH3                   758- 759   ///
      byte   PRMONTH4                   760- 761   ///
      byte   PRMONTH5                   762- 763   ///
      byte   PRMONTH6                   764- 765   ///
      byte   PRMONTH7                   766- 767   ///
      byte   PRMONTH8                   768- 769   ///
      byte   PRMONTH9                   770- 771   ///
      byte   PRMONTH10                  772- 773   ///
      byte   PRMONTH11                  774- 775   ///
      byte   PRMONTH12                  776- 777   ///
      byte   PRMONTH13                  778- 779   ///
      byte   PRMONTH14                  780- 781   ///
      int    PRYEAR1                    782- 785   ///
      int    PRYEAR2                    786- 789   ///
      int    PRYEAR3                    790- 793   ///
      int    PRYEAR4                    794- 797   ///
      int    PRYEAR5                    798- 801   ///
      int    PRYEAR6                    802- 805   ///
      int    PRYEAR7                    806- 809   ///
      int    PRYEAR8                    810- 813   ///
      int    PRYEAR9                    814- 817   ///
      int    PRYEAR10                   818- 821   ///
      int    PRYEAR11                   822- 825   ///
      int    PRYEAR12                   826- 829   ///
      int    PRYEAR13                   830- 833   ///
      int    PRYEAR14                   834- 837   ///
      using  "NY_SID_2016_CORE.ASC"

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
label var E_POA1                   "External cause 1, present on admission indicator"
label var E_POA2                   "External cause 2, present on admission indicator"
label var E_POA3                   "External cause 3, present on admission indicator"
label var E_POA4                   "External cause 4, present on admission indicator"
label var E_POA5                   "External cause 5, present on admission indicator"
label var E_POA6                   "External cause 6, present on admission indicator"
label var E_POA7                   "External cause 7, present on admission indicator"
label var E_POA8                   "External cause 8, present on admission indicator"
label var E_POA9                   "External cause 9, present on admission indicator"
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
label var I10_ECAUSE1              "ICD-10-CM External cause 1"
label var I10_ECAUSE2              "ICD-10-CM External cause 2"
label var I10_ECAUSE3              "ICD-10-CM External cause 3"
label var I10_ECAUSE4              "ICD-10-CM External cause 4"
label var I10_ECAUSE5              "ICD-10-CM External cause 5"
label var I10_ECAUSE6              "ICD-10-CM External cause 6"
label var I10_ECAUSE7              "ICD-10-CM External cause 7"
label var I10_ECAUSE8              "ICD-10-CM External cause 8"
label var I10_ECAUSE9              "ICD-10-CM External cause 9"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
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
recode DRGVER                    (-9 -8 -6 -5=.)
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NECAUSE               (-9 -8 -6 -5=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
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

save "NY_SID_2016_CORE.dta", replace
