/*****************************************************************************
* Creation Date: 12/03/2018   
* WV_SID_2017_CORE.Do
* This program will load the 2017 WV ASCII CORE File into Stata.
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
      byte   ATYPE                       10-  11   ///
      byte   AWEEKEND                    12-  13   ///
      str    BILLTYPE                    14-  17   ///
      byte   DIED                        18-  19   ///
      str    DISP_X                      20-  21   ///
      byte   DISPUB04                    22-  23   ///
      byte   DISPUNIFORM                 24-  25   ///
      byte   DQTR                        26-  27   ///
      int    DRG                         28-  30   ///
      int    DRG_NoPOA                   31-  33   ///
      byte   DRGVER                      34-  35   ///
      str    DSHOSPID                    36-  52   ///
      str    DXPOA1                      53        ///
      str    DXPOA2                      54        ///
      str    DXPOA3                      55        ///
      str    DXPOA4                      56        ///
      str    DXPOA5                      57        ///
      str    DXPOA6                      58        ///
      str    DXPOA7                      59        ///
      str    DXPOA8                      60        ///
      str    DXPOA9                      61        ///
      str    DXPOA10                     62        ///
      str    DXPOA11                     63        ///
      str    DXPOA12                     64        ///
      str    DXPOA13                     65        ///
      str    DXPOA14                     66        ///
      str    DXPOA15                     67        ///
      str    DXPOA16                     68        ///
      str    DXPOA17                     69        ///
      str    DXPOA18                     70        ///
      str    DXPOA19                     71        ///
      str    DXPOA20                     72        ///
      str    DXPOA21                     73        ///
      str    DXPOA22                     74        ///
      str    DXPOA23                     75        ///
      str    DXPOA24                     76        ///
      str    DXPOA25                     77        ///
      int    DXVER                       78-  80   ///
      byte   FEMALE                      81-  82   ///
      byte   HCUP_ED                     83-  84   ///
      byte   HCUP_OS                     85-  86   ///
      byte   HISPANIC                    87-  88   ///
      str    HOSPST                      89-  90   ///
      str    I10_DX_Admitting            91-  97   ///
      str    I10_DX1                     98- 104   ///
      str    I10_DX2                    105- 111   ///
      str    I10_DX3                    112- 118   ///
      str    I10_DX4                    119- 125   ///
      str    I10_DX5                    126- 132   ///
      str    I10_DX6                    133- 139   ///
      str    I10_DX7                    140- 146   ///
      str    I10_DX8                    147- 153   ///
      str    I10_DX9                    154- 160   ///
      str    I10_DX10                   161- 167   ///
      str    I10_DX11                   168- 174   ///
      str    I10_DX12                   175- 181   ///
      str    I10_DX13                   182- 188   ///
      str    I10_DX14                   189- 195   ///
      str    I10_DX15                   196- 202   ///
      str    I10_DX16                   203- 209   ///
      str    I10_DX17                   210- 216   ///
      str    I10_DX18                   217- 223   ///
      str    I10_DX19                   224- 230   ///
      str    I10_DX20                   231- 237   ///
      str    I10_DX21                   238- 244   ///
      str    I10_DX22                   245- 251   ///
      str    I10_DX23                   252- 258   ///
      str    I10_DX24                   259- 265   ///
      str    I10_DX25                   266- 272   ///
      int    I10_NDX                    273- 275   ///
      int    I10_NPR                    276- 278   ///
      str    I10_PR1                    279- 285   ///
      str    I10_PR2                    286- 292   ///
      str    I10_PR3                    293- 299   ///
      str    I10_PR4                    300- 306   ///
      str    I10_PR5                    307- 313   ///
      str    I10_PR6                    314- 320   ///
      str    I10_PR7                    321- 327   ///
      str    I10_PR8                    328- 334   ///
      str    I10_PR9                    335- 341   ///
      str    I10_PR10                   342- 348   ///
      str    I10_PR11                   349- 355   ///
      str    I10_PR12                   356- 362   ///
      int    I10_PROCTYPE               363- 365   ///
      double KEY                        366- 380   ///
      long   LOS                        381- 385   ///
      long   LOS_X                      386- 391   ///
      byte   MDC                        392- 393   ///
      byte   MDC_NoPOA                  394- 395   ///
      byte   MEDINCSTQ                  396- 397   ///
      double OS_TIME                    398- 408   ///
      str    P7EDSRC_X                  409- 410   ///
      byte   PAY1                       411- 412   ///
      byte   PAY2                       413- 414   ///
      byte   PAY3                       415- 416   ///
      int    PL_CBSA                    417- 419   ///
      byte   PL_NCHS                    420- 421   ///
      byte   PL_UR_CAT4                 422- 423   ///
      byte   POA_Disch_Edit1            424- 425   ///
      byte   POA_Disch_Edit2            426- 427   ///
      byte   POA_Hosp_Edit1             428- 429   ///
      byte   POA_Hosp_Edit2             430- 431   ///
      byte   POA_Hosp_Edit3             432- 433   ///
      double POA_Hosp_Edit3_Value       434- 441   ///
      str    PointOfOrigin_X            442        ///
      str    PointOfOriginUB04          443        ///
      int    PRVER                      444- 446   ///
      str    PSTATE                     447- 448   ///
      long   PSTCO                      449- 453   ///
      byte   RACE                       454- 455   ///
      byte   RACE_EDIT                  456- 457   ///
      str    RACE_X                     458- 467   ///
      double TOTCHG                     468- 477   ///
      double TOTCHG_X                   478- 492   ///
      byte   TRAN_IN                    493- 494   ///
      byte   TRAN_OUT                   495- 496   ///
      int    YEAR                       497- 500   ///
      int    ZIPINC_QRTL                501- 503   ///
      int    AYEAR                      504- 507   ///
      using  "WV_SID_2017_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var DIED                     "Died during hospitalization"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DQTR                     "Discharge quarter"
label var DRG                      "DRG in effect on discharge date"
label var DRG_NoPOA                "DRG in use on discharge date, calculated without POA"
label var DRGVER                   "DRG grouper version used on discharge date"
label var DSHOSPID                 "Data source hospital identifier"
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
label var DXPOA19                  "Diagnosis 19, present on admission indicator"
label var DXPOA20                  "Diagnosis 20, present on admission indicator"
label var DXPOA21                  "Diagnosis 21, present on admission indicator"
label var DXPOA22                  "Diagnosis 22, present on admission indicator"
label var DXPOA23                  "Diagnosis 23, present on admission indicator"
label var DXPOA24                  "Diagnosis 24, present on admission indicator"
label var DXPOA25                  "Diagnosis 25, present on admission indicator"
label var DXVER                    "Diagnosis Version"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC                 "Hispanic ethnicity (uniform)"
label var HOSPST                   "Hospital state postal code"
label var I10_DX_Admitting         "ICD-10-CM Admitting Diagnosis Code"
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
label var I10_NDX                  "ICD-10-CM Number of diagnoses on this record"
label var I10_NPR                  "ICD-10-PCS Number of procedures on this record"
label var I10_PR1                  "ICD-10-PCS Procedure 1"
label var I10_PR2                  "ICD-10-PCS Procedure 2"
label var I10_PR3                  "ICD-10-PCS Procedure 3"
label var I10_PR4                  "ICD-10-PCS Procedure 4"
label var I10_PR5                  "ICD-10-PCS Procedure 5"
label var I10_PR6                  "ICD-10-PCS Procedure 6"
label var I10_PR7                  "ICD-10-PCS Procedure 7"
label var I10_PR8                  "ICD-10-PCS Procedure 8"
label var I10_PR9                  "ICD-10-PCS Procedure 9"
label var I10_PR10                 "ICD-10-PCS Procedure 10"
label var I10_PR11                 "ICD-10-PCS Procedure 11"
label var I10_PR12                 "ICD-10-PCS Procedure 12"
label var I10_PROCTYPE             "ICD-10-PCS Procedure type indicator"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var OS_TIME                  "Observation stay time summed from UNITS"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY3                     "Tertiary expected payer (uniform)"
label var PL_CBSA                  "Patient location: Core Based Statistical Area (CBSA)"
label var PL_NCHS                  "Patient Location: NCHS Urban-Rural Code"
label var PL_UR_CAT4               "Patient Location: Urban-Rural 4 Categories"
label var POA_Disch_Edit1          "Discharge has POA missing on all nonexempt diagnoses"
label var POA_Disch_Edit2          "Discharge has POA missing on all nonexempt secondary diagnoses"
label var POA_Hosp_Edit1           "Hospital reported POA as Y on all diagnoses on all discharges"
label var POA_Hosp_Edit2           "Hospital reported POA as missing on all non-Medicare discharges"
label var POA_Hosp_Edit3           "Hospital reported POA as missing on all nonexempt diagnoses for 15% or more of discharges"
label var POA_Hosp_Edit3_Value     "Percentage of discharges with all nonexempt diagnoses missing POA indicators"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var RACE                     "Race (uniform)"
label var RACE_EDIT                "Race Edit Checks"
label var RACE_X                   "Race (as received from source)"
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
recode DRG_NoPOA                 (-99 -88 -66=.)
recode DRGVER                    (-9 -8 -6 -5=.)
recode DXVER                     (-99 -88 -66=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HISPANIC                  (-9 -8 -6 -5=.)
recode I10_NDX                   (-99 -88 -66=.)
recode I10_NPR                   (-99 -88 -66=.)
recode I10_PROCTYPE              (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode OS_TIME                   (-9999999.99 -8888888.88 -6666666.66=.)
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
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode RACE_EDIT                 (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
recode TRAN_IN                   (-9 -8 -6 -5=.)
recode TRAN_OUT                  (-9 -8 -6 -5=.)
recode YEAR                      (-999 -888 -666=.)
recode ZIPINC_QRTL               (-99 -88 -66=.)
recode AYEAR                     (-999 -888 -666=.)

save "WV_SID_2017_CORE.dta", replace
