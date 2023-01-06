/*****************************************************************************
* Creation Date: 01/04/2018   
* MD_SID_2015q1q3_CORE.Do
* This program will load the 2015 MD ASCII CORE File into Stata.
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
      byte   ASOURCE                     10-  11   ///
      str    ASOURCE_X                   12-  13   ///
      byte   ATYPE                       14-  15   ///
      byte   AWEEKEND                    16-  17   ///
      int    BWT                         18-  21   ///
      int    DaysBurnUnit                22-  24   ///
      int    DaysCCU                     25-  27   ///
      int    DaysICU                     28-  30   ///
      int    DaysNICU                    31-  33   ///
      int    DaysPICU                    34-  36   ///
      int    DaysShockUnit               37-  39   ///
      long   DaysToEvent                 40-  45   ///
      byte   DIED                        46-  47   ///
      str    DISP_X                      48-  49   ///
      byte   DISPUNIFORM                 50-  51   ///
      byte   DQTR                        52-  53   ///
      int    DRG                         54-  56   ///
      int    DRG_NoPOA                   57-  59   ///
      int    DRG32                       60-  62   ///
      byte   DRGVER                      63-  64   ///
      str    DSHOSPID                    65-  81   ///
      str    DX1                         82-  88   ///
      str    DX2                         89-  95   ///
      str    DX3                         96- 102   ///
      str    DX4                        103- 109   ///
      str    DX5                        110- 116   ///
      str    DX6                        117- 123   ///
      str    DX7                        124- 130   ///
      str    DX8                        131- 137   ///
      str    DX9                        138- 144   ///
      str    DX10                       145- 151   ///
      str    DX11                       152- 158   ///
      str    DX12                       159- 165   ///
      str    DX13                       166- 172   ///
      str    DX14                       173- 179   ///
      str    DX15                       180- 186   ///
      str    DX16                       187- 193   ///
      str    DX17                       194- 200   ///
      str    DX18                       201- 207   ///
      str    DX19                       208- 214   ///
      str    DX20                       215- 221   ///
      str    DX21                       222- 228   ///
      str    DX22                       229- 235   ///
      str    DX23                       236- 242   ///
      str    DX24                       243- 249   ///
      str    DX25                       250- 256   ///
      str    DX26                       257- 263   ///
      str    DX27                       264- 270   ///
      str    DX28                       271- 277   ///
      str    DX29                       278- 284   ///
      str    DX30                       285- 291   ///
      int    DXCCS1                     292- 295   ///
      int    DXCCS2                     296- 299   ///
      int    DXCCS3                     300- 303   ///
      int    DXCCS4                     304- 307   ///
      int    DXCCS5                     308- 311   ///
      int    DXCCS6                     312- 315   ///
      int    DXCCS7                     316- 319   ///
      int    DXCCS8                     320- 323   ///
      int    DXCCS9                     324- 327   ///
      int    DXCCS10                    328- 331   ///
      int    DXCCS11                    332- 335   ///
      int    DXCCS12                    336- 339   ///
      int    DXCCS13                    340- 343   ///
      int    DXCCS14                    344- 347   ///
      int    DXCCS15                    348- 351   ///
      int    DXCCS16                    352- 355   ///
      int    DXCCS17                    356- 359   ///
      int    DXCCS18                    360- 363   ///
      int    DXCCS19                    364- 367   ///
      int    DXCCS20                    368- 371   ///
      int    DXCCS21                    372- 375   ///
      int    DXCCS22                    376- 379   ///
      int    DXCCS23                    380- 383   ///
      int    DXCCS24                    384- 387   ///
      int    DXCCS25                    388- 391   ///
      int    DXCCS26                    392- 395   ///
      int    DXCCS27                    396- 399   ///
      int    DXCCS28                    400- 403   ///
      int    DXCCS29                    404- 407   ///
      int    DXCCS30                    408- 411   ///
      str    DXPOA1                     412        ///
      str    DXPOA2                     413        ///
      str    DXPOA3                     414        ///
      str    DXPOA4                     415        ///
      str    DXPOA5                     416        ///
      str    DXPOA6                     417        ///
      str    DXPOA7                     418        ///
      str    DXPOA8                     419        ///
      str    DXPOA9                     420        ///
      str    DXPOA10                    421        ///
      str    DXPOA11                    422        ///
      str    DXPOA12                    423        ///
      str    DXPOA13                    424        ///
      str    DXPOA14                    425        ///
      str    DXPOA15                    426        ///
      str    DXPOA16                    427        ///
      str    DXPOA17                    428        ///
      str    DXPOA18                    429        ///
      str    DXPOA19                    430        ///
      str    DXPOA20                    431        ///
      str    DXPOA21                    432        ///
      str    DXPOA22                    433        ///
      str    DXPOA23                    434        ///
      str    DXPOA24                    435        ///
      str    DXPOA25                    436        ///
      str    DXPOA26                    437        ///
      str    DXPOA27                    438        ///
      str    DXPOA28                    439        ///
      str    DXPOA29                    440        ///
      str    DXPOA30                    441        ///
      int    DXVER                      442- 444   ///
      int    E_CCS1                     445- 448   ///
      int    E_CCS2                     449- 452   ///
      int    E_CCS3                     453- 456   ///
      int    E_CCS4                     457- 460   ///
      int    E_CCS5                     461- 464   ///
      int    E_CCS6                     465- 468   ///
      int    E_CCS7                     469- 472   ///
      int    E_CCS8                     473- 476   ///
      int    E_CCS9                     477- 480   ///
      str    E_POA1                     481        ///
      str    E_POA2                     482        ///
      str    E_POA3                     483        ///
      str    E_POA4                     484        ///
      str    E_POA5                     485        ///
      str    E_POA6                     486        ///
      str    E_POA7                     487        ///
      str    E_POA8                     488        ///
      str    E_POA9                     489        ///
      str    ECODE1                     490- 496   ///
      str    ECODE2                     497- 503   ///
      str    ECODE3                     504- 510   ///
      str    ECODE4                     511- 517   ///
      str    ECODE5                     518- 524   ///
      str    ECODE6                     525- 531   ///
      str    ECODE7                     532- 538   ///
      str    ECODE8                     539- 545   ///
      str    ECODE9                     546- 552   ///
      byte   FEMALE                     553- 554   ///
      byte   HCUP_ED                    555- 556   ///
      byte   HCUP_OS                    557- 558   ///
      byte   HISPANIC                   559- 560   ///
      str    HISPANIC_X                 561        ///
      byte   Homeless                   562- 563   ///
      int    HOSPBRTH                   564- 566   ///
      byte   HospitalUnit               567- 568   ///
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
      byte   MEDINCSTQ                  623- 624   ///
      long   MRN_R                      625- 633   ///
      int    NCHRONIC                   634- 636   ///
      int    NDX                        637- 639   ///
      byte   NECODE                     640- 641   ///
      byte   NEOMAT                     642- 643   ///
      int    NPR                        644- 646   ///
      byte   ORPROC                     647- 648   ///
      double OS_TIME                    649- 659   ///
      str    P7EDSRC_X                  660- 661   ///
      byte   PAY1                       662- 663   ///
      str    PAY1_X                     664- 665   ///
      byte   PAY2                       666- 667   ///
      str    PAY2_X                     668- 669   ///
      str    PAYER1_X                   670- 671   ///
      str    PAYER2_X                   672- 673   ///
      int    PL_CBSA                    674- 676   ///
      byte   PL_NCHS                    677- 678   ///
      byte   PL_RUCC                    679- 680   ///
      byte   PL_UIC                     681- 682   ///
      byte   PL_UR_CAT4                 683- 684   ///
      byte   POA_Disch_Edit1            685- 686   ///
      byte   POA_Disch_Edit2            687- 688   ///
      byte   POA_Hosp_Edit1             689- 690   ///
      byte   POA_Hosp_Edit2             691- 692   ///
      byte   POA_Hosp_Edit3             693- 694   ///
      double POA_Hosp_Edit3_Value       695- 702   ///
      str    PR1                        703- 709   ///
      str    PR2                        710- 716   ///
      str    PR3                        717- 723   ///
      str    PR4                        724- 730   ///
      str    PR5                        731- 737   ///
      str    PR6                        738- 744   ///
      str    PR7                        745- 751   ///
      str    PR8                        752- 758   ///
      str    PR9                        759- 765   ///
      str    PR10                       766- 772   ///
      str    PR11                       773- 779   ///
      str    PR12                       780- 786   ///
      str    PR13                       787- 793   ///
      str    PR14                       794- 800   ///
      str    PR15                       801- 807   ///
      str    PR16                       808- 814   ///
      str    PR17                       815- 821   ///
      str    PR18                       822- 828   ///
      str    PR19                       829- 835   ///
      str    PR20                       836- 842   ///
      str    PR21                       843- 849   ///
      str    PR22                       850- 856   ///
      str    PR23                       857- 863   ///
      str    PR24                       864- 870   ///
      str    PR25                       871- 877   ///
      str    PR26                       878- 884   ///
      str    PR27                       885- 891   ///
      str    PR28                       892- 898   ///
      str    PR29                       899- 905   ///
      str    PR30                       906- 912   ///
      int    PRCCS1                     913- 915   ///
      int    PRCCS2                     916- 918   ///
      int    PRCCS3                     919- 921   ///
      int    PRCCS4                     922- 924   ///
      int    PRCCS5                     925- 927   ///
      int    PRCCS6                     928- 930   ///
      int    PRCCS7                     931- 933   ///
      int    PRCCS8                     934- 936   ///
      int    PRCCS9                     937- 939   ///
      int    PRCCS10                    940- 942   ///
      int    PRCCS11                    943- 945   ///
      int    PRCCS12                    946- 948   ///
      int    PRCCS13                    949- 951   ///
      int    PRCCS14                    952- 954   ///
      int    PRCCS15                    955- 957   ///
      int    PRCCS16                    958- 960   ///
      int    PRCCS17                    961- 963   ///
      int    PRCCS18                    964- 966   ///
      int    PRCCS19                    967- 969   ///
      int    PRCCS20                    970- 972   ///
      int    PRCCS21                    973- 975   ///
      int    PRCCS22                    976- 978   ///
      int    PRCCS23                    979- 981   ///
      int    PRCCS24                    982- 984   ///
      int    PRCCS25                    985- 987   ///
      int    PRCCS26                    988- 990   ///
      int    PRCCS27                    991- 993   ///
      int    PRCCS28                    994- 996   ///
      int    PRCCS29                    997- 999   ///
      int    PRCCS30                   1000-1002   ///
      long   PRDAY1                    1003-1007   ///
      long   PRDAY2                    1008-1012   ///
      long   PRDAY3                    1013-1017   ///
      long   PRDAY4                    1018-1022   ///
      long   PRDAY5                    1023-1027   ///
      long   PRDAY6                    1028-1032   ///
      long   PRDAY7                    1033-1037   ///
      long   PRDAY8                    1038-1042   ///
      long   PRDAY9                    1043-1047   ///
      long   PRDAY10                   1048-1052   ///
      long   PRDAY11                   1053-1057   ///
      long   PRDAY12                   1058-1062   ///
      long   PRDAY13                   1063-1067   ///
      long   PRDAY14                   1068-1072   ///
      long   PRDAY15                   1073-1077   ///
      long   PRDAY16                   1078-1082   ///
      long   PRDAY17                   1083-1087   ///
      long   PRDAY18                   1088-1092   ///
      long   PRDAY19                   1093-1097   ///
      long   PRDAY20                   1098-1102   ///
      long   PRDAY21                   1103-1107   ///
      long   PRDAY22                   1108-1112   ///
      long   PRDAY23                   1113-1117   ///
      long   PRDAY24                   1118-1122   ///
      long   PRDAY25                   1123-1127   ///
      long   PRDAY26                   1128-1132   ///
      long   PRDAY27                   1133-1137   ///
      long   PRDAY28                   1138-1142   ///
      long   PRDAY29                   1143-1147   ///
      long   PRDAY30                   1148-1152   ///
      str    PrimLang                  1153-1155   ///
      int    PROCTYPE                  1156-1158   ///
      int    PRVER                     1159-1161   ///
      str    PSTATE                    1162-1163   ///
      long   PSTCO                     1164-1168   ///
      long   PSTCO2                    1169-1173   ///
      byte   RACE                      1174-1175   ///
      str    RACE_X                    1176        ///
      byte   READMIT                   1177-1178   ///
      byte   SERVICELINE               1179-1180   ///
      double TOTCHG                    1181-1190   ///
      double TOTCHG_X                  1191-1205   ///
      byte   TRAN_IN                   1206-1207   ///
      byte   TRAN_OUT                  1208-1209   ///
      long   VisitLink                 1210-1218   ///
      int    YEAR                      1219-1222   ///
      str    ZIP3                      1223-1225   ///
      int    ZIPINC_QRTL               1226-1228   ///
      int    AYEAR                     1229-1232   ///
      using  "MD_SID_2015q1q3_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var ASOURCE                  "Admission source (uniform)"
label var ASOURCE_X                "Admission source (as received from source)"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
label var DaysBurnUnit             "Days in burn care unit (as received from source)"
label var DaysCCU                  "Days in coronary care unit (as received from source)"
label var DaysICU                  "Days in medical/surgical intensive care unit (as received from source)"
label var DaysNICU                 "Days in neonetal care unit (as received from source)"
label var DaysPICU                 "Days in pediatric care unit (as received from source)"
label var DaysShockUnit            "Days in shock trauma unit (as received from source"
label var DaysToEvent              "Days from 'start date' to admission"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
label var DRG32                    "DRG, version 32"
label var DRGVER                   "DRG grouper version used on discharge date"
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
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HospitalUnit             "Patient was discharged from a special unit within an acute care hospital (reported by source)"
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
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var NCHRONIC                 "Number of chronic conditions"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
label var PAYER1_X                 "Primary expected payer plan identifier (as received from source)"
label var PAYER2_X                 "Secondary expected payer plan identifier (as received from source)"
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
label var PR26                     "Procedure 26"
label var PR27                     "Procedure 27"
label var PR28                     "Procedure 28"
label var PR29                     "Procedure 29"
label var PR30                     "Procedure 30"
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
label var PRCCS26                  "CCS: procedure 26"
label var PRCCS27                  "CCS: procedure 27"
label var PRCCS28                  "CCS: procedure 28"
label var PRCCS29                  "CCS: procedure 29"
label var PRCCS30                  "CCS: procedure 30"
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
label var PRDAY26                  "Number of days from admission to PR26"
label var PRDAY27                  "Number of days from admission to PR27"
label var PRDAY28                  "Number of days from admission to PR28"
label var PRDAY29                  "Number of days from admission to PR29"
label var PRDAY30                  "Number of days from admission to PR30"
label var PrimLang                 "Primary language of patient"
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var READMIT                  "Readmission"
label var SERVICELINE              "Hospital Service Line"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var VisitLink                "Visit linkage variable"
label var YEAR                     "Calendar year"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var AYEAR                    "Admission year"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode ASOURCE                   (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
recode DaysBurnUnit              (-99 -88 -66=.)
recode DaysCCU                   (-99 -88 -66=.)
recode DaysICU                   (-99 -88 -66=.)
recode DaysNICU                  (-99 -88 -66=.)
recode DaysPICU                  (-99 -88 -66=.)
recode DaysShockUnit             (-99 -88 -66=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
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
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDC32                     (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
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
recode PRCCS21                   (-99 -88 -66=.)
recode PRCCS22                   (-99 -88 -66=.)
recode PRCCS23                   (-99 -88 -66=.)
recode PRCCS24                   (-99 -88 -66=.)
recode PRCCS25                   (-99 -88 -66=.)
recode PRCCS26                   (-99 -88 -66=.)
recode PRCCS27                   (-99 -88 -66=.)
recode PRCCS28                   (-99 -88 -66=.)
recode PRCCS29                   (-99 -88 -66=.)
recode PRCCS30                   (-99 -88 -66=.)
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
recode PRDAY26                   (-9999 -8888 -6666=.)
recode PRDAY27                   (-9999 -8888 -6666=.)
recode PRDAY28                   (-9999 -8888 -6666=.)
recode PRDAY29                   (-9999 -8888 -6666=.)
recode PRDAY30                   (-9999 -8888 -6666=.)
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode READMIT                   (-9 -8 -6 -5=.)
recode SERVICELINE               (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
recode VisitLink                 (-99999999 -88888888 -66666666=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)

save "MD_SID_2015q1q3_CORE.dta", replace
