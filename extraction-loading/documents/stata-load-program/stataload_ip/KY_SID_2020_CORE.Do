/*****************************************************************************
* Creation Date: 08/27/2021   
* KY_SID_2020_CORE.Do
* This program will load the 2020 KY ASCII CORE File into Stata.
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
      byte   AMONTH                      10-  11   ///
      byte   ATYPE                       12-  13   ///
      byte   AWEEKEND                    14-  15   ///
      str    BILLTYPE                    16-  19   ///
      int    BWT                         20-  23   ///
      byte   DIED                        24-  25   ///
      str    DISP_X                      26-  27   ///
      byte   DISPUB04                    28-  29   ///
      byte   DISPUNIFORM                 30-  31   ///
      byte   DMONTH                      32-  33   ///
      byte   DNR                         34-  35   ///
      byte   DQTR                        36-  37   ///
      int    DRG                         38-  40   ///
      int    DRG_NoPOA                   41-  43   ///
      byte   DRGVER                      44-  45   ///
      str    DSHOSPID                    46-  62   ///
      str    DXPOA1                      63        ///
      str    DXPOA2                      64        ///
      str    DXPOA3                      65        ///
      str    DXPOA4                      66        ///
      str    DXPOA5                      67        ///
      str    DXPOA6                      68        ///
      str    DXPOA7                      69        ///
      str    DXPOA8                      70        ///
      str    DXPOA9                      71        ///
      str    DXPOA10                     72        ///
      str    DXPOA11                     73        ///
      str    DXPOA12                     74        ///
      str    DXPOA13                     75        ///
      str    DXPOA14                     76        ///
      str    DXPOA15                     77        ///
      str    DXPOA16                     78        ///
      str    DXPOA17                     79        ///
      str    DXPOA18                     80        ///
      str    DXPOA19                     81        ///
      str    DXPOA20                     82        ///
      str    DXPOA21                     83        ///
      str    DXPOA22                     84        ///
      str    DXPOA23                     85        ///
      str    DXPOA24                     86        ///
      str    DXPOA25                     87        ///
      str    DXPOA26                     88        ///
      str    DXPOA27                     89        ///
      str    DXPOA28                     90        ///
      str    DXPOA29                     91        ///
      byte   FEMALE                      92-  93   ///
      byte   HCUP_ED                     94-  95   ///
      byte   HCUP_OS                     96-  97   ///
      byte   HISPANIC                    98-  99   ///
      str    HISPANIC_X                 100- 101   ///
      str    HOSP_NPI                   102- 111   ///
      str    HOSPST                     112- 113   ///
      int    I10_BIRTH                  114- 116   ///
      int    I10_DELIVERY               117- 119   ///
      str    I10_DX_Admitting           120- 126   ///
      str    I10_DX1                    127- 133   ///
      str    I10_DX2                    134- 140   ///
      str    I10_DX3                    141- 147   ///
      str    I10_DX4                    148- 154   ///
      str    I10_DX5                    155- 161   ///
      str    I10_DX6                    162- 168   ///
      str    I10_DX7                    169- 175   ///
      str    I10_DX8                    176- 182   ///
      str    I10_DX9                    183- 189   ///
      str    I10_DX10                   190- 196   ///
      str    I10_DX11                   197- 203   ///
      str    I10_DX12                   204- 210   ///
      str    I10_DX13                   211- 217   ///
      str    I10_DX14                   218- 224   ///
      str    I10_DX15                   225- 231   ///
      str    I10_DX16                   232- 238   ///
      str    I10_DX17                   239- 245   ///
      str    I10_DX18                   246- 252   ///
      str    I10_DX19                   253- 259   ///
      str    I10_DX20                   260- 266   ///
      str    I10_DX21                   267- 273   ///
      str    I10_DX22                   274- 280   ///
      str    I10_DX23                   281- 287   ///
      str    I10_DX24                   288- 294   ///
      str    I10_DX25                   295- 301   ///
      str    I10_DX26                   302- 308   ///
      str    I10_DX27                   309- 315   ///
      str    I10_DX28                   316- 322   ///
      str    I10_DX29                   323- 329   ///
      int    I10_NDX                    330- 332   ///
      int    I10_NPR                    333- 335   ///
      str    I10_PR1                    336- 342   ///
      str    I10_PR2                    343- 349   ///
      str    I10_PR3                    350- 356   ///
      str    I10_PR4                    357- 363   ///
      str    I10_PR5                    364- 370   ///
      str    I10_PR6                    371- 377   ///
      str    I10_PR7                    378- 384   ///
      str    I10_PR8                    385- 391   ///
      str    I10_PR9                    392- 398   ///
      str    I10_PR10                   399- 405   ///
      str    I10_PR11                   406- 412   ///
      str    I10_PR12                   413- 419   ///
      str    I10_PR13                   420- 426   ///
      str    I10_PR14                   427- 433   ///
      str    I10_PR15                   434- 440   ///
      str    I10_PR16                   441- 447   ///
      str    I10_PR17                   448- 454   ///
      str    I10_PR18                   455- 461   ///
      str    I10_PR19                   462- 468   ///
      str    I10_PR20                   469- 475   ///
      str    I10_PR21                   476- 482   ///
      str    I10_PR22                   483- 489   ///
      str    I10_PR23                   490- 496   ///
      str    I10_PR24                   497- 503   ///
      str    I10_PR25                   504- 510   ///
      int    I10_PROCTYPE               511- 513   ///
      byte   I10_SERVICELINE            514- 515   ///
      double KEY                        516- 530   ///
      long   LOS                        531- 535   ///
      long   LOS_X                      536- 541   ///
      byte   MDC                        542- 543   ///
      byte   MDC_NoPOA                  544- 545   ///
      byte   MEDINCSTQ                  546- 547   ///
      double OS_TIME                    548- 558   ///
      byte   PAY1                       559- 560   ///
      str    PAY1_X                     561- 565   ///
      byte   PAY2                       566- 567   ///
      str    PAY2_X                     568- 572   ///
      byte   PAY3                       573- 574   ///
      str    PAY3_X                     575- 579   ///
      byte   PCLASS_ORPROC              580- 581   ///
      int    PL_CBSA                    582- 584   ///
      byte   PL_NCHS                    585- 586   ///
      byte   PL_RUCC                    587- 588   ///
      byte   PL_UIC                     589- 590   ///
      byte   PL_UR_CAT4                 591- 592   ///
      byte   POA_Disch_Edit1            593- 594   ///
      byte   POA_Disch_Edit2            595- 596   ///
      byte   POA_Hosp_Edit1             597- 598   ///
      byte   POA_Hosp_Edit2             599- 600   ///
      byte   POA_Hosp_Edit3             601- 602   ///
      double POA_Hosp_Edit3_Value       603- 610   ///
      str    PointOfOrigin_X            611        ///
      str    PointOfOriginUB04          612        ///
      long   PRDAY1                     613- 617   ///
      long   PRDAY2                     618- 622   ///
      long   PRDAY3                     623- 627   ///
      long   PRDAY4                     628- 632   ///
      long   PRDAY5                     633- 637   ///
      long   PRDAY6                     638- 642   ///
      long   PRDAY7                     643- 647   ///
      long   PRDAY8                     648- 652   ///
      long   PRDAY9                     653- 657   ///
      long   PRDAY10                    658- 662   ///
      long   PRDAY11                    663- 667   ///
      long   PRDAY12                    668- 672   ///
      long   PRDAY13                    673- 677   ///
      long   PRDAY14                    678- 682   ///
      long   PRDAY15                    683- 687   ///
      long   PRDAY16                    688- 692   ///
      long   PRDAY17                    693- 697   ///
      long   PRDAY18                    698- 702   ///
      long   PRDAY19                    703- 707   ///
      long   PRDAY20                    708- 712   ///
      long   PRDAY21                    713- 717   ///
      long   PRDAY22                    718- 722   ///
      long   PRDAY23                    723- 727   ///
      long   PRDAY24                    728- 732   ///
      long   PRDAY25                    733- 737   ///
      str    PSTATE                     738- 739   ///
      str    PSTATE_GEO                 740- 741   ///
      long   PSTCO                      742- 746   ///
      long   PSTCO_GEO                  747- 751   ///
      byte   RACE                       752- 753   ///
      float  RACE_PCT_MISS_HOSP         754- 760   ///
      str    RACE_X                     761- 762   ///
      double TOTCHG                     763- 772   ///
      double TOTCHG_X                   773- 787   ///
      byte   TRAN_IN                    788- 789   ///
      byte   TRAN_OUT                   790- 791   ///
      int    YEAR                       792- 795   ///
      str    ZIP                        796- 800   ///
      str    ZIP3                       801- 803   ///
      int    ZIPINC_QRTL                804- 806   ///
      int    AYEAR                      807- 810   ///
      byte   BMONTH                     811- 812   ///
      int    BYEAR                      813- 816   ///
      byte   PRMONTH1                   817- 818   ///
      byte   PRMONTH2                   819- 820   ///
      byte   PRMONTH3                   821- 822   ///
      byte   PRMONTH4                   823- 824   ///
      byte   PRMONTH5                   825- 826   ///
      byte   PRMONTH6                   827- 828   ///
      byte   PRMONTH7                   829- 830   ///
      byte   PRMONTH8                   831- 832   ///
      byte   PRMONTH9                   833- 834   ///
      byte   PRMONTH10                  835- 836   ///
      byte   PRMONTH11                  837- 838   ///
      byte   PRMONTH12                  839- 840   ///
      byte   PRMONTH13                  841- 842   ///
      byte   PRMONTH14                  843- 844   ///
      byte   PRMONTH15                  845- 846   ///
      byte   PRMONTH16                  847- 848   ///
      byte   PRMONTH17                  849- 850   ///
      byte   PRMONTH18                  851- 852   ///
      byte   PRMONTH19                  853- 854   ///
      byte   PRMONTH20                  855- 856   ///
      byte   PRMONTH21                  857- 858   ///
      byte   PRMONTH22                  859- 860   ///
      byte   PRMONTH23                  861- 862   ///
      byte   PRMONTH24                  863- 864   ///
      byte   PRMONTH25                  865- 866   ///
      int    PRYEAR1                    867- 870   ///
      int    PRYEAR2                    871- 874   ///
      int    PRYEAR3                    875- 878   ///
      int    PRYEAR4                    879- 882   ///
      int    PRYEAR5                    883- 886   ///
      int    PRYEAR6                    887- 890   ///
      int    PRYEAR7                    891- 894   ///
      int    PRYEAR8                    895- 898   ///
      int    PRYEAR9                    899- 902   ///
      int    PRYEAR10                   903- 906   ///
      int    PRYEAR11                   907- 910   ///
      int    PRYEAR12                   911- 914   ///
      int    PRYEAR13                   915- 918   ///
      int    PRYEAR14                   919- 922   ///
      int    PRYEAR15                   923- 926   ///
      int    PRYEAR16                   927- 930   ///
      int    PRYEAR17                   931- 934   ///
      int    PRYEAR18                   935- 938   ///
      int    PRYEAR19                   939- 942   ///
      int    PRYEAR20                   943- 946   ///
      int    PRYEAR21                   947- 950   ///
      int    PRYEAR22                   951- 954   ///
      int    PRYEAR23                   955- 958   ///
      int    PRYEAR24                   959- 962   ///
      int    PRYEAR25                   963- 966   ///
      using  "KY_SID_2020_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var BWT                      "Birth weight in grams"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DNR                      "Do not resuscitate indicator"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSP_NPI                 "Hospital NPI"
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
label var RACE                     "Race (uniform)"
label var RACE_PCT_MISS_HOSP       "Hospital percentage of missing or invalid race values"
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
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DNR                       (-9 -8 -6 -5=.)
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
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_PCT_MISS_HOSP        (-999.99 -888.88 -666.66=.)
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

save "KY_SID_2020_CORE.dta", replace
