/*****************************************************************************
* Creation Date: 07/25/2018   
* CO_SID_2016_CORE.Do
* This program will load the 2016 CO ASCII CORE File into Stata.
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
      byte   DIED                        17-  18   ///
      str    DISP_X                      19-  20   ///
      byte   DISPUB04                    21-  22   ///
      byte   DISPUNIFORM                 23-  24   ///
      byte   DMONTH                      25-  26   ///
      byte   DQTR                        27-  28   ///
      int    DRG                         29-  31   ///
      int    DRG_NoPOA                   32-  34   ///
      byte   DRGVER                      35-  36   ///
      str    DSHOSPID                    37-  53   ///
      int    DXVER                       54-  56   ///
      byte   FEMALE                      57-  58   ///
      byte   HCUP_ED                     59-  60   ///
      byte   HCUP_OS                     61-  62   ///
      byte   Homeless                    63-  64   ///
      str    HOSPST                      65-  66   ///
      str    I10_DX1                     67-  73   ///
      str    I10_DX2                     74-  80   ///
      str    I10_DX3                     81-  87   ///
      str    I10_DX4                     88-  94   ///
      str    I10_DX5                     95- 101   ///
      str    I10_DX6                    102- 108   ///
      str    I10_DX7                    109- 115   ///
      str    I10_DX8                    116- 122   ///
      str    I10_DX9                    123- 129   ///
      str    I10_DX10                   130- 136   ///
      str    I10_DX11                   137- 143   ///
      str    I10_DX12                   144- 150   ///
      str    I10_DX13                   151- 157   ///
      str    I10_DX14                   158- 164   ///
      str    I10_DX15                   165- 171   ///
      str    I10_DX16                   172- 178   ///
      str    I10_DX17                   179- 185   ///
      str    I10_DX18                   186- 192   ///
      str    I10_DX19                   193- 199   ///
      str    I10_DX20                   200- 206   ///
      str    I10_DX21                   207- 213   ///
      str    I10_DX22                   214- 220   ///
      str    I10_DX23                   221- 227   ///
      str    I10_DX24                   228- 234   ///
      str    I10_DX25                   235- 241   ///
      str    I10_DX26                   242- 248   ///
      str    I10_DX27                   249- 255   ///
      str    I10_DX28                   256- 262   ///
      str    I10_DX29                   263- 269   ///
      str    I10_DX30                   270- 276   ///
      str    I10_DX31                   277- 283   ///
      str    I10_DX32                   284- 290   ///
      str    I10_DX33                   291- 297   ///
      str    I10_ECAUSE1                298- 304   ///
      str    I10_ECAUSE2                305- 311   ///
      str    I10_ECAUSE3                312- 318   ///
      str    I10_ECAUSE4                319- 325   ///
      str    I10_ECAUSE5                326- 332   ///
      str    I10_ECAUSE6                333- 339   ///
      str    I10_ECAUSE7                340- 346   ///
      str    I10_ECAUSE8                347- 353   ///
      str    I10_ECAUSE9                354- 360   ///
      str    I10_ECAUSE10               361- 367   ///
      str    I10_ECAUSE11               368- 374   ///
      str    I10_ECAUSE12               375- 381   ///
      str    I10_ECAUSE13               382- 388   ///
      str    I10_ECAUSE14               389- 395   ///
      int    I10_NDX                    396- 398   ///
      byte   I10_NECAUSE                399- 400   ///
      int    I10_NPR                    401- 403   ///
      str    I10_PR1                    404- 410   ///
      str    I10_PR2                    411- 417   ///
      str    I10_PR3                    418- 424   ///
      str    I10_PR4                    425- 431   ///
      str    I10_PR5                    432- 438   ///
      str    I10_PR6                    439- 445   ///
      str    I10_PR7                    446- 452   ///
      str    I10_PR8                    453- 459   ///
      str    I10_PR9                    460- 466   ///
      str    I10_PR10                   467- 473   ///
      str    I10_PR11                   474- 480   ///
      str    I10_PR12                   481- 487   ///
      str    I10_PR13                   488- 494   ///
      str    I10_PR14                   495- 501   ///
      str    I10_PR15                   502- 508   ///
      str    I10_PR16                   509- 515   ///
      str    I10_PR17                   516- 522   ///
      str    I10_PR18                   523- 529   ///
      str    I10_PR19                   530- 536   ///
      str    I10_PR20                   537- 543   ///
      str    I10_PR21                   544- 550   ///
      str    I10_PR22                   551- 557   ///
      str    I10_PR23                   558- 564   ///
      str    I10_PR24                   565- 571   ///
      str    I10_PR25                   572- 578   ///
      str    I10_PR26                   579- 585   ///
      str    I10_PR27                   586- 592   ///
      str    I10_PR28                   593- 599   ///
      str    I10_PR29                   600- 606   ///
      str    I10_PR30                   607- 613   ///
      int    I10_PROCTYPE               614- 616   ///
      double KEY                        617- 631   ///
      long   LOS                        632- 636   ///
      long   LOS_X                      637- 642   ///
      byte   MDC                        643- 644   ///
      byte   MDC_NoPOA                  645- 646   ///
      long   MDNUM1_R                   647- 655   ///
      long   MDNUM2_R                   656- 664   ///
      byte   MEDINCSTQ                  665- 666   ///
      str    P7EDSRC_X                  667- 668   ///
      byte   PAY1                       669- 670   ///
      str    PAY1_X                     671- 672   ///
      int    PL_CBSA                    673- 675   ///
      byte   PL_NCHS                    676- 677   ///
      byte   PL_RUCC                    678- 679   ///
      byte   PL_UIC                     680- 681   ///
      byte   PL_UR_CAT4                 682- 683   ///
      str    PointOfOrigin_X            684        ///
      str    PointOfOriginUB04          685        ///
      long   PRDAY1                     686- 690   ///
      long   PRDAY2                     691- 695   ///
      long   PRDAY3                     696- 700   ///
      long   PRDAY4                     701- 705   ///
      long   PRDAY5                     706- 710   ///
      long   PRDAY6                     711- 715   ///
      long   PRDAY7                     716- 720   ///
      long   PRDAY8                     721- 725   ///
      long   PRDAY9                     726- 730   ///
      long   PRDAY10                    731- 735   ///
      long   PRDAY11                    736- 740   ///
      long   PRDAY12                    741- 745   ///
      long   PRDAY13                    746- 750   ///
      long   PRDAY14                    751- 755   ///
      long   PRDAY15                    756- 760   ///
      long   PRDAY16                    761- 765   ///
      long   PRDAY17                    766- 770   ///
      long   PRDAY18                    771- 775   ///
      long   PRDAY19                    776- 780   ///
      long   PRDAY20                    781- 785   ///
      long   PRDAY21                    786- 790   ///
      long   PRDAY22                    791- 795   ///
      long   PRDAY23                    796- 800   ///
      long   PRDAY24                    801- 805   ///
      long   PRDAY25                    806- 810   ///
      long   PRDAY26                    811- 815   ///
      long   PRDAY27                    816- 820   ///
      long   PRDAY28                    821- 825   ///
      long   PRDAY29                    826- 830   ///
      long   PRDAY30                    831- 835   ///
      int    PRVER                      836- 838   ///
      str    PSTATE                     839- 840   ///
      long   PSTCO                      841- 845   ///
      long   PSTCO2                     846- 850   ///
      byte   RACE                       851- 852   ///
      str    RACE_X                     853        ///
      double TOTCHG                     854- 863   ///
      double TOTCHG_X                   864- 878   ///
      byte   TRAN_IN                    879- 880   ///
      byte   TRAN_OUT                   881- 882   ///
      int    YEAR                       883- 886   ///
      str    ZIP                        887- 891   ///
      str    ZIP3                       892- 894   ///
      int    ZIPINC_QRTL                895- 897   ///
      int    AYEAR                      898- 901   ///
      byte   BMONTH                     902- 903   ///
      int    BYEAR                      904- 907   ///
      byte   PRMONTH1                   908- 909   ///
      byte   PRMONTH2                   910- 911   ///
      byte   PRMONTH3                   912- 913   ///
      byte   PRMONTH4                   914- 915   ///
      byte   PRMONTH5                   916- 917   ///
      byte   PRMONTH6                   918- 919   ///
      byte   PRMONTH7                   920- 921   ///
      byte   PRMONTH8                   922- 923   ///
      byte   PRMONTH9                   924- 925   ///
      byte   PRMONTH10                  926- 927   ///
      byte   PRMONTH11                  928- 929   ///
      byte   PRMONTH12                  930- 931   ///
      byte   PRMONTH13                  932- 933   ///
      byte   PRMONTH14                  934- 935   ///
      byte   PRMONTH15                  936- 937   ///
      byte   PRMONTH16                  938- 939   ///
      byte   PRMONTH17                  940- 941   ///
      byte   PRMONTH18                  942- 943   ///
      byte   PRMONTH19                  944- 945   ///
      byte   PRMONTH20                  946- 947   ///
      byte   PRMONTH21                  948- 949   ///
      byte   PRMONTH22                  950- 951   ///
      byte   PRMONTH23                  952- 953   ///
      byte   PRMONTH24                  954- 955   ///
      byte   PRMONTH25                  956- 957   ///
      byte   PRMONTH26                  958- 959   ///
      byte   PRMONTH27                  960- 961   ///
      byte   PRMONTH28                  962- 963   ///
      byte   PRMONTH29                  964- 965   ///
      byte   PRMONTH30                  966- 967   ///
      int    PRYEAR1                    968- 971   ///
      int    PRYEAR2                    972- 975   ///
      int    PRYEAR3                    976- 979   ///
      int    PRYEAR4                    980- 983   ///
      int    PRYEAR5                    984- 987   ///
      int    PRYEAR6                    988- 991   ///
      int    PRYEAR7                    992- 995   ///
      int    PRYEAR8                    996- 999   ///
      int    PRYEAR9                   1000-1003   ///
      int    PRYEAR10                  1004-1007   ///
      int    PRYEAR11                  1008-1011   ///
      int    PRYEAR12                  1012-1015   ///
      int    PRYEAR13                  1016-1019   ///
      int    PRYEAR14                  1020-1023   ///
      int    PRYEAR15                  1024-1027   ///
      int    PRYEAR16                  1028-1031   ///
      int    PRYEAR17                  1032-1035   ///
      int    PRYEAR18                  1036-1039   ///
      int    PRYEAR19                  1040-1043   ///
      int    PRYEAR20                  1044-1047   ///
      int    PRYEAR21                  1048-1051   ///
      int    PRYEAR22                  1052-1055   ///
      int    PRYEAR23                  1056-1059   ///
      int    PRYEAR24                  1060-1063   ///
      int    PRYEAR25                  1064-1067   ///
      int    PRYEAR26                  1068-1071   ///
      int    PRYEAR27                  1072-1075   ///
      int    PRYEAR28                  1076-1079   ///
      int    PRYEAR29                  1080-1083   ///
      int    PRYEAR30                  1084-1087   ///
      using  "CO_SID_2016_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
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
label var DSHOSPID                 "Data source hospital identifier"
label var DXVER                    "Diagnosis Version"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var Homeless                 "Indicator that patient is homeless"
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
label var I10_ECAUSE1              "ICD-10-CM External cause 1"
label var I10_ECAUSE2              "ICD-10-CM External cause 2"
label var I10_ECAUSE3              "ICD-10-CM External cause 3"
label var I10_ECAUSE4              "ICD-10-CM External cause 4"
label var I10_ECAUSE5              "ICD-10-CM External cause 5"
label var I10_ECAUSE6              "ICD-10-CM External cause 6"
label var I10_ECAUSE7              "ICD-10-CM External cause 7"
label var I10_ECAUSE8              "ICD-10-CM External cause 8"
label var I10_ECAUSE9              "ICD-10-CM External cause 9"
label var I10_ECAUSE10             "ICD-10-CM External cause 10"
label var I10_ECAUSE11             "ICD-10-CM External cause 11"
label var I10_ECAUSE12             "ICD-10-CM External cause 12"
label var I10_ECAUSE13             "ICD-10-CM External cause 13"
label var I10_ECAUSE14             "ICD-10-CM External cause 14"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
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
recode I10_NECAUSE               (-9 -8 -6 -5=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
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

save "CO_SID_2016_CORE.dta", replace
