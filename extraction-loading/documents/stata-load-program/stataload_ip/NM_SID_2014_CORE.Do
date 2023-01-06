/*****************************************************************************
* Creation Date: 01/05/2016   
* Modify Date:   10/19/2017 - matches data created on date above.
* Stataload_NM_SID_2014_CORE.Do
* This program will load the 2014 NM ASCII CORE File into Stata.
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
      int    BWT                        20- 23   ///
      int    DHOUR                      24- 27   ///
      byte   DIED                       28- 29   ///
      byte   DISPUB04                   30- 31   ///
      byte   DISPUNIFORM                32- 33   ///
      str    DISP_X                     34- 35   ///
      byte   DMONTH                     36- 37   ///
      byte   DQTR                       38- 39   ///
      int    DRG                        40- 42   ///
      int    DRG24                      43- 45   ///
      byte   DRGVER                     46- 47   ///
      int    DRG_NoPOA                  48- 50   ///
      str    DX1                        51- 57   ///
      str    DX2                        58- 64   ///
      str    DX3                        65- 71   ///
      str    DX4                        72- 78   ///
      str    DX5                        79- 85   ///
      str    DX6                        86- 92   ///
      str    DX7                        93- 99   ///
      str    DX8                       100-106   ///
      str    DX9                       107-113   ///
      str    DX10                      114-120   ///
      str    DX11                      121-127   ///
      str    DX12                      128-134   ///
      str    DX13                      135-141   ///
      str    DX14                      142-148   ///
      str    DX15                      149-155   ///
      str    DX16                      156-162   ///
      str    DX17                      163-169   ///
      str    DX18                      170-176   ///
      int    DXCCS1                    177-180   ///
      int    DXCCS2                    181-184   ///
      int    DXCCS3                    185-188   ///
      int    DXCCS4                    189-192   ///
      int    DXCCS5                    193-196   ///
      int    DXCCS6                    197-200   ///
      int    DXCCS7                    201-204   ///
      int    DXCCS8                    205-208   ///
      int    DXCCS9                    209-212   ///
      int    DXCCS10                   213-216   ///
      int    DXCCS11                   217-220   ///
      int    DXCCS12                   221-224   ///
      int    DXCCS13                   225-228   ///
      int    DXCCS14                   229-232   ///
      int    DXCCS15                   233-236   ///
      int    DXCCS16                   237-240   ///
      int    DXCCS17                   241-244   ///
      int    DXCCS18                   245-248   ///
      str    DXPOA1                    249       ///
      str    DXPOA2                    250       ///
      str    DXPOA3                    251       ///
      str    DXPOA4                    252       ///
      str    DXPOA5                    253       ///
      str    DXPOA6                    254       ///
      str    DXPOA7                    255       ///
      str    DXPOA8                    256       ///
      str    DXPOA9                    257       ///
      str    DXPOA10                   258       ///
      str    DXPOA11                   259       ///
      str    DXPOA12                   260       ///
      str    DXPOA13                   261       ///
      str    DXPOA14                   262       ///
      str    DXPOA15                   263       ///
      str    DXPOA16                   264       ///
      str    DXPOA17                   265       ///
      str    DXPOA18                   266       ///
      int    DXVER                     267-269   ///
      str    DX_Admitting              270-276   ///
      long   DaysToEvent               277-282   ///
      str    ECODE1                    283-289   ///
      str    ECODE2                    290-296   ///
      str    ECODE3                    297-303   ///
      str    ECODE4                    304-310   ///
      str    ECODE5                    311-317   ///
      str    ECODE6                    318-324   ///
      str    ECODE7                    325-331   ///
      str    ECODE8                    332-338   ///
      str    ECODE9                    339-345   ///
      str    ECODE10                   346-352   ///
      str    ECODE11                   353-359   ///
      int    E_CCS1                    360-363   ///
      int    E_CCS2                    364-367   ///
      int    E_CCS3                    368-371   ///
      int    E_CCS4                    372-375   ///
      int    E_CCS5                    376-379   ///
      int    E_CCS6                    380-383   ///
      int    E_CCS7                    384-387   ///
      int    E_CCS8                    388-391   ///
      int    E_CCS9                    392-395   ///
      int    E_CCS10                   396-399   ///
      int    E_CCS11                   400-403   ///
      str    E_POA1                    404       ///
      str    E_POA2                    405       ///
      str    E_POA3                    406       ///
      str    E_POA4                    407       ///
      str    E_POA5                    408       ///
      str    E_POA6                    409       ///
      str    E_POA7                    410       ///
      str    E_POA8                    411       ///
      str    E_POA9                    412       ///
      str    E_POA10                   413       ///
      str    E_POA11                   414       ///
      byte   FEMALE                    415-416   ///
      byte   HCUP_ED                   417-418   ///
      byte   HCUP_OS                   419-420   ///
      str    HISPANIC_X                421-422   ///
      int    HOSPBRTH                  423-425   ///
      str    HOSPST                    426-427   ///
      double KEY                       428-442   ///
      long   LOS                       443-447   ///
      long   LOS_X                     448-453   ///
      byte   MDC                       454-455   ///
      byte   MDC24                     456-457   ///
      byte   MDC_NoPOA                 458-459   ///
      long   MDNUM1_R                  460-468   ///
      long   MDNUM2_R                  469-477   ///
      byte   MEDINCSTQ                 478-479   ///
      int    NCHRONIC                  480-482   ///
      int    NDX                       483-485   ///
      byte   NECODE                    486-487   ///
      byte   NEOMAT                    488-489   ///
      int    NPR                       490-492   ///
      byte   ORPROC                    493-494   ///
      long   OS_TIME                   495-502   ///
      byte   PAY1                      503-504   ///
      str    PAY1_X                    505-506   ///
      byte   PAY2                      507-508   ///
      str    PAY2_X                    509-510   ///
      byte   PAY3                      511-512   ///
      str    PAY3_X                    513-514   ///
      int    PL_CBSA                   515-517   ///
      byte   PL_NCHS                   518-519   ///
      byte   PL_RUCC                   520-521   ///
      byte   PL_UIC                    522-523   ///
      byte   PL_UR_CAT4                524-525   ///
      byte   POA_Disch_Edit1           526-527   ///
      byte   POA_Disch_Edit2           528-529   ///
      byte   POA_Hosp_Edit1            530-531   ///
      byte   POA_Hosp_Edit2            532-533   ///
      byte   POA_Hosp_Edit3            534-535   ///
      double POA_Hosp_Edit3_Value      536-543   ///
      str    PR1                       544-550   ///
      str    PR2                       551-557   ///
      str    PR3                       558-564   ///
      str    PR4                       565-571   ///
      str    PR5                       572-578   ///
      str    PR6                       579-585   ///
      int    PRCCS1                    586-588   ///
      int    PRCCS2                    589-591   ///
      int    PRCCS3                    592-594   ///
      int    PRCCS4                    595-597   ///
      int    PRCCS5                    598-600   ///
      int    PRCCS6                    601-603   ///
      long   PRDAY1                    604-608   ///
      long   PRDAY2                    609-613   ///
      long   PRDAY3                    614-618   ///
      long   PRDAY4                    619-623   ///
      long   PRDAY5                    624-628   ///
      long   PRDAY6                    629-633   ///
      int    PROCTYPE                  634-636   ///
      int    PRVER                     637-639   ///
      str    PSTATE                    640-641   ///
      long   PSTCO                     642-646   ///
      long   PSTCO2                    647-651   ///
      str    PointOfOriginUB04         652       ///
      str    PointOfOrigin_X           653       ///
      byte   RACE                      654-655   ///
      str    RACE_X                    656-657   ///
      byte   SERVICELINE               658-659   ///
      double TOTCHG                    660-669   ///
      double TOTCHG_X                  670-684   ///
      byte   TRAN_IN                   685-686   ///
      byte   TRAN_OUT                  687-688   ///
      long   VisitLink                 689-697   ///
      int    YEAR                      698-701   ///
      str    ZIP3                      702-704   ///
      int    ZIPINC_QRTL               705-707   ///
      long   HOSPID                    708-712   ///
      int    AYEAR                     713-716   ///
      byte   BMONTH                    717-718   ///
      int    BYEAR                     719-722   ///
      byte   PRMONTH1                  723-724   ///
      byte   PRMONTH2                  725-726   ///
      byte   PRMONTH3                  727-728   ///
      byte   PRMONTH4                  729-730   ///
      byte   PRMONTH5                  731-732   ///
      byte   PRMONTH6                  733-734   ///
      int    PRYEAR1                   735-738   ///
      int    PRYEAR2                   739-742   ///
      int    PRYEAR3                   743-746   ///
      int    PRYEAR4                   747-750   ///
      int    PRYEAR5                   751-754   ///
      int    PRYEAR6                   755-758   ///
      using  "NM_SID_2014_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRG24                    "DRG, version 24"
label var DRGVER                   "DRG grouper version used on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC24                    "MDC, version 24"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCHRONIC                 "Number of chronic conditions"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
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
label var PRDAY1                   "Number of days from admission to PR1"
label var PRDAY2                   "Number of days from admission to PR2"
label var PRDAY3                   "Number of days from admission to PR3"
label var PRDAY4                   "Number of days from admission to PR4"
label var PRDAY5                   "Number of days from admission to PR5"
label var PRDAY6                   "Number of days from admission to PR6"
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
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
label var HOSPID                   "HCUP hospital identification number"
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
recode PRDAY1                    (-9999 -8888 -6666=.)
recode PRDAY2                    (-9999 -8888 -6666=.)
recode PRDAY3                    (-9999 -8888 -6666=.)
recode PRDAY4                    (-9999 -8888 -6666=.)
recode PRDAY5                    (-9999 -8888 -6666=.)
recode PRDAY6                    (-9999 -8888 -6666=.)
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
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

save "NM_SID_2014_CORE.dta", replace
