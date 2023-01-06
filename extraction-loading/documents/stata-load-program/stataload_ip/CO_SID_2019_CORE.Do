/*****************************************************************************
* Creation Date: 04/17/2021   
* CO_SID_2019_CORE.Do
* This program will load the 2019 CO ASCII CORE File into Stata.
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
      long   DaysToEvent                137- 142   ///
      byte   DIED                       143- 144   ///
      str    DISP_X                     145- 148   ///
      byte   DISPUB04                   149- 150   ///
      byte   DISPUNIFORM                151- 152   ///
      byte   DMONTH                     153- 154   ///
      byte   DQTR                       155- 156   ///
      int    DRG                        157- 159   ///
      int    DRG_NoPOA                  160- 162   ///
      byte   DRGVER                     163- 164   ///
      byte   FEMALE                     165- 166   ///
      byte   HCUP_ED                    167- 168   ///
      byte   HCUP_OS                    169- 170   ///
      byte   Homeless                   171- 172   ///
      str    HOSPST                     173- 174   ///
      byte   I10_BIRTH                  175- 176   ///
      byte   I10_DELIVERY               177- 178   ///
      str    I10_DX_Admitting           179- 185   ///
      str    I10_DX1                    186- 192   ///
      str    I10_DX2                    193- 199   ///
      str    I10_DX3                    200- 206   ///
      str    I10_DX4                    207- 213   ///
      str    I10_DX5                    214- 220   ///
      str    I10_DX6                    221- 227   ///
      str    I10_DX7                    228- 234   ///
      str    I10_DX8                    235- 241   ///
      str    I10_DX9                    242- 248   ///
      str    I10_DX10                   249- 255   ///
      str    I10_DX11                   256- 262   ///
      str    I10_DX12                   263- 269   ///
      str    I10_DX13                   270- 276   ///
      str    I10_DX14                   277- 283   ///
      str    I10_DX15                   284- 290   ///
      str    I10_DX16                   291- 297   ///
      str    I10_DX17                   298- 304   ///
      str    I10_DX18                   305- 311   ///
      str    I10_DX19                   312- 318   ///
      str    I10_DX20                   319- 325   ///
      str    I10_DX21                   326- 332   ///
      str    I10_DX22                   333- 339   ///
      str    I10_DX23                   340- 346   ///
      str    I10_DX24                   347- 353   ///
      str    I10_DX25                   354- 360   ///
      str    I10_DX26                   361- 367   ///
      str    I10_DX27                   368- 374   ///
      str    I10_DX28                   375- 381   ///
      str    I10_DX29                   382- 388   ///
      str    I10_DX30                   389- 395   ///
      str    I10_DX31                   396- 402   ///
      str    I10_DX32                   403- 409   ///
      str    I10_DX33                   410- 416   ///
      int    I10_NDX                    417- 419   ///
      int    I10_NPR                    420- 422   ///
      byte   I10_ORPROC                 423- 424   ///
      str    I10_PR1                    425- 431   ///
      str    I10_PR2                    432- 438   ///
      str    I10_PR3                    439- 445   ///
      str    I10_PR4                    446- 452   ///
      str    I10_PR5                    453- 459   ///
      str    I10_PR6                    460- 466   ///
      str    I10_PR7                    467- 473   ///
      str    I10_PR8                    474- 480   ///
      str    I10_PR9                    481- 487   ///
      str    I10_PR10                   488- 494   ///
      str    I10_PR11                   495- 501   ///
      str    I10_PR12                   502- 508   ///
      str    I10_PR13                   509- 515   ///
      str    I10_PR14                   516- 522   ///
      str    I10_PR15                   523- 529   ///
      str    I10_PR16                   530- 536   ///
      str    I10_PR17                   537- 543   ///
      str    I10_PR18                   544- 550   ///
      str    I10_PR19                   551- 557   ///
      str    I10_PR20                   558- 564   ///
      str    I10_PR21                   565- 571   ///
      str    I10_PR22                   572- 578   ///
      str    I10_PR23                   579- 585   ///
      str    I10_PR24                   586- 592   ///
      str    I10_PR25                   593- 599   ///
      str    I10_PR26                   600- 606   ///
      str    I10_PR27                   607- 613   ///
      str    I10_PR28                   614- 620   ///
      str    I10_PR29                   621- 627   ///
      str    I10_PR30                   628- 634   ///
      int    I10_PROCTYPE               635- 637   ///
      byte   I10_SERVICELINE            638- 639   ///
      double KEY                        640- 654   ///
      long   LOS                        655- 659   ///
      long   LOS_X                      660- 665   ///
      byte   MDC                        666- 667   ///
      byte   MDC_NoPOA                  668- 669   ///
      long   MDNUM1_R                   670- 678   ///
      long   MDNUM2_R                   679- 687   ///
      byte   MEDINCSTQ                  688- 689   ///
      int    NCPT                       690- 693   ///
      str    P7EDSRC_X                  694- 695   ///
      byte   PAY1                       696- 697   ///
      str    PAY1_X                     698- 722   ///
      int    PL_CBSA                    723- 725   ///
      byte   PL_NCHS                    726- 727   ///
      byte   PL_RUCC                    728- 729   ///
      byte   PL_UIC                     730- 731   ///
      byte   PL_UR_CAT4                 732- 733   ///
      str    PointOfOrigin_X            734- 737   ///
      str    PointOfOriginUB04          738        ///
      long   PRDAY1                     739- 743   ///
      long   PRDAY2                     744- 748   ///
      long   PRDAY3                     749- 753   ///
      long   PRDAY4                     754- 758   ///
      long   PRDAY5                     759- 763   ///
      long   PRDAY6                     764- 768   ///
      long   PRDAY7                     769- 773   ///
      long   PRDAY8                     774- 778   ///
      long   PRDAY9                     779- 783   ///
      long   PRDAY10                    784- 788   ///
      long   PRDAY11                    789- 793   ///
      long   PRDAY12                    794- 798   ///
      long   PRDAY13                    799- 803   ///
      long   PRDAY14                    804- 808   ///
      long   PRDAY15                    809- 813   ///
      long   PRDAY16                    814- 818   ///
      long   PRDAY17                    819- 823   ///
      long   PRDAY18                    824- 828   ///
      long   PRDAY19                    829- 833   ///
      long   PRDAY20                    834- 838   ///
      long   PRDAY21                    839- 843   ///
      long   PRDAY22                    844- 848   ///
      long   PRDAY23                    849- 853   ///
      long   PRDAY24                    854- 858   ///
      long   PRDAY25                    859- 863   ///
      long   PRDAY26                    864- 868   ///
      long   PRDAY27                    869- 873   ///
      long   PRDAY28                    874- 878   ///
      long   PRDAY29                    879- 883   ///
      long   PRDAY30                    884- 888   ///
      str    PSTATE                     889- 890   ///
      str    PSTATE_GEO                 891- 892   ///
      long   PSTCO                      893- 897   ///
      long   PSTCO_GEO                  898- 902   ///
      byte   RACE                       903- 904   ///
      byte   RACE_EDIT                  905- 906   ///
      str    RACE_X                     907- 921   ///
      str    SUBSTATE_REGION_X          922- 924   ///
      double TOTCHG                     925- 934   ///
      double TOTCHG_X                   935- 949   ///
      byte   TRAN_IN                    950- 951   ///
      byte   TRAN_OUT                   952- 953   ///
      long   VisitLink                  954- 962   ///
      int    YEAR                       963- 966   ///
      str    ZIP                        967- 971   ///
      str    ZIP3                       972- 974   ///
      int    ZIPINC_QRTL                975- 977   ///
      long   HOSPID                     978- 982   ///
      int    AYEAR                      983- 986   ///
      byte   BMONTH                     987- 988   ///
      int    BYEAR                      989- 992   ///
      byte   PRMONTH1                   993- 994   ///
      byte   PRMONTH2                   995- 996   ///
      byte   PRMONTH3                   997- 998   ///
      byte   PRMONTH4                   999-1000   ///
      byte   PRMONTH5                  1001-1002   ///
      byte   PRMONTH6                  1003-1004   ///
      byte   PRMONTH7                  1005-1006   ///
      byte   PRMONTH8                  1007-1008   ///
      byte   PRMONTH9                  1009-1010   ///
      byte   PRMONTH10                 1011-1012   ///
      byte   PRMONTH11                 1013-1014   ///
      byte   PRMONTH12                 1015-1016   ///
      byte   PRMONTH13                 1017-1018   ///
      byte   PRMONTH14                 1019-1020   ///
      byte   PRMONTH15                 1021-1022   ///
      byte   PRMONTH16                 1023-1024   ///
      byte   PRMONTH17                 1025-1026   ///
      byte   PRMONTH18                 1027-1028   ///
      byte   PRMONTH19                 1029-1030   ///
      byte   PRMONTH20                 1031-1032   ///
      byte   PRMONTH21                 1033-1034   ///
      byte   PRMONTH22                 1035-1036   ///
      byte   PRMONTH23                 1037-1038   ///
      byte   PRMONTH24                 1039-1040   ///
      byte   PRMONTH25                 1041-1042   ///
      byte   PRMONTH26                 1043-1044   ///
      byte   PRMONTH27                 1045-1046   ///
      byte   PRMONTH28                 1047-1048   ///
      byte   PRMONTH29                 1049-1050   ///
      byte   PRMONTH30                 1051-1052   ///
      int    PRYEAR1                   1053-1056   ///
      int    PRYEAR2                   1057-1060   ///
      int    PRYEAR3                   1061-1064   ///
      int    PRYEAR4                   1065-1068   ///
      int    PRYEAR5                   1069-1072   ///
      int    PRYEAR6                   1073-1076   ///
      int    PRYEAR7                   1077-1080   ///
      int    PRYEAR8                   1081-1084   ///
      int    PRYEAR9                   1085-1088   ///
      int    PRYEAR10                  1089-1092   ///
      int    PRYEAR11                  1093-1096   ///
      int    PRYEAR12                  1097-1100   ///
      int    PRYEAR13                  1101-1104   ///
      int    PRYEAR14                  1105-1108   ///
      int    PRYEAR15                  1109-1112   ///
      int    PRYEAR16                  1113-1116   ///
      int    PRYEAR17                  1117-1120   ///
      int    PRYEAR18                  1121-1124   ///
      int    PRYEAR19                  1125-1128   ///
      int    PRYEAR20                  1129-1132   ///
      int    PRYEAR21                  1133-1136   ///
      int    PRYEAR22                  1137-1140   ///
      int    PRYEAR23                  1141-1144   ///
      int    PRYEAR24                  1145-1148   ///
      int    PRYEAR25                  1149-1152   ///
      int    PRYEAR26                  1153-1156   ///
      int    PRYEAR27                  1157-1160   ///
      int    PRYEAR28                  1161-1164   ///
      int    PRYEAR29                  1165-1168   ///
      int    PRYEAR30                  1169-1172   ///
      using  "CO_SID_2019_CORE.ASC"

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
label var DaysToEvent              "Days from 'start date' to admission"
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
label var I10_BIRTH                "ICD-10-CM Birth Indicator"
label var I10_DELIVERY             "ICD-10-CM Delivery Indicator"
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
label var I10_ORPROC               "ICD-10-PCS Major operating room procedure indicator"
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
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
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
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes (RUCC)"
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
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
label var RACE                     "Race (uniform)"
label var RACE_EDIT                "Race Edit Checks"
label var RACE_X                   "Race (as received from source)"
label var SUBSTATE_REGION_X        "Region of the Hospital within a State (as received from source)"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var VisitLink                "Visit linkage variable"
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
recode DaysToEvent               (-99999 -88888 -66666=.)
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
recode I10_BIRTH                 (-9 -8 -6 -5=.)
recode I10_DELIVERY              (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_ORPROC                (-9 -8 -6 -5=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode I10_SERVICELINE           (-9 -8 -6 -5=.)
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
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_EDIT                 (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
recode VisitLink                 (-99999999 -88888888 -66666666=.)
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

save "CO_SID_2019_CORE.dta", replace
