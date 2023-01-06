/*****************************************************************************
* Creation Date: 05/06/2019   
* CO_SID_2017_CORE.Do
* This program will load the 2017 CO ASCII CORE File into Stata.
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
      str    DSHOSPID                   157- 173   ///
      int    DXVER                      174- 176   ///
      byte   FEMALE                     177- 178   ///
      byte   HCUP_ED                    179- 180   ///
      byte   HCUP_OS                    181- 182   ///
      byte   Homeless                   183- 184   ///
      str    HOSPST                     185- 186   ///
      str    I10_DX_Admitting           187- 193   ///
      str    I10_DX1                    194- 200   ///
      str    I10_DX2                    201- 207   ///
      str    I10_DX3                    208- 214   ///
      str    I10_DX4                    215- 221   ///
      str    I10_DX5                    222- 228   ///
      str    I10_DX6                    229- 235   ///
      str    I10_DX7                    236- 242   ///
      str    I10_DX8                    243- 249   ///
      str    I10_DX9                    250- 256   ///
      str    I10_DX10                   257- 263   ///
      str    I10_DX11                   264- 270   ///
      str    I10_DX12                   271- 277   ///
      str    I10_DX13                   278- 284   ///
      str    I10_DX14                   285- 291   ///
      str    I10_DX15                   292- 298   ///
      str    I10_DX16                   299- 305   ///
      str    I10_DX17                   306- 312   ///
      str    I10_DX18                   313- 319   ///
      str    I10_DX19                   320- 326   ///
      str    I10_DX20                   327- 333   ///
      str    I10_DX21                   334- 340   ///
      str    I10_DX22                   341- 347   ///
      str    I10_DX23                   348- 354   ///
      str    I10_DX24                   355- 361   ///
      str    I10_DX25                   362- 368   ///
      str    I10_DX26                   369- 375   ///
      str    I10_DX27                   376- 382   ///
      str    I10_DX28                   383- 389   ///
      str    I10_DX29                   390- 396   ///
      str    I10_DX30                   397- 403   ///
      str    I10_DX31                   404- 410   ///
      str    I10_DX32                   411- 417   ///
      str    I10_DX33                   418- 424   ///
      int    I10_NDX                    425- 427   ///
      int    I10_NPR                    428- 430   ///
      str    I10_PR1                    431- 437   ///
      str    I10_PR2                    438- 444   ///
      str    I10_PR3                    445- 451   ///
      str    I10_PR4                    452- 458   ///
      str    I10_PR5                    459- 465   ///
      str    I10_PR6                    466- 472   ///
      str    I10_PR7                    473- 479   ///
      str    I10_PR8                    480- 486   ///
      str    I10_PR9                    487- 493   ///
      str    I10_PR10                   494- 500   ///
      str    I10_PR11                   501- 507   ///
      str    I10_PR12                   508- 514   ///
      str    I10_PR13                   515- 521   ///
      str    I10_PR14                   522- 528   ///
      str    I10_PR15                   529- 535   ///
      str    I10_PR16                   536- 542   ///
      str    I10_PR17                   543- 549   ///
      str    I10_PR18                   550- 556   ///
      str    I10_PR19                   557- 563   ///
      str    I10_PR20                   564- 570   ///
      str    I10_PR21                   571- 577   ///
      str    I10_PR22                   578- 584   ///
      str    I10_PR23                   585- 591   ///
      str    I10_PR24                   592- 598   ///
      str    I10_PR25                   599- 605   ///
      str    I10_PR26                   606- 612   ///
      str    I10_PR27                   613- 619   ///
      str    I10_PR28                   620- 626   ///
      str    I10_PR29                   627- 633   ///
      str    I10_PR30                   634- 640   ///
      int    I10_PROCTYPE               641- 643   ///
      double KEY                        644- 658   ///
      long   LOS                        659- 663   ///
      long   LOS_X                      664- 669   ///
      byte   MDC                        670- 671   ///
      byte   MDC_NoPOA                  672- 673   ///
      long   MDNUM1_R                   674- 682   ///
      long   MDNUM2_R                   683- 691   ///
      byte   MEDINCSTQ                  692- 693   ///
      int    NCPT                       694- 697   ///
      str    P7EDSRC_X                  698- 699   ///
      byte   PAY1                       700- 701   ///
      str    PAY1_X                     702- 726   ///
      int    PL_CBSA                    727- 729   ///
      byte   PL_NCHS                    730- 731   ///
      byte   PL_RUCC                    732- 733   ///
      byte   PL_UIC                     734- 735   ///
      byte   PL_UR_CAT4                 736- 737   ///
      str    PointOfOrigin_X            738        ///
      str    PointOfOriginUB04          739        ///
      long   PRDAY1                     740- 744   ///
      long   PRDAY2                     745- 749   ///
      long   PRDAY3                     750- 754   ///
      long   PRDAY4                     755- 759   ///
      long   PRDAY5                     760- 764   ///
      long   PRDAY6                     765- 769   ///
      long   PRDAY7                     770- 774   ///
      long   PRDAY8                     775- 779   ///
      long   PRDAY9                     780- 784   ///
      long   PRDAY10                    785- 789   ///
      long   PRDAY11                    790- 794   ///
      long   PRDAY12                    795- 799   ///
      long   PRDAY13                    800- 804   ///
      long   PRDAY14                    805- 809   ///
      long   PRDAY15                    810- 814   ///
      long   PRDAY16                    815- 819   ///
      long   PRDAY17                    820- 824   ///
      long   PRDAY18                    825- 829   ///
      long   PRDAY19                    830- 834   ///
      long   PRDAY20                    835- 839   ///
      long   PRDAY21                    840- 844   ///
      long   PRDAY22                    845- 849   ///
      long   PRDAY23                    850- 854   ///
      long   PRDAY24                    855- 859   ///
      long   PRDAY25                    860- 864   ///
      long   PRDAY26                    865- 869   ///
      long   PRDAY27                    870- 874   ///
      long   PRDAY28                    875- 879   ///
      long   PRDAY29                    880- 884   ///
      long   PRDAY30                    885- 889   ///
      int    PRVER                      890- 892   ///
      str    PSTATE                     893- 894   ///
      long   PSTCO                      895- 899   ///
      long   PSTCO2                     900- 904   ///
      byte   RACE                       905- 906   ///
      byte   RACE_EDIT                  907- 908   ///
      str    RACE_X                     909- 923   ///
      double TOTCHG                     924- 933   ///
      double TOTCHG_X                   934- 948   ///
      byte   TRAN_IN                    949- 950   ///
      byte   TRAN_OUT                   951- 952   ///
      int    YEAR                       953- 956   ///
      str    ZIP                        957- 961   ///
      str    ZIP3                       962- 964   ///
      int    ZIPINC_QRTL                965- 967   ///
      int    AYEAR                      968- 971   ///
      byte   BMONTH                     972- 973   ///
      int    BYEAR                      974- 977   ///
      byte   PRMONTH1                   978- 979   ///
      byte   PRMONTH2                   980- 981   ///
      byte   PRMONTH3                   982- 983   ///
      byte   PRMONTH4                   984- 985   ///
      byte   PRMONTH5                   986- 987   ///
      byte   PRMONTH6                   988- 989   ///
      byte   PRMONTH7                   990- 991   ///
      byte   PRMONTH8                   992- 993   ///
      byte   PRMONTH9                   994- 995   ///
      byte   PRMONTH10                  996- 997   ///
      byte   PRMONTH11                  998- 999   ///
      byte   PRMONTH12                 1000-1001   ///
      byte   PRMONTH13                 1002-1003   ///
      byte   PRMONTH14                 1004-1005   ///
      byte   PRMONTH15                 1006-1007   ///
      byte   PRMONTH16                 1008-1009   ///
      byte   PRMONTH17                 1010-1011   ///
      byte   PRMONTH18                 1012-1013   ///
      byte   PRMONTH19                 1014-1015   ///
      byte   PRMONTH20                 1016-1017   ///
      byte   PRMONTH21                 1018-1019   ///
      byte   PRMONTH22                 1020-1021   ///
      byte   PRMONTH23                 1022-1023   ///
      byte   PRMONTH24                 1024-1025   ///
      byte   PRMONTH25                 1026-1027   ///
      byte   PRMONTH26                 1028-1029   ///
      byte   PRMONTH27                 1030-1031   ///
      byte   PRMONTH28                 1032-1033   ///
      byte   PRMONTH29                 1034-1035   ///
      byte   PRMONTH30                 1036-1037   ///
      int    PRYEAR1                   1038-1041   ///
      int    PRYEAR2                   1042-1045   ///
      int    PRYEAR3                   1046-1049   ///
      int    PRYEAR4                   1050-1053   ///
      int    PRYEAR5                   1054-1057   ///
      int    PRYEAR6                   1058-1061   ///
      int    PRYEAR7                   1062-1065   ///
      int    PRYEAR8                   1066-1069   ///
      int    PRYEAR9                   1070-1073   ///
      int    PRYEAR10                  1074-1077   ///
      int    PRYEAR11                  1078-1081   ///
      int    PRYEAR12                  1082-1085   ///
      int    PRYEAR13                  1086-1089   ///
      int    PRYEAR14                  1090-1093   ///
      int    PRYEAR15                  1094-1097   ///
      int    PRYEAR16                  1098-1101   ///
      int    PRYEAR17                  1102-1105   ///
      int    PRYEAR18                  1106-1109   ///
      int    PRYEAR19                  1110-1113   ///
      int    PRYEAR20                  1114-1117   ///
      int    PRYEAR21                  1118-1121   ///
      int    PRYEAR22                  1122-1125   ///
      int    PRYEAR23                  1126-1129   ///
      int    PRYEAR24                  1130-1133   ///
      int    PRYEAR25                  1134-1137   ///
      int    PRYEAR26                  1138-1141   ///
      int    PRYEAR27                  1142-1145   ///
      int    PRYEAR28                  1146-1149   ///
      int    PRYEAR29                  1150-1153   ///
      int    PRYEAR30                  1154-1157   ///
      using  "CO_SID_2017_CORE.ASC"

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
label var DSHOSPID                 "Data source hospital identifier"
label var DXVER                    "Diagnosis Version"
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
label var PRVER                    "Procedure Version"
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
recode DXVER                     (-99 -88 -66=.)
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
recode PRVER                     (-99 -88 -66=.)
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

save "CO_SID_2017_CORE.dta", replace
