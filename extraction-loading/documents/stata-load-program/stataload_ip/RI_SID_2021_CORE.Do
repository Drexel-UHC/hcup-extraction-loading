/*****************************************************************************
* Creation Date: 10/20/2022   
* RI_SID_2021_CORE.Do
* This program will load the 2021 RI ASCII CORE File into Stata.
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
      int    AHOUR                        4-   7   ///
      byte   AMONTH                       8-   9   ///
      byte   ATYPE                       10-  11   ///
      byte   AWEEKEND                    12-  13   ///
      int    BWT                         14-  17   ///
      int    DaysCCU                     18-  20   ///
      int    DaysICU                     21-  23   ///
      int    DaysNICU                    24-  26   ///
      int    DHOUR                       27-  30   ///
      byte   DIED                        31-  32   ///
      str    DISP_X                      33-  34   ///
      byte   DISPUB04                    35-  36   ///
      byte   DISPUNIFORM                 37-  38   ///
      byte   DMONTH                      39-  40   ///
      byte   DQTR                        41-  42   ///
      int    DRG                         43-  45   ///
      int    DRG_NoPOA                   46-  48   ///
      byte   DRGVER                      49-  50   ///
      str    DSHOSPID                    51-  67   ///
      str    DXPOA1                      68        ///
      str    DXPOA2                      69        ///
      str    DXPOA3                      70        ///
      str    DXPOA4                      71        ///
      str    DXPOA5                      72        ///
      str    DXPOA6                      73        ///
      str    DXPOA7                      74        ///
      str    DXPOA8                      75        ///
      str    DXPOA9                      76        ///
      str    DXPOA10                     77        ///
      str    DXPOA11                     78        ///
      str    DXPOA12                     79        ///
      str    DXPOA13                     80        ///
      str    DXPOA14                     81        ///
      str    DXPOA15                     82        ///
      str    DXPOA16                     83        ///
      str    DXPOA17                     84        ///
      str    DXPOA18                     85        ///
      str    DXPOA19                     86        ///
      str    DXPOA20                     87        ///
      str    DXPOA21                     88        ///
      str    DXPOA22                     89        ///
      str    DXPOA23                     90        ///
      str    DXPOA24                     91        ///
      str    DXPOA25                     92        ///
      byte   FEMALE                      93-  94   ///
      byte   HCUP_ED                     95-  96   ///
      byte   HCUP_OS                     97-  98   ///
      byte   HISPANIC                    99- 100   ///
      str    HISPANIC_X                 101- 103   ///
      str    HOSPST                     104- 105   ///
      int    I10_BIRTH                  106- 108   ///
      int    I10_DELIVERY               109- 111   ///
      str    I10_DX_Admitting           112- 118   ///
      str    I10_DX1                    119- 125   ///
      str    I10_DX2                    126- 132   ///
      str    I10_DX3                    133- 139   ///
      str    I10_DX4                    140- 146   ///
      str    I10_DX5                    147- 153   ///
      str    I10_DX6                    154- 160   ///
      str    I10_DX7                    161- 167   ///
      str    I10_DX8                    168- 174   ///
      str    I10_DX9                    175- 181   ///
      str    I10_DX10                   182- 188   ///
      str    I10_DX11                   189- 195   ///
      str    I10_DX12                   196- 202   ///
      str    I10_DX13                   203- 209   ///
      str    I10_DX14                   210- 216   ///
      str    I10_DX15                   217- 223   ///
      str    I10_DX16                   224- 230   ///
      str    I10_DX17                   231- 237   ///
      str    I10_DX18                   238- 244   ///
      str    I10_DX19                   245- 251   ///
      str    I10_DX20                   252- 258   ///
      str    I10_DX21                   259- 265   ///
      str    I10_DX22                   266- 272   ///
      str    I10_DX23                   273- 279   ///
      str    I10_DX24                   280- 286   ///
      str    I10_DX25                   287- 293   ///
      str    I10_DX26                   294- 300   ///
      int    I10_NDX                    301- 303   ///
      int    I10_NPR                    304- 306   ///
      str    I10_PR1                    307- 313   ///
      str    I10_PR2                    314- 320   ///
      str    I10_PR3                    321- 327   ///
      str    I10_PR4                    328- 334   ///
      str    I10_PR5                    335- 341   ///
      str    I10_PR6                    342- 348   ///
      str    I10_PR7                    349- 355   ///
      str    I10_PR8                    356- 362   ///
      str    I10_PR9                    363- 369   ///
      str    I10_PR10                   370- 376   ///
      str    I10_PR11                   377- 383   ///
      str    I10_PR12                   384- 390   ///
      str    I10_PR13                   391- 397   ///
      str    I10_PR14                   398- 404   ///
      str    I10_PR15                   405- 411   ///
      str    I10_PR16                   412- 418   ///
      str    I10_PR17                   419- 425   ///
      str    I10_PR18                   426- 432   ///
      str    I10_PR19                   433- 439   ///
      str    I10_PR20                   440- 446   ///
      str    I10_PR21                   447- 453   ///
      str    I10_PR22                   454- 460   ///
      str    I10_PR23                   461- 467   ///
      str    I10_PR24                   468- 474   ///
      str    I10_PR25                   475- 481   ///
      int    I10_PROCTYPE               482- 484   ///
      byte   I10_SERVICELINE            485- 486   ///
      double KEY                        487- 501   ///
      long   LOS                        502- 506   ///
      long   LOS_X                      507- 512   ///
      byte   MDC                        513- 514   ///
      byte   MDC_NoPOA                  515- 516   ///
      long   MDNUM1_R                   517- 525   ///
      long   MDNUM2_R                   526- 534   ///
      long   MDNUM3_R                   535- 543   ///
      byte   MEDINCSTQ                  544- 545   ///
      int    OBSERVATION                546- 549   ///
      byte   PAY1                       550- 551   ///
      str    PAY1_X                     552        ///
      byte   PCLASS_ORPROC              553- 554   ///
      int    PL_CBSA                    555- 557   ///
      byte   PL_NCHS                    558- 559   ///
      byte   PL_RUCC                    560- 561   ///
      byte   PL_UIC                     562- 563   ///
      byte   PL_UR_CAT4                 564- 565   ///
      byte   POA_Disch_Edit1            566- 567   ///
      byte   POA_Disch_Edit2            568- 569   ///
      byte   POA_Hosp_Edit1             570- 571   ///
      byte   POA_Hosp_Edit2             572- 573   ///
      byte   POA_Hosp_Edit3             574- 575   ///
      double POA_Hosp_Edit3_Value       576- 583   ///
      str    PointOfOrigin_X            584        ///
      str    PointOfOriginUB04          585        ///
      long   PRDAY1                     586- 590   ///
      long   PRDAY2                     591- 595   ///
      long   PRDAY3                     596- 600   ///
      long   PRDAY4                     601- 605   ///
      long   PRDAY5                     606- 610   ///
      long   PRDAY6                     611- 615   ///
      long   PRDAY7                     616- 620   ///
      long   PRDAY8                     621- 625   ///
      long   PRDAY9                     626- 630   ///
      long   PRDAY10                    631- 635   ///
      long   PRDAY11                    636- 640   ///
      long   PRDAY12                    641- 645   ///
      long   PRDAY13                    646- 650   ///
      long   PRDAY14                    651- 655   ///
      long   PRDAY15                    656- 660   ///
      long   PRDAY16                    661- 665   ///
      long   PRDAY17                    666- 670   ///
      long   PRDAY18                    671- 675   ///
      long   PRDAY19                    676- 680   ///
      long   PRDAY20                    681- 685   ///
      long   PRDAY21                    686- 690   ///
      long   PRDAY22                    691- 695   ///
      long   PRDAY23                    696- 700   ///
      long   PRDAY24                    701- 705   ///
      long   PRDAY25                    706- 710   ///
      str    PSTATE                     711- 712   ///
      str    PSTATE_GEO                 713- 714   ///
      long   PSTCO                      715- 719   ///
      long   PSTCO_GEO                  720- 724   ///
      byte   RACE                       725- 726   ///
      float  RACE_PCT_MISS_HOSP         727- 733   ///
      str    RACE_X                     734        ///
      double TOTCHG                     735- 744   ///
      double TOTCHG_X                   745- 759   ///
      byte   TRAN_IN                    760- 761   ///
      byte   TRAN_OUT                   762- 763   ///
      int    YEAR                       764- 767   ///
      str    ZIP                        768- 772   ///
      int    ZIPINC_QRTL                773- 775   ///
      int    AYEAR                      776- 779   ///
      byte   PRMONTH1                   780- 781   ///
      byte   PRMONTH2                   782- 783   ///
      byte   PRMONTH3                   784- 785   ///
      byte   PRMONTH4                   786- 787   ///
      byte   PRMONTH5                   788- 789   ///
      byte   PRMONTH6                   790- 791   ///
      byte   PRMONTH7                   792- 793   ///
      byte   PRMONTH8                   794- 795   ///
      byte   PRMONTH9                   796- 797   ///
      byte   PRMONTH10                  798- 799   ///
      byte   PRMONTH11                  800- 801   ///
      byte   PRMONTH12                  802- 803   ///
      byte   PRMONTH13                  804- 805   ///
      byte   PRMONTH14                  806- 807   ///
      byte   PRMONTH15                  808- 809   ///
      byte   PRMONTH16                  810- 811   ///
      byte   PRMONTH17                  812- 813   ///
      byte   PRMONTH18                  814- 815   ///
      byte   PRMONTH19                  816- 817   ///
      byte   PRMONTH20                  818- 819   ///
      byte   PRMONTH21                  820- 821   ///
      byte   PRMONTH22                  822- 823   ///
      byte   PRMONTH23                  824- 825   ///
      byte   PRMONTH24                  826- 827   ///
      byte   PRMONTH25                  828- 829   ///
      int    PRYEAR1                    830- 833   ///
      int    PRYEAR2                    834- 837   ///
      int    PRYEAR3                    838- 841   ///
      int    PRYEAR4                    842- 845   ///
      int    PRYEAR5                    846- 849   ///
      int    PRYEAR6                    850- 853   ///
      int    PRYEAR7                    854- 857   ///
      int    PRYEAR8                    858- 861   ///
      int    PRYEAR9                    862- 865   ///
      int    PRYEAR10                   866- 869   ///
      int    PRYEAR11                   870- 873   ///
      int    PRYEAR12                   874- 877   ///
      int    PRYEAR13                   878- 881   ///
      int    PRYEAR14                   882- 885   ///
      int    PRYEAR15                   886- 889   ///
      int    PRYEAR16                   890- 893   ///
      int    PRYEAR17                   894- 897   ///
      int    PRYEAR18                   898- 901   ///
      int    PRYEAR19                   902- 905   ///
      int    PRYEAR20                   906- 909   ///
      int    PRYEAR21                   910- 913   ///
      int    PRYEAR22                   914- 917   ///
      int    PRYEAR23                   918- 921   ///
      int    PRYEAR24                   922- 925   ///
      int    PRYEAR25                   926- 929   ///
      using  "RI_SID_2021_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
label var DaysCCU                  "Days in coronary care unit (as received from source)"
label var DaysICU                  "Days in medical/surgical intensive care unit (as received from source)"
label var DaysNICU                 "Days in neonetal care unit (as received from source)"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
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
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var OBSERVATION              "Time for observation services (as received from source)"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PCLASS_ORPROC            "Indicates operating room (major diagnostic or therapeutic) procedure on the record"
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
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
label var RACE                     "Race (uniform)"
label var RACE_PCT_MISS_HOSP       "Hospital percentage of missing or invalid race values"
label var RACE_X                   "Race (as received from source)"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var AYEAR                    "Admission year"
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
recode AHOUR                     (-999 -888 -666=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
recode DaysCCU                   (-99 -88 -66=.)
recode DaysICU                   (-99 -88 -66=.)
recode DaysNICU                  (-99 -88 -66=.)
recode DHOUR                     (-999 -888 -666=.)
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
recode HISPANIC                  (-9 -8 -6 -5=.)
recode I10_BIRTH                 (-99 -88 -66=.)
recode I10_DELIVERY              (-99 -88 -66=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode I10_SERVICELINE           (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode OBSERVATION               (-999 -888 -666=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PCLASS_ORPROC             (-9 -8 -6 -5=.)
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
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_PCT_MISS_HOSP        (-999.99 -888.88 -666.66=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)
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

save "RI_SID_2021_CORE.dta", replace
