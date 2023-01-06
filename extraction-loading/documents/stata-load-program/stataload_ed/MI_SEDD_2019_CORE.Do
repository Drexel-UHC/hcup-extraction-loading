/*****************************************************************************
* Creation Date: 07/16/2021   
* MI_SEDD_2019_CORE.Do
* This program will load the 2019 MI ASCII CORE File into Stata.
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
      str    CPT1                        16-  20   ///
      str    CPT2                        21-  25   ///
      str    CPT3                        26-  30   ///
      str    CPT4                        31-  35   ///
      str    CPT5                        36-  40   ///
      str    CPT6                        41-  45   ///
      str    CPT7                        46-  50   ///
      str    CPT8                        51-  55   ///
      str    CPT9                        56-  60   ///
      str    CPT10                       61-  65   ///
      str    CPT11                       66-  70   ///
      str    CPT12                       71-  75   ///
      str    CPT13                       76-  80   ///
      str    CPT14                       81-  85   ///
      str    CPT15                       86-  90   ///
      str    CPT16                       91-  95   ///
      str    CPT17                       96- 100   ///
      str    CPT18                      101- 105   ///
      str    CPT19                      106- 110   ///
      str    CPT20                      111- 115   ///
      str    CPT21                      116- 120   ///
      str    CPT22                      121- 125   ///
      str    CPT23                      126- 130   ///
      str    CPT24                      131- 135   ///
      str    CPT25                      136- 140   ///
      str    CPT26                      141- 145   ///
      str    CPT27                      146- 150   ///
      str    CPT28                      151- 155   ///
      str    CPT29                      156- 160   ///
      str    CPT30                      161- 165   ///
      int    CPTCCS1                    166- 168   ///
      int    CPTCCS2                    169- 171   ///
      int    CPTCCS3                    172- 174   ///
      int    CPTCCS4                    175- 177   ///
      int    CPTCCS5                    178- 180   ///
      int    CPTCCS6                    181- 183   ///
      int    CPTCCS7                    184- 186   ///
      int    CPTCCS8                    187- 189   ///
      int    CPTCCS9                    190- 192   ///
      int    CPTCCS10                   193- 195   ///
      int    CPTCCS11                   196- 198   ///
      int    CPTCCS12                   199- 201   ///
      int    CPTCCS13                   202- 204   ///
      int    CPTCCS14                   205- 207   ///
      int    CPTCCS15                   208- 210   ///
      int    CPTCCS16                   211- 213   ///
      int    CPTCCS17                   214- 216   ///
      int    CPTCCS18                   217- 219   ///
      int    CPTCCS19                   220- 222   ///
      int    CPTCCS20                   223- 225   ///
      int    CPTCCS21                   226- 228   ///
      int    CPTCCS22                   229- 231   ///
      int    CPTCCS23                   232- 234   ///
      int    CPTCCS24                   235- 237   ///
      int    CPTCCS25                   238- 240   ///
      int    CPTCCS26                   241- 243   ///
      int    CPTCCS27                   244- 246   ///
      int    CPTCCS28                   247- 249   ///
      int    CPTCCS29                   250- 252   ///
      int    CPTCCS30                   253- 255   ///
      int    CPTDAY1                    256- 258   ///
      int    CPTDAY2                    259- 261   ///
      int    CPTDAY3                    262- 264   ///
      int    CPTDAY4                    265- 267   ///
      int    CPTDAY5                    268- 270   ///
      int    CPTDAY6                    271- 273   ///
      int    CPTDAY7                    274- 276   ///
      int    CPTDAY8                    277- 279   ///
      int    CPTDAY9                    280- 282   ///
      int    CPTDAY10                   283- 285   ///
      int    CPTDAY11                   286- 288   ///
      int    CPTDAY12                   289- 291   ///
      int    CPTDAY13                   292- 294   ///
      int    CPTDAY14                   295- 297   ///
      int    CPTDAY15                   298- 300   ///
      int    CPTDAY16                   301- 303   ///
      int    CPTDAY17                   304- 306   ///
      int    CPTDAY18                   307- 309   ///
      int    CPTDAY19                   310- 312   ///
      int    CPTDAY20                   313- 315   ///
      int    CPTDAY21                   316- 318   ///
      int    CPTDAY22                   319- 321   ///
      int    CPTDAY23                   322- 324   ///
      int    CPTDAY24                   325- 327   ///
      int    CPTDAY25                   328- 330   ///
      int    CPTDAY26                   331- 333   ///
      int    CPTDAY27                   334- 336   ///
      int    CPTDAY28                   337- 339   ///
      int    CPTDAY29                   340- 342   ///
      int    CPTDAY30                   343- 345   ///
      byte   DIED                       346- 347   ///
      str    DISP_X                     348- 349   ///
      byte   DISPUB04                   350- 351   ///
      byte   DISPUNIFORM                352- 353   ///
      byte   DMONTH                     354- 355   ///
      byte   DQTR                       356- 357   ///
      byte   FEMALE                     358- 359   ///
      byte   HCUP_ED                    360- 361   ///
      byte   HCUP_OS                    362- 363   ///
      byte   HISPANIC                   364- 365   ///
      str    HISPANIC_X                 366        ///
      str    HOSPST                     367- 368   ///
      str    I10_DX_Visit_Reason1       369- 375   ///
      str    I10_DX1                    376- 382   ///
      str    I10_DX2                    383- 389   ///
      str    I10_DX3                    390- 396   ///
      str    I10_DX4                    397- 403   ///
      str    I10_DX5                    404- 410   ///
      str    I10_DX6                    411- 417   ///
      str    I10_DX7                    418- 424   ///
      str    I10_DX8                    425- 431   ///
      str    I10_DX9                    432- 438   ///
      str    I10_DX10                   439- 445   ///
      str    I10_DX11                   446- 452   ///
      str    I10_DX12                   453- 459   ///
      str    I10_DX13                   460- 466   ///
      str    I10_DX14                   467- 473   ///
      str    I10_DX15                   474- 480   ///
      str    I10_DX16                   481- 487   ///
      str    I10_DX17                   488- 494   ///
      str    I10_DX18                   495- 501   ///
      str    I10_DX19                   502- 508   ///
      str    I10_DX20                   509- 515   ///
      str    I10_DX21                   516- 522   ///
      str    I10_DX22                   523- 529   ///
      str    I10_DX23                   530- 536   ///
      str    I10_DX24                   537- 543   ///
      str    I10_DX25                   544- 550   ///
      str    I10_DX26                   551- 557   ///
      str    I10_DX27                   558- 564   ///
      str    I10_DX28                   565- 571   ///
      str    I10_DX29                   572- 578   ///
      str    I10_DX30                   579- 585   ///
      int    I10_NDX                    586- 588   ///
      int    I10_PROCTYPE               589- 591   ///
      double KEY                        592- 606   ///
      long   LOS                        607- 611   ///
      long   LOS_X                      612- 617   ///
      long   MDNUM1_R                   618- 626   ///
      byte   MEDINCSTQ                  627- 628   ///
      long   MRN_R                      629- 637   ///
      int    NCPT                       638- 641   ///
      byte   PAY1                       642- 643   ///
      str    PAY1_X                     644- 645   ///
      byte   PAY2                       646- 647   ///
      str    PAY2_X                     648- 649   ///
      int    PL_CBSA                    650- 652   ///
      byte   PL_NCHS                    653- 654   ///
      byte   PL_RUCC                    655- 656   ///
      byte   PL_UIC                     657- 658   ///
      byte   PL_UR_CAT4                 659- 660   ///
      str    PointOfOrigin_X            661        ///
      str    PointOfOriginUB04          662        ///
      str    PrimLang                   663- 665   ///
      str    PSTATE                     666- 667   ///
      str    PSTATE_GEO                 668- 669   ///
      long   PSTCO_GEO                  670- 674   ///
      byte   RACE                       675- 676   ///
      str    RACE_X                     677        ///
      byte   STATE_AS                   678- 679   ///
      byte   STATE_ED                   680- 681   ///
      byte   STATE_OS                   682- 683   ///
      int    YEAR                       684- 687   ///
      str    ZIP                        688- 692   ///
      str    ZIP3                       693- 695   ///
      int    ZIPINC_QRTL                696- 698   ///
      long   HOSPID                     699- 703   ///
      int    AYEAR                      704- 707   ///
      byte   BMONTH                     708- 709   ///
      int    BYEAR                      710- 713   ///
      using  "MI_SEDD_2019_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var CPT1                     "CPT/HCPCS procedure code 1"
label var CPT2                     "CPT/HCPCS procedure code 2"
label var CPT3                     "CPT/HCPCS procedure code 3"
label var CPT4                     "CPT/HCPCS procedure code 4"
label var CPT5                     "CPT/HCPCS procedure code 5"
label var CPT6                     "CPT/HCPCS procedure code 6"
label var CPT7                     "CPT/HCPCS procedure code 7"
label var CPT8                     "CPT/HCPCS procedure code 8"
label var CPT9                     "CPT/HCPCS procedure code 9"
label var CPT10                    "CPT/HCPCS procedure code 10"
label var CPT11                    "CPT/HCPCS procedure code 11"
label var CPT12                    "CPT/HCPCS procedure code 12"
label var CPT13                    "CPT/HCPCS procedure code 13"
label var CPT14                    "CPT/HCPCS procedure code 14"
label var CPT15                    "CPT/HCPCS procedure code 15"
label var CPT16                    "CPT/HCPCS procedure code 16"
label var CPT17                    "CPT/HCPCS procedure code 17"
label var CPT18                    "CPT/HCPCS procedure code 18"
label var CPT19                    "CPT/HCPCS procedure code 19"
label var CPT20                    "CPT/HCPCS procedure code 20"
label var CPT21                    "CPT/HCPCS procedure code 21"
label var CPT22                    "CPT/HCPCS procedure code 22"
label var CPT23                    "CPT/HCPCS procedure code 23"
label var CPT24                    "CPT/HCPCS procedure code 24"
label var CPT25                    "CPT/HCPCS procedure code 25"
label var CPT26                    "CPT/HCPCS procedure code 26"
label var CPT27                    "CPT/HCPCS procedure code 27"
label var CPT28                    "CPT/HCPCS procedure code 28"
label var CPT29                    "CPT/HCPCS procedure code 29"
label var CPT30                    "CPT/HCPCS procedure code 30"
label var CPTCCS1                  "CCS: CPT 1"
label var CPTCCS2                  "CCS: CPT 2"
label var CPTCCS3                  "CCS: CPT 3"
label var CPTCCS4                  "CCS: CPT 4"
label var CPTCCS5                  "CCS: CPT 5"
label var CPTCCS6                  "CCS: CPT 6"
label var CPTCCS7                  "CCS: CPT 7"
label var CPTCCS8                  "CCS: CPT 8"
label var CPTCCS9                  "CCS: CPT 9"
label var CPTCCS10                 "CCS: CPT 10"
label var CPTCCS11                 "CCS: CPT 11"
label var CPTCCS12                 "CCS: CPT 12"
label var CPTCCS13                 "CCS: CPT 13"
label var CPTCCS14                 "CCS: CPT 14"
label var CPTCCS15                 "CCS: CPT 15"
label var CPTCCS16                 "CCS: CPT 16"
label var CPTCCS17                 "CCS: CPT 17"
label var CPTCCS18                 "CCS: CPT 18"
label var CPTCCS19                 "CCS: CPT 19"
label var CPTCCS20                 "CCS: CPT 20"
label var CPTCCS21                 "CCS: CPT 21"
label var CPTCCS22                 "CCS: CPT 22"
label var CPTCCS23                 "CCS: CPT 23"
label var CPTCCS24                 "CCS: CPT 24"
label var CPTCCS25                 "CCS: CPT 25"
label var CPTCCS26                 "CCS: CPT 26"
label var CPTCCS27                 "CCS: CPT 27"
label var CPTCCS28                 "CCS: CPT 28"
label var CPTCCS29                 "CCS: CPT 29"
label var CPTCCS30                 "CCS: CPT 30"
label var CPTDAY1                  "Number of days from admission to CPT1"
label var CPTDAY2                  "Number of days from admission to CPT2"
label var CPTDAY3                  "Number of days from admission to CPT3"
label var CPTDAY4                  "Number of days from admission to CPT4"
label var CPTDAY5                  "Number of days from admission to CPT5"
label var CPTDAY6                  "Number of days from admission to CPT6"
label var CPTDAY7                  "Number of days from admission to CPT7"
label var CPTDAY8                  "Number of days from admission to CPT8"
label var CPTDAY9                  "Number of days from admission to CPT9"
label var CPTDAY10                 "Number of days from admission to CPT10"
label var CPTDAY11                 "Number of days from admission to CPT11"
label var CPTDAY12                 "Number of days from admission to CPT12"
label var CPTDAY13                 "Number of days from admission to CPT13"
label var CPTDAY14                 "Number of days from admission to CPT14"
label var CPTDAY15                 "Number of days from admission to CPT15"
label var CPTDAY16                 "Number of days from admission to CPT16"
label var CPTDAY17                 "Number of days from admission to CPT17"
label var CPTDAY18                 "Number of days from admission to CPT18"
label var CPTDAY19                 "Number of days from admission to CPT19"
label var CPTDAY20                 "Number of days from admission to CPT20"
label var CPTDAY21                 "Number of days from admission to CPT21"
label var CPTDAY22                 "Number of days from admission to CPT22"
label var CPTDAY23                 "Number of days from admission to CPT23"
label var CPTDAY24                 "Number of days from admission to CPT24"
label var CPTDAY25                 "Number of days from admission to CPT25"
label var CPTDAY26                 "Number of days from admission to CPT26"
label var CPTDAY27                 "Number of days from admission to CPT27"
label var CPTDAY28                 "Number of days from admission to CPT28"
label var CPTDAY29                 "Number of days from admission to CPT29"
label var CPTDAY30                 "Number of days from admission to CPT30"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPST                   "Hospital state postal code"
label var I10_DX_Visit_Reason1     "ICD-10-CM Reason for visit diagnosis 1"
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
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes (RUCC)"
label var PL_UIC                   "Patient location: Urban Influence Codes"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PrimLang                 "Primary language of patient"
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var PSTCO_GEO                "Counties assigned based on ZIP Code geographic centroids"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var STATE_AS                 "State Ambulatory Surgery service indicator"
label var STATE_ED                 "State Emergency Department service indicator"
label var STATE_OS                 "State Observation Stay service indicator"
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var HOSPID                   "HCUP hospital identification number"
label var AYEAR                    "Admission year"
label var BMONTH                   "Birth month"
label var BYEAR                    "Birth year"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode CPTCCS1                   (-99 -88 -66=.)
recode CPTCCS2                   (-99 -88 -66=.)
recode CPTCCS3                   (-99 -88 -66=.)
recode CPTCCS4                   (-99 -88 -66=.)
recode CPTCCS5                   (-99 -88 -66=.)
recode CPTCCS6                   (-99 -88 -66=.)
recode CPTCCS7                   (-99 -88 -66=.)
recode CPTCCS8                   (-99 -88 -66=.)
recode CPTCCS9                   (-99 -88 -66=.)
recode CPTCCS10                  (-99 -88 -66=.)
recode CPTCCS11                  (-99 -88 -66=.)
recode CPTCCS12                  (-99 -88 -66=.)
recode CPTCCS13                  (-99 -88 -66=.)
recode CPTCCS14                  (-99 -88 -66=.)
recode CPTCCS15                  (-99 -88 -66=.)
recode CPTCCS16                  (-99 -88 -66=.)
recode CPTCCS17                  (-99 -88 -66=.)
recode CPTCCS18                  (-99 -88 -66=.)
recode CPTCCS19                  (-99 -88 -66=.)
recode CPTCCS20                  (-99 -88 -66=.)
recode CPTCCS21                  (-99 -88 -66=.)
recode CPTCCS22                  (-99 -88 -66=.)
recode CPTCCS23                  (-99 -88 -66=.)
recode CPTCCS24                  (-99 -88 -66=.)
recode CPTCCS25                  (-99 -88 -66=.)
recode CPTCCS26                  (-99 -88 -66=.)
recode CPTCCS27                  (-99 -88 -66=.)
recode CPTCCS28                  (-99 -88 -66=.)
recode CPTCCS29                  (-99 -88 -66=.)
recode CPTCCS30                  (-99 -88 -66=.)
recode CPTDAY1                   (-99 -88 -66=.)
recode CPTDAY2                   (-99 -88 -66=.)
recode CPTDAY3                   (-99 -88 -66=.)
recode CPTDAY4                   (-99 -88 -66=.)
recode CPTDAY5                   (-99 -88 -66=.)
recode CPTDAY6                   (-99 -88 -66=.)
recode CPTDAY7                   (-99 -88 -66=.)
recode CPTDAY8                   (-99 -88 -66=.)
recode CPTDAY9                   (-99 -88 -66=.)
recode CPTDAY10                  (-99 -88 -66=.)
recode CPTDAY11                  (-99 -88 -66=.)
recode CPTDAY12                  (-99 -88 -66=.)
recode CPTDAY13                  (-99 -88 -66=.)
recode CPTDAY14                  (-99 -88 -66=.)
recode CPTDAY15                  (-99 -88 -66=.)
recode CPTDAY16                  (-99 -88 -66=.)
recode CPTDAY17                  (-99 -88 -66=.)
recode CPTDAY18                  (-99 -88 -66=.)
recode CPTDAY19                  (-99 -88 -66=.)
recode CPTDAY20                  (-99 -88 -66=.)
recode CPTDAY21                  (-99 -88 -66=.)
recode CPTDAY22                  (-99 -88 -66=.)
recode CPTDAY23                  (-99 -88 -66=.)
recode CPTDAY24                  (-99 -88 -66=.)
recode CPTDAY25                  (-99 -88 -66=.)
recode CPTDAY26                  (-99 -88 -66=.)
recode CPTDAY27                  (-99 -88 -66=.)
recode CPTDAY28                  (-99 -88 -66=.)
recode CPTDAY29                  (-99 -88 -66=.)
recode CPTDAY30                  (-99 -88 -66=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode NCPT                      (-999 -888 -666=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
recode PL_RUCC                   (-9 -8 -6 -5=.)
recode PL_UIC                    (-9 -8 -6 -5=.)
recode PL_UR_CAT4                (-9 -8 -6 -5=.)
recode PSTCO_GEO                 (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode STATE_AS                  (-9 -8 -6 -5=.)
recode STATE_ED                  (-9 -8 -6 -5=.)
recode STATE_OS                  (-9 -8 -6 -5=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)
recode BMONTH                    (-9 -8 -6 -5=.)
recode BYEAR                     (-999 -888 -666=.)

save "MI_SEDD_2019_CORE.dta", replace
