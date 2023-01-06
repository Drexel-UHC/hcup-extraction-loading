/*****************************************************************************
* Creation Date: 02/09/2016   
* Modify Date:   10/19/2017 - matches data created on date above.
* WV_SID_2014_CORE.Do
* This program will load the 2014 WV ASCII CORE File into Stata.
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
      byte   ATYPE                      10- 11   ///
      byte   AWEEKEND                   12- 13   ///
      str    BILLTYPE                   14- 17   ///
      byte   DIED                       18- 19   ///
      byte   DISPUB04                   20- 21   ///
      byte   DISPUNIFORM                22- 23   ///
      str    DISP_X                     24- 25   ///
      byte   DQTR                       26- 27   ///
      int    DRG                        28- 30   ///
      int    DRG24                      31- 33   ///
      byte   DRGVER                     34- 35   ///
      int    DRG_NoPOA                  36- 38   ///
      str    DSHOSPID                   39- 55   ///
      str    DX1                        56- 62   ///
      str    DX2                        63- 69   ///
      str    DX3                        70- 76   ///
      str    DX4                        77- 83   ///
      str    DX5                        84- 90   ///
      str    DX6                        91- 97   ///
      str    DX7                        98-104   ///
      str    DX8                       105-111   ///
      str    DX9                       112-118   ///
      str    DX10                      119-125   ///
      str    DX11                      126-132   ///
      str    DX12                      133-139   ///
      str    DX13                      140-146   ///
      str    DX14                      147-153   ///
      str    DX15                      154-160   ///
      str    DX16                      161-167   ///
      str    DX17                      168-174   ///
      str    DX18                      175-181   ///
      int    DXCCS1                    182-185   ///
      int    DXCCS2                    186-189   ///
      int    DXCCS3                    190-193   ///
      int    DXCCS4                    194-197   ///
      int    DXCCS5                    198-201   ///
      int    DXCCS6                    202-205   ///
      int    DXCCS7                    206-209   ///
      int    DXCCS8                    210-213   ///
      int    DXCCS9                    214-217   ///
      int    DXCCS10                   218-221   ///
      int    DXCCS11                   222-225   ///
      int    DXCCS12                   226-229   ///
      int    DXCCS13                   230-233   ///
      int    DXCCS14                   234-237   ///
      int    DXCCS15                   238-241   ///
      int    DXCCS16                   242-245   ///
      int    DXCCS17                   246-249   ///
      int    DXCCS18                   250-253   ///
      str    DXPOA1                    254       ///
      str    DXPOA2                    255       ///
      str    DXPOA3                    256       ///
      str    DXPOA4                    257       ///
      str    DXPOA5                    258       ///
      str    DXPOA6                    259       ///
      str    DXPOA7                    260       ///
      str    DXPOA8                    261       ///
      str    DXPOA9                    262       ///
      str    DXPOA10                   263       ///
      str    DXPOA11                   264       ///
      str    DXPOA12                   265       ///
      str    DXPOA13                   266       ///
      str    DXPOA14                   267       ///
      str    DXPOA15                   268       ///
      str    DXPOA16                   269       ///
      str    DXPOA17                   270       ///
      str    DXPOA18                   271       ///
      int    DXVER                     272-274   ///
      str    DX_Admitting              275-281   ///
      str    ECODE1                    282-288   ///
      str    ECODE2                    289-295   ///
      str    ECODE3                    296-302   ///
      str    ECODE4                    303-309   ///
      str    ECODE5                    310-316   ///
      str    ECODE6                    317-323   ///
      int    E_CCS1                    324-327   ///
      int    E_CCS2                    328-331   ///
      int    E_CCS3                    332-335   ///
      int    E_CCS4                    336-339   ///
      int    E_CCS5                    340-343   ///
      int    E_CCS6                    344-347   ///
      str    E_POA1                    348       ///
      str    E_POA2                    349       ///
      str    E_POA3                    350       ///
      str    E_POA4                    351       ///
      str    E_POA5                    352       ///
      str    E_POA6                    353       ///
      byte   FEMALE                    354-355   ///
      byte   HCUP_ED                   356-357   ///
      byte   HCUP_OS                   358-359   ///
      int    HOSPBRTH                  360-362   ///
      str    HOSPST                    363-364   ///
      double KEY                       365-379   ///
      long   LOS                       380-384   ///
      long   LOS_X                     385-390   ///
      byte   MDC                       391-392   ///
      byte   MDC24                     393-394   ///
      byte   MDC_NoPOA                 395-396   ///
      byte   MEDINCSTQ                 397-398   ///
      int    NCHRONIC                  399-401   ///
      int    NDX                       402-404   ///
      byte   NECODE                    405-406   ///
      byte   NEOMAT                    407-408   ///
      int    NPR                       409-411   ///
      byte   ORPROC                    412-413   ///
      long   OS_TIME                   414-421   ///
      str    P7EDSRC_X                 422-423   ///
      byte   PAY1                      424-425   ///
      byte   PAY2                      426-427   ///
      byte   PAY3                      428-429   ///
      int    PL_CBSA                   430-432   ///
      byte   PL_NCHS                   433-434   ///
      byte   PL_UR_CAT4                435-436   ///
      byte   POA_Disch_Edit1           437-438   ///
      byte   POA_Disch_Edit2           439-440   ///
      byte   POA_Hosp_Edit1            441-442   ///
      byte   POA_Hosp_Edit2            443-444   ///
      byte   POA_Hosp_Edit3            445-446   ///
      double POA_Hosp_Edit3_Value      447-454   ///
      str    PR1                       455-461   ///
      str    PR2                       462-468   ///
      str    PR3                       469-475   ///
      str    PR4                       476-482   ///
      str    PR5                       483-489   ///
      str    PR6                       490-496   ///
      int    PRCCS1                    497-499   ///
      int    PRCCS2                    500-502   ///
      int    PRCCS3                    503-505   ///
      int    PRCCS4                    506-508   ///
      int    PRCCS5                    509-511   ///
      int    PRCCS6                    512-514   ///
      int    PROCTYPE                  515-517   ///
      int    PRVER                     518-520   ///
      str    PSTATE                    521-522   ///
      str    PointOfOriginUB04         523       ///
      str    PointOfOrigin_X           524       ///
      byte   RACE                      525-526   ///
      str    RACE_X                    527-536   ///
      byte   SERVICELINE               537-538   ///
      double TOTCHG                    539-548   ///
      double TOTCHG_X                  549-563   ///
      byte   TRAN_IN                   564-565   ///
      byte   TRAN_OUT                  566-567   ///
      int    YEAR                      568-571   ///
      int    ZIPINC_QRTL               572-574   ///
      int    AYEAR                     575-578   ///
      using  "WV_SID_2014_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
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
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC24                    "MDC, version 24"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCHRONIC                 "Number of chronic conditions"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY3                     "Tertiary expected payer (uniform)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
label var POA_Disch_Edit1          "Indication that a discharge has POA missing on all nonexempt diagnoses"
label var POA_Disch_Edit2          "Indication that a discharge has POA missing on all nonexempt secondary diagnoses"
label var POA_Hosp_Edit1           "Indication that a hospital has POA reported as Y on all diagnoses on all discharges"
label var POA_Hosp_Edit2           "Indication that a hospital has POA reported as missing on all non-Medicare discharges"
label var POA_Hosp_Edit3           "Hospital reported POA as missing on all nonexempt diagnoses for 15% or more of discharges"
label var POA_Hosp_Edit3_Value     "Percentage of discharges with all nonexempt diagnoses missing POA indicators"
label var PR1                      "Procedure 1"
label var PR2                      "Procedure 2"
label var PR3                      "Procedure 3"
label var PR4                      "Procedure 4"
label var PR5                      "Procedure 5"
label var PR6                      "Procedure 6"
label var PRCCS1                   "CCS: procedure 1"
label var PRCCS2                   "CCS: procedure 2"
label var PRCCS3                   "CCS: procedure 3"
label var PRCCS4                   "CCS: procedure 4"
label var PRCCS5                   "CCS: procedure 5"
label var PRCCS6                   "CCS: procedure 6"
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var SERVICELINE              "Hospital Service Line"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var YEAR                     "Calendar year"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var AYEAR                    "Admission year"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
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
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC24                     (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
recode OS_TIME                   (-9999999 -8888888 -6666666=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
recode PAY3                      (-9 -8 -6 -5=.)
recode PL_CBSA                   (-99 -88 -66=.)
recode PL_NCHS                   (-9 -8 -6 -5=.)
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
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
recode RACE                      (-9 -8 -6 -5=.)
recode SERVICELINE               (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)

save "WV_SID_2014_CORE.dta", replace
