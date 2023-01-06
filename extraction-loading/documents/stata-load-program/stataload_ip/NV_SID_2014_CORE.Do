/*****************************************************************************
* Creation Date: 08/09/2016   
* Modify Date:   10/19/2017 - matches data created on date above.
* NV_SID_2014_CORE.Do
* This program will load the 2014 NV ASCII CORE File into Stata.
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
      int    DHOUR                       24-  27   ///
      byte   DIED                        28-  29   ///
      byte   DISPUB04                    30-  31   ///
      byte   DISPUNIFORM                 32-  33   ///
      str    DISP_X                      34-  35   ///
      byte   DMONTH                      36-  37   ///
      byte   DQTR                        38-  39   ///
      int    DRG                         40-  42   ///
      int    DRG24                       43-  45   ///
      byte   DRGVER                      46-  47   ///
      int    DRG_NoPOA                   48-  50   ///
      str    DSHOSPID                    51-  67   ///
      str    DX1                         68-  74   ///
      str    DX2                         75-  81   ///
      str    DX3                         82-  88   ///
      str    DX4                         89-  95   ///
      str    DX5                         96- 102   ///
      str    DX6                        103- 109   ///
      str    DX7                        110- 116   ///
      str    DX8                        117- 123   ///
      str    DX9                        124- 130   ///
      str    DX10                       131- 137   ///
      str    DX11                       138- 144   ///
      str    DX12                       145- 151   ///
      str    DX13                       152- 158   ///
      str    DX14                       159- 165   ///
      str    DX15                       166- 172   ///
      str    DX16                       173- 179   ///
      str    DX17                       180- 186   ///
      str    DX18                       187- 193   ///
      str    DX19                       194- 200   ///
      str    DX20                       201- 207   ///
      str    DX21                       208- 214   ///
      str    DX22                       215- 221   ///
      str    DX23                       222- 228   ///
      str    DX24                       229- 235   ///
      str    DX25                       236- 242   ///
      str    DX26                       243- 249   ///
      str    DX27                       250- 256   ///
      str    DX28                       257- 263   ///
      str    DX29                       264- 270   ///
      str    DX30                       271- 277   ///
      str    DX31                       278- 284   ///
      str    DX32                       285- 291   ///
      str    DX33                       292- 298   ///
      int    DXCCS1                     299- 302   ///
      int    DXCCS2                     303- 306   ///
      int    DXCCS3                     307- 310   ///
      int    DXCCS4                     311- 314   ///
      int    DXCCS5                     315- 318   ///
      int    DXCCS6                     319- 322   ///
      int    DXCCS7                     323- 326   ///
      int    DXCCS8                     327- 330   ///
      int    DXCCS9                     331- 334   ///
      int    DXCCS10                    335- 338   ///
      int    DXCCS11                    339- 342   ///
      int    DXCCS12                    343- 346   ///
      int    DXCCS13                    347- 350   ///
      int    DXCCS14                    351- 354   ///
      int    DXCCS15                    355- 358   ///
      int    DXCCS16                    359- 362   ///
      int    DXCCS17                    363- 366   ///
      int    DXCCS18                    367- 370   ///
      int    DXCCS19                    371- 374   ///
      int    DXCCS20                    375- 378   ///
      int    DXCCS21                    379- 382   ///
      int    DXCCS22                    383- 386   ///
      int    DXCCS23                    387- 390   ///
      int    DXCCS24                    391- 394   ///
      int    DXCCS25                    395- 398   ///
      int    DXCCS26                    399- 402   ///
      int    DXCCS27                    403- 406   ///
      int    DXCCS28                    407- 410   ///
      int    DXCCS29                    411- 414   ///
      int    DXCCS30                    415- 418   ///
      int    DXCCS31                    419- 422   ///
      int    DXCCS32                    423- 426   ///
      int    DXCCS33                    427- 430   ///
      str    DXPOA1                     431        ///
      str    DXPOA2                     432        ///
      str    DXPOA3                     433        ///
      str    DXPOA4                     434        ///
      str    DXPOA5                     435        ///
      str    DXPOA6                     436        ///
      str    DXPOA7                     437        ///
      str    DXPOA8                     438        ///
      str    DXPOA9                     439        ///
      str    DXPOA10                    440        ///
      str    DXPOA11                    441        ///
      str    DXPOA12                    442        ///
      str    DXPOA13                    443        ///
      str    DXPOA14                    444        ///
      str    DXPOA15                    445        ///
      str    DXPOA16                    446        ///
      str    DXPOA17                    447        ///
      str    DXPOA18                    448        ///
      str    DXPOA19                    449        ///
      str    DXPOA20                    450        ///
      str    DXPOA21                    451        ///
      str    DXPOA22                    452        ///
      str    DXPOA23                    453        ///
      str    DXPOA24                    454        ///
      str    DXPOA25                    455        ///
      str    DXPOA26                    456        ///
      str    DXPOA27                    457        ///
      str    DXPOA28                    458        ///
      str    DXPOA29                    459        ///
      str    DXPOA30                    460        ///
      str    DXPOA31                    461        ///
      str    DXPOA32                    462        ///
      str    DXPOA33                    463        ///
      int    DXVER                      464- 466   ///
      str    DX_Admitting               467- 473   ///
      str    ECODE1                     474- 480   ///
      str    ECODE2                     481- 487   ///
      str    ECODE3                     488- 494   ///
      str    ECODE4                     495- 501   ///
      int    E_CCS1                     502- 505   ///
      int    E_CCS2                     506- 509   ///
      int    E_CCS3                     510- 513   ///
      int    E_CCS4                     514- 517   ///
      str    E_POA1                     518        ///
      str    E_POA2                     519        ///
      str    E_POA3                     520        ///
      str    E_POA4                     521        ///
      byte   FEMALE                     522- 523   ///
      byte   HCUP_ED                    524- 525   ///
      byte   HCUP_OS                    526- 527   ///
      int    HOSPBRTH                   528- 530   ///
      str    HOSPST                     531- 532   ///
      double KEY                        533- 547   ///
      long   LOS                        548- 552   ///
      long   LOS_X                      553- 558   ///
      str    MARITALSTATUSUB04          559        ///
      str    MARITALSTATUS_X            560        ///
      byte   MDC                        561- 562   ///
      byte   MDC24                      563- 564   ///
      byte   MDC_NoPOA                  565- 566   ///
      long   MDNUM1_R                   567- 575   ///
      long   MDNUM2_R                   576- 584   ///
      str    MDNUMTYPE1                 585        ///
      str    MDNUMTYPE2                 586        ///
      byte   MEDINCSTQ                  587- 588   ///
      int    NCHRONIC                   589- 591   ///
      int    NDX                        592- 594   ///
      byte   NECODE                     595- 596   ///
      byte   NEOMAT                     597- 598   ///
      int    NPR                        599- 601   ///
      byte   ORPROC                     602- 603   ///
      double OS_TIME                    604- 614   ///
      byte   PAY1                       615- 616   ///
      str    PAY1_X                     617- 618   ///
      byte   PAY2                       619- 620   ///
      str    PAY2_X                     621- 622   ///
      byte   PAY3                       623- 624   ///
      str    PAY3_X                     625- 626   ///
      byte   PL_NCHS                    627- 628   ///
      byte   PL_RUCC                    629- 630   ///
      byte   PL_UIC                     631- 632   ///
      byte   PL_UR_CAT4                 633- 634   ///
      byte   POA_Disch_Edit1            635- 636   ///
      byte   POA_Disch_Edit2            637- 638   ///
      byte   POA_Hosp_Edit1             639- 640   ///
      byte   POA_Hosp_Edit2             641- 642   ///
      byte   POA_Hosp_Edit3             643- 644   ///
      double POA_Hosp_Edit3_Value       645- 652   ///
      str    PR1                        653- 659   ///
      str    PR2                        660- 666   ///
      str    PR3                        667- 673   ///
      str    PR4                        674- 680   ///
      str    PR5                        681- 687   ///
      str    PR6                        688- 694   ///
      str    PR7                        695- 701   ///
      str    PR8                        702- 708   ///
      str    PR9                        709- 715   ///
      str    PR10                       716- 722   ///
      str    PR11                       723- 729   ///
      str    PR12                       730- 736   ///
      str    PR13                       737- 743   ///
      str    PR14                       744- 750   ///
      str    PR15                       751- 757   ///
      str    PR16                       758- 764   ///
      str    PR17                       765- 771   ///
      str    PR18                       772- 778   ///
      str    PR19                       779- 785   ///
      str    PR20                       786- 792   ///
      str    PR21                       793- 799   ///
      str    PR22                       800- 806   ///
      str    PR23                       807- 813   ///
      str    PR24                       814- 820   ///
      str    PR25                       821- 827   ///
      int    PRCCS1                     828- 830   ///
      int    PRCCS2                     831- 833   ///
      int    PRCCS3                     834- 836   ///
      int    PRCCS4                     837- 839   ///
      int    PRCCS5                     840- 842   ///
      int    PRCCS6                     843- 845   ///
      int    PRCCS7                     846- 848   ///
      int    PRCCS8                     849- 851   ///
      int    PRCCS9                     852- 854   ///
      int    PRCCS10                    855- 857   ///
      int    PRCCS11                    858- 860   ///
      int    PRCCS12                    861- 863   ///
      int    PRCCS13                    864- 866   ///
      int    PRCCS14                    867- 869   ///
      int    PRCCS15                    870- 872   ///
      int    PRCCS16                    873- 875   ///
      int    PRCCS17                    876- 878   ///
      int    PRCCS18                    879- 881   ///
      int    PRCCS19                    882- 884   ///
      int    PRCCS20                    885- 887   ///
      int    PRCCS21                    888- 890   ///
      int    PRCCS22                    891- 893   ///
      int    PRCCS23                    894- 896   ///
      int    PRCCS24                    897- 899   ///
      int    PRCCS25                    900- 902   ///
      long   PRDAY1                     903- 907   ///
      long   PRDAY2                     908- 912   ///
      long   PRDAY3                     913- 917   ///
      long   PRDAY4                     918- 922   ///
      long   PRDAY5                     923- 927   ///
      long   PRDAY6                     928- 932   ///
      long   PRDAY7                     933- 937   ///
      long   PRDAY8                     938- 942   ///
      long   PRDAY9                     943- 947   ///
      long   PRDAY10                    948- 952   ///
      long   PRDAY11                    953- 957   ///
      long   PRDAY12                    958- 962   ///
      long   PRDAY13                    963- 967   ///
      long   PRDAY14                    968- 972   ///
      long   PRDAY15                    973- 977   ///
      long   PRDAY16                    978- 982   ///
      long   PRDAY17                    983- 987   ///
      long   PRDAY18                    988- 992   ///
      long   PRDAY19                    993- 997   ///
      long   PRDAY20                    998-1002   ///
      long   PRDAY21                   1003-1007   ///
      long   PRDAY22                   1008-1012   ///
      long   PRDAY23                   1013-1017   ///
      long   PRDAY24                   1018-1022   ///
      long   PRDAY25                   1023-1027   ///
      int    PROCTYPE                  1028-1030   ///
      int    PRVER                     1031-1033   ///
      str    PSTATE                    1034-1035   ///
      long   PSTCO                     1036-1040   ///
      long   PSTCO2                    1041-1045   ///
      str    PointOfOriginUB04         1046        ///
      str    PointOfOrigin_X           1047-1048   ///
      byte   RACE                      1049-1050   ///
      str    RACE_X                    1051-1052   ///
      byte   SERVICELINE               1053-1054   ///
      double TOTCHG                    1055-1064   ///
      double TOTCHG_X                  1065-1079   ///
      byte   TRAN_IN                   1080-1081   ///
      byte   TRAN_OUT                  1082-1083   ///
      int    YEAR                      1084-1087   ///
      int    ZIPINC_QRTL               1088-1090   ///
      int    AYEAR                     1091-1094   ///
      using  "NV_SID_2014_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var DHOUR                    "Discharge Hour"
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
label var DX19                     "Diagnosis 19"
label var DX20                     "Diagnosis 20"
label var DX21                     "Diagnosis 21"
label var DX22                     "Diagnosis 22"
label var DX23                     "Diagnosis 23"
label var DX24                     "Diagnosis 24"
label var DX25                     "Diagnosis 25"
label var DX26                     "Diagnosis 26"
label var DX27                     "Diagnosis 27"
label var DX28                     "Diagnosis 28"
label var DX29                     "Diagnosis 29"
label var DX30                     "Diagnosis 30"
label var DX31                     "Diagnosis 31"
label var DX32                     "Diagnosis 32"
label var DX33                     "Diagnosis 33"
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
label var DXCCS26                  "CCS: diagnosis 26"
label var DXCCS27                  "CCS: diagnosis 27"
label var DXCCS28                  "CCS: diagnosis 28"
label var DXCCS29                  "CCS: diagnosis 29"
label var DXCCS30                  "CCS: diagnosis 30"
label var DXCCS31                  "CCS: diagnosis 31"
label var DXCCS32                  "CCS: diagnosis 32"
label var DXCCS33                  "CCS: diagnosis 33"
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
label var DXPOA26                  "Diagnosis 26, present on admission indicator"
label var DXPOA27                  "Diagnosis 27, present on admission indicator"
label var DXPOA28                  "Diagnosis 28, present on admission indicator"
label var DXPOA29                  "Diagnosis 29, present on admission indicator"
label var DXPOA30                  "Diagnosis 30, present on admission indicator"
label var DXPOA31                  "Diagnosis 31, present on admission indicator"
label var DXPOA32                  "Diagnosis 32, present on admission indicator"
label var DXPOA33                  "Diagnosis 33, present on admission indicator"
label var DXVER                    "Diagnosis Version"
label var DX_Admitting             "Admitting Diagnosis Code"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MARITALSTATUS_X          "Patient's marital status (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC24                    "MDC, version 24"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUMTYPE1               "Physician 1 number type"
label var MDNUMTYPE2               "Physician 2 number type"
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
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes(RUCC)"
label var PL_UIC                   "Patient location: Urban Influence Codes"
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
label var PR14                     "Procedure 14"
label var PR15                     "Procedure 15"
label var PR16                     "Procedure 16"
label var PR17                     "Procedure 17"
label var PR18                     "Procedure 18"
label var PR19                     "Procedure 19"
label var PR20                     "Procedure 20"
label var PR21                     "Procedure 21"
label var PR22                     "Procedure 22"
label var PR23                     "Procedure 23"
label var PR24                     "Procedure 24"
label var PR25                     "Procedure 25"
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
label var PRCCS21                  "CCS: procedure 21"
label var PRCCS22                  "CCS: procedure 22"
label var PRCCS23                  "CCS: procedure 23"
label var PRCCS24                  "CCS: procedure 24"
label var PRCCS25                  "CCS: procedure 25"
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
label var PRDAY21                  "Number of days from admission to PR21"
label var PRDAY22                  "Number of days from admission to PR22"
label var PRDAY23                  "Number of days from admission to PR23"
label var PRDAY24                  "Number of days from admission to PR24"
label var PRDAY25                  "Number of days from admission to PR25"
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
label var YEAR                     "Calendar year"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var AYEAR                    "Admission year"

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
recode DXCCS19                   (-999 -888 -666=.)
recode DXCCS20                   (-999 -888 -666=.)
recode DXCCS21                   (-999 -888 -666=.)
recode DXCCS22                   (-999 -888 -666=.)
recode DXCCS23                   (-999 -888 -666=.)
recode DXCCS24                   (-999 -888 -666=.)
recode DXCCS25                   (-999 -888 -666=.)
recode DXCCS26                   (-999 -888 -666=.)
recode DXCCS27                   (-999 -888 -666=.)
recode DXCCS28                   (-999 -888 -666=.)
recode DXCCS29                   (-999 -888 -666=.)
recode DXCCS30                   (-999 -888 -666=.)
recode DXCCS31                   (-999 -888 -666=.)
recode DXCCS32                   (-999 -888 -666=.)
recode DXCCS33                   (-999 -888 -666=.)
recode DXVER                     (-99 -88 -66=.)
recode E_CCS1                    (-999 -888 -666=.)
recode E_CCS2                    (-999 -888 -666=.)
recode E_CCS3                    (-999 -888 -666=.)
recode E_CCS4                    (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC24                     (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
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
recode PRCCS21                   (-99 -88 -66=.)
recode PRCCS22                   (-99 -88 -66=.)
recode PRCCS23                   (-99 -88 -66=.)
recode PRCCS24                   (-99 -88 -66=.)
recode PRCCS25                   (-99 -88 -66=.)
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
recode PRDAY21                   (-9999 -8888 -6666=.)
recode PRDAY22                   (-9999 -8888 -6666=.)
recode PRDAY23                   (-9999 -8888 -6666=.)
recode PRDAY24                   (-9999 -8888 -6666=.)
recode PRDAY25                   (-9999 -8888 -6666=.)
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

save "NV_SID_2014_CORE.dta", replace
