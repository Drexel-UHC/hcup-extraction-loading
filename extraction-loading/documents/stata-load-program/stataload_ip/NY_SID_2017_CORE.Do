/*****************************************************************************
* Creation Date: 06/15/2020   
* NY_SID_2017_CORE.Do
* This program will load the 2017 NY ASCII CORE File into Stata.
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
      int    AHOUR                       10-  13   ///
      byte   AMONTH                      14-  15   ///
      int    ANESTH                      16-  18   ///
      byte   ATYPE                       19-  20   ///
      byte   AWEEKEND                    21-  22   ///
      long   BLOOD                       23-  28   ///
      int    BWT                         29-  32   ///
      long   DaysToEvent                 33-  38   ///
      int    DHOUR                       39-  42   ///
      byte   DIED                        43-  44   ///
      str    DISP_X                      45-  46   ///
      byte   DISPUB04                    47-  48   ///
      byte   DISPUNIFORM                 49-  50   ///
      byte   DMONTH                      51-  52   ///
      byte   DQTR                        53-  54   ///
      int    DRG                         55-  57   ///
      int    DRG_NoPOA                   58-  60   ///
      byte   DRGVER                      61-  62   ///
      str    DSHOSPID                    63-  79   ///
      str    DXPOA1                      80        ///
      str    DXPOA2                      81        ///
      str    DXPOA3                      82        ///
      str    DXPOA4                      83        ///
      str    DXPOA5                      84        ///
      str    DXPOA6                      85        ///
      str    DXPOA7                      86        ///
      str    DXPOA8                      87        ///
      str    DXPOA9                      88        ///
      str    DXPOA10                     89        ///
      str    DXPOA11                     90        ///
      str    DXPOA12                     91        ///
      str    DXPOA13                     92        ///
      str    DXPOA14                     93        ///
      str    DXPOA15                     94        ///
      str    DXPOA16                     95        ///
      str    DXPOA17                     96        ///
      str    DXPOA18                     97        ///
      str    DXPOA19                     98        ///
      str    DXPOA20                     99        ///
      str    DXPOA21                    100        ///
      str    DXPOA22                    101        ///
      str    DXPOA23                    102        ///
      str    DXPOA24                    103        ///
      str    DXPOA25                    104        ///
      str    DXPOA26                    105        ///
      str    DXPOA27                    106        ///
      str    DXPOA28                    107        ///
      str    DXPOA29                    108        ///
      str    DXPOA30                    109        ///
      str    DXPOA31                    110        ///
      str    DXPOA32                    111        ///
      str    DXPOA33                    112        ///
      str    DXPOA34                    113        ///
      int    DXVER                      114- 116   ///
      byte   FEMALE                     117- 118   ///
      byte   HCUP_ED                    119- 120   ///
      byte   HCUP_OS                    121- 122   ///
      byte   HISPANIC                   123- 124   ///
      str    HISPANIC_X                 125- 163   ///
      byte   Homeless                   164- 165   ///
      str    HOSP_NPI                   166- 175   ///
      str    HOSPST                     176- 177   ///
      str    I10_DX_Admitting           178- 184   ///
      str    I10_DX1                    185- 191   ///
      str    I10_DX2                    192- 198   ///
      str    I10_DX3                    199- 205   ///
      str    I10_DX4                    206- 212   ///
      str    I10_DX5                    213- 219   ///
      str    I10_DX6                    220- 226   ///
      str    I10_DX7                    227- 233   ///
      str    I10_DX8                    234- 240   ///
      str    I10_DX9                    241- 247   ///
      str    I10_DX10                   248- 254   ///
      str    I10_DX11                   255- 261   ///
      str    I10_DX12                   262- 268   ///
      str    I10_DX13                   269- 275   ///
      str    I10_DX14                   276- 282   ///
      str    I10_DX15                   283- 289   ///
      str    I10_DX16                   290- 296   ///
      str    I10_DX17                   297- 303   ///
      str    I10_DX18                   304- 310   ///
      str    I10_DX19                   311- 317   ///
      str    I10_DX20                   318- 324   ///
      str    I10_DX21                   325- 331   ///
      str    I10_DX22                   332- 338   ///
      str    I10_DX23                   339- 345   ///
      str    I10_DX24                   346- 352   ///
      str    I10_DX25                   353- 359   ///
      str    I10_DX26                   360- 366   ///
      str    I10_DX27                   367- 373   ///
      str    I10_DX28                   374- 380   ///
      str    I10_DX29                   381- 387   ///
      str    I10_DX30                   388- 394   ///
      str    I10_DX31                   395- 401   ///
      str    I10_DX32                   402- 408   ///
      str    I10_DX33                   409- 415   ///
      str    I10_DX34                   416- 422   ///
      int    I10_NDX                    423- 425   ///
      int    I10_NPR                    426- 428   ///
      str    I10_PR1                    429- 435   ///
      str    I10_PR2                    436- 442   ///
      str    I10_PR3                    443- 449   ///
      str    I10_PR4                    450- 456   ///
      str    I10_PR5                    457- 463   ///
      str    I10_PR6                    464- 470   ///
      str    I10_PR7                    471- 477   ///
      str    I10_PR8                    478- 484   ///
      str    I10_PR9                    485- 491   ///
      str    I10_PR10                   492- 498   ///
      str    I10_PR11                   499- 505   ///
      str    I10_PR12                   506- 512   ///
      str    I10_PR13                   513- 519   ///
      str    I10_PR14                   520- 526   ///
      str    I10_PR15                   527- 533   ///
      str    I10_PR16                   534- 540   ///
      str    I10_PR17                   541- 547   ///
      str    I10_PR18                   548- 554   ///
      str    I10_PR19                   555- 561   ///
      str    I10_PR20                   562- 568   ///
      str    I10_PR21                   569- 575   ///
      str    I10_PR22                   576- 582   ///
      str    I10_PR23                   583- 589   ///
      str    I10_PR24                   590- 596   ///
      str    I10_PR25                   597- 603   ///
      int    I10_PROCTYPE               604- 606   ///
      double KEY                        607- 621   ///
      long   LOS                        622- 626   ///
      long   LOS_X                      627- 632   ///
      byte   MDC                        633- 634   ///
      byte   MDC_NoPOA                  635- 636   ///
      long   MDNUM1_R                   637- 645   ///
      long   MDNUM2_R                   646- 654   ///
      byte   MEDINCSTQ                  655- 656   ///
      double OS_TIME                    657- 667   ///
      str    P7EDSRC_X                  668- 669   ///
      byte   PAY1                       670- 671   ///
      str    PAY1_X                     672- 676   ///
      byte   PAY2                       677- 678   ///
      str    PAY2_X                     679- 683   ///
      byte   PAY3                       684- 685   ///
      str    PAY3_X                     686- 690   ///
      int    PL_CBSA                    691- 693   ///
      byte   PL_NCHS                    694- 695   ///
      byte   PL_RUCC                    696- 697   ///
      byte   PL_UIC                     698- 699   ///
      byte   PL_UR_CAT4                 700- 701   ///
      byte   POA_Disch_Edit1            702- 703   ///
      byte   POA_Disch_Edit2            704- 705   ///
      byte   POA_Hosp_Edit1             706- 707   ///
      byte   POA_Hosp_Edit2             708- 709   ///
      byte   POA_Hosp_Edit3             710- 711   ///
      double POA_Hosp_Edit3_Value       712- 719   ///
      str    PointOfOrigin_X            720        ///
      str    PointOfOriginUB04          721        ///
      long   PRDAY1                     722- 726   ///
      long   PRDAY2                     727- 731   ///
      long   PRDAY3                     732- 736   ///
      long   PRDAY4                     737- 741   ///
      long   PRDAY5                     742- 746   ///
      long   PRDAY6                     747- 751   ///
      long   PRDAY7                     752- 756   ///
      long   PRDAY8                     757- 761   ///
      long   PRDAY9                     762- 766   ///
      long   PRDAY10                    767- 771   ///
      long   PRDAY11                    772- 776   ///
      long   PRDAY12                    777- 781   ///
      long   PRDAY13                    782- 786   ///
      long   PRDAY14                    787- 791   ///
      long   PRDAY15                    792- 796   ///
      long   PRDAY16                    797- 801   ///
      long   PRDAY17                    802- 806   ///
      long   PRDAY18                    807- 811   ///
      long   PRDAY19                    812- 816   ///
      long   PRDAY20                    817- 821   ///
      long   PRDAY21                    822- 826   ///
      long   PRDAY22                    827- 831   ///
      long   PRDAY23                    832- 836   ///
      long   PRDAY24                    837- 841   ///
      long   PRDAY25                    842- 846   ///
      int    PRVER                      847- 849   ///
      str    PSTATE                     850- 851   ///
      long   PSTCO                      852- 856   ///
      long   PSTCO2                     857- 861   ///
      byte   RACE                       862- 863   ///
      byte   RACE_EDIT                  864- 865   ///
      str    RACE_X                     866- 930   ///
      double TOTCHG                     931- 940   ///
      double TOTCHG_X                   941- 955   ///
      byte   TRAN_IN                    956- 957   ///
      byte   TRAN_OUT                   958- 959   ///
      long   VisitLink                  960- 968   ///
      int    YEAR                       969- 972   ///
      str    ZIP                        973- 977   ///
      str    ZIP3                       978- 980   ///
      int    ZIPINC_QRTL                981- 983   ///
      int    AYEAR                      984- 987   ///
      byte   BMONTH                     988- 989   ///
      int    BYEAR                      990- 993   ///
      byte   PRMONTH1                   994- 995   ///
      byte   PRMONTH2                   996- 997   ///
      byte   PRMONTH3                   998- 999   ///
      byte   PRMONTH4                  1000-1001   ///
      byte   PRMONTH5                  1002-1003   ///
      byte   PRMONTH6                  1004-1005   ///
      byte   PRMONTH7                  1006-1007   ///
      byte   PRMONTH8                  1008-1009   ///
      byte   PRMONTH9                  1010-1011   ///
      byte   PRMONTH10                 1012-1013   ///
      byte   PRMONTH11                 1014-1015   ///
      byte   PRMONTH12                 1016-1017   ///
      byte   PRMONTH13                 1018-1019   ///
      byte   PRMONTH14                 1020-1021   ///
      byte   PRMONTH15                 1022-1023   ///
      byte   PRMONTH16                 1024-1025   ///
      byte   PRMONTH17                 1026-1027   ///
      byte   PRMONTH18                 1028-1029   ///
      byte   PRMONTH19                 1030-1031   ///
      byte   PRMONTH20                 1032-1033   ///
      byte   PRMONTH21                 1034-1035   ///
      byte   PRMONTH22                 1036-1037   ///
      byte   PRMONTH23                 1038-1039   ///
      byte   PRMONTH24                 1040-1041   ///
      byte   PRMONTH25                 1042-1043   ///
      int    PRYEAR1                   1044-1047   ///
      int    PRYEAR2                   1048-1051   ///
      int    PRYEAR3                   1052-1055   ///
      int    PRYEAR4                   1056-1059   ///
      int    PRYEAR5                   1060-1063   ///
      int    PRYEAR6                   1064-1067   ///
      int    PRYEAR7                   1068-1071   ///
      int    PRYEAR8                   1072-1075   ///
      int    PRYEAR9                   1076-1079   ///
      int    PRYEAR10                  1080-1083   ///
      int    PRYEAR11                  1084-1087   ///
      int    PRYEAR12                  1088-1091   ///
      int    PRYEAR13                  1092-1095   ///
      int    PRYEAR14                  1096-1099   ///
      int    PRYEAR15                  1100-1103   ///
      int    PRYEAR16                  1104-1107   ///
      int    PRYEAR17                  1108-1111   ///
      int    PRYEAR18                  1112-1115   ///
      int    PRYEAR19                  1116-1119   ///
      int    PRYEAR20                  1120-1123   ///
      int    PRYEAR21                  1124-1127   ///
      int    PRYEAR22                  1128-1131   ///
      int    PRYEAR23                  1132-1135   ///
      int    PRYEAR24                  1136-1139   ///
      int    PRYEAR25                  1140-1143   ///
      using  "NY_SID_2017_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ANESTH                   "Method of anesthesia"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BLOOD                    "Pints of blood furnished to the patient"
label var BWT                      "Birth weight in grams"
label var DaysToEvent              "Days from 'start date' to admission"
label var DHOUR                    "Discharge Hour"
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
label var DXVER                    "Diagnosis Version"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
label var HOSP_NPI                 "Hospital NPI"
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
label var I10_DX34                 "ICD-10-CM Diagnosis 34"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
label var PAY3                     "Tertiary expected payer (uniform)"
label var PAY3_X                   "Tertiary expected payer (as received from source)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes (RUCC)"
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
label var VisitLink                "Visit linkage variable"
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
recode AHOUR                     (-999 -888 -666=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ANESTH                    (-99 -88 -66=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BLOOD                     (-99999 -88888 -66666=.)
recode BWT                       (-999 -888 -666=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DHOUR                     (-999 -888 -666=.)
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
recode HISPANIC                  (-9 -8 -6 -5=.)
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
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
recode PAY3                      (-9 -8 -6 -5=.)
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
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
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

save "NY_SID_2017_CORE.dta", replace
