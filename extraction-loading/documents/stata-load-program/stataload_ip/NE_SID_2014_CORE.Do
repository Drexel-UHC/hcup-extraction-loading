/*****************************************************************************
* Creation Date: 02/29/2016   
* Modify Date:   10/19/2017 - matches data created on date above.
* NE_SID_2014_CORE.Do
* This program will load the 2014 NE ASCII CORE File into Stata.
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
      str    BILLTYPE                   20- 23   ///
      long   BLOOD                      24- 29   ///
      int    DHOUR                      30- 33   ///
      byte   DIED                       34- 35   ///
      byte   DISPUB04                   36- 37   ///
      byte   DISPUNIFORM                38- 39   ///
      str    DISP_X                     40- 41   ///
      byte   DMONTH                     42- 43   ///
      byte   DQTR                       44- 45   ///
      int    DRG                        46- 48   ///
      int    DRG24                      49- 51   ///
      byte   DRGVER                     52- 53   ///
      int    DRG_NoPOA                  54- 56   ///
      str    DX1                        57- 63   ///
      str    DX2                        64- 70   ///
      str    DX3                        71- 77   ///
      str    DX4                        78- 84   ///
      str    DX5                        85- 91   ///
      str    DX6                        92- 98   ///
      str    DX7                        99-105   ///
      str    DX8                       106-112   ///
      str    DX9                       113-119   ///
      int    DXCCS1                    120-123   ///
      int    DXCCS2                    124-127   ///
      int    DXCCS3                    128-131   ///
      int    DXCCS4                    132-135   ///
      int    DXCCS5                    136-139   ///
      int    DXCCS6                    140-143   ///
      int    DXCCS7                    144-147   ///
      int    DXCCS8                    148-151   ///
      int    DXCCS9                    152-155   ///
      str    DXPOA1                    156       ///
      str    DXPOA2                    157       ///
      str    DXPOA3                    158       ///
      str    DXPOA4                    159       ///
      str    DXPOA5                    160       ///
      str    DXPOA6                    161       ///
      str    DXPOA7                    162       ///
      str    DXPOA8                    163       ///
      str    DXPOA9                    164       ///
      int    DXVER                     165-167   ///
      str    DX_Admitting              168-174   ///
      long   DaysToEvent               175-180   ///
      str    ECODE1                    181-187   ///
      str    ECODE2                    188-194   ///
      str    ECODE3                    195-201   ///
      str    ECODE4                    202-208   ///
      str    ECODE5                    209-215   ///
      str    ECODE6                    216-222   ///
      int    E_CCS1                    223-226   ///
      int    E_CCS2                    227-230   ///
      int    E_CCS3                    231-234   ///
      int    E_CCS4                    235-238   ///
      int    E_CCS5                    239-242   ///
      int    E_CCS6                    243-246   ///
      str    E_POA1                    247       ///
      str    E_POA2                    248       ///
      str    E_POA3                    249       ///
      str    E_POA4                    250       ///
      str    E_POA5                    251       ///
      str    E_POA6                    252       ///
      byte   FEMALE                    253-254   ///
      byte   HCUP_ED                   255-256   ///
      byte   HCUP_OS                   257-258   ///
      int    HOSPBRTH                  259-261   ///
      str    HOSPST                    262-263   ///
      double KEY                       264-278   ///
      long   LOS                       279-283   ///
      long   LOS_X                     284-289   ///
      str    MARITALSTATUSUB04         290       ///
      str    MARITALSTATUS_X           291       ///
      byte   MDC                       292-293   ///
      byte   MDC24                     294-295   ///
      byte   MDC_NoPOA                 296-297   ///
      byte   MEDINCSTQ                 298-299   ///
      int    NCHRONIC                  300-302   ///
      int    NDX                       303-305   ///
      byte   NECODE                    306-307   ///
      byte   NEOMAT                    308-309   ///
      int    NPR                       310-312   ///
      byte   ORPROC                    313-314   ///
      long   OS_TIME                   315-322   ///
      str    P7EDSRC_X                 323-324   ///
      byte   PAY1                      325-326   ///
      str    PAY1_X                    327-328   ///
      byte   PAY2                      329-330   ///
      str    PAY2_X                    331-332   ///
      byte   PAY3                      333-334   ///
      str    PAY3_X                    335-336   ///
      int    PL_CBSA                   337-339   ///
      byte   PL_NCHS                   340-341   ///
      byte   PL_RUCC                   342-343   ///
      byte   PL_UIC                    344-345   ///
      byte   PL_UR_CAT4                346-347   ///
      byte   POA_Disch_Edit1           348-349   ///
      byte   POA_Disch_Edit2           350-351   ///
      byte   POA_Hosp_Edit1            352-353   ///
      byte   POA_Hosp_Edit2            354-355   ///
      byte   POA_Hosp_Edit3            356-357   ///
      double POA_Hosp_Edit3_Value      358-365   ///
      str    PR1                       366-372   ///
      str    PR2                       373-379   ///
      str    PR3                       380-386   ///
      str    PR4                       387-393   ///
      str    PR5                       394-400   ///
      str    PR6                       401-407   ///
      int    PRCCS1                    408-410   ///
      int    PRCCS2                    411-413   ///
      int    PRCCS3                    414-416   ///
      int    PRCCS4                    417-419   ///
      int    PRCCS5                    420-422   ///
      int    PRCCS6                    423-425   ///
      long   PRDAY1                    426-430   ///
      long   PRDAY2                    431-435   ///
      long   PRDAY3                    436-440   ///
      long   PRDAY4                    441-445   ///
      long   PRDAY5                    446-450   ///
      long   PRDAY6                    451-455   ///
      int    PROCTYPE                  456-458   ///
      int    PRVER                     459-461   ///
      str    PSTATE                    462-463   ///
      long   PSTCO2                    464-468   ///
      str    PointOfOriginUB04         469       ///
      str    PointOfOrigin_X           470       ///
      byte   SERVICELINE               471-472   ///
      double TOTCHG                    473-482   ///
      double TOTCHG_X                  483-497   ///
      byte   TRAN_IN                   498-499   ///
      byte   TRAN_OUT                  500-501   ///
      long   VisitLink                 502-510   ///
      int    YEAR                      511-514   ///
      str    ZIP                       515-519   ///
      int    ZIPINC_QRTL               520-522   ///
      str    TOWN                      523-552   ///
      int    AYEAR                     553-556   ///
      byte   BMONTH                    557-558   ///
      int    BYEAR                     559-562   ///
      byte   PRMONTH1                  563-564   ///
      byte   PRMONTH2                  565-566   ///
      byte   PRMONTH3                  567-568   ///
      byte   PRMONTH4                  569-570   ///
      byte   PRMONTH5                  571-572   ///
      byte   PRMONTH6                  573-574   ///
      int    PRYEAR1                   575-578   ///
      int    PRYEAR2                   579-582   ///
      int    PRYEAR3                   583-586   ///
      int    PRYEAR4                   587-590   ///
      int    PRYEAR5                   591-594   ///
      int    PRYEAR6                   595-598   ///
      using  "NE_SID_2014_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var BLOOD                    "Pints of blood furnished to the patient"
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
label var DXCCS1                   "CCS: diagnosis 1"
label var DXCCS2                   "CCS: diagnosis 2"
label var DXCCS3                   "CCS: diagnosis 3"
label var DXCCS4                   "CCS: diagnosis 4"
label var DXCCS5                   "CCS: diagnosis 5"
label var DXCCS6                   "CCS: diagnosis 6"
label var DXCCS7                   "CCS: diagnosis 7"
label var DXCCS8                   "CCS: diagnosis 8"
label var DXCCS9                   "CCS: diagnosis 9"
label var DXPOA1                   "Diagnosis 1, present on admission indicator"
label var DXPOA2                   "Diagnosis 2, present on admission indicator"
label var DXPOA3                   "Diagnosis 3, present on admission indicator"
label var DXPOA4                   "Diagnosis 4, present on admission indicator"
label var DXPOA5                   "Diagnosis 5, present on admission indicator"
label var DXPOA6                   "Diagnosis 6, present on admission indicator"
label var DXPOA7                   "Diagnosis 7, present on admission indicator"
label var DXPOA8                   "Diagnosis 8, present on admission indicator"
label var DXPOA9                   "Diagnosis 9, present on admission indicator"
label var DXVER                    "Diagnosis Version"
label var DX_Admitting             "Admitting Diagnosis Code"
label var DaysToEvent              "Days from 'start date' to admission"
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
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MARITALSTATUS_X          "Patient's marital status (as received from source)"
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
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var SERVICELINE              "Hospital Service Line"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
label var VisitLink                "Visit linkage variable"
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var TOWN                     "Patient town of residence (as received from source)"
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
recode BLOOD                     (-99999 -88888 -66666=.)
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
recode DXVER                     (-99 -88 -66=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
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
recode PSTCO2                    (-9999 -8888 -6666=.)
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

save "NE_SID_2014_CORE.dta", replace
