/*****************************************************************************
* Creation Date: 10/05/2016   
* AR_SID_2014_CORE.Do
* This program will load the 2014 AR ASCII CORE File into Stata.
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
      byte   APGAR1                      16-  17   ///
      byte   APGAR5                      18-  19   ///
      byte   ATYPE                       20-  21   ///
      byte   AWEEKEND                    22-  23   ///
      str    BILLTYPE                    24-  27   ///
      int    BWT                         28-  31   ///
      str    CPT1                        32-  36   ///
      str    CPT2                        37-  41   ///
      str    CPT3                        42-  46   ///
      int    CPTCCS1                     47-  49   ///
      int    CPTCCS2                     50-  52   ///
      int    CPTCCS3                     53-  55   ///
      int    DHOUR                       56-  59   ///
      byte   DIED                        60-  61   ///
      byte   DISPUB04                    62-  63   ///
      byte   DISPUNIFORM                 64-  65   ///
      str    DISP_X                      66-  67   ///
      byte   DMONTH                      68-  69   ///
      byte   DNR                         70-  71   ///
      byte   DQTR                        72-  73   ///
      int    DRG                         74-  76   ///
      int    DRG24                       77-  79   ///
      byte   DRGVER                      80-  81   ///
      int    DRG_NoPOA                   82-  84   ///
      str    DSHOSPID                    85- 101   ///
      str    DX1                        102- 108   ///
      str    DX2                        109- 115   ///
      str    DX3                        116- 122   ///
      str    DX4                        123- 129   ///
      str    DX5                        130- 136   ///
      str    DX6                        137- 143   ///
      str    DX7                        144- 150   ///
      str    DX8                        151- 157   ///
      str    DX9                        158- 164   ///
      str    DX10                       165- 171   ///
      str    DX11                       172- 178   ///
      str    DX12                       179- 185   ///
      str    DX13                       186- 192   ///
      str    DX14                       193- 199   ///
      str    DX15                       200- 206   ///
      str    DX16                       207- 213   ///
      str    DX17                       214- 220   ///
      str    DX18                       221- 227   ///
      int    DXCCS1                     228- 231   ///
      int    DXCCS2                     232- 235   ///
      int    DXCCS3                     236- 239   ///
      int    DXCCS4                     240- 243   ///
      int    DXCCS5                     244- 247   ///
      int    DXCCS6                     248- 251   ///
      int    DXCCS7                     252- 255   ///
      int    DXCCS8                     256- 259   ///
      int    DXCCS9                     260- 263   ///
      int    DXCCS10                    264- 267   ///
      int    DXCCS11                    268- 271   ///
      int    DXCCS12                    272- 275   ///
      int    DXCCS13                    276- 279   ///
      int    DXCCS14                    280- 283   ///
      int    DXCCS15                    284- 287   ///
      int    DXCCS16                    288- 291   ///
      int    DXCCS17                    292- 295   ///
      int    DXCCS18                    296- 299   ///
      str    DXPOA1                     300        ///
      str    DXPOA2                     301        ///
      str    DXPOA3                     302        ///
      str    DXPOA4                     303        ///
      str    DXPOA5                     304        ///
      str    DXPOA6                     305        ///
      str    DXPOA7                     306        ///
      str    DXPOA8                     307        ///
      str    DXPOA9                     308        ///
      str    DXPOA10                    309        ///
      str    DXPOA11                    310        ///
      str    DXPOA12                    311        ///
      str    DXPOA13                    312        ///
      str    DXPOA14                    313        ///
      str    DXPOA15                    314        ///
      str    DXPOA16                    315        ///
      str    DXPOA17                    316        ///
      str    DXPOA18                    317        ///
      int    DXVER                      318- 320   ///
      str    DX_Admitting               321- 327   ///
      long   DaysToEvent                328- 333   ///
      str    ECODE1                     334- 340   ///
      str    ECODE2                     341- 347   ///
      str    ECODE3                     348- 354   ///
      str    ECODE4                     355- 361   ///
      str    ECODE5                     362- 368   ///
      str    ECODE6                     369- 375   ///
      str    ECODE7                     376- 382   ///
      str    ECODE8                     383- 389   ///
      str    ECODE9                     390- 396   ///
      str    ECODE10                    397- 403   ///
      str    ECODE11                    404- 410   ///
      str    ECODE12                    411- 417   ///
      int    E_CCS1                     418- 421   ///
      int    E_CCS2                     422- 425   ///
      int    E_CCS3                     426- 429   ///
      int    E_CCS4                     430- 433   ///
      int    E_CCS5                     434- 437   ///
      int    E_CCS6                     438- 441   ///
      int    E_CCS7                     442- 445   ///
      int    E_CCS8                     446- 449   ///
      int    E_CCS9                     450- 453   ///
      int    E_CCS10                    454- 457   ///
      int    E_CCS11                    458- 461   ///
      int    E_CCS12                    462- 465   ///
      str    E_POA1                     466        ///
      str    E_POA2                     467        ///
      str    E_POA3                     468        ///
      str    E_POA4                     469        ///
      str    E_POA5                     470        ///
      str    E_POA6                     471        ///
      str    E_POA7                     472        ///
      str    E_POA8                     473        ///
      str    E_POA9                     474        ///
      str    E_POA10                    475        ///
      str    E_POA11                    476        ///
      str    E_POA12                    477        ///
      byte   FEMALE                     478- 479   ///
      byte   HCUP_ED                    480- 481   ///
      byte   HCUP_OS                    482- 483   ///
      str    HISPANIC_X                 484        ///
      int    HOSPBRTH                   485- 487   ///
      str    HOSPST                     488- 489   ///
      double KEY                        490- 504   ///
      long   LOS                        505- 509   ///
      long   LOS_X                      510- 515   ///
      str    MARITALSTATUSUB04          516        ///
      str    MARITALSTATUS_X            517        ///
      byte   MDC                        518- 519   ///
      byte   MDC24                      520- 521   ///
      byte   MDC_NoPOA                  522- 523   ///
      long   MDNUM1_R                   524- 532   ///
      long   MDNUM2_R                   533- 541   ///
      long   MDNUM3_R                   542- 550   ///
      long   MDNUM4_R                   551- 559   ///
      str    MDNUMTYPE1                 560        ///
      byte   MEDINCSTQ                  561- 562   ///
      long   MRN_R                      563- 571   ///
      int    NCHRONIC                   572- 574   ///
      int    NCPT                       575- 578   ///
      int    NDX                        579- 581   ///
      byte   NECODE                     582- 583   ///
      byte   NEOMAT                     584- 585   ///
      int    NPR                        586- 588   ///
      byte   ORPROC                     589- 590   ///
      double OS_TIME                    591- 601   ///
      str    P7EDSRC_X                  602- 603   ///
      byte   PAY1                       604- 605   ///
      str    PAY1_X                     606        ///
      byte   PAY2                       607- 608   ///
      str    PAY2_X                     609        ///
      byte   PAY3                       610- 611   ///
      str    PAY3_X                     612        ///
      int    PL_CBSA                    613- 615   ///
      byte   PL_NCHS                    616- 617   ///
      byte   PL_RUCC                    618- 619   ///
      byte   PL_UIC                     620- 621   ///
      byte   PL_UR_CAT4                 622- 623   ///
      byte   POA_Disch_Edit1            624- 625   ///
      byte   POA_Disch_Edit2            626- 627   ///
      byte   POA_Hosp_Edit1             628- 629   ///
      byte   POA_Hosp_Edit2             630- 631   ///
      byte   POA_Hosp_Edit3             632- 633   ///
      double POA_Hosp_Edit3_Value       634- 641   ///
      str    PR1                        642- 648   ///
      str    PR2                        649- 655   ///
      str    PR3                        656- 662   ///
      str    PR4                        663- 669   ///
      str    PR5                        670- 676   ///
      str    PR6                        677- 683   ///
      str    PR7                        684- 690   ///
      str    PR8                        691- 697   ///
      int    PRCCS1                     698- 700   ///
      int    PRCCS2                     701- 703   ///
      int    PRCCS3                     704- 706   ///
      int    PRCCS4                     707- 709   ///
      int    PRCCS5                     710- 712   ///
      int    PRCCS6                     713- 715   ///
      int    PRCCS7                     716- 718   ///
      int    PRCCS8                     719- 721   ///
      long   PRDAY1                     722- 726   ///
      long   PRDAY2                     727- 731   ///
      long   PRDAY3                     732- 736   ///
      long   PRDAY4                     737- 741   ///
      long   PRDAY5                     742- 746   ///
      long   PRDAY6                     747- 751   ///
      long   PRDAY7                     752- 756   ///
      long   PRDAY8                     757- 761   ///
      int    PROCTYPE                   762- 764   ///
      int    PRVER                      765- 767   ///
      str    PSTATE                     768- 769   ///
      long   PSTCO2                     770- 774   ///
      str    PointOfOriginUB04          775        ///
      str    PointOfOrigin_X            776        ///
      byte   RACE                       777- 778   ///
      str    RACE_X                     779        ///
      byte   SERVICELINE                780- 781   ///
      double TOTCHG                     782- 791   ///
      double TOTCHG_X                   792- 806   ///
      byte   TRAN_IN                    807- 808   ///
      byte   TRAN_OUT                   809- 810   ///
      long   VisitLink                  811- 819   ///
      int    YEAR                       820- 823   ///
      str    ZIP3                       824- 826   ///
      int    ZIPINC_QRTL                827- 829   ///
      int    AYEAR                      830- 833   ///
      byte   BMONTH                     834- 835   ///
      int    BYEAR                      836- 839   ///
      byte   PRMONTH1                   840- 841   ///
      byte   PRMONTH2                   842- 843   ///
      byte   PRMONTH3                   844- 845   ///
      byte   PRMONTH4                   846- 847   ///
      byte   PRMONTH5                   848- 849   ///
      byte   PRMONTH6                   850- 851   ///
      int    PRYEAR1                    852- 855   ///
      int    PRYEAR2                    856- 859   ///
      int    PRYEAR3                    860- 863   ///
      int    PRYEAR4                    864- 867   ///
      int    PRYEAR5                    868- 871   ///
      int    PRYEAR6                    872- 875   ///
      using  "AR_SID_2014_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var APGAR1                   "One-minute APGAR score"
label var APGAR5                   "Five-minute APGAR score"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var BWT                      "Birth weight in grams"
label var CPT1                     "CPT/HCPCS procedure code 1"
label var CPT2                     "CPT/HCPCS procedure code 2"
label var CPT3                     "CPT/HCPCS procedure code 3"
label var CPTCCS1                  "CCS: CPT 1"
label var CPTCCS2                  "CCS: CPT 2"
label var CPTCCS3                  "CCS: CPT 3"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DMONTH                   "Discharge month"
label var DNR                      "Do not resuscitate indicator"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRG24                    "DRG, version 24"
label var DRGVER                   "DRG grouper version used on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
label var DSHOSPID                 "Data source hospital identifier"
label var DX1                      "Diagnosis 1"
label var DX2                      "Diagnosis 2"
label var DX3                      "Diagnosis 3"
label var DX4                      "Diagnosis 4"
label var DX5                      "Diagnosis 5"
label var DX6                      "Diagnosis 6"
label var DX7                      "Diagnosis 7"
label var DX8                      "Diagnosis 8"
label var DX9                      "Diagnosis 9"
label var DX10                     "Diagnosis 10"
label var DX11                     "Diagnosis 11"
label var DX12                     "Diagnosis 12"
label var DX13                     "Diagnosis 13"
label var DX14                     "Diagnosis 14"
label var DX15                     "Diagnosis 15"
label var DX16                     "Diagnosis 16"
label var DX17                     "Diagnosis 17"
label var DX18                     "Diagnosis 18"
label var DXCCS1                   "CCS: diagnosis 1"
label var DXCCS2                   "CCS: diagnosis 2"
label var DXCCS3                   "CCS: diagnosis 3"
label var DXCCS4                   "CCS: diagnosis 4"
label var DXCCS5                   "CCS: diagnosis 5"
label var DXCCS6                   "CCS: diagnosis 6"
label var DXCCS7                   "CCS: diagnosis 7"
label var DXCCS8                   "CCS: diagnosis 8"
label var DXCCS9                   "CCS: diagnosis 9"
label var DXCCS10                  "CCS: diagnosis 10"
label var DXCCS11                  "CCS: diagnosis 11"
label var DXCCS12                  "CCS: diagnosis 12"
label var DXCCS13                  "CCS: diagnosis 13"
label var DXCCS14                  "CCS: diagnosis 14"
label var DXCCS15                  "CCS: diagnosis 15"
label var DXCCS16                  "CCS: diagnosis 16"
label var DXCCS17                  "CCS: diagnosis 17"
label var DXCCS18                  "CCS: diagnosis 18"
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
label var DXVER                    "Diagnosis Version"
label var DX_Admitting             "Admitting Diagnosis Code"
label var DaysToEvent              "Days from 'start date' to admission"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var ECODE8                   "E code 8"
label var ECODE9                   "E code 9"
label var ECODE10                  "E code 10"
label var ECODE11                  "E code 11"
label var ECODE12                  "E code 12"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_CCS7                   "CCS: E Code 7"
label var E_CCS8                   "CCS: E Code 8"
label var E_CCS9                   "CCS: E Code 9"
label var E_CCS10                  "CCS: E Code 10"
label var E_CCS11                  "CCS: E Code 11"
label var E_CCS12                  "CCS: E Code 12"
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var E_POA7                   "E Code 7, present on admission indicator"
label var E_POA8                   "E Code 8, present on admission indicator"
label var E_POA9                   "E Code 9, present on admission indicator"
label var E_POA10                  "E Code 10, present on admission indicator"
label var E_POA11                  "E Code 11, present on admission indicator"
label var E_POA12                  "E Code 12, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MARITALSTATUS_X          "Patient's marital status (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC24                    "MDC, version 24"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MDNUM4_R                 "Physician 4 number (re-identified)"
label var MDNUMTYPE1               "Physician 1 number type"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var NCHRONIC                 "Number of chronic conditions"
label var NCPT                     "Number of CPT/HCPCS procedures on this record"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
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
label var POA_Disch_Edit1          "Indication that a discharge has POA missing on all nonexempt diagnoses"
label var POA_Disch_Edit2          "Indication that a discharge has POA missing on all nonexempt secondary diagnoses"
label var POA_Hosp_Edit1           "Indication that a hospital has POA reported as Y on all diagnoses on all discharges"
label var POA_Hosp_Edit2           "Indication that a hospital has POA reported as missing on all non-Medicare discharges"
label var POA_Hosp_Edit3
    "Indication that a hospital reported POA as missing on all nonexempt diagnoses for 15 percent or more of discharges"
label var POA_Hosp_Edit3_Value     "Percentage of discharges with all nonexempt diagnoses missing POA indicators"
label var PR1                      "Procedure 1"
label var PR2                      "Procedure 2"
label var PR3                      "Procedure 3"
label var PR4                      "Procedure 4"
label var PR5                      "Procedure 5"
label var PR6                      "Procedure 6"
label var PR7                      "Procedure 7"
label var PR8                      "Procedure 8"
label var PRCCS1                   "CCS: procedure 1"
label var PRCCS2                   "CCS: procedure 2"
label var PRCCS3                   "CCS: procedure 3"
label var PRCCS4                   "CCS: procedure 4"
label var PRCCS5                   "CCS: procedure 5"
label var PRCCS6                   "CCS: procedure 6"
label var PRCCS7                   "CCS: procedure 7"
label var PRCCS8                   "CCS: procedure 8"
label var PRDAY1                   "Number of days from admission to PR1"
label var PRDAY2                   "Number of days from admission to PR2"
label var PRDAY3                   "Number of days from admission to PR3"
label var PRDAY4                   "Number of days from admission to PR4"
label var PRDAY5                   "Number of days from admission to PR5"
label var PRDAY6                   "Number of days from admission to PR6"
label var PRDAY7                   "Number of days from admission to PR7"
label var PRDAY8                   "Number of days from admission to PR8"
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var SERVICELINE              "Hospital Service Line"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var VisitLink                "Visit linkage variable"
label var YEAR                     "Calendar year"
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
label var PRYEAR1                  "Year of procedure 1"
label var PRYEAR2                  "Year of procedure 2"
label var PRYEAR3                  "Year of procedure 3"
label var PRYEAR4                  "Year of procedure 4"
label var PRYEAR5                  "Year of procedure 5"
label var PRYEAR6                  "Year of procedure 6"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode APGAR1                    (-9 -8 -6 -5=.)
recode APGAR5                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
recode CPTCCS1                   (-99 -88 -66=.)
recode CPTCCS2                   (-99 -88 -66=.)
recode CPTCCS3                   (-99 -88 -66=.)
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DNR                       (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DRG                       (-99 -88 -66=.)
recode DRG24                     (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DXCCS1                    (-999 -888 -666=.)
recode DXCCS2                    (-999 -888 -666=.)
recode DXCCS3                    (-999 -888 -666=.)
recode DXCCS4                    (-999 -888 -666=.)
recode DXCCS5                    (-999 -888 -666=.)
recode DXCCS6                    (-999 -888 -666=.)
recode DXCCS7                    (-999 -888 -666=.)
recode DXCCS8                    (-999 -888 -666=.)
recode DXCCS9                    (-999 -888 -666=.)
recode DXCCS10                   (-999 -888 -666=.)
recode DXCCS11                   (-999 -888 -666=.)
recode DXCCS12                   (-999 -888 -666=.)
recode DXCCS13                   (-999 -888 -666=.)
recode DXCCS14                   (-999 -888 -666=.)
recode DXCCS15                   (-999 -888 -666=.)
recode DXCCS16                   (-999 -888 -666=.)
recode DXCCS17                   (-999 -888 -666=.)
recode DXCCS18                   (-999 -888 -666=.)
recode DXVER                     (-99 -88 -66=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode E_CCS1                    (-999 -888 -666=.)
recode E_CCS2                    (-999 -888 -666=.)
recode E_CCS3                    (-999 -888 -666=.)
recode E_CCS4                    (-999 -888 -666=.)
recode E_CCS5                    (-999 -888 -666=.)
recode E_CCS6                    (-999 -888 -666=.)
recode E_CCS7                    (-999 -888 -666=.)
recode E_CCS8                    (-999 -888 -666=.)
recode E_CCS9                    (-999 -888 -666=.)
recode E_CCS10                   (-999 -888 -666=.)
recode E_CCS11                   (-999 -888 -666=.)
recode E_CCS12                   (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC24                     (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM4_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NCPT                      (-999 -888 -666=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
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
recode PRCCS1                    (-99 -88 -66=.)
recode PRCCS2                    (-99 -88 -66=.)
recode PRCCS3                    (-99 -88 -66=.)
recode PRCCS4                    (-99 -88 -66=.)
recode PRCCS5                    (-99 -88 -66=.)
recode PRCCS6                    (-99 -88 -66=.)
recode PRCCS7                    (-99 -88 -66=.)
recode PRCCS8                    (-99 -88 -66=.)
recode PRDAY1                    (-9999 -8888 -6666=.)
recode PRDAY2                    (-9999 -8888 -6666=.)
recode PRDAY3                    (-9999 -8888 -6666=.)
recode PRDAY4                    (-9999 -8888 -6666=.)
recode PRDAY5                    (-9999 -8888 -6666=.)
recode PRDAY6                    (-9999 -8888 -6666=.)
recode PRDAY7                    (-9999 -8888 -6666=.)
recode PRDAY8                    (-9999 -8888 -6666=.)
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode SERVICELINE               (-9 -8 -6 -5=.)
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
recode PRYEAR1                   (-999 -888 -666=.)
recode PRYEAR2                   (-999 -888 -666=.)
recode PRYEAR3                   (-999 -888 -666=.)
recode PRYEAR4                   (-999 -888 -666=.)
recode PRYEAR5                   (-999 -888 -666=.)
recode PRYEAR6                   (-999 -888 -666=.)

save "AR_SID_2014_CORE.dta", replace
