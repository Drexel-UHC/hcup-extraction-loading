/*****************************************************************************
* Creation Date: 07/20/2021   
* MO_SID_2018_CORE.Do
* This program will load the 2018 MO ASCII CORE File into Stata.
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
      long   DaysToEvent                 20-  25   ///
      int    DHOUR                       26-  29   ///
      byte   DIED                        30-  31   ///
      str    DISP_X                      32-  33   ///
      byte   DISPUB04                    34-  35   ///
      byte   DISPUNIFORM                 36-  37   ///
      byte   DMONTH                      38-  39   ///
      byte   DQTR                        40-  41   ///
      int    DRG                         42-  44   ///
      int    DRG_NoPOA                   45-  47   ///
      byte   DRGVER                      48-  49   ///
      str    DXPOA1                      50        ///
      str    DXPOA2                      51        ///
      str    DXPOA3                      52        ///
      str    DXPOA4                      53        ///
      str    DXPOA5                      54        ///
      str    DXPOA6                      55        ///
      str    DXPOA7                      56        ///
      str    DXPOA8                      57        ///
      str    DXPOA9                      58        ///
      str    DXPOA10                     59        ///
      str    DXPOA11                     60        ///
      str    DXPOA12                     61        ///
      str    DXPOA13                     62        ///
      str    DXPOA14                     63        ///
      str    DXPOA15                     64        ///
      str    DXPOA16                     65        ///
      str    DXPOA17                     66        ///
      str    DXPOA18                     67        ///
      str    DXPOA19                     68        ///
      str    DXPOA20                     69        ///
      str    DXPOA21                     70        ///
      str    DXPOA22                     71        ///
      str    DXPOA23                     72        ///
      str    DXPOA24                     73        ///
      str    DXPOA25                     74        ///
      str    DXPOA26                     75        ///
      str    DXPOA27                     76        ///
      str    DXPOA28                     77        ///
      str    DXPOA29                     78        ///
      str    DXPOA30                     79        ///
      byte   FEMALE                      80-  81   ///
      byte   HCUP_ED                     82-  83   ///
      byte   HCUP_OS                     84-  85   ///
      byte   HISPANIC                    86-  87   ///
      str    HISPANIC_X                  88        ///
      byte   Homeless                    89-  90   ///
      byte   HospitalUnit                91-  92   ///
      str    HOSPST                      93-  94   ///
      str    I10_DX1                     95- 101   ///
      str    I10_DX2                    102- 108   ///
      str    I10_DX3                    109- 115   ///
      str    I10_DX4                    116- 122   ///
      str    I10_DX5                    123- 129   ///
      str    I10_DX6                    130- 136   ///
      str    I10_DX7                    137- 143   ///
      str    I10_DX8                    144- 150   ///
      str    I10_DX9                    151- 157   ///
      str    I10_DX10                   158- 164   ///
      str    I10_DX11                   165- 171   ///
      str    I10_DX12                   172- 178   ///
      str    I10_DX13                   179- 185   ///
      str    I10_DX14                   186- 192   ///
      str    I10_DX15                   193- 199   ///
      str    I10_DX16                   200- 206   ///
      str    I10_DX17                   207- 213   ///
      str    I10_DX18                   214- 220   ///
      str    I10_DX19                   221- 227   ///
      str    I10_DX20                   228- 234   ///
      str    I10_DX21                   235- 241   ///
      str    I10_DX22                   242- 248   ///
      str    I10_DX23                   249- 255   ///
      str    I10_DX24                   256- 262   ///
      str    I10_DX25                   263- 269   ///
      str    I10_DX26                   270- 276   ///
      str    I10_DX27                   277- 283   ///
      str    I10_DX28                   284- 290   ///
      str    I10_DX29                   291- 297   ///
      str    I10_DX30                   298- 304   ///
      int    I10_NDX                    305- 307   ///
      int    I10_NPR                    308- 310   ///
      str    I10_PR1                    311- 317   ///
      str    I10_PR2                    318- 324   ///
      str    I10_PR3                    325- 331   ///
      str    I10_PR4                    332- 338   ///
      str    I10_PR5                    339- 345   ///
      str    I10_PR6                    346- 352   ///
      str    I10_PR7                    353- 359   ///
      str    I10_PR8                    360- 366   ///
      str    I10_PR9                    367- 373   ///
      str    I10_PR10                   374- 380   ///
      str    I10_PR11                   381- 387   ///
      str    I10_PR12                   388- 394   ///
      str    I10_PR13                   395- 401   ///
      str    I10_PR14                   402- 408   ///
      str    I10_PR15                   409- 415   ///
      str    I10_PR16                   416- 422   ///
      str    I10_PR17                   423- 429   ///
      str    I10_PR18                   430- 436   ///
      str    I10_PR19                   437- 443   ///
      str    I10_PR20                   444- 450   ///
      str    I10_PR21                   451- 457   ///
      str    I10_PR22                   458- 464   ///
      str    I10_PR23                   465- 471   ///
      str    I10_PR24                   472- 478   ///
      str    I10_PR25                   479- 485   ///
      int    I10_PROCTYPE               486- 488   ///
      double KEY                        489- 503   ///
      long   LOS                        504- 508   ///
      long   LOS_X                      509- 514   ///
      byte   MDC                        515- 516   ///
      byte   MDC_NoPOA                  517- 518   ///
      long   MDNUM1_R                   519- 527   ///
      long   MDNUM2_R                   528- 536   ///
      byte   MEDINCSTQ                  537- 538   ///
      int    OBSERVATION                539- 542   ///
      double OS_TIME                    543- 553   ///
      byte   PAY1                       554- 555   ///
      str    PAY1_X                     556- 557   ///
      byte   PAY2                       558- 559   ///
      str    PAY2_X                     560- 561   ///
      byte   PAY3                       562- 563   ///
      str    PAY3_X                     564- 565   ///
      int    PL_CBSA                    566- 568   ///
      byte   PL_NCHS                    569- 570   ///
      byte   PL_RUCC                    571- 572   ///
      byte   PL_UIC                     573- 574   ///
      byte   PL_UR_CAT4                 575- 576   ///
      byte   POA_Disch_Edit1            577- 578   ///
      byte   POA_Disch_Edit2            579- 580   ///
      byte   POA_Hosp_Edit1             581- 582   ///
      byte   POA_Hosp_Edit2             583- 584   ///
      byte   POA_Hosp_Edit3             585- 586   ///
      double POA_Hosp_Edit3_Value       587- 594   ///
      str    PointOfOrigin_X            595        ///
      str    PointOfOriginUB04          596        ///
      long   PRDAY1                     597- 601   ///
      long   PRDAY2                     602- 606   ///
      long   PRDAY3                     607- 611   ///
      long   PRDAY4                     612- 616   ///
      long   PRDAY5                     617- 621   ///
      long   PRDAY6                     622- 626   ///
      long   PRDAY7                     627- 631   ///
      long   PRDAY8                     632- 636   ///
      long   PRDAY9                     637- 641   ///
      long   PRDAY10                    642- 646   ///
      long   PRDAY11                    647- 651   ///
      long   PRDAY12                    652- 656   ///
      long   PRDAY13                    657- 661   ///
      long   PRDAY14                    662- 666   ///
      long   PRDAY15                    667- 671   ///
      long   PRDAY16                    672- 676   ///
      long   PRDAY17                    677- 681   ///
      long   PRDAY18                    682- 686   ///
      long   PRDAY19                    687- 691   ///
      long   PRDAY20                    692- 696   ///
      long   PRDAY21                    697- 701   ///
      long   PRDAY22                    702- 706   ///
      long   PRDAY23                    707- 711   ///
      long   PRDAY24                    712- 716   ///
      long   PRDAY25                    717- 721   ///
      str    PSTATE                     722- 723   ///
      long   PSTCO                      724- 728   ///
      long   PSTCO2                     729- 733   ///
      byte   RACE                       734- 735   ///
      byte   RACE_EDIT                  736- 737   ///
      str    RACE_X                     738        ///
      byte   TRAN_IN                    739- 740   ///
      byte   TRAN_OUT                   741- 742   ///
      long   VisitLink                  743- 751   ///
      int    YEAR                       752- 755   ///
      str    ZIP                        756- 760   ///
      str    ZIP3                       761- 763   ///
      int    ZIPINC_QRTL                764- 766   ///
      long   HOSPID                     767- 771   ///
      int    AYEAR                      772- 775   ///
      byte   BMONTH                     776- 777   ///
      int    BYEAR                      778- 781   ///
      byte   PRMONTH1                   782- 783   ///
      byte   PRMONTH2                   784- 785   ///
      byte   PRMONTH3                   786- 787   ///
      byte   PRMONTH4                   788- 789   ///
      byte   PRMONTH5                   790- 791   ///
      byte   PRMONTH6                   792- 793   ///
      byte   PRMONTH7                   794- 795   ///
      byte   PRMONTH8                   796- 797   ///
      byte   PRMONTH9                   798- 799   ///
      byte   PRMONTH10                  800- 801   ///
      byte   PRMONTH11                  802- 803   ///
      byte   PRMONTH12                  804- 805   ///
      byte   PRMONTH13                  806- 807   ///
      byte   PRMONTH14                  808- 809   ///
      byte   PRMONTH15                  810- 811   ///
      byte   PRMONTH16                  812- 813   ///
      byte   PRMONTH17                  814- 815   ///
      byte   PRMONTH18                  816- 817   ///
      byte   PRMONTH19                  818- 819   ///
      byte   PRMONTH20                  820- 821   ///
      byte   PRMONTH21                  822- 823   ///
      byte   PRMONTH22                  824- 825   ///
      byte   PRMONTH23                  826- 827   ///
      byte   PRMONTH24                  828- 829   ///
      byte   PRMONTH25                  830- 831   ///
      int    PRYEAR1                    832- 835   ///
      int    PRYEAR2                    836- 839   ///
      int    PRYEAR3                    840- 843   ///
      int    PRYEAR4                    844- 847   ///
      int    PRYEAR5                    848- 851   ///
      int    PRYEAR6                    852- 855   ///
      int    PRYEAR7                    856- 859   ///
      int    PRYEAR8                    860- 863   ///
      int    PRYEAR9                    864- 867   ///
      int    PRYEAR10                   868- 871   ///
      int    PRYEAR11                   872- 875   ///
      int    PRYEAR12                   876- 879   ///
      int    PRYEAR13                   880- 883   ///
      int    PRYEAR14                   884- 887   ///
      int    PRYEAR15                   888- 891   ///
      int    PRYEAR16                   892- 895   ///
      int    PRYEAR17                   896- 899   ///
      int    PRYEAR18                   900- 903   ///
      int    PRYEAR19                   904- 907   ///
      int    PRYEAR20                   908- 911   ///
      int    PRYEAR21                   912- 915   ///
      int    PRYEAR22                   916- 919   ///
      int    PRYEAR23                   920- 923   ///
      int    PRYEAR24                   924- 927   ///
      int    PRYEAR25                   928- 931   ///
      using  "MO_SID_2018_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
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
label var OBSERVATION              "Time for observation services (as received from source)"
label var OS_TIME                  "Observation stay time summed from UNITS"
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
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_EDIT                "Race Edit Checks"
label var RACE_X                   "Race (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var VisitLink                "Visit linkage variable"
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
recode AHOUR                     (-999 -888 -666=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
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
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
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
recode OBSERVATION               (-999 -888 -666=.)
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

save "MO_SID_2018_CORE.dta", replace
