/*****************************************************************************
* Creation Date: 08/26/2021   
* CA_SEDD_2020_CORE.Do
* This program will load the 2020 CA ASCII CORE File into Stata.
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
      byte   AWEEKEND                    12-  13   ///
      str    CPT1                        14-  18   ///
      str    CPT2                        19-  23   ///
      str    CPT3                        24-  28   ///
      str    CPT4                        29-  33   ///
      str    CPT5                        34-  38   ///
      str    CPT6                        39-  43   ///
      str    CPT7                        44-  48   ///
      str    CPT8                        49-  53   ///
      str    CPT9                        54-  58   ///
      str    CPT10                       59-  63   ///
      str    CPT11                       64-  68   ///
      str    CPT12                       69-  73   ///
      str    CPT13                       74-  78   ///
      str    CPT14                       79-  83   ///
      str    CPT15                       84-  88   ///
      str    CPT16                       89-  93   ///
      str    CPT17                       94-  98   ///
      str    CPT18                       99- 103   ///
      str    CPT19                      104- 108   ///
      str    CPT20                      109- 113   ///
      str    CPT21                      114- 118   ///
      str    CPT22                      119- 123   ///
      str    CPT23                      124- 128   ///
      str    CPT24                      129- 133   ///
      str    CPT25                      134- 138   ///
      int    CPTCCS1                    139- 141   ///
      int    CPTCCS2                    142- 144   ///
      int    CPTCCS3                    145- 147   ///
      int    CPTCCS4                    148- 150   ///
      int    CPTCCS5                    151- 153   ///
      int    CPTCCS6                    154- 156   ///
      int    CPTCCS7                    157- 159   ///
      int    CPTCCS8                    160- 162   ///
      int    CPTCCS9                    163- 165   ///
      int    CPTCCS10                   166- 168   ///
      int    CPTCCS11                   169- 171   ///
      int    CPTCCS12                   172- 174   ///
      int    CPTCCS13                   175- 177   ///
      int    CPTCCS14                   178- 180   ///
      int    CPTCCS15                   181- 183   ///
      int    CPTCCS16                   184- 186   ///
      int    CPTCCS17                   187- 189   ///
      int    CPTCCS18                   190- 192   ///
      int    CPTCCS19                   193- 195   ///
      int    CPTCCS20                   196- 198   ///
      int    CPTCCS21                   199- 201   ///
      int    CPTCCS22                   202- 204   ///
      int    CPTCCS23                   205- 207   ///
      int    CPTCCS24                   208- 210   ///
      int    CPTCCS25                   211- 213   ///
      long   DaysToEvent                214- 219   ///
      byte   DIED                       220- 221   ///
      str    DISP_X                     222- 223   ///
      byte   DISPUB04                   224- 225   ///
      byte   DISPUNIFORM                226- 227   ///
      byte   DMONTH                     228- 229   ///
      byte   DQTR                       230- 231   ///
      str    DSHOSPID                   232- 248   ///
      byte   FEMALE                     249- 250   ///
      byte   HCUP_ED                    251- 252   ///
      byte   HCUP_OS                    253- 254   ///
      long   HCUP_SURGERY_BROAD_CPT     255- 259   ///
      long   HCUP_SURGERY_NARROW_CPT    260- 264   ///
      byte   HISPANIC                   265- 266   ///
      str    HISPANIC_X                 267- 268   ///
      byte   Homeless                   269- 270   ///
      str    HOSPST                     271- 272   ///
      str    I10_DX1                    273- 279   ///
      str    I10_DX2                    280- 286   ///
      str    I10_DX3                    287- 293   ///
      str    I10_DX4                    294- 300   ///
      str    I10_DX5                    301- 307   ///
      str    I10_DX6                    308- 314   ///
      str    I10_DX7                    315- 321   ///
      str    I10_DX8                    322- 328   ///
      str    I10_DX9                    329- 335   ///
      str    I10_DX10                   336- 342   ///
      str    I10_DX11                   343- 349   ///
      str    I10_DX12                   350- 356   ///
      str    I10_DX13                   357- 363   ///
      str    I10_DX14                   364- 370   ///
      str    I10_DX15                   371- 377   ///
      str    I10_DX16                   378- 384   ///
      str    I10_DX17                   385- 391   ///
      str    I10_DX18                   392- 398   ///
      str    I10_DX19                   399- 405   ///
      str    I10_DX20                   406- 412   ///
      str    I10_DX21                   413- 419   ///
      str    I10_DX22                   420- 426   ///
      str    I10_DX23                   427- 433   ///
      str    I10_DX24                   434- 440   ///
      str    I10_DX25                   441- 447   ///
      str    I10_DX26                   448- 454   ///
      str    I10_DX27                   455- 461   ///
      str    I10_DX28                   462- 468   ///
      str    I10_DX29                   469- 475   ///
      str    I10_DX30                   476- 482   ///
      str    I10_DX31                   483- 489   ///
      str    I10_DX32                   490- 496   ///
      str    I10_DX33                   497- 503   ///
      str    I10_DX34                   504- 510   ///
      str    I10_DX35                   511- 517   ///
      str    I10_DX36                   518- 524   ///
      str    I10_DX37                   525- 531   ///
      int    I10_NDX                    532- 534   ///
      int    I10_PROCTYPE               535- 537   ///
      double KEY                        538- 552   ///
      long   LOS                        553- 557   ///
      long   LOS_X                      558- 563   ///
      byte   MEDINCSTQ                  564- 565   ///
      int    NCPT                       566- 569   ///
      byte   PAY1                       570- 571   ///
      str    PAY1_X                     572- 573   ///
      int    PL_CBSA                    574- 576   ///
      byte   PL_NCHS                    577- 578   ///
      byte   PL_RUCC                    579- 580   ///
      byte   PL_UIC                     581- 582   ///
      byte   PL_UR_CAT4                 583- 584   ///
      str    PSTATE                     585- 586   ///
      str    PSTATE_GEO                 587- 588   ///
      byte   RACE                       589- 590   ///
      str    RACE_X                     591- 600   ///
      byte   STATE_AS                   601- 602   ///
      byte   STATE_ED                   603- 604   ///
      byte   STATE_OS                   605- 606   ///
      double TOTCHG                     607- 616   ///
      double TOTCHG_X                   617- 631   ///
      long   VisitLink                  632- 640   ///
      int    YEAR                       641- 644   ///
      str    ZIP                        645- 649   ///
      str    ZIP3                       650- 652   ///
      int    AYEAR                      653- 656   ///
      byte   BMONTH                     657- 658   ///
      int    BYEAR                      659- 662   ///
      using  "CA_SEDD_2020_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
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
label var DaysToEvent              "Days from 'start date' to admission"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DSHOSPID                 "Data source hospital identifier"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HCUP_SURGERY_BROAD_CPT   "Number of reported CPT procedures that qualify as a surgery using a broad definition"
label var HCUP_SURGERY_NARROW_CPT  "Number of reported CPT procedures that qualify as a surgery using a narrow definition"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var Homeless                 "Indicator that patient is homeless"
label var HOSPST                   "Hospital state postal code"
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
label var I10_DX35                 "ICD-10-CM Diagnosis 35"
label var I10_DX36                 "ICD-10-CM Diagnosis 36"
label var I10_DX37                 "ICD-10-CM Diagnosis 37"
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes (RUCC)"
label var PL_UIC                   "Patient location: Urban Influence Codes"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
label var PSTATE                   "Patient State postal code"
label var PSTATE_GEO               "Patient State postal code assigned from ZIP Code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var STATE_AS                 "State Ambulatory Surgery service indicator"
label var STATE_ED                 "State Emergency Department service indicator"
label var STATE_OS                 "State Observation Stay service indicator"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var VisitLink                "Visit linkage variable"
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var AYEAR                    "Admission year"
label var BMONTH                   "Birth month"
label var BYEAR                    "Birth year"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AMONTH                    (-9 -8 -6 -5=.)
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
recode DaysToEvent               (-99999 -88888 -66666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HCUP_SURGERY_BROAD_CPT    (-9999 -8888 -6666=.)
recode HCUP_SURGERY_NARROW_CPT   (-9999 -8888 -6666=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCPT                      (-999 -888 -666=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
recode PL_RUCC                   (-9 -8 -6 -5=.)
recode PL_UIC                    (-9 -8 -6 -5=.)
recode PL_UR_CAT4                (-9 -8 -6 -5=.)
recode RACE                      (-9 -8 -6 -5=.)
recode STATE_AS                  (-9 -8 -6 -5=.)
recode STATE_ED                  (-9 -8 -6 -5=.)
recode STATE_OS                  (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode VisitLink                 (-99999999 -88888888 -66666666=.)
recode YEAR                      (-999 -888 -666=.)
recode AYEAR                     (-999 -888 -666=.)
recode BMONTH                    (-9 -8 -6 -5=.)
recode BYEAR                     (-999 -888 -666=.)

save "CA_SEDD_2020_CORE.dta", replace
