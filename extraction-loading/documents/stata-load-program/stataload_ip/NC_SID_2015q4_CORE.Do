/*****************************************************************************
* Creation Date: 05/30/2017   
* NC_SID_2015q4_CORE.Do
* This program will load the 2015 NC ASCII CORE File into Stata.
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
      str    DISP_X                      34-  39   ///
      byte   DISPUB04                    40-  41   ///
      byte   DISPUNIFORM                 42-  43   ///
      byte   DMONTH                      44-  45   ///
      byte   DQTR                        46-  47   ///
      int    DRG                         48-  50   ///
      int    DRG_NoPOA                   51-  53   ///
      int    DRG32                       54-  56   ///
      byte   DRGVER                      57-  58   ///
      str    DSHOSPID                    59-  75   ///
      str    DXPOA1                      76        ///
      str    DXPOA2                      77        ///
      str    DXPOA3                      78        ///
      str    DXPOA4                      79        ///
      str    DXPOA5                      80        ///
      str    DXPOA6                      81        ///
      str    DXPOA7                      82        ///
      str    DXPOA8                      83        ///
      str    DXPOA9                      84        ///
      str    DXPOA10                     85        ///
      str    DXPOA11                     86        ///
      str    DXPOA12                     87        ///
      str    DXPOA13                     88        ///
      str    DXPOA14                     89        ///
      str    DXPOA15                     90        ///
      str    DXPOA16                     91        ///
      str    DXPOA17                     92        ///
      str    DXPOA18                     93        ///
      str    DXPOA19                     94        ///
      str    DXPOA20                     95        ///
      str    DXPOA21                     96        ///
      str    DXPOA22                     97        ///
      str    DXPOA23                     98        ///
      str    DXPOA24                     99        ///
      str    DXPOA25                    100        ///
      int    DXVER                      101- 103   ///
      str    E_POA1                     104        ///
      str    E_POA2                     105        ///
      str    E_POA3                     106        ///
      str    E_POA4                     107        ///
      str    E_POA5                     108        ///
      str    E_POA6                     109        ///
      str    E_POA7                     110        ///
      byte   FEMALE                     111- 112   ///
      byte   HCUP_ED                    113- 114   ///
      byte   HCUP_OS                    115- 116   ///
      byte   HISPANIC                   117- 118   ///
      str    HISPANIC_X                 119- 121   ///
      str    HOSPST                     122- 123   ///
      str    I10_DX_Admitting           124- 130   ///
      str    I10_DX1                    131- 137   ///
      str    I10_DX2                    138- 144   ///
      str    I10_DX3                    145- 151   ///
      str    I10_DX4                    152- 158   ///
      str    I10_DX5                    159- 165   ///
      str    I10_DX6                    166- 172   ///
      str    I10_DX7                    173- 179   ///
      str    I10_DX8                    180- 186   ///
      str    I10_DX9                    187- 193   ///
      str    I10_DX10                   194- 200   ///
      str    I10_DX11                   201- 207   ///
      str    I10_DX12                   208- 214   ///
      str    I10_DX13                   215- 221   ///
      str    I10_DX14                   222- 228   ///
      str    I10_DX15                   229- 235   ///
      str    I10_DX16                   236- 242   ///
      str    I10_DX17                   243- 249   ///
      str    I10_DX18                   250- 256   ///
      str    I10_DX19                   257- 263   ///
      str    I10_DX20                   264- 270   ///
      str    I10_DX21                   271- 277   ///
      str    I10_DX22                   278- 284   ///
      str    I10_DX23                   285- 291   ///
      str    I10_DX24                   292- 298   ///
      str    I10_DX25                   299- 305   ///
      int    I10_DXCCS1                 306- 309   ///
      int    I10_DXCCS2                 310- 313   ///
      int    I10_DXCCS3                 314- 317   ///
      int    I10_DXCCS4                 318- 321   ///
      int    I10_DXCCS5                 322- 325   ///
      int    I10_DXCCS6                 326- 329   ///
      int    I10_DXCCS7                 330- 333   ///
      int    I10_DXCCS8                 334- 337   ///
      int    I10_DXCCS9                 338- 341   ///
      int    I10_DXCCS10                342- 345   ///
      int    I10_DXCCS11                346- 349   ///
      int    I10_DXCCS12                350- 353   ///
      int    I10_DXCCS13                354- 357   ///
      int    I10_DXCCS14                358- 361   ///
      int    I10_DXCCS15                362- 365   ///
      int    I10_DXCCS16                366- 369   ///
      int    I10_DXCCS17                370- 373   ///
      int    I10_DXCCS18                374- 377   ///
      int    I10_DXCCS19                378- 381   ///
      int    I10_DXCCS20                382- 385   ///
      int    I10_DXCCS21                386- 389   ///
      int    I10_DXCCS22                390- 393   ///
      int    I10_DXCCS23                394- 397   ///
      int    I10_DXCCS24                398- 401   ///
      int    I10_DXCCS25                402- 405   ///
      str    I10_ECAUSE1                406- 412   ///
      str    I10_ECAUSE2                413- 419   ///
      str    I10_ECAUSE3                420- 426   ///
      str    I10_ECAUSE4                427- 433   ///
      str    I10_ECAUSE5                434- 440   ///
      str    I10_ECAUSE6                441- 447   ///
      str    I10_ECAUSE7                448- 454   ///
      int    I10_ECauseCCS1             455- 458   ///
      int    I10_ECauseCCS2             459- 462   ///
      int    I10_ECauseCCS3             463- 466   ///
      int    I10_ECauseCCS4             467- 470   ///
      int    I10_ECauseCCS5             471- 474   ///
      int    I10_ECauseCCS6             475- 478   ///
      int    I10_ECauseCCS7             479- 482   ///
      int    I10_HOSPBRTH               483- 485   ///
      int    I10_NCHRONIC               486- 488   ///
      int    I10_NDX                    489- 491   ///
      byte   I10_NECAUSE                492- 493   ///
      byte   I10_NEOMAT                 494- 495   ///
      int    I10_NPR                    496- 498   ///
      byte   I10_ORPROC                 499- 500   ///
      str    I10_PR1                    501- 507   ///
      str    I10_PR2                    508- 514   ///
      str    I10_PR3                    515- 521   ///
      str    I10_PR4                    522- 528   ///
      str    I10_PR5                    529- 535   ///
      str    I10_PR6                    536- 542   ///
      str    I10_PR7                    543- 549   ///
      str    I10_PR8                    550- 556   ///
      str    I10_PR9                    557- 563   ///
      str    I10_PR10                   564- 570   ///
      str    I10_PR11                   571- 577   ///
      str    I10_PR12                   578- 584   ///
      str    I10_PR13                   585- 591   ///
      str    I10_PR14                   592- 598   ///
      str    I10_PR15                   599- 605   ///
      str    I10_PR16                   606- 612   ///
      str    I10_PR17                   613- 619   ///
      str    I10_PR18                   620- 626   ///
      str    I10_PR19                   627- 633   ///
      str    I10_PR20                   634- 640   ///
      int    I10_PRCCS1                 641- 643   ///
      int    I10_PRCCS2                 644- 646   ///
      int    I10_PRCCS3                 647- 649   ///
      int    I10_PRCCS4                 650- 652   ///
      int    I10_PRCCS5                 653- 655   ///
      int    I10_PRCCS6                 656- 658   ///
      int    I10_PRCCS7                 659- 661   ///
      int    I10_PRCCS8                 662- 664   ///
      int    I10_PRCCS9                 665- 667   ///
      int    I10_PRCCS10                668- 670   ///
      int    I10_PRCCS11                671- 673   ///
      int    I10_PRCCS12                674- 676   ///
      int    I10_PRCCS13                677- 679   ///
      int    I10_PRCCS14                680- 682   ///
      int    I10_PRCCS15                683- 685   ///
      int    I10_PRCCS16                686- 688   ///
      int    I10_PRCCS17                689- 691   ///
      int    I10_PRCCS18                692- 694   ///
      int    I10_PRCCS19                695- 697   ///
      int    I10_PRCCS20                698- 700   ///
      int    I10_PROCTYPE               701- 703   ///
      byte   I10_SERVICELINE            704- 705   ///
      double KEY                        706- 720   ///
      long   LOS                        721- 725   ///
      long   LOS_X                      726- 731   ///
      byte   MDC                        732- 733   ///
      byte   MDC_NoPOA                  734- 735   ///
      byte   MDC32                      736- 737   ///
      byte   MEDINCSTQ                  738- 739   ///
      double OS_TIME                    740- 750   ///
      byte   PAY1                       751- 752   ///
      str    PAY1_X                     753- 757   ///
      byte   PAY2                       758- 759   ///
      str    PAY2_X                     760- 764   ///
      byte   PAY3                       765- 766   ///
      str    PAY3_X                     767- 771   ///
      int    PL_CBSA                    772- 774   ///
      byte   PL_NCHS                    775- 776   ///
      byte   PL_RUCC                    777- 778   ///
      byte   PL_UIC                     779- 780   ///
      byte   PL_UR_CAT4                 781- 782   ///
      byte   POA_Disch_Edit1            783- 784   ///
      byte   POA_Disch_Edit2            785- 786   ///
      byte   POA_Hosp_Edit1             787- 788   ///
      byte   POA_Hosp_Edit2             789- 790   ///
      byte   POA_Hosp_Edit3             791- 792   ///
      double POA_Hosp_Edit3_Value       793- 800   ///
      str    PointOfOrigin_X            801- 803   ///
      str    PointOfOriginUB04          804        ///
      long   PRDAY1                     805- 809   ///
      long   PRDAY2                     810- 814   ///
      long   PRDAY3                     815- 819   ///
      long   PRDAY4                     820- 824   ///
      long   PRDAY5                     825- 829   ///
      long   PRDAY6                     830- 834   ///
      long   PRDAY7                     835- 839   ///
      long   PRDAY8                     840- 844   ///
      long   PRDAY9                     845- 849   ///
      long   PRDAY10                    850- 854   ///
      long   PRDAY11                    855- 859   ///
      long   PRDAY12                    860- 864   ///
      long   PRDAY13                    865- 869   ///
      long   PRDAY14                    870- 874   ///
      long   PRDAY15                    875- 879   ///
      long   PRDAY16                    880- 884   ///
      long   PRDAY17                    885- 889   ///
      long   PRDAY18                    890- 894   ///
      long   PRDAY19                    895- 899   ///
      long   PRDAY20                    900- 904   ///
      int    PRVER                      905- 907   ///
      str    PSTATE                     908- 909   ///
      long   PSTCO                      910- 914   ///
      long   PSTCO2                     915- 919   ///
      byte   RACE                       920- 921   ///
      str    RACE_X                     922- 924   ///
      double TOTCHG                     925- 934   ///
      double TOTCHG_X                   935- 949   ///
      byte   TRAN_IN                    950- 951   ///
      byte   TRAN_OUT                   952- 953   ///
      int    YEAR                       954- 957   ///
      str    ZIP                        958- 962   ///
      str    ZIP3                       963- 965   ///
      int    ZIPINC_QRTL                966- 968   ///
      int    AYEAR                      969- 972   ///
      byte   BMONTH                     973- 974   ///
      int    BYEAR                      975- 978   ///
      using  "NC_SID_2015q4_CORE.ASC"

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
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
label var DRG32                    "DRG, version 32"
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
label var DXVER                    "Diagnosis Version"
label var E_POA1                   "E Cause 1, present on admission indicator"
label var E_POA2                   "E Cause 2, present on admission indicator"
label var E_POA3                   "E Cause 3, present on admission indicator"
label var E_POA4                   "E Cause 4, present on admission indicator"
label var E_POA5                   "E Cause 5, present on admission indicator"
label var E_POA6                   "E Cause 6, present on admission indicator"
label var E_POA7                   "E Cause 7, present on admission indicator"
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
label var I10_DXCCS1               "ICD-10-CM CCS: diagnosis 1"
label var I10_DXCCS2               "ICD-10-CM CCS: diagnosis 2"
label var I10_DXCCS3               "ICD-10-CM CCS: diagnosis 3"
label var I10_DXCCS4               "ICD-10-CM CCS: diagnosis 4"
label var I10_DXCCS5               "ICD-10-CM CCS: diagnosis 5"
label var I10_DXCCS6               "ICD-10-CM CCS: diagnosis 6"
label var I10_DXCCS7               "ICD-10-CM CCS: diagnosis 7"
label var I10_DXCCS8               "ICD-10-CM CCS: diagnosis 8"
label var I10_DXCCS9               "ICD-10-CM CCS: diagnosis 9"
label var I10_DXCCS10              "ICD-10-CM CCS: diagnosis 10"
label var I10_DXCCS11              "ICD-10-CM CCS: diagnosis 11"
label var I10_DXCCS12              "ICD-10-CM CCS: diagnosis 12"
label var I10_DXCCS13              "ICD-10-CM CCS: diagnosis 13"
label var I10_DXCCS14              "ICD-10-CM CCS: diagnosis 14"
label var I10_DXCCS15              "ICD-10-CM CCS: diagnosis 15"
label var I10_DXCCS16              "ICD-10-CM CCS: diagnosis 16"
label var I10_DXCCS17              "ICD-10-CM CCS: diagnosis 17"
label var I10_DXCCS18              "ICD-10-CM CCS: diagnosis 18"
label var I10_DXCCS19              "ICD-10-CM CCS: diagnosis 19"
label var I10_DXCCS20              "ICD-10-CM CCS: diagnosis 20"
label var I10_DXCCS21              "ICD-10-CM CCS: diagnosis 21"
label var I10_DXCCS22              "ICD-10-CM CCS: diagnosis 22"
label var I10_DXCCS23              "ICD-10-CM CCS: diagnosis 23"
label var I10_DXCCS24              "ICD-10-CM CCS: diagnosis 24"
label var I10_DXCCS25              "ICD-10-CM CCS: diagnosis 25"
label var I10_ECAUSE1              "ICD-10-CM E Cause 1"
label var I10_ECAUSE2              "ICD-10-CM E Cause 2"
label var I10_ECAUSE3              "ICD-10-CM E Cause 3"
label var I10_ECAUSE4              "ICD-10-CM E Cause 4"
label var I10_ECAUSE5              "ICD-10-CM E Cause 5"
label var I10_ECAUSE6              "ICD-10-CM E Cause 6"
label var I10_ECAUSE7              "ICD-10-CM E Cause 7"
label var I10_ECauseCCS1           "ICD-10-CM CCS: E Cause 1"
label var I10_ECauseCCS2           "ICD-10-CM CCS: E Cause 2"
label var I10_ECauseCCS3           "ICD-10-CM CCS: E Cause 3"
label var I10_ECauseCCS4           "ICD-10-CM CCS: E Cause 4"
label var I10_ECauseCCS5           "ICD-10-CM CCS: E Cause 5"
label var I10_ECauseCCS6           "ICD-10-CM CCS: E Cause 6"
label var I10_ECauseCCS7           "ICD-10-CM CCS: E Cause 7"
label var I10_HOSPBRTH             "ICD-10-CM Indicator of birth in this hospital"
label var I10_NCHRONIC             "ICD-10-CM Number of chronic conditions"
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_NECAUSE              "ICD-10-CM Number of E Causes on this record"
label var I10_NEOMAT               "ICD-10-CM/PCS Neonatal and/or maternal I10_DX and/or I10_PR"
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
label var I10_PRCCS1               "ICD-10-PCS CCS: procedure 1"
label var I10_PRCCS2               "ICD-10-PCS CCS: procedure 2"
label var I10_PRCCS3               "ICD-10-PCS CCS: procedure 3"
label var I10_PRCCS4               "ICD-10-PCS CCS: procedure 4"
label var I10_PRCCS5               "ICD-10-PCS CCS: procedure 5"
label var I10_PRCCS6               "ICD-10-PCS CCS: procedure 6"
label var I10_PRCCS7               "ICD-10-PCS CCS: procedure 7"
label var I10_PRCCS8               "ICD-10-PCS CCS: procedure 8"
label var I10_PRCCS9               "ICD-10-PCS CCS: procedure 9"
label var I10_PRCCS10              "ICD-10-PCS CCS: procedure 10"
label var I10_PRCCS11              "ICD-10-PCS CCS: procedure 11"
label var I10_PRCCS12              "ICD-10-PCS CCS: procedure 12"
label var I10_PRCCS13              "ICD-10-PCS CCS: procedure 13"
label var I10_PRCCS14              "ICD-10-PCS CCS: procedure 14"
label var I10_PRCCS15              "ICD-10-PCS CCS: procedure 15"
label var I10_PRCCS16              "ICD-10-PCS CCS: procedure 16"
label var I10_PRCCS17              "ICD-10-PCS CCS: procedure 17"
label var I10_PRCCS18              "ICD-10-PCS CCS: procedure 18"
label var I10_PRCCS19              "ICD-10-PCS CCS: procedure 19"
label var I10_PRCCS20              "ICD-10-PCS CCS: procedure 20"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var I10_SERVICELINE          "ICD-10-CM/PCS Hospital Service Line"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDC32                    "MDC, version 32"
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
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var RACE                     "Race (uniform)"
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
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRG32                     (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode I10_DXCCS1                (-999 -888 -666=.)
recode I10_DXCCS2                (-999 -888 -666=.)
recode I10_DXCCS3                (-999 -888 -666=.)
recode I10_DXCCS4                (-999 -888 -666=.)
recode I10_DXCCS5                (-999 -888 -666=.)
recode I10_DXCCS6                (-999 -888 -666=.)
recode I10_DXCCS7                (-999 -888 -666=.)
recode I10_DXCCS8                (-999 -888 -666=.)
recode I10_DXCCS9                (-999 -888 -666=.)
recode I10_DXCCS10               (-999 -888 -666=.)
recode I10_DXCCS11               (-999 -888 -666=.)
recode I10_DXCCS12               (-999 -888 -666=.)
recode I10_DXCCS13               (-999 -888 -666=.)
recode I10_DXCCS14               (-999 -888 -666=.)
recode I10_DXCCS15               (-999 -888 -666=.)
recode I10_DXCCS16               (-999 -888 -666=.)
recode I10_DXCCS17               (-999 -888 -666=.)
recode I10_DXCCS18               (-999 -888 -666=.)
recode I10_DXCCS19               (-999 -888 -666=.)
recode I10_DXCCS20               (-999 -888 -666=.)
recode I10_DXCCS21               (-999 -888 -666=.)
recode I10_DXCCS22               (-999 -888 -666=.)
recode I10_DXCCS23               (-999 -888 -666=.)
recode I10_DXCCS24               (-999 -888 -666=.)
recode I10_DXCCS25               (-999 -888 -666=.)
recode I10_ECauseCCS1            (-999 -888 -666=.)
recode I10_ECauseCCS2            (-999 -888 -666=.)
recode I10_ECauseCCS3            (-999 -888 -666=.)
recode I10_ECauseCCS4            (-999 -888 -666=.)
recode I10_ECauseCCS5            (-999 -888 -666=.)
recode I10_ECauseCCS6            (-999 -888 -666=.)
recode I10_ECauseCCS7            (-999 -888 -666=.)
recode I10_HOSPBRTH              (-99 -88 -66=.)
recode I10_NCHRONIC              (-99 -88 -66=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NECAUSE               (-9 -8 -6 -5=.)
recode I10_NEOMAT                (-9 -8 -6 -5=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_ORPROC                (-9 -8 -6 -5=.)
recode I10_PRCCS1                (-99 -88 -66=.)
recode I10_PRCCS2                (-99 -88 -66=.)
recode I10_PRCCS3                (-99 -88 -66=.)
recode I10_PRCCS4                (-99 -88 -66=.)
recode I10_PRCCS5                (-99 -88 -66=.)
recode I10_PRCCS6                (-99 -88 -66=.)
recode I10_PRCCS7                (-99 -88 -66=.)
recode I10_PRCCS8                (-99 -88 -66=.)
recode I10_PRCCS9                (-99 -88 -66=.)
recode I10_PRCCS10               (-99 -88 -66=.)
recode I10_PRCCS11               (-99 -88 -66=.)
recode I10_PRCCS12               (-99 -88 -66=.)
recode I10_PRCCS13               (-99 -88 -66=.)
recode I10_PRCCS14               (-99 -88 -66=.)
recode I10_PRCCS15               (-99 -88 -66=.)
recode I10_PRCCS16               (-99 -88 -66=.)
recode I10_PRCCS17               (-99 -88 -66=.)
recode I10_PRCCS18               (-99 -88 -66=.)
recode I10_PRCCS19               (-99 -88 -66=.)
recode I10_PRCCS20               (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode I10_SERVICELINE           (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDC32                     (-9 -8 -6 -5=.)
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
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)
recode BMONTH                    (-9 -8 -6 -5=.)
recode BYEAR                     (-999 -888 -666=.)

save "NC_SID_2015q4_CORE.dta", replace
