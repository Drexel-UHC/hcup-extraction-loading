/*****************************************************************************
* Creation Date: 01/21/2016   
* Modify Date:   10/19/2017 - matches data created on date above.
* Stataload_SD_SID_2014_CORE.Do
* This program will load the 2014 SD ASCII CORE File into Stata.
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
      byte   AMONTH                     10- 11   ///
      byte   ATYPE                      12- 13   ///
      byte   AWEEKEND                   14- 15   ///
      byte   DIED                       16- 17   ///
      byte   DISPUB04                   18- 19   ///
      byte   DISPUNIFORM                20- 21   ///
      str    DISP_X                     22- 25   ///
      byte   DMONTH                     26- 27   ///
      byte   DQTR                       28- 29   ///
      int    DRG                        30- 32   ///
      int    DRG24                      33- 35   ///
      byte   DRGVER                     36- 37   ///
      int    DRG_NoPOA                  38- 40   ///
      str    DX1                        41- 47   ///
      str    DX2                        48- 54   ///
      str    DX3                        55- 61   ///
      str    DX4                        62- 68   ///
      str    DX5                        69- 75   ///
      str    DX6                        76- 82   ///
      str    DX7                        83- 89   ///
      str    DX8                        90- 96   ///
      str    DX9                        97-103   ///
      str    DX10                      104-110   ///
      str    DX11                      111-117   ///
      str    DX12                      118-124   ///
      str    DX13                      125-131   ///
      str    DX14                      132-138   ///
      str    DX15                      139-145   ///
      str    DX16                      146-152   ///
      str    DX17                      153-159   ///
      str    DX18                      160-166   ///
      str    DX19                      167-173   ///
      str    DX20                      174-180   ///
      str    DX21                      181-187   ///
      str    DX22                      188-194   ///
      str    DX23                      195-201   ///
      str    DX24                      202-208   ///
      str    DX25                      209-215   ///
      int    DXCCS1                    216-219   ///
      int    DXCCS2                    220-223   ///
      int    DXCCS3                    224-227   ///
      int    DXCCS4                    228-231   ///
      int    DXCCS5                    232-235   ///
      int    DXCCS6                    236-239   ///
      int    DXCCS7                    240-243   ///
      int    DXCCS8                    244-247   ///
      int    DXCCS9                    248-251   ///
      int    DXCCS10                   252-255   ///
      int    DXCCS11                   256-259   ///
      int    DXCCS12                   260-263   ///
      int    DXCCS13                   264-267   ///
      int    DXCCS14                   268-271   ///
      int    DXCCS15                   272-275   ///
      int    DXCCS16                   276-279   ///
      int    DXCCS17                   280-283   ///
      int    DXCCS18                   284-287   ///
      int    DXCCS19                   288-291   ///
      int    DXCCS20                   292-295   ///
      int    DXCCS21                   296-299   ///
      int    DXCCS22                   300-303   ///
      int    DXCCS23                   304-307   ///
      int    DXCCS24                   308-311   ///
      int    DXCCS25                   312-315   ///
      str    DXPOA1                    316       ///
      str    DXPOA2                    317       ///
      str    DXPOA3                    318       ///
      str    DXPOA4                    319       ///
      str    DXPOA5                    320       ///
      str    DXPOA6                    321       ///
      str    DXPOA7                    322       ///
      str    DXPOA8                    323       ///
      str    DXPOA9                    324       ///
      str    DXPOA10                   325       ///
      str    DXPOA11                   326       ///
      str    DXPOA12                   327       ///
      str    DXPOA13                   328       ///
      str    DXPOA14                   329       ///
      str    DXPOA15                   330       ///
      str    DXPOA16                   331       ///
      str    DXPOA17                   332       ///
      str    DXPOA18                   333       ///
      str    DXPOA19                   334       ///
      str    DXPOA20                   335       ///
      str    DXPOA21                   336       ///
      str    DXPOA22                   337       ///
      str    DXPOA23                   338       ///
      str    DXPOA24                   339       ///
      str    DXPOA25                   340       ///
      int    DXVER                     341-343   ///
      str    DX_Admitting              344-350   ///
      str    ECODE1                    351-357   ///
      str    ECODE2                    358-364   ///
      str    ECODE3                    365-371   ///
      str    ECODE4                    372-378   ///
      str    ECODE5                    379-385   ///
      int    E_CCS1                    386-389   ///
      int    E_CCS2                    390-393   ///
      int    E_CCS3                    394-397   ///
      int    E_CCS4                    398-401   ///
      int    E_CCS5                    402-405   ///
      str    E_POA1                    406       ///
      str    E_POA2                    407       ///
      str    E_POA3                    408       ///
      str    E_POA4                    409       ///
      str    E_POA5                    410       ///
      byte   FEMALE                    411-412   ///
      byte   HCUP_ED                   413-414   ///
      byte   HCUP_OS                   415-416   ///
      str    HISPANIC_X                417       ///
      int    HOSPBRTH                  418-420   ///
      str    HOSPST                    421-422   ///
      byte   HospitalUnit              423-424   ///
      double KEY                       425-439   ///
      long   LOS                       440-444   ///
      long   LOS_X                     445-450   ///
      byte   MDC                       451-452   ///
      byte   MDC24                     453-454   ///
      byte   MDC_NoPOA                 455-456   ///
      long   MDNUM1_R                  457-465   ///
      long   MDNUM2_R                  466-474   ///
      byte   MEDINCSTQ                 475-476   ///
      long   MRN_R                     477-485   ///
      int    NCHRONIC                  486-488   ///
      int    NDX                       489-491   ///
      byte   NECODE                    492-493   ///
      byte   NEOMAT                    494-495   ///
      int    NPR                       496-498   ///
      byte   ORPROC                    499-500   ///
      str    P7EDSRC_X                 501-502   ///
      byte   PAY1                      503-504   ///
      int    PL_CBSA                   505-507   ///
      byte   PL_NCHS                   508-509   ///
      byte   PL_RUCC                   510-511   ///
      byte   PL_UIC                    512-513   ///
      byte   PL_UR_CAT4                514-515   ///
      byte   POA_Disch_Edit1           516-517   ///
      byte   POA_Disch_Edit2           518-519   ///
      byte   POA_Hosp_Edit1            520-521   ///
      byte   POA_Hosp_Edit2            522-523   ///
      byte   POA_Hosp_Edit3            524-525   ///
      double POA_Hosp_Edit3_Value      526-533   ///
      str    PR1                       534-540   ///
      str    PR2                       541-547   ///
      str    PR3                       548-554   ///
      str    PR4                       555-561   ///
      str    PR5                       562-568   ///
      str    PR6                       569-575   ///
      str    PR7                       576-582   ///
      str    PR8                       583-589   ///
      str    PR9                       590-596   ///
      str    PR10                      597-603   ///
      str    PR11                      604-610   ///
      str    PR12                      611-617   ///
      str    PR13                      618-624   ///
      str    PR14                      625-631   ///
      str    PR15                      632-638   ///
      str    PR16                      639-645   ///
      str    PR17                      646-652   ///
      str    PR18                      653-659   ///
      str    PR19                      660-666   ///
      str    PR20                      667-673   ///
      str    PR21                      674-680   ///
      str    PR22                      681-687   ///
      str    PR23                      688-694   ///
      str    PR24                      695-701   ///
      str    PR25                      702-708   ///
      int    PRCCS1                    709-711   ///
      int    PRCCS2                    712-714   ///
      int    PRCCS3                    715-717   ///
      int    PRCCS4                    718-720   ///
      int    PRCCS5                    721-723   ///
      int    PRCCS6                    724-726   ///
      int    PRCCS7                    727-729   ///
      int    PRCCS8                    730-732   ///
      int    PRCCS9                    733-735   ///
      int    PRCCS10                   736-738   ///
      int    PRCCS11                   739-741   ///
      int    PRCCS12                   742-744   ///
      int    PRCCS13                   745-747   ///
      int    PRCCS14                   748-750   ///
      int    PRCCS15                   751-753   ///
      int    PRCCS16                   754-756   ///
      int    PRCCS17                   757-759   ///
      int    PRCCS18                   760-762   ///
      int    PRCCS19                   763-765   ///
      int    PRCCS20                   766-768   ///
      int    PRCCS21                   769-771   ///
      int    PRCCS22                   772-774   ///
      int    PRCCS23                   775-777   ///
      int    PRCCS24                   778-780   ///
      int    PRCCS25                   781-783   ///
      long   PRDAY1                    784-788   ///
      long   PRDAY2                    789-793   ///
      long   PRDAY3                    794-798   ///
      long   PRDAY4                    799-803   ///
      long   PRDAY5                    804-808   ///
      long   PRDAY6                    809-813   ///
      long   PRDAY7                    814-818   ///
      long   PRDAY8                    819-823   ///
      long   PRDAY9                    824-828   ///
      long   PRDAY10                   829-833   ///
      long   PRDAY11                   834-838   ///
      long   PRDAY12                   839-843   ///
      long   PRDAY13                   844-848   ///
      long   PRDAY14                   849-853   ///
      long   PRDAY15                   854-858   ///
      long   PRDAY16                   859-863   ///
      long   PRDAY17                   864-868   ///
      long   PRDAY18                   869-873   ///
      long   PRDAY19                   874-878   ///
      long   PRDAY20                   879-883   ///
      long   PRDAY21                   884-888   ///
      long   PRDAY22                   889-893   ///
      long   PRDAY23                   894-898   ///
      long   PRDAY24                   899-903   ///
      long   PRDAY25                   904-908   ///
      int    PROCTYPE                  909-911   ///
      int    PRVER                     912-914   ///
      str    PSTATE                    915-916   ///
      long   PSTCO                     917-921   ///
      long   PSTCO2                    922-926   ///
      str    PointOfOriginUB04         927       ///
      str    PointOfOrigin_X           928       ///
      byte   RACE                      929-930   ///
      str    RACE_X                    931       ///
      byte   SERVICELINE               932-933   ///
      double TOTCHG                    934-943   ///
      double TOTCHG_X                  944-958   ///
      byte   TRAN_IN                   959-960   ///
      byte   TRAN_OUT                  961-962   ///
      int    YEAR                      963-966   ///
      str    ZIP                       967-971   ///
      str    ZIP3                      972-974   ///
      int    ZIPINC_QRTL               975-977   ///
      long   HOSPID                    978-982   ///
      int    AYEAR                     983-986   ///
      byte   BMONTH                    987-988   ///
      int    BYEAR                     989-992   ///
      byte   PRMONTH1                  993-994   ///
      byte   PRMONTH2                  995-996   ///
      byte   PRMONTH3                  997-998   ///
      byte   PRMONTH4                 999-1000   ///
      byte   PRMONTH5                1001-1002   ///
      byte   PRMONTH6                1003-1004   ///
      byte   PRMONTH7                1005-1006   ///
      byte   PRMONTH8                1007-1008   ///
      byte   PRMONTH9                1009-1010   ///
      byte   PRMONTH10               1011-1012   ///
      byte   PRMONTH11               1013-1014   ///
      byte   PRMONTH12               1015-1016   ///
      byte   PRMONTH13               1017-1018   ///
      byte   PRMONTH14               1019-1020   ///
      byte   PRMONTH15               1021-1022   ///
      byte   PRMONTH16               1023-1024   ///
      byte   PRMONTH17               1025-1026   ///
      byte   PRMONTH18               1027-1028   ///
      byte   PRMONTH19               1029-1030   ///
      byte   PRMONTH20               1031-1032   ///
      byte   PRMONTH21               1033-1034   ///
      byte   PRMONTH22               1035-1036   ///
      byte   PRMONTH23               1037-1038   ///
      byte   PRMONTH24               1039-1040   ///
      byte   PRMONTH25               1041-1042   ///
      int    PRYEAR1                 1043-1046   ///
      int    PRYEAR2                 1047-1050   ///
      int    PRYEAR3                 1051-1054   ///
      int    PRYEAR4                 1055-1058   ///
      int    PRYEAR5                 1059-1062   ///
      int    PRYEAR6                 1063-1066   ///
      int    PRYEAR7                 1067-1070   ///
      int    PRYEAR8                 1071-1074   ///
      int    PRYEAR9                 1075-1078   ///
      int    PRYEAR10                1079-1082   ///
      int    PRYEAR11                1083-1086   ///
      int    PRYEAR12                1087-1090   ///
      int    PRYEAR13                1091-1094   ///
      int    PRYEAR14                1095-1098   ///
      int    PRYEAR15                1099-1102   ///
      int    PRYEAR16                1103-1106   ///
      int    PRYEAR17                1107-1110   ///
      int    PRYEAR18                1111-1114   ///
      int    PRYEAR19                1115-1118   ///
      int    PRYEAR20                1119-1122   ///
      int    PRYEAR21                1123-1126   ///
      int    PRYEAR22                1127-1130   ///
      int    PRYEAR23                1131-1134   ///
      int    PRYEAR24                1135-1138   ///
      int    PRYEAR25                1139-1142   ///
      using  "SD_SID_2014_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
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
label var DX_Admitting             "Admitting Diagnosis Code"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var ECODE4                   "E code 4"
label var ECODE5                   "E code 5"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var HospitalUnit
    "Indicator that patient was discharged from a special unit within an acute care hospital (reported by source)"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC24                    "MDC, version 24"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var NCHRONIC                 "Number of chronic conditions"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
label var PAY1                     "Primary expected payer (uniform)"
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
label var PR7                      "Procedure 7"
label var PR8                      "Procedure 8"
label var PR9                      "Procedure 9"
label var PR10                     "Procedure 10"
label var PR11                     "Procedure 11"
label var PR12                     "Procedure 12"
label var PR13                     "Procedure 13"
label var PR14                     "Procedure 14"
label var PR15                     "Procedure 15"
label var PR16                     "Procedure 16"
label var PR17                     "Procedure 17"
label var PR18                     "Procedure 18"
label var PR19                     "Procedure 19"
label var PR20                     "Procedure 20"
label var PR21                     "Procedure 21"
label var PR22                     "Procedure 22"
label var PR23                     "Procedure 23"
label var PR24                     "Procedure 24"
label var PR25                     "Procedure 25"
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
label var PRCCS14                  "CCS: procedure 14"
label var PRCCS15                  "CCS: procedure 15"
label var PRCCS16                  "CCS: procedure 16"
label var PRCCS17                  "CCS: procedure 17"
label var PRCCS18                  "CCS: procedure 18"
label var PRCCS19                  "CCS: procedure 19"
label var PRCCS20                  "CCS: procedure 20"
label var PRCCS21                  "CCS: procedure 21"
label var PRCCS22                  "CCS: procedure 22"
label var PRCCS23                  "CCS: procedure 23"
label var PRCCS24                  "CCS: procedure 24"
label var PRCCS25                  "CCS: procedure 25"
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
label var PRDAY14                  "Number of days from admission to PR14"
label var PRDAY15                  "Number of days from admission to PR15"
label var PRDAY16                  "Number of days from admission to PR16"
label var PRDAY17                  "Number of days from admission to PR17"
label var PRDAY18                  "Number of days from admission to PR18"
label var PRDAY19                  "Number of days from admission to PR19"
label var PRDAY20                  "Number of days from admission to PR20"
label var PRDAY21                  "Number of days from admission to PR21"
label var PRDAY22                  "Number of days from admission to PR22"
label var PRDAY23                  "Number of days from admission to PR23"
label var PRDAY24                  "Number of days from admission to PR24"
label var PRDAY25                  "Number of days from admission to PR25"
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
label var YEAR                     "Calendar year"
label var ZIP                      "Patient ZIP Code"
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
label var PRMONTH7                 "Month of procedure 7"
label var PRMONTH8                 "Month of procedure 8"
label var PRMONTH9                 "Month of procedure 9"
label var PRMONTH10                "Month of procedure 10"
label var PRMONTH11                "Month of procedure 11"
label var PRMONTH12                "Month of procedure 12"
label var PRMONTH13                "Month of procedure 13"
label var PRMONTH14                "Month of procedure 14"
label var PRMONTH15                "Month of procedure 15"
label var PRMONTH16                "Month of procedure 16"
label var PRMONTH17                "Month of procedure 17"
label var PRMONTH18                "Month of procedure 18"
label var PRMONTH19                "Month of procedure 19"
label var PRMONTH20                "Month of procedure 20"
label var PRMONTH21                "Month of procedure 21"
label var PRMONTH22                "Month of procedure 22"
label var PRMONTH23                "Month of procedure 23"
label var PRMONTH24                "Month of procedure 24"
label var PRMONTH25                "Month of procedure 25"
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
label var PRYEAR13                 "Year of procedure 13"
label var PRYEAR14                 "Year of procedure 14"
label var PRYEAR15                 "Year of procedure 15"
label var PRYEAR16                 "Year of procedure 16"
label var PRYEAR17                 "Year of procedure 17"
label var PRYEAR18                 "Year of procedure 18"
label var PRYEAR19                 "Year of procedure 19"
label var PRYEAR20                 "Year of procedure 20"
label var PRYEAR21                 "Year of procedure 21"
label var PRYEAR22                 "Year of procedure 22"
label var PRYEAR23                 "Year of procedure 23"
label var PRYEAR24                 "Year of procedure 24"
label var PRYEAR25                 "Year of procedure 25"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
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
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC24                     (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode NCHRONIC                  (-99 -88 -66=.)
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
recode PRCCS7                    (-99 -88 -66=.)
recode PRCCS8                    (-99 -88 -66=.)
recode PRCCS9                    (-99 -88 -66=.)
recode PRCCS10                   (-99 -88 -66=.)
recode PRCCS11                   (-99 -88 -66=.)
recode PRCCS12                   (-99 -88 -66=.)
recode PRCCS13                   (-99 -88 -66=.)
recode PRCCS14                   (-99 -88 -66=.)
recode PRCCS15                   (-99 -88 -66=.)
recode PRCCS16                   (-99 -88 -66=.)
recode PRCCS17                   (-99 -88 -66=.)
recode PRCCS18                   (-99 -88 -66=.)
recode PRCCS19                   (-99 -88 -66=.)
recode PRCCS20                   (-99 -88 -66=.)
recode PRCCS21                   (-99 -88 -66=.)
recode PRCCS22                   (-99 -88 -66=.)
recode PRCCS23                   (-99 -88 -66=.)
recode PRCCS24                   (-99 -88 -66=.)
recode PRCCS25                   (-99 -88 -66=.)
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
recode PRDAY14                   (-9999 -8888 -6666=.)
recode PRDAY15                   (-9999 -8888 -6666=.)
recode PRDAY16                   (-9999 -8888 -6666=.)
recode PRDAY17                   (-9999 -8888 -6666=.)
recode PRDAY18                   (-9999 -8888 -6666=.)
recode PRDAY19                   (-9999 -8888 -6666=.)
recode PRDAY20                   (-9999 -8888 -6666=.)
recode PRDAY21                   (-9999 -8888 -6666=.)
recode PRDAY22                   (-9999 -8888 -6666=.)
recode PRDAY23                   (-9999 -8888 -6666=.)
recode PRDAY24                   (-9999 -8888 -6666=.)
recode PRDAY25                   (-9999 -8888 -6666=.)
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
recode PRMONTH7                  (-9 -8 -6 -5=.)
recode PRMONTH8                  (-9 -8 -6 -5=.)
recode PRMONTH9                  (-9 -8 -6 -5=.)
recode PRMONTH10                 (-9 -8 -6 -5=.)
recode PRMONTH11                 (-9 -8 -6 -5=.)
recode PRMONTH12                 (-9 -8 -6 -5=.)
recode PRMONTH13                 (-9 -8 -6 -5=.)
recode PRMONTH14                 (-9 -8 -6 -5=.)
recode PRMONTH15                 (-9 -8 -6 -5=.)
recode PRMONTH16                 (-9 -8 -6 -5=.)
recode PRMONTH17                 (-9 -8 -6 -5=.)
recode PRMONTH18                 (-9 -8 -6 -5=.)
recode PRMONTH19                 (-9 -8 -6 -5=.)
recode PRMONTH20                 (-9 -8 -6 -5=.)
recode PRMONTH21                 (-9 -8 -6 -5=.)
recode PRMONTH22                 (-9 -8 -6 -5=.)
recode PRMONTH23                 (-9 -8 -6 -5=.)
recode PRMONTH24                 (-9 -8 -6 -5=.)
recode PRMONTH25                 (-9 -8 -6 -5=.)
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
recode PRYEAR13                  (-999 -888 -666=.)
recode PRYEAR14                  (-999 -888 -666=.)
recode PRYEAR15                  (-999 -888 -666=.)
recode PRYEAR16                  (-999 -888 -666=.)
recode PRYEAR17                  (-999 -888 -666=.)
recode PRYEAR18                  (-999 -888 -666=.)
recode PRYEAR19                  (-999 -888 -666=.)
recode PRYEAR20                  (-999 -888 -666=.)
recode PRYEAR21                  (-999 -888 -666=.)
recode PRYEAR22                  (-999 -888 -666=.)
recode PRYEAR23                  (-999 -888 -666=.)
recode PRYEAR24                  (-999 -888 -666=.)
recode PRYEAR25                  (-999 -888 -666=.)

save "SD_SID_2014_CORE.dta", replace
