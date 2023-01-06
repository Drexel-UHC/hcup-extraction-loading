/*****************************************************************************
* Creation Date: 03/24/2017   
* SD_SID_2015q1q3_CORE.Do
* This program will load the 2015 SD ASCII CORE File into Stata.
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
      byte   AMONTH                      10-  11   ///
      byte   ATYPE                       12-  13   ///
      byte   AWEEKEND                    14-  15   ///
      byte   DIED                        16-  17   ///
      str    DISP_X                      18-  21   ///
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
      str    E_POA1                     371        ///
      str    E_POA2                     372        ///
      str    E_POA3                     373        ///
      str    E_POA4                     374        ///
      str    E_POA5                     375        ///
      str    ECODE1                     376- 382   ///
      str    ECODE2                     383- 389   ///
      str    ECODE3                     390- 396   ///
      str    ECODE4                     397- 403   ///
      str    ECODE5                     404- 410   ///
      byte   FEMALE                     411- 412   ///
      byte   HCUP_ED                    413- 414   ///
      byte   HCUP_OS                    415- 416   ///
      byte   HISPANIC                   417- 418   ///
      str    HISPANIC_X                 419        ///
      int    HOSPBRTH                   420- 422   ///
      byte   HospitalUnit               423- 424   ///
      str    HOSPST                     425- 426   ///
      double KEY                        427- 441   ///
      long   LOS                        442- 446   ///
      long   LOS_X                      447- 452   ///
      byte   MDC                        453- 454   ///
      byte   MDC_NoPOA                  455- 456   ///
      byte   MDC32                      457- 458   ///
      long   MDNUM1_R                   459- 467   ///
      long   MDNUM2_R                   468- 476   ///
      byte   MEDINCSTQ                  477- 478   ///
      long   MRN_R                      479- 487   ///
      int    NCHRONIC                   488- 490   ///
      int    NDX                        491- 493   ///
      byte   NECODE                     494- 495   ///
      byte   NEOMAT                     496- 497   ///
      int    NPR                        498- 500   ///
      byte   ORPROC                     501- 502   ///
      str    P7EDSRC_X                  503- 504   ///
      byte   PAY1                       505- 506   ///
      int    PL_CBSA                    507- 509   ///
      byte   PL_NCHS                    510- 511   ///
      byte   PL_RUCC                    512- 513   ///
      byte   PL_UIC                     514- 515   ///
      byte   PL_UR_CAT4                 516- 517   ///
      byte   POA_Disch_Edit1            518- 519   ///
      byte   POA_Disch_Edit2            520- 521   ///
      byte   POA_Hosp_Edit1             522- 523   ///
      byte   POA_Hosp_Edit2             524- 525   ///
      byte   POA_Hosp_Edit3             526- 527   ///
      double POA_Hosp_Edit3_Value       528- 535   ///
      str    PointOfOrigin_X            536        ///
      str    PointOfOriginUB04          537        ///
      str    PR1                        538- 544   ///
      str    PR2                        545- 551   ///
      str    PR3                        552- 558   ///
      str    PR4                        559- 565   ///
      str    PR5                        566- 572   ///
      str    PR6                        573- 579   ///
      str    PR7                        580- 586   ///
      str    PR8                        587- 593   ///
      str    PR9                        594- 600   ///
      str    PR10                       601- 607   ///
      str    PR11                       608- 614   ///
      str    PR12                       615- 621   ///
      str    PR13                       622- 628   ///
      str    PR14                       629- 635   ///
      str    PR15                       636- 642   ///
      str    PR16                       643- 649   ///
      str    PR17                       650- 656   ///
      str    PR18                       657- 663   ///
      str    PR19                       664- 670   ///
      str    PR20                       671- 677   ///
      str    PR21                       678- 684   ///
      str    PR22                       685- 691   ///
      str    PR23                       692- 698   ///
      str    PR24                       699- 705   ///
      str    PR25                       706- 712   ///
      int    PRCCS1                     713- 715   ///
      int    PRCCS2                     716- 718   ///
      int    PRCCS3                     719- 721   ///
      int    PRCCS4                     722- 724   ///
      int    PRCCS5                     725- 727   ///
      int    PRCCS6                     728- 730   ///
      int    PRCCS7                     731- 733   ///
      int    PRCCS8                     734- 736   ///
      int    PRCCS9                     737- 739   ///
      int    PRCCS10                    740- 742   ///
      int    PRCCS11                    743- 745   ///
      int    PRCCS12                    746- 748   ///
      int    PRCCS13                    749- 751   ///
      int    PRCCS14                    752- 754   ///
      int    PRCCS15                    755- 757   ///
      int    PRCCS16                    758- 760   ///
      int    PRCCS17                    761- 763   ///
      int    PRCCS18                    764- 766   ///
      int    PRCCS19                    767- 769   ///
      int    PRCCS20                    770- 772   ///
      int    PRCCS21                    773- 775   ///
      int    PRCCS22                    776- 778   ///
      int    PRCCS23                    779- 781   ///
      int    PRCCS24                    782- 784   ///
      int    PRCCS25                    785- 787   ///
      long   PRDAY1                     788- 792   ///
      long   PRDAY2                     793- 797   ///
      long   PRDAY3                     798- 802   ///
      long   PRDAY4                     803- 807   ///
      long   PRDAY5                     808- 812   ///
      long   PRDAY6                     813- 817   ///
      long   PRDAY7                     818- 822   ///
      long   PRDAY8                     823- 827   ///
      long   PRDAY9                     828- 832   ///
      long   PRDAY10                    833- 837   ///
      long   PRDAY11                    838- 842   ///
      long   PRDAY12                    843- 847   ///
      long   PRDAY13                    848- 852   ///
      long   PRDAY14                    853- 857   ///
      long   PRDAY15                    858- 862   ///
      long   PRDAY16                    863- 867   ///
      long   PRDAY17                    868- 872   ///
      long   PRDAY18                    873- 877   ///
      long   PRDAY19                    878- 882   ///
      long   PRDAY20                    883- 887   ///
      long   PRDAY21                    888- 892   ///
      long   PRDAY22                    893- 897   ///
      long   PRDAY23                    898- 902   ///
      long   PRDAY24                    903- 907   ///
      long   PRDAY25                    908- 912   ///
      int    PROCTYPE                   913- 915   ///
      int    PRVER                      916- 918   ///
      str    PSTATE                     919- 920   ///
      long   PSTCO                      921- 925   ///
      long   PSTCO2                     926- 930   ///
      byte   RACE                       931- 932   ///
      str    RACE_X                     933        ///
      byte   SERVICELINE                934- 935   ///
      double TOTCHG                     936- 945   ///
      double TOTCHG_X                   946- 960   ///
      byte   TRAN_IN                    961- 962   ///
      byte   TRAN_OUT                   963- 964   ///
      int    YEAR                       965- 968   ///
      str    ZIP                        969- 973   ///
      str    ZIP3                       974- 976   ///
      int    ZIPINC_QRTL                977- 979   ///
      long   HOSPID                     980- 984   ///
      int    AYEAR                      985- 988   ///
      byte   BMONTH                     989- 990   ///
      int    BYEAR                      991- 994   ///
      byte   PRMONTH1                   995- 996   ///
      byte   PRMONTH2                   997- 998   ///
      byte   PRMONTH3                   999-1000   ///
      byte   PRMONTH4                  1001-1002   ///
      byte   PRMONTH5                  1003-1004   ///
      byte   PRMONTH6                  1005-1006   ///
      byte   PRMONTH7                  1007-1008   ///
      byte   PRMONTH8                  1009-1010   ///
      byte   PRMONTH9                  1011-1012   ///
      byte   PRMONTH10                 1013-1014   ///
      byte   PRMONTH11                 1015-1016   ///
      byte   PRMONTH12                 1017-1018   ///
      byte   PRMONTH13                 1019-1020   ///
      byte   PRMONTH14                 1021-1022   ///
      byte   PRMONTH15                 1023-1024   ///
      byte   PRMONTH16                 1025-1026   ///
      byte   PRMONTH17                 1027-1028   ///
      byte   PRMONTH18                 1029-1030   ///
      byte   PRMONTH19                 1031-1032   ///
      byte   PRMONTH20                 1033-1034   ///
      byte   PRMONTH21                 1035-1036   ///
      byte   PRMONTH22                 1037-1038   ///
      byte   PRMONTH23                 1039-1040   ///
      byte   PRMONTH24                 1041-1042   ///
      byte   PRMONTH25                 1043-1044   ///
      int    PRYEAR1                   1045-1048   ///
      int    PRYEAR2                   1049-1052   ///
      int    PRYEAR3                   1053-1056   ///
      int    PRYEAR4                   1057-1060   ///
      int    PRYEAR5                   1061-1064   ///
      int    PRYEAR6                   1065-1068   ///
      int    PRYEAR7                   1069-1072   ///
      int    PRYEAR8                   1073-1076   ///
      int    PRYEAR9                   1077-1080   ///
      int    PRYEAR10                  1081-1084   ///
      int    PRYEAR11                  1085-1088   ///
      int    PRYEAR12                  1089-1092   ///
      int    PRYEAR13                  1093-1096   ///
      int    PRYEAR14                  1097-1100   ///
      int    PRYEAR15                  1101-1104   ///
      int    PRYEAR16                  1105-1108   ///
      int    PRYEAR17                  1109-1112   ///
      int    PRYEAR18                  1113-1116   ///
      int    PRYEAR19                  1117-1120   ///
      int    PRYEAR20                  1121-1124   ///
      int    PRYEAR21                  1125-1128   ///
      int    PRYEAR22                  1129-1132   ///
      int    PRYEAR23                  1133-1136   ///
      int    PRYEAR24                  1137-1140   ///
      int    PRYEAR25                  1141-1144   ///
      using  "SD_SID_2015q1q3_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
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
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HospitalUnit             "Patient was discharged from a special unit within an acute care hospital (reported by source)"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
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
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
label var PAY1                     "Primary expected payer (uniform)"
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
label var ZIP                      "Patient ZIP Code"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var HOSPID                   "HCUP hospital identification number"
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
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
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
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
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

save "SD_SID_2015q1q3_CORE.dta", replace
