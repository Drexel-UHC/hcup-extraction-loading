/*****************************************************************************
* Creation Date: 12/01/2017   
* NV_SID_2015q1q3_CORE.Do
* This program will load the 2015 NV ASCII CORE File into Stata.
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
      str    DISP_X                      30-  31   ///
      byte   DISPUB04                    32-  33   ///
      byte   DISPUNIFORM                 34-  35   ///
      byte   DMONTH                      36-  37   ///
      byte   DQTR                        38-  39   ///
      int    DRG                         40-  42   ///
      int    DRG_NoPOA                   43-  45   ///
      int    DRG32                       46-  48   ///
      byte   DRGVER                      49-  50   ///
      str    DSHOSPID                    51-  67   ///
      str    DX_Admitting                68-  74   ///
      str    DX1                         75-  81   ///
      str    DX2                         82-  88   ///
      str    DX3                         89-  95   ///
      str    DX4                         96- 102   ///
      str    DX5                        103- 109   ///
      str    DX6                        110- 116   ///
      str    DX7                        117- 123   ///
      str    DX8                        124- 130   ///
      str    DX9                        131- 137   ///
      str    DX10                       138- 144   ///
      str    DX11                       145- 151   ///
      str    DX12                       152- 158   ///
      str    DX13                       159- 165   ///
      str    DX14                       166- 172   ///
      str    DX15                       173- 179   ///
      str    DX16                       180- 186   ///
      str    DX17                       187- 193   ///
      str    DX18                       194- 200   ///
      str    DX19                       201- 207   ///
      str    DX20                       208- 214   ///
      str    DX21                       215- 221   ///
      str    DX22                       222- 228   ///
      str    DX23                       229- 235   ///
      str    DX24                       236- 242   ///
      str    DX25                       243- 249   ///
      str    DX26                       250- 256   ///
      str    DX27                       257- 263   ///
      str    DX28                       264- 270   ///
      str    DX29                       271- 277   ///
      str    DX30                       278- 284   ///
      str    DX31                       285- 291   ///
      str    DX32                       292- 298   ///
      str    DX33                       299- 305   ///
      int    DXCCS1                     306- 309   ///
      int    DXCCS2                     310- 313   ///
      int    DXCCS3                     314- 317   ///
      int    DXCCS4                     318- 321   ///
      int    DXCCS5                     322- 325   ///
      int    DXCCS6                     326- 329   ///
      int    DXCCS7                     330- 333   ///
      int    DXCCS8                     334- 337   ///
      int    DXCCS9                     338- 341   ///
      int    DXCCS10                    342- 345   ///
      int    DXCCS11                    346- 349   ///
      int    DXCCS12                    350- 353   ///
      int    DXCCS13                    354- 357   ///
      int    DXCCS14                    358- 361   ///
      int    DXCCS15                    362- 365   ///
      int    DXCCS16                    366- 369   ///
      int    DXCCS17                    370- 373   ///
      int    DXCCS18                    374- 377   ///
      int    DXCCS19                    378- 381   ///
      int    DXCCS20                    382- 385   ///
      int    DXCCS21                    386- 389   ///
      int    DXCCS22                    390- 393   ///
      int    DXCCS23                    394- 397   ///
      int    DXCCS24                    398- 401   ///
      int    DXCCS25                    402- 405   ///
      int    DXCCS26                    406- 409   ///
      int    DXCCS27                    410- 413   ///
      int    DXCCS28                    414- 417   ///
      int    DXCCS29                    418- 421   ///
      int    DXCCS30                    422- 425   ///
      int    DXCCS31                    426- 429   ///
      int    DXCCS32                    430- 433   ///
      int    DXCCS33                    434- 437   ///
      str    DXPOA1                     438        ///
      str    DXPOA2                     439        ///
      str    DXPOA3                     440        ///
      str    DXPOA4                     441        ///
      str    DXPOA5                     442        ///
      str    DXPOA6                     443        ///
      str    DXPOA7                     444        ///
      str    DXPOA8                     445        ///
      str    DXPOA9                     446        ///
      str    DXPOA10                    447        ///
      str    DXPOA11                    448        ///
      str    DXPOA12                    449        ///
      str    DXPOA13                    450        ///
      str    DXPOA14                    451        ///
      str    DXPOA15                    452        ///
      str    DXPOA16                    453        ///
      str    DXPOA17                    454        ///
      str    DXPOA18                    455        ///
      str    DXPOA19                    456        ///
      str    DXPOA20                    457        ///
      str    DXPOA21                    458        ///
      str    DXPOA22                    459        ///
      str    DXPOA23                    460        ///
      str    DXPOA24                    461        ///
      str    DXPOA25                    462        ///
      str    DXPOA26                    463        ///
      str    DXPOA27                    464        ///
      str    DXPOA28                    465        ///
      str    DXPOA29                    466        ///
      str    DXPOA30                    467        ///
      str    DXPOA31                    468        ///
      str    DXPOA32                    469        ///
      str    DXPOA33                    470        ///
      int    DXVER                      471- 473   ///
      int    E_CCS1                     474- 477   ///
      int    E_CCS2                     478- 481   ///
      int    E_CCS3                     482- 485   ///
      int    E_CCS4                     486- 489   ///
      int    E_CCS5                     490- 493   ///
      int    E_CCS6                     494- 497   ///
      int    E_CCS7                     498- 501   ///
      str    E_POA1                     502        ///
      str    E_POA2                     503        ///
      str    E_POA3                     504        ///
      str    E_POA4                     505        ///
      str    E_POA5                     506        ///
      str    E_POA6                     507        ///
      str    E_POA7                     508        ///
      str    ECODE1                     509- 515   ///
      str    ECODE2                     516- 522   ///
      str    ECODE3                     523- 529   ///
      str    ECODE4                     530- 536   ///
      str    ECODE5                     537- 543   ///
      str    ECODE6                     544- 550   ///
      str    ECODE7                     551- 557   ///
      byte   FEMALE                     558- 559   ///
      byte   HCUP_ED                    560- 561   ///
      byte   HCUP_OS                    562- 563   ///
      byte   HISPANIC                   564- 565   ///
      int    HOSPBRTH                   566- 568   ///
      str    HOSPST                     569- 570   ///
      double KEY                        571- 585   ///
      long   LOS                        586- 590   ///
      long   LOS_X                      591- 596   ///
      str    MARITALSTATUS_X            597        ///
      str    MARITALSTATUSUB04          598        ///
      byte   MDC                        599- 600   ///
      byte   MDC_NoPOA                  601- 602   ///
      byte   MDC32                      603- 604   ///
      long   MDNUM1_R                   605- 613   ///
      long   MDNUM2_R                   614- 622   ///
      str    MDNUMTYPE1                 623        ///
      str    MDNUMTYPE2                 624        ///
      byte   MEDINCSTQ                  625- 626   ///
      int    NCHRONIC                   627- 629   ///
      int    NDX                        630- 632   ///
      byte   NECODE                     633- 634   ///
      byte   NEOMAT                     635- 636   ///
      int    NPR                        637- 639   ///
      byte   ORPROC                     640- 641   ///
      double OS_TIME                    642- 652   ///
      byte   PAY1                       653- 654   ///
      str    PAY1_X                     655- 656   ///
      byte   PAY2                       657- 658   ///
      str    PAY2_X                     659- 660   ///
      byte   PAY3                       661- 662   ///
      str    PAY3_X                     663- 664   ///
      byte   PL_NCHS                    665- 666   ///
      byte   PL_RUCC                    667- 668   ///
      byte   PL_UIC                     669- 670   ///
      byte   PL_UR_CAT4                 671- 672   ///
      byte   POA_Disch_Edit1            673- 674   ///
      byte   POA_Disch_Edit2            675- 676   ///
      byte   POA_Hosp_Edit1             677- 678   ///
      byte   POA_Hosp_Edit2             679- 680   ///
      byte   POA_Hosp_Edit3             681- 682   ///
      double POA_Hosp_Edit3_Value       683- 690   ///
      str    PointOfOrigin_X            691- 692   ///
      str    PointOfOriginUB04          693        ///
      str    PR1                        694- 700   ///
      str    PR2                        701- 707   ///
      str    PR3                        708- 714   ///
      str    PR4                        715- 721   ///
      str    PR5                        722- 728   ///
      str    PR6                        729- 735   ///
      str    PR7                        736- 742   ///
      str    PR8                        743- 749   ///
      str    PR9                        750- 756   ///
      str    PR10                       757- 763   ///
      str    PR11                       764- 770   ///
      str    PR12                       771- 777   ///
      str    PR13                       778- 784   ///
      str    PR14                       785- 791   ///
      str    PR15                       792- 798   ///
      str    PR16                       799- 805   ///
      str    PR17                       806- 812   ///
      str    PR18                       813- 819   ///
      str    PR19                       820- 826   ///
      str    PR20                       827- 833   ///
      str    PR21                       834- 840   ///
      str    PR22                       841- 847   ///
      str    PR23                       848- 854   ///
      str    PR24                       855- 861   ///
      str    PR25                       862- 868   ///
      int    PRCCS1                     869- 871   ///
      int    PRCCS2                     872- 874   ///
      int    PRCCS3                     875- 877   ///
      int    PRCCS4                     878- 880   ///
      int    PRCCS5                     881- 883   ///
      int    PRCCS6                     884- 886   ///
      int    PRCCS7                     887- 889   ///
      int    PRCCS8                     890- 892   ///
      int    PRCCS9                     893- 895   ///
      int    PRCCS10                    896- 898   ///
      int    PRCCS11                    899- 901   ///
      int    PRCCS12                    902- 904   ///
      int    PRCCS13                    905- 907   ///
      int    PRCCS14                    908- 910   ///
      int    PRCCS15                    911- 913   ///
      int    PRCCS16                    914- 916   ///
      int    PRCCS17                    917- 919   ///
      int    PRCCS18                    920- 922   ///
      int    PRCCS19                    923- 925   ///
      int    PRCCS20                    926- 928   ///
      int    PRCCS21                    929- 931   ///
      int    PRCCS22                    932- 934   ///
      int    PRCCS23                    935- 937   ///
      int    PRCCS24                    938- 940   ///
      int    PRCCS25                    941- 943   ///
      long   PRDAY1                     944- 948   ///
      long   PRDAY2                     949- 953   ///
      long   PRDAY3                     954- 958   ///
      long   PRDAY4                     959- 963   ///
      long   PRDAY5                     964- 968   ///
      long   PRDAY6                     969- 973   ///
      long   PRDAY7                     974- 978   ///
      long   PRDAY8                     979- 983   ///
      long   PRDAY9                     984- 988   ///
      long   PRDAY10                    989- 993   ///
      long   PRDAY11                    994- 998   ///
      long   PRDAY12                    999-1003   ///
      long   PRDAY13                   1004-1008   ///
      long   PRDAY14                   1009-1013   ///
      long   PRDAY15                   1014-1018   ///
      long   PRDAY16                   1019-1023   ///
      long   PRDAY17                   1024-1028   ///
      long   PRDAY18                   1029-1033   ///
      long   PRDAY19                   1034-1038   ///
      long   PRDAY20                   1039-1043   ///
      long   PRDAY21                   1044-1048   ///
      long   PRDAY22                   1049-1053   ///
      long   PRDAY23                   1054-1058   ///
      long   PRDAY24                   1059-1063   ///
      long   PRDAY25                   1064-1068   ///
      int    PROCTYPE                  1069-1071   ///
      int    PRVER                     1072-1074   ///
      str    PSTATE                    1075-1076   ///
      long   PSTCO                     1077-1081   ///
      long   PSTCO2                    1082-1086   ///
      byte   RACE                      1087-1088   ///
      str    RACE_X                    1089-1090   ///
      byte   SERVICELINE               1091-1092   ///
      double TOTCHG                    1093-1102   ///
      double TOTCHG_X                  1103-1117   ///
      byte   TRAN_IN                   1118-1119   ///
      byte   TRAN_OUT                  1120-1121   ///
      int    YEAR                      1122-1125   ///
      int    ZIPINC_QRTL               1126-1128   ///
      int    AYEAR                     1129-1132   ///
      using  "NV_SID_2015q1q3_CORE.ASC"

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
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MARITALSTATUS_X          "Patient's marital status (as received from source)"
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDC32                    "MDC, version 32"
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

save "NV_SID_2015q1q3_CORE.dta", replace
