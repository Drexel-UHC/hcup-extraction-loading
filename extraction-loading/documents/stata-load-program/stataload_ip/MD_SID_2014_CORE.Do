/*****************************************************************************
* Creation Date: 05/17/2016   
* Modify Date:   10/19/2017 - matches data created on date above.
* MD_SID_2014_CORE.Do
* This program will load the 2014 MD ASCII CORE File into Stata.
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
      byte   DIED                        22-  23   ///
      byte   DISPUNIFORM                 24-  25   ///
      str    DISP_X                      26-  27   ///
      byte   DQTR                        28-  29   ///
      int    DRG                         30-  32   ///
      int    DRG24                       33-  35   ///
      byte   DRGVER                      36-  37   ///
      int    DRG_NoPOA                   38-  40   ///
      str    DSHOSPID                    41-  57   ///
      str    DX1                         58-  64   ///
      str    DX2                         65-  71   ///
      str    DX3                         72-  78   ///
      str    DX4                         79-  85   ///
      str    DX5                         86-  92   ///
      str    DX6                         93-  99   ///
      str    DX7                        100- 106   ///
      str    DX8                        107- 113   ///
      str    DX9                        114- 120   ///
      str    DX10                       121- 127   ///
      str    DX11                       128- 134   ///
      str    DX12                       135- 141   ///
      str    DX13                       142- 148   ///
      str    DX14                       149- 155   ///
      str    DX15                       156- 162   ///
      str    DX16                       163- 169   ///
      str    DX17                       170- 176   ///
      str    DX18                       177- 183   ///
      str    DX19                       184- 190   ///
      str    DX20                       191- 197   ///
      str    DX21                       198- 204   ///
      str    DX22                       205- 211   ///
      str    DX23                       212- 218   ///
      str    DX24                       219- 225   ///
      str    DX25                       226- 232   ///
      str    DX26                       233- 239   ///
      str    DX27                       240- 246   ///
      str    DX28                       247- 253   ///
      str    DX29                       254- 260   ///
      str    DX30                       261- 267   ///
      int    DXCCS1                     268- 271   ///
      int    DXCCS2                     272- 275   ///
      int    DXCCS3                     276- 279   ///
      int    DXCCS4                     280- 283   ///
      int    DXCCS5                     284- 287   ///
      int    DXCCS6                     288- 291   ///
      int    DXCCS7                     292- 295   ///
      int    DXCCS8                     296- 299   ///
      int    DXCCS9                     300- 303   ///
      int    DXCCS10                    304- 307   ///
      int    DXCCS11                    308- 311   ///
      int    DXCCS12                    312- 315   ///
      int    DXCCS13                    316- 319   ///
      int    DXCCS14                    320- 323   ///
      int    DXCCS15                    324- 327   ///
      int    DXCCS16                    328- 331   ///
      int    DXCCS17                    332- 335   ///
      int    DXCCS18                    336- 339   ///
      int    DXCCS19                    340- 343   ///
      int    DXCCS20                    344- 347   ///
      int    DXCCS21                    348- 351   ///
      int    DXCCS22                    352- 355   ///
      int    DXCCS23                    356- 359   ///
      int    DXCCS24                    360- 363   ///
      int    DXCCS25                    364- 367   ///
      int    DXCCS26                    368- 371   ///
      int    DXCCS27                    372- 375   ///
      int    DXCCS28                    376- 379   ///
      int    DXCCS29                    380- 383   ///
      int    DXCCS30                    384- 387   ///
      str    DXPOA1                     388        ///
      str    DXPOA2                     389        ///
      str    DXPOA3                     390        ///
      str    DXPOA4                     391        ///
      str    DXPOA5                     392        ///
      str    DXPOA6                     393        ///
      str    DXPOA7                     394        ///
      str    DXPOA8                     395        ///
      str    DXPOA9                     396        ///
      str    DXPOA10                    397        ///
      str    DXPOA11                    398        ///
      str    DXPOA12                    399        ///
      str    DXPOA13                    400        ///
      str    DXPOA14                    401        ///
      str    DXPOA15                    402        ///
      str    DXPOA16                    403        ///
      str    DXPOA17                    404        ///
      str    DXPOA18                    405        ///
      str    DXPOA19                    406        ///
      str    DXPOA20                    407        ///
      str    DXPOA21                    408        ///
      str    DXPOA22                    409        ///
      str    DXPOA23                    410        ///
      str    DXPOA24                    411        ///
      str    DXPOA25                    412        ///
      str    DXPOA26                    413        ///
      str    DXPOA27                    414        ///
      str    DXPOA28                    415        ///
      str    DXPOA29                    416        ///
      str    DXPOA30                    417        ///
      int    DXVER                      418- 420   ///
      int    DaysBurnUnit               421- 423   ///
      int    DaysCCU                    424- 426   ///
      int    DaysICU                    427- 429   ///
      int    DaysNICU                   430- 432   ///
      int    DaysPICU                   433- 435   ///
      int    DaysShockUnit              436- 438   ///
      long   DaysToEvent                439- 444   ///
      str    ECODE1                     445- 451   ///
      str    ECODE2                     452- 458   ///
      str    ECODE3                     459- 465   ///
      str    ECODE4                     466- 472   ///
      str    ECODE5                     473- 479   ///
      str    ECODE6                     480- 486   ///
      str    ECODE7                     487- 493   ///
      str    ECODE8                     494- 500   ///
      int    E_CCS1                     501- 504   ///
      int    E_CCS2                     505- 508   ///
      int    E_CCS3                     509- 512   ///
      int    E_CCS4                     513- 516   ///
      int    E_CCS5                     517- 520   ///
      int    E_CCS6                     521- 524   ///
      int    E_CCS7                     525- 528   ///
      int    E_CCS8                     529- 532   ///
      str    E_POA1                     533        ///
      str    E_POA2                     534        ///
      str    E_POA3                     535        ///
      str    E_POA4                     536        ///
      str    E_POA5                     537        ///
      str    E_POA6                     538        ///
      str    E_POA7                     539        ///
      str    E_POA8                     540        ///
      byte   FEMALE                     541- 542   ///
      byte   HCUP_ED                    543- 544   ///
      byte   HCUP_OS                    545- 546   ///
      str    HISPANIC_X                 547        ///
      int    HOSPBRTH                   548- 550   ///
      str    HOSPST                     551- 552   ///
      byte   Homeless                   553- 554   ///
      byte   HospitalUnit               555- 556   ///
      double KEY                        557- 571   ///
      long   LOS                        572- 576   ///
      long   LOS_X                      577- 582   ///
      str    MARITALSTATUSUB04          583        ///
      str    MARITALSTATUS_X            584        ///
      byte   MDC                        585- 586   ///
      byte   MDC24                      587- 588   ///
      byte   MDC_NoPOA                  589- 590   ///
      long   MDNUM1_R                   591- 599   ///
      long   MDNUM2_R                   600- 608   ///
      byte   MEDINCSTQ                  609- 610   ///
      long   MRN_R                      611- 619   ///
      int    NCHRONIC                   620- 622   ///
      int    NDX                        623- 625   ///
      byte   NECODE                     626- 627   ///
      byte   NEOMAT                     628- 629   ///
      int    NPR                        630- 632   ///
      byte   ORPROC                     633- 634   ///
      long   OS_TIME                    635- 642   ///
      str    P7EDSRC_X                  643- 644   ///
      byte   PAY1                       645- 646   ///
      str    PAY1_X                     647- 648   ///
      byte   PAY2                       649- 650   ///
      str    PAY2_X                     651- 652   ///
      str    PAYER1_X                   653- 654   ///
      str    PAYER2_X                   655- 656   ///
      int    PL_CBSA                    657- 659   ///
      byte   PL_NCHS                    660- 661   ///
      byte   PL_RUCC                    662- 663   ///
      byte   PL_UIC                     664- 665   ///
      byte   PL_UR_CAT4                 666- 667   ///
      byte   POA_Disch_Edit1            668- 669   ///
      byte   POA_Disch_Edit2            670- 671   ///
      byte   POA_Hosp_Edit1             672- 673   ///
      byte   POA_Hosp_Edit2             674- 675   ///
      byte   POA_Hosp_Edit3             676- 677   ///
      double POA_Hosp_Edit3_Value       678- 685   ///
      str    PR1                        686- 692   ///
      str    PR2                        693- 699   ///
      str    PR3                        700- 706   ///
      str    PR4                        707- 713   ///
      str    PR5                        714- 720   ///
      str    PR6                        721- 727   ///
      str    PR7                        728- 734   ///
      str    PR8                        735- 741   ///
      str    PR9                        742- 748   ///
      str    PR10                       749- 755   ///
      str    PR11                       756- 762   ///
      str    PR12                       763- 769   ///
      str    PR13                       770- 776   ///
      str    PR14                       777- 783   ///
      str    PR15                       784- 790   ///
      str    PR16                       791- 797   ///
      str    PR17                       798- 804   ///
      str    PR18                       805- 811   ///
      str    PR19                       812- 818   ///
      str    PR20                       819- 825   ///
      str    PR21                       826- 832   ///
      str    PR22                       833- 839   ///
      str    PR23                       840- 846   ///
      str    PR24                       847- 853   ///
      str    PR25                       854- 860   ///
      str    PR26                       861- 867   ///
      str    PR27                       868- 874   ///
      str    PR28                       875- 881   ///
      str    PR29                       882- 888   ///
      str    PR30                       889- 895   ///
      int    PRCCS1                     896- 898   ///
      int    PRCCS2                     899- 901   ///
      int    PRCCS3                     902- 904   ///
      int    PRCCS4                     905- 907   ///
      int    PRCCS5                     908- 910   ///
      int    PRCCS6                     911- 913   ///
      int    PRCCS7                     914- 916   ///
      int    PRCCS8                     917- 919   ///
      int    PRCCS9                     920- 922   ///
      int    PRCCS10                    923- 925   ///
      int    PRCCS11                    926- 928   ///
      int    PRCCS12                    929- 931   ///
      int    PRCCS13                    932- 934   ///
      int    PRCCS14                    935- 937   ///
      int    PRCCS15                    938- 940   ///
      int    PRCCS16                    941- 943   ///
      int    PRCCS17                    944- 946   ///
      int    PRCCS18                    947- 949   ///
      int    PRCCS19                    950- 952   ///
      int    PRCCS20                    953- 955   ///
      int    PRCCS21                    956- 958   ///
      int    PRCCS22                    959- 961   ///
      int    PRCCS23                    962- 964   ///
      int    PRCCS24                    965- 967   ///
      int    PRCCS25                    968- 970   ///
      int    PRCCS26                    971- 973   ///
      int    PRCCS27                    974- 976   ///
      int    PRCCS28                    977- 979   ///
      int    PRCCS29                    980- 982   ///
      int    PRCCS30                    983- 985   ///
      long   PRDAY1                     986- 990   ///
      long   PRDAY2                     991- 995   ///
      long   PRDAY3                     996-1000   ///
      long   PRDAY4                    1001-1005   ///
      long   PRDAY5                    1006-1010   ///
      long   PRDAY6                    1011-1015   ///
      long   PRDAY7                    1016-1020   ///
      long   PRDAY8                    1021-1025   ///
      long   PRDAY9                    1026-1030   ///
      long   PRDAY10                   1031-1035   ///
      long   PRDAY11                   1036-1040   ///
      long   PRDAY12                   1041-1045   ///
      long   PRDAY13                   1046-1050   ///
      long   PRDAY14                   1051-1055   ///
      long   PRDAY15                   1056-1060   ///
      long   PRDAY16                   1061-1065   ///
      long   PRDAY17                   1066-1070   ///
      long   PRDAY18                   1071-1075   ///
      long   PRDAY19                   1076-1080   ///
      long   PRDAY20                   1081-1085   ///
      long   PRDAY21                   1086-1090   ///
      long   PRDAY22                   1091-1095   ///
      long   PRDAY23                   1096-1100   ///
      long   PRDAY24                   1101-1105   ///
      long   PRDAY25                   1106-1110   ///
      long   PRDAY26                   1111-1115   ///
      long   PRDAY27                   1116-1120   ///
      long   PRDAY28                   1121-1125   ///
      long   PRDAY29                   1126-1130   ///
      long   PRDAY30                   1131-1135   ///
      int    PROCTYPE                  1136-1138   ///
      int    PRVER                     1139-1141   ///
      str    PSTATE                    1142-1143   ///
      long   PSTCO                     1144-1148   ///
      long   PSTCO2                    1149-1153   ///
      str    PrimLang                  1154-1156   ///
      byte   RACE                      1157-1158   ///
      str    RACE_X                    1159        ///
      byte   READMIT                   1160-1161   ///
      byte   SERVICELINE               1162-1163   ///
      double TOTCHG                    1164-1173   ///
      double TOTCHG_X                  1174-1188   ///
      byte   TRAN_IN                   1189-1190   ///
      byte   TRAN_OUT                  1191-1192   ///
      long   VisitLink                 1193-1201   ///
      int    YEAR                      1202-1205   ///
      str    ZIP3                      1206-1208   ///
      int    ZIPINC_QRTL               1209-1211   ///
      int    AYEAR                     1212-1215   ///
      using  "MD_SID_2014_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var ASOURCE                  "Admission source (uniform)"
label var ASOURCE_X                "Admission source (as received from source)"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
label var DIED                     "Died during hospitalization"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRG24                    "DRG, version 24"
label var DRGVER                   "DRG grouper version used on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
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
label var DaysBurnUnit             "Days in burn care unit (as received from source)"
label var DaysCCU                  "Days in coronary care unit (as received from source)"
label var DaysICU                  "Days in medical/surgical intensive care unit (as received from source)"
label var DaysNICU                 "Days in neonetal care unit (as received from source)"
label var DaysPICU                 "Days in pediatric care unit (as received from source)"
label var DaysShockUnit            "Days in shock trauma unit (as received from source"
label var DaysToEvent              "Days from 'start date' to admission"
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
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var Homeless                 "Indicator that patient is homeless"
label var HospitalUnit
    "Indicator that patient was discharged from a special unit within an acute care hospital (reported by source)"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MARITALSTATUS_X          "Patient's marital status (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC24                    "MDC, version 24"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
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
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var PrimLang                 "Primary language of patient"
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
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
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
recode DXCCS26                   (-999 -888 -666=.)
recode DXCCS27                   (-999 -888 -666=.)
recode DXCCS28                   (-999 -888 -666=.)
recode DXCCS29                   (-999 -888 -666=.)
recode DXCCS30                   (-999 -888 -666=.)
recode DXVER                     (-99 -88 -66=.)
recode DaysBurnUnit              (-99 -88 -66=.)
recode DaysCCU                   (-99 -88 -66=.)
recode DaysICU                   (-99 -88 -66=.)
recode DaysNICU                  (-99 -88 -66=.)
recode DaysPICU                  (-99 -88 -66=.)
recode DaysShockUnit             (-99 -88 -66=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
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
recode Homeless                  (-9 -8 -6 -5=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC24                     (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
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
recode OS_TIME                   (-9999999 -8888888 -6666666=.)
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

save "MD_SID_2014_CORE.dta", replace
