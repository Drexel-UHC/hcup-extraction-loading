/*****************************************************************************
* Creation Date: 10/12/2018   
* SC_SID_2016_CORE.Do
* This program will load the 2016 SC ASCII CORE File into Stata.
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
      byte   AMONTH                       1-   2   ///
      byte   ATYPE                        3-   4   ///
      byte   AWEEKEND                     5-   6   ///
      int    DaysICU                      7-   9   ///
      byte   DIED                        10-  11   ///
      str    DISP_X                      12-  13   ///
      byte   DISPUB04                    14-  15   ///
      byte   DISPUNIFORM                 16-  17   ///
      byte   DMONTH                      18-  19   ///
      byte   DQTR                        20-  21   ///
      int    DRG                         22-  24   ///
      int    DRG_NoPOA                   25-  27   ///
      byte   DRGVER                      28-  29   ///
      str    DXPOA1                      30        ///
      str    DXPOA2                      31        ///
      str    DXPOA3                      32        ///
      str    DXPOA4                      33        ///
      str    DXPOA5                      34        ///
      str    DXPOA6                      35        ///
      str    DXPOA7                      36        ///
      str    DXPOA8                      37        ///
      str    DXPOA9                      38        ///
      str    DXPOA10                     39        ///
      str    DXPOA11                     40        ///
      str    DXPOA12                     41        ///
      str    DXPOA13                     42        ///
      str    DXPOA14                     43        ///
      str    DXPOA15                     44        ///
      int    DXVER                       45-  47   ///
      str    E_POA1                      48        ///
      str    E_POA2                      49        ///
      str    E_POA3                      50        ///
      str    E_POA4                      51        ///
      str    E_POA5                      52        ///
      str    E_POA6                      53        ///
      str    E_POA7                      54        ///
      str    E_POA8                      55        ///
      str    E_POA9                      56        ///
      byte   FEMALE                      57-  58   ///
      byte   HCUP_ED                     59-  60   ///
      byte   HCUP_OS                     61-  62   ///
      str    HOSPST                      63-  64   ///
      str    I10_DX1                     65-  71   ///
      str    I10_DX2                     72-  78   ///
      str    I10_DX3                     79-  85   ///
      str    I10_DX4                     86-  92   ///
      str    I10_DX5                     93-  99   ///
      str    I10_DX6                    100- 106   ///
      str    I10_DX7                    107- 113   ///
      str    I10_DX8                    114- 120   ///
      str    I10_DX9                    121- 127   ///
      str    I10_DX10                   128- 134   ///
      str    I10_DX11                   135- 141   ///
      str    I10_DX12                   142- 148   ///
      str    I10_DX13                   149- 155   ///
      str    I10_DX14                   156- 162   ///
      str    I10_DX15                   163- 169   ///
      str    I10_ECAUSE1                170- 176   ///
      str    I10_ECAUSE2                177- 183   ///
      str    I10_ECAUSE3                184- 190   ///
      str    I10_ECAUSE4                191- 197   ///
      str    I10_ECAUSE5                198- 204   ///
      str    I10_ECAUSE6                205- 211   ///
      str    I10_ECAUSE7                212- 218   ///
      str    I10_ECAUSE8                219- 225   ///
      str    I10_ECAUSE9                226- 232   ///
      int    I10_NDX                    233- 235   ///
      byte   I10_NECAUSE                236- 237   ///
      int    I10_NPR                    238- 240   ///
      str    I10_PR1                    241- 247   ///
      str    I10_PR2                    248- 254   ///
      str    I10_PR3                    255- 261   ///
      str    I10_PR4                    262- 268   ///
      str    I10_PR5                    269- 275   ///
      str    I10_PR6                    276- 282   ///
      str    I10_PR7                    283- 289   ///
      str    I10_PR8                    290- 296   ///
      str    I10_PR9                    297- 303   ///
      str    I10_PR10                   304- 310   ///
      str    I10_PR11                   311- 317   ///
      str    I10_PR12                   318- 324   ///
      str    I10_PR13                   325- 331   ///
      int    I10_PROCTYPE               332- 334   ///
      double KEY                        335- 349   ///
      long   LOS                        350- 354   ///
      long   LOS_X                      355- 360   ///
      byte   MDC                        361- 362   ///
      byte   MDC_NoPOA                  363- 364   ///
      str    MDSPEC1                    365- 367   ///
      str    MDSPEC2                    368- 370   ///
      byte   MEDINCSTQ                  371- 372   ///
      double OS_TIME                    373- 383   ///
      byte   PAY1                       384- 385   ///
      str    PAY1_X                     386- 387   ///
      byte   PL_NCHS                    388- 389   ///
      byte   PL_UR_CAT4                 390- 391   ///
      byte   POA_Disch_Edit1            392- 393   ///
      byte   POA_Disch_Edit2            394- 395   ///
      byte   POA_Hosp_Edit1             396- 397   ///
      byte   POA_Hosp_Edit2             398- 399   ///
      byte   POA_Hosp_Edit3             400- 401   ///
      double POA_Hosp_Edit3_Value       402- 409   ///
      str    PointOfOrigin_X            410        ///
      str    PointOfOriginUB04          411        ///
      long   PRDAY1                     412- 416   ///
      long   PRDAY2                     417- 421   ///
      long   PRDAY3                     422- 426   ///
      long   PRDAY4                     427- 431   ///
      long   PRDAY5                     432- 436   ///
      long   PRDAY6                     437- 441   ///
      long   PRDAY7                     442- 446   ///
      long   PRDAY8                     447- 451   ///
      long   PRDAY9                     452- 456   ///
      long   PRDAY10                    457- 461   ///
      long   PRDAY11                    462- 466   ///
      long   PRDAY12                    467- 471   ///
      long   PRDAY13                    472- 476   ///
      int    PRVER                      477- 479   ///
      str    PSTATE                     480- 481   ///
      long   PSTCO                      482- 486   ///
      byte   RACE                       487- 488   ///
      str    RACE_X                     489        ///
      double TOTCHG                     490- 499   ///
      double TOTCHG_X                   500- 514   ///
      byte   TRAN_IN                    515- 516   ///
      byte   TRAN_OUT                   517- 518   ///
      int    YEAR                       519- 522   ///
      int    ZIPINC_QRTL                523- 525   ///
      int    AGEGROUP                   526- 528   ///
      int    AYEAR                      529- 532   ///
      using  "SC_SID_2016_CORE.ASC"

***  Assign labels to the data elements ***
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var DaysICU                  "Days in medical/surgical intensive care unit (as received from source)"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDSPEC1                  "Physician 1 specialty (as received from source)"
label var MDSPEC2                  "Physician 2 specialty (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
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
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var YEAR                     "Calendar year"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var AGEGROUP                 "Age Group"
label var AYEAR                    "Admission year"

*** Convert special values to missing values ***
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode DaysICU                   (-99 -88 -66=.)
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
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NECAUSE               (-9 -8 -6 -5=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
recode PAY1                      (-9 -8 -6 -5=.)
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
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AGEGROUP                  (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)

save "SC_SID_2016_CORE.dta", replace
