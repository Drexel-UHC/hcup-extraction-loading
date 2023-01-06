/*****************************************************************************
* Creation Date: 01/07/2019   
* MD_SID_2017_CORE.Do
* This program will load the 2017 MD ASCII CORE File into Stata.
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
      byte   ASOURCE                     10-  11   ///
      str    ASOURCE_X                   12-  13   ///
      byte   ATYPE                       14-  15   ///
      byte   AWEEKEND                    16-  17   ///
      int    BWT                         18-  21   ///
      int    DaysBurnUnit                22-  24   ///
      int    DaysCCU                     25-  27   ///
      int    DaysICU                     28-  30   ///
      int    DaysNICU                    31-  33   ///
      int    DaysPICU                    34-  36   ///
      int    DaysShockUnit               37-  39   ///
      long   DaysToEvent                 40-  45   ///
      byte   DIED                        46-  47   ///
      str    DISP_X                      48-  49   ///
      byte   DISPUNIFORM                 50-  51   ///
      byte   DQTR                        52-  53   ///
      int    DRG                         54-  56   ///
      int    DRG_NoPOA                   57-  59   ///
      byte   DRGVER                      60-  61   ///
      str    DSHOSPID                    62-  78   ///
      str    DXPOA1                      79        ///
      str    DXPOA2                      80        ///
      str    DXPOA3                      81        ///
      str    DXPOA4                      82        ///
      str    DXPOA5                      83        ///
      str    DXPOA6                      84        ///
      str    DXPOA7                      85        ///
      str    DXPOA8                      86        ///
      str    DXPOA9                      87        ///
      str    DXPOA10                     88        ///
      str    DXPOA11                     89        ///
      str    DXPOA12                     90        ///
      str    DXPOA13                     91        ///
      str    DXPOA14                     92        ///
      str    DXPOA15                     93        ///
      str    DXPOA16                     94        ///
      str    DXPOA17                     95        ///
      str    DXPOA18                     96        ///
      str    DXPOA19                     97        ///
      str    DXPOA20                     98        ///
      str    DXPOA21                     99        ///
      str    DXPOA22                    100        ///
      str    DXPOA23                    101        ///
      str    DXPOA24                    102        ///
      str    DXPOA25                    103        ///
      str    DXPOA26                    104        ///
      str    DXPOA27                    105        ///
      str    DXPOA28                    106        ///
      str    DXPOA29                    107        ///
      str    DXPOA30                    108        ///
      int    DXVER                      109- 111   ///
      byte   FEMALE                     112- 113   ///
      byte   HCUP_ED                    114- 115   ///
      byte   HCUP_OS                    116- 117   ///
      byte   HISPANIC                   118- 119   ///
      str    HISPANIC_X                 120        ///
      byte   Homeless                   121- 122   ///
      byte   HospitalUnit               123- 124   ///
      str    HOSPST                     125- 126   ///
      str    I10_DX1                    127- 133   ///
      str    I10_DX2                    134- 140   ///
      str    I10_DX3                    141- 147   ///
      str    I10_DX4                    148- 154   ///
      str    I10_DX5                    155- 161   ///
      str    I10_DX6                    162- 168   ///
      str    I10_DX7                    169- 175   ///
      str    I10_DX8                    176- 182   ///
      str    I10_DX9                    183- 189   ///
      str    I10_DX10                   190- 196   ///
      str    I10_DX11                   197- 203   ///
      str    I10_DX12                   204- 210   ///
      str    I10_DX13                   211- 217   ///
      str    I10_DX14                   218- 224   ///
      str    I10_DX15                   225- 231   ///
      str    I10_DX16                   232- 238   ///
      str    I10_DX17                   239- 245   ///
      str    I10_DX18                   246- 252   ///
      str    I10_DX19                   253- 259   ///
      str    I10_DX20                   260- 266   ///
      str    I10_DX21                   267- 273   ///
      str    I10_DX22                   274- 280   ///
      str    I10_DX23                   281- 287   ///
      str    I10_DX24                   288- 294   ///
      str    I10_DX25                   295- 301   ///
      str    I10_DX26                   302- 308   ///
      str    I10_DX27                   309- 315   ///
      str    I10_DX28                   316- 322   ///
      str    I10_DX29                   323- 329   ///
      str    I10_DX30                   330- 336   ///
      str    I10_DX31                   337- 343   ///
      int    I10_NDX                    344- 346   ///
      int    I10_NPR                    347- 349   ///
      str    I10_PR1                    350- 356   ///
      str    I10_PR2                    357- 363   ///
      str    I10_PR3                    364- 370   ///
      str    I10_PR4                    371- 377   ///
      str    I10_PR5                    378- 384   ///
      str    I10_PR6                    385- 391   ///
      str    I10_PR7                    392- 398   ///
      str    I10_PR8                    399- 405   ///
      str    I10_PR9                    406- 412   ///
      str    I10_PR10                   413- 419   ///
      str    I10_PR11                   420- 426   ///
      str    I10_PR12                   427- 433   ///
      str    I10_PR13                   434- 440   ///
      str    I10_PR14                   441- 447   ///
      str    I10_PR15                   448- 454   ///
      str    I10_PR16                   455- 461   ///
      str    I10_PR17                   462- 468   ///
      str    I10_PR18                   469- 475   ///
      str    I10_PR19                   476- 482   ///
      str    I10_PR20                   483- 489   ///
      str    I10_PR21                   490- 496   ///
      str    I10_PR22                   497- 503   ///
      str    I10_PR23                   504- 510   ///
      str    I10_PR24                   511- 517   ///
      str    I10_PR25                   518- 524   ///
      str    I10_PR26                   525- 531   ///
      str    I10_PR27                   532- 538   ///
      str    I10_PR28                   539- 545   ///
      str    I10_PR29                   546- 552   ///
      str    I10_PR30                   553- 559   ///
      int    I10_PROCTYPE               560- 562   ///
      double KEY                        563- 577   ///
      long   LOS                        578- 582   ///
      long   LOS_X                      583- 588   ///
      str    MARITALSTATUS_X            589        ///
      str    MARITALSTATUSUB04          590        ///
      byte   MDC                        591- 592   ///
      byte   MDC_NoPOA                  593- 594   ///
      long   MDNUM1_R                   595- 603   ///
      long   MDNUM2_R                   604- 612   ///
      byte   MEDINCSTQ                  613- 614   ///
      long   MRN_R                      615- 623   ///
      double OS_TIME                    624- 634   ///
      str    P7EDSRC_X                  635- 636   ///
      byte   PAY1                       637- 638   ///
      str    PAY1_X                     639- 640   ///
      byte   PAY2                       641- 642   ///
      str    PAY2_X                     643- 644   ///
      str    PAYER1_X                   645- 646   ///
      str    PAYER2_X                   647- 648   ///
      int    PL_CBSA                    649- 651   ///
      byte   PL_NCHS                    652- 653   ///
      byte   PL_RUCC                    654- 655   ///
      byte   PL_UIC                     656- 657   ///
      byte   PL_UR_CAT4                 658- 659   ///
      byte   POA_Disch_Edit1            660- 661   ///
      byte   POA_Disch_Edit2            662- 663   ///
      byte   POA_Hosp_Edit1             664- 665   ///
      byte   POA_Hosp_Edit2             666- 667   ///
      byte   POA_Hosp_Edit3             668- 669   ///
      double POA_Hosp_Edit3_Value       670- 677   ///
      long   PRDAY1                     678- 682   ///
      long   PRDAY2                     683- 687   ///
      long   PRDAY3                     688- 692   ///
      long   PRDAY4                     693- 697   ///
      long   PRDAY5                     698- 702   ///
      long   PRDAY6                     703- 707   ///
      long   PRDAY7                     708- 712   ///
      long   PRDAY8                     713- 717   ///
      long   PRDAY9                     718- 722   ///
      long   PRDAY10                    723- 727   ///
      long   PRDAY11                    728- 732   ///
      long   PRDAY12                    733- 737   ///
      long   PRDAY13                    738- 742   ///
      long   PRDAY14                    743- 747   ///
      long   PRDAY15                    748- 752   ///
      long   PRDAY16                    753- 757   ///
      long   PRDAY17                    758- 762   ///
      long   PRDAY18                    763- 767   ///
      long   PRDAY19                    768- 772   ///
      long   PRDAY20                    773- 777   ///
      long   PRDAY21                    778- 782   ///
      long   PRDAY22                    783- 787   ///
      long   PRDAY23                    788- 792   ///
      long   PRDAY24                    793- 797   ///
      long   PRDAY25                    798- 802   ///
      long   PRDAY26                    803- 807   ///
      long   PRDAY27                    808- 812   ///
      long   PRDAY28                    813- 817   ///
      long   PRDAY29                    818- 822   ///
      long   PRDAY30                    823- 827   ///
      str    PrimLang                   828- 830   ///
      int    PRVER                      831- 833   ///
      str    PSTATE                     834- 835   ///
      long   PSTCO                      836- 840   ///
      long   PSTCO2                     841- 845   ///
      byte   RACE                       846- 847   ///
      byte   RACE_EDIT                  848- 849   ///
      str    RACE_X                     850        ///
      byte   READMIT                    851- 852   ///
      double TOTCHG                     853- 862   ///
      double TOTCHG_X                   863- 877   ///
      byte   TRAN_IN                    878- 879   ///
      byte   TRAN_OUT                   880- 881   ///
      long   VisitLink                  882- 890   ///
      int    YEAR                       891- 894   ///
      str    ZIP3                       895- 897   ///
      int    ZIPINC_QRTL                898- 900   ///
      int    AYEAR                      901- 904   ///
      using  "MD_SID_2017_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var ASOURCE                  "Admission source (uniform)"
label var ASOURCE_X                "Admission source (as received from source)"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
label var DaysBurnUnit             "Days in burn care unit (as received from source)"
label var DaysCCU                  "Days in coronary care unit (as received from source)"
label var DaysICU                  "Days in medical/surgical intensive care unit (as received from source)"
label var DaysNICU                 "Days in neonetal care unit (as received from source)"
label var DaysPICU                 "Days in pediatric care unit (as received from source)"
label var DaysShockUnit            "Days in shock trauma unit (as received from source"
label var DaysToEvent              "Days from 'start date' to admission"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
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
label var DXVER                    "Diagnosis Version"
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
label var I10_DX31                 "ICD-10-CM Diagnosis 31"
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
label var I10_PR26                 "ICD-10-PCS Procedure 26"
label var I10_PR27                 "ICD-10-PCS Procedure 27"
label var I10_PR28                 "ICD-10-PCS Procedure 28"
label var I10_PR29                 "ICD-10-PCS Procedure 29"
label var I10_PR30                 "ICD-10-PCS Procedure 30"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
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
label var MRN_R                    "Medical record number (re-identified)"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
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
label var PRDAY26                  "Number of days from admission to I10_PR26"
label var PRDAY27                  "Number of days from admission to I10_PR27"
label var PRDAY28                  "Number of days from admission to I10_PR28"
label var PRDAY29                  "Number of days from admission to I10_PR29"
label var PRDAY30                  "Number of days from admission to I10_PR30"
label var PrimLang                 "Primary language of patient"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_EDIT                "Race Edit Checks"
label var RACE_X                   "Race (as received from source)"
label var READMIT                  "Readmission"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var VisitLink                "Visit linkage variable"
label var YEAR                     "Calendar year"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var AYEAR                    "Admission year"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode ASOURCE                   (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
recode DaysBurnUnit              (-99 -88 -66=.)
recode DaysCCU                   (-99 -88 -66=.)
recode DaysICU                   (-99 -88 -66=.)
recode DaysNICU                  (-99 -88 -66=.)
recode DaysPICU                  (-99 -88 -66=.)
recode DaysShockUnit             (-99 -88 -66=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DIED                      (-9 -8 -6 -5=.)
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
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
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
recode PRDAY26                   (-9999 -8888 -6666=.)
recode PRDAY27                   (-9999 -8888 -6666=.)
recode PRDAY28                   (-9999 -8888 -6666=.)
recode PRDAY29                   (-9999 -8888 -6666=.)
recode PRDAY30                   (-9999 -8888 -6666=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_EDIT                 (-9 -8 -6 -5=.)
recode READMIT                   (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
recode VisitLink                 (-99999999 -88888888 -66666666=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)

save "MD_SID_2017_CORE.dta", replace
