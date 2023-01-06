/*****************************************************************************
* Creation Date: 01/07/2016   
* Stataload_CO_SID_2014_CORE.Do
* This program will load the 2014 CO ASCII CORE File into Stata.
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
      int    AGEMONTH                    4-  6   ///
      byte   AMONTH                      7-  8   ///
      byte   ATYPE                       9- 10   ///
      byte   AWEEKEND                   11- 12   ///
      int    BWT                        13- 16   ///
      byte   DIED                       17- 18   ///
      byte   DISPUB04                   19- 20   ///
      byte   DISPUNIFORM                21- 22   ///
      str    DISP_X                     23- 24   ///
      byte   DMONTH                     25- 26   ///
      byte   DQTR                       27- 28   ///
      int    DRG                        29- 31   ///
      int    DRG24                      32- 34   ///
      byte   DRGVER                     35- 36   ///
      int    DRG_NoPOA                  37- 39   ///
      str    DSHOSPID                   40- 56   ///
      str    DX1                        57- 63   ///
      str    DX2                        64- 70   ///
      str    DX3                        71- 77   ///
      str    DX4                        78- 84   ///
      str    DX5                        85- 91   ///
      str    DX6                        92- 98   ///
      str    DX7                        99-105   ///
      str    DX8                       106-112   ///
      str    DX9                       113-119   ///
      str    DX10                      120-126   ///
      str    DX11                      127-133   ///
      str    DX12                      134-140   ///
      str    DX13                      141-147   ///
      str    DX14                      148-154   ///
      str    DX15                      155-161   ///
      str    DX16                      162-168   ///
      str    DX17                      169-175   ///
      str    DX18                      176-182   ///
      str    DX19                      183-189   ///
      str    DX20                      190-196   ///
      str    DX21                      197-203   ///
      str    DX22                      204-210   ///
      str    DX23                      211-217   ///
      str    DX24                      218-224   ///
      str    DX25                      225-231   ///
      str    DX26                      232-238   ///
      str    DX27                      239-245   ///
      str    DX28                      246-252   ///
      str    DX29                      253-259   ///
      str    DX30                      260-266   ///
      int    DXCCS1                    267-270   ///
      int    DXCCS2                    271-274   ///
      int    DXCCS3                    275-278   ///
      int    DXCCS4                    279-282   ///
      int    DXCCS5                    283-286   ///
      int    DXCCS6                    287-290   ///
      int    DXCCS7                    291-294   ///
      int    DXCCS8                    295-298   ///
      int    DXCCS9                    299-302   ///
      int    DXCCS10                   303-306   ///
      int    DXCCS11                   307-310   ///
      int    DXCCS12                   311-314   ///
      int    DXCCS13                   315-318   ///
      int    DXCCS14                   319-322   ///
      int    DXCCS15                   323-326   ///
      int    DXCCS16                   327-330   ///
      int    DXCCS17                   331-334   ///
      int    DXCCS18                   335-338   ///
      int    DXCCS19                   339-342   ///
      int    DXCCS20                   343-346   ///
      int    DXCCS21                   347-350   ///
      int    DXCCS22                   351-354   ///
      int    DXCCS23                   355-358   ///
      int    DXCCS24                   359-362   ///
      int    DXCCS25                   363-366   ///
      int    DXCCS26                   367-370   ///
      int    DXCCS27                   371-374   ///
      int    DXCCS28                   375-378   ///
      int    DXCCS29                   379-382   ///
      int    DXCCS30                   383-386   ///
      int    DXVER                     387-389   ///
      str    ECODE1                    390-396   ///
      str    ECODE2                    397-403   ///
      str    ECODE3                    404-410   ///
      str    ECODE4                    411-417   ///
      str    ECODE5                    418-424   ///
      str    ECODE6                    425-431   ///
      str    ECODE7                    432-438   ///
      str    ECODE8                    439-445   ///
      str    ECODE9                    446-452   ///
      str    ECODE10                   453-459   ///
      str    ECODE11                   460-466   ///
      int    E_CCS1                    467-470   ///
      int    E_CCS2                    471-474   ///
      int    E_CCS3                    475-478   ///
      int    E_CCS4                    479-482   ///
      int    E_CCS5                    483-486   ///
      int    E_CCS6                    487-490   ///
      int    E_CCS7                    491-494   ///
      int    E_CCS8                    495-498   ///
      int    E_CCS9                    499-502   ///
      int    E_CCS10                   503-506   ///
      int    E_CCS11                   507-510   ///
      byte   FEMALE                    511-512   ///
      byte   HCUP_ED                   513-514   ///
      byte   HCUP_OS                   515-516   ///
      int    HOSPBRTH                  517-519   ///
      str    HOSPST                    520-521   ///
      byte   Homeless                  522-523   ///
      double KEY                       524-538   ///
      long   LOS                       539-543   ///
      long   LOS_X                     544-549   ///
      byte   MDC                       550-551   ///
      byte   MDC24                     552-553   ///
      byte   MDC_NoPOA                 554-555   ///
      long   MDNUM1_R                  556-564   ///
      long   MDNUM2_R                  565-573   ///
      byte   MEDINCSTQ                 574-575   ///
      long   MRN_R                     576-584   ///
      int    NCHRONIC                  585-587   ///
      int    NDX                       588-590   ///
      byte   NECODE                    591-592   ///
      byte   NEOMAT                    593-594   ///
      int    NPR                       595-597   ///
      byte   ORPROC                    598-599   ///
      byte   PAY1                      600-601   ///
      str    PAY1_X                    602-603   ///
      int    PL_CBSA                   604-606   ///
      byte   PL_NCHS                   607-608   ///
      byte   PL_RUCC                   609-610   ///
      byte   PL_UIC                    611-612   ///
      byte   PL_UR_CAT4                613-614   ///
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
      int    PRCCS1                    825-827   ///
      int    PRCCS2                    828-830   ///
      int    PRCCS3                    831-833   ///
      int    PRCCS4                    834-836   ///
      int    PRCCS5                    837-839   ///
      int    PRCCS6                    840-842   ///
      int    PRCCS7                    843-845   ///
      int    PRCCS8                    846-848   ///
      int    PRCCS9                    849-851   ///
      int    PRCCS10                   852-854   ///
      int    PRCCS11                   855-857   ///
      int    PRCCS12                   858-860   ///
      int    PRCCS13                   861-863   ///
      int    PRCCS14                   864-866   ///
      int    PRCCS15                   867-869   ///
      int    PRCCS16                   870-872   ///
      int    PRCCS17                   873-875   ///
      int    PRCCS18                   876-878   ///
      int    PRCCS19                   879-881   ///
      int    PRCCS20                   882-884   ///
      int    PRCCS21                   885-887   ///
      int    PRCCS22                   888-890   ///
      int    PRCCS23                   891-893   ///
      int    PRCCS24                   894-896   ///
      int    PRCCS25                   897-899   ///
      int    PRCCS26                   900-902   ///
      int    PRCCS27                   903-905   ///
      int    PRCCS28                   906-908   ///
      int    PRCCS29                   909-911   ///
      int    PRCCS30                   912-914   ///
      long   PRDAY1                    915-919   ///
      long   PRDAY2                    920-924   ///
      long   PRDAY3                    925-929   ///
      long   PRDAY4                    930-934   ///
      long   PRDAY5                    935-939   ///
      long   PRDAY6                    940-944   ///
      long   PRDAY7                    945-949   ///
      long   PRDAY8                    950-954   ///
      long   PRDAY9                    955-959   ///
      long   PRDAY10                   960-964   ///
      long   PRDAY11                   965-969   ///
      long   PRDAY12                   970-974   ///
      long   PRDAY13                   975-979   ///
      long   PRDAY14                   980-984   ///
      long   PRDAY15                   985-989   ///
      long   PRDAY16                   990-994   ///
      long   PRDAY17                   995-999   ///
      long   PRDAY18                 1000-1004   ///
      long   PRDAY19                 1005-1009   ///
      long   PRDAY20                 1010-1014   ///
      long   PRDAY21                 1015-1019   ///
      long   PRDAY22                 1020-1024   ///
      long   PRDAY23                 1025-1029   ///
      long   PRDAY24                 1030-1034   ///
      long   PRDAY25                 1035-1039   ///
      long   PRDAY26                 1040-1044   ///
      long   PRDAY27                 1045-1049   ///
      long   PRDAY28                 1050-1054   ///
      long   PRDAY29                 1055-1059   ///
      long   PRDAY30                 1060-1064   ///
      int    PROCTYPE                1065-1067   ///
      int    PRVER                   1068-1070   ///
      str    PSTATE                  1071-1072   ///
      long   PSTCO                   1073-1077   ///
      long   PSTCO2                  1078-1082   ///
      str    PointOfOriginUB04       1083        ///
      str    PointOfOrigin_X         1084        ///
      byte   RACE                    1085-1086   ///
      str    RACE_X                  1087        ///
      byte   SERVICELINE             1088-1089   ///
      double TOTCHG                  1090-1099   ///
      double TOTCHG_X                1100-1114   ///
      byte   TRAN_IN                 1115-1116   ///
      byte   TRAN_OUT                1117-1118   ///
      int    YEAR                    1119-1122   ///
      str    ZIP                     1123-1127   ///
      str    ZIP3                    1128-1130   ///
      int    ZIPINC_QRTL             1131-1133   ///
      int    AYEAR                   1134-1137   ///
      byte   BMONTH                  1138-1139   ///
      int    BYEAR                   1140-1143   ///
      byte   PRMONTH1                1144-1145   ///
      byte   PRMONTH2                1146-1147   ///
      byte   PRMONTH3                1148-1149   ///
      byte   PRMONTH4                1150-1151   ///
      byte   PRMONTH5                1152-1153   ///
      byte   PRMONTH6                1154-1155   ///
      byte   PRMONTH7                1156-1157   ///
      byte   PRMONTH8                1158-1159   ///
      byte   PRMONTH9                1160-1161   ///
      byte   PRMONTH10               1162-1163   ///
      byte   PRMONTH11               1164-1165   ///
      byte   PRMONTH12               1166-1167   ///
      byte   PRMONTH13               1168-1169   ///
      byte   PRMONTH14               1170-1171   ///
      byte   PRMONTH15               1172-1173   ///
      byte   PRMONTH16               1174-1175   ///
      byte   PRMONTH17               1176-1177   ///
      byte   PRMONTH18               1178-1179   ///
      byte   PRMONTH19               1180-1181   ///
      byte   PRMONTH20               1182-1183   ///
      byte   PRMONTH21               1184-1185   ///
      byte   PRMONTH22               1186-1187   ///
      byte   PRMONTH23               1188-1189   ///
      byte   PRMONTH24               1190-1191   ///
      byte   PRMONTH25               1192-1193   ///
      byte   PRMONTH26               1194-1195   ///
      byte   PRMONTH27               1196-1197   ///
      byte   PRMONTH28               1198-1199   ///
      byte   PRMONTH29               1200-1201   ///
      byte   PRMONTH30               1202-1203   ///
      int    PRYEAR1                 1204-1207   ///
      int    PRYEAR2                 1208-1211   ///
      int    PRYEAR3                 1212-1215   ///
      int    PRYEAR4                 1216-1219   ///
      int    PRYEAR5                 1220-1223   ///
      int    PRYEAR6                 1224-1227   ///
      int    PRYEAR7                 1228-1231   ///
      int    PRYEAR8                 1232-1235   ///
      int    PRYEAR9                 1236-1239   ///
      int    PRYEAR10                1240-1243   ///
      int    PRYEAR11                1244-1247   ///
      int    PRYEAR12                1248-1251   ///
      int    PRYEAR13                1252-1255   ///
      int    PRYEAR14                1256-1259   ///
      int    PRYEAR15                1260-1263   ///
      int    PRYEAR16                1264-1267   ///
      int    PRYEAR17                1268-1271   ///
      int    PRYEAR18                1272-1275   ///
      int    PRYEAR19                1276-1279   ///
      int    PRYEAR20                1280-1283   ///
      int    PRYEAR21                1284-1287   ///
      int    PRYEAR22                1288-1291   ///
      int    PRYEAR23                1292-1295   ///
      int    PRYEAR24                1296-1299   ///
      int    PRYEAR25                1300-1303   ///
      int    PRYEAR26                1304-1307   ///
      int    PRYEAR27                1308-1311   ///
      int    PRYEAR28                1312-1315   ///
      int    PRYEAR29                1316-1319   ///
      int    PRYEAR30                1320-1323   ///
      using  "CO_SID_2014_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BWT                      "Birth weight in grams"
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
label var DXVER                    "Diagnosis Version"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var Homeless                 "Indicator that patient is homeless"
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
label var PRMONTH26                "Month of procedure 26"
label var PRMONTH27                "Month of procedure 27"
label var PRMONTH28                "Month of procedure 28"
label var PRMONTH29                "Month of procedure 29"
label var PRMONTH30                "Month of procedure 30"
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

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
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
recode DXCCS26                   (-999 -888 -666=.)
recode DXCCS27                   (-999 -888 -666=.)
recode DXCCS28                   (-999 -888 -666=.)
recode DXCCS29                   (-999 -888 -666=.)
recode DXCCS30                   (-999 -888 -666=.)
recode DXVER                     (-99 -88 -66=.)
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
recode Homeless                  (-9 -8 -6 -5=.)
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
recode PRMONTH26                 (-9 -8 -6 -5=.)
recode PRMONTH27                 (-9 -8 -6 -5=.)
recode PRMONTH28                 (-9 -8 -6 -5=.)
recode PRMONTH29                 (-9 -8 -6 -5=.)
recode PRMONTH30                 (-9 -8 -6 -5=.)
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

save "CO_SID_2014_CORE.dta", replace
