/*****************************************************************************
* Creation Date: 01/05/2018   
* SC_SEDD_2015q1q3_CORE.Do
* This program will load the 2015 SC ASCII CORE File into Stata.
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
      str    DX_Visit_Reason1           419- 425   ///
      str    DX_Visit_Reason2           426- 432   ///
      str    DX_Visit_Reason3           433- 439   ///
      str    DX1                        440- 446   ///
      str    DX2                        447- 453   ///
      str    DX3                        454- 460   ///
      str    DX4                        461- 467   ///
      str    DX5                        468- 474   ///
      str    DX6                        475- 481   ///
      str    DX7                        482- 488   ///
      str    DX8                        489- 495   ///
      str    DX9                        496- 502   ///
      str    DX10                       503- 509   ///
      str    DX11                       510- 516   ///
      str    DX12                       517- 523   ///
      str    DX13                       524- 530   ///
      str    DX14                       531- 537   ///
      str    DX15                       538- 544   ///
      int    DXCCS1                     545- 548   ///
      int    DXCCS2                     549- 552   ///
      int    DXCCS3                     553- 556   ///
      int    DXCCS4                     557- 560   ///
      int    DXCCS5                     561- 564   ///
      int    DXCCS6                     565- 568   ///
      int    DXCCS7                     569- 572   ///
      int    DXCCS8                     573- 576   ///
      int    DXCCS9                     577- 580   ///
      int    DXCCS10                    581- 584   ///
      int    DXCCS11                    585- 588   ///
      int    DXCCS12                    589- 592   ///
      int    DXCCS13                    593- 596   ///
      int    DXCCS14                    597- 600   ///
      int    DXCCS15                    601- 604   ///
      int    DXVER                      605- 607   ///
      int    E_CCS1                     608- 611   ///
      int    E_CCS2                     612- 615   ///
      int    E_CCS3                     616- 619   ///
      int    E_CCS4                     620- 623   ///
      int    E_CCS5                     624- 627   ///
      int    E_CCS6                     628- 631   ///
      int    E_CCS7                     632- 635   ///
      int    E_CCS8                     636- 639   ///
      int    E_CCS9                     640- 643   ///
      str    ECODE1                     644- 650   ///
      str    ECODE2                     651- 657   ///
      str    ECODE3                     658- 664   ///
      str    ECODE4                     665- 671   ///
      str    ECODE5                     672- 678   ///
      str    ECODE6                     679- 685   ///
      str    ECODE7                     686- 692   ///
      str    ECODE8                     693- 699   ///
      str    ECODE9                     700- 706   ///
      byte   FEMALE                     707- 708   ///
      byte   HCUP_ED                    709- 710   ///
      byte   HCUP_OS                    711- 712   ///
      int    HOSPBRTH                   713- 715   ///
      str    HOSPST                     716- 717   ///
      double KEY                        718- 732   ///
      long   LOS                        733- 737   ///
      long   LOS_X                      738- 743   ///
      str    MDSPEC1                    744- 746   ///
      str    MDSPEC2                    747- 749   ///
      byte   MEDINCSTQ                  750- 751   ///
      int    NCHRONIC                   752- 754   ///
      int    NCPT                       755- 758   ///
      int    NDX                        759- 761   ///
      byte   NECODE                     762- 763   ///
      byte   NEOMAT                     764- 765   ///
      int    NPR                        766- 768   ///
      byte   ORPROC                     769- 770   ///
      byte   PAY1                       771- 772   ///
      str    PAY1_X                     773- 774   ///
      byte   PL_NCHS                    775- 776   ///
      str    PointOfOrigin_X            777        ///
      str    PointOfOriginUB04          778        ///
      str    PR1                        779- 785   ///
      str    PR2                        786- 792   ///
      str    PR3                        793- 799   ///
      str    PR4                        800- 806   ///
      str    PR5                        807- 813   ///
      str    PR6                        814- 820   ///
      str    PR7                        821- 827   ///
      str    PR8                        828- 834   ///
      str    PR9                        835- 841   ///
      str    PR10                       842- 848   ///
      str    PR11                       849- 855   ///
      str    PR12                       856- 862   ///
      str    PR13                       863- 869   ///
      int    PRCCS1                     870- 872   ///
      int    PRCCS2                     873- 875   ///
      int    PRCCS3                     876- 878   ///
      int    PRCCS4                     879- 881   ///
      int    PRCCS5                     882- 884   ///
      int    PRCCS6                     885- 887   ///
      int    PRCCS7                     888- 890   ///
      int    PRCCS8                     891- 893   ///
      int    PRCCS9                     894- 896   ///
      int    PRCCS10                    897- 899   ///
      int    PRCCS11                    900- 902   ///
      int    PRCCS12                    903- 905   ///
      int    PRCCS13                    906- 908   ///
      long   PRDAY1                     909- 913   ///
      long   PRDAY2                     914- 918   ///
      long   PRDAY3                     919- 923   ///
      long   PRDAY4                     924- 928   ///
      long   PRDAY5                     929- 933   ///
      long   PRDAY6                     934- 938   ///
      long   PRDAY7                     939- 943   ///
      long   PRDAY8                     944- 948   ///
      long   PRDAY9                     949- 953   ///
      long   PRDAY10                    954- 958   ///
      long   PRDAY11                    959- 963   ///
      long   PRDAY12                    964- 968   ///
      long   PRDAY13                    969- 973   ///
      int    PROCTYPE                   974- 976   ///
      int    PRVER                      977- 979   ///
      str    PSTATE                     980- 981   ///
      long   PSTCO                      982- 986   ///
      byte   RACE                       987- 988   ///
      str    RACE_X                     989        ///
      byte   STATE_AS                   990- 991   ///
      byte   STATE_ED                   992- 993   ///
      byte   STATE_OS                   994- 995   ///
      double TOTCHG                     996-1005   ///
      double TOTCHG_X                  1006-1020   ///
      int    YEAR                      1021-1024   ///
      int    ZIPINC_QRTL               1025-1027   ///
      int    AGEGROUP                  1028-1030   ///
      int    AYEAR                     1031-1034   ///
      using  "SC_SEDD_2015q1q3_CORE.ASC"

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
label var DX_Visit_Reason1         "Reason for visit diagnosis 1"
label var DX_Visit_Reason2         "Reason for visit diagnosis 2"
label var DX_Visit_Reason3         "Reason for visit diagnosis 3"
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
label var DXVER                    "Diagnosis Version"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_CCS7                   "CCS: E Code 7"
label var E_CCS8                   "CCS: E Code 8"
label var E_CCS9                   "CCS: E Code 9"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var ECODE8                   "E code 8"
label var ECODE9                   "E code 9"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDSPEC1                  "Physician 1 specialty (as received from source)"
label var MDSPEC2                  "Physician 2 specialty (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCHRONIC                 "Number of chronic conditions"
label var NCPT                     "Number of CPT/HCPCS procedures for this visit"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PR1                      "Procedure 1"
label var PR2                      "Procedure 2"
label var PR3                      "Procedure 3"
label var PR4                      "Procedure 4"
label var PR5                      "Procedure 5"
label var PR6                      "Procedure 6"
label var PR7                      "Procedure 7"
label var PR8                      "Procedure 8"
label var PR9                      "Procedure 9"
label var PR10                     "Procedure 10"
label var PR11                     "Procedure 11"
label var PR12                     "Procedure 12"
label var PR13                     "Procedure 13"
label var PRCCS1                   "CCS: procedure 1"
label var PRCCS2                   "CCS: procedure 2"
label var PRCCS3                   "CCS: procedure 3"
label var PRCCS4                   "CCS: procedure 4"
label var PRCCS5                   "CCS: procedure 5"
label var PRCCS6                   "CCS: procedure 6"
label var PRCCS7                   "CCS: procedure 7"
label var PRCCS8                   "CCS: procedure 8"
label var PRCCS9                   "CCS: procedure 9"
label var PRCCS10                  "CCS: procedure 10"
label var PRCCS11                  "CCS: procedure 11"
label var PRCCS12                  "CCS: procedure 12"
label var PRCCS13                  "CCS: procedure 13"
label var PRDAY1                   "Number of days from admission to PR1"
label var PRDAY2                   "Number of days from admission to PR2"
label var PRDAY3                   "Number of days from admission to PR3"
label var PRDAY4                   "Number of days from admission to PR4"
label var PRDAY5                   "Number of days from admission to PR5"
label var PRDAY6                   "Number of days from admission to PR6"
label var PRDAY7                   "Number of days from admission to PR7"
label var PRDAY8                   "Number of days from admission to PR8"
label var PRDAY9                   "Number of days from admission to PR9"
label var PRDAY10                  "Number of days from admission to PR10"
label var PRDAY11                  "Number of days from admission to PR11"
label var PRDAY12                  "Number of days from admission to PR12"
label var PRDAY13                  "Number of days from admission to PR13"
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
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
recode DXVER                     (-99 -88 -66=.)
recode E_CCS1                    (-999 -888 -666=.)
recode E_CCS2                    (-999 -888 -666=.)
recode E_CCS3                    (-999 -888 -666=.)
recode E_CCS4                    (-999 -888 -666=.)
recode E_CCS5                    (-999 -888 -666=.)
recode E_CCS6                    (-999 -888 -666=.)
recode E_CCS7                    (-999 -888 -666=.)
recode E_CCS8                    (-999 -888 -666=.)
recode E_CCS9                    (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NCPT                      (-999 -888 -666=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
recode PRCCS1                    (-99 -88 -66=.)
recode PRCCS2                    (-99 -88 -66=.)
recode PRCCS3                    (-99 -88 -66=.)
recode PRCCS4                    (-99 -88 -66=.)
recode PRCCS5                    (-99 -88 -66=.)
recode PRCCS6                    (-99 -88 -66=.)
recode PRCCS7                    (-99 -88 -66=.)
recode PRCCS8                    (-99 -88 -66=.)
recode PRCCS9                    (-99 -88 -66=.)
recode PRCCS10                   (-99 -88 -66=.)
recode PRCCS11                   (-99 -88 -66=.)
recode PRCCS12                   (-99 -88 -66=.)
recode PRCCS13                   (-99 -88 -66=.)
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
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
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

save "SC_SEDD_2015q1q3_CORE.dta", replace
