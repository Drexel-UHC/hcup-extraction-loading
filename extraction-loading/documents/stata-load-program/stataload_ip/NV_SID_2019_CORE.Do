/*****************************************************************************
* Creation Date: 11/13/2020   
* NV_SID_2019_CORE.Do
* This program will load the 2019 NV ASCII CORE File into Stata.
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
      int    DHOUR                       24-  27   ///
      byte   DIED                        28-  29   ///
      byte   DISPUB04                    30-  31   ///
      byte   DISPUNIFORM                 32-  33   ///
      str    DISP_X                      34-  35   ///
      byte   DMONTH                      36-  37   ///
      byte   DQTR                        38-  39   ///
      int    DRG                         40-  42   ///
      byte   DRGVER                      43-  44   ///
      int    DRG_NoPOA                   45-  47   ///
      str    DSHOSPID                    48-  64   ///
      str    DXPOA1                      65        ///
      str    DXPOA2                      66        ///
      str    DXPOA3                      67        ///
      str    DXPOA4                      68        ///
      str    DXPOA5                      69        ///
      str    DXPOA6                      70        ///
      str    DXPOA7                      71        ///
      str    DXPOA8                      72        ///
      str    DXPOA9                      73        ///
      str    DXPOA10                     74        ///
      str    DXPOA11                     75        ///
      str    DXPOA12                     76        ///
      str    DXPOA13                     77        ///
      str    DXPOA14                     78        ///
      str    DXPOA15                     79        ///
      str    DXPOA16                     80        ///
      str    DXPOA17                     81        ///
      str    DXPOA18                     82        ///
      str    DXPOA19                     83        ///
      str    DXPOA20                     84        ///
      str    DXPOA21                     85        ///
      str    DXPOA22                     86        ///
      str    DXPOA23                     87        ///
      str    DXPOA24                     88        ///
      str    DXPOA25                     89        ///
      str    DXPOA26                     90        ///
      str    DXPOA27                     91        ///
      str    DXPOA28                     92        ///
      str    DXPOA29                     93        ///
      str    DXPOA30                     94        ///
      str    DXPOA31                     95        ///
      str    DXPOA32                     96        ///
      str    DXPOA33                     97        ///
      byte   FEMALE                      98-  99   ///
      byte   HCUP_ED                    100- 101   ///
      byte   HCUP_OS                    102- 103   ///
      byte   HISPANIC                   104- 105   ///
      str    HOSPST                     106- 107   ///
      byte   I10_BIRTH                  108- 109   ///
      byte   I10_DELIVERY               110- 111   ///
      str    I10_DX1                    112- 118   ///
      str    I10_DX2                    119- 125   ///
      str    I10_DX3                    126- 132   ///
      str    I10_DX4                    133- 139   ///
      str    I10_DX5                    140- 146   ///
      str    I10_DX6                    147- 153   ///
      str    I10_DX7                    154- 160   ///
      str    I10_DX8                    161- 167   ///
      str    I10_DX9                    168- 174   ///
      str    I10_DX10                   175- 181   ///
      str    I10_DX11                   182- 188   ///
      str    I10_DX12                   189- 195   ///
      str    I10_DX13                   196- 202   ///
      str    I10_DX14                   203- 209   ///
      str    I10_DX15                   210- 216   ///
      str    I10_DX16                   217- 223   ///
      str    I10_DX17                   224- 230   ///
      str    I10_DX18                   231- 237   ///
      str    I10_DX19                   238- 244   ///
      str    I10_DX20                   245- 251   ///
      str    I10_DX21                   252- 258   ///
      str    I10_DX22                   259- 265   ///
      str    I10_DX23                   266- 272   ///
      str    I10_DX24                   273- 279   ///
      str    I10_DX25                   280- 286   ///
      str    I10_DX26                   287- 293   ///
      str    I10_DX27                   294- 300   ///
      str    I10_DX28                   301- 307   ///
      str    I10_DX29                   308- 314   ///
      str    I10_DX30                   315- 321   ///
      str    I10_DX31                   322- 328   ///
      str    I10_DX32                   329- 335   ///
      str    I10_DX33                   336- 342   ///
      str    I10_DX_Admitting           343- 349   ///
      int    I10_NDX                    350- 352   ///
      int    I10_NPR                    353- 355   ///
      byte   I10_ORPROC                 356- 357   ///
      str    I10_PR1                    358- 364   ///
      str    I10_PR2                    365- 371   ///
      str    I10_PR3                    372- 378   ///
      str    I10_PR4                    379- 385   ///
      str    I10_PR5                    386- 392   ///
      str    I10_PR6                    393- 399   ///
      str    I10_PR7                    400- 406   ///
      str    I10_PR8                    407- 413   ///
      str    I10_PR9                    414- 420   ///
      str    I10_PR10                   421- 427   ///
      str    I10_PR11                   428- 434   ///
      str    I10_PR12                   435- 441   ///
      str    I10_PR13                   442- 448   ///
      str    I10_PR14                   449- 455   ///
      str    I10_PR15                   456- 462   ///
      str    I10_PR16                   463- 469   ///
      str    I10_PR17                   470- 476   ///
      str    I10_PR18                   477- 483   ///
      str    I10_PR19                   484- 490   ///
      str    I10_PR20                   491- 497   ///
      str    I10_PR21                   498- 504   ///
      str    I10_PR22                   505- 511   ///
      str    I10_PR23                   512- 518   ///
      str    I10_PR24                   519- 525   ///
      str    I10_PR25                   526- 532   ///
      int    I10_PROCTYPE               533- 535   ///
      byte   I10_SERVICELINE            536- 537   ///
      double KEY                        538- 552   ///
      long   LOS                        553- 557   ///
      long   LOS_X                      558- 563   ///
      str    MARITALSTATUSUB04          564        ///
      str    MARITALSTATUS_X            565        ///
      byte   MDC                        566- 567   ///
      byte   MDC_NoPOA                  568- 569   ///
      long   MDNUM1_R                   570- 578   ///
      long   MDNUM2_R                   579- 587   ///
      str    MDNUMTYPE1                 588        ///
      str    MDNUMTYPE2                 589        ///
      byte   MEDINCSTQ                  590- 591   ///
      double OS_TIME                    592- 602   ///
      byte   PAY1                       603- 604   ///
      str    PAY1_X                     605- 606   ///
      byte   PAY2                       607- 608   ///
      str    PAY2_X                     609- 610   ///
      byte   PAY3                       611- 612   ///
      str    PAY3_X                     613- 614   ///
      byte   PL_NCHS                    615- 616   ///
      byte   PL_RUCC                    617- 618   ///
      byte   PL_UIC                     619- 620   ///
      byte   PL_UR_CAT4                 621- 622   ///
      byte   POA_Disch_Edit1            623- 624   ///
      byte   POA_Disch_Edit2            625- 626   ///
      byte   POA_Hosp_Edit1             627- 628   ///
      byte   POA_Hosp_Edit2             629- 630   ///
      byte   POA_Hosp_Edit3             631- 632   ///
      double POA_Hosp_Edit3_Value       633- 640   ///
      long   PRDAY1                     641- 645   ///
      long   PRDAY2                     646- 650   ///
      long   PRDAY3                     651- 655   ///
      long   PRDAY4                     656- 660   ///
      long   PRDAY5                     661- 665   ///
      long   PRDAY6                     666- 670   ///
      long   PRDAY7                     671- 675   ///
      long   PRDAY8                     676- 680   ///
      long   PRDAY9                     681- 685   ///
      long   PRDAY10                    686- 690   ///
      long   PRDAY11                    691- 695   ///
      long   PRDAY12                    696- 700   ///
      long   PRDAY13                    701- 705   ///
      long   PRDAY14                    706- 710   ///
      long   PRDAY15                    711- 715   ///
      long   PRDAY16                    716- 720   ///
      long   PRDAY17                    721- 725   ///
      long   PRDAY18                    726- 730   ///
      long   PRDAY19                    731- 735   ///
      long   PRDAY20                    736- 740   ///
      long   PRDAY21                    741- 745   ///
      long   PRDAY22                    746- 750   ///
      long   PRDAY23                    751- 755   ///
      long   PRDAY24                    756- 760   ///
      long   PRDAY25                    761- 765   ///
      str    PSTATE                     766- 767   ///
      str    PSTATE_GEO                 768- 769   ///
      long   PSTCO                      770- 774   ///
      long   PSTCO_GEO                  775- 779   ///
      str    PointOfOriginUB04          780        ///
      str    PointOfOrigin_X            781- 782   ///
      byte   RACE                       783- 784   ///
      byte   RACE_EDIT                  785- 786   ///
      str    RACE_X                     787- 788   ///
      double TOTCHG                     789- 798   ///
      double TOTCHG_X                   799- 813   ///
      byte   TRAN_IN                    814- 815   ///
      byte   TRAN_OUT                   816- 817   ///
      int    YEAR                       818- 821   ///
      int    ZIPINC_QRTL                822- 824   ///
      int    AYEAR                      825- 828   ///
      using  "NV_SID_2019_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
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
label var I10_DX31                 "ICD-10-CM Diagnosis 31"
label var I10_DX32                 "ICD-10-CM Diagnosis 32"
label var I10_DX33                 "ICD-10-CM Diagnosis 33"
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
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MARITALSTATUS_X          "Patient's marital status (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUMTYPE1               "Physician 1 number type"
label var MDNUMTYPE2               "Physician 2 number type"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
label var PAY3                     "Tertiary expected payer (uniform)"
label var PAY3_X                   "Tertiary expected payer (as received from source)"
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
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var AYEAR                    "Admission year"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
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
recode HISPANIC                  (-9 -8 -6 -5=.)
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
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
recode PAY3                      (-9 -8 -6 -5=.)
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

save "NV_SID_2019_CORE.dta", replace
