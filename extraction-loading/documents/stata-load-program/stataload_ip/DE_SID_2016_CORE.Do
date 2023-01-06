/*****************************************************************************
* Creation Date: 01/27/2020   
* DE_SID_2016_CORE.Do
* This program will load the 2016 DE ASCII CORE File into Stata.
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
      byte   AMONTH                      10-  11   ///
      byte   ATYPE                       12-  13   ///
      byte   AWEEKEND                    14-  15   ///
      str    BILLTYPE                    16-  19   ///
      long   DaysToEvent                 20-  25   ///
      byte   DIED                        26-  27   ///
      str    DISP_X                      28-  30   ///
      byte   DISPUB04                    31-  32   ///
      byte   DISPUNIFORM                 33-  34   ///
      byte   DMONTH                      35-  36   ///
      byte   DQTR                        37-  38   ///
      int    DRG                         39-  41   ///
      int    DRG_NoPOA                   42-  44   ///
      byte   DRGVER                      45-  46   ///
      str    DSHOSPID                    47-  63   ///
      str    DXPOA1                      64        ///
      int    DXVER                       65-  67   ///
      str    E_POA1                      68        ///
      str    E_POA2                      69        ///
      str    E_POA3                      70        ///
      str    E_POA4                      71        ///
      str    E_POA5                      72        ///
      byte   FEMALE                      73-  74   ///
      byte   HCUP_ED                     75-  76   ///
      byte   HCUP_OS                     77-  78   ///
      str    HOSPST                      79-  80   ///
      str    I10_DX1                     81-  87   ///
      str    I10_DX2                     88-  94   ///
      str    I10_DX3                     95- 101   ///
      str    I10_DX4                    102- 108   ///
      str    I10_DX5                    109- 115   ///
      str    I10_DX6                    116- 122   ///
      str    I10_DX7                    123- 129   ///
      str    I10_DX8                    130- 136   ///
      str    I10_DX9                    137- 143   ///
      str    I10_ECAUSE1                144- 150   ///
      str    I10_ECAUSE2                151- 157   ///
      str    I10_ECAUSE3                158- 164   ///
      str    I10_ECAUSE4                165- 171   ///
      str    I10_ECAUSE5                172- 178   ///
      int    I10_NDX                    179- 181   ///
      byte   I10_NECAUSE                182- 183   ///
      int    I10_NPR                    184- 186   ///
      str    I10_PR1                    187- 193   ///
      str    I10_PR2                    194- 200   ///
      str    I10_PR3                    201- 207   ///
      str    I10_PR4                    208- 214   ///
      str    I10_PR5                    215- 221   ///
      str    I10_PR6                    222- 228   ///
      int    I10_PROCTYPE               229- 231   ///
      double KEY                        232- 246   ///
      long   LOS                        247- 251   ///
      long   LOS_X                      252- 257   ///
      byte   MDC                        258- 259   ///
      byte   MDC_NoPOA                  260- 261   ///
      byte   MEDINCSTQ                  262- 263   ///
      double OS_TIME                    264- 274   ///
      byte   PAY1                       275- 276   ///
      str    PAY1_X                     277- 278   ///
      byte   PAY2                       279- 280   ///
      str    PAY2_X                     281- 288   ///
      byte   PAY3                       289- 290   ///
      str    PAY3_X                     291- 298   ///
      int    PL_CBSA                    299- 301   ///
      byte   PL_NCHS                    302- 303   ///
      byte   PL_RUCC                    304- 305   ///
      byte   PL_UIC                     306- 307   ///
      byte   PL_UR_CAT4                 308- 309   ///
      byte   POA_Disch_Edit1            310- 311   ///
      byte   POA_Disch_Edit2            312- 313   ///
      byte   POA_Hosp_Edit1             314- 315   ///
      byte   POA_Hosp_Edit2             316- 317   ///
      byte   POA_Hosp_Edit3             318- 319   ///
      double POA_Hosp_Edit3_Value       320- 327   ///
      str    PointOfOrigin_X            328        ///
      str    PointOfOriginUB04          329        ///
      long   PRDAY1                     330- 334   ///
      long   PRDAY2                     335- 339   ///
      int    PRVER                      340- 342   ///
      str    PSTATE                     343- 344   ///
      long   PSTCO2                     345- 349   ///
      byte   RACE                       350- 351   ///
      str    RACE_X                     352        ///
      double TOTCHG                     353- 362   ///
      double TOTCHG_X                   363- 377   ///
      byte   TRAN_IN                    378- 379   ///
      byte   TRAN_OUT                   380- 381   ///
      long   VisitLink                  382- 390   ///
      int    YEAR                       391- 394   ///
      str    ZIP                        395- 399   ///
      str    ZIP3                       400- 402   ///
      int    ZIPINC_QRTL                403- 405   ///
      int    AYEAR                      406- 409   ///
      byte   BMONTH                     410- 411   ///
      int    BYEAR                      412- 415   ///
      byte   PRMONTH1                   416- 417   ///
      byte   PRMONTH2                   418- 419   ///
      int    PRYEAR1                    420- 423   ///
      int    PRYEAR2                    424- 427   ///
      using  "DE_SID_2016_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var DaysToEvent              "Days from 'start date' to admission"
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
label var DXVER                    "Diagnosis Version"
label var E_POA1                   "External cause 1, present on admission indicator"
label var E_POA2                   "External cause 2, present on admission indicator"
label var E_POA3                   "External cause 3, present on admission indicator"
label var E_POA4                   "External cause 4, present on admission indicator"
label var E_POA5                   "External cause 5, present on admission indicator"
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
label var I10_ECAUSE1              "ICD-10-CM External cause 1"
label var I10_ECAUSE2              "ICD-10-CM External cause 2"
label var I10_ECAUSE3              "ICD-10-CM External cause 3"
label var I10_ECAUSE4              "ICD-10-CM External cause 4"
label var I10_ECAUSE5              "ICD-10-CM External cause 5"
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_NECAUSE              "ICD-10-CM Number of External cause codes on this record"
label var I10_NPR                  "ICD-10-PCS Number of procedures on this record"
label var I10_PR1                  "ICD-10-PCS Procedure 1"
label var I10_PR2                  "ICD-10-PCS Procedure 2"
label var I10_PR3                  "ICD-10-PCS Procedure 3"
label var I10_PR4                  "ICD-10-PCS Procedure 4"
label var I10_PR5                  "ICD-10-PCS Procedure 5"
label var I10_PR6                  "ICD-10-PCS Procedure 6"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
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
label var BMONTH                   "Birth month"
label var BYEAR                    "Birth year"
label var PRMONTH1                 "Month of procedure 1"
label var PRMONTH2                 "Month of procedure 2"
label var PRYEAR1                  "Year of procedure 1"
label var PRYEAR2                  "Year of procedure 2"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
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
recode BMONTH                    (-9 -8 -6 -5=.)
recode BYEAR                     (-999 -888 -666=.)
recode PRMONTH1                  (-9 -8 -6 -5=.)
recode PRMONTH2                  (-9 -8 -6 -5=.)
recode PRYEAR1                   (-999 -888 -666=.)
recode PRYEAR2                   (-999 -888 -666=.)

save "DE_SID_2016_CORE.dta", replace
