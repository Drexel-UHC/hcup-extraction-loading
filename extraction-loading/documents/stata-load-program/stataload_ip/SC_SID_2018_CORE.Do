/*****************************************************************************
* Creation Date: 06/08/2020   
* SC_SID_2018_CORE.Do
* This program will load the 2018 SC ASCII CORE File into Stata.
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
      str    DXPOA1                      28        ///
      str    DXPOA2                      29        ///
      str    DXPOA3                      30        ///
      str    DXPOA4                      31        ///
      str    DXPOA5                      32        ///
      str    DXPOA6                      33        ///
      str    DXPOA7                      34        ///
      str    DXPOA8                      35        ///
      str    DXPOA9                      36        ///
      str    DXPOA10                     37        ///
      str    DXPOA11                     38        ///
      str    DXPOA12                     39        ///
      str    DXPOA13                     40        ///
      str    DXPOA14                     41        ///
      str    DXPOA15                     42        ///
      str    DXPOA16                     43        ///
      byte   FEMALE                      44-  45   ///
      byte   HCUP_ED                     46-  47   ///
      byte   HCUP_OS                     48-  49   ///
      str    HOSPST                      50-  51   ///
      str    I10_DX1                     52-  58   ///
      str    I10_DX2                     59-  65   ///
      str    I10_DX3                     66-  72   ///
      str    I10_DX4                     73-  79   ///
      str    I10_DX5                     80-  86   ///
      str    I10_DX6                     87-  93   ///
      str    I10_DX7                     94- 100   ///
      str    I10_DX8                    101- 107   ///
      str    I10_DX9                    108- 114   ///
      str    I10_DX10                   115- 121   ///
      str    I10_DX11                   122- 128   ///
      str    I10_DX12                   129- 135   ///
      str    I10_DX13                   136- 142   ///
      str    I10_DX14                   143- 149   ///
      str    I10_DX15                   150- 156   ///
      str    I10_DX16                   157- 163   ///
      str    I10_DX17                   164- 170   ///
      int    I10_NDX                    171- 173   ///
      int    I10_NPR                    174- 176   ///
      str    I10_PR1                    177- 183   ///
      str    I10_PR2                    184- 190   ///
      str    I10_PR3                    191- 197   ///
      str    I10_PR4                    198- 204   ///
      str    I10_PR5                    205- 211   ///
      str    I10_PR6                    212- 218   ///
      str    I10_PR7                    219- 225   ///
      str    I10_PR8                    226- 232   ///
      str    I10_PR9                    233- 239   ///
      str    I10_PR10                   240- 246   ///
      str    I10_PR11                   247- 253   ///
      str    I10_PR12                   254- 260   ///
      str    I10_PR13                   261- 267   ///
      int    I10_PROCTYPE               268- 270   ///
      double KEY                        271- 285   ///
      long   LOS                        286- 290   ///
      long   LOS_X                      291- 296   ///
      byte   MDC                        297- 298   ///
      byte   MDC_NoPOA                  299- 300   ///
      str    MDSPEC1                    301- 303   ///
      str    MDSPEC2                    304- 306   ///
      byte   MEDINCSTQ                  307- 308   ///
      double OS_TIME                    309- 319   ///
      byte   PAY1                       320- 321   ///
      str    PAY1_X                     322- 323   ///
      byte   PL_NCHS                    324- 325   ///
      byte   PL_UR_CAT4                 326- 327   ///
      byte   POA_Disch_Edit1            328- 329   ///
      byte   POA_Disch_Edit2            330- 331   ///
      byte   POA_Hosp_Edit1             332- 333   ///
      byte   POA_Hosp_Edit2             334- 335   ///
      byte   POA_Hosp_Edit3             336- 337   ///
      double POA_Hosp_Edit3_Value       338- 345   ///
      str    PointOfOrigin_X            346        ///
      str    PointOfOriginUB04          347        ///
      long   PRDAY1                     348- 352   ///
      long   PRDAY2                     353- 357   ///
      long   PRDAY3                     358- 362   ///
      long   PRDAY4                     363- 367   ///
      long   PRDAY5                     368- 372   ///
      long   PRDAY6                     373- 377   ///
      long   PRDAY7                     378- 382   ///
      long   PRDAY8                     383- 387   ///
      long   PRDAY9                     388- 392   ///
      long   PRDAY10                    393- 397   ///
      long   PRDAY11                    398- 402   ///
      long   PRDAY12                    403- 407   ///
      long   PRDAY13                    408- 412   ///
      str    PSTATE                     413- 414   ///
      long   PSTCO                      415- 419   ///
      byte   RACE                       420- 421   ///
      byte   RACE_EDIT                  422- 423   ///
      str    RACE_X                     424- 426   ///
      double TOTCHG                     427- 436   ///
      double TOTCHG_X                   437- 451   ///
      byte   TRAN_IN                    452- 453   ///
      byte   TRAN_OUT                   454- 455   ///
      int    YEAR                       456- 459   ///
      int    ZIPINC_QRTL                460- 462   ///
      int    AGEGROUP                   463- 465   ///
      int    AYEAR                      466- 469   ///
      using  "SC_SID_2018_CORE.ASC"

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
label var I10_DX16                 "ICD-10-CM Diagnosis 16"
label var I10_DX17                 "ICD-10-CM Diagnosis 17"
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
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var RACE                     "Race (uniform)"
label var RACE_EDIT                "Race Edit Checks"
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
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
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
recode PSTCO                     (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_EDIT                 (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AGEGROUP                  (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)

save "SC_SID_2018_CORE.dta", replace
