/*****************************************************************************
* Creation Date: 01/13/2020   
* WV_SID_2018_CORE.Do
* This program will load the 2018 WV ASCII CORE File into Stata.
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
      str    DXPOA26                     78        ///
      str    DXPOA27                     79        ///
      str    DXPOA28                     80        ///
      str    DXPOA29                     81        ///
      str    DXPOA30                     82        ///
      byte   FEMALE                      83-  84   ///
      byte   HCUP_ED                     85-  86   ///
      byte   HCUP_OS                     87-  88   ///
      byte   HISPANIC                    89-  90   ///
      str    HOSPST                      91-  92   ///
      str    I10_DX_Admitting            93-  99   ///
      str    I10_DX1                    100- 106   ///
      str    I10_DX2                    107- 113   ///
      str    I10_DX3                    114- 120   ///
      str    I10_DX4                    121- 127   ///
      str    I10_DX5                    128- 134   ///
      str    I10_DX6                    135- 141   ///
      str    I10_DX7                    142- 148   ///
      str    I10_DX8                    149- 155   ///
      str    I10_DX9                    156- 162   ///
      str    I10_DX10                   163- 169   ///
      str    I10_DX11                   170- 176   ///
      str    I10_DX12                   177- 183   ///
      str    I10_DX13                   184- 190   ///
      str    I10_DX14                   191- 197   ///
      str    I10_DX15                   198- 204   ///
      str    I10_DX16                   205- 211   ///
      str    I10_DX17                   212- 218   ///
      str    I10_DX18                   219- 225   ///
      str    I10_DX19                   226- 232   ///
      str    I10_DX20                   233- 239   ///
      str    I10_DX21                   240- 246   ///
      str    I10_DX22                   247- 253   ///
      str    I10_DX23                   254- 260   ///
      str    I10_DX24                   261- 267   ///
      str    I10_DX25                   268- 274   ///
      str    I10_DX26                   275- 281   ///
      str    I10_DX27                   282- 288   ///
      str    I10_DX28                   289- 295   ///
      str    I10_DX29                   296- 302   ///
      str    I10_DX30                   303- 309   ///
      int    I10_NDX                    310- 312   ///
      int    I10_NPR                    313- 315   ///
      str    I10_PR1                    316- 322   ///
      str    I10_PR2                    323- 329   ///
      str    I10_PR3                    330- 336   ///
      str    I10_PR4                    337- 343   ///
      str    I10_PR5                    344- 350   ///
      str    I10_PR6                    351- 357   ///
      str    I10_PR7                    358- 364   ///
      str    I10_PR8                    365- 371   ///
      str    I10_PR9                    372- 378   ///
      str    I10_PR10                   379- 385   ///
      str    I10_PR11                   386- 392   ///
      str    I10_PR12                   393- 399   ///
      int    I10_PROCTYPE               400- 402   ///
      double KEY                        403- 417   ///
      long   LOS                        418- 422   ///
      long   LOS_X                      423- 428   ///
      byte   MDC                        429- 430   ///
      byte   MDC_NoPOA                  431- 432   ///
      byte   MEDINCSTQ                  433- 434   ///
      double OS_TIME                    435- 445   ///
      str    P7EDSRC_X                  446- 447   ///
      byte   PAY1                       448- 449   ///
      byte   PAY2                       450- 451   ///
      byte   PAY3                       452- 453   ///
      int    PL_CBSA                    454- 456   ///
      byte   PL_NCHS                    457- 458   ///
      byte   PL_UR_CAT4                 459- 460   ///
      byte   POA_Disch_Edit1            461- 462   ///
      byte   POA_Disch_Edit2            463- 464   ///
      byte   POA_Hosp_Edit1             465- 466   ///
      byte   POA_Hosp_Edit2             467- 468   ///
      byte   POA_Hosp_Edit3             469- 470   ///
      double POA_Hosp_Edit3_Value       471- 478   ///
      str    PointOfOrigin_X            479        ///
      str    PointOfOriginUB04          480        ///
      str    PSTATE                     481- 482   ///
      long   PSTCO                      483- 487   ///
      byte   RACE                       488- 489   ///
      byte   RACE_EDIT                  490- 491   ///
      str    RACE_X                     492- 501   ///
      double TOTCHG                     502- 511   ///
      double TOTCHG_X                   512- 526   ///
      byte   TRAN_IN                    527- 528   ///
      byte   TRAN_OUT                   529- 530   ///
      int    YEAR                       531- 534   ///
      int    ZIPINC_QRTL                535- 537   ///
      int    AYEAR                      538- 541   ///
      using  "WV_SID_2018_CORE.ASC"

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
label var DXPOA26                  "Diagnosis 26, present on admission indicator"
label var DXPOA27                  "Diagnosis 27, present on admission indicator"
label var DXPOA28                  "Diagnosis 28, present on admission indicator"
label var DXPOA29                  "Diagnosis 29, present on admission indicator"
label var DXPOA30                  "Diagnosis 30, present on admission indicator"
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
label var I10_DX26                 "ICD-10-CM Diagnosis 26"
label var I10_DX27                 "ICD-10-CM Diagnosis 27"
label var I10_DX28                 "ICD-10-CM Diagnosis 28"
label var I10_DX29                 "ICD-10-CM Diagnosis 29"
label var I10_DX30                 "ICD-10-CM Diagnosis 30"
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

save "WV_SID_2018_CORE.dta", replace
