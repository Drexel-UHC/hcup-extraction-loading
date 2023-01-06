/*****************************************************************************
* Creation Date: 11/13/2017   
* RI_SEDD_2015q1q3_CORE.Do
* This program will load the 2015 RI ASCII CORE File into Stata.
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
      int    AHOUR                        4-   7   ///
      byte   AMONTH                       8-   9   ///
      byte   ATYPE                       10-  11   ///
      byte   AWEEKEND                    12-  13   ///
      str    CPT1                        14-  18   ///
      str    CPT2                        19-  23   ///
      str    CPT3                        24-  28   ///
      str    CPT4                        29-  33   ///
      str    CPT5                        34-  38   ///
      str    CPT6                        39-  43   ///
      str    CPT7                        44-  48   ///
      str    CPT8                        49-  53   ///
      str    CPT9                        54-  58   ///
      str    CPT10                       59-  63   ///
      str    CPT11                       64-  68   ///
      int    CPTCCS1                     69-  71   ///
      int    CPTCCS2                     72-  74   ///
      int    CPTCCS3                     75-  77   ///
      int    CPTCCS4                     78-  80   ///
      int    CPTCCS5                     81-  83   ///
      int    CPTCCS6                     84-  86   ///
      int    CPTCCS7                     87-  89   ///
      int    CPTCCS8                     90-  92   ///
      int    CPTCCS9                     93-  95   ///
      int    CPTCCS10                    96-  98   ///
      int    CPTCCS11                    99- 101   ///
      int    CPTDAY1                    102- 104   ///
      int    CPTDAY2                    105- 107   ///
      int    CPTDAY3                    108- 110   ///
      int    CPTDAY4                    111- 113   ///
      int    CPTDAY5                    114- 116   ///
      int    CPTDAY6                    117- 119   ///
      int    CPTDAY7                    120- 122   ///
      int    CPTDAY8                    123- 125   ///
      int    CPTDAY9                    126- 128   ///
      int    CPTDAY10                   129- 131   ///
      int    CPTDAY11                   132- 134   ///
      int    DHOUR                      135- 138   ///
      byte   DIED                       139- 140   ///
      str    DISP_X                     141- 142   ///
      byte   DISPUB04                   143- 144   ///
      byte   DISPUNIFORM                145- 146   ///
      byte   DMONTH                     147- 148   ///
      byte   DQTR                       149- 150   ///
      str    DSHOSPID                   151- 167   ///
      long   DURATION                   168- 173   ///
      str    DX_Visit_Reason1           174- 180   ///
      str    DX1                        181- 187   ///
      str    DX2                        188- 194   ///
      str    DX3                        195- 201   ///
      str    DX4                        202- 208   ///
      str    DX5                        209- 215   ///
      str    DX6                        216- 222   ///
      str    DX7                        223- 229   ///
      str    DX8                        230- 236   ///
      str    DX9                        237- 243   ///
      str    DX10                       244- 250   ///
      str    DX11                       251- 257   ///
      int    DXCCS1                     258- 261   ///
      int    DXCCS2                     262- 265   ///
      int    DXCCS3                     266- 269   ///
      int    DXCCS4                     270- 273   ///
      int    DXCCS5                     274- 277   ///
      int    DXCCS6                     278- 281   ///
      int    DXCCS7                     282- 285   ///
      int    DXCCS8                     286- 289   ///
      int    DXCCS9                     290- 293   ///
      int    DXCCS10                    294- 297   ///
      int    DXCCS11                    298- 301   ///
      int    DXVER                      302- 304   ///
      int    E_CCS1                     305- 308   ///
      int    E_CCS2                     309- 312   ///
      int    E_CCS3                     313- 316   ///
      int    E_CCS4                     317- 320   ///
      int    E_CCS5                     321- 324   ///
      int    E_CCS6                     325- 328   ///
      int    E_CCS7                     329- 332   ///
      int    E_CCS8                     333- 336   ///
      int    E_CCS9                     337- 340   ///
      int    E_CCS10                    341- 344   ///
      str    ECODE1                     345- 351   ///
      str    ECODE2                     352- 358   ///
      str    ECODE3                     359- 365   ///
      str    ECODE4                     366- 372   ///
      str    ECODE5                     373- 379   ///
      str    ECODE6                     380- 386   ///
      str    ECODE7                     387- 393   ///
      str    ECODE8                     394- 400   ///
      str    ECODE9                     401- 407   ///
      str    ECODE10                    408- 414   ///
      byte   FEMALE                     415- 416   ///
      byte   HCUP_ED                    417- 418   ///
      byte   HCUP_OS                    419- 420   ///
      byte   HISPANIC                   421- 422   ///
      str    HISPANIC_X                 423- 426   ///
      int    HOSPBRTH                   427- 429   ///
      str    HOSPST                     430- 431   ///
      double KEY                        432- 446   ///
      long   LOS                        447- 451   ///
      long   LOS_X                      452- 457   ///
      long   MDNUM1_R                   458- 466   ///
      long   MDNUM2_R                   467- 475   ///
      long   MDNUM3_R                   476- 484   ///
      byte   MEDINCSTQ                  485- 486   ///
      int    NCHRONIC                   487- 489   ///
      int    NCPT                       490- 493   ///
      int    NDX                        494- 496   ///
      byte   NECODE                     497- 498   ///
      byte   NEOMAT                     499- 500   ///
      int    OBSERVATION                501- 504   ///
      byte   PAY1                       505- 506   ///
      str    PAY1_X                     507- 513   ///
      int    PL_CBSA                    514- 516   ///
      byte   PL_NCHS                    517- 518   ///
      byte   PL_RUCC                    519- 520   ///
      byte   PL_UIC                     521- 522   ///
      byte   PL_UR_CAT4                 523- 524   ///
      str    PointOfOrigin_X            525        ///
      str    PointOfOriginUB04          526        ///
      int    PROCTYPE                   527- 529   ///
      str    PSTATE                     530- 531   ///
      long   PSTCO                      532- 536   ///
      long   PSTCO2                     537- 541   ///
      byte   RACE                       542- 543   ///
      str    RACE_X                     544- 551   ///
      byte   STATE_AS                   552- 553   ///
      byte   STATE_ED                   554- 555   ///
      byte   STATE_OS                   556- 557   ///
      double TOTCHG                     558- 567   ///
      double TOTCHG_X                   568- 582   ///
      int    YEAR                       583- 586   ///
      str    ZIP                        587- 591   ///
      int    ZIPINC_QRTL                592- 594   ///
      str    TOWN                       595- 596   ///
      int    AYEAR                      597- 600   ///
      using  "RI_SEDD_2015q1q3_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var CPT1                     "CPT/HCPCS procedure code 1"
label var CPT2                     "CPT/HCPCS procedure code 2"
label var CPT3                     "CPT/HCPCS procedure code 3"
label var CPT4                     "CPT/HCPCS procedure code 4"
label var CPT5                     "CPT/HCPCS procedure code 5"
label var CPT6                     "CPT/HCPCS procedure code 6"
label var CPT7                     "CPT/HCPCS procedure code 7"
label var CPT8                     "CPT/HCPCS procedure code 8"
label var CPT9                     "CPT/HCPCS procedure code 9"
label var CPT10                    "CPT/HCPCS procedure code 10"
label var CPT11                    "CPT/HCPCS procedure code 11"
label var CPTCCS1                  "CCS: CPT 1"
label var CPTCCS2                  "CCS: CPT 2"
label var CPTCCS3                  "CCS: CPT 3"
label var CPTCCS4                  "CCS: CPT 4"
label var CPTCCS5                  "CCS: CPT 5"
label var CPTCCS6                  "CCS: CPT 6"
label var CPTCCS7                  "CCS: CPT 7"
label var CPTCCS8                  "CCS: CPT 8"
label var CPTCCS9                  "CCS: CPT 9"
label var CPTCCS10                 "CCS: CPT 10"
label var CPTCCS11                 "CCS: CPT 11"
label var CPTDAY1                  "Number of days from admission to CPT1"
label var CPTDAY2                  "Number of days from admission to CPT2"
label var CPTDAY3                  "Number of days from admission to CPT3"
label var CPTDAY4                  "Number of days from admission to CPT4"
label var CPTDAY5                  "Number of days from admission to CPT5"
label var CPTDAY6                  "Number of days from admission to CPT6"
label var CPTDAY7                  "Number of days from admission to CPT7"
label var CPTDAY8                  "Number of days from admission to CPT8"
label var CPTDAY9                  "Number of days from admission to CPT9"
label var CPTDAY10                 "Number of days from admission to CPT10"
label var CPTDAY11                 "Number of days from admission to CPT11"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DSHOSPID                 "Data source hospital identifier"
label var DURATION                 "Elapsed time for hospital care in hours and minutes"
label var DX_Visit_Reason1         "Reason for visit diagnosis 1"
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
label var DXVER                    "Diagnosis Version"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_CCS7                   "CCS: E Code 7"
label var E_CCS8                   "CCS: E Code 8"
label var E_CCS9                   "CCS: E Code 9"
label var E_CCS10                  "CCS: E Code 10"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var ECODE8                   "E code 8"
label var ECODE9                   "E code 9"
label var ECODE10                  "E code 10"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCHRONIC                 "Number of chronic conditions"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var OBSERVATION              "Time for observation services (as received from source)"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes(RUCC)"
label var PL_UIC                   "Patient location: Urban Influence Codes"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PROCTYPE                 "Procedure type indicator"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var STATE_AS                 "State Ambulatory Surgery service indicator"
label var STATE_ED                 "State Emergency Department service indicator"
label var STATE_OS                 "State Observation Stay service indicator"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var TOWN                     "Patient town of residence (as received from source)"
label var AYEAR                    "Admission year"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode CPTCCS1                   (-99 -88 -66=.)
recode CPTCCS2                   (-99 -88 -66=.)
recode CPTCCS3                   (-99 -88 -66=.)
recode CPTCCS4                   (-99 -88 -66=.)
recode CPTCCS5                   (-99 -88 -66=.)
recode CPTCCS6                   (-99 -88 -66=.)
recode CPTCCS7                   (-99 -88 -66=.)
recode CPTCCS8                   (-99 -88 -66=.)
recode CPTCCS9                   (-99 -88 -66=.)
recode CPTCCS10                  (-99 -88 -66=.)
recode CPTCCS11                  (-99 -88 -66=.)
recode CPTDAY1                   (-99 -88 -66=.)
recode CPTDAY2                   (-99 -88 -66=.)
recode CPTDAY3                   (-99 -88 -66=.)
recode CPTDAY4                   (-99 -88 -66=.)
recode CPTDAY5                   (-99 -88 -66=.)
recode CPTDAY6                   (-99 -88 -66=.)
recode CPTDAY7                   (-99 -88 -66=.)
recode CPTDAY8                   (-99 -88 -66=.)
recode CPTDAY9                   (-99 -88 -66=.)
recode CPTDAY10                  (-99 -88 -66=.)
recode CPTDAY11                  (-99 -88 -66=.)
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
recode DXCCS10                   (-999 -888 -666=.)
recode DXCCS11                   (-999 -888 -666=.)
recode DXVER                     (-99 -88 -66=.)
recode E_CCS1                    (-999 -888 -666=.)
recode E_CCS2                    (-999 -888 -666=.)
recode E_CCS3                    (-999 -888 -666=.)
recode E_CCS4                    (-999 -888 -666=.)
recode E_CCS5                    (-999 -888 -666=.)
recode E_CCS6                    (-999 -888 -666=.)
recode E_CCS7                    (-999 -888 -666=.)
recode E_CCS8                    (-999 -888 -666=.)
recode E_CCS9                    (-999 -888 -666=.)
recode E_CCS10                   (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NCPT                      (-999 -888 -666=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode OBSERVATION               (-999 -888 -666=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
recode PL_RUCC                   (-9 -8 -6 -5=.)
recode PL_UIC                    (-9 -8 -6 -5=.)
recode PL_UR_CAT4                (-9 -8 -6 -5=.)
recode PROCTYPE                  (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode STATE_AS                  (-9 -8 -6 -5=.)
recode STATE_ED                  (-9 -8 -6 -5=.)
recode STATE_OS                  (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)

save "RI_SEDD_2015q1q3_CORE.dta", replace
