/*****************************************************************************
* Creation Date: 10/16/2015   
* Stataload_FL_SEDD_2014_CORE.Do
* This program will load the 2014 FL ASCII CORE File into Stata.
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
      int    AHOUR                       4-  7   ///
      byte   AWEEKEND                    8-  9   ///
      str    CPT1                       10- 14   ///
      str    CPT2                       15- 19   ///
      str    CPT3                       20- 24   ///
      str    CPT4                       25- 29   ///
      str    CPT5                       30- 34   ///
      str    CPT6                       35- 39   ///
      str    CPT7                       40- 44   ///
      str    CPT8                       45- 49   ///
      str    CPT9                       50- 54   ///
      str    CPT10                      55- 59   ///
      str    CPT11                      60- 64   ///
      str    CPT12                      65- 69   ///
      str    CPT13                      70- 74   ///
      str    CPT14                      75- 79   ///
      str    CPT15                      80- 84   ///
      str    CPT16                      85- 89   ///
      str    CPT17                      90- 94   ///
      str    CPT18                      95- 99   ///
      str    CPT19                     100-104   ///
      str    CPT20                     105-109   ///
      str    CPT21                     110-114   ///
      str    CPT22                     115-119   ///
      str    CPT23                     120-124   ///
      str    CPT24                     125-129   ///
      str    CPT25                     130-134   ///
      str    CPT26                     135-139   ///
      str    CPT27                     140-144   ///
      str    CPT28                     145-149   ///
      str    CPT29                     150-154   ///
      str    CPT30                     155-159   ///
      str    CPT31                     160-164   ///
      str    CPT32                     165-169   ///
      str    CPT33                     170-174   ///
      str    CPT34                     175-179   ///
      str    CPT35                     180-184   ///
      int    CPTCCS1                   185-187   ///
      int    CPTCCS2                   188-190   ///
      int    CPTCCS3                   191-193   ///
      int    CPTCCS4                   194-196   ///
      int    CPTCCS5                   197-199   ///
      int    CPTCCS6                   200-202   ///
      int    CPTCCS7                   203-205   ///
      int    CPTCCS8                   206-208   ///
      int    CPTCCS9                   209-211   ///
      int    CPTCCS10                  212-214   ///
      int    CPTCCS11                  215-217   ///
      int    CPTCCS12                  218-220   ///
      int    CPTCCS13                  221-223   ///
      int    CPTCCS14                  224-226   ///
      int    CPTCCS15                  227-229   ///
      int    CPTCCS16                  230-232   ///
      int    CPTCCS17                  233-235   ///
      int    CPTCCS18                  236-238   ///
      int    CPTCCS19                  239-241   ///
      int    CPTCCS20                  242-244   ///
      int    CPTCCS21                  245-247   ///
      int    CPTCCS22                  248-250   ///
      int    CPTCCS23                  251-253   ///
      int    CPTCCS24                  254-256   ///
      int    CPTCCS25                  257-259   ///
      int    CPTCCS26                  260-262   ///
      int    CPTCCS27                  263-265   ///
      int    CPTCCS28                  266-268   ///
      int    CPTCCS29                  269-271   ///
      int    CPTCCS30                  272-274   ///
      int    CPTCCS31                  275-277   ///
      int    CPTCCS32                  278-280   ///
      int    CPTCCS33                  281-283   ///
      int    CPTCCS34                  284-286   ///
      int    CPTCCS35                  287-289   ///
      int    DHOUR                     290-293   ///
      byte   DIED                      294-295   ///
      byte   DISPUB04                  296-297   ///
      byte   DISPUNIFORM               298-299   ///
      str    DISP_X                    300-301   ///
      byte   DQTR                      302-303   ///
      str    DSHOSPID                  304-320   ///
      long   DURATION                  321-326   ///
      str    DX1                       327-333   ///
      str    DX2                       334-340   ///
      str    DX3                       341-347   ///
      str    DX4                       348-354   ///
      str    DX5                       355-361   ///
      str    DX6                       362-368   ///
      str    DX7                       369-375   ///
      str    DX8                       376-382   ///
      str    DX9                       383-389   ///
      str    DX10                      390-396   ///
      int    DXCCS1                    397-400   ///
      int    DXCCS2                    401-404   ///
      int    DXCCS3                    405-408   ///
      int    DXCCS4                    409-412   ///
      int    DXCCS5                    413-416   ///
      int    DXCCS6                    417-420   ///
      int    DXCCS7                    421-424   ///
      int    DXCCS8                    425-428   ///
      int    DXCCS9                    429-432   ///
      int    DXCCS10                   433-436   ///
      int    DXVER                     437-439   ///
      str    DX_Visit_Reason1          440-446   ///
      long   DaysToEvent               447-452   ///
      str    ECODE1                    453-459   ///
      str    ECODE2                    460-466   ///
      str    ECODE3                    467-473   ///
      int    E_CCS1                    474-477   ///
      int    E_CCS2                    478-481   ///
      int    E_CCS3                    482-485   ///
      byte   FEMALE                    486-487   ///
      byte   HCUP_ED                   488-489   ///
      byte   HCUP_OS                   490-491   ///
      str    HISPANIC_X                492-499   ///
      int    HOSPBRTH                  500-502   ///
      str    HOSPST                    503-504   ///
      byte   Homeless                  505-506   ///
      double KEY                       507-521   ///
      long   LOS                       522-526   ///
      long   LOS_X                     527-532   ///
      long   MDNUM1_R                  533-541   ///
      long   MDNUM2_R                  542-550   ///
      long   MDNUM3_R                  551-559   ///
      byte   MEDINCSTQ                 560-561   ///
      int    NCHRONIC                  562-564   ///
      int    NCPT                      565-567   ///
      int    NDX                       568-570   ///
      byte   NECODE                    571-572   ///
      byte   NEOMAT                    573-574   ///
      int    NPR                       575-577   ///
      str    OFFSITE_ED_X              578       ///
      str    OPservice                 579-580   ///
      byte   ORPROC                    581-582   ///
      byte   PAY1                      583-584   ///
      str    PAY1_X                    585       ///
      int    PL_CBSA                   586-588   ///
      byte   PL_NCHS                   589-590   ///
      byte   PL_RUCC                   591-592   ///
      byte   PL_UIC                    593-594   ///
      byte   PL_UR_CAT4                595-596   ///
      str    PR1                       597-603   ///
      str    PR2                       604-610   ///
      str    PR3                       611-617   ///
      str    PR4                       618-624   ///
      str    PR5                       625-631   ///
      int    PRCCS1                    632-634   ///
      int    PRCCS2                    635-637   ///
      int    PRCCS3                    638-640   ///
      int    PRCCS4                    641-643   ///
      int    PRCCS5                    644-646   ///
      int    PROCTYPE                  647-649   ///
      int    PRVER                     650-652   ///
      str    PSTATE                    653-654   ///
      long   PSTCO2                    655-659   ///
      str    PointOfOriginUB04         660       ///
      str    PointOfOrigin_X           661-662   ///
      byte   RACE                      663-664   ///
      str    RACE_X                    665       ///
      byte   STATE_AS                  666-667   ///
      byte   STATE_ED                  668-669   ///
      byte   STATE_OS                  670-671   ///
      double TOTCHG                    672-681   ///
      double TOTCHG_X                  682-696   ///
      long   VisitLink                 697-705   ///
      int    YEAR                      706-709   ///
      str    ZIP                       710-714   ///
      str    ZIP3                      715-717   ///
      int    ZIPINC_QRTL               718-720   ///
      int    AYEAR                     721-724   ///
      using  "FL_SEDD_2014_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AHOUR                    "Admission Hour"
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
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
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
label var DXVER                    "Diagnosis Version"
label var DX_Visit_Reason1         "Reason for visit diagnosis 1"
label var DaysToEvent              "Days from 'start date' to admission"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var Homeless                 "Indicator that patient is homeless"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCHRONIC                 "Number of chronic conditions"
label var NCPT                     "Number of CPT/HCPCS procedures on this record"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var OFFSITE_ED_X             "Indicator of services performed at an offsite location (as received from source)"
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
label var PRCCS1                   "CCS: procedure 1"
label var PRCCS2                   "CCS: procedure 2"
label var PRCCS3                   "CCS: procedure 3"
label var PRCCS4                   "CCS: procedure 4"
label var PRCCS5                   "CCS: procedure 5"
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
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
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var AYEAR                    "Admission year"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
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
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
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
recode DXVER                     (-99 -88 -66=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode E_CCS1                    (-999 -888 -666=.)
recode E_CCS2                    (-999 -888 -666=.)
recode E_CCS3                    (-999 -888 -666=.)
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
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode STATE_AS                  (-9 -8 -6 -5=.)
recode STATE_ED                  (-9 -8 -6 -5=.)
recode STATE_OS                  (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode VisitLink                 (-99999999 -88888888 -66666666=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)

save "FL_SEDD_2014_CORE.dta", replace
