/*****************************************************************************
* Creation Date: 06/14/2021   
* VT_SID_2019_CORE.Do
* This program will load the 2019 VT ASCII CORE File into Stata.
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
      int    DHOUR                       28-  31   ///
      byte   DIED                        32-  33   ///
      byte   DISPUB04                    34-  35   ///
      byte   DISPUNIFORM                 36-  37   ///
      str    DISP_X                      38-  39   ///
      byte   DMONTH                      40-  41   ///
      byte   DQTR                        42-  43   ///
      int    DRG                         44-  46   ///
      byte   DRGVER                      47-  48   ///
      int    DRG_NoPOA                   49-  51   ///
      str    DSHOSPID                    52-  68   ///
      str    DXPOA1                      69        ///
      str    DXPOA2                      70        ///
      str    DXPOA3                      71        ///
      str    DXPOA4                      72        ///
      str    DXPOA5                      73        ///
      str    DXPOA6                      74        ///
      str    DXPOA7                      75        ///
      str    DXPOA8                      76        ///
      str    DXPOA9                      77        ///
      str    DXPOA10                     78        ///
      str    DXPOA11                     79        ///
      str    DXPOA12                     80        ///
      str    DXPOA13                     81        ///
      str    DXPOA14                     82        ///
      str    DXPOA15                     83        ///
      str    DXPOA16                     84        ///
      str    DXPOA17                     85        ///
      str    DXPOA18                     86        ///
      str    DXPOA19                     87        ///
      str    DXPOA20                     88        ///
      str    DXPOA21                     89        ///
      str    DXPOA22                     90        ///
      str    DXPOA23                     91        ///
      long   DaysToEvent                 92-  97   ///
      byte   FEMALE                      98-  99   ///
      byte   HCUP_ED                    100- 101   ///
      byte   HCUP_OS                    102- 103   ///
      byte   HISPANIC                   104- 105   ///
      str    HISPANIC_X                 106        ///
      str    HOSPST                     107- 108   ///
      str    HOSP_NPI                   109- 118   ///
      int    I10_BIRTH                  119- 121   ///
      int    I10_DELIVERY               122- 124   ///
      str    I10_DX1                    125- 131   ///
      str    I10_DX2                    132- 138   ///
      str    I10_DX3                    139- 145   ///
      str    I10_DX4                    146- 152   ///
      str    I10_DX5                    153- 159   ///
      str    I10_DX6                    160- 166   ///
      str    I10_DX7                    167- 173   ///
      str    I10_DX8                    174- 180   ///
      str    I10_DX9                    181- 187   ///
      str    I10_DX10                   188- 194   ///
      str    I10_DX11                   195- 201   ///
      str    I10_DX12                   202- 208   ///
      str    I10_DX13                   209- 215   ///
      str    I10_DX14                   216- 222   ///
      str    I10_DX15                   223- 229   ///
      str    I10_DX16                   230- 236   ///
      str    I10_DX17                   237- 243   ///
      str    I10_DX18                   244- 250   ///
      str    I10_DX19                   251- 257   ///
      str    I10_DX20                   258- 264   ///
      str    I10_DX21                   265- 271   ///
      str    I10_DX22                   272- 278   ///
      str    I10_DX23                   279- 285   ///
      str    I10_DX_Admitting           286- 292   ///
      int    I10_NDX                    293- 295   ///
      int    I10_NPR                    296- 298   ///
      byte   I10_ORPROC                 299- 300   ///
      str    I10_PR1                    301- 307   ///
      str    I10_PR2                    308- 314   ///
      str    I10_PR3                    315- 321   ///
      str    I10_PR4                    322- 328   ///
      str    I10_PR5                    329- 335   ///
      str    I10_PR6                    336- 342   ///
      str    I10_PR7                    343- 349   ///
      str    I10_PR8                    350- 356   ///
      str    I10_PR9                    357- 363   ///
      str    I10_PR10                   364- 370   ///
      str    I10_PR11                   371- 377   ///
      str    I10_PR12                   378- 384   ///
      str    I10_PR13                   385- 391   ///
      str    I10_PR14                   392- 398   ///
      str    I10_PR15                   399- 405   ///
      str    I10_PR16                   406- 412   ///
      str    I10_PR17                   413- 419   ///
      str    I10_PR18                   420- 426   ///
      str    I10_PR19                   427- 433   ///
      str    I10_PR20                   434- 440   ///
      int    I10_PROCTYPE               441- 443   ///
      byte   I10_SERVICELINE            444- 445   ///
      double KEY                        446- 460   ///
      long   LOS                        461- 465   ///
      long   LOS_X                      466- 471   ///
      byte   MDC                        472- 473   ///
      byte   MDC_NoPOA                  474- 475   ///
      byte   MEDINCSTQ                  476- 477   ///
      int    OBSERVATION                478- 481   ///
      byte   PAY1                       482- 483   ///
      str    PAY1_X                     484- 485   ///
      byte   PAY2                       486- 487   ///
      str    PAY2_X                     488- 489   ///
      byte   PAY3                       490- 491   ///
      str    PAY3_X                     492- 493   ///
      str    PAYER1_X                   494- 499   ///
      str    PAYER2_X                   500- 505   ///
      str    PAYER3_X                   506- 511   ///
      int    PL_CBSA                    512- 514   ///
      byte   PL_NCHS                    515- 516   ///
      byte   PL_RUCC                    517- 518   ///
      byte   PL_UIC                     519- 520   ///
      byte   PL_UR_CAT4                 521- 522   ///
      byte   POA_Disch_Edit1            523- 524   ///
      byte   POA_Disch_Edit2            525- 526   ///
      byte   POA_Hosp_Edit1             527- 528   ///
      byte   POA_Hosp_Edit2             529- 530   ///
      byte   POA_Hosp_Edit3             531- 532   ///
      double POA_Hosp_Edit3_Value       533- 540   ///
      long   PRDAY1                     541- 545   ///
      long   PRDAY2                     546- 550   ///
      long   PRDAY3                     551- 555   ///
      long   PRDAY4                     556- 560   ///
      long   PRDAY5                     561- 565   ///
      long   PRDAY6                     566- 570   ///
      long   PRDAY7                     571- 575   ///
      long   PRDAY8                     576- 580   ///
      long   PRDAY9                     581- 585   ///
      long   PRDAY10                    586- 590   ///
      long   PRDAY11                    591- 595   ///
      long   PRDAY12                    596- 600   ///
      long   PRDAY13                    601- 605   ///
      long   PRDAY14                    606- 610   ///
      long   PRDAY15                    611- 615   ///
      long   PRDAY16                    616- 620   ///
      long   PRDAY17                    621- 625   ///
      long   PRDAY18                    626- 630   ///
      long   PRDAY19                    631- 635   ///
      long   PRDAY20                    636- 640   ///
      str    PSTATE                     641- 642   ///
      str    PSTATE_GEO                 643- 644   ///
      long   PSTCO                      645- 649   ///
      long   PSTCO_GEO                  650- 654   ///
      str    PointOfOriginUB04          655        ///
      str    PointOfOrigin_X            656        ///
      byte   RACE                       657- 658   ///
      byte   RACE_EDIT                  659- 660   ///
      str    RACE_X                     661        ///
      byte   READMIT                    662- 663   ///
      double TOTCHG                     664- 673   ///
      double TOTCHG_X                   674- 688   ///
      byte   TRAN_IN                    689- 690   ///
      byte   TRAN_OUT                   691- 692   ///
      long   VisitLink                  693- 701   ///
      int    YEAR                       702- 705   ///
      str    ZIP                        706- 710   ///
      str    ZIP3                       711- 713   ///
      int    ZIPINC_QRTL                714- 716   ///
      str    TOWN                       717- 720   ///
      int    AYEAR                      721- 724   ///
      byte   BMONTH                     725- 726   ///
      int    BYEAR                      727- 730   ///
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
      int    PRYEAR1                    771- 774   ///
      int    PRYEAR2                    775- 778   ///
      int    PRYEAR3                    779- 782   ///
      int    PRYEAR4                    783- 786   ///
      int    PRYEAR5                    787- 790   ///
      int    PRYEAR6                    791- 794   ///
      int    PRYEAR7                    795- 798   ///
      int    PRYEAR8                    799- 802   ///
      int    PRYEAR9                    803- 806   ///
      int    PRYEAR10                   807- 810   ///
      int    PRYEAR11                   811- 814   ///
      int    PRYEAR12                   815- 818   ///
      int    PRYEAR13                   819- 822   ///
      int    PRYEAR14                   823- 826   ///
      int    PRYEAR15                   827- 830   ///
      int    PRYEAR16                   831- 834   ///
      int    PRYEAR17                   835- 838   ///
      int    PRYEAR18                   839- 842   ///
      int    PRYEAR19                   843- 846   ///
      int    PRYEAR20                   847- 850   ///
      using  "VT_SID_2019_CORE.ASC"

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
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DMONTH                   "Discharge month"
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
label var DaysToEvent              "Days from 'start date' to admission"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPST                   "Hospital state postal code"
label var HOSP_NPI                 "Hospital NPI"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var OBSERVATION              "Time for observation services (as received from source)"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
label var PAY3                     "Tertiary expected payer (uniform)"
label var PAY3_X                   "Tertiary expected payer (as received from source)"
label var PAYER1_X                 "Primary expected payer plan identifier (as received from source)"
label var PAYER2_X                 "Secondary expected payer plan identifier (as received from source)"
label var PAYER3_X                 "Tertiary expected payer plan identifier (as received from source)"
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
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var RACE                     "Race (uniform)"
label var RACE_EDIT                "Race Edit Checks"
label var RACE_X                   "Race (as received from source)"
label var READMIT                  "Readmission"
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
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode I10_BIRTH                 (-99 -88 -66=.)
recode I10_DELIVERY              (-99 -88 -66=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_ORPROC                (-9 -8 -6 -5=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode I10_SERVICELINE           (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode OBSERVATION               (-999 -888 -666=.)
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
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_EDIT                 (-9 -8 -6 -5=.)
recode READMIT                   (-9 -8 -6 -5=.)
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

save "VT_SID_2019_CORE.dta", replace
