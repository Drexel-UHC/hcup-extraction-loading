/*****************************************************************************
* Creation Date: 05/11/2016   
* RI_SEDD_2014_CORE.Do
* This program will load the 2014 RI ASCII CORE File into Stata.
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
      byte   DISPUB04                   141- 142   ///
      byte   DISPUNIFORM                143- 144   ///
      str    DISP_X                     145- 146   ///
      byte   DMONTH                     147- 148   ///
      byte   DQTR                       149- 150   ///
      str    DSHOSPID                   151- 167   ///
      long   DURATION                   168- 173   ///
      str    DX1                        174- 180   ///
      str    DX2                        181- 187   ///
      str    DX3                        188- 194   ///
      str    DX4                        195- 201   ///
      str    DX5                        202- 208   ///
      str    DX6                        209- 215   ///
      str    DX7                        216- 222   ///
      str    DX8                        223- 229   ///
      str    DX9                        230- 236   ///
      str    DX10                       237- 243   ///
      str    DX11                       244- 250   ///
      int    DXCCS1                     251- 254   ///
      int    DXCCS2                     255- 258   ///
      int    DXCCS3                     259- 262   ///
      int    DXCCS4                     263- 266   ///
      int    DXCCS5                     267- 270   ///
      int    DXCCS6                     271- 274   ///
      int    DXCCS7                     275- 278   ///
      int    DXCCS8                     279- 282   ///
      int    DXCCS9                     283- 286   ///
      int    DXCCS10                    287- 290   ///
      int    DXCCS11                    291- 294   ///
      int    DXVER                      295- 297   ///
      str    DX_Visit_Reason1           298- 304   ///
      str    ECODE1                     305- 311   ///
      str    ECODE2                     312- 318   ///
      str    ECODE3                     319- 325   ///
      str    ECODE4                     326- 332   ///
      str    ECODE5                     333- 339   ///
      str    ECODE6                     340- 346   ///
      str    ECODE7                     347- 353   ///
      str    ECODE8                     354- 360   ///
      str    ECODE9                     361- 367   ///
      int    E_CCS1                     368- 371   ///
      int    E_CCS2                     372- 375   ///
      int    E_CCS3                     376- 379   ///
      int    E_CCS4                     380- 383   ///
      int    E_CCS5                     384- 387   ///
      int    E_CCS6                     388- 391   ///
      int    E_CCS7                     392- 395   ///
      int    E_CCS8                     396- 399   ///
      int    E_CCS9                     400- 403   ///
      byte   FEMALE                     404- 405   ///
      byte   HCUP_ED                    406- 407   ///
      byte   HCUP_OS                    408- 409   ///
      str    HISPANIC_X                 410- 417   ///
      int    HOSPBRTH                   418- 420   ///
      str    HOSPST                     421- 422   ///
      double KEY                        423- 437   ///
      long   LOS                        438- 442   ///
      long   LOS_X                      443- 448   ///
      long   MDNUM1_R                   449- 457   ///
      long   MDNUM2_R                   458- 466   ///
      long   MDNUM3_R                   467- 475   ///
      byte   MEDINCSTQ                  476- 477   ///
      int    NCHRONIC                   478- 480   ///
      int    NCPT                       481- 484   ///
      int    NDX                        485- 487   ///
      byte   NECODE                     488- 489   ///
      byte   NEOMAT                     490- 491   ///
      int    OBSERVATION                492- 495   ///
      byte   PAY1                       496- 497   ///
      str    PAY1_X                     498- 504   ///
      int    PL_CBSA                    505- 507   ///
      byte   PL_NCHS                    508- 509   ///
      byte   PL_RUCC                    510- 511   ///
      byte   PL_UIC                     512- 513   ///
      byte   PL_UR_CAT4                 514- 515   ///
      int    PROCTYPE                   516- 518   ///
      str    PSTATE                     519- 520   ///
      long   PSTCO                      521- 525   ///
      long   PSTCO2                     526- 530   ///
      str    PointOfOriginUB04          531        ///
      str    PointOfOrigin_X            532        ///
      byte   RACE                       533- 534   ///
      str    RACE_X                     535- 542   ///
      byte   STATE_AS                   543- 544   ///
      byte   STATE_ED                   545- 546   ///
      byte   STATE_OS                   547- 548   ///
      double TOTCHG                     549- 558   ///
      double TOTCHG_X                   559- 573   ///
      int    YEAR                       574- 577   ///
      str    ZIP                        578- 582   ///
      int    ZIPINC_QRTL                583- 585   ///
      str    TOWN                       586- 587   ///
      int    AYEAR                      588- 591   ///
      using  "RI_SEDD_2014_CORE.ASC"

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
label var DX_Visit_Reason1         "Reason for visit diagnosis 1"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var ECODE8                   "E code 8"
label var ECODE9                   "E code 9"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_CCS7                   "CCS: E Code 7"
label var E_CCS8                   "CCS: E Code 8"
label var E_CCS9                   "CCS: E Code 9"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
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
label var NCPT                     "Number of CPT/HCPCS procedures on this record"
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
label var PROCTYPE                 "Procedure type indicator"
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
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
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

save "RI_SEDD_2014_CORE.dta", replace
