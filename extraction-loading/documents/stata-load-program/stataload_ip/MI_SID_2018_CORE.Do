/*****************************************************************************
* Creation Date: 06/08/2020   
* MI_SID_2018_CORE.Do
* This program will load the 2018 MI ASCII CORE File into Stata.
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
      byte   DIED                        16-  17   ///
      str    DISP_X                      18-  19   ///
      byte   DISPUB04                    20-  21   ///
      byte   DISPUNIFORM                 22-  23   ///
      byte   DMONTH                      24-  25   ///
      byte   DQTR                        26-  27   ///
      int    DRG                         28-  30   ///
      int    DRG_NoPOA                   31-  33   ///
      byte   DRGVER                      34-  35   ///
      str    DXPOA1                      36        ///
      str    DXPOA2                      37        ///
      str    DXPOA3                      38        ///
      str    DXPOA4                      39        ///
      str    DXPOA5                      40        ///
      str    DXPOA6                      41        ///
      str    DXPOA7                      42        ///
      str    DXPOA8                      43        ///
      str    DXPOA9                      44        ///
      str    DXPOA10                     45        ///
      str    DXPOA11                     46        ///
      str    DXPOA12                     47        ///
      str    DXPOA13                     48        ///
      str    DXPOA14                     49        ///
      str    DXPOA15                     50        ///
      str    DXPOA16                     51        ///
      str    DXPOA17                     52        ///
      str    DXPOA18                     53        ///
      str    DXPOA19                     54        ///
      str    DXPOA20                     55        ///
      str    DXPOA21                     56        ///
      str    DXPOA22                     57        ///
      str    DXPOA23                     58        ///
      str    DXPOA24                     59        ///
      str    DXPOA25                     60        ///
      str    DXPOA26                     61        ///
      str    DXPOA27                     62        ///
      str    DXPOA28                     63        ///
      str    DXPOA29                     64        ///
      str    DXPOA30                     65        ///
      byte   FEMALE                      66-  67   ///
      byte   HCUP_ED                     68-  69   ///
      byte   HCUP_OS                     70-  71   ///
      byte   HISPANIC                    72-  73   ///
      str    HISPANIC_X                  74        ///
      str    HOSPST                      75-  76   ///
      str    I10_DX_Admitting            77-  83   ///
      str    I10_DX1                     84-  90   ///
      str    I10_DX2                     91-  97   ///
      str    I10_DX3                     98- 104   ///
      str    I10_DX4                    105- 111   ///
      str    I10_DX5                    112- 118   ///
      str    I10_DX6                    119- 125   ///
      str    I10_DX7                    126- 132   ///
      str    I10_DX8                    133- 139   ///
      str    I10_DX9                    140- 146   ///
      str    I10_DX10                   147- 153   ///
      str    I10_DX11                   154- 160   ///
      str    I10_DX12                   161- 167   ///
      str    I10_DX13                   168- 174   ///
      str    I10_DX14                   175- 181   ///
      str    I10_DX15                   182- 188   ///
      str    I10_DX16                   189- 195   ///
      str    I10_DX17                   196- 202   ///
      str    I10_DX18                   203- 209   ///
      str    I10_DX19                   210- 216   ///
      str    I10_DX20                   217- 223   ///
      str    I10_DX21                   224- 230   ///
      str    I10_DX22                   231- 237   ///
      str    I10_DX23                   238- 244   ///
      str    I10_DX24                   245- 251   ///
      str    I10_DX25                   252- 258   ///
      str    I10_DX26                   259- 265   ///
      str    I10_DX27                   266- 272   ///
      str    I10_DX28                   273- 279   ///
      str    I10_DX29                   280- 286   ///
      str    I10_DX30                   287- 293   ///
      int    I10_NDX                    294- 296   ///
      int    I10_NPR                    297- 299   ///
      str    I10_PR1                    300- 306   ///
      str    I10_PR2                    307- 313   ///
      str    I10_PR3                    314- 320   ///
      str    I10_PR4                    321- 327   ///
      str    I10_PR5                    328- 334   ///
      str    I10_PR6                    335- 341   ///
      str    I10_PR7                    342- 348   ///
      str    I10_PR8                    349- 355   ///
      str    I10_PR9                    356- 362   ///
      str    I10_PR10                   363- 369   ///
      str    I10_PR11                   370- 376   ///
      str    I10_PR12                   377- 383   ///
      str    I10_PR13                   384- 390   ///
      str    I10_PR14                   391- 397   ///
      str    I10_PR15                   398- 404   ///
      str    I10_PR16                   405- 411   ///
      str    I10_PR17                   412- 418   ///
      str    I10_PR18                   419- 425   ///
      str    I10_PR19                   426- 432   ///
      str    I10_PR20                   433- 439   ///
      str    I10_PR21                   440- 446   ///
      str    I10_PR22                   447- 453   ///
      str    I10_PR23                   454- 460   ///
      str    I10_PR24                   461- 467   ///
      str    I10_PR25                   468- 474   ///
      str    I10_PR26                   475- 481   ///
      str    I10_PR27                   482- 488   ///
      str    I10_PR28                   489- 495   ///
      str    I10_PR29                   496- 502   ///
      str    I10_PR30                   503- 509   ///
      int    I10_PROCTYPE               510- 512   ///
      double KEY                        513- 527   ///
      long   LOS                        528- 532   ///
      long   LOS_X                      533- 538   ///
      byte   MDC                        539- 540   ///
      byte   MDC_NoPOA                  541- 542   ///
      long   MDNUM1_R                   543- 551   ///
      byte   MEDINCSTQ                  552- 553   ///
      long   MOMNUM_R                   554- 562   ///
      long   MRN_R                      563- 571   ///
      byte   PAY1                       572- 573   ///
      str    PAY1_X                     574- 575   ///
      byte   PAY2                       576- 577   ///
      str    PAY2_X                     578- 579   ///
      int    PL_CBSA                    580- 582   ///
      byte   PL_NCHS                    583- 584   ///
      byte   PL_RUCC                    585- 586   ///
      byte   PL_UIC                     587- 588   ///
      byte   PL_UR_CAT4                 589- 590   ///
      byte   POA_Disch_Edit1            591- 592   ///
      byte   POA_Disch_Edit2            593- 594   ///
      byte   POA_Hosp_Edit1             595- 596   ///
      byte   POA_Hosp_Edit2             597- 598   ///
      byte   POA_Hosp_Edit3             599- 600   ///
      double POA_Hosp_Edit3_Value       601- 608   ///
      str    PointOfOrigin_X            609        ///
      str    PointOfOriginUB04          610        ///
      long   PRDAY1                     611- 615   ///
      long   PRDAY2                     616- 620   ///
      long   PRDAY3                     621- 625   ///
      long   PRDAY4                     626- 630   ///
      long   PRDAY5                     631- 635   ///
      long   PRDAY6                     636- 640   ///
      long   PRDAY7                     641- 645   ///
      long   PRDAY8                     646- 650   ///
      long   PRDAY9                     651- 655   ///
      long   PRDAY10                    656- 660   ///
      long   PRDAY11                    661- 665   ///
      long   PRDAY12                    666- 670   ///
      long   PRDAY13                    671- 675   ///
      long   PRDAY14                    676- 680   ///
      long   PRDAY15                    681- 685   ///
      long   PRDAY16                    686- 690   ///
      long   PRDAY17                    691- 695   ///
      long   PRDAY18                    696- 700   ///
      long   PRDAY19                    701- 705   ///
      long   PRDAY20                    706- 710   ///
      long   PRDAY21                    711- 715   ///
      long   PRDAY22                    716- 720   ///
      long   PRDAY23                    721- 725   ///
      long   PRDAY24                    726- 730   ///
      long   PRDAY25                    731- 735   ///
      long   PRDAY26                    736- 740   ///
      long   PRDAY27                    741- 745   ///
      long   PRDAY28                    746- 750   ///
      long   PRDAY29                    751- 755   ///
      long   PRDAY30                    756- 760   ///
      str    PrimLang                   761- 763   ///
      str    PSTATE                     764- 765   ///
      long   PSTCO2                     766- 770   ///
      byte   RACE                       771- 772   ///
      byte   RACE_EDIT                  773- 774   ///
      str    RACE_X                     775        ///
      double TOTCHG                     776- 785   ///
      double TOTCHG_X                   786- 800   ///
      byte   TRAN_IN                    801- 802   ///
      byte   TRAN_OUT                   803- 804   ///
      int    YEAR                       805- 808   ///
      str    ZIP                        809- 813   ///
      str    ZIP3                       814- 816   ///
      int    ZIPINC_QRTL                817- 819   ///
      long   HOSPID                     820- 824   ///
      int    AYEAR                      825- 828   ///
      byte   BMONTH                     829- 830   ///
      int    BYEAR                      831- 834   ///
      byte   PRMONTH1                   835- 836   ///
      byte   PRMONTH2                   837- 838   ///
      byte   PRMONTH3                   839- 840   ///
      byte   PRMONTH4                   841- 842   ///
      byte   PRMONTH5                   843- 844   ///
      byte   PRMONTH6                   845- 846   ///
      byte   PRMONTH7                   847- 848   ///
      byte   PRMONTH8                   849- 850   ///
      byte   PRMONTH9                   851- 852   ///
      byte   PRMONTH10                  853- 854   ///
      byte   PRMONTH11                  855- 856   ///
      byte   PRMONTH12                  857- 858   ///
      byte   PRMONTH13                  859- 860   ///
      byte   PRMONTH14                  861- 862   ///
      byte   PRMONTH15                  863- 864   ///
      byte   PRMONTH16                  865- 866   ///
      byte   PRMONTH17                  867- 868   ///
      byte   PRMONTH18                  869- 870   ///
      byte   PRMONTH19                  871- 872   ///
      byte   PRMONTH20                  873- 874   ///
      byte   PRMONTH21                  875- 876   ///
      byte   PRMONTH22                  877- 878   ///
      byte   PRMONTH23                  879- 880   ///
      byte   PRMONTH24                  881- 882   ///
      byte   PRMONTH25                  883- 884   ///
      byte   PRMONTH26                  885- 886   ///
      byte   PRMONTH27                  887- 888   ///
      byte   PRMONTH28                  889- 890   ///
      byte   PRMONTH29                  891- 892   ///
      byte   PRMONTH30                  893- 894   ///
      int    PRYEAR1                    895- 898   ///
      int    PRYEAR2                    899- 902   ///
      int    PRYEAR3                    903- 906   ///
      int    PRYEAR4                    907- 910   ///
      int    PRYEAR5                    911- 914   ///
      int    PRYEAR6                    915- 918   ///
      int    PRYEAR7                    919- 922   ///
      int    PRYEAR8                    923- 926   ///
      int    PRYEAR9                    927- 930   ///
      int    PRYEAR10                   931- 934   ///
      int    PRYEAR11                   935- 938   ///
      int    PRYEAR12                   939- 942   ///
      int    PRYEAR13                   943- 946   ///
      int    PRYEAR14                   947- 950   ///
      int    PRYEAR15                   951- 954   ///
      int    PRYEAR16                   955- 958   ///
      int    PRYEAR17                   959- 962   ///
      int    PRYEAR18                   963- 966   ///
      int    PRYEAR19                   967- 970   ///
      int    PRYEAR20                   971- 974   ///
      int    PRYEAR21                   975- 978   ///
      int    PRYEAR22                   979- 982   ///
      int    PRYEAR23                   983- 986   ///
      int    PRYEAR24                   987- 990   ///
      int    PRYEAR25                   991- 994   ///
      int    PRYEAR26                   995- 998   ///
      int    PRYEAR27                   999-1002   ///
      int    PRYEAR28                  1003-1006   ///
      int    PRYEAR29                  1007-1010   ///
      int    PRYEAR30                  1011-1014   ///
      using  "MI_SID_2018_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
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
label var DXPOA29                  "Diagnosis 29, present on admission indicator"
label var DXPOA30                  "Diagnosis 30, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
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
label var I10_PR26                 "ICD-10-PCS Procedure 26"
label var I10_PR27                 "ICD-10-PCS Procedure 27"
label var I10_PR28                 "ICD-10-PCS Procedure 28"
label var I10_PR29                 "ICD-10-PCS Procedure 29"
label var I10_PR30                 "ICD-10-PCS Procedure 30"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MOMNUM_R                 "Mother's number (re-identified)"
label var MRN_R                    "Medical record number (re-identified)"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
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
label var PRDAY26                  "Number of days from admission to I10_PR26"
label var PRDAY27                  "Number of days from admission to I10_PR27"
label var PRDAY28                  "Number of days from admission to I10_PR28"
label var PRDAY29                  "Number of days from admission to I10_PR29"
label var PRDAY30                  "Number of days from admission to I10_PR30"
label var PrimLang                 "Primary language of patient"
label var PSTATE                   "Patient State postal code"
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
label var HOSPID                   "HCUP hospital identification number"
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
label var PRMONTH26                "Month of procedure 26"
label var PRMONTH27                "Month of procedure 27"
label var PRMONTH28                "Month of procedure 28"
label var PRMONTH29                "Month of procedure 29"
label var PRMONTH30                "Month of procedure 30"
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

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
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
recode HISPANIC                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MOMNUM_R                  (-99999999 -88888888 -66666666=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
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
recode PRMONTH25                 (-9 -8 -6 -5=.)
recode PRMONTH26                 (-9 -8 -6 -5=.)
recode PRMONTH27                 (-9 -8 -6 -5=.)
recode PRMONTH28                 (-9 -8 -6 -5=.)
recode PRMONTH29                 (-9 -8 -6 -5=.)
recode PRMONTH30                 (-9 -8 -6 -5=.)
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

save "MI_SID_2018_CORE.dta", replace
