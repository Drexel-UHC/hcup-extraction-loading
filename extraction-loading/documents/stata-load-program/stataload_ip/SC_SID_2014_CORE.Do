/*****************************************************************************
* Creation Date: 02/08/2017   
* Modify Date:   10/19/2017 - matches data created on date above.
* SC_SID_2014_CORE.Do
* This program will load the 2014 SC ASCII CORE File into Stata.
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
      byte   DIED                         7-   8   ///
      byte   DISPUB04                     9-  10   ///
      byte   DISPUNIFORM                 11-  12   ///
      str    DISP_X                      13-  14   ///
      byte   DMONTH                      15-  16   ///
      byte   DQTR                        17-  18   ///
      int    DRG                         19-  21   ///
      int    DRG24                       22-  24   ///
      byte   DRGVER                      25-  26   ///
      int    DRG_NoPOA                   27-  29   ///
      str    DX1                         30-  36   ///
      str    DX2                         37-  43   ///
      str    DX3                         44-  50   ///
      str    DX4                         51-  57   ///
      str    DX5                         58-  64   ///
      str    DX6                         65-  71   ///
      str    DX7                         72-  78   ///
      str    DX8                         79-  85   ///
      str    DX9                         86-  92   ///
      str    DX10                        93-  99   ///
      str    DX11                       100- 106   ///
      str    DX12                       107- 113   ///
      str    DX13                       114- 120   ///
      str    DX14                       121- 127   ///
      str    DX15                       128- 134   ///
      int    DXCCS1                     135- 138   ///
      int    DXCCS2                     139- 142   ///
      int    DXCCS3                     143- 146   ///
      int    DXCCS4                     147- 150   ///
      int    DXCCS5                     151- 154   ///
      int    DXCCS6                     155- 158   ///
      int    DXCCS7                     159- 162   ///
      int    DXCCS8                     163- 166   ///
      int    DXCCS9                     167- 170   ///
      int    DXCCS10                    171- 174   ///
      int    DXCCS11                    175- 178   ///
      int    DXCCS12                    179- 182   ///
      int    DXCCS13                    183- 186   ///
      int    DXCCS14                    187- 190   ///
      int    DXCCS15                    191- 194   ///
      str    DXPOA1                     195        ///
      str    DXPOA2                     196        ///
      str    DXPOA3                     197        ///
      str    DXPOA4                     198        ///
      str    DXPOA5                     199        ///
      str    DXPOA6                     200        ///
      str    DXPOA7                     201        ///
      str    DXPOA8                     202        ///
      str    DXPOA9                     203        ///
      str    DXPOA10                    204        ///
      str    DXPOA11                    205        ///
      str    DXPOA12                    206        ///
      str    DXPOA13                    207        ///
      str    DXPOA14                    208        ///
      str    DXPOA15                    209        ///
      int    DXVER                      210- 212   ///
      str    DX_Admitting               213- 219   ///
      int    DaysICU                    220- 222   ///
      str    ECODE1                     223- 229   ///
      str    ECODE2                     230- 236   ///
      str    ECODE3                     237- 243   ///
      str    ECODE4                     244- 250   ///
      str    ECODE5                     251- 257   ///
      str    ECODE6                     258- 264   ///
      str    ECODE7                     265- 271   ///
      str    ECODE8                     272- 278   ///
      int    E_CCS1                     279- 282   ///
      int    E_CCS2                     283- 286   ///
      int    E_CCS3                     287- 290   ///
      int    E_CCS4                     291- 294   ///
      int    E_CCS5                     295- 298   ///
      int    E_CCS6                     299- 302   ///
      int    E_CCS7                     303- 306   ///
      int    E_CCS8                     307- 310   ///
      str    E_POA1                     311        ///
      str    E_POA2                     312        ///
      str    E_POA3                     313        ///
      str    E_POA4                     314        ///
      str    E_POA5                     315        ///
      str    E_POA6                     316        ///
      str    E_POA7                     317        ///
      str    E_POA8                     318        ///
      byte   FEMALE                     319- 320   ///
      byte   HCUP_ED                    321- 322   ///
      byte   HCUP_OS                    323- 324   ///
      int    HOSPBRTH                   325- 327   ///
      str    HOSPST                     328- 329   ///
      double KEY                        330- 344   ///
      long   LOS                        345- 349   ///
      long   LOS_X                      350- 355   ///
      byte   MDC                        356- 357   ///
      byte   MDC24                      358- 359   ///
      byte   MDC_NoPOA                  360- 361   ///
      str    MDSPEC1                    362- 364   ///
      str    MDSPEC2                    365- 367   ///
      byte   MEDINCSTQ                  368- 369   ///
      int    NCHRONIC                   370- 372   ///
      int    NDX                        373- 375   ///
      byte   NECODE                     376- 377   ///
      byte   NEOMAT                     378- 379   ///
      int    NPR                        380- 382   ///
      byte   ORPROC                     383- 384   ///
      double OS_TIME                    385- 395   ///
      byte   PAY1                       396- 397   ///
      str    PAY1_X                     398- 399   ///
      byte   PL_NCHS                    400- 401   ///
      byte   PL_UR_CAT4                 402- 403   ///
      byte   POA_Disch_Edit1            404- 405   ///
      byte   POA_Disch_Edit2            406- 407   ///
      byte   POA_Hosp_Edit1             408- 409   ///
      byte   POA_Hosp_Edit2             410- 411   ///
      byte   POA_Hosp_Edit3             412- 413   ///
      double POA_Hosp_Edit3_Value       414- 421   ///
      str    PR1                        422- 428   ///
      str    PR2                        429- 435   ///
      str    PR3                        436- 442   ///
      str    PR4                        443- 449   ///
      str    PR5                        450- 456   ///
      str    PR6                        457- 463   ///
      str    PR7                        464- 470   ///
      str    PR8                        471- 477   ///
      str    PR9                        478- 484   ///
      str    PR10                       485- 491   ///
      str    PR11                       492- 498   ///
      str    PR12                       499- 505   ///
      str    PR13                       506- 512   ///
      int    PRCCS1                     513- 515   ///
      int    PRCCS2                     516- 518   ///
      int    PRCCS3                     519- 521   ///
      int    PRCCS4                     522- 524   ///
      int    PRCCS5                     525- 527   ///
      int    PRCCS6                     528- 530   ///
      int    PRCCS7                     531- 533   ///
      int    PRCCS8                     534- 536   ///
      int    PRCCS9                     537- 539   ///
      int    PRCCS10                    540- 542   ///
      int    PRCCS11                    543- 545   ///
      int    PRCCS12                    546- 548   ///
      int    PRCCS13                    549- 551   ///
      long   PRDAY1                     552- 556   ///
      long   PRDAY2                     557- 561   ///
      long   PRDAY3                     562- 566   ///
      long   PRDAY4                     567- 571   ///
      long   PRDAY5                     572- 576   ///
      long   PRDAY6                     577- 581   ///
      long   PRDAY7                     582- 586   ///
      long   PRDAY8                     587- 591   ///
      long   PRDAY9                     592- 596   ///
      long   PRDAY10                    597- 601   ///
      long   PRDAY11                    602- 606   ///
      long   PRDAY12                    607- 611   ///
      long   PRDAY13                    612- 616   ///
      int    PROCTYPE                   617- 619   ///
      int    PRVER                      620- 622   ///
      str    PSTATE                     623- 624   ///
      long   PSTCO                      625- 629   ///
      str    PointOfOriginUB04          630        ///
      str    PointOfOrigin_X            631        ///
      byte   RACE                       632- 633   ///
      str    RACE_X                     634        ///
      byte   SERVICELINE                635- 636   ///
      double TOTCHG                     637- 646   ///
      double TOTCHG_X                   647- 661   ///
      byte   TRAN_IN                    662- 663   ///
      byte   TRAN_OUT                   664- 665   ///
      int    YEAR                       666- 669   ///
      int    ZIPINC_QRTL                670- 672   ///
      int    AGEGROUP                   673- 675   ///
      int    AYEAR                      676- 679   ///
      using  "SC_SID_2014_CORE.ASC"

***  Assign labels to the data elements ***
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
label var DX_Admitting             "Admitting Diagnosis Code"
label var DaysICU                  "Days in medical/surgical intensive care unit (as received from source)"
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
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var E_POA7                   "E Code 7, present on admission indicator"
label var E_POA8                   "E Code 8, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC24                    "MDC, version 24"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
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
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
label var POA_Disch_Edit1          "Indication that a discharge has POA missing on all nonexempt diagnoses"
label var POA_Disch_Edit2          "Indication that a discharge has POA missing on all nonexempt secondary diagnoses"
label var POA_Hosp_Edit1           "Indication that a hospital has POA reported as Y on all diagnoses on all discharges"
label var POA_Hosp_Edit2           "Indication that a hospital has POA reported as missing on all non-Medicare discharges"
label var POA_Hosp_Edit3           "Hospital reported POA as missing on all nonexempt diagnoses for 15% or more of discharges"
label var POA_Hosp_Edit3_Value     "Percentage of discharges with all nonexempt diagnoses missing POA indicators"
label var PR1                      "Procedure 1"
label var PR2                      "Procedure 2"
label var PR3                      "Procedure 3"
label var PR4                      "Procedure 4"
label var PR5                      "Procedure 5"
label var PR6                      "Procedure 6"
label var PR7                      "Procedure 7"
label var PR8                      "Procedure 8"
label var PR9                      "Procedure 9"
label var PR10                     "Procedure 10"
label var PR11                     "Procedure 11"
label var PR12                     "Procedure 12"
label var PR13                     "Procedure 13"
label var PRCCS1                   "CCS: procedure 1"
label var PRCCS2                   "CCS: procedure 2"
label var PRCCS3                   "CCS: procedure 3"
label var PRCCS4                   "CCS: procedure 4"
label var PRCCS5                   "CCS: procedure 5"
label var PRCCS6                   "CCS: procedure 6"
label var PRCCS7                   "CCS: procedure 7"
label var PRCCS8                   "CCS: procedure 8"
label var PRCCS9                   "CCS: procedure 9"
label var PRCCS10                  "CCS: procedure 10"
label var PRCCS11                  "CCS: procedure 11"
label var PRCCS12                  "CCS: procedure 12"
label var PRCCS13                  "CCS: procedure 13"
label var PRDAY1                   "Number of days from admission to PR1"
label var PRDAY2                   "Number of days from admission to PR2"
label var PRDAY3                   "Number of days from admission to PR3"
label var PRDAY4                   "Number of days from admission to PR4"
label var PRDAY5                   "Number of days from admission to PR5"
label var PRDAY6                   "Number of days from admission to PR6"
label var PRDAY7                   "Number of days from admission to PR7"
label var PRDAY8                   "Number of days from admission to PR8"
label var PRDAY9                   "Number of days from admission to PR9"
label var PRDAY10                  "Number of days from admission to PR10"
label var PRDAY11                  "Number of days from admission to PR11"
label var PRDAY12                  "Number of days from admission to PR12"
label var PRDAY13                  "Number of days from admission to PR13"
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var SERVICELINE              "Hospital Service Line"
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
recode DXVER                     (-99 -88 -66=.)
recode DaysICU                   (-99 -88 -66=.)
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
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC24                     (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
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
recode PRCCS1                    (-99 -88 -66=.)
recode PRCCS2                    (-99 -88 -66=.)
recode PRCCS3                    (-99 -88 -66=.)
recode PRCCS4                    (-99 -88 -66=.)
recode PRCCS5                    (-99 -88 -66=.)
recode PRCCS6                    (-99 -88 -66=.)
recode PRCCS7                    (-99 -88 -66=.)
recode PRCCS8                    (-99 -88 -66=.)
recode PRCCS9                    (-99 -88 -66=.)
recode PRCCS10                   (-99 -88 -66=.)
recode PRCCS11                   (-99 -88 -66=.)
recode PRCCS12                   (-99 -88 -66=.)
recode PRCCS13                   (-99 -88 -66=.)
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
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode SERVICELINE               (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AGEGROUP                  (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)

save "SC_SID_2014_CORE.dta", replace
