/*****************************************************************************
* Creation Date: 02/11/2019   
* ME_SID_2017_CORE.Do
* This program will load the 2017 ME ASCII CORE File into Stata.
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
      str    DXPOA26                     63        ///
      str    DXPOA27                     64        ///
      str    DXPOA28                     65        ///
      str    DXPOA29                     66        ///
      str    DXPOA30                     67        ///
      str    DXPOA31                     68        ///
      str    DXPOA32                     69        ///
      int    DXVER                       70-  72   ///
      byte   FEMALE                      73-  74   ///
      byte   HCUP_ED                     75-  76   ///
      byte   HCUP_OS                     77-  78   ///
      str    HOSPST                      79-  80   ///
      str    I10_DX_Admitting            81-  87   ///
      str    I10_DX1                     88-  94   ///
      str    I10_DX2                     95- 101   ///
      str    I10_DX3                    102- 108   ///
      str    I10_DX4                    109- 115   ///
      str    I10_DX5                    116- 122   ///
      str    I10_DX6                    123- 129   ///
      str    I10_DX7                    130- 136   ///
      str    I10_DX8                    137- 143   ///
      str    I10_DX9                    144- 150   ///
      str    I10_DX10                   151- 157   ///
      str    I10_DX11                   158- 164   ///
      str    I10_DX12                   165- 171   ///
      str    I10_DX13                   172- 178   ///
      str    I10_DX14                   179- 185   ///
      str    I10_DX15                   186- 192   ///
      str    I10_DX16                   193- 199   ///
      str    I10_DX17                   200- 206   ///
      str    I10_DX18                   207- 213   ///
      str    I10_DX19                   214- 220   ///
      str    I10_DX20                   221- 227   ///
      str    I10_DX21                   228- 234   ///
      str    I10_DX22                   235- 241   ///
      str    I10_DX23                   242- 248   ///
      str    I10_DX24                   249- 255   ///
      str    I10_DX25                   256- 262   ///
      str    I10_DX26                   263- 269   ///
      str    I10_DX27                   270- 276   ///
      str    I10_DX28                   277- 283   ///
      str    I10_DX29                   284- 290   ///
      str    I10_DX30                   291- 297   ///
      str    I10_DX31                   298- 304   ///
      str    I10_DX32                   305- 311   ///
      int    I10_NDX                    312- 314   ///
      int    I10_NPR                    315- 317   ///
      str    I10_PR1                    318- 324   ///
      str    I10_PR2                    325- 331   ///
      str    I10_PR3                    332- 338   ///
      str    I10_PR4                    339- 345   ///
      str    I10_PR5                    346- 352   ///
      str    I10_PR6                    353- 359   ///
      str    I10_PR7                    360- 366   ///
      str    I10_PR8                    367- 373   ///
      str    I10_PR9                    374- 380   ///
      str    I10_PR10                   381- 387   ///
      str    I10_PR11                   388- 394   ///
      str    I10_PR12                   395- 401   ///
      str    I10_PR13                   402- 408   ///
      str    I10_PR14                   409- 415   ///
      str    I10_PR15                   416- 422   ///
      str    I10_PR16                   423- 429   ///
      str    I10_PR17                   430- 436   ///
      str    I10_PR18                   437- 443   ///
      str    I10_PR19                   444- 450   ///
      str    I10_PR20                   451- 457   ///
      str    I10_PR21                   458- 464   ///
      str    I10_PR22                   465- 471   ///
      str    I10_PR23                   472- 478   ///
      str    I10_PR24                   479- 485   ///
      str    I10_PR25                   486- 492   ///
      int    I10_PROCTYPE               493- 495   ///
      double KEY                        496- 510   ///
      long   LOS                        511- 515   ///
      byte   MDC                        516- 517   ///
      byte   MDC_NoPOA                  518- 519   ///
      str    MDSPEC1                    520- 521   ///
      str    MDSPEC2                    522- 523   ///
      byte   MEDINCSTQ                  524- 525   ///
      long   MRN_R                      526- 534   ///
      double OS_TIME                    535- 545   ///
      byte   PAY1                       546- 547   ///
      byte   PAY2                       548- 549   ///
      byte   PAY3                       550- 551   ///
      int    PL_CBSA                    552- 554   ///
      byte   PL_NCHS                    555- 556   ///
      byte   PL_UIC                     557- 558   ///
      byte   PL_UR_CAT4                 559- 560   ///
      byte   POA_Disch_Edit1            561- 562   ///
      byte   POA_Disch_Edit2            563- 564   ///
      byte   POA_Hosp_Edit1             565- 566   ///
      byte   POA_Hosp_Edit2             567- 568   ///
      byte   POA_Hosp_Edit3             569- 570   ///
      double POA_Hosp_Edit3_Value       571- 578   ///
      str    PointOfOriginUB04          579        ///
      long   PRDAY1                     580- 584   ///
      long   PRDAY2                     585- 589   ///
      long   PRDAY3                     590- 594   ///
      long   PRDAY4                     595- 599   ///
      long   PRDAY5                     600- 604   ///
      long   PRDAY6                     605- 609   ///
      long   PRDAY7                     610- 614   ///
      long   PRDAY8                     615- 619   ///
      long   PRDAY9                     620- 624   ///
      long   PRDAY10                    625- 629   ///
      long   PRDAY11                    630- 634   ///
      long   PRDAY12                    635- 639   ///
      long   PRDAY13                    640- 644   ///
      long   PRDAY14                    645- 649   ///
      long   PRDAY15                    650- 654   ///
      long   PRDAY16                    655- 659   ///
      long   PRDAY17                    660- 664   ///
      long   PRDAY18                    665- 669   ///
      long   PRDAY19                    670- 674   ///
      long   PRDAY20                    675- 679   ///
      long   PRDAY21                    680- 684   ///
      long   PRDAY22                    685- 689   ///
      long   PRDAY23                    690- 694   ///
      long   PRDAY24                    695- 699   ///
      long   PRDAY25                    700- 704   ///
      int    PRVER                      705- 707   ///
      str    PSTATE                     708- 709   ///
      long   PSTCO                      710- 714   ///
      long   PSTCO2                     715- 719   ///
      byte   TRAN_IN                    720- 721   ///
      byte   TRAN_OUT                   722- 723   ///
      int    YEAR                       724- 727   ///
      str    ZIP3                       728- 730   ///
      int    ZIPINC_QRTL                731- 733   ///
      int    AGEGROUP                   734- 736   ///
      long   HOSPID                     737- 741   ///
      int    AYEAR                      742- 745   ///
      byte   PRMONTH1                   746- 747   ///
      byte   PRMONTH2                   748- 749   ///
      byte   PRMONTH3                   750- 751   ///
      byte   PRMONTH4                   752- 753   ///
      byte   PRMONTH5                   754- 755   ///
      byte   PRMONTH6                   756- 757   ///
      byte   PRMONTH7                   758- 759   ///
      byte   PRMONTH8                   760- 761   ///
      byte   PRMONTH9                   762- 763   ///
      byte   PRMONTH10                  764- 765   ///
      byte   PRMONTH11                  766- 767   ///
      byte   PRMONTH12                  768- 769   ///
      byte   PRMONTH13                  770- 771   ///
      byte   PRMONTH14                  772- 773   ///
      byte   PRMONTH15                  774- 775   ///
      byte   PRMONTH16                  776- 777   ///
      byte   PRMONTH17                  778- 779   ///
      byte   PRMONTH18                  780- 781   ///
      byte   PRMONTH19                  782- 783   ///
      byte   PRMONTH20                  784- 785   ///
      byte   PRMONTH21                  786- 787   ///
      byte   PRMONTH22                  788- 789   ///
      byte   PRMONTH23                  790- 791   ///
      byte   PRMONTH24                  792- 793   ///
      byte   PRMONTH25                  794- 795   ///
      int    PRYEAR1                    796- 799   ///
      int    PRYEAR2                    800- 803   ///
      int    PRYEAR3                    804- 807   ///
      int    PRYEAR4                    808- 811   ///
      int    PRYEAR5                    812- 815   ///
      int    PRYEAR6                    816- 819   ///
      int    PRYEAR7                    820- 823   ///
      int    PRYEAR8                    824- 827   ///
      int    PRYEAR9                    828- 831   ///
      int    PRYEAR10                   832- 835   ///
      int    PRYEAR11                   836- 839   ///
      int    PRYEAR12                   840- 843   ///
      int    PRYEAR13                   844- 847   ///
      int    PRYEAR14                   848- 851   ///
      int    PRYEAR15                   852- 855   ///
      int    PRYEAR16                   856- 859   ///
      int    PRYEAR17                   860- 863   ///
      int    PRYEAR18                   864- 867   ///
      int    PRYEAR19                   868- 871   ///
      int    PRYEAR20                   872- 875   ///
      int    PRYEAR21                   876- 879   ///
      int    PRYEAR22                   880- 883   ///
      int    PRYEAR23                   884- 887   ///
      int    PRYEAR24                   888- 891   ///
      int    PRYEAR25                   892- 895   ///
      using  "ME_SID_2017_CORE.ASC"

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
label var DXPOA26                  "Diagnosis 26, present on admission indicator"
label var DXPOA27                  "Diagnosis 27, present on admission indicator"
label var DXPOA28                  "Diagnosis 28, present on admission indicator"
label var DXPOA29                  "Diagnosis 29, present on admission indicator"
label var DXPOA30                  "Diagnosis 30, present on admission indicator"
label var DXPOA31                  "Diagnosis 31, present on admission indicator"
label var DXPOA32                  "Diagnosis 32, present on admission indicator"
label var DXVER                    "Diagnosis Version"
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
label var I10_DX26                 "ICD-10-CM Diagnosis 26"
label var I10_DX27                 "ICD-10-CM Diagnosis 27"
label var I10_DX28                 "ICD-10-CM Diagnosis 28"
label var I10_DX29                 "ICD-10-CM Diagnosis 29"
label var I10_DX30                 "ICD-10-CM Diagnosis 30"
label var I10_DX31                 "ICD-10-CM Diagnosis 31"
label var I10_DX32                 "ICD-10-CM Diagnosis 32"
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

save "ME_SID_2017_CORE.dta", replace
