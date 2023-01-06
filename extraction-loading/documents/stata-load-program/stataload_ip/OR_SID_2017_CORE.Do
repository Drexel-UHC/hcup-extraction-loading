/*****************************************************************************
* Creation Date: 01/07/2019   
* OR_SID_2017_CORE.Do
* This program will load the 2017 OR ASCII CORE File into Stata.
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
      str    DISP_X                      30-  31   ///
      byte   DISPUB04                    32-  33   ///
      byte   DISPUNIFORM                 34-  35   ///
      byte   DMONTH                      36-  37   ///
      byte   DNR                         38-  39   ///
      byte   DQTR                        40-  41   ///
      int    DRG                         42-  44   ///
      int    DRG_NoPOA                   45-  47   ///
      byte   DRGVER                      48-  49   ///
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
      str    DXPOA29                     95        ///
      str    DXPOA30                     96        ///
      str    DXPOA31                     97        ///
      str    DXPOA32                     98        ///
      str    DXPOA33                     99        ///
      int    DXVER                      100- 102   ///
      byte   FEMALE                     103- 104   ///
      byte   HCUP_ED                    105- 106   ///
      byte   HCUP_OS                    107- 108   ///
      byte   HISPANIC                   109- 110   ///
      str    HISPANIC_X                 111- 112   ///
      byte   HospitalUnit               113- 114   ///
      str    HOSPST                     115- 116   ///
      str    I10_DX_Admitting           117- 123   ///
      str    I10_DX1                    124- 130   ///
      str    I10_DX2                    131- 137   ///
      str    I10_DX3                    138- 144   ///
      str    I10_DX4                    145- 151   ///
      str    I10_DX5                    152- 158   ///
      str    I10_DX6                    159- 165   ///
      str    I10_DX7                    166- 172   ///
      str    I10_DX8                    173- 179   ///
      str    I10_DX9                    180- 186   ///
      str    I10_DX10                   187- 193   ///
      str    I10_DX11                   194- 200   ///
      str    I10_DX12                   201- 207   ///
      str    I10_DX13                   208- 214   ///
      str    I10_DX14                   215- 221   ///
      str    I10_DX15                   222- 228   ///
      str    I10_DX16                   229- 235   ///
      str    I10_DX17                   236- 242   ///
      str    I10_DX18                   243- 249   ///
      str    I10_DX19                   250- 256   ///
      str    I10_DX20                   257- 263   ///
      str    I10_DX21                   264- 270   ///
      str    I10_DX22                   271- 277   ///
      str    I10_DX23                   278- 284   ///
      str    I10_DX24                   285- 291   ///
      str    I10_DX25                   292- 298   ///
      str    I10_DX26                   299- 305   ///
      str    I10_DX27                   306- 312   ///
      str    I10_DX28                   313- 319   ///
      str    I10_DX29                   320- 326   ///
      str    I10_DX30                   327- 333   ///
      str    I10_DX31                   334- 340   ///
      str    I10_DX32                   341- 347   ///
      str    I10_DX33                   348- 354   ///
      int    I10_NDX                    355- 357   ///
      int    I10_NPR                    358- 360   ///
      str    I10_PR1                    361- 367   ///
      str    I10_PR2                    368- 374   ///
      str    I10_PR3                    375- 381   ///
      str    I10_PR4                    382- 388   ///
      str    I10_PR5                    389- 395   ///
      str    I10_PR6                    396- 402   ///
      str    I10_PR7                    403- 409   ///
      str    I10_PR8                    410- 416   ///
      str    I10_PR9                    417- 423   ///
      str    I10_PR10                   424- 430   ///
      str    I10_PR11                   431- 437   ///
      str    I10_PR12                   438- 444   ///
      str    I10_PR13                   445- 451   ///
      str    I10_PR14                   452- 458   ///
      str    I10_PR15                   459- 465   ///
      str    I10_PR16                   466- 472   ///
      str    I10_PR17                   473- 479   ///
      str    I10_PR18                   480- 486   ///
      str    I10_PR19                   487- 493   ///
      str    I10_PR20                   494- 500   ///
      str    I10_PR21                   501- 507   ///
      str    I10_PR22                   508- 514   ///
      str    I10_PR23                   515- 521   ///
      str    I10_PR24                   522- 528   ///
      int    I10_PROCTYPE               529- 531   ///
      double KEY                        532- 546   ///
      long   LOS                        547- 551   ///
      long   LOS_X                      552- 557   ///
      byte   MDC                        558- 559   ///
      byte   MDC_NoPOA                  560- 561   ///
      long   MDNUM1_R                   562- 570   ///
      long   MDNUM2_R                   571- 579   ///
      long   MDNUM3_R                   580- 588   ///
      long   MDNUM4_R                   589- 597   ///
      byte   MEDINCSTQ                  598- 599   ///
      double OS_TIME                    600- 610   ///
      byte   PAY1                       611- 612   ///
      str    PAY1_X                     613- 621   ///
      byte   PAY2                       622- 623   ///
      str    PAY2_X                     624- 632   ///
      byte   PAY3                       633- 634   ///
      str    PAY3_X                     635- 643   ///
      int    PL_CBSA                    644- 646   ///
      byte   PL_NCHS                    647- 648   ///
      byte   PL_RUCC                    649- 650   ///
      byte   PL_UIC                     651- 652   ///
      byte   PL_UR_CAT4                 653- 654   ///
      byte   POA_Disch_Edit1            655- 656   ///
      byte   POA_Disch_Edit2            657- 658   ///
      byte   POA_Hosp_Edit1             659- 660   ///
      byte   POA_Hosp_Edit2             661- 662   ///
      byte   POA_Hosp_Edit3             663- 664   ///
      double POA_Hosp_Edit3_Value       665- 672   ///
      str    PointOfOrigin_X            673- 674   ///
      str    PointOfOriginUB04          675        ///
      long   PRDAY1                     676- 680   ///
      long   PRDAY2                     681- 685   ///
      long   PRDAY3                     686- 690   ///
      long   PRDAY4                     691- 695   ///
      long   PRDAY5                     696- 700   ///
      long   PRDAY6                     701- 705   ///
      long   PRDAY7                     706- 710   ///
      long   PRDAY8                     711- 715   ///
      long   PRDAY9                     716- 720   ///
      long   PRDAY10                    721- 725   ///
      long   PRDAY11                    726- 730   ///
      long   PRDAY12                    731- 735   ///
      long   PRDAY13                    736- 740   ///
      long   PRDAY14                    741- 745   ///
      long   PRDAY15                    746- 750   ///
      long   PRDAY16                    751- 755   ///
      long   PRDAY17                    756- 760   ///
      long   PRDAY18                    761- 765   ///
      long   PRDAY19                    766- 770   ///
      long   PRDAY20                    771- 775   ///
      long   PRDAY21                    776- 780   ///
      long   PRDAY22                    781- 785   ///
      long   PRDAY23                    786- 790   ///
      long   PRDAY24                    791- 795   ///
      int    PRVER                      796- 798   ///
      str    PSTATE                     799- 800   ///
      long   PSTCO                      801- 805   ///
      long   PSTCO2                     806- 810   ///
      byte   RACE                       811- 812   ///
      byte   RACE_EDIT                  813- 814   ///
      str    RACE_X                     815- 816   ///
      double TOTCHG                     817- 826   ///
      double TOTCHG_X                   827- 841   ///
      byte   TRAN_IN                    842- 843   ///
      byte   TRAN_OUT                   844- 845   ///
      int    YEAR                       846- 849   ///
      str    ZIP                        850- 854   ///
      str    ZIP3                       855- 857   ///
      int    ZIPINC_QRTL                858- 860   ///
      int    AYEAR                      861- 864   ///
      byte   BMONTH                     865- 866   ///
      int    BYEAR                      867- 870   ///
      byte   PRMONTH1                   871- 872   ///
      byte   PRMONTH2                   873- 874   ///
      byte   PRMONTH3                   875- 876   ///
      byte   PRMONTH4                   877- 878   ///
      byte   PRMONTH5                   879- 880   ///
      byte   PRMONTH6                   881- 882   ///
      byte   PRMONTH7                   883- 884   ///
      byte   PRMONTH8                   885- 886   ///
      byte   PRMONTH9                   887- 888   ///
      byte   PRMONTH10                  889- 890   ///
      byte   PRMONTH11                  891- 892   ///
      byte   PRMONTH12                  893- 894   ///
      byte   PRMONTH13                  895- 896   ///
      byte   PRMONTH14                  897- 898   ///
      byte   PRMONTH15                  899- 900   ///
      byte   PRMONTH16                  901- 902   ///
      byte   PRMONTH17                  903- 904   ///
      byte   PRMONTH18                  905- 906   ///
      byte   PRMONTH19                  907- 908   ///
      byte   PRMONTH20                  909- 910   ///
      byte   PRMONTH21                  911- 912   ///
      byte   PRMONTH22                  913- 914   ///
      byte   PRMONTH23                  915- 916   ///
      byte   PRMONTH24                  917- 918   ///
      int    PRYEAR1                    919- 922   ///
      int    PRYEAR2                    923- 926   ///
      int    PRYEAR3                    927- 930   ///
      int    PRYEAR4                    931- 934   ///
      int    PRYEAR5                    935- 938   ///
      int    PRYEAR6                    939- 942   ///
      int    PRYEAR7                    943- 946   ///
      int    PRYEAR8                    947- 950   ///
      int    PRYEAR9                    951- 954   ///
      int    PRYEAR10                   955- 958   ///
      int    PRYEAR11                   959- 962   ///
      int    PRYEAR12                   963- 966   ///
      int    PRYEAR13                   967- 970   ///
      int    PRYEAR14                   971- 974   ///
      int    PRYEAR15                   975- 978   ///
      int    PRYEAR16                   979- 982   ///
      int    PRYEAR17                   983- 986   ///
      int    PRYEAR18                   987- 990   ///
      int    PRYEAR19                   991- 994   ///
      int    PRYEAR20                   995- 998   ///
      int    PRYEAR21                   999-1002   ///
      int    PRYEAR22                  1003-1006   ///
      int    PRYEAR23                  1007-1010   ///
      int    PRYEAR24                  1011-1014   ///
      using  "OR_SID_2017_CORE.ASC"

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
label var DXPOA30                  "Diagnosis 30, present on admission indicator"
label var DXPOA31                  "Diagnosis 31, present on admission indicator"
label var DXPOA32                  "Diagnosis 32, present on admission indicator"
label var DXPOA33                  "Diagnosis 33, present on admission indicator"
label var DXVER                    "Diagnosis Version"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HospitalUnit             "Patient was discharged from a special unit within an acute care hospital (reported by source)"
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
label var I10_DX33                 "ICD-10-CM Diagnosis 33"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
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
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes(RUCC)"
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
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
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
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
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
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
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

save "OR_SID_2017_CORE.dta", replace
