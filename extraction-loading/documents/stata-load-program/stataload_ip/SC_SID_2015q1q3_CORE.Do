/*****************************************************************************
* Creation Date: 07/02/2018   
* SC_SID_2015q1q3_CORE.Do
* This program will load the 2015 SC ASCII CORE File into Stata.
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
      int    DRG32                       28-  30   ///
      byte   DRGVER                      31-  32   ///
      str    DX1                         33-  39   ///
      str    DX2                         40-  46   ///
      str    DX3                         47-  53   ///
      str    DX4                         54-  60   ///
      str    DX5                         61-  67   ///
      str    DX6                         68-  74   ///
      str    DX7                         75-  81   ///
      str    DX8                         82-  88   ///
      str    DX9                         89-  95   ///
      str    DX10                        96- 102   ///
      str    DX11                       103- 109   ///
      str    DX12                       110- 116   ///
      str    DX13                       117- 123   ///
      str    DX14                       124- 130   ///
      str    DX15                       131- 137   ///
      int    DXCCS1                     138- 141   ///
      int    DXCCS2                     142- 145   ///
      int    DXCCS3                     146- 149   ///
      int    DXCCS4                     150- 153   ///
      int    DXCCS5                     154- 157   ///
      int    DXCCS6                     158- 161   ///
      int    DXCCS7                     162- 165   ///
      int    DXCCS8                     166- 169   ///
      int    DXCCS9                     170- 173   ///
      int    DXCCS10                    174- 177   ///
      int    DXCCS11                    178- 181   ///
      int    DXCCS12                    182- 185   ///
      int    DXCCS13                    186- 189   ///
      int    DXCCS14                    190- 193   ///
      int    DXCCS15                    194- 197   ///
      str    DXPOA1                     198        ///
      str    DXPOA2                     199        ///
      str    DXPOA3                     200        ///
      str    DXPOA4                     201        ///
      str    DXPOA5                     202        ///
      str    DXPOA6                     203        ///
      str    DXPOA7                     204        ///
      str    DXPOA8                     205        ///
      str    DXPOA9                     206        ///
      str    DXPOA10                    207        ///
      str    DXPOA11                    208        ///
      str    DXPOA12                    209        ///
      str    DXPOA13                    210        ///
      str    DXPOA14                    211        ///
      str    DXPOA15                    212        ///
      int    DXVER                      213- 215   ///
      int    E_CCS1                     216- 219   ///
      int    E_CCS2                     220- 223   ///
      int    E_CCS3                     224- 227   ///
      int    E_CCS4                     228- 231   ///
      int    E_CCS5                     232- 235   ///
      int    E_CCS6                     236- 239   ///
      int    E_CCS7                     240- 243   ///
      int    E_CCS8                     244- 247   ///
      str    E_POA1                     248        ///
      str    E_POA2                     249        ///
      str    E_POA3                     250        ///
      str    E_POA4                     251        ///
      str    E_POA5                     252        ///
      str    E_POA6                     253        ///
      str    E_POA7                     254        ///
      str    E_POA8                     255        ///
      str    ECODE1                     256- 262   ///
      str    ECODE2                     263- 269   ///
      str    ECODE3                     270- 276   ///
      str    ECODE4                     277- 283   ///
      str    ECODE5                     284- 290   ///
      str    ECODE6                     291- 297   ///
      str    ECODE7                     298- 304   ///
      str    ECODE8                     305- 311   ///
      byte   FEMALE                     312- 313   ///
      byte   HCUP_ED                    314- 315   ///
      byte   HCUP_OS                    316- 317   ///
      int    HOSPBRTH                   318- 320   ///
      str    HOSPST                     321- 322   ///
      double KEY                        323- 337   ///
      long   LOS                        338- 342   ///
      long   LOS_X                      343- 348   ///
      byte   MDC                        349- 350   ///
      byte   MDC_NoPOA                  351- 352   ///
      byte   MDC32                      353- 354   ///
      str    MDSPEC1                    355- 357   ///
      str    MDSPEC2                    358- 360   ///
      byte   MEDINCSTQ                  361- 362   ///
      int    NCHRONIC                   363- 365   ///
      int    NDX                        366- 368   ///
      byte   NECODE                     369- 370   ///
      byte   NEOMAT                     371- 372   ///
      int    NPR                        373- 375   ///
      byte   ORPROC                     376- 377   ///
      double OS_TIME                    378- 388   ///
      byte   PAY1                       389- 390   ///
      str    PAY1_X                     391- 392   ///
      byte   PL_NCHS                    393- 394   ///
      byte   PL_UR_CAT4                 395- 396   ///
      byte   POA_Disch_Edit1            397- 398   ///
      byte   POA_Disch_Edit2            399- 400   ///
      byte   POA_Hosp_Edit1             401- 402   ///
      byte   POA_Hosp_Edit2             403- 404   ///
      byte   POA_Hosp_Edit3             405- 406   ///
      double POA_Hosp_Edit3_Value       407- 414   ///
      str    PointOfOrigin_X            415        ///
      str    PointOfOriginUB04          416        ///
      str    PR1                        417- 423   ///
      str    PR2                        424- 430   ///
      str    PR3                        431- 437   ///
      str    PR4                        438- 444   ///
      str    PR5                        445- 451   ///
      str    PR6                        452- 458   ///
      str    PR7                        459- 465   ///
      str    PR8                        466- 472   ///
      str    PR9                        473- 479   ///
      str    PR10                       480- 486   ///
      str    PR11                       487- 493   ///
      str    PR12                       494- 500   ///
      str    PR13                       501- 507   ///
      int    PRCCS1                     508- 510   ///
      int    PRCCS2                     511- 513   ///
      int    PRCCS3                     514- 516   ///
      int    PRCCS4                     517- 519   ///
      int    PRCCS5                     520- 522   ///
      int    PRCCS6                     523- 525   ///
      int    PRCCS7                     526- 528   ///
      int    PRCCS8                     529- 531   ///
      int    PRCCS9                     532- 534   ///
      int    PRCCS10                    535- 537   ///
      int    PRCCS11                    538- 540   ///
      int    PRCCS12                    541- 543   ///
      int    PRCCS13                    544- 546   ///
      long   PRDAY1                     547- 551   ///
      long   PRDAY2                     552- 556   ///
      long   PRDAY3                     557- 561   ///
      long   PRDAY4                     562- 566   ///
      long   PRDAY5                     567- 571   ///
      long   PRDAY6                     572- 576   ///
      long   PRDAY7                     577- 581   ///
      long   PRDAY8                     582- 586   ///
      long   PRDAY9                     587- 591   ///
      long   PRDAY10                    592- 596   ///
      long   PRDAY11                    597- 601   ///
      long   PRDAY12                    602- 606   ///
      long   PRDAY13                    607- 611   ///
      int    PROCTYPE                   612- 614   ///
      int    PRVER                      615- 617   ///
      str    PSTATE                     618- 619   ///
      long   PSTCO                      620- 624   ///
      byte   RACE                       625- 626   ///
      str    RACE_X                     627        ///
      byte   SERVICELINE                628- 629   ///
      double TOTCHG                     630- 639   ///
      double TOTCHG_X                   640- 654   ///
      byte   TRAN_IN                    655- 656   ///
      byte   TRAN_OUT                   657- 658   ///
      int    YEAR                       659- 662   ///
      int    ZIPINC_QRTL                663- 665   ///
      int    AGEGROUP                   666- 668   ///
      int    AYEAR                      669- 672   ///
      using  "SC_SID_2015q1q3_CORE.ASC"

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
label var DRG32                    "DRG, version 32"
label var DRGVER                   "DRG grouper version used on discharge date"
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
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var ECODE8                   "E code 8"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDC32                    "MDC, version 32"
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
label var POA_Disch_Edit1          "Discharge has POA missing on all nonexempt diagnoses"
label var POA_Disch_Edit2          "Discharge has POA missing on all nonexempt secondary diagnoses"
label var POA_Hosp_Edit1           "Hospital reported POA as Y on all diagnoses on all discharges"
label var POA_Hosp_Edit2           "Hospital reported POA as missing on all non-Medicare discharges"
label var POA_Hosp_Edit3           "Hospital reported POA as missing on all nonexempt diagnoses for 15% or more of discharges"
label var POA_Hosp_Edit3_Value     "Percentage of discharges with all nonexempt diagnoses missing POA indicators"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
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
recode DaysICU                   (-99 -88 -66=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRG32                     (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
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
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDC32                     (-9 -8 -6 -5=.)
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

save "SC_SID_2015q1q3_CORE.dta", replace
