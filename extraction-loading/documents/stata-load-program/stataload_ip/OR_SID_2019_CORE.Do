/*****************************************************************************
* Creation Date: 11/17/2020   
* OR_SID_2019_CORE.Do
* This program will load the 2019 OR ASCII CORE File into Stata.
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
      int    BWT                         20-  23   ///
      int    DHOUR                       24-  27   ///
      byte   DIED                        28-  29   ///
      byte   DISPUB04                    30-  31   ///
      byte   DISPUNIFORM                 32-  33   ///
      str    DISP_X                      34-  35   ///
      byte   DMONTH                      36-  37   ///
      byte   DNR                         38-  39   ///
      byte   DQTR                        40-  41   ///
      int    DRG                         42-  44   ///
      byte   DRGVER                      45-  46   ///
      int    DRG_NoPOA                   47-  49   ///
      str    DSHOSPID                    50-  66   ///
      str    DXPOA1                      67        ///
      str    DXPOA2                      68        ///
      str    DXPOA3                      69        ///
      str    DXPOA4                      70        ///
      str    DXPOA5                      71        ///
      str    DXPOA6                      72        ///
      str    DXPOA7                      73        ///
      str    DXPOA8                      74        ///
      str    DXPOA9                      75        ///
      str    DXPOA10                     76        ///
      str    DXPOA11                     77        ///
      str    DXPOA12                     78        ///
      str    DXPOA13                     79        ///
      str    DXPOA14                     80        ///
      str    DXPOA15                     81        ///
      str    DXPOA16                     82        ///
      str    DXPOA17                     83        ///
      str    DXPOA18                     84        ///
      str    DXPOA19                     85        ///
      str    DXPOA20                     86        ///
      str    DXPOA21                     87        ///
      str    DXPOA22                     88        ///
      str    DXPOA23                     89        ///
      str    DXPOA24                     90        ///
      str    DXPOA25                     91        ///
      str    DXPOA26                     92        ///
      str    DXPOA27                     93        ///
      str    DXPOA28                     94        ///
      byte   FEMALE                      95-  96   ///
      byte   HCUP_ED                     97-  98   ///
      byte   HCUP_OS                     99- 100   ///
      byte   HISPANIC                   101- 102   ///
      str    HISPANIC_X                 103- 104   ///
      str    HOSPST                     105- 106   ///
      byte   HospitalUnit               107- 108   ///
      byte   I10_BIRTH                  109- 110   ///
      byte   I10_DELIVERY               111- 112   ///
      str    I10_DX1                    113- 119   ///
      str    I10_DX2                    120- 126   ///
      str    I10_DX3                    127- 133   ///
      str    I10_DX4                    134- 140   ///
      str    I10_DX5                    141- 147   ///
      str    I10_DX6                    148- 154   ///
      str    I10_DX7                    155- 161   ///
      str    I10_DX8                    162- 168   ///
      str    I10_DX9                    169- 175   ///
      str    I10_DX10                   176- 182   ///
      str    I10_DX11                   183- 189   ///
      str    I10_DX12                   190- 196   ///
      str    I10_DX13                   197- 203   ///
      str    I10_DX14                   204- 210   ///
      str    I10_DX15                   211- 217   ///
      str    I10_DX16                   218- 224   ///
      str    I10_DX17                   225- 231   ///
      str    I10_DX18                   232- 238   ///
      str    I10_DX19                   239- 245   ///
      str    I10_DX20                   246- 252   ///
      str    I10_DX21                   253- 259   ///
      str    I10_DX22                   260- 266   ///
      str    I10_DX23                   267- 273   ///
      str    I10_DX24                   274- 280   ///
      str    I10_DX25                   281- 287   ///
      str    I10_DX26                   288- 294   ///
      str    I10_DX27                   295- 301   ///
      str    I10_DX28                   302- 308   ///
      str    I10_DX_Admitting           309- 315   ///
      int    I10_NDX                    316- 318   ///
      int    I10_NPR                    319- 321   ///
      byte   I10_ORPROC                 322- 323   ///
      str    I10_PR1                    324- 330   ///
      str    I10_PR2                    331- 337   ///
      str    I10_PR3                    338- 344   ///
      str    I10_PR4                    345- 351   ///
      str    I10_PR5                    352- 358   ///
      str    I10_PR6                    359- 365   ///
      str    I10_PR7                    366- 372   ///
      str    I10_PR8                    373- 379   ///
      str    I10_PR9                    380- 386   ///
      str    I10_PR10                   387- 393   ///
      str    I10_PR11                   394- 400   ///
      str    I10_PR12                   401- 407   ///
      str    I10_PR13                   408- 414   ///
      str    I10_PR14                   415- 421   ///
      str    I10_PR15                   422- 428   ///
      str    I10_PR16                   429- 435   ///
      str    I10_PR17                   436- 442   ///
      str    I10_PR18                   443- 449   ///
      str    I10_PR19                   450- 456   ///
      str    I10_PR20                   457- 463   ///
      str    I10_PR21                   464- 470   ///
      str    I10_PR22                   471- 477   ///
      str    I10_PR23                   478- 484   ///
      str    I10_PR24                   485- 491   ///
      str    I10_PR25                   492- 498   ///
      int    I10_PROCTYPE               499- 501   ///
      byte   I10_SERVICELINE            502- 503   ///
      double KEY                        504- 518   ///
      long   LOS                        519- 523   ///
      long   LOS_X                      524- 529   ///
      byte   MDC                        530- 531   ///
      byte   MDC_NoPOA                  532- 533   ///
      long   MDNUM1_R                   534- 542   ///
      long   MDNUM2_R                   543- 551   ///
      long   MDNUM3_R                   552- 560   ///
      long   MDNUM4_R                   561- 569   ///
      byte   MEDINCSTQ                  570- 571   ///
      double OS_TIME                    572- 582   ///
      byte   PAY1                       583- 584   ///
      str    PAY1_X                     585- 593   ///
      byte   PAY2                       594- 595   ///
      str    PAY2_X                     596- 604   ///
      byte   PAY3                       605- 606   ///
      str    PAY3_X                     607- 615   ///
      int    PL_CBSA                    616- 618   ///
      byte   PL_NCHS                    619- 620   ///
      byte   PL_RUCC                    621- 622   ///
      byte   PL_UIC                     623- 624   ///
      byte   PL_UR_CAT4                 625- 626   ///
      byte   POA_Disch_Edit1            627- 628   ///
      byte   POA_Disch_Edit2            629- 630   ///
      byte   POA_Hosp_Edit1             631- 632   ///
      byte   POA_Hosp_Edit2             633- 634   ///
      byte   POA_Hosp_Edit3             635- 636   ///
      double POA_Hosp_Edit3_Value       637- 644   ///
      long   PRDAY1                     645- 649   ///
      long   PRDAY2                     650- 654   ///
      long   PRDAY3                     655- 659   ///
      long   PRDAY4                     660- 664   ///
      long   PRDAY5                     665- 669   ///
      long   PRDAY6                     670- 674   ///
      long   PRDAY7                     675- 679   ///
      long   PRDAY8                     680- 684   ///
      long   PRDAY9                     685- 689   ///
      long   PRDAY10                    690- 694   ///
      long   PRDAY11                    695- 699   ///
      long   PRDAY12                    700- 704   ///
      long   PRDAY13                    705- 709   ///
      long   PRDAY14                    710- 714   ///
      long   PRDAY15                    715- 719   ///
      long   PRDAY16                    720- 724   ///
      long   PRDAY17                    725- 729   ///
      long   PRDAY18                    730- 734   ///
      long   PRDAY19                    735- 739   ///
      long   PRDAY20                    740- 744   ///
      long   PRDAY21                    745- 749   ///
      long   PRDAY22                    750- 754   ///
      long   PRDAY23                    755- 759   ///
      long   PRDAY24                    760- 764   ///
      long   PRDAY25                    765- 769   ///
      str    PSTATE                     770- 771   ///
      str    PSTATE_GEO                 772- 773   ///
      long   PSTCO                      774- 778   ///
      long   PSTCO_GEO                  779- 783   ///
      str    PointOfOriginUB04          784        ///
      str    PointOfOrigin_X            785- 786   ///
      byte   RACE                       787- 788   ///
      byte   RACE_EDIT                  789- 790   ///
      str    RACE_X                     791- 792   ///
      double TOTCHG                     793- 802   ///
      double TOTCHG_X                   803- 817   ///
      byte   TRAN_IN                    818- 819   ///
      byte   TRAN_OUT                   820- 821   ///
      int    YEAR                       822- 825   ///
      str    ZIP                        826- 830   ///
      str    ZIP3                       831- 833   ///
      int    ZIPINC_QRTL                834- 836   ///
      int    AYEAR                      837- 840   ///
      byte   BMONTH                     841- 842   ///
      int    BYEAR                      843- 846   ///
      byte   PRMONTH1                   847- 848   ///
      byte   PRMONTH2                   849- 850   ///
      byte   PRMONTH3                   851- 852   ///
      byte   PRMONTH4                   853- 854   ///
      byte   PRMONTH5                   855- 856   ///
      byte   PRMONTH6                   857- 858   ///
      byte   PRMONTH7                   859- 860   ///
      byte   PRMONTH8                   861- 862   ///
      byte   PRMONTH9                   863- 864   ///
      byte   PRMONTH10                  865- 866   ///
      byte   PRMONTH11                  867- 868   ///
      byte   PRMONTH12                  869- 870   ///
      byte   PRMONTH13                  871- 872   ///
      byte   PRMONTH14                  873- 874   ///
      byte   PRMONTH15                  875- 876   ///
      byte   PRMONTH16                  877- 878   ///
      byte   PRMONTH17                  879- 880   ///
      byte   PRMONTH18                  881- 882   ///
      byte   PRMONTH19                  883- 884   ///
      byte   PRMONTH20                  885- 886   ///
      byte   PRMONTH21                  887- 888   ///
      byte   PRMONTH22                  889- 890   ///
      byte   PRMONTH23                  891- 892   ///
      byte   PRMONTH24                  893- 894   ///
      byte   PRMONTH25                  895- 896   ///
      int    PRYEAR1                    897- 900   ///
      int    PRYEAR2                    901- 904   ///
      int    PRYEAR3                    905- 908   ///
      int    PRYEAR4                    909- 912   ///
      int    PRYEAR5                    913- 916   ///
      int    PRYEAR6                    917- 920   ///
      int    PRYEAR7                    921- 924   ///
      int    PRYEAR8                    925- 928   ///
      int    PRYEAR9                    929- 932   ///
      int    PRYEAR10                   933- 936   ///
      int    PRYEAR11                   937- 940   ///
      int    PRYEAR12                   941- 944   ///
      int    PRYEAR13                   945- 948   ///
      int    PRYEAR14                   949- 952   ///
      int    PRYEAR15                   953- 956   ///
      int    PRYEAR16                   957- 960   ///
      int    PRYEAR17                   961- 964   ///
      int    PRYEAR18                   965- 968   ///
      int    PRYEAR19                   969- 972   ///
      int    PRYEAR20                   973- 976   ///
      int    PRYEAR21                   977- 980   ///
      int    PRYEAR22                   981- 984   ///
      int    PRYEAR23                   985- 988   ///
      int    PRYEAR24                   989- 992   ///
      int    PRYEAR25                   993- 996   ///
      using  "OR_SID_2019_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DMONTH                   "Discharge month"
label var DNR                      "Do not resuscitate indicator"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRGVER                   "DRG grouper version used on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPST                   "Hospital state postal code"
label var HospitalUnit             "Patient was discharged from a special unit within an acute care hospital (reported by source)"
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
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MDNUM4_R                 "Physician 4 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var OS_TIME                  "Observation stay time summed from UNITS"
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
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var RACE                     "Race (uniform)"
label var RACE_EDIT                "Race Edit Checks"
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
recode AHOUR                     (-999 -888 -666=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DNR                       (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
recode I10_BIRTH                 (-9 -8 -6 -5=.)
recode I10_DELIVERY              (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_ORPROC                (-9 -8 -6 -5=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode I10_SERVICELINE           (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM4_R                  (-99999999 -88888888 -66666666=.)
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
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_EDIT                 (-9 -8 -6 -5=.)
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

save "OR_SID_2019_CORE.dta", replace
