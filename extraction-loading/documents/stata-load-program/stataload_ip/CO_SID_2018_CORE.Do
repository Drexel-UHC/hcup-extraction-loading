/*****************************************************************************
* Creation Date: 05/05/2020   
* CO_SID_2018_CORE.Do
* This program will load the 2018 CO ASCII CORE File into Stata.
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
      int    AGEMONTH                     4-   6   ///
      byte   AMONTH                       7-   8   ///
      byte   ATYPE                        9-  10   ///
      byte   AWEEKEND                    11-  12   ///
      int    BWT                         13-  16   ///
      str    CPT1                        17-  21   ///
      str    CPT2                        22-  26   ///
      str    CPT3                        27-  31   ///
      str    CPT4                        32-  36   ///
      str    CPT5                        37-  41   ///
      str    CPT6                        42-  46   ///
      str    CPT7                        47-  51   ///
      str    CPT8                        52-  56   ///
      str    CPT9                        57-  61   ///
      str    CPT10                       62-  66   ///
      str    CPT11                       67-  71   ///
      str    CPT12                       72-  76   ///
      str    CPT13                       77-  81   ///
      str    CPT14                       82-  86   ///
      str    CPT15                       87-  91   ///
      int    CPTCCS1                     92-  94   ///
      int    CPTCCS2                     95-  97   ///
      int    CPTCCS3                     98- 100   ///
      int    CPTCCS4                    101- 103   ///
      int    CPTCCS5                    104- 106   ///
      int    CPTCCS6                    107- 109   ///
      int    CPTCCS7                    110- 112   ///
      int    CPTCCS8                    113- 115   ///
      int    CPTCCS9                    116- 118   ///
      int    CPTCCS10                   119- 121   ///
      int    CPTCCS11                   122- 124   ///
      int    CPTCCS12                   125- 127   ///
      int    CPTCCS13                   128- 130   ///
      int    CPTCCS14                   131- 133   ///
      int    CPTCCS15                   134- 136   ///
      byte   DIED                       137- 138   ///
      str    DISP_X                     139- 140   ///
      byte   DISPUB04                   141- 142   ///
      byte   DISPUNIFORM                143- 144   ///
      byte   DMONTH                     145- 146   ///
      byte   DQTR                       147- 148   ///
      int    DRG                        149- 151   ///
      int    DRG_NoPOA                  152- 154   ///
      byte   DRGVER                     155- 156   ///
      byte   FEMALE                     157- 158   ///
      byte   HCUP_ED                    159- 160   ///
      byte   HCUP_OS                    161- 162   ///
      byte   Homeless                   163- 164   ///
      str    HOSPST                     165- 166   ///
      str    I10_DX_Admitting           167- 173   ///
      str    I10_DX1                    174- 180   ///
      str    I10_DX2                    181- 187   ///
      str    I10_DX3                    188- 194   ///
      str    I10_DX4                    195- 201   ///
      str    I10_DX5                    202- 208   ///
      str    I10_DX6                    209- 215   ///
      str    I10_DX7                    216- 222   ///
      str    I10_DX8                    223- 229   ///
      str    I10_DX9                    230- 236   ///
      str    I10_DX10                   237- 243   ///
      str    I10_DX11                   244- 250   ///
      str    I10_DX12                   251- 257   ///
      str    I10_DX13                   258- 264   ///
      str    I10_DX14                   265- 271   ///
      str    I10_DX15                   272- 278   ///
      str    I10_DX16                   279- 285   ///
      str    I10_DX17                   286- 292   ///
      str    I10_DX18                   293- 299   ///
      str    I10_DX19                   300- 306   ///
      str    I10_DX20                   307- 313   ///
      str    I10_DX21                   314- 320   ///
      str    I10_DX22                   321- 327   ///
      str    I10_DX23                   328- 334   ///
      str    I10_DX24                   335- 341   ///
      str    I10_DX25                   342- 348   ///
      str    I10_DX26                   349- 355   ///
      str    I10_DX27                   356- 362   ///
      str    I10_DX28                   363- 369   ///
      str    I10_DX29                   370- 376   ///
      str    I10_DX30                   377- 383   ///
      str    I10_DX31                   384- 390   ///
      str    I10_DX32                   391- 397   ///
      str    I10_DX33                   398- 404   ///
      int    I10_NDX                    405- 407   ///
      int    I10_NPR                    408- 410   ///
      str    I10_PR1                    411- 417   ///
      str    I10_PR2                    418- 424   ///
      str    I10_PR3                    425- 431   ///
      str    I10_PR4                    432- 438   ///
      str    I10_PR5                    439- 445   ///
      str    I10_PR6                    446- 452   ///
      str    I10_PR7                    453- 459   ///
      str    I10_PR8                    460- 466   ///
      str    I10_PR9                    467- 473   ///
      str    I10_PR10                   474- 480   ///
      str    I10_PR11                   481- 487   ///
      str    I10_PR12                   488- 494   ///
      str    I10_PR13                   495- 501   ///
      str    I10_PR14                   502- 508   ///
      str    I10_PR15                   509- 515   ///
      str    I10_PR16                   516- 522   ///
      str    I10_PR17                   523- 529   ///
      str    I10_PR18                   530- 536   ///
      str    I10_PR19                   537- 543   ///
      str    I10_PR20                   544- 550   ///
      str    I10_PR21                   551- 557   ///
      str    I10_PR22                   558- 564   ///
      str    I10_PR23                   565- 571   ///
      str    I10_PR24                   572- 578   ///
      str    I10_PR25                   579- 585   ///
      str    I10_PR26                   586- 592   ///
      str    I10_PR27                   593- 599   ///
      str    I10_PR28                   600- 606   ///
      str    I10_PR29                   607- 613   ///
      str    I10_PR30                   614- 620   ///
      int    I10_PROCTYPE               621- 623   ///
      double KEY                        624- 638   ///
      long   LOS                        639- 643   ///
      long   LOS_X                      644- 649   ///
      byte   MDC                        650- 651   ///
      byte   MDC_NoPOA                  652- 653   ///
      long   MDNUM1_R                   654- 662   ///
      long   MDNUM2_R                   663- 671   ///
      byte   MEDINCSTQ                  672- 673   ///
      int    NCPT                       674- 677   ///
      str    P7EDSRC_X                  678- 679   ///
      byte   PAY1                       680- 681   ///
      str    PAY1_X                     682- 706   ///
      int    PL_CBSA                    707- 709   ///
      byte   PL_NCHS                    710- 711   ///
      byte   PL_RUCC                    712- 713   ///
      byte   PL_UIC                     714- 715   ///
      byte   PL_UR_CAT4                 716- 717   ///
      str    PointOfOrigin_X            718- 721   ///
      str    PointOfOriginUB04          722        ///
      long   PRDAY1                     723- 727   ///
      long   PRDAY2                     728- 732   ///
      long   PRDAY3                     733- 737   ///
      long   PRDAY4                     738- 742   ///
      long   PRDAY5                     743- 747   ///
      long   PRDAY6                     748- 752   ///
      long   PRDAY7                     753- 757   ///
      long   PRDAY8                     758- 762   ///
      long   PRDAY9                     763- 767   ///
      long   PRDAY10                    768- 772   ///
      long   PRDAY11                    773- 777   ///
      long   PRDAY12                    778- 782   ///
      long   PRDAY13                    783- 787   ///
      long   PRDAY14                    788- 792   ///
      long   PRDAY15                    793- 797   ///
      long   PRDAY16                    798- 802   ///
      long   PRDAY17                    803- 807   ///
      long   PRDAY18                    808- 812   ///
      long   PRDAY19                    813- 817   ///
      long   PRDAY20                    818- 822   ///
      long   PRDAY21                    823- 827   ///
      long   PRDAY22                    828- 832   ///
      long   PRDAY23                    833- 837   ///
      long   PRDAY24                    838- 842   ///
      long   PRDAY25                    843- 847   ///
      long   PRDAY26                    848- 852   ///
      long   PRDAY27                    853- 857   ///
      long   PRDAY28                    858- 862   ///
      long   PRDAY29                    863- 867   ///
      long   PRDAY30                    868- 872   ///
      str    PSTATE                     873- 874   ///
      long   PSTCO                      875- 879   ///
      long   PSTCO2                     880- 884   ///
      byte   RACE                       885- 886   ///
      byte   RACE_EDIT                  887- 888   ///
      str    RACE_X                     889- 903   ///
      double TOTCHG                     904- 913   ///
      double TOTCHG_X                   914- 928   ///
      byte   TRAN_IN                    929- 930   ///
      byte   TRAN_OUT                   931- 932   ///
      int    YEAR                       933- 936   ///
      str    ZIP                        937- 941   ///
      str    ZIP3                       942- 944   ///
      int    ZIPINC_QRTL                945- 947   ///
      str    SUBSTATE_REGION_X          948- 950   ///
      long   HOSPID                     951- 955   ///
      int    AYEAR                      956- 959   ///
      byte   BMONTH                     960- 961   ///
      int    BYEAR                      962- 965   ///
      byte   PRMONTH1                   966- 967   ///
      byte   PRMONTH2                   968- 969   ///
      byte   PRMONTH3                   970- 971   ///
      byte   PRMONTH4                   972- 973   ///
      byte   PRMONTH5                   974- 975   ///
      byte   PRMONTH6                   976- 977   ///
      byte   PRMONTH7                   978- 979   ///
      byte   PRMONTH8                   980- 981   ///
      byte   PRMONTH9                   982- 983   ///
      byte   PRMONTH10                  984- 985   ///
      byte   PRMONTH11                  986- 987   ///
      byte   PRMONTH12                  988- 989   ///
      byte   PRMONTH13                  990- 991   ///
      byte   PRMONTH14                  992- 993   ///
      byte   PRMONTH15                  994- 995   ///
      byte   PRMONTH16                  996- 997   ///
      byte   PRMONTH17                  998- 999   ///
      byte   PRMONTH18                 1000-1001   ///
      byte   PRMONTH19                 1002-1003   ///
      byte   PRMONTH20                 1004-1005   ///
      byte   PRMONTH21                 1006-1007   ///
      byte   PRMONTH22                 1008-1009   ///
      byte   PRMONTH23                 1010-1011   ///
      byte   PRMONTH24                 1012-1013   ///
      byte   PRMONTH25                 1014-1015   ///
      byte   PRMONTH26                 1016-1017   ///
      byte   PRMONTH27                 1018-1019   ///
      byte   PRMONTH28                 1020-1021   ///
      byte   PRMONTH29                 1022-1023   ///
      byte   PRMONTH30                 1024-1025   ///
      int    PRYEAR1                   1026-1029   ///
      int    PRYEAR2                   1030-1033   ///
      int    PRYEAR3                   1034-1037   ///
      int    PRYEAR4                   1038-1041   ///
      int    PRYEAR5                   1042-1045   ///
      int    PRYEAR6                   1046-1049   ///
      int    PRYEAR7                   1050-1053   ///
      int    PRYEAR8                   1054-1057   ///
      int    PRYEAR9                   1058-1061   ///
      int    PRYEAR10                  1062-1065   ///
      int    PRYEAR11                  1066-1069   ///
      int    PRYEAR12                  1070-1073   ///
      int    PRYEAR13                  1074-1077   ///
      int    PRYEAR14                  1078-1081   ///
      int    PRYEAR15                  1082-1085   ///
      int    PRYEAR16                  1086-1089   ///
      int    PRYEAR17                  1090-1093   ///
      int    PRYEAR18                  1094-1097   ///
      int    PRYEAR19                  1098-1101   ///
      int    PRYEAR20                  1102-1105   ///
      int    PRYEAR21                  1106-1109   ///
      int    PRYEAR22                  1110-1113   ///
      int    PRYEAR23                  1114-1117   ///
      int    PRYEAR24                  1118-1121   ///
      int    PRYEAR25                  1122-1125   ///
      int    PRYEAR26                  1126-1129   ///
      int    PRYEAR27                  1130-1133   ///
      int    PRYEAR28                  1134-1137   ///
      int    PRYEAR29                  1138-1141   ///
      int    PRYEAR30                  1142-1145   ///
      using  "CO_SID_2018_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
label var CPT1                     "CPT/HCPCS procedure code 1"
label var CPT2                     "CPT/HCPCS procedure code 2"
label var CPT3                     "CPT/HCPCS procedure code 3"
label var CPT4                     "CPT/HCPCS procedure code 4"
label var CPT5                     "CPT/HCPCS procedure code 5"
label var CPT6                     "CPT/HCPCS procedure code 6"
label var CPT7                     "CPT/HCPCS procedure code 7"
label var CPT8                     "CPT/HCPCS procedure code 8"
label var CPT9                     "CPT/HCPCS procedure code 9"
label var CPT10                    "CPT/HCPCS procedure code 10"
label var CPT11                    "CPT/HCPCS procedure code 11"
label var CPT12                    "CPT/HCPCS procedure code 12"
label var CPT13                    "CPT/HCPCS procedure code 13"
label var CPT14                    "CPT/HCPCS procedure code 14"
label var CPT15                    "CPT/HCPCS procedure code 15"
label var CPTCCS1                  "CCS: CPT 1"
label var CPTCCS2                  "CCS: CPT 2"
label var CPTCCS3                  "CCS: CPT 3"
label var CPTCCS4                  "CCS: CPT 4"
label var CPTCCS5                  "CCS: CPT 5"
label var CPTCCS6                  "CCS: CPT 6"
label var CPTCCS7                  "CCS: CPT 7"
label var CPTCCS8                  "CCS: CPT 8"
label var CPTCCS9                  "CCS: CPT 9"
label var CPTCCS10                 "CCS: CPT 10"
label var CPTCCS11                 "CCS: CPT 11"
label var CPTCCS12                 "CCS: CPT 12"
label var CPTCCS13                 "CCS: CPT 13"
label var CPTCCS14                 "CCS: CPT 14"
label var CPTCCS15                 "CCS: CPT 15"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
label var DRGVER                   "DRG grouper version used on discharge date"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var Homeless                 "Indicator that patient is homeless"
label var HOSPST                   "Hospital state postal code"
label var I10_DX_Admitting         "ICD-10-CM Admitting Diagnosis Code"
label var I10_DX1                  "ICD-10-CM Diagnosis 1"
label var I10_DX2                  "ICD-10-CM Diagnosis 2"
label var I10_DX3                  "ICD-10-CM Diagnosis 3"
label var I10_DX4                  "ICD-10-CM Diagnosis 4"
label var I10_DX5                  "ICD-10-CM Diagnosis 5"
label var I10_DX6                  "ICD-10-CM Diagnosis 6"
label var I10_DX7                  "ICD-10-CM Diagnosis 7"
label var I10_DX8                  "ICD-10-CM Diagnosis 8"
label var I10_DX9                  "ICD-10-CM Diagnosis 9"
label var I10_DX10                 "ICD-10-CM Diagnosis 10"
label var I10_DX11                 "ICD-10-CM Diagnosis 11"
label var I10_DX12                 "ICD-10-CM Diagnosis 12"
label var I10_DX13                 "ICD-10-CM Diagnosis 13"
label var I10_DX14                 "ICD-10-CM Diagnosis 14"
label var I10_DX15                 "ICD-10-CM Diagnosis 15"
label var I10_DX16                 "ICD-10-CM Diagnosis 16"
label var I10_DX17                 "ICD-10-CM Diagnosis 17"
label var I10_DX18                 "ICD-10-CM Diagnosis 18"
label var I10_DX19                 "ICD-10-CM Diagnosis 19"
label var I10_DX20                 "ICD-10-CM Diagnosis 20"
label var I10_DX21                 "ICD-10-CM Diagnosis 21"
label var I10_DX22                 "ICD-10-CM Diagnosis 22"
label var I10_DX23                 "ICD-10-CM Diagnosis 23"
label var I10_DX24                 "ICD-10-CM Diagnosis 24"
label var I10_DX25                 "ICD-10-CM Diagnosis 25"
label var I10_DX26                 "ICD-10-CM Diagnosis 26"
label var I10_DX27                 "ICD-10-CM Diagnosis 27"
label var I10_DX28                 "ICD-10-CM Diagnosis 28"
label var I10_DX29                 "ICD-10-CM Diagnosis 29"
label var I10_DX30                 "ICD-10-CM Diagnosis 30"
label var I10_DX31                 "ICD-10-CM Diagnosis 31"
label var I10_DX32                 "ICD-10-CM Diagnosis 32"
label var I10_DX33                 "ICD-10-CM Diagnosis 33"
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_NPR                  "ICD-10-PCS Number of procedures on this record"
label var I10_PR1                  "ICD-10-PCS Procedure 1"
label var I10_PR2                  "ICD-10-PCS Procedure 2"
label var I10_PR3                  "ICD-10-PCS Procedure 3"
label var I10_PR4                  "ICD-10-PCS Procedure 4"
label var I10_PR5                  "ICD-10-PCS Procedure 5"
label var I10_PR6                  "ICD-10-PCS Procedure 6"
label var I10_PR7                  "ICD-10-PCS Procedure 7"
label var I10_PR8                  "ICD-10-PCS Procedure 8"
label var I10_PR9                  "ICD-10-PCS Procedure 9"
label var I10_PR10                 "ICD-10-PCS Procedure 10"
label var I10_PR11                 "ICD-10-PCS Procedure 11"
label var I10_PR12                 "ICD-10-PCS Procedure 12"
label var I10_PR13                 "ICD-10-PCS Procedure 13"
label var I10_PR14                 "ICD-10-PCS Procedure 14"
label var I10_PR15                 "ICD-10-PCS Procedure 15"
label var I10_PR16                 "ICD-10-PCS Procedure 16"
label var I10_PR17                 "ICD-10-PCS Procedure 17"
label var I10_PR18                 "ICD-10-PCS Procedure 18"
label var I10_PR19                 "ICD-10-PCS Procedure 19"
label var I10_PR20                 "ICD-10-PCS Procedure 20"
label var I10_PR21                 "ICD-10-PCS Procedure 21"
label var I10_PR22                 "ICD-10-PCS Procedure 22"
label var I10_PR23                 "ICD-10-PCS Procedure 23"
label var I10_PR24                 "ICD-10-PCS Procedure 24"
label var I10_PR25                 "ICD-10-PCS Procedure 25"
label var I10_PR26                 "ICD-10-PCS Procedure 26"
label var I10_PR27                 "ICD-10-PCS Procedure 27"
label var I10_PR28                 "ICD-10-PCS Procedure 28"
label var I10_PR29                 "ICD-10-PCS Procedure 29"
label var I10_PR30                 "ICD-10-PCS Procedure 30"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes(RUCC)"
label var PL_UIC                   "Patient location: Urban Influence Codes"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PRDAY1                   "Number of days from admission to I10_PR1"
label var PRDAY2                   "Number of days from admission to I10_PR2"
label var PRDAY3                   "Number of days from admission to I10_PR3"
label var PRDAY4                   "Number of days from admission to I10_PR4"
label var PRDAY5                   "Number of days from admission to I10_PR5"
label var PRDAY6                   "Number of days from admission to I10_PR6"
label var PRDAY7                   "Number of days from admission to I10_PR7"
label var PRDAY8                   "Number of days from admission to I10_PR8"
label var PRDAY9                   "Number of days from admission to I10_PR9"
label var PRDAY10                  "Number of days from admission to I10_PR10"
label var PRDAY11                  "Number of days from admission to I10_PR11"
label var PRDAY12                  "Number of days from admission to I10_PR12"
label var PRDAY13                  "Number of days from admission to I10_PR13"
label var PRDAY14                  "Number of days from admission to I10_PR14"
label var PRDAY15                  "Number of days from admission to I10_PR15"
label var PRDAY16                  "Number of days from admission to I10_PR16"
label var PRDAY17                  "Number of days from admission to I10_PR17"
label var PRDAY18                  "Number of days from admission to I10_PR18"
label var PRDAY19                  "Number of days from admission to I10_PR19"
label var PRDAY20                  "Number of days from admission to I10_PR20"
label var PRDAY21                  "Number of days from admission to I10_PR21"
label var PRDAY22                  "Number of days from admission to I10_PR22"
label var PRDAY23                  "Number of days from admission to I10_PR23"
label var PRDAY24                  "Number of days from admission to I10_PR24"
label var PRDAY25                  "Number of days from admission to I10_PR25"
label var PRDAY26                  "Number of days from admission to I10_PR26"
label var PRDAY27                  "Number of days from admission to I10_PR27"
label var PRDAY28                  "Number of days from admission to I10_PR28"
label var PRDAY29                  "Number of days from admission to I10_PR29"
label var PRDAY30                  "Number of days from admission to I10_PR30"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_EDIT                "Race Edit Checks"
label var RACE_X                   "Race (as received from source)"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var SUBSTATE_REGION_X        "Region of the Hospital within a State (as received from source)"
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
label var PRMONTH26                "Month of procedure 26"
label var PRMONTH27                "Month of procedure 27"
label var PRMONTH28                "Month of procedure 28"
label var PRMONTH29                "Month of procedure 29"
label var PRMONTH30                "Month of procedure 30"
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
label var PRYEAR26                 "Year of procedure 26"
label var PRYEAR27                 "Year of procedure 27"
label var PRYEAR28                 "Year of procedure 28"
label var PRYEAR29                 "Year of procedure 29"
label var PRYEAR30                 "Year of procedure 30"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
recode CPTCCS1                   (-99 -88 -66=.)
recode CPTCCS2                   (-99 -88 -66=.)
recode CPTCCS3                   (-99 -88 -66=.)
recode CPTCCS4                   (-99 -88 -66=.)
recode CPTCCS5                   (-99 -88 -66=.)
recode CPTCCS6                   (-99 -88 -66=.)
recode CPTCCS7                   (-99 -88 -66=.)
recode CPTCCS8                   (-99 -88 -66=.)
recode CPTCCS9                   (-99 -88 -66=.)
recode CPTCCS10                  (-99 -88 -66=.)
recode CPTCCS11                  (-99 -88 -66=.)
recode CPTCCS12                  (-99 -88 -66=.)
recode CPTCCS13                  (-99 -88 -66=.)
recode CPTCCS14                  (-99 -88 -66=.)
recode CPTCCS15                  (-99 -88 -66=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCPT                      (-999 -888 -666=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
recode PL_RUCC                   (-9 -8 -6 -5=.)
recode PL_UIC                    (-9 -8 -6 -5=.)
recode PL_UR_CAT4                (-9 -8 -6 -5=.)
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
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_EDIT                 (-9 -8 -6 -5=.)
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
recode PRMONTH26                 (-9 -8 -6 -5=.)
recode PRMONTH27                 (-9 -8 -6 -5=.)
recode PRMONTH28                 (-9 -8 -6 -5=.)
recode PRMONTH29                 (-9 -8 -6 -5=.)
recode PRMONTH30                 (-9 -8 -6 -5=.)
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
recode PRYEAR26                  (-999 -888 -666=.)
recode PRYEAR27                  (-999 -888 -666=.)
recode PRYEAR28                  (-999 -888 -666=.)
recode PRYEAR29                  (-999 -888 -666=.)
recode PRYEAR30                  (-999 -888 -666=.)

save "CO_SID_2018_CORE.dta", replace
