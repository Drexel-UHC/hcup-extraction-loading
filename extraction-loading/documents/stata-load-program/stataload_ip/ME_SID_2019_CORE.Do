/*****************************************************************************
* Creation Date: 09/07/2022   
* ME_SID_2019_CORE.Do
* This program will load the 2019 ME ASCII CORE File into Stata.
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
      int    AHOUR                        1-   4   ///
      byte   AMONTH                       5-   6   ///
      byte   ATYPE                        7-   8   ///
      byte   AWEEKEND                     9-  10   ///
      int    DHOUR                       11-  14   ///
      byte   DIED                        15-  16   ///
      byte   DISPUB04                    17-  18   ///
      byte   DISPUNIFORM                 19-  20   ///
      byte   DMONTH                      21-  22   ///
      byte   DQTR                        23-  24   ///
      int    DRG                         25-  27   ///
      byte   DRGVER                      28-  29   ///
      int    DRG_NoPOA                   30-  32   ///
      str    DXPOA1                      33        ///
      str    DXPOA2                      34        ///
      str    DXPOA3                      35        ///
      str    DXPOA4                      36        ///
      str    DXPOA5                      37        ///
      str    DXPOA6                      38        ///
      str    DXPOA7                      39        ///
      str    DXPOA8                      40        ///
      str    DXPOA9                      41        ///
      str    DXPOA10                     42        ///
      str    DXPOA11                     43        ///
      str    DXPOA12                     44        ///
      str    DXPOA13                     45        ///
      str    DXPOA14                     46        ///
      str    DXPOA15                     47        ///
      str    DXPOA16                     48        ///
      str    DXPOA17                     49        ///
      str    DXPOA18                     50        ///
      str    DXPOA19                     51        ///
      str    DXPOA20                     52        ///
      str    DXPOA21                     53        ///
      str    DXPOA22                     54        ///
      str    DXPOA23                     55        ///
      str    DXPOA24                     56        ///
      str    DXPOA25                     57        ///
      str    DXPOA26                     58        ///
      str    DXPOA27                     59        ///
      str    DXPOA28                     60        ///
      str    DXPOA29                     61        ///
      str    DXPOA30                     62        ///
      byte   FEMALE                      63-  64   ///
      byte   HCUP_ED                     65-  66   ///
      byte   HCUP_OS                     67-  68   ///
      str    HOSPST                      69-  70   ///
      int    I10_BIRTH                   71-  73   ///
      int    I10_DELIVERY                74-  76   ///
      str    I10_DX1                     77-  83   ///
      str    I10_DX2                     84-  90   ///
      str    I10_DX3                     91-  97   ///
      str    I10_DX4                     98- 104   ///
      str    I10_DX5                    105- 111   ///
      str    I10_DX6                    112- 118   ///
      str    I10_DX7                    119- 125   ///
      str    I10_DX8                    126- 132   ///
      str    I10_DX9                    133- 139   ///
      str    I10_DX10                   140- 146   ///
      str    I10_DX11                   147- 153   ///
      str    I10_DX12                   154- 160   ///
      str    I10_DX13                   161- 167   ///
      str    I10_DX14                   168- 174   ///
      str    I10_DX15                   175- 181   ///
      str    I10_DX16                   182- 188   ///
      str    I10_DX17                   189- 195   ///
      str    I10_DX18                   196- 202   ///
      str    I10_DX19                   203- 209   ///
      str    I10_DX20                   210- 216   ///
      str    I10_DX21                   217- 223   ///
      str    I10_DX22                   224- 230   ///
      str    I10_DX23                   231- 237   ///
      str    I10_DX24                   238- 244   ///
      str    I10_DX25                   245- 251   ///
      str    I10_DX26                   252- 258   ///
      str    I10_DX27                   259- 265   ///
      str    I10_DX28                   266- 272   ///
      str    I10_DX29                   273- 279   ///
      str    I10_DX30                   280- 286   ///
      str    I10_DX_Admitting           287- 293   ///
      int    I10_NDX                    294- 296   ///
      int    I10_NPR                    297- 299   ///
      byte   I10_ORPROC                 300- 301   ///
      str    I10_PR1                    302- 308   ///
      str    I10_PR2                    309- 315   ///
      str    I10_PR3                    316- 322   ///
      str    I10_PR4                    323- 329   ///
      str    I10_PR5                    330- 336   ///
      str    I10_PR6                    337- 343   ///
      str    I10_PR7                    344- 350   ///
      str    I10_PR8                    351- 357   ///
      str    I10_PR9                    358- 364   ///
      str    I10_PR10                   365- 371   ///
      str    I10_PR11                   372- 378   ///
      str    I10_PR12                   379- 385   ///
      str    I10_PR13                   386- 392   ///
      str    I10_PR14                   393- 399   ///
      str    I10_PR15                   400- 406   ///
      str    I10_PR16                   407- 413   ///
      str    I10_PR17                   414- 420   ///
      str    I10_PR18                   421- 427   ///
      str    I10_PR19                   428- 434   ///
      str    I10_PR20                   435- 441   ///
      str    I10_PR21                   442- 448   ///
      str    I10_PR22                   449- 455   ///
      str    I10_PR23                   456- 462   ///
      str    I10_PR24                   463- 469   ///
      str    I10_PR25                   470- 476   ///
      int    I10_PROCTYPE               477- 479   ///
      byte   I10_SERVICELINE            480- 481   ///
      double KEY                        482- 496   ///
      long   LOS                        497- 501   ///
      byte   MDC                        502- 503   ///
      byte   MDC_NoPOA                  504- 505   ///
      str    MDSPEC1                    506- 507   ///
      str    MDSPEC2                    508- 509   ///
      byte   MEDINCSTQ                  510- 511   ///
      long   MRN_R                      512- 520   ///
      double OS_TIME                    521- 531   ///
      byte   PAY1                       532- 533   ///
      byte   PAY2                       534- 535   ///
      byte   PAY3                       536- 537   ///
      int    PL_CBSA                    538- 540   ///
      byte   PL_NCHS                    541- 542   ///
      byte   PL_UIC                     543- 544   ///
      byte   PL_UR_CAT4                 545- 546   ///
      byte   POA_Disch_Edit1            547- 548   ///
      byte   POA_Disch_Edit2            549- 550   ///
      byte   POA_Hosp_Edit1             551- 552   ///
      byte   POA_Hosp_Edit2             553- 554   ///
      byte   POA_Hosp_Edit3             555- 556   ///
      double POA_Hosp_Edit3_Value       557- 564   ///
      long   PRDAY1                     565- 569   ///
      long   PRDAY2                     570- 574   ///
      long   PRDAY3                     575- 579   ///
      long   PRDAY4                     580- 584   ///
      long   PRDAY5                     585- 589   ///
      long   PRDAY6                     590- 594   ///
      long   PRDAY7                     595- 599   ///
      long   PRDAY8                     600- 604   ///
      long   PRDAY9                     605- 609   ///
      long   PRDAY10                    610- 614   ///
      long   PRDAY11                    615- 619   ///
      long   PRDAY12                    620- 624   ///
      long   PRDAY13                    625- 629   ///
      long   PRDAY14                    630- 634   ///
      long   PRDAY15                    635- 639   ///
      long   PRDAY16                    640- 644   ///
      long   PRDAY17                    645- 649   ///
      long   PRDAY18                    650- 654   ///
      long   PRDAY19                    655- 659   ///
      long   PRDAY20                    660- 664   ///
      long   PRDAY21                    665- 669   ///
      long   PRDAY22                    670- 674   ///
      long   PRDAY23                    675- 679   ///
      long   PRDAY24                    680- 684   ///
      long   PRDAY25                    685- 689   ///
      str    PSTATE                     690- 691   ///
      str    PSTATE_GEO                 692- 693   ///
      long   PSTCO                      694- 698   ///
      long   PSTCO_GEO                  699- 703   ///
      str    PointOfOriginUB04          704        ///
      byte   TRAN_IN                    705- 706   ///
      byte   TRAN_OUT                   707- 708   ///
      int    YEAR                       709- 712   ///
      str    ZIP3                       713- 715   ///
      int    ZIPINC_QRTL                716- 718   ///
      int    AGEGROUP                   719- 721   ///
      long   HOSPID                     722- 726   ///
      int    AYEAR                      727- 730   ///
      byte   PRMONTH1                   731- 732   ///
      byte   PRMONTH2                   733- 734   ///
      byte   PRMONTH3                   735- 736   ///
      byte   PRMONTH4                   737- 738   ///
      byte   PRMONTH5                   739- 740   ///
      byte   PRMONTH6                   741- 742   ///
      byte   PRMONTH7                   743- 744   ///
      byte   PRMONTH8                   745- 746   ///
      byte   PRMONTH9                   747- 748   ///
      byte   PRMONTH10                  749- 750   ///
      byte   PRMONTH11                  751- 752   ///
      byte   PRMONTH12                  753- 754   ///
      byte   PRMONTH13                  755- 756   ///
      byte   PRMONTH14                  757- 758   ///
      byte   PRMONTH15                  759- 760   ///
      byte   PRMONTH16                  761- 762   ///
      byte   PRMONTH17                  763- 764   ///
      byte   PRMONTH18                  765- 766   ///
      byte   PRMONTH19                  767- 768   ///
      byte   PRMONTH20                  769- 770   ///
      byte   PRMONTH21                  771- 772   ///
      byte   PRMONTH22                  773- 774   ///
      byte   PRMONTH23                  775- 776   ///
      byte   PRMONTH24                  777- 778   ///
      byte   PRMONTH25                  779- 780   ///
      int    PRYEAR1                    781- 784   ///
      int    PRYEAR2                    785- 788   ///
      int    PRYEAR3                    789- 792   ///
      int    PRYEAR4                    793- 796   ///
      int    PRYEAR5                    797- 800   ///
      int    PRYEAR6                    801- 804   ///
      int    PRYEAR7                    805- 808   ///
      int    PRYEAR8                    809- 812   ///
      int    PRYEAR9                    813- 816   ///
      int    PRYEAR10                   817- 820   ///
      int    PRYEAR11                   821- 824   ///
      int    PRYEAR12                   825- 828   ///
      int    PRYEAR13                   829- 832   ///
      int    PRYEAR14                   833- 836   ///
      int    PRYEAR15                   837- 840   ///
      int    PRYEAR16                   841- 844   ///
      int    PRYEAR17                   845- 848   ///
      int    PRYEAR18                   849- 852   ///
      int    PRYEAR19                   853- 856   ///
      int    PRYEAR20                   857- 860   ///
      int    PRYEAR21                   861- 864   ///
      int    PRYEAR22                   865- 868   ///
      int    PRYEAR23                   869- 872   ///
      int    PRYEAR24                   873- 876   ///
      int    PRYEAR25                   877- 880   ///
      using  "ME_SID_2019_CORE.ASC"

***  Assign labels to the data elements ***
label var AHOUR                    "Admission Hour"
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
label var DRGVER                   "DRG grouper version used on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HOSPST                   "Hospital state postal code"
label var I10_BIRTH                "ICD-10-CM Birth Indicator"
label var I10_DELIVERY             "ICD-10-CM Delivery Indicator"
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
label var I10_DX_Admitting         "ICD-10-CM Admitting Diagnosis Code"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
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
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
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
recode AHOUR                     (-999 -888 -666=.)
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
recode DRGVER                    (-9 -8 -6 -5=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode I10_BIRTH                 (-99 -88 -66=.)
recode I10_DELIVERY              (-99 -88 -66=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_ORPROC                (-9 -8 -6 -5=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode I10_SERVICELINE           (-9 -8 -6 -5=.)
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
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
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

save "ME_SID_2019_CORE.dta", replace
