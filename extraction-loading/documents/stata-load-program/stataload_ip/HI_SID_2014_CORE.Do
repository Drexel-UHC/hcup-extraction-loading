/*****************************************************************************
* Creation Date: 02/02/2017   
* Modify Date:   10/19/2017 - matches data created on date above.
* HI_SID_2014_CORE.Do
* This program will load the 2014 HI ASCII CORE File into Stata.
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
      int    AGEDAY                       1-   3   ///
      int    AGEMONTH                     4-   6   ///
      byte   AMONTH                       7-   8   ///
      byte   ATYPE                        9-  10   ///
      byte   AWEEKEND                    11-  12   ///
      int    BWT                         13-  16   ///
      byte   DIED                        17-  18   ///
      byte   DISPUB04                    19-  20   ///
      byte   DISPUNIFORM                 21-  22   ///
      str    DISP_X                      23-  24   ///
      byte   DMONTH                      25-  26   ///
      byte   DQTR                        27-  28   ///
      int    DRG                         29-  31   ///
      int    DRG24                       32-  34   ///
      byte   DRGVER                      35-  36   ///
      int    DRG_NoPOA                   37-  39   ///
      str    DX1                         40-  46   ///
      str    DX2                         47-  53   ///
      str    DX3                         54-  60   ///
      str    DX4                         61-  67   ///
      str    DX5                         68-  74   ///
      str    DX6                         75-  81   ///
      str    DX7                         82-  88   ///
      str    DX8                         89-  95   ///
      str    DX9                         96- 102   ///
      str    DX10                       103- 109   ///
      str    DX11                       110- 116   ///
      str    DX12                       117- 123   ///
      str    DX13                       124- 130   ///
      str    DX14                       131- 137   ///
      str    DX15                       138- 144   ///
      str    DX16                       145- 151   ///
      str    DX17                       152- 158   ///
      str    DX18                       159- 165   ///
      str    DX19                       166- 172   ///
      str    DX20                       173- 179   ///
      str    DX21                       180- 186   ///
      str    DX22                       187- 193   ///
      str    DX23                       194- 200   ///
      str    DX24                       201- 207   ///
      str    DX25                       208- 214   ///
      int    DXCCS1                     215- 218   ///
      int    DXCCS2                     219- 222   ///
      int    DXCCS3                     223- 226   ///
      int    DXCCS4                     227- 230   ///
      int    DXCCS5                     231- 234   ///
      int    DXCCS6                     235- 238   ///
      int    DXCCS7                     239- 242   ///
      int    DXCCS8                     243- 246   ///
      int    DXCCS9                     247- 250   ///
      int    DXCCS10                    251- 254   ///
      int    DXCCS11                    255- 258   ///
      int    DXCCS12                    259- 262   ///
      int    DXCCS13                    263- 266   ///
      int    DXCCS14                    267- 270   ///
      int    DXCCS15                    271- 274   ///
      int    DXCCS16                    275- 278   ///
      int    DXCCS17                    279- 282   ///
      int    DXCCS18                    283- 286   ///
      int    DXCCS19                    287- 290   ///
      int    DXCCS20                    291- 294   ///
      int    DXCCS21                    295- 298   ///
      int    DXCCS22                    299- 302   ///
      int    DXCCS23                    303- 306   ///
      int    DXCCS24                    307- 310   ///
      int    DXCCS25                    311- 314   ///
      str    DXPOA1                     315        ///
      str    DXPOA2                     316        ///
      str    DXPOA3                     317        ///
      str    DXPOA4                     318        ///
      str    DXPOA5                     319        ///
      str    DXPOA6                     320        ///
      str    DXPOA7                     321        ///
      str    DXPOA8                     322        ///
      str    DXPOA9                     323        ///
      str    DXPOA10                    324        ///
      str    DXPOA11                    325        ///
      str    DXPOA12                    326        ///
      str    DXPOA13                    327        ///
      str    DXPOA14                    328        ///
      str    DXPOA15                    329        ///
      str    DXPOA16                    330        ///
      str    DXPOA17                    331        ///
      str    DXPOA18                    332        ///
      str    DXPOA19                    333        ///
      str    DXPOA20                    334        ///
      str    DXPOA21                    335        ///
      str    DXPOA22                    336        ///
      str    DXPOA23                    337        ///
      str    DXPOA24                    338        ///
      str    DXPOA25                    339        ///
      int    DXVER                      340- 342   ///
      str    ECODE1                     343- 349   ///
      str    ECODE2                     350- 356   ///
      str    ECODE3                     357- 363   ///
      str    ECODE4                     364- 370   ///
      str    ECODE5                     371- 377   ///
      str    ECODE6                     378- 384   ///
      str    ECODE7                     385- 391   ///
      str    ECODE8                     392- 398   ///
      int    E_CCS1                     399- 402   ///
      int    E_CCS2                     403- 406   ///
      int    E_CCS3                     407- 410   ///
      int    E_CCS4                     411- 414   ///
      int    E_CCS5                     415- 418   ///
      int    E_CCS6                     419- 422   ///
      int    E_CCS7                     423- 426   ///
      int    E_CCS8                     427- 430   ///
      str    E_POA1                     431        ///
      str    E_POA2                     432        ///
      str    E_POA3                     433        ///
      str    E_POA4                     434        ///
      str    E_POA5                     435        ///
      str    E_POA6                     436        ///
      str    E_POA7                     437        ///
      str    E_POA8                     438        ///
      byte   FEMALE                     439- 440   ///
      byte   HCUP_ED                    441- 442   ///
      byte   HCUP_OS                    443- 444   ///
      int    HOSPBRTH                   445- 447   ///
      str    HOSPST                     448- 449   ///
      double KEY                        450- 464   ///
      long   LOS                        465- 469   ///
      long   LOS_X                      470- 475   ///
      byte   MDC                        476- 477   ///
      byte   MDC24                      478- 479   ///
      byte   MDC_NoPOA                  480- 481   ///
      byte   MEDINCSTQ                  482- 483   ///
      long   MOMNUM_R                   484- 492   ///
      long   MRN_R                      493- 501   ///
      int    NCHRONIC                   502- 504   ///
      int    NDX                        505- 507   ///
      byte   NECODE                     508- 509   ///
      byte   NEOMAT                     510- 511   ///
      int    NPR                        512- 514   ///
      byte   ORPROC                     515- 516   ///
      double OS_TIME                    517- 527   ///
      byte   PAY1                       528- 529   ///
      str    PAY1_X                     530- 531   ///
      int    PL_CBSA                    532- 534   ///
      byte   PL_NCHS                    535- 536   ///
      byte   PL_RUCC                    537- 538   ///
      byte   PL_UIC                     539- 540   ///
      byte   PL_UR_CAT4                 541- 542   ///
      byte   POA_Disch_Edit1            543- 544   ///
      byte   POA_Disch_Edit2            545- 546   ///
      byte   POA_Hosp_Edit1             547- 548   ///
      byte   POA_Hosp_Edit2             549- 550   ///
      byte   POA_Hosp_Edit3             551- 552   ///
      double POA_Hosp_Edit3_Value       553- 560   ///
      str    PR1                        561- 567   ///
      str    PR2                        568- 574   ///
      str    PR3                        575- 581   ///
      str    PR4                        582- 588   ///
      str    PR5                        589- 595   ///
      str    PR6                        596- 602   ///
      str    PR7                        603- 609   ///
      str    PR8                        610- 616   ///
      str    PR9                        617- 623   ///
      str    PR10                       624- 630   ///
      str    PR11                       631- 637   ///
      str    PR12                       638- 644   ///
      str    PR13                       645- 651   ///
      str    PR14                       652- 658   ///
      str    PR15                       659- 665   ///
      str    PR16                       666- 672   ///
      str    PR17                       673- 679   ///
      str    PR18                       680- 686   ///
      str    PR19                       687- 693   ///
      str    PR20                       694- 700   ///
      str    PR21                       701- 707   ///
      str    PR22                       708- 714   ///
      str    PR23                       715- 721   ///
      str    PR24                       722- 728   ///
      str    PR25                       729- 735   ///
      int    PRCCS1                     736- 738   ///
      int    PRCCS2                     739- 741   ///
      int    PRCCS3                     742- 744   ///
      int    PRCCS4                     745- 747   ///
      int    PRCCS5                     748- 750   ///
      int    PRCCS6                     751- 753   ///
      int    PRCCS7                     754- 756   ///
      int    PRCCS8                     757- 759   ///
      int    PRCCS9                     760- 762   ///
      int    PRCCS10                    763- 765   ///
      int    PRCCS11                    766- 768   ///
      int    PRCCS12                    769- 771   ///
      int    PRCCS13                    772- 774   ///
      int    PRCCS14                    775- 777   ///
      int    PRCCS15                    778- 780   ///
      int    PRCCS16                    781- 783   ///
      int    PRCCS17                    784- 786   ///
      int    PRCCS18                    787- 789   ///
      int    PRCCS19                    790- 792   ///
      int    PRCCS20                    793- 795   ///
      int    PRCCS21                    796- 798   ///
      int    PRCCS22                    799- 801   ///
      int    PRCCS23                    802- 804   ///
      int    PRCCS24                    805- 807   ///
      int    PRCCS25                    808- 810   ///
      long   PRDAY1                     811- 815   ///
      long   PRDAY2                     816- 820   ///
      long   PRDAY3                     821- 825   ///
      long   PRDAY4                     826- 830   ///
      long   PRDAY5                     831- 835   ///
      long   PRDAY6                     836- 840   ///
      long   PRDAY7                     841- 845   ///
      long   PRDAY8                     846- 850   ///
      long   PRDAY9                     851- 855   ///
      long   PRDAY10                    856- 860   ///
      long   PRDAY11                    861- 865   ///
      long   PRDAY12                    866- 870   ///
      long   PRDAY13                    871- 875   ///
      long   PRDAY14                    876- 880   ///
      long   PRDAY15                    881- 885   ///
      long   PRDAY16                    886- 890   ///
      long   PRDAY17                    891- 895   ///
      long   PRDAY18                    896- 900   ///
      long   PRDAY19                    901- 905   ///
      long   PRDAY20                    906- 910   ///
      long   PRDAY21                    911- 915   ///
      long   PRDAY22                    916- 920   ///
      long   PRDAY23                    921- 925   ///
      long   PRDAY24                    926- 930   ///
      long   PRDAY25                    931- 935   ///
      int    PROCTYPE                   936- 938   ///
      int    PRVER                      939- 941   ///
      str    PSTATE                     942- 943   ///
      long   PSTCO2                     944- 948   ///
      str    PointOfOriginUB04          949        ///
      str    PointOfOrigin_X            950        ///
      str    PrimLang                   951- 953   ///
      byte   RACE                       954- 955   ///
      str    RACE_X                     956- 957   ///
      byte   SERVICELINE                958- 959   ///
      double TOTCHG                     960- 969   ///
      double TOTCHG_X                   970- 984   ///
      byte   TRAN_IN                    985- 986   ///
      byte   TRAN_OUT                   987- 988   ///
      int    YEAR                       989- 992   ///
      str    ZIP3                       993- 995   ///
      int    ZIPINC_QRTL                996- 998   ///
      long   HOSPID                     999-1003   ///
      int    AGEGROUP                  1004-1006   ///
      int    AYEAR                     1007-1010   ///
      byte   BMONTH                    1011-1012   ///
      int    BYEAR                     1013-1016   ///
      byte   PRMONTH1                  1017-1018   ///
      byte   PRMONTH2                  1019-1020   ///
      byte   PRMONTH3                  1021-1022   ///
      byte   PRMONTH4                  1023-1024   ///
      byte   PRMONTH5                  1025-1026   ///
      byte   PRMONTH6                  1027-1028   ///
      byte   PRMONTH7                  1029-1030   ///
      byte   PRMONTH8                  1031-1032   ///
      byte   PRMONTH9                  1033-1034   ///
      byte   PRMONTH10                 1035-1036   ///
      byte   PRMONTH11                 1037-1038   ///
      byte   PRMONTH12                 1039-1040   ///
      byte   PRMONTH13                 1041-1042   ///
      byte   PRMONTH14                 1043-1044   ///
      byte   PRMONTH15                 1045-1046   ///
      byte   PRMONTH16                 1047-1048   ///
      byte   PRMONTH17                 1049-1050   ///
      byte   PRMONTH18                 1051-1052   ///
      byte   PRMONTH19                 1053-1054   ///
      byte   PRMONTH20                 1055-1056   ///
      byte   PRMONTH21                 1057-1058   ///
      byte   PRMONTH22                 1059-1060   ///
      byte   PRMONTH23                 1061-1062   ///
      byte   PRMONTH24                 1063-1064   ///
      byte   PRMONTH25                 1065-1066   ///
      int    PRYEAR1                   1067-1070   ///
      int    PRYEAR2                   1071-1074   ///
      int    PRYEAR3                   1075-1078   ///
      int    PRYEAR4                   1079-1082   ///
      int    PRYEAR5                   1083-1086   ///
      int    PRYEAR6                   1087-1090   ///
      int    PRYEAR7                   1091-1094   ///
      int    PRYEAR8                   1095-1098   ///
      int    PRYEAR9                   1099-1102   ///
      int    PRYEAR10                  1103-1106   ///
      int    PRYEAR11                  1107-1110   ///
      int    PRYEAR12                  1111-1114   ///
      int    PRYEAR13                  1115-1118   ///
      int    PRYEAR14                  1119-1122   ///
      int    PRYEAR15                  1123-1126   ///
      int    PRYEAR16                  1127-1130   ///
      int    PRYEAR17                  1131-1134   ///
      int    PRYEAR18                  1135-1138   ///
      int    PRYEAR19                  1139-1142   ///
      int    PRYEAR20                  1143-1146   ///
      int    PRYEAR21                  1147-1150   ///
      int    PRYEAR22                  1151-1154   ///
      int    PRYEAR23                  1155-1158   ///
      int    PRYEAR24                  1159-1162   ///
      int    PRYEAR25                  1163-1166   ///
      using  "HI_SID_2014_CORE.ASC"

***  Assign labels to the data elements ***
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
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
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MOMNUM_R                 "Mother's number (re-identified)"
label var MRN_R                    "Medical record number (re-identified)"
label var NCHRONIC                 "Number of chronic conditions"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
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
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PrimLang                 "Primary language of patient"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var SERVICELINE              "Hospital Service Line"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var YEAR                     "Calendar year"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var HOSPID                   "HCUP hospital identification number"
label var AGEGROUP                 "Age Group"
label var AYEAR                    "Admission year"
label var BMONTH                   "Birth month"
label var BYEAR                    "Birth year"
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
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
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
recode MDC24                     (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MOMNUM_R                  (-99999999 -88888888 -66666666=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
recode PAY1                      (-9 -8 -6 -5=.)
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
recode PSTCO2                    (-9999 -8888 -6666=.)
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
recode BMONTH                    (-9 -8 -6 -5=.)
recode BYEAR                     (-999 -888 -666=.)
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

save "HI_SID_2014_CORE.dta", replace
