/*****************************************************************************
* Creation Date: 09/07/2018   
* HI_SID_2016_CORE.Do
* This program will load the 2016 HI ASCII CORE File into Stata.
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
      str    DISP_X                      19-  20   ///
      byte   DISPUB04                    21-  22   ///
      byte   DISPUNIFORM                 23-  24   ///
      byte   DMONTH                      25-  26   ///
      byte   DQTR                        27-  28   ///
      int    DRG                         29-  31   ///
      int    DRG_NoPOA                   32-  34   ///
      byte   DRGVER                      35-  36   ///
      str    DXPOA1                      37        ///
      str    DXPOA2                      38        ///
      str    DXPOA3                      39        ///
      str    DXPOA4                      40        ///
      str    DXPOA5                      41        ///
      str    DXPOA6                      42        ///
      str    DXPOA7                      43        ///
      str    DXPOA8                      44        ///
      str    DXPOA9                      45        ///
      str    DXPOA10                     46        ///
      str    DXPOA11                     47        ///
      str    DXPOA12                     48        ///
      str    DXPOA13                     49        ///
      str    DXPOA14                     50        ///
      str    DXPOA15                     51        ///
      str    DXPOA16                     52        ///
      str    DXPOA17                     53        ///
      str    DXPOA18                     54        ///
      str    DXPOA19                     55        ///
      str    DXPOA20                     56        ///
      str    DXPOA21                     57        ///
      str    DXPOA22                     58        ///
      str    DXPOA23                     59        ///
      str    DXPOA24                     60        ///
      str    DXPOA25                     61        ///
      str    DXPOA26                     62        ///
      str    DXPOA27                     63        ///
      str    DXPOA28                     64        ///
      str    DXPOA29                     65        ///
      str    DXPOA30                     66        ///
      str    DXPOA31                     67        ///
      str    DXPOA32                     68        ///
      str    DXPOA33                     69        ///
      str    DXPOA34                     70        ///
      str    DXPOA35                     71        ///
      str    DXPOA36                     72        ///
      str    DXPOA37                     73        ///
      str    DXPOA38                     74        ///
      int    DXVER                       75-  77   ///
      str    E_POA1                      78        ///
      str    E_POA2                      79        ///
      str    E_POA3                      80        ///
      str    E_POA4                      81        ///
      str    E_POA5                      82        ///
      str    E_POA6                      83        ///
      str    E_POA7                      84        ///
      byte   FEMALE                      85-  86   ///
      byte   HCUP_ED                     87-  88   ///
      byte   HCUP_OS                     89-  90   ///
      str    HOSPST                      91-  92   ///
      str    I10_DX1                     93-  99   ///
      str    I10_DX2                    100- 106   ///
      str    I10_DX3                    107- 113   ///
      str    I10_DX4                    114- 120   ///
      str    I10_DX5                    121- 127   ///
      str    I10_DX6                    128- 134   ///
      str    I10_DX7                    135- 141   ///
      str    I10_DX8                    142- 148   ///
      str    I10_DX9                    149- 155   ///
      str    I10_DX10                   156- 162   ///
      str    I10_DX11                   163- 169   ///
      str    I10_DX12                   170- 176   ///
      str    I10_DX13                   177- 183   ///
      str    I10_DX14                   184- 190   ///
      str    I10_DX15                   191- 197   ///
      str    I10_DX16                   198- 204   ///
      str    I10_DX17                   205- 211   ///
      str    I10_DX18                   212- 218   ///
      str    I10_DX19                   219- 225   ///
      str    I10_DX20                   226- 232   ///
      str    I10_DX21                   233- 239   ///
      str    I10_DX22                   240- 246   ///
      str    I10_DX23                   247- 253   ///
      str    I10_DX24                   254- 260   ///
      str    I10_DX25                   261- 267   ///
      str    I10_DX26                   268- 274   ///
      str    I10_DX27                   275- 281   ///
      str    I10_DX28                   282- 288   ///
      str    I10_DX29                   289- 295   ///
      str    I10_DX30                   296- 302   ///
      str    I10_DX31                   303- 309   ///
      str    I10_DX32                   310- 316   ///
      str    I10_DX33                   317- 323   ///
      str    I10_DX34                   324- 330   ///
      str    I10_DX35                   331- 337   ///
      str    I10_DX36                   338- 344   ///
      str    I10_DX37                   345- 351   ///
      str    I10_DX38                   352- 358   ///
      str    I10_ECAUSE1                359- 365   ///
      str    I10_ECAUSE2                366- 372   ///
      str    I10_ECAUSE3                373- 379   ///
      str    I10_ECAUSE4                380- 386   ///
      str    I10_ECAUSE5                387- 393   ///
      str    I10_ECAUSE6                394- 400   ///
      str    I10_ECAUSE7                401- 407   ///
      int    I10_NDX                    408- 410   ///
      byte   I10_NECAUSE                411- 412   ///
      int    I10_NPR                    413- 415   ///
      str    I10_PR1                    416- 422   ///
      str    I10_PR2                    423- 429   ///
      str    I10_PR3                    430- 436   ///
      str    I10_PR4                    437- 443   ///
      str    I10_PR5                    444- 450   ///
      str    I10_PR6                    451- 457   ///
      str    I10_PR7                    458- 464   ///
      str    I10_PR8                    465- 471   ///
      str    I10_PR9                    472- 478   ///
      str    I10_PR10                   479- 485   ///
      str    I10_PR11                   486- 492   ///
      str    I10_PR12                   493- 499   ///
      str    I10_PR13                   500- 506   ///
      str    I10_PR14                   507- 513   ///
      str    I10_PR15                   514- 520   ///
      str    I10_PR16                   521- 527   ///
      str    I10_PR17                   528- 534   ///
      str    I10_PR18                   535- 541   ///
      str    I10_PR19                   542- 548   ///
      str    I10_PR20                   549- 555   ///
      str    I10_PR21                   556- 562   ///
      str    I10_PR22                   563- 569   ///
      str    I10_PR23                   570- 576   ///
      str    I10_PR24                   577- 583   ///
      str    I10_PR25                   584- 590   ///
      str    I10_PR26                   591- 597   ///
      str    I10_PR27                   598- 604   ///
      str    I10_PR28                   605- 611   ///
      str    I10_PR29                   612- 618   ///
      str    I10_PR30                   619- 625   ///
      str    I10_PR31                   626- 632   ///
      str    I10_PR32                   633- 639   ///
      str    I10_PR33                   640- 646   ///
      str    I10_PR34                   647- 653   ///
      str    I10_PR35                   654- 660   ///
      int    I10_PROCTYPE               661- 663   ///
      double KEY                        664- 678   ///
      long   LOS                        679- 683   ///
      long   LOS_X                      684- 689   ///
      byte   MDC                        690- 691   ///
      byte   MDC_NoPOA                  692- 693   ///
      byte   MEDINCSTQ                  694- 695   ///
      long   MOMNUM_R                   696- 704   ///
      long   MRN_R                      705- 713   ///
      double OS_TIME                    714- 724   ///
      byte   PAY1                       725- 726   ///
      str    PAY1_X                     727- 728   ///
      int    PL_CBSA                    729- 731   ///
      byte   PL_NCHS                    732- 733   ///
      byte   PL_RUCC                    734- 735   ///
      byte   PL_UIC                     736- 737   ///
      byte   PL_UR_CAT4                 738- 739   ///
      byte   POA_Disch_Edit1            740- 741   ///
      byte   POA_Disch_Edit2            742- 743   ///
      byte   POA_Hosp_Edit1             744- 745   ///
      byte   POA_Hosp_Edit2             746- 747   ///
      byte   POA_Hosp_Edit3             748- 749   ///
      double POA_Hosp_Edit3_Value       750- 757   ///
      str    PointOfOrigin_X            758        ///
      str    PointOfOriginUB04          759        ///
      long   PRDAY1                     760- 764   ///
      long   PRDAY2                     765- 769   ///
      long   PRDAY3                     770- 774   ///
      long   PRDAY4                     775- 779   ///
      long   PRDAY5                     780- 784   ///
      long   PRDAY6                     785- 789   ///
      long   PRDAY7                     790- 794   ///
      long   PRDAY8                     795- 799   ///
      long   PRDAY9                     800- 804   ///
      long   PRDAY10                    805- 809   ///
      long   PRDAY11                    810- 814   ///
      long   PRDAY12                    815- 819   ///
      long   PRDAY13                    820- 824   ///
      long   PRDAY14                    825- 829   ///
      long   PRDAY15                    830- 834   ///
      long   PRDAY16                    835- 839   ///
      long   PRDAY17                    840- 844   ///
      long   PRDAY18                    845- 849   ///
      long   PRDAY19                    850- 854   ///
      long   PRDAY20                    855- 859   ///
      long   PRDAY21                    860- 864   ///
      long   PRDAY22                    865- 869   ///
      long   PRDAY23                    870- 874   ///
      long   PRDAY24                    875- 879   ///
      long   PRDAY25                    880- 884   ///
      long   PRDAY26                    885- 889   ///
      long   PRDAY27                    890- 894   ///
      long   PRDAY28                    895- 899   ///
      long   PRDAY29                    900- 904   ///
      long   PRDAY30                    905- 909   ///
      long   PRDAY31                    910- 914   ///
      long   PRDAY32                    915- 919   ///
      long   PRDAY33                    920- 924   ///
      long   PRDAY34                    925- 929   ///
      long   PRDAY35                    930- 934   ///
      str    PrimLang                   935- 937   ///
      int    PRVER                      938- 940   ///
      str    PSTATE                     941- 942   ///
      long   PSTCO2                     943- 947   ///
      byte   RACE                       948- 949   ///
      str    RACE_X                     950- 951   ///
      double TOTCHG                     952- 961   ///
      double TOTCHG_X                   962- 976   ///
      byte   TRAN_IN                    977- 978   ///
      byte   TRAN_OUT                   979- 980   ///
      int    YEAR                       981- 984   ///
      str    ZIP3                       985- 987   ///
      int    ZIPINC_QRTL                988- 990   ///
      long   HOSPID                     991- 995   ///
      int    AGEGROUP                   996- 998   ///
      int    AYEAR                      999-1002   ///
      byte   BMONTH                    1003-1004   ///
      int    BYEAR                     1005-1008   ///
      byte   PRMONTH1                  1009-1010   ///
      byte   PRMONTH2                  1011-1012   ///
      byte   PRMONTH3                  1013-1014   ///
      byte   PRMONTH4                  1015-1016   ///
      byte   PRMONTH5                  1017-1018   ///
      byte   PRMONTH6                  1019-1020   ///
      byte   PRMONTH7                  1021-1022   ///
      byte   PRMONTH8                  1023-1024   ///
      byte   PRMONTH9                  1025-1026   ///
      byte   PRMONTH10                 1027-1028   ///
      byte   PRMONTH11                 1029-1030   ///
      byte   PRMONTH12                 1031-1032   ///
      byte   PRMONTH13                 1033-1034   ///
      byte   PRMONTH14                 1035-1036   ///
      byte   PRMONTH15                 1037-1038   ///
      byte   PRMONTH16                 1039-1040   ///
      byte   PRMONTH17                 1041-1042   ///
      byte   PRMONTH18                 1043-1044   ///
      byte   PRMONTH19                 1045-1046   ///
      byte   PRMONTH20                 1047-1048   ///
      byte   PRMONTH21                 1049-1050   ///
      byte   PRMONTH22                 1051-1052   ///
      byte   PRMONTH23                 1053-1054   ///
      byte   PRMONTH24                 1055-1056   ///
      byte   PRMONTH25                 1057-1058   ///
      byte   PRMONTH26                 1059-1060   ///
      byte   PRMONTH27                 1061-1062   ///
      byte   PRMONTH28                 1063-1064   ///
      byte   PRMONTH29                 1065-1066   ///
      byte   PRMONTH30                 1067-1068   ///
      byte   PRMONTH31                 1069-1070   ///
      byte   PRMONTH32                 1071-1072   ///
      byte   PRMONTH33                 1073-1074   ///
      byte   PRMONTH34                 1075-1076   ///
      byte   PRMONTH35                 1077-1078   ///
      int    PRYEAR1                   1079-1082   ///
      int    PRYEAR2                   1083-1086   ///
      int    PRYEAR3                   1087-1090   ///
      int    PRYEAR4                   1091-1094   ///
      int    PRYEAR5                   1095-1098   ///
      int    PRYEAR6                   1099-1102   ///
      int    PRYEAR7                   1103-1106   ///
      int    PRYEAR8                   1107-1110   ///
      int    PRYEAR9                   1111-1114   ///
      int    PRYEAR10                  1115-1118   ///
      int    PRYEAR11                  1119-1122   ///
      int    PRYEAR12                  1123-1126   ///
      int    PRYEAR13                  1127-1130   ///
      int    PRYEAR14                  1131-1134   ///
      int    PRYEAR15                  1135-1138   ///
      int    PRYEAR16                  1139-1142   ///
      int    PRYEAR17                  1143-1146   ///
      int    PRYEAR18                  1147-1150   ///
      int    PRYEAR19                  1151-1154   ///
      int    PRYEAR20                  1155-1158   ///
      int    PRYEAR21                  1159-1162   ///
      int    PRYEAR22                  1163-1166   ///
      int    PRYEAR23                  1167-1170   ///
      int    PRYEAR24                  1171-1174   ///
      int    PRYEAR25                  1175-1178   ///
      int    PRYEAR26                  1179-1182   ///
      int    PRYEAR27                  1183-1186   ///
      int    PRYEAR28                  1187-1190   ///
      int    PRYEAR29                  1191-1194   ///
      int    PRYEAR30                  1195-1198   ///
      int    PRYEAR31                  1199-1202   ///
      int    PRYEAR32                  1203-1206   ///
      int    PRYEAR33                  1207-1210   ///
      int    PRYEAR34                  1211-1214   ///
      int    PRYEAR35                  1215-1218   ///
      using  "HI_SID_2016_CORE.ASC"

***  Assign labels to the data elements ***
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
label var DRGVER                   "DRG grouper version used on discharge date"
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
label var DXPOA34                  "Diagnosis 34, present on admission indicator"
label var DXPOA35                  "Diagnosis 35, present on admission indicator"
label var DXPOA36                  "Diagnosis 36, present on admission indicator"
label var DXPOA37                  "Diagnosis 37, present on admission indicator"
label var DXPOA38                  "Diagnosis 38, present on admission indicator"
label var DXVER                    "Diagnosis Version"
label var E_POA1                   "External cause 1, present on admission indicator"
label var E_POA2                   "External cause 2, present on admission indicator"
label var E_POA3                   "External cause 3, present on admission indicator"
label var E_POA4                   "External cause 4, present on admission indicator"
label var E_POA5                   "External cause 5, present on admission indicator"
label var E_POA6                   "External cause 6, present on admission indicator"
label var E_POA7                   "External cause 7, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HOSPST                   "Hospital state postal code"
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
label var I10_DX34                 "ICD-10-CM Diagnosis 34"
label var I10_DX35                 "ICD-10-CM Diagnosis 35"
label var I10_DX36                 "ICD-10-CM Diagnosis 36"
label var I10_DX37                 "ICD-10-CM Diagnosis 37"
label var I10_DX38                 "ICD-10-CM Diagnosis 38"
label var I10_ECAUSE1              "ICD-10-CM External cause 1"
label var I10_ECAUSE2              "ICD-10-CM External cause 2"
label var I10_ECAUSE3              "ICD-10-CM External cause 3"
label var I10_ECAUSE4              "ICD-10-CM External cause 4"
label var I10_ECAUSE5              "ICD-10-CM External cause 5"
label var I10_ECAUSE6              "ICD-10-CM External cause 6"
label var I10_ECAUSE7              "ICD-10-CM External cause 7"
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_NECAUSE              "ICD-10-CM Number of External cause codes on this record"
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
label var I10_PR31                 "ICD-10-PCS Procedure 31"
label var I10_PR32                 "ICD-10-PCS Procedure 32"
label var I10_PR33                 "ICD-10-PCS Procedure 33"
label var I10_PR34                 "ICD-10-PCS Procedure 34"
label var I10_PR35                 "ICD-10-PCS Procedure 35"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MOMNUM_R                 "Mother's number (re-identified)"
label var MRN_R                    "Medical record number (re-identified)"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
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
label var PRDAY31                  "Number of days from admission to I10_PR31"
label var PRDAY32                  "Number of days from admission to I10_PR32"
label var PRDAY33                  "Number of days from admission to I10_PR33"
label var PRDAY34                  "Number of days from admission to I10_PR34"
label var PRDAY35                  "Number of days from admission to I10_PR35"
label var PrimLang                 "Primary language of patient"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
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
label var PRMONTH26                "Month of procedure 26"
label var PRMONTH27                "Month of procedure 27"
label var PRMONTH28                "Month of procedure 28"
label var PRMONTH29                "Month of procedure 29"
label var PRMONTH30                "Month of procedure 30"
label var PRMONTH31                "Month of procedure 31"
label var PRMONTH32                "Month of procedure 32"
label var PRMONTH33                "Month of procedure 33"
label var PRMONTH34                "Month of procedure 34"
label var PRMONTH35                "Month of procedure 35"
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
label var PRYEAR31                 "Year of procedure 31"
label var PRYEAR32                 "Year of procedure 32"
label var PRYEAR33                 "Year of procedure 33"
label var PRYEAR34                 "Year of procedure 34"
label var PRYEAR35                 "Year of procedure 35"

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
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NECAUSE               (-9 -8 -6 -5=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MOMNUM_R                  (-99999999 -88888888 -66666666=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
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
recode PRDAY31                   (-9999 -8888 -6666=.)
recode PRDAY32                   (-9999 -8888 -6666=.)
recode PRDAY33                   (-9999 -8888 -6666=.)
recode PRDAY34                   (-9999 -8888 -6666=.)
recode PRDAY35                   (-9999 -8888 -6666=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
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
recode PRMONTH26                 (-9 -8 -6 -5=.)
recode PRMONTH27                 (-9 -8 -6 -5=.)
recode PRMONTH28                 (-9 -8 -6 -5=.)
recode PRMONTH29                 (-9 -8 -6 -5=.)
recode PRMONTH30                 (-9 -8 -6 -5=.)
recode PRMONTH31                 (-9 -8 -6 -5=.)
recode PRMONTH32                 (-9 -8 -6 -5=.)
recode PRMONTH33                 (-9 -8 -6 -5=.)
recode PRMONTH34                 (-9 -8 -6 -5=.)
recode PRMONTH35                 (-9 -8 -6 -5=.)
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
recode PRYEAR31                  (-999 -888 -666=.)
recode PRYEAR32                  (-999 -888 -666=.)
recode PRYEAR33                  (-999 -888 -666=.)
recode PRYEAR34                  (-999 -888 -666=.)
recode PRYEAR35                  (-999 -888 -666=.)

save "HI_SID_2016_CORE.dta", replace
