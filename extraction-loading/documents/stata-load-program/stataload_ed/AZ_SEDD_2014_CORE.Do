/*****************************************************************************
* Stataload_AZ_SEDD_2014_CORE.Do
* This program will load the 2014 AZ ASCII CORE File into Stata.
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
infix 3 firstlineoffile                          ///
      int    AGE                         1-  3   ///
      int    AGEDAY                      4-  6   ///
      int    AGEMONTH                    7-  9   ///
      int    AHOUR                      10- 13   ///
      byte   AMONTH                     14- 15   ///
      byte   ATYPE                      16- 17   ///
      byte   AWEEKEND                   18- 19   ///
      str    CPT1                       20- 24   ///
      str    CPT2                       25- 29   ///
      str    CPT3                       30- 34   ///
      str    CPT4                       35- 39   ///
      str    CPT5                       40- 44   ///
      str    CPT6                       45- 49   ///
      str    CPT7                       50- 54   ///
      str    CPT8                       55- 59   ///
      str    CPT9                       60- 64   ///
      str    CPT10                      65- 69   ///
      str    CPT11                      70- 74   ///
      str    CPT12                      75- 79   ///
      int    CPTCCS1                    80- 82   ///
      int    CPTCCS2                    83- 85   ///
      int    CPTCCS3                    86- 88   ///
      int    CPTCCS4                    89- 91   ///
      int    CPTCCS5                    92- 94   ///
      int    CPTCCS6                    95- 97   ///
      int    CPTCCS7                    98-100   ///
      int    CPTCCS8                   101-103   ///
      int    CPTCCS9                   104-106   ///
      int    CPTCCS10                  107-109   ///
      int    CPTCCS11                  110-112   ///
      int    CPTCCS12                  113-115   ///
      int    CPTDAY1                   116-118   ///
      int    CPTDAY2                   119-121   ///
      int    CPTDAY3                   122-124   ///
      int    CPTDAY4                   125-127   ///
      int    CPTDAY5                   128-130   ///
      int    CPTDAY6                   131-133   ///
      int    CPTDAY7                   134-136   ///
      int    CPTDAY8                   137-139   ///
      int    CPTDAY9                   140-142   ///
      int    CPTDAY10                  143-145   ///
      int    CPTDAY11                  146-148   ///
      int    CPTDAY12                  149-151   ///
      int    DHOUR                     152-155   ///
      byte   DIED                      156-157   ///
      byte   DISPUB04                  158-159   ///
      byte   DISPUNIFORM               160-161   ///
      str    DISP_X                    162-163   ///
      byte   DMONTH                    164-165   ///
      byte   DNR                       166-167   ///
      byte   DQTR                      168-169   ///
      str    DSHOSPID                  170-186   ///
      long   DURATION                  187-192   ///
      str    DX1                       193-199   ///
      str    DX2                       200-206   ///
      str    DX3                       207-213   ///
      str    DX4                       214-220   ///
      str    DX5                       221-227   ///
      str    DX6                       228-234   ///
      str    DX7                       235-241   ///
      str    DX8                       242-248   ///
      str    DX9                       249-255   ///
      str    DX10                      256-262   ///
      str    DX11                      263-269   ///
      str    DX12                      270-276   ///
      str    DX13                      277-283   ///
      str    DX14                      284-290   ///
      str    DX15                      291-297   ///
      str    DX16                      298-304   ///
      str    DX17                      305-311   ///
      str    DX18                      312-318   ///
      str    DX19                      319-325   ///
      str    DX20                      326-332   ///
      str    DX21                      333-339   ///
      str    DX22                      340-346   ///
      str    DX23                      347-353   ///
      str    DX24                      354-360   ///
      str    DX25                      361-367   ///
      int    DXCCS1                    368-371   ///
      int    DXCCS2                    372-375   ///
      int    DXCCS3                    376-379   ///
      int    DXCCS4                    380-383   ///
      int    DXCCS5                    384-387   ///
      int    DXCCS6                    388-391   ///
      int    DXCCS7                    392-395   ///
      int    DXCCS8                    396-399   ///
      int    DXCCS9                    400-403   ///
      int    DXCCS10                   404-407   ///
      int    DXCCS11                   408-411   ///
      int    DXCCS12                   412-415   ///
      int    DXCCS13                   416-419   ///
      int    DXCCS14                   420-423   ///
      int    DXCCS15                   424-427   ///
      int    DXCCS16                   428-431   ///
      int    DXCCS17                   432-435   ///
      int    DXCCS18                   436-439   ///
      int    DXCCS19                   440-443   ///
      int    DXCCS20                   444-447   ///
      int    DXCCS21                   448-451   ///
      int    DXCCS22                   452-455   ///
      int    DXCCS23                   456-459   ///
      int    DXCCS24                   460-463   ///
      int    DXCCS25                   464-467   ///
      int    DXVER                     468-470   ///
      str    DX_Visit_Reason1          471-477   ///
      str    DX_Visit_Reason2          478-484   ///
      str    DX_Visit_Reason3          485-491   ///
      str    ECODE1                    492-498   ///
      str    ECODE2                    499-505   ///
      str    ECODE3                    506-512   ///
      str    ECODE4                    513-519   ///
      str    ECODE5                    520-526   ///
      str    ECODE6                    527-533   ///
      int    E_CCS1                    534-537   ///
      int    E_CCS2                    538-541   ///
      int    E_CCS3                    542-545   ///
      int    E_CCS4                    546-549   ///
      int    E_CCS5                    550-553   ///
      int    E_CCS6                    554-557   ///
      byte   FEMALE                    558-559   ///
      byte   HCUP_ED                   560-561   ///
      byte   HCUP_OS                   562-563   ///
      str    HISPANIC_X                564       ///
      int    HOSPBRTH                  565-567   ///
      str    HOSPST                    568-569   ///
      str    HOSP_NPI                  570-579   ///
      byte   Homeless                  580-581   ///
      double KEY                       582-596   ///
      long   LOS                       597-601   ///
      long   LOS_X                     602-607   ///
      str    MARITALSTATUSUB04         608       ///
      str    MDBOARD1                  609       ///
      str    MDBOARD2                  610       ///
      long   MDNUM1_R                  611-619   ///
      long   MDNUM2_R                  620-628   ///
      long   MDNUM3_R                  629-637   ///
      byte   MEDINCSTQ                 638-639   ///
      long   MRN_R                     640-648   ///
      int    NCHRONIC                  649-651   ///
      int    NCPT                      652-654   ///
      int    NDX                       655-657   ///
      byte   NECODE                    658-659   ///
      byte   NEOMAT                    660-661   ///
      int    NPR                       662-664   ///
      str    OPservice                 665       ///
      byte   ORPROC                    666-667   ///
      byte   PAY1                      668-669   ///
      str    PAY1_X                    670-671   ///
      int    PL_CBSA                   672-674   ///
      byte   PL_NCHS                   675-676   ///
      byte   PL_RUCC                   677-678   ///
      byte   PL_UIC                    679-680   ///
      byte   PL_UR_CAT4                681-682   ///
      str    PR1                       683-689   ///
      str    PR2                       690-696   ///
      str    PR3                       697-703   ///
      str    PR4                       704-710   ///
      str    PR5                       711-717   ///
      str    PR6                       718-724   ///
      str    PR7                       725-731   ///
      str    PR8                       732-738   ///
      str    PR9                       739-745   ///
      str    PR10                      746-752   ///
      str    PR11                      753-759   ///
      str    PR12                      760-766   ///
      int    PRCCS1                    767-769   ///
      int    PRCCS2                    770-772   ///
      int    PRCCS3                    773-775   ///
      int    PRCCS4                    776-778   ///
      int    PRCCS5                    779-781   ///
      int    PRCCS6                    782-784   ///
      int    PRCCS7                    785-787   ///
      int    PRCCS8                    788-790   ///
      int    PRCCS9                    791-793   ///
      int    PRCCS10                   794-796   ///
      int    PRCCS11                   797-799   ///
      int    PRCCS12                   800-802   ///
      long   PRDAY1                    803-807   ///
      long   PRDAY2                    808-812   ///
      long   PRDAY3                    813-817   ///
      long   PRDAY4                    818-822   ///
      long   PRDAY5                    823-827   ///
      long   PRDAY6                    828-832   ///
      long   PRDAY7                    833-837   ///
      long   PRDAY8                    838-842   ///
      long   PRDAY9                    843-847   ///
      long   PRDAY10                   848-852   ///
      long   PRDAY11                   853-857   ///
      long   PRDAY12                   858-862   ///
      int    PROCTYPE                  863-865   ///
      int    PRVER                     866-868   ///
      str    PSTATE                    869-870   ///
      long   PSTCO2                    871-875   ///
      str    PointOfOriginUB04         876       ///
      str    PointOfOrigin_X           877       ///
      byte   RACE                      878-879   ///
      str    RACE_X                    880-882   ///
      byte   SPLIT_IPED                883-884   ///
      byte   STATE_AS                  885-886   ///
      byte   STATE_ED                  887-888   ///
      byte   STATE_OS                  889-890   ///
      double TOTCHG                    891-900   ///
      double TOTCHG_X                  901-915   ///
      int    YEAR                      916-919   ///
      str    ZIP                       920-924   ///
      str    ZIP3                      925-927   ///
      int    ZIPINC_QRTL               928-930   ///
      int    AYEAR                     931-934   ///
      byte   PRMONTH1                  935-936   ///
      byte   PRMONTH2                  937-938   ///
      byte   PRMONTH3                  939-940   ///
      byte   PRMONTH4                  941-942   ///
      byte   PRMONTH5                  943-944   ///
      byte   PRMONTH6                  945-946   ///
      byte   PRMONTH7                  947-948   ///
      byte   PRMONTH8                  949-950   ///
      byte   PRMONTH9                  951-952   ///
      byte   PRMONTH10                 953-954   ///
      byte   PRMONTH11                 955-956   ///
      byte   PRMONTH12                 957-958   ///
      int    PRYEAR1                   959-962   ///
      int    PRYEAR2                   963-966   ///
      int    PRYEAR3                   967-970   ///
      int    PRYEAR4                   971-974   ///
      int    PRYEAR5                   975-978   ///
      int    PRYEAR6                   979-982   ///
      int    PRYEAR7                   983-986   ///
      int    PRYEAR8                   987-990   ///
      int    PRYEAR9                   991-994   ///
      int    PRYEAR10                  995-998   ///
      int    PRYEAR11                 999-1002   ///
      int    PRYEAR12                1003-1006   ///
      using  "AZ_SEDD_2014_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
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
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DMONTH                   "Discharge month"
label var DNR                      "Do not resuscitate indicator"
label var DQTR                     "Discharge quarter"
label var DSHOSPID                 "Data source hospital identifier"
label var DURATION                 "Elapsed time for hospital care in hours and minutes"
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
label var DX19                     "Diagnosis 19"
label var DX20                     "Diagnosis 20"
label var DX21                     "Diagnosis 21"
label var DX22                     "Diagnosis 22"
label var DX23                     "Diagnosis 23"
label var DX24                     "Diagnosis 24"
label var DX25                     "Diagnosis 25"
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
label var DXCCS19                  "CCS: diagnosis 19"
label var DXCCS20                  "CCS: diagnosis 20"
label var DXCCS21                  "CCS: diagnosis 21"
label var DXCCS22                  "CCS: diagnosis 22"
label var DXCCS23                  "CCS: diagnosis 23"
label var DXCCS24                  "CCS: diagnosis 24"
label var DXCCS25                  "CCS: diagnosis 25"
label var DXVER                    "Diagnosis Version"
label var DX_Visit_Reason1         "Reason for visit diagnosis 1"
label var DX_Visit_Reason2         "Reason for visit diagnosis 2"
label var DX_Visit_Reason3         "Reason for visit diagnosis 3"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var ECODE6                   "E code 6"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var HOSP_NPI                 "Hospital NPI"
label var Homeless                 "Indicator that patient is homeless"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MDBOARD1                 "Physician 1 licensing board (as received from source)"
label var MDBOARD2                 "Physician 2 licensing board (as received from source)"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var NCHRONIC                 "Number of chronic conditions"
label var NCPT                     "Number of CPT/HCPCS procedures on this record"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var OPservice                "Indicator of outpatient service (as received from source)"
label var ORPROC                   "Major operating room procedure indicator"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_RUCC                  "Patient location: Rural-Urban Continuum Codes(RUCC)"
label var PL_UIC                   "Patient location: Urban Influence Codes"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
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
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var SPLIT_IPED               "Split IP/ED records-single visit, from CAH"
label var STATE_AS                 "State Ambulatory Surgery service indicator"
label var STATE_ED                 "State Emergency Department service indicator"
label var STATE_OS                 "State Observation Stay service indicator"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var AYEAR                    "Admission year"
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

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
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
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DNR                       (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DURATION                  (-99999 -88888 -66666=.)
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
recode DXCCS19                   (-999 -888 -666=.)
recode DXCCS20                   (-999 -888 -666=.)
recode DXCCS21                   (-999 -888 -666=.)
recode DXCCS22                   (-999 -888 -666=.)
recode DXCCS23                   (-999 -888 -666=.)
recode DXCCS24                   (-999 -888 -666=.)
recode DXCCS25                   (-999 -888 -666=.)
recode DXVER                     (-99 -88 -66=.)
recode E_CCS1                    (-999 -888 -666=.)
recode E_CCS2                    (-999 -888 -666=.)
recode E_CCS3                    (-999 -888 -666=.)
recode E_CCS4                    (-999 -888 -666=.)
recode E_CCS5                    (-999 -888 -666=.)
recode E_CCS6                    (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NCPT                      (-99 -88 -66=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
recode PL_RUCC                   (-9 -8 -6 -5=.)
recode PL_UIC                    (-9 -8 -6 -5=.)
recode PL_UR_CAT4                (-9 -8 -6 -5=.)
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
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode SPLIT_IPED                (-9 -8 -6 -5=.)
recode STATE_AS                  (-9 -8 -6 -5=.)
recode STATE_ED                  (-9 -8 -6 -5=.)
recode STATE_OS                  (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)
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

save "AZ_SEDD_2014_CORE.dta", replace
