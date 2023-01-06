/*****************************************************************************
* Creation Date: 11/07/2019   
* CA_SEDD_2018_CORE.Do
* This program will load the 2018 CA ASCII CORE File into Stata.
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
      int    CPTCCS1                    119- 121   ///
      int    CPTCCS2                    122- 124   ///
      int    CPTCCS3                    125- 127   ///
      int    CPTCCS4                    128- 130   ///
      int    CPTCCS5                    131- 133   ///
      int    CPTCCS6                    134- 136   ///
      int    CPTCCS7                    137- 139   ///
      int    CPTCCS8                    140- 142   ///
      int    CPTCCS9                    143- 145   ///
      int    CPTCCS10                   146- 148   ///
      int    CPTCCS11                   149- 151   ///
      int    CPTCCS12                   152- 154   ///
      int    CPTCCS13                   155- 157   ///
      int    CPTCCS14                   158- 160   ///
      int    CPTCCS15                   161- 163   ///
      int    CPTCCS16                   164- 166   ///
      int    CPTCCS17                   167- 169   ///
      int    CPTCCS18                   170- 172   ///
      int    CPTCCS19                   173- 175   ///
      int    CPTCCS20                   176- 178   ///
      int    CPTCCS21                   179- 181   ///
      long   DaysToEvent                182- 187   ///
      byte   DIED                       188- 189   ///
      str    DISP_X                     190- 191   ///
      byte   DISPUB04                   192- 193   ///
      byte   DISPUNIFORM                194- 195   ///
      byte   DMONTH                     196- 197   ///
      byte   DQTR                       198- 199   ///
      str    DSHOSPID                   200- 216   ///
      byte   FEMALE                     217- 218   ///
      byte   HCUP_ED                    219- 220   ///
      byte   HCUP_OS                    221- 222   ///
      byte   HISPANIC                   223- 224   ///
      str    HISPANIC_X                 225- 226   ///
      str    HOSPST                     227- 228   ///
      str    I10_DX1                    229- 235   ///
      str    I10_DX2                    236- 242   ///
      str    I10_DX3                    243- 249   ///
      str    I10_DX4                    250- 256   ///
      str    I10_DX5                    257- 263   ///
      str    I10_DX6                    264- 270   ///
      str    I10_DX7                    271- 277   ///
      str    I10_DX8                    278- 284   ///
      str    I10_DX9                    285- 291   ///
      str    I10_DX10                   292- 298   ///
      str    I10_DX11                   299- 305   ///
      str    I10_DX12                   306- 312   ///
      str    I10_DX13                   313- 319   ///
      str    I10_DX14                   320- 326   ///
      str    I10_DX15                   327- 333   ///
      str    I10_DX16                   334- 340   ///
      str    I10_DX17                   341- 347   ///
      str    I10_DX18                   348- 354   ///
      str    I10_DX19                   355- 361   ///
      str    I10_DX20                   362- 368   ///
      str    I10_DX21                   369- 375   ///
      str    I10_DX22                   376- 382   ///
      str    I10_DX23                   383- 389   ///
      str    I10_DX24                   390- 396   ///
      str    I10_DX25                   397- 403   ///
      str    I10_DX26                   404- 410   ///
      str    I10_DX27                   411- 417   ///
      str    I10_DX28                   418- 424   ///
      str    I10_DX29                   425- 431   ///
      str    I10_DX30                   432- 438   ///
      int    I10_NDX                    439- 441   ///
      int    I10_PROCTYPE               442- 444   ///
      double KEY                        445- 459   ///
      long   LOS                        460- 464   ///
      long   LOS_X                      465- 470   ///
      byte   MEDINCSTQ                  471- 472   ///
      int    NCPT                       473- 476   ///
      byte   PAY1                       477- 478   ///
      str    PAY1_X                     479- 480   ///
      int    PL_CBSA                    481- 483   ///
      byte   PL_NCHS                    484- 485   ///
      byte   PL_RUCC                    486- 487   ///
      byte   PL_UIC                     488- 489   ///
      byte   PL_UR_CAT4                 490- 491   ///
      str    PSTATE                     492- 493   ///
      byte   RACE                       494- 495   ///
      str    RACE_X                     496- 497   ///
      byte   STATE_AS                   498- 499   ///
      byte   STATE_ED                   500- 501   ///
      byte   STATE_OS                   502- 503   ///
      long   VisitLink                  504- 512   ///
      int    YEAR                       513- 516   ///
      str    ZIP                        517- 521   ///
      str    ZIP3                       522- 524   ///
      int    AYEAR                      525- 528   ///
      byte   BMONTH                     529- 530   ///
      int    BYEAR                      531- 534   ///
      using  "CA_SEDD_2018_CORE.ASC"

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
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
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
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var STATE_AS                 "State Ambulatory Surgery service indicator"
label var STATE_ED                 "State Emergency Department service indicator"
label var STATE_OS                 "State Observation Stay service indicator"
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
recode DaysToEvent               (-99999 -88888 -66666=.)
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
recode VisitLink                 (-99999999 -88888888 -66666666=.)
recode YEAR                      (-999 -888 -666=.)
recode AYEAR                     (-999 -888 -666=.)
recode BMONTH                    (-9 -8 -6 -5=.)
recode BYEAR                     (-999 -888 -666=.)

save "CA_SEDD_2018_CORE.dta", replace
