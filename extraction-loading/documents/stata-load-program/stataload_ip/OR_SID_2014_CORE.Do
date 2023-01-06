/*****************************************************************************
* Creation Date: 01/12/2016   
* Modify Date:   10/19/2017 - matches data created on date above.
* Stataload_OR_SID_2014_CORE.Do
* This program will load the 2014 OR ASCII CORE File into Stata.
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
      byte   DNR                        38- 39   ///
      byte   DQTR                       40- 41   ///
      int    DRG                        42- 44   ///
      int    DRG24                      45- 47   ///
      byte   DRGVER                     48- 49   ///
      int    DRG_NoPOA                  50- 52   ///
      str    DSHOSPID                   53- 69   ///
      str    DX1                        70- 76   ///
      str    DX2                        77- 83   ///
      str    DX3                        84- 90   ///
      str    DX4                        91- 97   ///
      str    DX5                        98-104   ///
      str    DX6                       105-111   ///
      str    DX7                       112-118   ///
      str    DX8                       119-125   ///
      str    DX9                       126-132   ///
      str    DX10                      133-139   ///
      str    DX11                      140-146   ///
      str    DX12                      147-153   ///
      str    DX13                      154-160   ///
      str    DX14                      161-167   ///
      str    DX15                      168-174   ///
      str    DX16                      175-181   ///
      str    DX17                      182-188   ///
      str    DX18                      189-195   ///
      str    DX19                      196-202   ///
      str    DX20                      203-209   ///
      str    DX21                      210-216   ///
      str    DX22                      217-223   ///
      str    DX23                      224-230   ///
      str    DX24                      231-237   ///
      str    DX25                      238-244   ///
      int    DXCCS1                    245-248   ///
      int    DXCCS2                    249-252   ///
      int    DXCCS3                    253-256   ///
      int    DXCCS4                    257-260   ///
      int    DXCCS5                    261-264   ///
      int    DXCCS6                    265-268   ///
      int    DXCCS7                    269-272   ///
      int    DXCCS8                    273-276   ///
      int    DXCCS9                    277-280   ///
      int    DXCCS10                   281-284   ///
      int    DXCCS11                   285-288   ///
      int    DXCCS12                   289-292   ///
      int    DXCCS13                   293-296   ///
      int    DXCCS14                   297-300   ///
      int    DXCCS15                   301-304   ///
      int    DXCCS16                   305-308   ///
      int    DXCCS17                   309-312   ///
      int    DXCCS18                   313-316   ///
      int    DXCCS19                   317-320   ///
      int    DXCCS20                   321-324   ///
      int    DXCCS21                   325-328   ///
      int    DXCCS22                   329-332   ///
      int    DXCCS23                   333-336   ///
      int    DXCCS24                   337-340   ///
      int    DXCCS25                   341-344   ///
      str    DXPOA1                    345       ///
      str    DXPOA2                    346       ///
      str    DXPOA3                    347       ///
      str    DXPOA4                    348       ///
      str    DXPOA5                    349       ///
      str    DXPOA6                    350       ///
      str    DXPOA7                    351       ///
      str    DXPOA8                    352       ///
      str    DXPOA9                    353       ///
      str    DXPOA10                   354       ///
      str    DXPOA11                   355       ///
      str    DXPOA12                   356       ///
      str    DXPOA13                   357       ///
      str    DXPOA14                   358       ///
      str    DXPOA15                   359       ///
      str    DXPOA16                   360       ///
      str    DXPOA17                   361       ///
      str    DXPOA18                   362       ///
      str    DXPOA19                   363       ///
      str    DXPOA20                   364       ///
      str    DXPOA21                   365       ///
      str    DXPOA22                   366       ///
      str    DXPOA23                   367       ///
      str    DXPOA24                   368       ///
      str    DXPOA25                   369       ///
      int    DXVER                     370-372   ///
      str    DX_Admitting              373-379   ///
      str    ECODE1                    380-386   ///
      str    ECODE2                    387-393   ///
      str    ECODE3                    394-400   ///
      str    ECODE4                    401-407   ///
      str    ECODE5                    408-414   ///
      str    ECODE6                    415-421   ///
      str    ECODE7                    422-428   ///
      str    ECODE8                    429-435   ///
      int    E_CCS1                    436-439   ///
      int    E_CCS2                    440-443   ///
      int    E_CCS3                    444-447   ///
      int    E_CCS4                    448-451   ///
      int    E_CCS5                    452-455   ///
      int    E_CCS6                    456-459   ///
      int    E_CCS7                    460-463   ///
      int    E_CCS8                    464-467   ///
      str    E_POA1                    468       ///
      str    E_POA2                    469       ///
      str    E_POA3                    470       ///
      str    E_POA4                    471       ///
      str    E_POA5                    472       ///
      str    E_POA6                    473       ///
      str    E_POA7                    474       ///
      str    E_POA8                    475       ///
      byte   FEMALE                    476-477   ///
      byte   HCUP_ED                   478-479   ///
      byte   HCUP_OS                   480-481   ///
      str    HISPANIC_X                482-483   ///
      int    HOSPBRTH                  484-486   ///
      str    HOSPST                    487-488   ///
      double KEY                       489-503   ///
      long   LOS                       504-508   ///
      long   LOS_X                     509-514   ///
      byte   MDC                       515-516   ///
      byte   MDC24                     517-518   ///
      byte   MDC_NoPOA                 519-520   ///
      byte   MEDINCSTQ                 521-522   ///
      int    NCHRONIC                  523-525   ///
      int    NDX                       526-528   ///
      byte   NECODE                    529-530   ///
      byte   NEOMAT                    531-532   ///
      int    NPR                       533-535   ///
      byte   ORPROC                    536-537   ///
      long   OS_TIME                   538-545   ///
      byte   PAY1                      546-547   ///
      str    PAY1_X                    548-556   ///
      byte   PAY2                      557-558   ///
      str    PAY2_X                    559-567   ///
      byte   PAY3                      568-569   ///
      str    PAY3_X                    570-578   ///
      int    PL_CBSA                   579-581   ///
      byte   PL_NCHS                   582-583   ///
      byte   PL_RUCC                   584-585   ///
      byte   PL_UIC                    586-587   ///
      byte   PL_UR_CAT4                588-589   ///
      byte   POA_Disch_Edit1           590-591   ///
      byte   POA_Disch_Edit2           592-593   ///
      byte   POA_Hosp_Edit1            594-595   ///
      byte   POA_Hosp_Edit2            596-597   ///
      byte   POA_Hosp_Edit3            598-599   ///
      double POA_Hosp_Edit3_Value      600-607   ///
      str    PR1                       608-614   ///
      str    PR2                       615-621   ///
      str    PR3                       622-628   ///
      str    PR4                       629-635   ///
      str    PR5                       636-642   ///
      str    PR6                       643-649   ///
      str    PR7                       650-656   ///
      str    PR8                       657-663   ///
      str    PR9                       664-670   ///
      str    PR10                      671-677   ///
      str    PR11                      678-684   ///
      str    PR12                      685-691   ///
      str    PR13                      692-698   ///
      str    PR14                      699-705   ///
      str    PR15                      706-712   ///
      str    PR16                      713-719   ///
      str    PR17                      720-726   ///
      str    PR18                      727-733   ///
      str    PR19                      734-740   ///
      str    PR20                      741-747   ///
      str    PR21                      748-754   ///
      str    PR22                      755-761   ///
      str    PR23                      762-768   ///
      str    PR24                      769-775   ///
      str    PR25                      776-782   ///
      int    PRCCS1                    783-785   ///
      int    PRCCS2                    786-788   ///
      int    PRCCS3                    789-791   ///
      int    PRCCS4                    792-794   ///
      int    PRCCS5                    795-797   ///
      int    PRCCS6                    798-800   ///
      int    PRCCS7                    801-803   ///
      int    PRCCS8                    804-806   ///
      int    PRCCS9                    807-809   ///
      int    PRCCS10                   810-812   ///
      int    PRCCS11                   813-815   ///
      int    PRCCS12                   816-818   ///
      int    PRCCS13                   819-821   ///
      int    PRCCS14                   822-824   ///
      int    PRCCS15                   825-827   ///
      int    PRCCS16                   828-830   ///
      int    PRCCS17                   831-833   ///
      int    PRCCS18                   834-836   ///
      int    PRCCS19                   837-839   ///
      int    PRCCS20                   840-842   ///
      int    PRCCS21                   843-845   ///
      int    PRCCS22                   846-848   ///
      int    PRCCS23                   849-851   ///
      int    PRCCS24                   852-854   ///
      int    PRCCS25                   855-857   ///
      long   PRDAY1                    858-862   ///
      long   PRDAY2                    863-867   ///
      long   PRDAY3                    868-872   ///
      long   PRDAY4                    873-877   ///
      long   PRDAY5                    878-882   ///
      long   PRDAY6                    883-887   ///
      long   PRDAY7                    888-892   ///
      long   PRDAY8                    893-897   ///
      long   PRDAY9                    898-902   ///
      long   PRDAY10                   903-907   ///
      long   PRDAY11                   908-912   ///
      long   PRDAY12                   913-917   ///
      long   PRDAY13                   918-922   ///
      long   PRDAY14                   923-927   ///
      long   PRDAY15                   928-932   ///
      long   PRDAY16                   933-937   ///
      long   PRDAY17                   938-942   ///
      long   PRDAY18                   943-947   ///
      long   PRDAY19                   948-952   ///
      long   PRDAY20                   953-957   ///
      long   PRDAY21                   958-962   ///
      long   PRDAY22                   963-967   ///
      long   PRDAY23                   968-972   ///
      long   PRDAY24                   973-977   ///
      long   PRDAY25                   978-982   ///
      int    PROCTYPE                  983-985   ///
      int    PRVER                     986-988   ///
      str    PSTATE                    989-990   ///
      long   PSTCO2                    991-995   ///
      str    PointOfOriginUB04         996       ///
      str    PointOfOrigin_X           997-998   ///
      byte   RACE                     999-1000   ///
      str    RACE_X                  1001-1002   ///
      byte   SERVICELINE             1003-1004   ///
      double TOTCHG                  1005-1014   ///
      double TOTCHG_X                1015-1029   ///
      byte   TRAN_IN                 1030-1031   ///
      byte   TRAN_OUT                1032-1033   ///
      int    YEAR                    1034-1037   ///
      str    ZIP                     1038-1042   ///
      str    ZIP3                    1043-1045   ///
      int    ZIPINC_QRTL             1046-1048   ///
      int    AYEAR                   1049-1052   ///
      byte   BMONTH                  1053-1054   ///
      int    BYEAR                   1055-1058   ///
      byte   PRMONTH1                1059-1060   ///
      byte   PRMONTH2                1061-1062   ///
      byte   PRMONTH3                1063-1064   ///
      byte   PRMONTH4                1065-1066   ///
      byte   PRMONTH5                1067-1068   ///
      byte   PRMONTH6                1069-1070   ///
      byte   PRMONTH7                1071-1072   ///
      byte   PRMONTH8                1073-1074   ///
      byte   PRMONTH9                1075-1076   ///
      byte   PRMONTH10               1077-1078   ///
      byte   PRMONTH11               1079-1080   ///
      byte   PRMONTH12               1081-1082   ///
      byte   PRMONTH13               1083-1084   ///
      byte   PRMONTH14               1085-1086   ///
      byte   PRMONTH15               1087-1088   ///
      byte   PRMONTH16               1089-1090   ///
      byte   PRMONTH17               1091-1092   ///
      byte   PRMONTH18               1093-1094   ///
      byte   PRMONTH19               1095-1096   ///
      byte   PRMONTH20               1097-1098   ///
      byte   PRMONTH21               1099-1100   ///
      byte   PRMONTH22               1101-1102   ///
      byte   PRMONTH23               1103-1104   ///
      byte   PRMONTH24               1105-1106   ///
      byte   PRMONTH25               1107-1108   ///
      int    PRYEAR1                 1109-1112   ///
      int    PRYEAR2                 1113-1116   ///
      int    PRYEAR3                 1117-1120   ///
      int    PRYEAR4                 1121-1124   ///
      int    PRYEAR5                 1125-1128   ///
      int    PRYEAR6                 1129-1132   ///
      int    PRYEAR7                 1133-1136   ///
      int    PRYEAR8                 1137-1140   ///
      int    PRYEAR9                 1141-1144   ///
      int    PRYEAR10                1145-1148   ///
      int    PRYEAR11                1149-1152   ///
      int    PRYEAR12                1153-1156   ///
      int    PRYEAR13                1157-1160   ///
      int    PRYEAR14                1161-1164   ///
      int    PRYEAR15                1165-1168   ///
      int    PRYEAR16                1169-1172   ///
      int    PRYEAR17                1173-1176   ///
      int    PRYEAR18                1177-1180   ///
      int    PRYEAR19                1181-1184   ///
      int    PRYEAR20                1185-1188   ///
      int    PRYEAR21                1189-1192   ///
      int    PRYEAR22                1193-1196   ///
      int    PRYEAR23                1197-1200   ///
      int    PRYEAR24                1201-1204   ///
      int    PRYEAR25                1205-1208   ///
      using  "OR_SID_2014_CORE.ASC"

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
label var DNR                      "Do not resuscitate indicator"
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
label var ECODE6                   "E code 6"
label var ECODE7                   "E code 7"
label var ECODE8                   "E code 8"
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_CCS7                   "CCS: E Code 7"
label var E_CCS8                   "CCS: E Code 8"
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var E_POA7                   "E Code 7, present on admission indicator"
label var E_POA8                   "E Code 8, present on admission indicator"
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
recode DNR                       (-9 -8 -6 -5=.)
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
recode E_CCS6                    (-999 -888 -666=.)
recode E_CCS7                    (-999 -888 -666=.)
recode E_CCS8                    (-999 -888 -666=.)
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

save "OR_SID_2014_CORE.dta", replace
