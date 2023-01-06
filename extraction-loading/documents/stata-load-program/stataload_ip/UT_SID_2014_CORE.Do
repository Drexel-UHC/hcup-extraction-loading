/*****************************************************************************
* Creation Date: 11/17/2016   
* UT_SID_2014_CORE.Do
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
      int    ADRG                         1-   3   ///
      byte   ADRGRISKMORTALITY            4-   5   ///
      byte   ADRGSEV                      6-   7   ///
      int    AGE                          8-  10   ///
      int    AGEDAY                      11-  13   ///
      int    AGEMONTH                    14-  16   ///
      byte   AMONTH                      17-  18   ///
      byte   ATYPE                       19-  20   ///
      byte   AWEEKEND                    21-  22   ///
      byte   DIED                        23-  24   ///
      byte   DISPUB04                    25-  26   ///
      byte   DISPUNIFORM                 27-  28   ///
      str    DISP_X                      29-  30   ///
      byte   DMONTH                      31-  32   ///
      byte   DQTR                        33-  34   ///
      int    DRG                         35-  37   ///
      int    DRG24                       38-  40   ///
      byte   DRGVER                      41-  42   ///
      int    DRG_NoPOA                   43-  45   ///
      str    DSHOSPID                    46-  62   ///
      str    DX1                         63-  69   ///
      str    DX2                         70-  76   ///
      str    DX3                         77-  83   ///
      str    DX4                         84-  90   ///
      str    DX5                         91-  97   ///
      str    DX6                         98- 104   ///
      str    DX7                        105- 111   ///
      str    DX8                        112- 118   ///
      str    DX9                        119- 125   ///
      str    DX10                       126- 132   ///
      str    DX11                       133- 139   ///
      str    DX12                       140- 146   ///
      str    DX13                       147- 153   ///
      str    DX14                       154- 160   ///
      str    DX15                       161- 167   ///
      str    DX16                       168- 174   ///
      str    DX17                       175- 181   ///
      str    DX18                       182- 188   ///
      int    DXCCS1                     189- 192   ///
      int    DXCCS2                     193- 196   ///
      int    DXCCS3                     197- 200   ///
      int    DXCCS4                     201- 204   ///
      int    DXCCS5                     205- 208   ///
      int    DXCCS6                     209- 212   ///
      int    DXCCS7                     213- 216   ///
      int    DXCCS8                     217- 220   ///
      int    DXCCS9                     221- 224   ///
      int    DXCCS10                    225- 228   ///
      int    DXCCS11                    229- 232   ///
      int    DXCCS12                    233- 236   ///
      int    DXCCS13                    237- 240   ///
      int    DXCCS14                    241- 244   ///
      int    DXCCS15                    245- 248   ///
      int    DXCCS16                    249- 252   ///
      int    DXCCS17                    253- 256   ///
      int    DXCCS18                    257- 260   ///
      int    DXVER                      261- 263   ///
      str    DX_Admitting               264- 270   ///
      long   DaysToEvent                271- 276   ///
      str    ECODE1                     277- 283   ///
      str    ECODE2                     284- 290   ///
      str    ECODE3                     291- 297   ///
      str    ECODE4                     298- 304   ///
      str    ECODE5                     305- 311   ///
      str    ECODE6                     312- 318   ///
      str    ECODE7                     319- 325   ///
      str    ECODE8                     326- 332   ///
      int    E_CCS1                     333- 336   ///
      int    E_CCS2                     337- 340   ///
      int    E_CCS3                     341- 344   ///
      int    E_CCS4                     345- 348   ///
      int    E_CCS5                     349- 352   ///
      int    E_CCS6                     353- 356   ///
      int    E_CCS7                     357- 360   ///
      int    E_CCS8                     361- 364   ///
      byte   FEMALE                     365- 366   ///
      byte   HCUP_ED                    367- 368   ///
      byte   HCUP_OS                    369- 370   ///
      str    HISPANIC_X                 371        ///
      int    HOSPBRTH                   372- 374   ///
      str    HOSPST                     375- 376   ///
      byte   Homeless                   377- 378   ///
      double KEY                        379- 393   ///
      long   LOS                        394- 398   ///
      long   LOS_X                      399- 404   ///
      str    MARITALSTATUSUB04          405        ///
      str    MARITALSTATUS_X            406        ///
      byte   MDC                        407- 408   ///
      byte   MDC24                      409- 410   ///
      byte   MDC_NoPOA                  411- 412   ///
      long   MDNUM1_R                   413- 421   ///
      str    MDSPEC1                    422- 428   ///
      str    MDSPEC2                    429- 435   ///
      byte   MEDINCSTQ                  436- 437   ///
      int    NCHRONIC                   438- 440   ///
      int    NDX                        441- 443   ///
      byte   NECODE                     444- 445   ///
      byte   NEOMAT                     446- 447   ///
      int    NPR                        448- 450   ///
      byte   ORPROC                     451- 452   ///
      double OS_TIME                    453- 463   ///
      byte   PAY1                       464- 465   ///
      str    PAY1_X                     466- 467   ///
      byte   PAY2                       468- 469   ///
      str    PAY2_X                     470- 471   ///
      byte   PAY3                       472- 473   ///
      str    PAY3_X                     474- 475   ///
      int    PL_CBSA                    476- 478   ///
      byte   PL_NCHS                    479- 480   ///
      byte   PL_RUCC                    481- 482   ///
      byte   PL_UIC                     483- 484   ///
      byte   PL_UR_CAT4                 485- 486   ///
      str    PR1                        487- 493   ///
      str    PR2                        494- 500   ///
      str    PR3                        501- 507   ///
      str    PR4                        508- 514   ///
      str    PR5                        515- 521   ///
      str    PR6                        522- 528   ///
      int    PRCCS1                     529- 531   ///
      int    PRCCS2                     532- 534   ///
      int    PRCCS3                     535- 537   ///
      int    PRCCS4                     538- 540   ///
      int    PRCCS5                     541- 543   ///
      int    PRCCS6                     544- 546   ///
      long   PRDAY1                     547- 551   ///
      long   PRDAY2                     552- 556   ///
      long   PRDAY3                     557- 561   ///
      long   PRDAY4                     562- 566   ///
      long   PRDAY5                     567- 571   ///
      long   PRDAY6                     572- 576   ///
      int    PROCTYPE                   577- 579   ///
      int    PRVER                      580- 582   ///
      str    PSTATE                     583- 584   ///
      long   PSTCO                      585- 589   ///
      long   PSTCO2                     590- 594   ///
      str    PointOfOriginUB04          595        ///
      str    PointOfOrigin_X            596        ///
      byte   RACE                       597- 598   ///
      str    RACE_X                     599        ///
      byte   SERVICELINE                600- 601   ///
      double TOTCHG                     602- 611   ///
      double TOTCHG_X                   612- 626   ///
      byte   TRAN_IN                    627- 628   ///
      byte   TRAN_OUT                   629- 630   ///
      long   VisitLink                  631- 639   ///
      int    YEAR                       640- 643   ///
      str    ZIP                        644- 648   ///
      str    ZIP3                       649- 651   ///
      int    ZIPINC_QRTL                652- 654   ///
      int    AYEAR                      655- 658   ///
      byte   BMONTH                     659- 660   ///
      int    BYEAR                      661- 664   ///
      byte   PRMONTH1                   665- 666   ///
      byte   PRMONTH2                   667- 668   ///
      byte   PRMONTH3                   669- 670   ///
      byte   PRMONTH4                   671- 672   ///
      byte   PRMONTH5                   673- 674   ///
      byte   PRMONTH6                   675- 676   ///
      int    PRYEAR1                    677- 680   ///
      int    PRYEAR2                    681- 684   ///
      int    PRYEAR3                    685- 688   ///
      int    PRYEAR4                    689- 692   ///
      int    PRYEAR5                    693- 696   ///
      int    PRYEAR6                    697- 700   ///
      using  "UT_SID_2014_CORE.ASC"

***  Assign labels to the data elements ***
label var ADRG                     "All Patient Refined DRG"
label var ADRGRISKMORTALITY        "All Patient Refined DRG mortality risk"
label var ADRGSEV                  "All Patient Refined DRG severity level"
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRG24                    "DRG, version 24"
label var DRGVER                   "DRG grouper version used on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
label var DSHOSPID                 "Data source hospital identifier"
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
label var DX12                     "Diagnosis 12"
label var DX13                     "Diagnosis 13"
label var DX14                     "Diagnosis 14"
label var DX15                     "Diagnosis 15"
label var DX16                     "Diagnosis 16"
label var DX17                     "Diagnosis 17"
label var DX18                     "Diagnosis 18"
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
label var DXCCS12                  "CCS: diagnosis 12"
label var DXCCS13                  "CCS: diagnosis 13"
label var DXCCS14                  "CCS: diagnosis 14"
label var DXCCS15                  "CCS: diagnosis 15"
label var DXCCS16                  "CCS: diagnosis 16"
label var DXCCS17                  "CCS: diagnosis 17"
label var DXCCS18                  "CCS: diagnosis 18"
label var DXVER                    "Diagnosis Version"
label var DX_Admitting             "Admitting Diagnosis Code"
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
label var MDC                      "MDC in effect on discharge date"
label var MDC24                    "MDC, version 24"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDSPEC1                  "Physician 1 specialty (as received from source)"
label var MDSPEC2                  "Physician 2 specialty (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCHRONIC                 "Number of chronic conditions"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
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
label var PRDAY1                   "Number of days from admission to PR1"
label var PRDAY2                   "Number of days from admission to PR2"
label var PRDAY3                   "Number of days from admission to PR3"
label var PRDAY4                   "Number of days from admission to PR4"
label var PRDAY5                   "Number of days from admission to PR5"
label var PRDAY6                   "Number of days from admission to PR6"
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var SERVICELINE              "Hospital Service Line"
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
label var PRYEAR1                  "Year of procedure 1"
label var PRYEAR2                  "Year of procedure 2"
label var PRYEAR3                  "Year of procedure 3"
label var PRYEAR4                  "Year of procedure 4"
label var PRYEAR5                  "Year of procedure 5"
label var PRYEAR6                  "Year of procedure 6"

*** Convert special values to missing values ***
recode ADRG                      (-99 -88 -66=.)
recode ADRGRISKMORTALITY         (-9 -8 -6 -5=.)
recode ADRGSEV                   (-9 -8 -6 -5=.)
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG24                     (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
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
recode DXCCS12                   (-999 -888 -666=.)
recode DXCCS13                   (-999 -888 -666=.)
recode DXCCS14                   (-999 -888 -666=.)
recode DXCCS15                   (-999 -888 -666=.)
recode DXCCS16                   (-999 -888 -666=.)
recode DXCCS17                   (-999 -888 -666=.)
recode DXCCS18                   (-999 -888 -666=.)
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
recode MDC                       (-9 -8 -6 -5=.)
recode MDC24                     (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
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
recode PRDAY1                    (-9999 -8888 -6666=.)
recode PRDAY2                    (-9999 -8888 -6666=.)
recode PRDAY3                    (-9999 -8888 -6666=.)
recode PRDAY4                    (-9999 -8888 -6666=.)
recode PRDAY5                    (-9999 -8888 -6666=.)
recode PRDAY6                    (-9999 -8888 -6666=.)
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode SERVICELINE               (-9 -8 -6 -5=.)
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
recode PRYEAR1                   (-999 -888 -666=.)
recode PRYEAR2                   (-999 -888 -666=.)
recode PRYEAR3                   (-999 -888 -666=.)
recode PRYEAR4                   (-999 -888 -666=.)
recode PRYEAR5                   (-999 -888 -666=.)
recode PRYEAR6                   (-999 -888 -666=.)

save "UT_SID_2014_CORE.dta", replace
