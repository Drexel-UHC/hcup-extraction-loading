/*****************************************************************************
* Creation Date: 04/14/2021   
* FL_SID_2019_CORE.Do
* This program will load the 2019 FL ASCII CORE File into Stata.
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
      int    AHOUR                        4-   7   ///
      byte   ATYPE                        8-   9   ///
      byte   AWEEKEND                    10-  11   ///
      int    DHOUR                       12-  15   ///
      byte   DIED                        16-  17   ///
      byte   DISPUB04                    18-  19   ///
      byte   DISPUNIFORM                 20-  21   ///
      str    DISP_X                      22-  23   ///
      byte   DQTR                        24-  25   ///
      int    DRG                         26-  28   ///
      byte   DRGVER                      29-  30   ///
      int    DRG_NoPOA                   31-  33   ///
      str    DSHOSPID                    34-  50   ///
      str    DXPOA1                      51        ///
      str    DXPOA2                      52        ///
      str    DXPOA3                      53        ///
      str    DXPOA4                      54        ///
      str    DXPOA5                      55        ///
      str    DXPOA6                      56        ///
      str    DXPOA7                      57        ///
      str    DXPOA8                      58        ///
      str    DXPOA9                      59        ///
      str    DXPOA10                     60        ///
      str    DXPOA11                     61        ///
      str    DXPOA12                     62        ///
      str    DXPOA13                     63        ///
      str    DXPOA14                     64        ///
      str    DXPOA15                     65        ///
      str    DXPOA16                     66        ///
      str    DXPOA17                     67        ///
      str    DXPOA18                     68        ///
      str    DXPOA19                     69        ///
      str    DXPOA20                     70        ///
      str    DXPOA21                     71        ///
      str    DXPOA22                     72        ///
      str    DXPOA23                     73        ///
      str    DXPOA24                     74        ///
      str    DXPOA25                     75        ///
      str    DXPOA26                     76        ///
      str    DXPOA27                     77        ///
      str    DXPOA28                     78        ///
      str    DXPOA29                     79        ///
      str    DXPOA30                     80        ///
      str    DXPOA31                     81        ///
      str    DXPOA32                     82        ///
      str    DXPOA33                     83        ///
      str    DXPOA34                     84        ///
      long   DaysToEvent                 85-  90   ///
      int    EDHOUR                      91-  94   ///
      byte   FEMALE                      95-  96   ///
      byte   HCUP_ED                     97-  98   ///
      byte   HCUP_OS                     99- 100   ///
      byte   HISPANIC                   101- 102   ///
      str    HISPANIC_X                 103- 104   ///
      str    HOSPST                     105- 106   ///
      byte   Homeless                   107- 108   ///
      byte   HospitalUnit               109- 110   ///
      byte   I10_BIRTH                  111- 112   ///
      byte   I10_DELIVERY               113- 114   ///
      str    I10_DX1                    115- 121   ///
      str    I10_DX2                    122- 128   ///
      str    I10_DX3                    129- 135   ///
      str    I10_DX4                    136- 142   ///
      str    I10_DX5                    143- 149   ///
      str    I10_DX6                    150- 156   ///
      str    I10_DX7                    157- 163   ///
      str    I10_DX8                    164- 170   ///
      str    I10_DX9                    171- 177   ///
      str    I10_DX10                   178- 184   ///
      str    I10_DX11                   185- 191   ///
      str    I10_DX12                   192- 198   ///
      str    I10_DX13                   199- 205   ///
      str    I10_DX14                   206- 212   ///
      str    I10_DX15                   213- 219   ///
      str    I10_DX16                   220- 226   ///
      str    I10_DX17                   227- 233   ///
      str    I10_DX18                   234- 240   ///
      str    I10_DX19                   241- 247   ///
      str    I10_DX20                   248- 254   ///
      str    I10_DX21                   255- 261   ///
      str    I10_DX22                   262- 268   ///
      str    I10_DX23                   269- 275   ///
      str    I10_DX24                   276- 282   ///
      str    I10_DX25                   283- 289   ///
      str    I10_DX26                   290- 296   ///
      str    I10_DX27                   297- 303   ///
      str    I10_DX28                   304- 310   ///
      str    I10_DX29                   311- 317   ///
      str    I10_DX30                   318- 324   ///
      str    I10_DX31                   325- 331   ///
      str    I10_DX32                   332- 338   ///
      str    I10_DX33                   339- 345   ///
      str    I10_DX34                   346- 352   ///
      str    I10_DX_Admitting           353- 359   ///
      int    I10_NDX                    360- 362   ///
      int    I10_NPR                    363- 365   ///
      byte   I10_ORPROC                 366- 367   ///
      str    I10_PR1                    368- 374   ///
      str    I10_PR2                    375- 381   ///
      str    I10_PR3                    382- 388   ///
      str    I10_PR4                    389- 395   ///
      str    I10_PR5                    396- 402   ///
      str    I10_PR6                    403- 409   ///
      str    I10_PR7                    410- 416   ///
      str    I10_PR8                    417- 423   ///
      str    I10_PR9                    424- 430   ///
      str    I10_PR10                   431- 437   ///
      str    I10_PR11                   438- 444   ///
      str    I10_PR12                   445- 451   ///
      str    I10_PR13                   452- 458   ///
      str    I10_PR14                   459- 465   ///
      str    I10_PR15                   466- 472   ///
      str    I10_PR16                   473- 479   ///
      str    I10_PR17                   480- 486   ///
      str    I10_PR18                   487- 493   ///
      str    I10_PR19                   494- 500   ///
      str    I10_PR20                   501- 507   ///
      str    I10_PR21                   508- 514   ///
      str    I10_PR22                   515- 521   ///
      str    I10_PR23                   522- 528   ///
      str    I10_PR24                   529- 535   ///
      str    I10_PR25                   536- 542   ///
      str    I10_PR26                   543- 549   ///
      str    I10_PR27                   550- 556   ///
      str    I10_PR28                   557- 563   ///
      str    I10_PR29                   564- 570   ///
      str    I10_PR30                   571- 577   ///
      str    I10_PR31                   578- 584   ///
      int    I10_PROCTYPE               585- 587   ///
      byte   I10_SERVICELINE            588- 589   ///
      double KEY                        590- 604   ///
      long   LOS                        605- 609   ///
      long   LOS_X                      610- 615   ///
      byte   MDC                        616- 617   ///
      byte   MDC_NoPOA                  618- 619   ///
      long   MDNUM1_R                   620- 628   ///
      long   MDNUM2_R                   629- 637   ///
      long   MDNUM3_R                   638- 646   ///
      byte   MEDINCSTQ                  647- 648   ///
      str    P7EDSRC_X                  649- 650   ///
      byte   PAY1                       651- 652   ///
      str    PAY1_X                     653        ///
      int    PL_CBSA                    654- 656   ///
      byte   PL_NCHS                    657- 658   ///
      byte   PL_RUCC                    659- 660   ///
      byte   PL_UIC                     661- 662   ///
      byte   PL_UR_CAT4                 663- 664   ///
      byte   POA_Disch_Edit1            665- 666   ///
      byte   POA_Disch_Edit2            667- 668   ///
      byte   POA_Hosp_Edit1             669- 670   ///
      byte   POA_Hosp_Edit2             671- 672   ///
      byte   POA_Hosp_Edit3             673- 674   ///
      double POA_Hosp_Edit3_Value       675- 682   ///
      long   PRDAY1                     683- 687   ///
      long   PRDAY2                     688- 692   ///
      long   PRDAY3                     693- 697   ///
      long   PRDAY4                     698- 702   ///
      long   PRDAY5                     703- 707   ///
      long   PRDAY6                     708- 712   ///
      long   PRDAY7                     713- 717   ///
      long   PRDAY8                     718- 722   ///
      long   PRDAY9                     723- 727   ///
      long   PRDAY10                    728- 732   ///
      long   PRDAY11                    733- 737   ///
      long   PRDAY12                    738- 742   ///
      long   PRDAY13                    743- 747   ///
      long   PRDAY14                    748- 752   ///
      long   PRDAY15                    753- 757   ///
      long   PRDAY16                    758- 762   ///
      long   PRDAY17                    763- 767   ///
      long   PRDAY18                    768- 772   ///
      long   PRDAY19                    773- 777   ///
      long   PRDAY20                    778- 782   ///
      long   PRDAY21                    783- 787   ///
      long   PRDAY22                    788- 792   ///
      long   PRDAY23                    793- 797   ///
      long   PRDAY24                    798- 802   ///
      long   PRDAY25                    803- 807   ///
      long   PRDAY26                    808- 812   ///
      long   PRDAY27                    813- 817   ///
      long   PRDAY28                    818- 822   ///
      long   PRDAY29                    823- 827   ///
      long   PRDAY30                    828- 832   ///
      long   PRDAY31                    833- 837   ///
      str    PSTATE                     838- 839   ///
      str    PSTATE_GEO                 840- 841   ///
      long   PSTCO                      842- 846   ///
      long   PSTCO_GEO                  847- 851   ///
      str    PointOfOriginUB04          852        ///
      str    PointOfOrigin_X            853- 854   ///
      byte   RACE                       855- 856   ///
      byte   RACE_EDIT                  857- 858   ///
      str    RACE_X                     859        ///
      double TOTCHG                     860- 869   ///
      double TOTCHG_X                   870- 884   ///
      byte   TRAN_IN                    885- 886   ///
      byte   TRAN_OUT                   887- 888   ///
      long   VisitLink                  889- 897   ///
      int    YEAR                       898- 901   ///
      str    ZIP                        902- 906   ///
      str    ZIP3                       907- 909   ///
      int    ZIPINC_QRTL                910- 912   ///
      int    EDYEAR                     913- 916   ///
      int    PRYEAR1                    917- 920   ///
      int    PRYEAR2                    921- 924   ///
      int    PRYEAR3                    925- 928   ///
      int    PRYEAR4                    929- 932   ///
      int    PRYEAR5                    933- 936   ///
      int    PRYEAR6                    937- 940   ///
      int    PRYEAR7                    941- 944   ///
      int    PRYEAR8                    945- 948   ///
      int    PRYEAR9                    949- 952   ///
      int    PRYEAR10                   953- 956   ///
      int    PRYEAR11                   957- 960   ///
      int    PRYEAR12                   961- 964   ///
      int    PRYEAR13                   965- 968   ///
      int    PRYEAR14                   969- 972   ///
      int    PRYEAR15                   973- 976   ///
      int    PRYEAR16                   977- 980   ///
      int    PRYEAR17                   981- 984   ///
      int    PRYEAR18                   985- 988   ///
      int    PRYEAR19                   989- 992   ///
      int    PRYEAR20                   993- 996   ///
      int    PRYEAR21                   997-1000   ///
      int    PRYEAR22                  1001-1004   ///
      int    PRYEAR23                  1005-1008   ///
      int    PRYEAR24                  1009-1012   ///
      int    PRYEAR25                  1013-1016   ///
      int    PRYEAR26                  1017-1020   ///
      int    PRYEAR27                  1021-1024   ///
      int    PRYEAR28                  1025-1028   ///
      int    PRYEAR29                  1029-1032   ///
      int    PRYEAR30                  1033-1036   ///
      int    PRYEAR31                  1037-1040   ///
      using  "FL_SID_2019_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AHOUR                    "Admission Hour"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
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
label var DXPOA34                  "Diagnosis 34, present on admission indicator"
label var DaysToEvent              "Days from 'start date' to admission"
label var EDHOUR                   "Emergency department time of arrival prior to inpatient admission"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPST                   "Hospital state postal code"
label var Homeless                 "Indicator that patient is homeless"
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
label var I10_DX29                 "ICD-10-CM Diagnosis 29"
label var I10_DX30                 "ICD-10-CM Diagnosis 30"
label var I10_DX31                 "ICD-10-CM Diagnosis 31"
label var I10_DX32                 "ICD-10-CM Diagnosis 32"
label var I10_DX33                 "ICD-10-CM Diagnosis 33"
label var I10_DX34                 "ICD-10-CM Diagnosis 34"
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
label var I10_PR26                 "ICD-10-PCS Procedure 26"
label var I10_PR27                 "ICD-10-PCS Procedure 27"
label var I10_PR28                 "ICD-10-PCS Procedure 28"
label var I10_PR29                 "ICD-10-PCS Procedure 29"
label var I10_PR30                 "ICD-10-PCS Procedure 30"
label var I10_PR31                 "ICD-10-PCS Procedure 31"
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
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
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
label var PRDAY26                  "Number of days from admission to I10_PR26"
label var PRDAY27                  "Number of days from admission to I10_PR27"
label var PRDAY28                  "Number of days from admission to I10_PR28"
label var PRDAY29                  "Number of days from admission to I10_PR29"
label var PRDAY30                  "Number of days from admission to I10_PR30"
label var PRDAY31                  "Number of days from admission to I10_PR31"
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
label var VisitLink                "Visit linkage variable"
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var EDYEAR                   "Emergency Department arrival year"
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
label var PRYEAR26                 "Year of procedure 26"
label var PRYEAR27                 "Year of procedure 27"
label var PRYEAR28                 "Year of procedure 28"
label var PRYEAR29                 "Year of procedure 29"
label var PRYEAR30                 "Year of procedure 30"
label var PRYEAR31                 "Year of procedure 31"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode EDHOUR                    (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
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
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode PAY1                      (-9 -8 -6 -5=.)
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
recode PRDAY26                   (-9999 -8888 -6666=.)
recode PRDAY27                   (-9999 -8888 -6666=.)
recode PRDAY28                   (-9999 -8888 -6666=.)
recode PRDAY29                   (-9999 -8888 -6666=.)
recode PRDAY30                   (-9999 -8888 -6666=.)
recode PRDAY31                   (-9999 -8888 -6666=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_EDIT                 (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
recode VisitLink                 (-99999999 -88888888 -66666666=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode EDYEAR                    (-999 -888 -666=.)
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
recode PRYEAR26                  (-999 -888 -666=.)
recode PRYEAR27                  (-999 -888 -666=.)
recode PRYEAR28                  (-999 -888 -666=.)
recode PRYEAR29                  (-999 -888 -666=.)
recode PRYEAR30                  (-999 -888 -666=.)
recode PRYEAR31                  (-999 -888 -666=.)

save "FL_SID_2019_CORE.dta", replace
