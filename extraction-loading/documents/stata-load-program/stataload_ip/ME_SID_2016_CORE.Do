/*****************************************************************************
* Creation Date: 07/25/2018   
* ME_SID_2016_CORE.Do
* This program will load the 2016 ME ASCII CORE File into Stata.
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
      int    ADRG                         1-   3   ///
      int    AHOUR                        4-   7   ///
      byte   AMDC                         8-   9   ///
      byte   AMONTH                      10-  11   ///
      byte   ATYPE                       12-  13   ///
      byte   AWEEKEND                    14-  15   ///
      int    DHOUR                       16-  19   ///
      byte   DIED                        20-  21   ///
      byte   DISPUB04                    22-  23   ///
      byte   DISPUNIFORM                 24-  25   ///
      byte   DMONTH                      26-  27   ///
      byte   DQTR                        28-  29   ///
      int    DRG                         30-  32   ///
      int    DRG_NoPOA                   33-  35   ///
      byte   DRGVER                      36-  37   ///
      str    DXPOA1                      38        ///
      str    DXPOA2                      39        ///
      str    DXPOA3                      40        ///
      str    DXPOA4                      41        ///
      str    DXPOA5                      42        ///
      str    DXPOA6                      43        ///
      str    DXPOA7                      44        ///
      str    DXPOA8                      45        ///
      str    DXPOA9                      46        ///
      str    DXPOA10                     47        ///
      str    DXPOA11                     48        ///
      str    DXPOA12                     49        ///
      str    DXPOA13                     50        ///
      str    DXPOA14                     51        ///
      str    DXPOA15                     52        ///
      str    DXPOA16                     53        ///
      str    DXPOA17                     54        ///
      str    DXPOA18                     55        ///
      str    DXPOA19                     56        ///
      str    DXPOA20                     57        ///
      str    DXPOA21                     58        ///
      str    DXPOA22                     59        ///
      str    DXPOA23                     60        ///
      str    DXPOA24                     61        ///
      str    DXPOA25                     62        ///
      int    DXVER                       63-  65   ///
      str    E_POA1                      66        ///
      str    E_POA2                      67        ///
      str    E_POA3                      68        ///
      str    E_POA4                      69        ///
      str    E_POA5                      70        ///
      str    E_POA6                      71        ///
      str    E_POA7                      72        ///
      str    E_POA8                      73        ///
      byte   FEMALE                      74-  75   ///
      byte   HCUP_ED                     76-  77   ///
      byte   HCUP_OS                     78-  79   ///
      str    HOSPST                      80-  81   ///
      str    I10_DX_Admitting            82-  88   ///
      str    I10_DX1                     89-  95   ///
      str    I10_DX2                     96- 102   ///
      str    I10_DX3                    103- 109   ///
      str    I10_DX4                    110- 116   ///
      str    I10_DX5                    117- 123   ///
      str    I10_DX6                    124- 130   ///
      str    I10_DX7                    131- 137   ///
      str    I10_DX8                    138- 144   ///
      str    I10_DX9                    145- 151   ///
      str    I10_DX10                   152- 158   ///
      str    I10_DX11                   159- 165   ///
      str    I10_DX12                   166- 172   ///
      str    I10_DX13                   173- 179   ///
      str    I10_DX14                   180- 186   ///
      str    I10_DX15                   187- 193   ///
      str    I10_DX16                   194- 200   ///
      str    I10_DX17                   201- 207   ///
      str    I10_DX18                   208- 214   ///
      str    I10_DX19                   215- 221   ///
      str    I10_DX20                   222- 228   ///
      str    I10_DX21                   229- 235   ///
      str    I10_DX22                   236- 242   ///
      str    I10_DX23                   243- 249   ///
      str    I10_DX24                   250- 256   ///
      str    I10_DX25                   257- 263   ///
      str    I10_ECAUSE1                264- 270   ///
      str    I10_ECAUSE2                271- 277   ///
      str    I10_ECAUSE3                278- 284   ///
      str    I10_ECAUSE4                285- 291   ///
      str    I10_ECAUSE5                292- 298   ///
      str    I10_ECAUSE6                299- 305   ///
      str    I10_ECAUSE7                306- 312   ///
      str    I10_ECAUSE8                313- 319   ///
      int    I10_NDX                    320- 322   ///
      byte   I10_NECAUSE                323- 324   ///
      int    I10_NPR                    325- 327   ///
      str    I10_PR1                    328- 334   ///
      str    I10_PR2                    335- 341   ///
      str    I10_PR3                    342- 348   ///
      str    I10_PR4                    349- 355   ///
      str    I10_PR5                    356- 362   ///
      str    I10_PR6                    363- 369   ///
      str    I10_PR7                    370- 376   ///
      str    I10_PR8                    377- 383   ///
      str    I10_PR9                    384- 390   ///
      str    I10_PR10                   391- 397   ///
      str    I10_PR11                   398- 404   ///
      str    I10_PR12                   405- 411   ///
      str    I10_PR13                   412- 418   ///
      str    I10_PR14                   419- 425   ///
      str    I10_PR15                   426- 432   ///
      str    I10_PR16                   433- 439   ///
      str    I10_PR17                   440- 446   ///
      str    I10_PR18                   447- 453   ///
      str    I10_PR19                   454- 460   ///
      str    I10_PR20                   461- 467   ///
      str    I10_PR21                   468- 474   ///
      str    I10_PR22                   475- 481   ///
      str    I10_PR23                   482- 488   ///
      str    I10_PR24                   489- 495   ///
      str    I10_PR25                   496- 502   ///
      int    I10_PROCTYPE               503- 505   ///
      double KEY                        506- 520   ///
      long   LOS                        521- 525   ///
      byte   MDC                        526- 527   ///
      byte   MDC_NoPOA                  528- 529   ///
      str    MDSPEC1                    530- 531   ///
      str    MDSPEC2                    532- 533   ///
      byte   MEDINCSTQ                  534- 535   ///
      long   MRN_R                      536- 544   ///
      double OS_TIME                    545- 555   ///
      byte   PAY1                       556- 557   ///
      byte   PAY2                       558- 559   ///
      byte   PAY3                       560- 561   ///
      int    PL_CBSA                    562- 564   ///
      byte   PL_NCHS                    565- 566   ///
      byte   PL_UIC                     567- 568   ///
      byte   PL_UR_CAT4                 569- 570   ///
      byte   POA_Disch_Edit1            571- 572   ///
      byte   POA_Disch_Edit2            573- 574   ///
      byte   POA_Hosp_Edit1             575- 576   ///
      byte   POA_Hosp_Edit2             577- 578   ///
      byte   POA_Hosp_Edit3             579- 580   ///
      double POA_Hosp_Edit3_Value       581- 588   ///
      str    PointOfOriginUB04          589        ///
      long   PRDAY1                     590- 594   ///
      long   PRDAY2                     595- 599   ///
      long   PRDAY3                     600- 604   ///
      long   PRDAY4                     605- 609   ///
      long   PRDAY5                     610- 614   ///
      long   PRDAY6                     615- 619   ///
      long   PRDAY7                     620- 624   ///
      long   PRDAY8                     625- 629   ///
      long   PRDAY9                     630- 634   ///
      long   PRDAY10                    635- 639   ///
      long   PRDAY11                    640- 644   ///
      long   PRDAY12                    645- 649   ///
      long   PRDAY13                    650- 654   ///
      long   PRDAY14                    655- 659   ///
      long   PRDAY15                    660- 664   ///
      long   PRDAY16                    665- 669   ///
      long   PRDAY17                    670- 674   ///
      long   PRDAY18                    675- 679   ///
      long   PRDAY19                    680- 684   ///
      long   PRDAY20                    685- 689   ///
      long   PRDAY21                    690- 694   ///
      long   PRDAY22                    695- 699   ///
      long   PRDAY23                    700- 704   ///
      long   PRDAY24                    705- 709   ///
      long   PRDAY25                    710- 714   ///
      int    PRVER                      715- 717   ///
      str    PSTATE                     718- 719   ///
      long   PSTCO                      720- 724   ///
      long   PSTCO2                     725- 729   ///
      byte   TRAN_IN                    730- 731   ///
      byte   TRAN_OUT                   732- 733   ///
      int    YEAR                       734- 737   ///
      str    ZIP3                       738- 740   ///
      int    ZIPINC_QRTL                741- 743   ///
      int    AGEGROUP                   744- 746   ///
      long   HOSPID                     747- 751   ///
      int    AYEAR                      752- 755   ///
      byte   PRMONTH1                   756- 757   ///
      byte   PRMONTH2                   758- 759   ///
      byte   PRMONTH3                   760- 761   ///
      byte   PRMONTH4                   762- 763   ///
      byte   PRMONTH5                   764- 765   ///
      byte   PRMONTH6                   766- 767   ///
      byte   PRMONTH7                   768- 769   ///
      byte   PRMONTH8                   770- 771   ///
      byte   PRMONTH9                   772- 773   ///
      byte   PRMONTH10                  774- 775   ///
      byte   PRMONTH11                  776- 777   ///
      byte   PRMONTH12                  778- 779   ///
      byte   PRMONTH13                  780- 781   ///
      byte   PRMONTH14                  782- 783   ///
      byte   PRMONTH15                  784- 785   ///
      byte   PRMONTH16                  786- 787   ///
      byte   PRMONTH17                  788- 789   ///
      byte   PRMONTH18                  790- 791   ///
      byte   PRMONTH19                  792- 793   ///
      byte   PRMONTH20                  794- 795   ///
      byte   PRMONTH21                  796- 797   ///
      byte   PRMONTH22                  798- 799   ///
      byte   PRMONTH23                  800- 801   ///
      byte   PRMONTH24                  802- 803   ///
      byte   PRMONTH25                  804- 805   ///
      int    PRYEAR1                    806- 809   ///
      int    PRYEAR2                    810- 813   ///
      int    PRYEAR3                    814- 817   ///
      int    PRYEAR4                    818- 821   ///
      int    PRYEAR5                    822- 825   ///
      int    PRYEAR6                    826- 829   ///
      int    PRYEAR7                    830- 833   ///
      int    PRYEAR8                    834- 837   ///
      int    PRYEAR9                    838- 841   ///
      int    PRYEAR10                   842- 845   ///
      int    PRYEAR11                   846- 849   ///
      int    PRYEAR12                   850- 853   ///
      int    PRYEAR13                   854- 857   ///
      int    PRYEAR14                   858- 861   ///
      int    PRYEAR15                   862- 865   ///
      int    PRYEAR16                   866- 869   ///
      int    PRYEAR17                   870- 873   ///
      int    PRYEAR18                   874- 877   ///
      int    PRYEAR19                   878- 881   ///
      int    PRYEAR20                   882- 885   ///
      int    PRYEAR21                   886- 889   ///
      int    PRYEAR22                   890- 893   ///
      int    PRYEAR23                   894- 897   ///
      int    PRYEAR24                   898- 901   ///
      int    PRYEAR25                   902- 905   ///
      using  "ME_SID_2016_CORE.ASC"

***  Assign labels to the data elements ***
label var ADRG                     "All Patient Refined DRG"
label var AHOUR                    "Admission Hour"
label var AMDC                     "All Patient Refined MDC"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
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
label var DXVER                    "Diagnosis Version"
label var E_POA1                   "External cause 1, present on admission indicator"
label var E_POA2                   "External cause 2, present on admission indicator"
label var E_POA3                   "External cause 3, present on admission indicator"
label var E_POA4                   "External cause 4, present on admission indicator"
label var E_POA5                   "External cause 5, present on admission indicator"
label var E_POA6                   "External cause 6, present on admission indicator"
label var E_POA7                   "External cause 7, present on admission indicator"
label var E_POA8                   "External cause 8, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
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
label var I10_ECAUSE1              "ICD-10-CM External cause 1"
label var I10_ECAUSE2              "ICD-10-CM External cause 2"
label var I10_ECAUSE3              "ICD-10-CM External cause 3"
label var I10_ECAUSE4              "ICD-10-CM External cause 4"
label var I10_ECAUSE5              "ICD-10-CM External cause 5"
label var I10_ECAUSE6              "ICD-10-CM External cause 6"
label var I10_ECAUSE7              "ICD-10-CM External cause 7"
label var I10_ECAUSE8              "ICD-10-CM External cause 8"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDSPEC1                  "Physician 1 specialty (as received from source)"
label var MDSPEC2                  "Physician 2 specialty (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY3                     "Tertiary expected payer (uniform)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_UIC                   "Patient location: Urban Influence Codes"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
label var POA_Disch_Edit1          "Discharge has POA missing on all nonexempt diagnoses"
label var POA_Disch_Edit2          "Discharge has POA missing on all nonexempt secondary diagnoses"
label var POA_Hosp_Edit1           "Hospital reported POA as Y on all diagnoses on all discharges"
label var POA_Hosp_Edit2           "Hospital reported POA as missing on all non-Medicare discharges"
label var POA_Hosp_Edit3           "Hospital reported POA as missing on all nonexempt diagnoses for 15% or more of discharges"
label var POA_Hosp_Edit3_Value     "Percentage of discharges with all nonexempt diagnoses missing POA indicators"
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
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var YEAR                     "Calendar year"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var AGEGROUP                 " "
label var HOSPID                   "HCUP hospital identification number"
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
recode ADRG                      (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
recode AMDC                      (-9 -8 -6 -5=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
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
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NECAUSE               (-9 -8 -6 -5=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
recode PAY3                      (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
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
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AGEGROUP                  (-99 -88 -66=.)
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

save "ME_SID_2016_CORE.dta", replace
