/*****************************************************************************
* Creation Date: 08/13/2018   
* WA_SID_2016_CORE.Do
* This program will load the 2016 WA ASCII CORE File into Stata.
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
      long   DaysToEvent                 24-  29   ///
      int    DHOUR                       30-  33   ///
      byte   DIED                        34-  35   ///
      str    DISP_X                      36-  37   ///
      byte   DISPUB04                    38-  39   ///
      byte   DISPUNIFORM                 40-  41   ///
      byte   DQTR                        42-  43   ///
      int    DRG                         44-  46   ///
      int    DRG_NoPOA                   47-  49   ///
      byte   DRGVER                      50-  51   ///
      str    DSHOSPID                    52-  68   ///
      str    DXPOA1                      69        ///
      str    DXPOA2                      70        ///
      str    DXPOA3                      71        ///
      str    DXPOA4                      72        ///
      str    DXPOA5                      73        ///
      str    DXPOA6                      74        ///
      str    DXPOA7                      75        ///
      str    DXPOA8                      76        ///
      str    DXPOA9                      77        ///
      str    DXPOA10                     78        ///
      str    DXPOA11                     79        ///
      str    DXPOA12                     80        ///
      str    DXPOA13                     81        ///
      str    DXPOA14                     82        ///
      str    DXPOA15                     83        ///
      str    DXPOA16                     84        ///
      str    DXPOA17                     85        ///
      str    DXPOA18                     86        ///
      str    DXPOA19                     87        ///
      str    DXPOA20                     88        ///
      str    DXPOA21                     89        ///
      str    DXPOA22                     90        ///
      str    DXPOA23                     91        ///
      str    DXPOA24                     92        ///
      str    DXPOA25                     93        ///
      int    DXVER                       94-  96   ///
      str    E_POA1                      97        ///
      str    E_POA2                      98        ///
      str    E_POA3                      99        ///
      str    E_POA4                     100        ///
      str    E_POA5                     101        ///
      str    E_POA6                     102        ///
      str    E_POA7                     103        ///
      str    E_POA8                     104        ///
      str    E_POA9                     105        ///
      byte   FEMALE                     106- 107   ///
      byte   HCUP_ED                    108- 109   ///
      byte   HCUP_OS                    110- 111   ///
      byte   HISPANIC                   112- 113   ///
      str    HISPANIC_X                 114        ///
      byte   Homeless                   115- 116   ///
      byte   HospitalUnit               117- 118   ///
      str    HOSPST                     119- 120   ///
      str    I10_DX1                    121- 127   ///
      str    I10_DX2                    128- 134   ///
      str    I10_DX3                    135- 141   ///
      str    I10_DX4                    142- 148   ///
      str    I10_DX5                    149- 155   ///
      str    I10_DX6                    156- 162   ///
      str    I10_DX7                    163- 169   ///
      str    I10_DX8                    170- 176   ///
      str    I10_DX9                    177- 183   ///
      str    I10_DX10                   184- 190   ///
      str    I10_DX11                   191- 197   ///
      str    I10_DX12                   198- 204   ///
      str    I10_DX13                   205- 211   ///
      str    I10_DX14                   212- 218   ///
      str    I10_DX15                   219- 225   ///
      str    I10_DX16                   226- 232   ///
      str    I10_DX17                   233- 239   ///
      str    I10_DX18                   240- 246   ///
      str    I10_DX19                   247- 253   ///
      str    I10_DX20                   254- 260   ///
      str    I10_DX21                   261- 267   ///
      str    I10_DX22                   268- 274   ///
      str    I10_DX23                   275- 281   ///
      str    I10_DX24                   282- 288   ///
      str    I10_DX25                   289- 295   ///
      str    I10_ECAUSE1                296- 302   ///
      str    I10_ECAUSE2                303- 309   ///
      str    I10_ECAUSE3                310- 316   ///
      str    I10_ECAUSE4                317- 323   ///
      str    I10_ECAUSE5                324- 330   ///
      str    I10_ECAUSE6                331- 337   ///
      str    I10_ECAUSE7                338- 344   ///
      str    I10_ECAUSE8                345- 351   ///
      str    I10_ECAUSE9                352- 358   ///
      int    I10_NDX                    359- 361   ///
      byte   I10_NECAUSE                362- 363   ///
      int    I10_NPR                    364- 366   ///
      str    I10_PR1                    367- 373   ///
      str    I10_PR2                    374- 380   ///
      str    I10_PR3                    381- 387   ///
      str    I10_PR4                    388- 394   ///
      str    I10_PR5                    395- 401   ///
      str    I10_PR6                    402- 408   ///
      str    I10_PR7                    409- 415   ///
      str    I10_PR8                    416- 422   ///
      str    I10_PR9                    423- 429   ///
      str    I10_PR10                   430- 436   ///
      str    I10_PR11                   437- 443   ///
      str    I10_PR12                   444- 450   ///
      str    I10_PR13                   451- 457   ///
      str    I10_PR14                   458- 464   ///
      str    I10_PR15                   465- 471   ///
      str    I10_PR16                   472- 478   ///
      str    I10_PR17                   479- 485   ///
      str    I10_PR18                   486- 492   ///
      str    I10_PR19                   493- 499   ///
      str    I10_PR20                   500- 506   ///
      str    I10_PR21                   507- 513   ///
      str    I10_PR22                   514- 520   ///
      str    I10_PR23                   521- 527   ///
      str    I10_PR24                   528- 534   ///
      str    I10_PR25                   535- 541   ///
      int    I10_PROCTYPE               542- 544   ///
      double KEY                        545- 559   ///
      long   LOS                        560- 564   ///
      long   LOS_X                      565- 570   ///
      byte   MDC                        571- 572   ///
      byte   MDC_NoPOA                  573- 574   ///
      long   MDNUM1_R                   575- 583   ///
      long   MDNUM2_R                   584- 592   ///
      long   MDNUM3_R                   593- 601   ///
      long   MDNUM4_R                   602- 610   ///
      byte   MEDINCSTQ                  611- 612   ///
      double OS_TIME                    613- 623   ///
      byte   PAY1                       624- 625   ///
      str    PAY1_X                     626- 628   ///
      byte   PAY2                       629- 630   ///
      str    PAY2_X                     631- 633   ///
      byte   PAY3                       634- 635   ///
      str    PAY3_X                     636- 638   ///
      int    PL_CBSA                    639- 641   ///
      byte   PL_NCHS                    642- 643   ///
      byte   PL_RUCC                    644- 645   ///
      byte   PL_UIC                     646- 647   ///
      byte   PL_UR_CAT4                 648- 649   ///
      byte   POA_Disch_Edit1            650- 651   ///
      byte   POA_Disch_Edit2            652- 653   ///
      byte   POA_Hosp_Edit1             654- 655   ///
      byte   POA_Hosp_Edit2             656- 657   ///
      byte   POA_Hosp_Edit3             658- 659   ///
      double POA_Hosp_Edit3_Value       660- 667   ///
      str    PointOfOrigin_X            668        ///
      str    PointOfOriginUB04          669        ///
      long   PRDAY1                     670- 674   ///
      long   PRDAY2                     675- 679   ///
      long   PRDAY3                     680- 684   ///
      long   PRDAY4                     685- 689   ///
      long   PRDAY5                     690- 694   ///
      long   PRDAY6                     695- 699   ///
      long   PRDAY7                     700- 704   ///
      long   PRDAY8                     705- 709   ///
      long   PRDAY9                     710- 714   ///
      long   PRDAY10                    715- 719   ///
      long   PRDAY11                    720- 724   ///
      long   PRDAY12                    725- 729   ///
      long   PRDAY13                    730- 734   ///
      long   PRDAY14                    735- 739   ///
      long   PRDAY15                    740- 744   ///
      long   PRDAY16                    745- 749   ///
      long   PRDAY17                    750- 754   ///
      long   PRDAY18                    755- 759   ///
      long   PRDAY19                    760- 764   ///
      long   PRDAY20                    765- 769   ///
      long   PRDAY21                    770- 774   ///
      long   PRDAY22                    775- 779   ///
      long   PRDAY23                    780- 784   ///
      long   PRDAY24                    785- 789   ///
      long   PRDAY25                    790- 794   ///
      int    PRVER                      795- 797   ///
      str    PSTATE                     798- 799   ///
      long   PSTCO2                     800- 804   ///
      byte   RACE                       805- 806   ///
      str    RACE_X                     807- 812   ///
      double TOTCHG                     813- 822   ///
      double TOTCHG_X                   823- 837   ///
      byte   TRAN_IN                    838- 839   ///
      byte   TRAN_OUT                   840- 841   ///
      long   VisitLink                  842- 850   ///
      int    YEAR                       851- 854   ///
      str    ZIP                        855- 859   ///
      str    ZIP3                       860- 862   ///
      int    ZIPINC_QRTL                863- 865   ///
      int    AYEAR                      866- 869   ///
      using  "WA_SID_2016_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var DaysToEvent              "Days from 'start date' to admission"
label var DHOUR                    "Discharge Hour"
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
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MDNUM4_R                 "Physician 4 number (re-identified)"
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
recode HospitalUnit              (-9 -8 -6 -5=.)
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
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM4_R                  (-99999999 -88888888 -66666666=.)
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

save "WA_SID_2016_CORE.dta", replace
