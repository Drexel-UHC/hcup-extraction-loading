/*****************************************************************************
* Creation Date: 10/04/2016   
* UT_SEDD_2014_CORE.Do
* This program will load the 2014 UT ASCII CORE File into Stata.
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
      int    DHOUR                       20-  23   ///
      byte   DIED                        24-  25   ///
      byte   DISPUB04                    26-  27   ///
      byte   DISPUNIFORM                 28-  29   ///
      str    DISP_X                      30-  31   ///
      byte   DMONTH                      32-  33   ///
      byte   DQTR                        34-  35   ///
      str    DSHOSPID                    36-  52   ///
      long   DURATION                    53-  58   ///
      str    DX1                         59-  65   ///
      str    DX2                         66-  72   ///
      str    DX3                         73-  79   ///
      str    DX4                         80-  86   ///
      str    DX5                         87-  93   ///
      str    DX6                         94- 100   ///
      str    DX7                        101- 107   ///
      str    DX8                        108- 114   ///
      str    DX9                        115- 121   ///
      int    DXCCS1                     122- 125   ///
      int    DXCCS2                     126- 129   ///
      int    DXCCS3                     130- 133   ///
      int    DXCCS4                     134- 137   ///
      int    DXCCS5                     138- 141   ///
      int    DXCCS6                     142- 145   ///
      int    DXCCS7                     146- 149   ///
      int    DXCCS8                     150- 153   ///
      int    DXCCS9                     154- 157   ///
      int    DXVER                      158- 160   ///
      long   DaysToEvent                161- 166   ///
      str    ECODE1                     167- 173   ///
      str    ECODE2                     174- 180   ///
      str    ECODE3                     181- 187   ///
      str    ECODE4                     188- 194   ///
      str    ECODE5                     195- 201   ///
      str    ECODE6                     202- 208   ///
      str    ECODE7                     209- 215   ///
      str    ECODE8                     216- 222   ///
      int    E_CCS1                     223- 226   ///
      int    E_CCS2                     227- 230   ///
      int    E_CCS3                     231- 234   ///
      int    E_CCS4                     235- 238   ///
      int    E_CCS5                     239- 242   ///
      int    E_CCS6                     243- 246   ///
      int    E_CCS7                     247- 250   ///
      int    E_CCS8                     251- 254   ///
      byte   FEMALE                     255- 256   ///
      byte   HCUP_ED                    257- 258   ///
      byte   HCUP_OS                    259- 260   ///
      str    HISPANIC_X                 261        ///
      int    HOSPBRTH                   262- 264   ///
      str    HOSPST                     265- 266   ///
      byte   Homeless                   267- 268   ///
      double KEY                        269- 283   ///
      long   LOS                        284- 288   ///
      long   LOS_X                      289- 294   ///
      str    MARITALSTATUSUB04          295        ///
      str    MARITALSTATUS_X            296        ///
      long   MDNUM1_R                   297- 305   ///
      byte   MEDINCSTQ                  306- 307   ///
      long   MRN_R                      308- 316   ///
      int    NCHRONIC                   317- 319   ///
      int    NDX                        320- 322   ///
      byte   NECODE                     323- 324   ///
      byte   NEOMAT                     325- 326   ///
      int    NPR                        327- 329   ///
      byte   ORPROC                     330- 331   ///
      byte   PAY1                       332- 333   ///
      str    PAY1_X                     334- 335   ///
      byte   PAY2                       336- 337   ///
      str    PAY2_X                     338- 339   ///
      byte   PAY3                       340- 341   ///
      str    PAY3_X                     342- 343   ///
      int    PL_CBSA                    344- 346   ///
      byte   PL_NCHS                    347- 348   ///
      byte   PL_RUCC                    349- 350   ///
      byte   PL_UIC                     351- 352   ///
      byte   PL_UR_CAT4                 353- 354   ///
      str    PR1                        355- 361   ///
      str    PR2                        362- 368   ///
      str    PR3                        369- 375   ///
      str    PR4                        376- 382   ///
      str    PR5                        383- 389   ///
      str    PR6                        390- 396   ///
      int    PRCCS1                     397- 399   ///
      int    PRCCS2                     400- 402   ///
      int    PRCCS3                     403- 405   ///
      int    PRCCS4                     406- 408   ///
      int    PRCCS5                     409- 411   ///
      int    PRCCS6                     412- 414   ///
      int    PROCTYPE                   415- 417   ///
      int    PRVER                      418- 420   ///
      str    PSTATE                     421- 422   ///
      long   PSTCO                      423- 427   ///
      long   PSTCO2                     428- 432   ///
      str    PointOfOriginUB04          433        ///
      str    PointOfOrigin_X            434        ///
      byte   RACE                       435- 436   ///
      str    RACE_X                     437        ///
      byte   STATE_AS                   438- 439   ///
      byte   STATE_ED                   440- 441   ///
      byte   STATE_OS                   442- 443   ///
      double TOTCHG                     444- 453   ///
      double TOTCHG_X                   454- 468   ///
      long   VisitLink                  469- 477   ///
      int    YEAR                       478- 481   ///
      str    ZIP                        482- 486   ///
      str    ZIP3                       487- 489   ///
      int    ZIPINC_QRTL                490- 492   ///
      int    AYEAR                      493- 496   ///
      byte   BMONTH                     497- 498   ///
      int    BYEAR                      499- 502   ///
      using  "UT_SEDD_2014_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DSHOSPID                 "Data source hospital identifier"
label var DURATION                 "Elapsed time for hospital care in hours and minutes"
label var DX1                      "Diagnosis 1"
label var DX2                      "Diagnosis 2"
label var DX3                      "Diagnosis 3"
label var DX4                      "Diagnosis 4"
label var DX5                      "Diagnosis 5"
label var DX6                      "Diagnosis 6"
label var DX7                      "Diagnosis 7"
label var DX8                      "Diagnosis 8"
label var DX9                      "Diagnosis 9"
label var DXCCS1                   "CCS: diagnosis 1"
label var DXCCS2                   "CCS: diagnosis 2"
label var DXCCS3                   "CCS: diagnosis 3"
label var DXCCS4                   "CCS: diagnosis 4"
label var DXCCS5                   "CCS: diagnosis 5"
label var DXCCS6                   "CCS: diagnosis 6"
label var DXCCS7                   "CCS: diagnosis 7"
label var DXCCS8                   "CCS: diagnosis 8"
label var DXCCS9                   "CCS: diagnosis 9"
label var DXVER                    "Diagnosis Version"
label var DaysToEvent              "Days from 'start date' to admission"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var ECODE8                   "E code 8"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_CCS7                   "CCS: E Code 7"
label var E_CCS8                   "CCS: E Code 8"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var Homeless                 "Indicator that patient is homeless"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MARITALSTATUS_X          "Patient's marital status (as received from source)"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var NCHRONIC                 "Number of chronic conditions"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
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
label var PR1                      "Procedure 1"
label var PR2                      "Procedure 2"
label var PR3                      "Procedure 3"
label var PR4                      "Procedure 4"
label var PR5                      "Procedure 5"
label var PR6                      "Procedure 6"
label var PRCCS1                   "CCS: procedure 1"
label var PRCCS2                   "CCS: procedure 2"
label var PRCCS3                   "CCS: procedure 3"
label var PRCCS4                   "CCS: procedure 4"
label var PRCCS5                   "CCS: procedure 5"
label var PRCCS6                   "CCS: procedure 6"
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var STATE_AS                 "State Ambulatory Surgery service indicator"
label var STATE_ED                 "State Emergency Department service indicator"
label var STATE_OS                 "State Observation Stay service indicator"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var VisitLink                "Visit linkage variable"
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var AYEAR                    "Admission year"
label var BMONTH                   "Birth month"
label var BYEAR                    "Birth year"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DURATION                  (-99999 -88888 -66666=.)
recode DXCCS1                    (-999 -888 -666=.)
recode DXCCS2                    (-999 -888 -666=.)
recode DXCCS3                    (-999 -888 -666=.)
recode DXCCS4                    (-999 -888 -666=.)
recode DXCCS5                    (-999 -888 -666=.)
recode DXCCS6                    (-999 -888 -666=.)
recode DXCCS7                    (-999 -888 -666=.)
recode DXCCS8                    (-999 -888 -666=.)
recode DXCCS9                    (-999 -888 -666=.)
recode DXVER                     (-99 -88 -66=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode E_CCS1                    (-999 -888 -666=.)
recode E_CCS2                    (-999 -888 -666=.)
recode E_CCS3                    (-999 -888 -666=.)
recode E_CCS4                    (-999 -888 -666=.)
recode E_CCS5                    (-999 -888 -666=.)
recode E_CCS6                    (-999 -888 -666=.)
recode E_CCS7                    (-999 -888 -666=.)
recode E_CCS8                    (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
recode PAY3                      (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
recode PL_RUCC                   (-9 -8 -6 -5=.)
recode PL_UIC                    (-9 -8 -6 -5=.)
recode PL_UR_CAT4                (-9 -8 -6 -5=.)
recode PRCCS1                    (-99 -88 -66=.)
recode PRCCS2                    (-99 -88 -66=.)
recode PRCCS3                    (-99 -88 -66=.)
recode PRCCS4                    (-99 -88 -66=.)
recode PRCCS5                    (-99 -88 -66=.)
recode PRCCS6                    (-99 -88 -66=.)
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode STATE_AS                  (-9 -8 -6 -5=.)
recode STATE_ED                  (-9 -8 -6 -5=.)
recode STATE_OS                  (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode VisitLink                 (-99999999 -88888888 -66666666=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)
recode BMONTH                    (-9 -8 -6 -5=.)
recode BYEAR                     (-999 -888 -666=.)

save "UT_SEDD_2014_CORE.dta", replace
