/*****************************************************************************
* Creation Date: 01/22/2021   
* NE_SID_2019_CORE.Do
* This program will load the 2019 NE ASCII CORE File into Stata.
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
      str    DXPOA1                      48        ///
      str    DXPOA2                      49        ///
      str    DXPOA3                      50        ///
      str    DXPOA4                      51        ///
      str    DXPOA5                      52        ///
      str    DXPOA6                      53        ///
      str    DXPOA7                      54        ///
      str    DXPOA8                      55        ///
      str    DXPOA9                      56        ///
      str    DXPOA10                     57        ///
      str    DXPOA11                     58        ///
      str    DXPOA12                     59        ///
      str    DXPOA13                     60        ///
      str    DXPOA14                     61        ///
      str    DXPOA15                     62        ///
      str    DXPOA16                     63        ///
      str    DXPOA17                     64        ///
      str    DXPOA18                     65        ///
      str    DXPOA19                     66        ///
      str    DXPOA20                     67        ///
      str    DXPOA21                     68        ///
      str    DXPOA22                     69        ///
      str    DXPOA23                     70        ///
      str    DXPOA24                     71        ///
      str    DXPOA25                     72        ///
      long   DaysToEvent                 73-  78   ///
      byte   FEMALE                      79-  80   ///
      byte   HCUP_ED                     81-  82   ///
      byte   HCUP_OS                     83-  84   ///
      str    HOSPST                      85-  86   ///
      byte   I10_BIRTH                   87-  88   ///
      byte   I10_DELIVERY                89-  90   ///
      str    I10_DX1                     91-  97   ///
      str    I10_DX2                     98- 104   ///
      str    I10_DX3                    105- 111   ///
      str    I10_DX4                    112- 118   ///
      str    I10_DX5                    119- 125   ///
      str    I10_DX6                    126- 132   ///
      str    I10_DX7                    133- 139   ///
      str    I10_DX8                    140- 146   ///
      str    I10_DX9                    147- 153   ///
      str    I10_DX10                   154- 160   ///
      str    I10_DX11                   161- 167   ///
      str    I10_DX12                   168- 174   ///
      str    I10_DX13                   175- 181   ///
      str    I10_DX14                   182- 188   ///
      str    I10_DX15                   189- 195   ///
      str    I10_DX16                   196- 202   ///
      str    I10_DX17                   203- 209   ///
      str    I10_DX18                   210- 216   ///
      str    I10_DX19                   217- 223   ///
      str    I10_DX20                   224- 230   ///
      str    I10_DX21                   231- 237   ///
      str    I10_DX22                   238- 244   ///
      str    I10_DX23                   245- 251   ///
      str    I10_DX24                   252- 258   ///
      str    I10_DX25                   259- 265   ///
      str    I10_DX26                   266- 272   ///
      str    I10_DX_Admitting           273- 279   ///
      int    I10_NDX                    280- 282   ///
      int    I10_NPR                    283- 285   ///
      byte   I10_ORPROC                 286- 287   ///
      str    I10_PR1                    288- 294   ///
      str    I10_PR2                    295- 301   ///
      str    I10_PR3                    302- 308   ///
      str    I10_PR4                    309- 315   ///
      str    I10_PR5                    316- 322   ///
      str    I10_PR6                    323- 329   ///
      str    I10_PR7                    330- 336   ///
      str    I10_PR8                    337- 343   ///
      str    I10_PR9                    344- 350   ///
      str    I10_PR10                   351- 357   ///
      str    I10_PR11                   358- 364   ///
      str    I10_PR12                   365- 371   ///
      str    I10_PR13                   372- 378   ///
      str    I10_PR14                   379- 385   ///
      str    I10_PR15                   386- 392   ///
      int    I10_PROCTYPE               393- 395   ///
      byte   I10_SERVICELINE            396- 397   ///
      double KEY                        398- 412   ///
      long   LOS                        413- 417   ///
      long   LOS_X                      418- 423   ///
      byte   MDC                        424- 425   ///
      byte   MDC_NoPOA                  426- 427   ///
      byte   MEDINCSTQ                  428- 429   ///
      double OS_TIME                    430- 440   ///
      byte   PAY1                       441- 442   ///
      str    PAY1_X                     443- 444   ///
      byte   PAY2                       445- 446   ///
      str    PAY2_X                     447- 448   ///
      byte   PAY3                       449- 450   ///
      str    PAY3_X                     451- 452   ///
      int    PL_CBSA                    453- 455   ///
      byte   PL_NCHS                    456- 457   ///
      byte   PL_RUCC                    458- 459   ///
      byte   PL_UIC                     460- 461   ///
      byte   PL_UR_CAT4                 462- 463   ///
      byte   POA_Disch_Edit1            464- 465   ///
      byte   POA_Disch_Edit2            466- 467   ///
      byte   POA_Hosp_Edit1             468- 469   ///
      byte   POA_Hosp_Edit2             470- 471   ///
      byte   POA_Hosp_Edit3             472- 473   ///
      double POA_Hosp_Edit3_Value       474- 481   ///
      long   PRDAY1                     482- 486   ///
      long   PRDAY2                     487- 491   ///
      long   PRDAY3                     492- 496   ///
      long   PRDAY4                     497- 501   ///
      long   PRDAY5                     502- 506   ///
      long   PRDAY6                     507- 511   ///
      long   PRDAY7                     512- 516   ///
      long   PRDAY8                     517- 521   ///
      long   PRDAY9                     522- 526   ///
      long   PRDAY10                    527- 531   ///
      long   PRDAY11                    532- 536   ///
      long   PRDAY12                    537- 541   ///
      long   PRDAY13                    542- 546   ///
      long   PRDAY14                    547- 551   ///
      long   PRDAY15                    552- 556   ///
      str    PSTATE                     557- 558   ///
      str    PSTATE_GEO                 559- 560   ///
      long   PSTCO                      561- 565   ///
      long   PSTCO_GEO                  566- 570   ///
      str    PointOfOriginUB04          571        ///
      str    PointOfOrigin_X            572        ///
      double TOTCHG                     573- 582   ///
      double TOTCHG_X                   583- 597   ///
      byte   TRAN_IN                    598- 599   ///
      byte   TRAN_OUT                   600- 601   ///
      long   VisitLink                  602- 610   ///
      int    YEAR                       611- 614   ///
      str    ZIP                        615- 619   ///
      str    ZIP3                       620- 622   ///
      int    ZIPINC_QRTL                623- 625   ///
      str    TOWN                       626- 655   ///
      int    AYEAR                      656- 659   ///
      byte   BMONTH                     660- 661   ///
      int    BYEAR                      662- 665   ///
      byte   PRMONTH1                   666- 667   ///
      byte   PRMONTH2                   668- 669   ///
      byte   PRMONTH3                   670- 671   ///
      byte   PRMONTH4                   672- 673   ///
      byte   PRMONTH5                   674- 675   ///
      byte   PRMONTH6                   676- 677   ///
      byte   PRMONTH7                   678- 679   ///
      byte   PRMONTH8                   680- 681   ///
      byte   PRMONTH9                   682- 683   ///
      byte   PRMONTH10                  684- 685   ///
      byte   PRMONTH11                  686- 687   ///
      byte   PRMONTH12                  688- 689   ///
      byte   PRMONTH13                  690- 691   ///
      byte   PRMONTH14                  692- 693   ///
      byte   PRMONTH15                  694- 695   ///
      int    PRYEAR1                    696- 699   ///
      int    PRYEAR2                    700- 703   ///
      int    PRYEAR3                    704- 707   ///
      int    PRYEAR4                    708- 711   ///
      int    PRYEAR5                    712- 715   ///
      int    PRYEAR6                    716- 719   ///
      int    PRYEAR7                    720- 723   ///
      int    PRYEAR8                    724- 727   ///
      int    PRYEAR9                    728- 731   ///
      int    PRYEAR10                   732- 735   ///
      int    PRYEAR11                   736- 739   ///
      int    PRYEAR12                   740- 743   ///
      int    PRYEAR13                   744- 747   ///
      int    PRYEAR14                   748- 751   ///
      int    PRYEAR15                   752- 755   ///
      using  "NE_SID_2019_CORE.ASC"

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
label var DaysToEvent              "Days from 'start date' to admission"
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
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
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
recode DaysToEvent               (-99999 -88888 -66666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
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

save "NE_SID_2019_CORE.dta", replace
