/*****************************************************************************
* Creation Date: 09/15/2022   
* NE_SID_2020_CORE.Do
* This program will load the 2020 NE ASCII CORE File into Stata.
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
      byte   ATYPE                       16-  17   ///
      byte   AWEEKEND                    18-  19   ///
      str    BILLTYPE                    20-  23   ///
      int    BWT                         24-  27   ///
      long   DaysToEvent                 28-  33   ///
      int    DHOUR                       34-  37   ///
      byte   DIED                        38-  39   ///
      str    DISP_X                      40-  41   ///
      byte   DISPUB04                    42-  43   ///
      byte   DISPUNIFORM                 44-  45   ///
      byte   DMONTH                      46-  47   ///
      byte   DQTR                        48-  49   ///
      int    DRG                         50-  52   ///
      int    DRG_NoPOA                   53-  55   ///
      byte   DRGVER                      56-  57   ///
      str    DXPOA1                      58        ///
      str    DXPOA2                      59        ///
      str    DXPOA3                      60        ///
      str    DXPOA4                      61        ///
      str    DXPOA5                      62        ///
      str    DXPOA6                      63        ///
      str    DXPOA7                      64        ///
      str    DXPOA8                      65        ///
      str    DXPOA9                      66        ///
      str    DXPOA10                     67        ///
      str    DXPOA11                     68        ///
      str    DXPOA12                     69        ///
      str    DXPOA13                     70        ///
      str    DXPOA14                     71        ///
      str    DXPOA15                     72        ///
      str    DXPOA16                     73        ///
      str    DXPOA17                     74        ///
      str    DXPOA18                     75        ///
      str    DXPOA19                     76        ///
      str    DXPOA20                     77        ///
      str    DXPOA21                     78        ///
      str    DXPOA22                     79        ///
      str    DXPOA23                     80        ///
      str    DXPOA24                     81        ///
      str    DXPOA25                     82        ///
      str    DXPOA26                     83        ///
      str    DXPOA27                     84        ///
      str    DXPOA28                     85        ///
      byte   FEMALE                      86-  87   ///
      byte   HCUP_ED                     88-  89   ///
      byte   HCUP_OS                     90-  91   ///
      byte   Homeless                    92-  93   ///
      byte   HospitalUnit                94-  95   ///
      str    HOSPST                      96-  97   ///
      int    I10_BIRTH                   98- 100   ///
      int    I10_DELIVERY               101- 103   ///
      str    I10_DX_Admitting           104- 110   ///
      str    I10_DX1                    111- 117   ///
      str    I10_DX2                    118- 124   ///
      str    I10_DX3                    125- 131   ///
      str    I10_DX4                    132- 138   ///
      str    I10_DX5                    139- 145   ///
      str    I10_DX6                    146- 152   ///
      str    I10_DX7                    153- 159   ///
      str    I10_DX8                    160- 166   ///
      str    I10_DX9                    167- 173   ///
      str    I10_DX10                   174- 180   ///
      str    I10_DX11                   181- 187   ///
      str    I10_DX12                   188- 194   ///
      str    I10_DX13                   195- 201   ///
      str    I10_DX14                   202- 208   ///
      str    I10_DX15                   209- 215   ///
      str    I10_DX16                   216- 222   ///
      str    I10_DX17                   223- 229   ///
      str    I10_DX18                   230- 236   ///
      str    I10_DX19                   237- 243   ///
      str    I10_DX20                   244- 250   ///
      str    I10_DX21                   251- 257   ///
      str    I10_DX22                   258- 264   ///
      str    I10_DX23                   265- 271   ///
      str    I10_DX24                   272- 278   ///
      str    I10_DX25                   279- 285   ///
      str    I10_DX26                   286- 292   ///
      str    I10_DX27                   293- 299   ///
      str    I10_DX28                   300- 306   ///
      int    I10_NDX                    307- 309   ///
      int    I10_NPR                    310- 312   ///
      str    I10_PR1                    313- 319   ///
      str    I10_PR2                    320- 326   ///
      str    I10_PR3                    327- 333   ///
      str    I10_PR4                    334- 340   ///
      str    I10_PR5                    341- 347   ///
      str    I10_PR6                    348- 354   ///
      str    I10_PR7                    355- 361   ///
      str    I10_PR8                    362- 368   ///
      str    I10_PR9                    369- 375   ///
      str    I10_PR10                   376- 382   ///
      str    I10_PR11                   383- 389   ///
      str    I10_PR12                   390- 396   ///
      str    I10_PR13                   397- 403   ///
      str    I10_PR14                   404- 410   ///
      str    I10_PR15                   411- 417   ///
      str    I10_PR16                   418- 424   ///
      str    I10_PR17                   425- 431   ///
      str    I10_PR18                   432- 438   ///
      str    I10_PR19                   439- 445   ///
      str    I10_PR20                   446- 452   ///
      str    I10_PR21                   453- 459   ///
      str    I10_PR22                   460- 466   ///
      str    I10_PR23                   467- 473   ///
      str    I10_PR24                   474- 480   ///
      str    I10_PR25                   481- 487   ///
      int    I10_PROCTYPE               488- 490   ///
      byte   I10_SERVICELINE            491- 492   ///
      double KEY                        493- 507   ///
      long   LOS                        508- 512   ///
      long   LOS_X                      513- 518   ///
      byte   MDC                        519- 520   ///
      byte   MDC_NoPOA                  521- 522   ///
      byte   MEDINCSTQ                  523- 524   ///
      double OS_TIME                    525- 535   ///
      byte   PAY1                       536- 537   ///
      str    PAY1_X                     538- 539   ///
      byte   PAY2                       540- 541   ///
      str    PAY2_X                     542- 543   ///
      byte   PAY3                       544- 545   ///
      str    PAY3_X                     546- 547   ///
      byte   PCLASS_ORPROC              548- 549   ///
      int    PL_CBSA                    550- 552   ///
      byte   PL_NCHS                    553- 554   ///
      byte   PL_RUCC                    555- 556   ///
      byte   PL_UIC                     557- 558   ///
      byte   PL_UR_CAT4                 559- 560   ///
      byte   POA_Disch_Edit1            561- 562   ///
      byte   POA_Disch_Edit2            563- 564   ///
      byte   POA_Hosp_Edit1             565- 566   ///
      byte   POA_Hosp_Edit2             567- 568   ///
      byte   POA_Hosp_Edit3             569- 570   ///
      double POA_Hosp_Edit3_Value       571- 578   ///
      str    PointOfOrigin_X            579        ///
      str    PointOfOriginUB04          580        ///
      long   PRDAY1                     581- 585   ///
      long   PRDAY2                     586- 590   ///
      long   PRDAY3                     591- 595   ///
      long   PRDAY4                     596- 600   ///
      long   PRDAY5                     601- 605   ///
      long   PRDAY6                     606- 610   ///
      long   PRDAY7                     611- 615   ///
      long   PRDAY8                     616- 620   ///
      long   PRDAY9                     621- 625   ///
      long   PRDAY10                    626- 630   ///
      long   PRDAY11                    631- 635   ///
      long   PRDAY12                    636- 640   ///
      long   PRDAY13                    641- 645   ///
      long   PRDAY14                    646- 650   ///
      long   PRDAY15                    651- 655   ///
      long   PRDAY16                    656- 660   ///
      long   PRDAY17                    661- 665   ///
      long   PRDAY18                    666- 670   ///
      long   PRDAY19                    671- 675   ///
      long   PRDAY20                    676- 680   ///
      long   PRDAY21                    681- 685   ///
      long   PRDAY22                    686- 690   ///
      long   PRDAY23                    691- 695   ///
      long   PRDAY24                    696- 700   ///
      long   PRDAY25                    701- 705   ///
      str    PSTATE                     706- 707   ///
      str    PSTATE_GEO                 708- 709   ///
      long   PSTCO                      710- 714   ///
      long   PSTCO_GEO                  715- 719   ///
      double TOTCHG                     720- 729   ///
      double TOTCHG_X                   730- 744   ///
      byte   TRAN_IN                    745- 746   ///
      byte   TRAN_OUT                   747- 748   ///
      long   VisitLink                  749- 757   ///
      int    YEAR                       758- 761   ///
      str    ZIP                        762- 766   ///
      str    ZIP3                       767- 769   ///
      int    ZIPINC_QRTL                770- 772   ///
      str    TOWN                       773- 794   ///
      int    AYEAR                      795- 798   ///
      byte   BMONTH                     799- 800   ///
      int    BYEAR                      801- 804   ///
      byte   PRMONTH1                   805- 806   ///
      byte   PRMONTH2                   807- 808   ///
      byte   PRMONTH3                   809- 810   ///
      byte   PRMONTH4                   811- 812   ///
      byte   PRMONTH5                   813- 814   ///
      byte   PRMONTH6                   815- 816   ///
      byte   PRMONTH7                   817- 818   ///
      byte   PRMONTH8                   819- 820   ///
      byte   PRMONTH9                   821- 822   ///
      byte   PRMONTH10                  823- 824   ///
      byte   PRMONTH11                  825- 826   ///
      byte   PRMONTH12                  827- 828   ///
      byte   PRMONTH13                  829- 830   ///
      byte   PRMONTH14                  831- 832   ///
      byte   PRMONTH15                  833- 834   ///
      byte   PRMONTH16                  835- 836   ///
      byte   PRMONTH17                  837- 838   ///
      byte   PRMONTH18                  839- 840   ///
      byte   PRMONTH19                  841- 842   ///
      byte   PRMONTH20                  843- 844   ///
      byte   PRMONTH21                  845- 846   ///
      byte   PRMONTH22                  847- 848   ///
      byte   PRMONTH23                  849- 850   ///
      byte   PRMONTH24                  851- 852   ///
      byte   PRMONTH25                  853- 854   ///
      int    PRYEAR1                    855- 858   ///
      int    PRYEAR2                    859- 862   ///
      int    PRYEAR3                    863- 866   ///
      int    PRYEAR4                    867- 870   ///
      int    PRYEAR5                    871- 874   ///
      int    PRYEAR6                    875- 878   ///
      int    PRYEAR7                    879- 882   ///
      int    PRYEAR8                    883- 886   ///
      int    PRYEAR9                    887- 890   ///
      int    PRYEAR10                   891- 894   ///
      int    PRYEAR11                   895- 898   ///
      int    PRYEAR12                   899- 902   ///
      int    PRYEAR13                   903- 906   ///
      int    PRYEAR14                   907- 910   ///
      int    PRYEAR15                   911- 914   ///
      int    PRYEAR16                   915- 918   ///
      int    PRYEAR17                   919- 922   ///
      int    PRYEAR18                   923- 926   ///
      int    PRYEAR19                   927- 930   ///
      int    PRYEAR20                   931- 934   ///
      int    PRYEAR21                   935- 938   ///
      int    PRYEAR22                   939- 942   ///
      int    PRYEAR23                   943- 946   ///
      int    PRYEAR24                   947- 950   ///
      int    PRYEAR25                   951- 954   ///
      using  "NE_SID_2020_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var Homeless                 "Indicator that patient is homeless"
label var HospitalUnit             "Patient was discharged from a special unit within an acute care hospital (reported by source)"
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
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
label var PAY3                     "Tertiary expected payer (uniform)"
label var PAY3_X                   "Tertiary expected payer (as received from source)"
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
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var VisitLink                "Visit linkage variable"
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var TOWN                     "Patient town of residence (as received from source)"
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
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
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
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
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
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
recode PAY3                      (-9 -8 -6 -5=.)
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

save "NE_SID_2020_CORE.dta", replace
