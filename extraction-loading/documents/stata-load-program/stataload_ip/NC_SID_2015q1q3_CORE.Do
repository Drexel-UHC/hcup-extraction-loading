/*****************************************************************************
* Creation Date: 05/30/2017   
* NC_SID_2015q1q3_CORE.Do
* This program will load the 2015 NC ASCII CORE File into Stata.
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
      str    BILLTYPE                    20-  23   ///
      int    BWT                         24-  27   ///
      int    DHOUR                       28-  31   ///
      byte   DIED                        32-  33   ///
      str    DISP_X                      34-  39   ///
      byte   DISPUB04                    40-  41   ///
      byte   DISPUNIFORM                 42-  43   ///
      byte   DMONTH                      44-  45   ///
      byte   DQTR                        46-  47   ///
      int    DRG                         48-  50   ///
      int    DRG_NoPOA                   51-  53   ///
      int    DRG32                       54-  56   ///
      byte   DRGVER                      57-  58   ///
      str    DSHOSPID                    59-  75   ///
      str    DX_Admitting                76-  82   ///
      str    DX1                         83-  89   ///
      str    DX2                         90-  96   ///
      str    DX3                         97- 103   ///
      str    DX4                        104- 110   ///
      str    DX5                        111- 117   ///
      str    DX6                        118- 124   ///
      str    DX7                        125- 131   ///
      str    DX8                        132- 138   ///
      str    DX9                        139- 145   ///
      str    DX10                       146- 152   ///
      str    DX11                       153- 159   ///
      str    DX12                       160- 166   ///
      str    DX13                       167- 173   ///
      str    DX14                       174- 180   ///
      str    DX15                       181- 187   ///
      str    DX16                       188- 194   ///
      str    DX17                       195- 201   ///
      str    DX18                       202- 208   ///
      str    DX19                       209- 215   ///
      str    DX20                       216- 222   ///
      str    DX21                       223- 229   ///
      str    DX22                       230- 236   ///
      str    DX23                       237- 243   ///
      str    DX24                       244- 250   ///
      str    DX25                       251- 257   ///
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
      int    DXCCS12                    302- 305   ///
      int    DXCCS13                    306- 309   ///
      int    DXCCS14                    310- 313   ///
      int    DXCCS15                    314- 317   ///
      int    DXCCS16                    318- 321   ///
      int    DXCCS17                    322- 325   ///
      int    DXCCS18                    326- 329   ///
      int    DXCCS19                    330- 333   ///
      int    DXCCS20                    334- 337   ///
      int    DXCCS21                    338- 341   ///
      int    DXCCS22                    342- 345   ///
      int    DXCCS23                    346- 349   ///
      int    DXCCS24                    350- 353   ///
      int    DXCCS25                    354- 357   ///
      str    DXPOA1                     358        ///
      str    DXPOA2                     359        ///
      str    DXPOA3                     360        ///
      str    DXPOA4                     361        ///
      str    DXPOA5                     362        ///
      str    DXPOA6                     363        ///
      str    DXPOA7                     364        ///
      str    DXPOA8                     365        ///
      str    DXPOA9                     366        ///
      str    DXPOA10                    367        ///
      str    DXPOA11                    368        ///
      str    DXPOA12                    369        ///
      str    DXPOA13                    370        ///
      str    DXPOA14                    371        ///
      str    DXPOA15                    372        ///
      str    DXPOA16                    373        ///
      str    DXPOA17                    374        ///
      str    DXPOA18                    375        ///
      str    DXPOA19                    376        ///
      str    DXPOA20                    377        ///
      str    DXPOA21                    378        ///
      str    DXPOA22                    379        ///
      str    DXPOA23                    380        ///
      str    DXPOA24                    381        ///
      str    DXPOA25                    382        ///
      int    DXVER                      383- 385   ///
      int    E_CCS1                     386- 389   ///
      int    E_CCS2                     390- 393   ///
      int    E_CCS3                     394- 397   ///
      int    E_CCS4                     398- 401   ///
      int    E_CCS5                     402- 405   ///
      int    E_CCS6                     406- 409   ///
      int    E_CCS7                     410- 413   ///
      str    E_POA1                     414        ///
      str    E_POA2                     415        ///
      str    E_POA3                     416        ///
      str    E_POA4                     417        ///
      str    E_POA5                     418        ///
      str    E_POA6                     419        ///
      str    E_POA7                     420        ///
      str    ECODE1                     421- 427   ///
      str    ECODE2                     428- 434   ///
      str    ECODE3                     435- 441   ///
      str    ECODE4                     442- 448   ///
      str    ECODE5                     449- 455   ///
      str    ECODE6                     456- 462   ///
      str    ECODE7                     463- 469   ///
      byte   FEMALE                     470- 471   ///
      byte   HCUP_ED                    472- 473   ///
      byte   HCUP_OS                    474- 475   ///
      byte   HISPANIC                   476- 477   ///
      str    HISPANIC_X                 478- 480   ///
      int    HOSPBRTH                   481- 483   ///
      str    HOSPST                     484- 485   ///
      double KEY                        486- 500   ///
      long   LOS                        501- 505   ///
      long   LOS_X                      506- 511   ///
      byte   MDC                        512- 513   ///
      byte   MDC_NoPOA                  514- 515   ///
      byte   MDC32                      516- 517   ///
      byte   MEDINCSTQ                  518- 519   ///
      int    NCHRONIC                   520- 522   ///
      int    NDX                        523- 525   ///
      byte   NECODE                     526- 527   ///
      byte   NEOMAT                     528- 529   ///
      int    NPR                        530- 532   ///
      byte   ORPROC                     533- 534   ///
      double OS_TIME                    535- 545   ///
      byte   PAY1                       546- 547   ///
      str    PAY1_X                     548- 552   ///
      byte   PAY2                       553- 554   ///
      str    PAY2_X                     555- 559   ///
      byte   PAY3                       560- 561   ///
      str    PAY3_X                     562- 566   ///
      int    PL_CBSA                    567- 569   ///
      byte   PL_NCHS                    570- 571   ///
      byte   PL_RUCC                    572- 573   ///
      byte   PL_UIC                     574- 575   ///
      byte   PL_UR_CAT4                 576- 577   ///
      byte   POA_Disch_Edit1            578- 579   ///
      byte   POA_Disch_Edit2            580- 581   ///
      byte   POA_Hosp_Edit1             582- 583   ///
      byte   POA_Hosp_Edit2             584- 585   ///
      byte   POA_Hosp_Edit3             586- 587   ///
      double POA_Hosp_Edit3_Value       588- 595   ///
      str    PointOfOrigin_X            596- 598   ///
      str    PointOfOriginUB04          599        ///
      str    PR1                        600- 606   ///
      str    PR2                        607- 613   ///
      str    PR3                        614- 620   ///
      str    PR4                        621- 627   ///
      str    PR5                        628- 634   ///
      str    PR6                        635- 641   ///
      str    PR7                        642- 648   ///
      str    PR8                        649- 655   ///
      str    PR9                        656- 662   ///
      str    PR10                       663- 669   ///
      str    PR11                       670- 676   ///
      str    PR12                       677- 683   ///
      str    PR13                       684- 690   ///
      str    PR14                       691- 697   ///
      str    PR15                       698- 704   ///
      str    PR16                       705- 711   ///
      str    PR17                       712- 718   ///
      str    PR18                       719- 725   ///
      str    PR19                       726- 732   ///
      str    PR20                       733- 739   ///
      int    PRCCS1                     740- 742   ///
      int    PRCCS2                     743- 745   ///
      int    PRCCS3                     746- 748   ///
      int    PRCCS4                     749- 751   ///
      int    PRCCS5                     752- 754   ///
      int    PRCCS6                     755- 757   ///
      int    PRCCS7                     758- 760   ///
      int    PRCCS8                     761- 763   ///
      int    PRCCS9                     764- 766   ///
      int    PRCCS10                    767- 769   ///
      int    PRCCS11                    770- 772   ///
      int    PRCCS12                    773- 775   ///
      int    PRCCS13                    776- 778   ///
      int    PRCCS14                    779- 781   ///
      int    PRCCS15                    782- 784   ///
      int    PRCCS16                    785- 787   ///
      int    PRCCS17                    788- 790   ///
      int    PRCCS18                    791- 793   ///
      int    PRCCS19                    794- 796   ///
      int    PRCCS20                    797- 799   ///
      long   PRDAY1                     800- 804   ///
      long   PRDAY2                     805- 809   ///
      long   PRDAY3                     810- 814   ///
      long   PRDAY4                     815- 819   ///
      long   PRDAY5                     820- 824   ///
      long   PRDAY6                     825- 829   ///
      long   PRDAY7                     830- 834   ///
      long   PRDAY8                     835- 839   ///
      long   PRDAY9                     840- 844   ///
      long   PRDAY10                    845- 849   ///
      long   PRDAY11                    850- 854   ///
      long   PRDAY12                    855- 859   ///
      long   PRDAY13                    860- 864   ///
      long   PRDAY14                    865- 869   ///
      long   PRDAY15                    870- 874   ///
      long   PRDAY16                    875- 879   ///
      long   PRDAY17                    880- 884   ///
      long   PRDAY18                    885- 889   ///
      long   PRDAY19                    890- 894   ///
      long   PRDAY20                    895- 899   ///
      int    PROCTYPE                   900- 902   ///
      int    PRVER                      903- 905   ///
      str    PSTATE                     906- 907   ///
      long   PSTCO                      908- 912   ///
      long   PSTCO2                     913- 917   ///
      byte   RACE                       918- 919   ///
      str    RACE_X                     920- 922   ///
      byte   SERVICELINE                923- 924   ///
      double TOTCHG                     925- 934   ///
      double TOTCHG_X                   935- 949   ///
      byte   TRAN_IN                    950- 951   ///
      byte   TRAN_OUT                   952- 953   ///
      int    YEAR                       954- 957   ///
      str    ZIP                        958- 962   ///
      str    ZIP3                       963- 965   ///
      int    ZIPINC_QRTL                966- 968   ///
      int    AYEAR                      969- 972   ///
      byte   BMONTH                     973- 974   ///
      int    BYEAR                      975- 978   ///
      using  "NC_SID_2015q1q3_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var BWT                      "Birth weight in grams"
label var DHOUR                    "Discharge Hour"
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
label var DSHOSPID                 "Data source hospital identifier"
label var DX_Admitting             "Admitting Diagnosis Code"
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
label var DX19                     "Diagnosis 19"
label var DX20                     "Diagnosis 20"
label var DX21                     "Diagnosis 21"
label var DX22                     "Diagnosis 22"
label var DX23                     "Diagnosis 23"
label var DX24                     "Diagnosis 24"
label var DX25                     "Diagnosis 25"
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
label var DXCCS19                  "CCS: diagnosis 19"
label var DXCCS20                  "CCS: diagnosis 20"
label var DXCCS21                  "CCS: diagnosis 21"
label var DXCCS22                  "CCS: diagnosis 22"
label var DXCCS23                  "CCS: diagnosis 23"
label var DXCCS24                  "CCS: diagnosis 24"
label var DXCCS25                  "CCS: diagnosis 25"
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
label var DXPOA17                  "Diagnosis 17, present on admission indicator"
label var DXPOA18                  "Diagnosis 18, present on admission indicator"
label var DXPOA19                  "Diagnosis 19, present on admission indicator"
label var DXPOA20                  "Diagnosis 20, present on admission indicator"
label var DXPOA21                  "Diagnosis 21, present on admission indicator"
label var DXPOA22                  "Diagnosis 22, present on admission indicator"
label var DXPOA23                  "Diagnosis 23, present on admission indicator"
label var DXPOA24                  "Diagnosis 24, present on admission indicator"
label var DXPOA25                  "Diagnosis 25, present on admission indicator"
label var DXVER                    "Diagnosis Version"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_CCS7                   "CCS: E Code 7"
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var E_POA7                   "E Code 7, present on admission indicator"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
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
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDC32                    "MDC, version 32"
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
label var PR14                     "Procedure 14"
label var PR15                     "Procedure 15"
label var PR16                     "Procedure 16"
label var PR17                     "Procedure 17"
label var PR18                     "Procedure 18"
label var PR19                     "Procedure 19"
label var PR20                     "Procedure 20"
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
label var PRCCS14                  "CCS: procedure 14"
label var PRCCS15                  "CCS: procedure 15"
label var PRCCS16                  "CCS: procedure 16"
label var PRCCS17                  "CCS: procedure 17"
label var PRCCS18                  "CCS: procedure 18"
label var PRCCS19                  "CCS: procedure 19"
label var PRCCS20                  "CCS: procedure 20"
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
label var PRDAY14                  "Number of days from admission to PR14"
label var PRDAY15                  "Number of days from admission to PR15"
label var PRDAY16                  "Number of days from admission to PR16"
label var PRDAY17                  "Number of days from admission to PR17"
label var PRDAY18                  "Number of days from admission to PR18"
label var PRDAY19                  "Number of days from admission to PR19"
label var PRDAY20                  "Number of days from admission to PR20"
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var SERVICELINE              "Hospital Service Line"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
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
recode BWT                       (-999 -888 -666=.)
recode DHOUR                     (-999 -888 -666=.)
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
recode DXCCS16                   (-999 -888 -666=.)
recode DXCCS17                   (-999 -888 -666=.)
recode DXCCS18                   (-999 -888 -666=.)
recode DXCCS19                   (-999 -888 -666=.)
recode DXCCS20                   (-999 -888 -666=.)
recode DXCCS21                   (-999 -888 -666=.)
recode DXCCS22                   (-999 -888 -666=.)
recode DXCCS23                   (-999 -888 -666=.)
recode DXCCS24                   (-999 -888 -666=.)
recode DXCCS25                   (-999 -888 -666=.)
recode DXVER                     (-99 -88 -66=.)
recode E_CCS1                    (-999 -888 -666=.)
recode E_CCS2                    (-999 -888 -666=.)
recode E_CCS3                    (-999 -888 -666=.)
recode E_CCS4                    (-999 -888 -666=.)
recode E_CCS5                    (-999 -888 -666=.)
recode E_CCS6                    (-999 -888 -666=.)
recode E_CCS7                    (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
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
recode PRCCS14                   (-99 -88 -66=.)
recode PRCCS15                   (-99 -88 -66=.)
recode PRCCS16                   (-99 -88 -66=.)
recode PRCCS17                   (-99 -88 -66=.)
recode PRCCS18                   (-99 -88 -66=.)
recode PRCCS19                   (-99 -88 -66=.)
recode PRCCS20                   (-99 -88 -66=.)
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
recode PRDAY14                   (-9999 -8888 -6666=.)
recode PRDAY15                   (-9999 -8888 -6666=.)
recode PRDAY16                   (-9999 -8888 -6666=.)
recode PRDAY17                   (-9999 -8888 -6666=.)
recode PRDAY18                   (-9999 -8888 -6666=.)
recode PRDAY19                   (-9999 -8888 -6666=.)
recode PRDAY20                   (-9999 -8888 -6666=.)
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
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)
recode BMONTH                    (-9 -8 -6 -5=.)
recode BYEAR                     (-999 -888 -666=.)

save "NC_SID_2015q1q3_CORE.dta", replace
