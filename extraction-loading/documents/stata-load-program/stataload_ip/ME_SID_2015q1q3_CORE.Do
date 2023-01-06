/*****************************************************************************
* Creation Date: 05/11/2018   
* ME_SID_2015q1q3_CORE.Do
* This program will load the 2015 ME ASCII CORE File into Stata.
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
      int    DRG_NoPOA                   33-  35   ///
      int    DRG32                       36-  38   ///
      byte   DRGVER                      39-  40   ///
      str    DX_Admitting                41-  47   ///
      str    DX1                         48-  54   ///
      str    DX2                         55-  61   ///
      str    DX3                         62-  68   ///
      str    DX4                         69-  75   ///
      str    DX5                         76-  82   ///
      str    DX6                         83-  89   ///
      str    DX7                         90-  96   ///
      str    DX8                         97- 103   ///
      str    DX9                        104- 110   ///
      str    DX10                       111- 117   ///
      str    DX11                       118- 124   ///
      str    DX12                       125- 131   ///
      str    DX13                       132- 138   ///
      str    DX14                       139- 145   ///
      str    DX15                       146- 152   ///
      str    DX16                       153- 159   ///
      str    DX17                       160- 166   ///
      str    DX18                       167- 173   ///
      str    DX19                       174- 180   ///
      str    DX20                       181- 187   ///
      str    DX21                       188- 194   ///
      str    DX22                       195- 201   ///
      str    DX23                       202- 208   ///
      str    DX24                       209- 215   ///
      str    DX25                       216- 222   ///
      int    DXCCS1                     223- 226   ///
      int    DXCCS2                     227- 230   ///
      int    DXCCS3                     231- 234   ///
      int    DXCCS4                     235- 238   ///
      int    DXCCS5                     239- 242   ///
      int    DXCCS6                     243- 246   ///
      int    DXCCS7                     247- 250   ///
      int    DXCCS8                     251- 254   ///
      int    DXCCS9                     255- 258   ///
      int    DXCCS10                    259- 262   ///
      int    DXCCS11                    263- 266   ///
      int    DXCCS12                    267- 270   ///
      int    DXCCS13                    271- 274   ///
      int    DXCCS14                    275- 278   ///
      int    DXCCS15                    279- 282   ///
      int    DXCCS16                    283- 286   ///
      int    DXCCS17                    287- 290   ///
      int    DXCCS18                    291- 294   ///
      int    DXCCS19                    295- 298   ///
      int    DXCCS20                    299- 302   ///
      int    DXCCS21                    303- 306   ///
      int    DXCCS22                    307- 310   ///
      int    DXCCS23                    311- 314   ///
      int    DXCCS24                    315- 318   ///
      int    DXCCS25                    319- 322   ///
      str    DXPOA1                     323        ///
      str    DXPOA2                     324        ///
      str    DXPOA3                     325        ///
      str    DXPOA4                     326        ///
      str    DXPOA5                     327        ///
      str    DXPOA6                     328        ///
      str    DXPOA7                     329        ///
      str    DXPOA8                     330        ///
      str    DXPOA9                     331        ///
      str    DXPOA10                    332        ///
      str    DXPOA11                    333        ///
      str    DXPOA12                    334        ///
      str    DXPOA13                    335        ///
      str    DXPOA14                    336        ///
      str    DXPOA15                    337        ///
      str    DXPOA16                    338        ///
      str    DXPOA17                    339        ///
      str    DXPOA18                    340        ///
      str    DXPOA19                    341        ///
      str    DXPOA20                    342        ///
      str    DXPOA21                    343        ///
      str    DXPOA22                    344        ///
      str    DXPOA23                    345        ///
      str    DXPOA24                    346        ///
      str    DXPOA25                    347        ///
      int    DXVER                      348- 350   ///
      int    E_CCS1                     351- 354   ///
      int    E_CCS2                     355- 358   ///
      int    E_CCS3                     359- 362   ///
      int    E_CCS4                     363- 366   ///
      int    E_CCS5                     367- 370   ///
      int    E_CCS6                     371- 374   ///
      int    E_CCS7                     375- 378   ///
      int    E_CCS8                     379- 382   ///
      int    E_CCS9                     383- 386   ///
      str    E_POA1                     387        ///
      str    E_POA2                     388        ///
      str    E_POA3                     389        ///
      str    E_POA4                     390        ///
      str    E_POA5                     391        ///
      str    E_POA6                     392        ///
      str    E_POA7                     393        ///
      str    E_POA8                     394        ///
      str    E_POA9                     395        ///
      str    ECODE1                     396- 402   ///
      str    ECODE2                     403- 409   ///
      str    ECODE3                     410- 416   ///
      str    ECODE4                     417- 423   ///
      str    ECODE5                     424- 430   ///
      str    ECODE6                     431- 437   ///
      str    ECODE7                     438- 444   ///
      str    ECODE8                     445- 451   ///
      str    ECODE9                     452- 458   ///
      byte   FEMALE                     459- 460   ///
      byte   HCUP_ED                    461- 462   ///
      byte   HCUP_OS                    463- 464   ///
      int    HOSPBRTH                   465- 467   ///
      str    HOSPST                     468- 469   ///
      double KEY                        470- 484   ///
      long   LOS                        485- 489   ///
      byte   MDC                        490- 491   ///
      byte   MDC_NoPOA                  492- 493   ///
      byte   MDC32                      494- 495   ///
      str    MDSPEC1                    496- 497   ///
      str    MDSPEC2                    498- 499   ///
      byte   MEDINCSTQ                  500- 501   ///
      long   MRN_R                      502- 510   ///
      int    NCHRONIC                   511- 513   ///
      int    NDX                        514- 516   ///
      byte   NECODE                     517- 518   ///
      byte   NEOMAT                     519- 520   ///
      int    NPR                        521- 523   ///
      byte   ORPROC                     524- 525   ///
      double OS_TIME                    526- 536   ///
      byte   PAY1                       537- 538   ///
      byte   PAY2                       539- 540   ///
      byte   PAY3                       541- 542   ///
      int    PL_CBSA                    543- 545   ///
      byte   PL_NCHS                    546- 547   ///
      byte   PL_UIC                     548- 549   ///
      byte   PL_UR_CAT4                 550- 551   ///
      byte   POA_Disch_Edit1            552- 553   ///
      byte   POA_Disch_Edit2            554- 555   ///
      byte   POA_Hosp_Edit1             556- 557   ///
      byte   POA_Hosp_Edit2             558- 559   ///
      byte   POA_Hosp_Edit3             560- 561   ///
      double POA_Hosp_Edit3_Value       562- 569   ///
      str    PointOfOriginUB04          570        ///
      str    PR1                        571- 577   ///
      str    PR2                        578- 584   ///
      str    PR3                        585- 591   ///
      str    PR4                        592- 598   ///
      str    PR5                        599- 605   ///
      str    PR6                        606- 612   ///
      str    PR7                        613- 619   ///
      str    PR8                        620- 626   ///
      str    PR9                        627- 633   ///
      str    PR10                       634- 640   ///
      str    PR11                       641- 647   ///
      str    PR12                       648- 654   ///
      str    PR13                       655- 661   ///
      str    PR14                       662- 668   ///
      str    PR15                       669- 675   ///
      str    PR16                       676- 682   ///
      str    PR17                       683- 689   ///
      str    PR18                       690- 696   ///
      str    PR19                       697- 703   ///
      str    PR20                       704- 710   ///
      str    PR21                       711- 717   ///
      str    PR22                       718- 724   ///
      str    PR23                       725- 731   ///
      str    PR24                       732- 738   ///
      str    PR25                       739- 745   ///
      int    PRCCS1                     746- 748   ///
      int    PRCCS2                     749- 751   ///
      int    PRCCS3                     752- 754   ///
      int    PRCCS4                     755- 757   ///
      int    PRCCS5                     758- 760   ///
      int    PRCCS6                     761- 763   ///
      int    PRCCS7                     764- 766   ///
      int    PRCCS8                     767- 769   ///
      int    PRCCS9                     770- 772   ///
      int    PRCCS10                    773- 775   ///
      int    PRCCS11                    776- 778   ///
      int    PRCCS12                    779- 781   ///
      int    PRCCS13                    782- 784   ///
      int    PRCCS14                    785- 787   ///
      int    PRCCS15                    788- 790   ///
      int    PRCCS16                    791- 793   ///
      int    PRCCS17                    794- 796   ///
      int    PRCCS18                    797- 799   ///
      int    PRCCS19                    800- 802   ///
      int    PRCCS20                    803- 805   ///
      int    PRCCS21                    806- 808   ///
      int    PRCCS22                    809- 811   ///
      int    PRCCS23                    812- 814   ///
      int    PRCCS24                    815- 817   ///
      int    PRCCS25                    818- 820   ///
      long   PRDAY1                     821- 825   ///
      long   PRDAY2                     826- 830   ///
      long   PRDAY3                     831- 835   ///
      long   PRDAY4                     836- 840   ///
      long   PRDAY5                     841- 845   ///
      long   PRDAY6                     846- 850   ///
      long   PRDAY7                     851- 855   ///
      long   PRDAY8                     856- 860   ///
      long   PRDAY9                     861- 865   ///
      long   PRDAY10                    866- 870   ///
      long   PRDAY11                    871- 875   ///
      long   PRDAY12                    876- 880   ///
      long   PRDAY13                    881- 885   ///
      long   PRDAY14                    886- 890   ///
      long   PRDAY15                    891- 895   ///
      long   PRDAY16                    896- 900   ///
      long   PRDAY17                    901- 905   ///
      long   PRDAY18                    906- 910   ///
      long   PRDAY19                    911- 915   ///
      long   PRDAY20                    916- 920   ///
      long   PRDAY21                    921- 925   ///
      long   PRDAY22                    926- 930   ///
      long   PRDAY23                    931- 935   ///
      long   PRDAY24                    936- 940   ///
      long   PRDAY25                    941- 945   ///
      int    PROCTYPE                   946- 948   ///
      int    PRVER                      949- 951   ///
      str    PSTATE                     952- 953   ///
      long   PSTCO                      954- 958   ///
      long   PSTCO2                     959- 963   ///
      byte   SERVICELINE                964- 965   ///
      byte   TRAN_IN                    966- 967   ///
      byte   TRAN_OUT                   968- 969   ///
      int    YEAR                       970- 973   ///
      str    ZIP3                       974- 976   ///
      int    ZIPINC_QRTL                977- 979   ///
      int    AGEGROUP                   980- 982   ///
      long   HOSPID                     983- 987   ///
      int    AYEAR                      988- 991   ///
      byte   PRMONTH1                   992- 993   ///
      byte   PRMONTH2                   994- 995   ///
      byte   PRMONTH3                   996- 997   ///
      byte   PRMONTH4                   998- 999   ///
      byte   PRMONTH5                  1000-1001   ///
      byte   PRMONTH6                  1002-1003   ///
      byte   PRMONTH7                  1004-1005   ///
      byte   PRMONTH8                  1006-1007   ///
      byte   PRMONTH9                  1008-1009   ///
      byte   PRMONTH10                 1010-1011   ///
      byte   PRMONTH11                 1012-1013   ///
      byte   PRMONTH12                 1014-1015   ///
      byte   PRMONTH13                 1016-1017   ///
      byte   PRMONTH14                 1018-1019   ///
      byte   PRMONTH15                 1020-1021   ///
      byte   PRMONTH16                 1022-1023   ///
      byte   PRMONTH17                 1024-1025   ///
      byte   PRMONTH18                 1026-1027   ///
      byte   PRMONTH19                 1028-1029   ///
      byte   PRMONTH20                 1030-1031   ///
      byte   PRMONTH21                 1032-1033   ///
      byte   PRMONTH22                 1034-1035   ///
      byte   PRMONTH23                 1036-1037   ///
      byte   PRMONTH24                 1038-1039   ///
      byte   PRMONTH25                 1040-1041   ///
      int    PRYEAR1                   1042-1045   ///
      int    PRYEAR2                   1046-1049   ///
      int    PRYEAR3                   1050-1053   ///
      int    PRYEAR4                   1054-1057   ///
      int    PRYEAR5                   1058-1061   ///
      int    PRYEAR6                   1062-1065   ///
      int    PRYEAR7                   1066-1069   ///
      int    PRYEAR8                   1070-1073   ///
      int    PRYEAR9                   1074-1077   ///
      int    PRYEAR10                  1078-1081   ///
      int    PRYEAR11                  1082-1085   ///
      int    PRYEAR12                  1086-1089   ///
      int    PRYEAR13                  1090-1093   ///
      int    PRYEAR14                  1094-1097   ///
      int    PRYEAR15                  1098-1101   ///
      int    PRYEAR16                  1102-1105   ///
      int    PRYEAR17                  1106-1109   ///
      int    PRYEAR18                  1110-1113   ///
      int    PRYEAR19                  1114-1117   ///
      int    PRYEAR20                  1118-1121   ///
      int    PRYEAR21                  1122-1125   ///
      int    PRYEAR22                  1126-1129   ///
      int    PRYEAR23                  1130-1133   ///
      int    PRYEAR24                  1134-1137   ///
      int    PRYEAR25                  1138-1141   ///
      using  "ME_SID_2015q1q3_CORE.ASC"

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
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
label var DRG32                    "DRG, version 32"
label var DRGVER                   "DRG grouper version used on discharge date"
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
label var E_CCS8                   "CCS: E Code 8"
label var E_CCS9                   "CCS: E Code 9"
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var E_POA7                   "E Code 7, present on admission indicator"
label var E_POA8                   "E Code 8, present on admission indicator"
label var E_POA9                   "E Code 9, present on admission indicator"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var ECODE8                   "E code 8"
label var ECODE9                   "E code 9"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDC32                    "MDC, version 32"
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
label var PRMONTH7                 "Month of procedure 7"
label var PRMONTH8                 "Month of procedure 8"
label var PRMONTH9                 "Month of procedure 9"
label var PRMONTH10                "Month of procedure 10"
label var PRMONTH11                "Month of procedure 11"
label var PRMONTH12                "Month of procedure 12"
label var PRMONTH13                "Month of procedure 13"
label var PRMONTH14                "Month of procedure 14"
label var PRMONTH15                "Month of procedure 15"
label var PRMONTH16                "Month of procedure 16"
label var PRMONTH17                "Month of procedure 17"
label var PRMONTH18                "Month of procedure 18"
label var PRMONTH19                "Month of procedure 19"
label var PRMONTH20                "Month of procedure 20"
label var PRMONTH21                "Month of procedure 21"
label var PRMONTH22                "Month of procedure 22"
label var PRMONTH23                "Month of procedure 23"
label var PRMONTH24                "Month of procedure 24"
label var PRMONTH25                "Month of procedure 25"
label var PRYEAR1                  "Year of procedure 1"
label var PRYEAR2                  "Year of procedure 2"
label var PRYEAR3                  "Year of procedure 3"
label var PRYEAR4                  "Year of procedure 4"
label var PRYEAR5                  "Year of procedure 5"
label var PRYEAR6                  "Year of procedure 6"
label var PRYEAR7                  "Year of procedure 7"
label var PRYEAR8                  "Year of procedure 8"
label var PRYEAR9                  "Year of procedure 9"
label var PRYEAR10                 "Year of procedure 10"
label var PRYEAR11                 "Year of procedure 11"
label var PRYEAR12                 "Year of procedure 12"
label var PRYEAR13                 "Year of procedure 13"
label var PRYEAR14                 "Year of procedure 14"
label var PRYEAR15                 "Year of procedure 15"
label var PRYEAR16                 "Year of procedure 16"
label var PRYEAR17                 "Year of procedure 17"
label var PRYEAR18                 "Year of procedure 18"
label var PRYEAR19                 "Year of procedure 19"
label var PRYEAR20                 "Year of procedure 20"
label var PRYEAR21                 "Year of procedure 21"
label var PRYEAR22                 "Year of procedure 22"
label var PRYEAR23                 "Year of procedure 23"
label var PRYEAR24                 "Year of procedure 24"
label var PRYEAR25                 "Year of procedure 25"

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
recode E_CCS8                    (-999 -888 -666=.)
recode E_CCS9                    (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDC32                     (-9 -8 -6 -5=.)
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
recode PRMONTH7                  (-9 -8 -6 -5=.)
recode PRMONTH8                  (-9 -8 -6 -5=.)
recode PRMONTH9                  (-9 -8 -6 -5=.)
recode PRMONTH10                 (-9 -8 -6 -5=.)
recode PRMONTH11                 (-9 -8 -6 -5=.)
recode PRMONTH12                 (-9 -8 -6 -5=.)
recode PRMONTH13                 (-9 -8 -6 -5=.)
recode PRMONTH14                 (-9 -8 -6 -5=.)
recode PRMONTH15                 (-9 -8 -6 -5=.)
recode PRMONTH16                 (-9 -8 -6 -5=.)
recode PRMONTH17                 (-9 -8 -6 -5=.)
recode PRMONTH18                 (-9 -8 -6 -5=.)
recode PRMONTH19                 (-9 -8 -6 -5=.)
recode PRMONTH20                 (-9 -8 -6 -5=.)
recode PRMONTH21                 (-9 -8 -6 -5=.)
recode PRMONTH22                 (-9 -8 -6 -5=.)
recode PRMONTH23                 (-9 -8 -6 -5=.)
recode PRMONTH24                 (-9 -8 -6 -5=.)
recode PRMONTH25                 (-9 -8 -6 -5=.)
recode PRYEAR1                   (-999 -888 -666=.)
recode PRYEAR2                   (-999 -888 -666=.)
recode PRYEAR3                   (-999 -888 -666=.)
recode PRYEAR4                   (-999 -888 -666=.)
recode PRYEAR5                   (-999 -888 -666=.)
recode PRYEAR6                   (-999 -888 -666=.)
recode PRYEAR7                   (-999 -888 -666=.)
recode PRYEAR8                   (-999 -888 -666=.)
recode PRYEAR9                   (-999 -888 -666=.)
recode PRYEAR10                  (-999 -888 -666=.)
recode PRYEAR11                  (-999 -888 -666=.)
recode PRYEAR12                  (-999 -888 -666=.)
recode PRYEAR13                  (-999 -888 -666=.)
recode PRYEAR14                  (-999 -888 -666=.)
recode PRYEAR15                  (-999 -888 -666=.)
recode PRYEAR16                  (-999 -888 -666=.)
recode PRYEAR17                  (-999 -888 -666=.)
recode PRYEAR18                  (-999 -888 -666=.)
recode PRYEAR19                  (-999 -888 -666=.)
recode PRYEAR20                  (-999 -888 -666=.)
recode PRYEAR21                  (-999 -888 -666=.)
recode PRYEAR22                  (-999 -888 -666=.)
recode PRYEAR23                  (-999 -888 -666=.)
recode PRYEAR24                  (-999 -888 -666=.)
recode PRYEAR25                  (-999 -888 -666=.)

save "ME_SID_2015q1q3_CORE.dta", replace
