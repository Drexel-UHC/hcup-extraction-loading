/*****************************************************************************
* Creation Date: 02/16/2017   
* SC_SEDD_2014_CORE.Do
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
      str    DX1                         19-  25   ///
      str    DX2                         26-  32   ///
      str    DX3                         33-  39   ///
      str    DX4                         40-  46   ///
      str    DX5                         47-  53   ///
      str    DX6                         54-  60   ///
      str    DX7                         61-  67   ///
      str    DX8                         68-  74   ///
      str    DX9                         75-  81   ///
      str    DX10                        82-  88   ///
      str    DX11                        89-  95   ///
      str    DX12                        96- 102   ///
      str    DX13                       103- 109   ///
      str    DX14                       110- 116   ///
      str    DX15                       117- 123   ///
      int    DXCCS1                     124- 127   ///
      int    DXCCS2                     128- 131   ///
      int    DXCCS3                     132- 135   ///
      int    DXCCS4                     136- 139   ///
      int    DXCCS5                     140- 143   ///
      int    DXCCS6                     144- 147   ///
      int    DXCCS7                     148- 151   ///
      int    DXCCS8                     152- 155   ///
      int    DXCCS9                     156- 159   ///
      int    DXCCS10                    160- 163   ///
      int    DXCCS11                    164- 167   ///
      int    DXCCS12                    168- 171   ///
      int    DXCCS13                    172- 175   ///
      int    DXCCS14                    176- 179   ///
      int    DXCCS15                    180- 183   ///
      int    DXVER                      184- 186   ///
      str    DX_Visit_Reason1           187- 193   ///
      str    DX_Visit_Reason2           194- 200   ///
      str    DX_Visit_Reason3           201- 207   ///
      str    ECODE1                     208- 214   ///
      str    ECODE2                     215- 221   ///
      str    ECODE3                     222- 228   ///
      str    ECODE4                     229- 235   ///
      str    ECODE5                     236- 242   ///
      str    ECODE6                     243- 249   ///
      str    ECODE7                     250- 256   ///
      str    ECODE8                     257- 263   ///
      int    E_CCS1                     264- 267   ///
      int    E_CCS2                     268- 271   ///
      int    E_CCS3                     272- 275   ///
      int    E_CCS4                     276- 279   ///
      int    E_CCS5                     280- 283   ///
      int    E_CCS6                     284- 287   ///
      int    E_CCS7                     288- 291   ///
      int    E_CCS8                     292- 295   ///
      byte   FEMALE                     296- 297   ///
      byte   HCUP_ED                    298- 299   ///
      byte   HCUP_OS                    300- 301   ///
      int    HOSPBRTH                   302- 304   ///
      str    HOSPST                     305- 306   ///
      double KEY                        307- 321   ///
      long   LOS                        322- 326   ///
      long   LOS_X                      327- 332   ///
      str    MDSPEC1                    333- 335   ///
      str    MDSPEC2                    336- 338   ///
      byte   MEDINCSTQ                  339- 340   ///
      int    NCHRONIC                   341- 343   ///
      int    NDX                        344- 346   ///
      byte   NECODE                     347- 348   ///
      byte   NEOMAT                     349- 350   ///
      int    NPR                        351- 353   ///
      byte   ORPROC                     354- 355   ///
      byte   PAY1                       356- 357   ///
      str    PAY1_X                     358- 359   ///
      byte   PL_NCHS                    360- 361   ///
      str    PR1                        362- 368   ///
      str    PR2                        369- 375   ///
      str    PR3                        376- 382   ///
      str    PR4                        383- 389   ///
      str    PR5                        390- 396   ///
      str    PR6                        397- 403   ///
      str    PR7                        404- 410   ///
      str    PR8                        411- 417   ///
      str    PR9                        418- 424   ///
      str    PR10                       425- 431   ///
      str    PR11                       432- 438   ///
      str    PR12                       439- 445   ///
      str    PR13                       446- 452   ///
      int    PRCCS1                     453- 455   ///
      int    PRCCS2                     456- 458   ///
      int    PRCCS3                     459- 461   ///
      int    PRCCS4                     462- 464   ///
      int    PRCCS5                     465- 467   ///
      int    PRCCS6                     468- 470   ///
      int    PRCCS7                     471- 473   ///
      int    PRCCS8                     474- 476   ///
      int    PRCCS9                     477- 479   ///
      int    PRCCS10                    480- 482   ///
      int    PRCCS11                    483- 485   ///
      int    PRCCS12                    486- 488   ///
      int    PRCCS13                    489- 491   ///
      long   PRDAY1                     492- 496   ///
      long   PRDAY2                     497- 501   ///
      long   PRDAY3                     502- 506   ///
      long   PRDAY4                     507- 511   ///
      long   PRDAY5                     512- 516   ///
      long   PRDAY6                     517- 521   ///
      long   PRDAY7                     522- 526   ///
      long   PRDAY8                     527- 531   ///
      long   PRDAY9                     532- 536   ///
      long   PRDAY10                    537- 541   ///
      long   PRDAY11                    542- 546   ///
      long   PRDAY12                    547- 551   ///
      long   PRDAY13                    552- 556   ///
      int    PROCTYPE                   557- 559   ///
      int    PRVER                      560- 562   ///
      str    PSTATE                     563- 564   ///
      long   PSTCO                      565- 569   ///
      str    PointOfOriginUB04          570        ///
      str    PointOfOrigin_X            571        ///
      byte   RACE                       572- 573   ///
      str    RACE_X                     574        ///
      byte   STATE_AS                   575- 576   ///
      byte   STATE_ED                   577- 578   ///
      byte   STATE_OS                   579- 580   ///
      double TOTCHG                     581- 590   ///
      double TOTCHG_X                   591- 605   ///
      int    YEAR                       606- 609   ///
      int    ZIPINC_QRTL                610- 612   ///
      int    AGEGROUP                   613- 615   ///
      int    AYEAR                      616- 619   ///
      using  "SC_SEDD_2014_CORE.ASC"

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
label var DXVER                    "Diagnosis Version"
label var DX_Visit_Reason1         "Reason for visit diagnosis 1"
label var DX_Visit_Reason2         "Reason for visit diagnosis 2"
label var DX_Visit_Reason3         "Reason for visit diagnosis 3"
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
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDSPEC1                  "Physician 1 specialty (as received from source)"
label var MDSPEC2                  "Physician 2 specialty (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCHRONIC                 "Number of chronic conditions"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
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
label var STATE_AS                 "State Ambulatory Surgery service indicator"
label var STATE_ED                 "State Emergency Department service indicator"
label var STATE_OS                 "State Observation Stay service indicator"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
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
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
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
recode STATE_AS                  (-9 -8 -6 -5=.)
recode STATE_ED                  (-9 -8 -6 -5=.)
recode STATE_OS                  (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AGEGROUP                  (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)

save "SC_SEDD_2014_CORE.dta", replace
