/*****************************************************************************
* Creation Date: 06/02/2017   
* ME_SID_2014_CORE.Do
* This program will load the 2014 ME ASCII CORE File into Stata.
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
      int    AHOUR                        4-   7   ///
      byte   AMDC                         8-   9   ///
      byte   AMONTH                      10-  11   ///
      byte   ATYPE                       12-  13   ///
      byte   AWEEKEND                    14-  15   ///
      int    DHOUR                       16-  19   ///
      byte   DIED                        20-  21   ///
      byte   DISPUB04                    22-  23   ///
      byte   DISPUNIFORM                 24-  25   ///
      byte   DMONTH                      26-  27   ///
      byte   DQTR                        28-  29   ///
      int    DRG                         30-  32   ///
      int    DRG24                       33-  35   ///
      byte   DRGVER                      36-  37   ///
      int    DRG_NoPOA                   38-  40   ///
      str    DX1                         41-  47   ///
      str    DX2                         48-  54   ///
      str    DX3                         55-  61   ///
      str    DX4                         62-  68   ///
      str    DX5                         69-  75   ///
      str    DX6                         76-  82   ///
      str    DX7                         83-  89   ///
      str    DX8                         90-  96   ///
      str    DX9                         97- 103   ///
      int    DXCCS1                     104- 107   ///
      int    DXCCS2                     108- 111   ///
      int    DXCCS3                     112- 115   ///
      int    DXCCS4                     116- 119   ///
      int    DXCCS5                     120- 123   ///
      int    DXCCS6                     124- 127   ///
      int    DXCCS7                     128- 131   ///
      int    DXCCS8                     132- 135   ///
      int    DXCCS9                     136- 139   ///
      str    DXPOA1                     140        ///
      str    DXPOA2                     141        ///
      str    DXPOA3                     142        ///
      str    DXPOA4                     143        ///
      str    DXPOA5                     144        ///
      str    DXPOA6                     145        ///
      str    DXPOA7                     146        ///
      str    DXPOA8                     147        ///
      str    DXPOA9                     148        ///
      int    DXVER                      149- 151   ///
      str    DX_Admitting               152- 158   ///
      str    ECODE1                     159- 165   ///
      str    ECODE2                     166- 172   ///
      str    ECODE3                     173- 179   ///
      str    ECODE4                     180- 186   ///
      str    ECODE5                     187- 193   ///
      str    ECODE6                     194- 200   ///
      int    E_CCS1                     201- 204   ///
      int    E_CCS2                     205- 208   ///
      int    E_CCS3                     209- 212   ///
      int    E_CCS4                     213- 216   ///
      int    E_CCS5                     217- 220   ///
      int    E_CCS6                     221- 224   ///
      str    E_POA1                     225        ///
      str    E_POA2                     226        ///
      str    E_POA3                     227        ///
      str    E_POA4                     228        ///
      str    E_POA5                     229        ///
      str    E_POA6                     230        ///
      byte   FEMALE                     231- 232   ///
      byte   HCUP_ED                    233- 234   ///
      byte   HCUP_OS                    235- 236   ///
      int    HOSPBRTH                   237- 239   ///
      str    HOSPST                     240- 241   ///
      double KEY                        242- 256   ///
      long   LOS                        257- 261   ///
      byte   MDC                        262- 263   ///
      byte   MDC24                      264- 265   ///
      byte   MDC_NoPOA                  266- 267   ///
      str    MDSPEC1                    268- 269   ///
      str    MDSPEC2                    270- 271   ///
      byte   MEDINCSTQ                  272- 273   ///
      long   MRN_R                      274- 282   ///
      int    NCHRONIC                   283- 285   ///
      int    NDX                        286- 288   ///
      byte   NECODE                     289- 290   ///
      byte   NEOMAT                     291- 292   ///
      int    NPR                        293- 295   ///
      byte   ORPROC                     296- 297   ///
      double OS_TIME                    298- 308   ///
      byte   PAY1                       309- 310   ///
      byte   PAY2                       311- 312   ///
      byte   PAY3                       313- 314   ///
      int    PL_CBSA                    315- 317   ///
      byte   PL_NCHS                    318- 319   ///
      byte   PL_UIC                     320- 321   ///
      byte   PL_UR_CAT4                 322- 323   ///
      byte   POA_Disch_Edit1            324- 325   ///
      byte   POA_Disch_Edit2            326- 327   ///
      byte   POA_Hosp_Edit1             328- 329   ///
      byte   POA_Hosp_Edit2             330- 331   ///
      byte   POA_Hosp_Edit3             332- 333   ///
      double POA_Hosp_Edit3_Value       334- 341   ///
      str    PR1                        342- 348   ///
      str    PR2                        349- 355   ///
      str    PR3                        356- 362   ///
      str    PR4                        363- 369   ///
      str    PR5                        370- 376   ///
      str    PR6                        377- 383   ///
      int    PRCCS1                     384- 386   ///
      int    PRCCS2                     387- 389   ///
      int    PRCCS3                     390- 392   ///
      int    PRCCS4                     393- 395   ///
      int    PRCCS5                     396- 398   ///
      int    PRCCS6                     399- 401   ///
      long   PRDAY1                     402- 406   ///
      long   PRDAY2                     407- 411   ///
      long   PRDAY3                     412- 416   ///
      long   PRDAY4                     417- 421   ///
      long   PRDAY5                     422- 426   ///
      long   PRDAY6                     427- 431   ///
      int    PROCTYPE                   432- 434   ///
      int    PRVER                      435- 437   ///
      str    PSTATE                     438- 439   ///
      long   PSTCO                      440- 444   ///
      long   PSTCO2                     445- 449   ///
      str    PointOfOriginUB04          450        ///
      byte   SERVICELINE                451- 452   ///
      byte   TRAN_IN                    453- 454   ///
      byte   TRAN_OUT                   455- 456   ///
      int    YEAR                       457- 460   ///
      str    ZIP3                       461- 463   ///
      int    ZIPINC_QRTL                464- 466   ///
      int    AGEGROUP                   467- 469   ///
      long   HOSPID                     470- 474   ///
      int    AYEAR                      475- 478   ///
      byte   PRMONTH1                   479- 480   ///
      byte   PRMONTH2                   481- 482   ///
      byte   PRMONTH3                   483- 484   ///
      byte   PRMONTH4                   485- 486   ///
      byte   PRMONTH5                   487- 488   ///
      byte   PRMONTH6                   489- 490   ///
      int    PRYEAR1                    491- 494   ///
      int    PRYEAR2                    495- 498   ///
      int    PRYEAR3                    499- 502   ///
      int    PRYEAR4                    503- 506   ///
      int    PRYEAR5                    507- 510   ///
      int    PRYEAR6                    511- 514   ///
      using  "ME_SID_2014_CORE.ASC"

***  Assign labels to the data elements ***
label var ADRG                     "All Patient Refined DRG"
label var AHOUR                    "Admission Hour"
label var AMDC                     "All Patient Refined MDC"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
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
label var DXCCS1                   "CCS: diagnosis 1"
label var DXCCS2                   "CCS: diagnosis 2"
label var DXCCS3                   "CCS: diagnosis 3"
label var DXCCS4                   "CCS: diagnosis 4"
label var DXCCS5                   "CCS: diagnosis 5"
label var DXCCS6                   "CCS: diagnosis 6"
label var DXCCS7                   "CCS: diagnosis 7"
label var DXCCS8                   "CCS: diagnosis 8"
label var DXCCS9                   "CCS: diagnosis 9"
label var DXPOA1                   "Diagnosis 1, present on admission indicator"
label var DXPOA2                   "Diagnosis 2, present on admission indicator"
label var DXPOA3                   "Diagnosis 3, present on admission indicator"
label var DXPOA4                   "Diagnosis 4, present on admission indicator"
label var DXPOA5                   "Diagnosis 5, present on admission indicator"
label var DXPOA6                   "Diagnosis 6, present on admission indicator"
label var DXPOA7                   "Diagnosis 7, present on admission indicator"
label var DXPOA8                   "Diagnosis 8, present on admission indicator"
label var DXPOA9                   "Diagnosis 9, present on admission indicator"
label var DXVER                    "Diagnosis Version"
label var DX_Admitting             "Admitting Diagnosis Code"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var MDC                      "MDC in effect on discharge date"
label var MDC24                    "MDC, version 24"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDSPEC1                  "Physician 1 specialty (as received from source)"
label var MDSPEC2                  "Physician 2 specialty (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var NCHRONIC                 "Number of chronic conditions"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY3                     "Tertiary expected payer (uniform)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_UIC                   "Patient location: Urban Influence Codes"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
label var POA_Disch_Edit1          "Discharge has POA missing on all nonexempt diagnoses"
label var POA_Disch_Edit2          "Discharge has POA missing on all nonexempt secondary diagnoses"
label var POA_Hosp_Edit1           "Hospital reported POA as Y on all diagnoses on all discharges"
label var POA_Hosp_Edit2           "Hospital reported POA as missing on all non-Medicare discharges"
label var POA_Hosp_Edit3           "Hospital reported POA as missing on all nonexempt diagnoses for 15% or more of discharges"
label var POA_Hosp_Edit3_Value     "Percentage of discharges with all nonexempt diagnoses missing POA indicators"
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
label var SERVICELINE              "Hospital Service Line"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var YEAR                     "Calendar year"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var AGEGROUP                 " "
label var HOSPID                   "HCUP hospital identification number"
label var AYEAR                    "Admission year"
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
recode AHOUR                     (-999 -888 -666=.)
recode AMDC                      (-9 -8 -6 -5=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode DHOUR                     (-999 -888 -666=.)
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
recode DXVER                     (-99 -88 -66=.)
recode E_CCS1                    (-999 -888 -666=.)
recode E_CCS2                    (-999 -888 -666=.)
recode E_CCS3                    (-999 -888 -666=.)
recode E_CCS4                    (-999 -888 -666=.)
recode E_CCS5                    (-999 -888 -666=.)
recode E_CCS6                    (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC24                     (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
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
recode PL_UIC                    (-9 -8 -6 -5=.)
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
recode SERVICELINE               (-9 -8 -6 -5=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AGEGROUP                  (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)
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

save "ME_SID_2014_CORE.dta", replace
