/*****************************************************************************
* Creation Date: 01/16/2019   
* SC_SEDD_2016_CORE.Do
* This program will load the 2016 SC ASCII CORE File into Stata.
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
      byte   AMONTH                       1-   2   ///
      byte   ATYPE                        3-   4   ///
      byte   AWEEKEND                     5-   6   ///
      str    CPT1                         7-  11   ///
      str    CPT2                        12-  16   ///
      str    CPT3                        17-  21   ///
      str    CPT4                        22-  26   ///
      str    CPT5                        27-  31   ///
      str    CPT6                        32-  36   ///
      str    CPT7                        37-  41   ///
      str    CPT8                        42-  46   ///
      str    CPT9                        47-  51   ///
      str    CPT10                       52-  56   ///
      str    CPT11                       57-  61   ///
      str    CPT12                       62-  66   ///
      str    CPT13                       67-  71   ///
      str    CPT14                       72-  76   ///
      str    CPT15                       77-  81   ///
      str    CPT16                       82-  86   ///
      str    CPT17                       87-  91   ///
      str    CPT18                       92-  96   ///
      str    CPT19                       97- 101   ///
      str    CPT20                      102- 106   ///
      str    CPT21                      107- 111   ///
      str    CPT22                      112- 116   ///
      str    CPT23                      117- 121   ///
      str    CPT24                      122- 126   ///
      str    CPT25                      127- 131   ///
      str    CPT26                      132- 136   ///
      str    CPT27                      137- 141   ///
      str    CPT28                      142- 146   ///
      str    CPT29                      147- 151   ///
      str    CPT30                      152- 156   ///
      str    CPT31                      157- 161   ///
      str    CPT32                      162- 166   ///
      str    CPT33                      167- 171   ///
      str    CPT34                      172- 176   ///
      str    CPT35                      177- 181   ///
      str    CPT36                      182- 186   ///
      str    CPT37                      187- 191   ///
      str    CPT38                      192- 196   ///
      str    CPT39                      197- 201   ///
      str    CPT40                      202- 206   ///
      str    CPT41                      207- 211   ///
      str    CPT42                      212- 216   ///
      str    CPT43                      217- 221   ///
      str    CPT44                      222- 226   ///
      str    CPT45                      227- 231   ///
      str    CPT46                      232- 236   ///
      str    CPT47                      237- 241   ///
      str    CPT48                      242- 246   ///
      str    CPT49                      247- 251   ///
      str    CPT50                      252- 256   ///
      int    CPTCCS1                    257- 259   ///
      int    CPTCCS2                    260- 262   ///
      int    CPTCCS3                    263- 265   ///
      int    CPTCCS4                    266- 268   ///
      int    CPTCCS5                    269- 271   ///
      int    CPTCCS6                    272- 274   ///
      int    CPTCCS7                    275- 277   ///
      int    CPTCCS8                    278- 280   ///
      int    CPTCCS9                    281- 283   ///
      int    CPTCCS10                   284- 286   ///
      int    CPTCCS11                   287- 289   ///
      int    CPTCCS12                   290- 292   ///
      int    CPTCCS13                   293- 295   ///
      int    CPTCCS14                   296- 298   ///
      int    CPTCCS15                   299- 301   ///
      int    CPTCCS16                   302- 304   ///
      int    CPTCCS17                   305- 307   ///
      int    CPTCCS18                   308- 310   ///
      int    CPTCCS19                   311- 313   ///
      int    CPTCCS20                   314- 316   ///
      int    CPTCCS21                   317- 319   ///
      int    CPTCCS22                   320- 322   ///
      int    CPTCCS23                   323- 325   ///
      int    CPTCCS24                   326- 328   ///
      int    CPTCCS25                   329- 331   ///
      int    CPTCCS26                   332- 334   ///
      int    CPTCCS27                   335- 337   ///
      int    CPTCCS28                   338- 340   ///
      int    CPTCCS29                   341- 343   ///
      int    CPTCCS30                   344- 346   ///
      int    CPTCCS31                   347- 349   ///
      int    CPTCCS32                   350- 352   ///
      int    CPTCCS33                   353- 355   ///
      int    CPTCCS34                   356- 358   ///
      int    CPTCCS35                   359- 361   ///
      int    CPTCCS36                   362- 364   ///
      int    CPTCCS37                   365- 367   ///
      int    CPTCCS38                   368- 370   ///
      int    CPTCCS39                   371- 373   ///
      int    CPTCCS40                   374- 376   ///
      int    CPTCCS41                   377- 379   ///
      int    CPTCCS42                   380- 382   ///
      int    CPTCCS43                   383- 385   ///
      int    CPTCCS44                   386- 388   ///
      int    CPTCCS45                   389- 391   ///
      int    CPTCCS46                   392- 394   ///
      int    CPTCCS47                   395- 397   ///
      int    CPTCCS48                   398- 400   ///
      int    CPTCCS49                   401- 403   ///
      int    CPTCCS50                   404- 406   ///
      byte   DIED                       407- 408   ///
      str    DISP_X                     409- 410   ///
      byte   DISPUB04                   411- 412   ///
      byte   DISPUNIFORM                413- 414   ///
      byte   DMONTH                     415- 416   ///
      byte   DQTR                       417- 418   ///
      int    DXVER                      419- 421   ///
      byte   FEMALE                     422- 423   ///
      byte   HCUP_ED                    424- 425   ///
      byte   HCUP_OS                    426- 427   ///
      str    HOSPST                     428- 429   ///
      str    I10_DX_Visit_Reason1       430- 436   ///
      str    I10_DX_Visit_Reason2       437- 443   ///
      str    I10_DX_Visit_Reason3       444- 450   ///
      str    I10_DX1                    451- 457   ///
      str    I10_DX2                    458- 464   ///
      str    I10_DX3                    465- 471   ///
      str    I10_DX4                    472- 478   ///
      str    I10_DX5                    479- 485   ///
      str    I10_DX6                    486- 492   ///
      str    I10_DX7                    493- 499   ///
      str    I10_DX8                    500- 506   ///
      str    I10_DX9                    507- 513   ///
      str    I10_DX10                   514- 520   ///
      str    I10_DX11                   521- 527   ///
      str    I10_DX12                   528- 534   ///
      str    I10_DX13                   535- 541   ///
      str    I10_DX14                   542- 548   ///
      str    I10_DX15                   549- 555   ///
      str    I10_ECAUSE1                556- 562   ///
      str    I10_ECAUSE2                563- 569   ///
      str    I10_ECAUSE3                570- 576   ///
      str    I10_ECAUSE4                577- 583   ///
      str    I10_ECAUSE5                584- 590   ///
      str    I10_ECAUSE6                591- 597   ///
      str    I10_ECAUSE7                598- 604   ///
      str    I10_ECAUSE8                605- 611   ///
      str    I10_ECAUSE9                612- 618   ///
      str    I10_ECAUSE10               619- 625   ///
      int    I10_NDX                    626- 628   ///
      byte   I10_NECAUSE                629- 630   ///
      int    I10_PROCTYPE               631- 633   ///
      double KEY                        634- 648   ///
      long   LOS                        649- 653   ///
      long   LOS_X                      654- 659   ///
      str    MDSPEC1                    660- 662   ///
      str    MDSPEC2                    663- 665   ///
      byte   MEDINCSTQ                  666- 667   ///
      int    NCPT                       668- 671   ///
      byte   PAY1                       672- 673   ///
      str    PAY1_X                     674- 675   ///
      byte   PL_NCHS                    676- 677   ///
      str    PointOfOrigin_X            678        ///
      str    PointOfOriginUB04          679        ///
      str    PSTATE                     680- 681   ///
      long   PSTCO                      682- 686   ///
      byte   RACE                       687- 688   ///
      str    RACE_X                     689        ///
      byte   STATE_AS                   690- 691   ///
      byte   STATE_ED                   692- 693   ///
      byte   STATE_OS                   694- 695   ///
      double TOTCHG                     696- 705   ///
      double TOTCHG_X                   706- 720   ///
      int    YEAR                       721- 724   ///
      int    ZIPINC_QRTL                725- 727   ///
      int    AGEGROUP                   728- 730   ///
      int    AYEAR                      731- 734   ///
      using  "SC_SEDD_2016_CORE.ASC"

***  Assign labels to the data elements ***
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
label var CPT31                    "CPT/HCPCS procedure code 31"
label var CPT32                    "CPT/HCPCS procedure code 32"
label var CPT33                    "CPT/HCPCS procedure code 33"
label var CPT34                    "CPT/HCPCS procedure code 34"
label var CPT35                    "CPT/HCPCS procedure code 35"
label var CPT36                    "CPT/HCPCS procedure code 36"
label var CPT37                    "CPT/HCPCS procedure code 37"
label var CPT38                    "CPT/HCPCS procedure code 38"
label var CPT39                    "CPT/HCPCS procedure code 39"
label var CPT40                    "CPT/HCPCS procedure code 40"
label var CPT41                    "CPT/HCPCS procedure code 41"
label var CPT42                    "CPT/HCPCS procedure code 42"
label var CPT43                    "CPT/HCPCS procedure code 43"
label var CPT44                    "CPT/HCPCS procedure code 44"
label var CPT45                    "CPT/HCPCS procedure code 45"
label var CPT46                    "CPT/HCPCS procedure code 46"
label var CPT47                    "CPT/HCPCS procedure code 47"
label var CPT48                    "CPT/HCPCS procedure code 48"
label var CPT49                    "CPT/HCPCS procedure code 49"
label var CPT50                    "CPT/HCPCS procedure code 50"
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
label var CPTCCS31                 "CCS: CPT 31"
label var CPTCCS32                 "CCS: CPT 32"
label var CPTCCS33                 "CCS: CPT 33"
label var CPTCCS34                 "CCS: CPT 34"
label var CPTCCS35                 "CCS: CPT 35"
label var CPTCCS36                 "CCS: CPT 36"
label var CPTCCS37                 "CCS: CPT 37"
label var CPTCCS38                 "CCS: CPT 38"
label var CPTCCS39                 "CCS: CPT 39"
label var CPTCCS40                 "CCS: CPT 40"
label var CPTCCS41                 "CCS: CPT 41"
label var CPTCCS42                 "CCS: CPT 42"
label var CPTCCS43                 "CCS: CPT 43"
label var CPTCCS44                 "CCS: CPT 44"
label var CPTCCS45                 "CCS: CPT 45"
label var CPTCCS46                 "CCS: CPT 46"
label var CPTCCS47                 "CCS: CPT 47"
label var CPTCCS48                 "CCS: CPT 48"
label var CPTCCS49                 "CCS: CPT 49"
label var CPTCCS50                 "CCS: CPT 50"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DXVER                    "Diagnosis Version"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HOSPST                   "Hospital state postal code"
label var I10_DX_Visit_Reason1     "ICD-10-CM Reason for visit diagnosis 1"
label var I10_DX_Visit_Reason2     "ICD-10-CM Reason for visit diagnosis 2"
label var I10_DX_Visit_Reason3     "ICD-10-CM Reason for visit diagnosis 3"
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
label var I10_ECAUSE1              "ICD-10-CM External cause 1"
label var I10_ECAUSE2              "ICD-10-CM External cause 2"
label var I10_ECAUSE3              "ICD-10-CM External cause 3"
label var I10_ECAUSE4              "ICD-10-CM External cause 4"
label var I10_ECAUSE5              "ICD-10-CM External cause 5"
label var I10_ECAUSE6              "ICD-10-CM External cause 6"
label var I10_ECAUSE7              "ICD-10-CM External cause 7"
label var I10_ECAUSE8              "ICD-10-CM External cause 8"
label var I10_ECAUSE9              "ICD-10-CM External cause 9"
label var I10_ECAUSE10             "ICD-10-CM External cause 10"
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_NECAUSE              "ICD-10-CM Number of External cause codes on this record"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDSPEC1                  "Physician 1 specialty (as received from source)"
label var MDSPEC2                  "Physician 2 specialty (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var STATE_AS                 "State Ambulatory Surgery service indicator"
label var STATE_ED                 "State Emergency Department service indicator"
label var STATE_OS                 "State Observation Stay service indicator"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var YEAR                     "Calendar year"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var AGEGROUP                 "Age Group"
label var AYEAR                    "Admission year"

*** Convert special values to missing values ***
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
recode CPTCCS31                  (-99 -88 -66=.)
recode CPTCCS32                  (-99 -88 -66=.)
recode CPTCCS33                  (-99 -88 -66=.)
recode CPTCCS34                  (-99 -88 -66=.)
recode CPTCCS35                  (-99 -88 -66=.)
recode CPTCCS36                  (-99 -88 -66=.)
recode CPTCCS37                  (-99 -88 -66=.)
recode CPTCCS38                  (-99 -88 -66=.)
recode CPTCCS39                  (-99 -88 -66=.)
recode CPTCCS40                  (-99 -88 -66=.)
recode CPTCCS41                  (-99 -88 -66=.)
recode CPTCCS42                  (-99 -88 -66=.)
recode CPTCCS43                  (-99 -88 -66=.)
recode CPTCCS44                  (-99 -88 -66=.)
recode CPTCCS45                  (-99 -88 -66=.)
recode CPTCCS46                  (-99 -88 -66=.)
recode CPTCCS47                  (-99 -88 -66=.)
recode CPTCCS48                  (-99 -88 -66=.)
recode CPTCCS49                  (-99 -88 -66=.)
recode CPTCCS50                  (-99 -88 -66=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NECAUSE               (-9 -8 -6 -5=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCPT                      (-999 -888 -666=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode STATE_AS                  (-9 -8 -6 -5=.)
recode STATE_ED                  (-9 -8 -6 -5=.)
recode STATE_OS                  (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AGEGROUP                  (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)

save "SC_SEDD_2016_CORE.dta", replace
