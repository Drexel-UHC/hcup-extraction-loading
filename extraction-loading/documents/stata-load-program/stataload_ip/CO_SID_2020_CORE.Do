/*****************************************************************************
* Creation Date: 04/26/2022   
* CO_SID_2020_CORE.Do
* This program will load the 2020 CO ASCII CORE File into Stata.
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
      byte   AMONTH                       4-   5   ///
      byte   ATYPE                        6-   7   ///
      byte   AWEEKEND                     8-   9   ///
      int    BWT                         10-  13   ///
      long   DaysToEvent                 14-  19   ///
      byte   DIED                        20-  21   ///
      str    DISP_X                      22-  23   ///
      byte   DISPUB04                    24-  25   ///
      byte   DISPUNIFORM                 26-  27   ///
      byte   DMONTH                      28-  29   ///
      byte   DQTR                        30-  31   ///
      int    DRG                         32-  34   ///
      int    DRG_NoPOA                   35-  37   ///
      byte   DRGVER                      38-  39   ///
      byte   FEMALE                      40-  41   ///
      byte   HCUP_ED                     42-  43   ///
      byte   HCUP_OS                     44-  45   ///
      byte   Homeless                    46-  47   ///
      str    HOSPST                      48-  49   ///
      int    I10_BIRTH                   50-  52   ///
      int    I10_DELIVERY                53-  55   ///
      str    I10_DX_Admitting            56-  62   ///
      str    I10_DX1                     63-  69   ///
      str    I10_DX2                     70-  76   ///
      str    I10_DX3                     77-  83   ///
      str    I10_DX4                     84-  90   ///
      str    I10_DX5                     91-  97   ///
      str    I10_DX6                     98- 104   ///
      str    I10_DX7                    105- 111   ///
      str    I10_DX8                    112- 118   ///
      str    I10_DX9                    119- 125   ///
      str    I10_DX10                   126- 132   ///
      str    I10_DX11                   133- 139   ///
      str    I10_DX12                   140- 146   ///
      str    I10_DX13                   147- 153   ///
      str    I10_DX14                   154- 160   ///
      str    I10_DX15                   161- 167   ///
      str    I10_DX16                   168- 174   ///
      str    I10_DX17                   175- 181   ///
      str    I10_DX18                   182- 188   ///
      str    I10_DX19                   189- 195   ///
      str    I10_DX20                   196- 202   ///
      str    I10_DX21                   203- 209   ///
      str    I10_DX22                   210- 216   ///
      str    I10_DX23                   217- 223   ///
      str    I10_DX24                   224- 230   ///
      str    I10_DX25                   231- 237   ///
      str    I10_DX26                   238- 244   ///
      str    I10_DX27                   245- 251   ///
      str    I10_DX28                   252- 258   ///
      str    I10_DX29                   259- 265   ///
      str    I10_DX30                   266- 272   ///
      str    I10_DX31                   273- 279   ///
      str    I10_DX32                   280- 286   ///
      str    I10_DX33                   287- 293   ///
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
      byte   I10_SERVICELINE            513- 514   ///
      double KEY                        515- 529   ///
      long   LOS                        530- 534   ///
      long   LOS_X                      535- 540   ///
      byte   MDC                        541- 542   ///
      byte   MDC_NoPOA                  543- 544   ///
      long   MDNUM1_R                   545- 553   ///
      long   MDNUM2_R                   554- 562   ///
      byte   MEDINCSTQ                  563- 564   ///
      str    P7EDSRC_X                  565- 566   ///
      byte   PAY1                       567- 568   ///
      str    PAY1_X                     569- 593   ///
      byte   PCLASS_ORPROC              594- 595   ///
      int    PL_CBSA                    596- 598   ///
      byte   PL_NCHS                    599- 600   ///
      byte   PL_RUCC                    601- 602   ///
      byte   PL_UIC                     603- 604   ///
      byte   PL_UR_CAT4                 605- 606   ///
      str    PointOfOrigin_X            607        ///
      str    PointOfOriginUB04          608        ///
      long   PRDAY1                     609- 613   ///
      long   PRDAY2                     614- 618   ///
      long   PRDAY3                     619- 623   ///
      long   PRDAY4                     624- 628   ///
      long   PRDAY5                     629- 633   ///
      long   PRDAY6                     634- 638   ///
      long   PRDAY7                     639- 643   ///
      long   PRDAY8                     644- 648   ///
      long   PRDAY9                     649- 653   ///
      long   PRDAY10                    654- 658   ///
      long   PRDAY11                    659- 663   ///
      long   PRDAY12                    664- 668   ///
      long   PRDAY13                    669- 673   ///
      long   PRDAY14                    674- 678   ///
      long   PRDAY15                    679- 683   ///
      long   PRDAY16                    684- 688   ///
      long   PRDAY17                    689- 693   ///
      long   PRDAY18                    694- 698   ///
      long   PRDAY19                    699- 703   ///
      long   PRDAY20                    704- 708   ///
      long   PRDAY21                    709- 713   ///
      long   PRDAY22                    714- 718   ///
      long   PRDAY23                    719- 723   ///
      long   PRDAY24                    724- 728   ///
      long   PRDAY25                    729- 733   ///
      long   PRDAY26                    734- 738   ///
      long   PRDAY27                    739- 743   ///
      long   PRDAY28                    744- 748   ///
      long   PRDAY29                    749- 753   ///
      long   PRDAY30                    754- 758   ///
      str    PSTATE                     759- 760   ///
      str    PSTATE_GEO                 761- 762   ///
      long   PSTCO                      763- 767   ///
      long   PSTCO_GEO                  768- 772   ///
      byte   RACE                       773- 774   ///
      float  RACE_PCT_MISS_HOSP         775- 781   ///
      str    RACE_X                     782- 796   ///
      str    SUBSTATE_REGION_X          797- 799   ///
      double TOTCHG                     800- 809   ///
      double TOTCHG_X                   810- 824   ///
      byte   TRAN_IN                    825- 826   ///
      byte   TRAN_OUT                   827- 828   ///
      long   VisitLink                  829- 837   ///
      int    YEAR                       838- 841   ///
      str    ZIP                        842- 846   ///
      str    ZIP3                       847- 849   ///
      int    ZIPINC_QRTL                850- 852   ///
      long   HOSPID                     853- 857   ///
      int    AYEAR                      858- 861   ///
      byte   BMONTH                     862- 863   ///
      int    BYEAR                      864- 867   ///
      byte   PRMONTH1                   868- 869   ///
      byte   PRMONTH2                   870- 871   ///
      byte   PRMONTH3                   872- 873   ///
      byte   PRMONTH4                   874- 875   ///
      byte   PRMONTH5                   876- 877   ///
      byte   PRMONTH6                   878- 879   ///
      byte   PRMONTH7                   880- 881   ///
      byte   PRMONTH8                   882- 883   ///
      byte   PRMONTH9                   884- 885   ///
      byte   PRMONTH10                  886- 887   ///
      byte   PRMONTH11                  888- 889   ///
      byte   PRMONTH12                  890- 891   ///
      byte   PRMONTH13                  892- 893   ///
      byte   PRMONTH14                  894- 895   ///
      byte   PRMONTH15                  896- 897   ///
      byte   PRMONTH16                  898- 899   ///
      byte   PRMONTH17                  900- 901   ///
      byte   PRMONTH18                  902- 903   ///
      byte   PRMONTH19                  904- 905   ///
      byte   PRMONTH20                  906- 907   ///
      byte   PRMONTH21                  908- 909   ///
      byte   PRMONTH22                  910- 911   ///
      byte   PRMONTH23                  912- 913   ///
      byte   PRMONTH24                  914- 915   ///
      byte   PRMONTH25                  916- 917   ///
      byte   PRMONTH26                  918- 919   ///
      byte   PRMONTH27                  920- 921   ///
      byte   PRMONTH28                  922- 923   ///
      byte   PRMONTH29                  924- 925   ///
      byte   PRMONTH30                  926- 927   ///
      int    PRYEAR1                    928- 931   ///
      int    PRYEAR2                    932- 935   ///
      int    PRYEAR3                    936- 939   ///
      int    PRYEAR4                    940- 943   ///
      int    PRYEAR5                    944- 947   ///
      int    PRYEAR6                    948- 951   ///
      int    PRYEAR7                    952- 955   ///
      int    PRYEAR8                    956- 959   ///
      int    PRYEAR9                    960- 963   ///
      int    PRYEAR10                   964- 967   ///
      int    PRYEAR11                   968- 971   ///
      int    PRYEAR12                   972- 975   ///
      int    PRYEAR13                   976- 979   ///
      int    PRYEAR14                   980- 983   ///
      int    PRYEAR15                   984- 987   ///
      int    PRYEAR16                   988- 991   ///
      int    PRYEAR17                   992- 995   ///
      int    PRYEAR18                   996- 999   ///
      int    PRYEAR19                  1000-1003   ///
      int    PRYEAR20                  1004-1007   ///
      int    PRYEAR21                  1008-1011   ///
      int    PRYEAR22                  1012-1015   ///
      int    PRYEAR23                  1016-1019   ///
      int    PRYEAR24                  1020-1023   ///
      int    PRYEAR25                  1024-1027   ///
      int    PRYEAR26                  1028-1031   ///
      int    PRYEAR27                  1032-1035   ///
      int    PRYEAR28                  1036-1039   ///
      int    PRYEAR29                  1040-1043   ///
      int    PRYEAR30                  1044-1047   ///
      using  "CO_SID_2020_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
label var DaysToEvent              "Days from 'start date' to admission"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
label var DRGVER                   "DRG grouper version used on discharge date"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var Homeless                 "Indicator that patient is homeless"
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
label var I10_PR25                 "ICD-10-PCS Procedure 25"
label var I10_PR26                 "ICD-10-PCS Procedure 26"
label var I10_PR27                 "ICD-10-PCS Procedure 27"
label var I10_PR28                 "ICD-10-PCS Procedure 28"
label var I10_PR29                 "ICD-10-PCS Procedure 29"
label var I10_PR30                 "ICD-10-PCS Procedure 30"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PCLASS_ORPROC            "Indicates operating room (major diagnostic or therapeutic) procedure on the record"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes (RUCC)"
label var PL_UIC                   "Patient location: Urban Influence Codes"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
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
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
label var RACE                     "Race (uniform)"
label var RACE_PCT_MISS_HOSP       "Hospital percentage of missing or invalid race values"
label var RACE_X                   "Race (as received from source)"
label var SUBSTATE_REGION_X        "Region of the Hospital within a State (as received from source)"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var VisitLink                "Visit linkage variable"
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
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
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
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PCLASS_ORPROC             (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
recode PL_RUCC                   (-9 -8 -6 -5=.)
recode PL_UIC                    (-9 -8 -6 -5=.)
recode PL_UR_CAT4                (-9 -8 -6 -5=.)
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
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_PCT_MISS_HOSP        (-999.99 -888.88 -666.66=.)
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

save "CO_SID_2020_CORE.dta", replace
