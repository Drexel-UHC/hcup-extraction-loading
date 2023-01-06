/*****************************************************************************
* Creation Date: 10/15/2015   
* Modify Date:   10/19/2017 - matches data created on date above.
* Stataload_FL_SID_2014_CORE.Do
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
      byte   ATYPE                       8-  9   ///
      byte   AWEEKEND                   10- 11   ///
      int    DHOUR                      12- 15   ///
      byte   DIED                       16- 17   ///
      byte   DISPUB04                   18- 19   ///
      byte   DISPUNIFORM                20- 21   ///
      str    DISP_X                     22- 23   ///
      byte   DQTR                       24- 25   ///
      int    DRG                        26- 28   ///
      int    DRG24                      29- 31   ///
      byte   DRGVER                     32- 33   ///
      int    DRG_NoPOA                  34- 36   ///
      str    DSHOSPID                   37- 53   ///
      str    DX1                        54- 60   ///
      str    DX2                        61- 67   ///
      str    DX3                        68- 74   ///
      str    DX4                        75- 81   ///
      str    DX5                        82- 88   ///
      str    DX6                        89- 95   ///
      str    DX7                        96-102   ///
      str    DX8                       103-109   ///
      str    DX9                       110-116   ///
      str    DX10                      117-123   ///
      str    DX11                      124-130   ///
      str    DX12                      131-137   ///
      str    DX13                      138-144   ///
      str    DX14                      145-151   ///
      str    DX15                      152-158   ///
      str    DX16                      159-165   ///
      str    DX17                      166-172   ///
      str    DX18                      173-179   ///
      str    DX19                      180-186   ///
      str    DX20                      187-193   ///
      str    DX21                      194-200   ///
      str    DX22                      201-207   ///
      str    DX23                      208-214   ///
      str    DX24                      215-221   ///
      str    DX25                      222-228   ///
      str    DX26                      229-235   ///
      str    DX27                      236-242   ///
      str    DX28                      243-249   ///
      str    DX29                      250-256   ///
      str    DX30                      257-263   ///
      str    DX31                      264-270   ///
      int    DXCCS1                    271-274   ///
      int    DXCCS2                    275-278   ///
      int    DXCCS3                    279-282   ///
      int    DXCCS4                    283-286   ///
      int    DXCCS5                    287-290   ///
      int    DXCCS6                    291-294   ///
      int    DXCCS7                    295-298   ///
      int    DXCCS8                    299-302   ///
      int    DXCCS9                    303-306   ///
      int    DXCCS10                   307-310   ///
      int    DXCCS11                   311-314   ///
      int    DXCCS12                   315-318   ///
      int    DXCCS13                   319-322   ///
      int    DXCCS14                   323-326   ///
      int    DXCCS15                   327-330   ///
      int    DXCCS16                   331-334   ///
      int    DXCCS17                   335-338   ///
      int    DXCCS18                   339-342   ///
      int    DXCCS19                   343-346   ///
      int    DXCCS20                   347-350   ///
      int    DXCCS21                   351-354   ///
      int    DXCCS22                   355-358   ///
      int    DXCCS23                   359-362   ///
      int    DXCCS24                   363-366   ///
      int    DXCCS25                   367-370   ///
      int    DXCCS26                   371-374   ///
      int    DXCCS27                   375-378   ///
      int    DXCCS28                   379-382   ///
      int    DXCCS29                   383-386   ///
      int    DXCCS30                   387-390   ///
      int    DXCCS31                   391-394   ///
      str    DXPOA1                    395       ///
      str    DXPOA2                    396       ///
      str    DXPOA3                    397       ///
      str    DXPOA4                    398       ///
      str    DXPOA5                    399       ///
      str    DXPOA6                    400       ///
      str    DXPOA7                    401       ///
      str    DXPOA8                    402       ///
      str    DXPOA9                    403       ///
      str    DXPOA10                   404       ///
      str    DXPOA11                   405       ///
      str    DXPOA12                   406       ///
      str    DXPOA13                   407       ///
      str    DXPOA14                   408       ///
      str    DXPOA15                   409       ///
      str    DXPOA16                   410       ///
      str    DXPOA17                   411       ///
      str    DXPOA18                   412       ///
      str    DXPOA19                   413       ///
      str    DXPOA20                   414       ///
      str    DXPOA21                   415       ///
      str    DXPOA22                   416       ///
      str    DXPOA23                   417       ///
      str    DXPOA24                   418       ///
      str    DXPOA25                   419       ///
      str    DXPOA26                   420       ///
      str    DXPOA27                   421       ///
      str    DXPOA28                   422       ///
      str    DXPOA29                   423       ///
      str    DXPOA30                   424       ///
      str    DXPOA31                   425       ///
      int    DXVER                     426-428   ///
      str    DX_Admitting              429-435   ///
      long   DaysToEvent               436-441   ///
      str    ECODE1                    442-448   ///
      str    ECODE2                    449-455   ///
      str    ECODE3                    456-462   ///
      int    EDHOUR                    463-466   ///
      int    E_CCS1                    467-470   ///
      int    E_CCS2                    471-474   ///
      int    E_CCS3                    475-478   ///
      str    E_POA1                    479       ///
      str    E_POA2                    480       ///
      str    E_POA3                    481       ///
      byte   FEMALE                    482-483   ///
      byte   HCUP_ED                   484-485   ///
      byte   HCUP_OS                   486-487   ///
      str    HISPANIC_X                488-495   ///
      int    HOSPBRTH                  496-498   ///
      str    HOSPST                    499-500   ///
      byte   Homeless                  501-502   ///
      byte   HospitalUnit              503-504   ///
      double KEY                       505-519   ///
      long   LOS                       520-524   ///
      long   LOS_X                     525-530   ///
      byte   MDC                       531-532   ///
      byte   MDC24                     533-534   ///
      byte   MDC_NoPOA                 535-536   ///
      long   MDNUM1_R                  537-545   ///
      long   MDNUM2_R                  546-554   ///
      long   MDNUM3_R                  555-563   ///
      byte   MEDINCSTQ                 564-565   ///
      int    NCHRONIC                  566-568   ///
      int    NDX                       569-571   ///
      byte   NECODE                    572-573   ///
      byte   NEOMAT                    574-575   ///
      int    NPR                       576-578   ///
      byte   ORPROC                    579-580   ///
      str    P7EDSRC_X                 581-582   ///
      byte   PAY1                      583-584   ///
      str    PAY1_X                    585       ///
      int    PL_CBSA                   586-588   ///
      byte   PL_NCHS                   589-590   ///
      byte   PL_RUCC                   591-592   ///
      byte   PL_UIC                    593-594   ///
      byte   PL_UR_CAT4                595-596   ///
      byte   POA_Disch_Edit1           597-598   ///
      byte   POA_Disch_Edit2           599-600   ///
      byte   POA_Hosp_Edit1            601-602   ///
      byte   POA_Hosp_Edit2            603-604   ///
      byte   POA_Hosp_Edit3            605-606   ///
      double POA_Hosp_Edit3_Value      607-614   ///
      str    PR1                       615-621   ///
      str    PR2                       622-628   ///
      str    PR3                       629-635   ///
      str    PR4                       636-642   ///
      str    PR5                       643-649   ///
      str    PR6                       650-656   ///
      str    PR7                       657-663   ///
      str    PR8                       664-670   ///
      str    PR9                       671-677   ///
      str    PR10                      678-684   ///
      str    PR11                      685-691   ///
      str    PR12                      692-698   ///
      str    PR13                      699-705   ///
      str    PR14                      706-712   ///
      str    PR15                      713-719   ///
      str    PR16                      720-726   ///
      str    PR17                      727-733   ///
      str    PR18                      734-740   ///
      str    PR19                      741-747   ///
      str    PR20                      748-754   ///
      str    PR21                      755-761   ///
      str    PR22                      762-768   ///
      str    PR23                      769-775   ///
      str    PR24                      776-782   ///
      str    PR25                      783-789   ///
      str    PR26                      790-796   ///
      str    PR27                      797-803   ///
      str    PR28                      804-810   ///
      str    PR29                      811-817   ///
      str    PR30                      818-824   ///
      str    PR31                      825-831   ///
      int    PRCCS1                    832-834   ///
      int    PRCCS2                    835-837   ///
      int    PRCCS3                    838-840   ///
      int    PRCCS4                    841-843   ///
      int    PRCCS5                    844-846   ///
      int    PRCCS6                    847-849   ///
      int    PRCCS7                    850-852   ///
      int    PRCCS8                    853-855   ///
      int    PRCCS9                    856-858   ///
      int    PRCCS10                   859-861   ///
      int    PRCCS11                   862-864   ///
      int    PRCCS12                   865-867   ///
      int    PRCCS13                   868-870   ///
      int    PRCCS14                   871-873   ///
      int    PRCCS15                   874-876   ///
      int    PRCCS16                   877-879   ///
      int    PRCCS17                   880-882   ///
      int    PRCCS18                   883-885   ///
      int    PRCCS19                   886-888   ///
      int    PRCCS20                   889-891   ///
      int    PRCCS21                   892-894   ///
      int    PRCCS22                   895-897   ///
      int    PRCCS23                   898-900   ///
      int    PRCCS24                   901-903   ///
      int    PRCCS25                   904-906   ///
      int    PRCCS26                   907-909   ///
      int    PRCCS27                   910-912   ///
      int    PRCCS28                   913-915   ///
      int    PRCCS29                   916-918   ///
      int    PRCCS30                   919-921   ///
      int    PRCCS31                   922-924   ///
      long   PRDAY1                    925-929   ///
      long   PRDAY2                    930-934   ///
      long   PRDAY3                    935-939   ///
      long   PRDAY4                    940-944   ///
      long   PRDAY5                    945-949   ///
      long   PRDAY6                    950-954   ///
      long   PRDAY7                    955-959   ///
      long   PRDAY8                    960-964   ///
      long   PRDAY9                    965-969   ///
      long   PRDAY10                   970-974   ///
      long   PRDAY11                   975-979   ///
      long   PRDAY12                   980-984   ///
      long   PRDAY13                   985-989   ///
      long   PRDAY14                   990-994   ///
      long   PRDAY15                   995-999   ///
      long   PRDAY16                 1000-1004   ///
      long   PRDAY17                 1005-1009   ///
      long   PRDAY18                 1010-1014   ///
      long   PRDAY19                 1015-1019   ///
      long   PRDAY20                 1020-1024   ///
      long   PRDAY21                 1025-1029   ///
      long   PRDAY22                 1030-1034   ///
      long   PRDAY23                 1035-1039   ///
      long   PRDAY24                 1040-1044   ///
      long   PRDAY25                 1045-1049   ///
      long   PRDAY26                 1050-1054   ///
      long   PRDAY27                 1055-1059   ///
      long   PRDAY28                 1060-1064   ///
      long   PRDAY29                 1065-1069   ///
      long   PRDAY30                 1070-1074   ///
      long   PRDAY31                 1075-1079   ///
      int    PROCTYPE                1080-1082   ///
      int    PRVER                   1083-1085   ///
      str    PSTATE                  1086-1087   ///
      long   PSTCO2                  1088-1092   ///
      str    PointOfOriginUB04       1093        ///
      str    PointOfOrigin_X         1094-1095   ///
      byte   RACE                    1096-1097   ///
      str    RACE_X                  1098        ///
      byte   SERVICELINE             1099-1100   ///
      double TOTCHG                  1101-1110   ///
      double TOTCHG_X                1111-1125   ///
      byte   TRAN_IN                 1126-1127   ///
      byte   TRAN_OUT                1128-1129   ///
      long   VisitLink               1130-1138   ///
      int    YEAR                    1139-1142   ///
      str    ZIP                     1143-1147   ///
      str    ZIP3                    1148-1150   ///
      int    ZIPINC_QRTL             1151-1153   ///
      int    EDYEAR                  1154-1157   ///
      int    PRYEAR1                 1158-1161   ///
      int    PRYEAR2                 1162-1165   ///
      int    PRYEAR3                 1166-1169   ///
      int    PRYEAR4                 1170-1173   ///
      int    PRYEAR5                 1174-1177   ///
      int    PRYEAR6                 1178-1181   ///
      int    PRYEAR7                 1182-1185   ///
      int    PRYEAR8                 1186-1189   ///
      int    PRYEAR9                 1190-1193   ///
      int    PRYEAR10                1194-1197   ///
      int    PRYEAR11                1198-1201   ///
      int    PRYEAR12                1202-1205   ///
      int    PRYEAR13                1206-1209   ///
      int    PRYEAR14                1210-1213   ///
      int    PRYEAR15                1214-1217   ///
      int    PRYEAR16                1218-1221   ///
      int    PRYEAR17                1222-1225   ///
      int    PRYEAR18                1226-1229   ///
      int    PRYEAR19                1230-1233   ///
      int    PRYEAR20                1234-1237   ///
      int    PRYEAR21                1238-1241   ///
      int    PRYEAR22                1242-1245   ///
      int    PRYEAR23                1246-1249   ///
      int    PRYEAR24                1250-1253   ///
      int    PRYEAR25                1254-1257   ///
      int    PRYEAR26                1258-1261   ///
      int    PRYEAR27                1262-1265   ///
      int    PRYEAR28                1266-1269   ///
      int    PRYEAR29                1270-1273   ///
      int    PRYEAR30                1274-1277   ///
      int    PRYEAR31                1278-1281   ///
      using  "FL_SID_2014_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AHOUR                    "Admission Hour"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var DHOUR                    "Discharge Hour"
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
label var DX19                     "Diagnosis 19"
label var DX20                     "Diagnosis 20"
label var DX21                     "Diagnosis 21"
label var DX22                     "Diagnosis 22"
label var DX23                     "Diagnosis 23"
label var DX24                     "Diagnosis 24"
label var DX25                     "Diagnosis 25"
label var DX26                     "Diagnosis 26"
label var DX27                     "Diagnosis 27"
label var DX28                     "Diagnosis 28"
label var DX29                     "Diagnosis 29"
label var DX30                     "Diagnosis 30"
label var DX31                     "Diagnosis 31"
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
label var DXCCS26                  "CCS: diagnosis 26"
label var DXCCS27                  "CCS: diagnosis 27"
label var DXCCS28                  "CCS: diagnosis 28"
label var DXCCS29                  "CCS: diagnosis 29"
label var DXCCS30                  "CCS: diagnosis 30"
label var DXCCS31                  "CCS: diagnosis 31"
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
label var DXPOA31                  "Diagnosis 31, present on admission indicator"
label var DXVER                    "Diagnosis Version"
label var DX_Admitting             "Admitting Diagnosis Code"
label var DaysToEvent              "Days from 'start date' to admission"
label var ECODE1                   "E code 1"
label var ECODE2                   "E code 2"
label var ECODE3                   "E code 3"
label var EDHOUR                   "Emergency department time of arrival prior to inpatient admission"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var Homeless                 "Indicator that patient is homeless"
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
label var MDNUM3_R                 "Physician 3 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var NCHRONIC                 "Number of chronic conditions"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
label var P7EDSRC_X                "Condition Code P7, Direct Inpatient Admission from Emergency Room"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
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
label var PR26                     "Procedure 26"
label var PR27                     "Procedure 27"
label var PR28                     "Procedure 28"
label var PR29                     "Procedure 29"
label var PR30                     "Procedure 30"
label var PR31                     "Procedure 31"
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
label var PRCCS26                  "CCS: procedure 26"
label var PRCCS27                  "CCS: procedure 27"
label var PRCCS28                  "CCS: procedure 28"
label var PRCCS29                  "CCS: procedure 29"
label var PRCCS30                  "CCS: procedure 30"
label var PRCCS31                  "CCS: procedure 31"
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
label var PRDAY26                  "Number of days from admission to PR26"
label var PRDAY27                  "Number of days from admission to PR27"
label var PRDAY28                  "Number of days from admission to PR28"
label var PRDAY29                  "Number of days from admission to PR29"
label var PRDAY30                  "Number of days from admission to PR30"
label var PRDAY31                  "Number of days from admission to PR31"
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
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
label var ZIP                      "Patient ZIP Code"
label var ZIP3                     "Patient ZIP Code, first 3 digits"
label var ZIPINC_QRTL              "Median household income national quartile for patient ZIP Code"
label var EDYEAR                   "Emergency Department arrival year"
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
label var PRYEAR26                 "Year of procedure 26"
label var PRYEAR27                 "Year of procedure 27"
label var PRYEAR28                 "Year of procedure 28"
label var PRYEAR29                 "Year of procedure 29"
label var PRYEAR30                 "Year of procedure 30"
label var PRYEAR31                 "Year of procedure 31"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode DHOUR                     (-999 -888 -666=.)
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
recode DXCCS19                   (-999 -888 -666=.)
recode DXCCS20                   (-999 -888 -666=.)
recode DXCCS21                   (-999 -888 -666=.)
recode DXCCS22                   (-999 -888 -666=.)
recode DXCCS23                   (-999 -888 -666=.)
recode DXCCS24                   (-999 -888 -666=.)
recode DXCCS25                   (-999 -888 -666=.)
recode DXCCS26                   (-999 -888 -666=.)
recode DXCCS27                   (-999 -888 -666=.)
recode DXCCS28                   (-999 -888 -666=.)
recode DXCCS29                   (-999 -888 -666=.)
recode DXCCS30                   (-999 -888 -666=.)
recode DXCCS31                   (-999 -888 -666=.)
recode DXVER                     (-99 -88 -66=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode EDHOUR                    (-999 -888 -666=.)
recode E_CCS1                    (-999 -888 -666=.)
recode E_CCS2                    (-999 -888 -666=.)
recode E_CCS3                    (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode Homeless                  (-9 -8 -6 -5=.)
recode HospitalUnit              (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDC                       (-9 -8 -6 -5=.)
recode MDC24                     (-9 -8 -6 -5=.)
recode MDC_NoPOA                 (-9 -8 -6 -5=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
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
recode PRCCS26                   (-99 -88 -66=.)
recode PRCCS27                   (-99 -88 -66=.)
recode PRCCS28                   (-99 -88 -66=.)
recode PRCCS29                   (-99 -88 -66=.)
recode PRCCS30                   (-99 -88 -66=.)
recode PRCCS31                   (-99 -88 -66=.)
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
recode PRDAY26                   (-9999 -8888 -6666=.)
recode PRDAY27                   (-9999 -8888 -6666=.)
recode PRDAY28                   (-9999 -8888 -6666=.)
recode PRDAY29                   (-9999 -8888 -6666=.)
recode PRDAY30                   (-9999 -8888 -6666=.)
recode PRDAY31                   (-9999 -8888 -6666=.)
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
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
recode EDYEAR                    (-999 -888 -666=.)
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
recode PRYEAR26                  (-999 -888 -666=.)
recode PRYEAR27                  (-999 -888 -666=.)
recode PRYEAR28                  (-999 -888 -666=.)
recode PRYEAR29                  (-999 -888 -666=.)
recode PRYEAR30                  (-999 -888 -666=.)
recode PRYEAR31                  (-999 -888 -666=.)

save "FL_SID_2014_CORE.dta", replace
