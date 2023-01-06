/*****************************************************************************
* Creation Date: 01/11/2016   
* Modify Date:   10/19/2017 - matches data created on date above.
* Stataload_VT_SID_2014_CORE.Do
* This program will load the 2014 VT ASCII CORE File into Stata.
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
      int    BWT                        24- 27   ///
      str    CPT1                       28- 32   ///
      str    CPT2                       33- 37   ///
      str    CPT3                       38- 42   ///
      str    CPT4                       43- 47   ///
      str    CPT5                       48- 52   ///
      str    CPT6                       53- 57   ///
      str    CPT7                       58- 62   ///
      str    CPT8                       63- 67   ///
      str    CPT9                       68- 72   ///
      str    CPT10                      73- 77   ///
      str    CPT11                      78- 82   ///
      str    CPT12                      83- 87   ///
      str    CPT13                      88- 92   ///
      str    CPT14                      93- 97   ///
      str    CPT15                      98-102   ///
      str    CPT16                     103-107   ///
      str    CPT17                     108-112   ///
      str    CPT18                     113-117   ///
      str    CPT19                     118-122   ///
      str    CPT20                     123-127   ///
      str    CPT21                     128-132   ///
      str    CPT22                     133-137   ///
      str    CPT23                     138-142   ///
      str    CPT24                     143-147   ///
      str    CPT25                     148-152   ///
      str    CPT26                     153-157   ///
      str    CPT27                     158-162   ///
      str    CPT28                     163-167   ///
      str    CPT29                     168-172   ///
      str    CPT30                     173-177   ///
      str    CPT31                     178-182   ///
      str    CPT32                     183-187   ///
      str    CPT33                     188-192   ///
      str    CPT34                     193-197   ///
      str    CPT35                     198-202   ///
      str    CPT36                     203-207   ///
      str    CPT37                     208-212   ///
      str    CPT38                     213-217   ///
      str    CPT39                     218-222   ///
      str    CPT40                     223-227   ///
      str    CPT41                     228-232   ///
      str    CPT42                     233-237   ///
      str    CPT43                     238-242   ///
      str    CPT44                     243-247   ///
      str    CPT45                     248-252   ///
      str    CPT46                     253-257   ///
      str    CPT47                     258-262   ///
      str    CPT48                     263-267   ///
      str    CPT49                     268-272   ///
      str    CPT50                     273-277   ///
      int    CPTCCS1                   278-280   ///
      int    CPTCCS2                   281-283   ///
      int    CPTCCS3                   284-286   ///
      int    CPTCCS4                   287-289   ///
      int    CPTCCS5                   290-292   ///
      int    CPTCCS6                   293-295   ///
      int    CPTCCS7                   296-298   ///
      int    CPTCCS8                   299-301   ///
      int    CPTCCS9                   302-304   ///
      int    CPTCCS10                  305-307   ///
      int    CPTCCS11                  308-310   ///
      int    CPTCCS12                  311-313   ///
      int    CPTCCS13                  314-316   ///
      int    CPTCCS14                  317-319   ///
      int    CPTCCS15                  320-322   ///
      int    CPTCCS16                  323-325   ///
      int    CPTCCS17                  326-328   ///
      int    CPTCCS18                  329-331   ///
      int    CPTCCS19                  332-334   ///
      int    CPTCCS20                  335-337   ///
      int    CPTCCS21                  338-340   ///
      int    CPTCCS22                  341-343   ///
      int    CPTCCS23                  344-346   ///
      int    CPTCCS24                  347-349   ///
      int    CPTCCS25                  350-352   ///
      int    CPTCCS26                  353-355   ///
      int    CPTCCS27                  356-358   ///
      int    CPTCCS28                  359-361   ///
      int    CPTCCS29                  362-364   ///
      int    CPTCCS30                  365-367   ///
      int    CPTCCS31                  368-370   ///
      int    CPTCCS32                  371-373   ///
      int    CPTCCS33                  374-376   ///
      int    CPTCCS34                  377-379   ///
      int    CPTCCS35                  380-382   ///
      int    CPTCCS36                  383-385   ///
      int    CPTCCS37                  386-388   ///
      int    CPTCCS38                  389-391   ///
      int    CPTCCS39                  392-394   ///
      int    CPTCCS40                  395-397   ///
      int    CPTCCS41                  398-400   ///
      int    CPTCCS42                  401-403   ///
      int    CPTCCS43                  404-406   ///
      int    CPTCCS44                  407-409   ///
      int    CPTCCS45                  410-412   ///
      int    CPTCCS46                  413-415   ///
      int    CPTCCS47                  416-418   ///
      int    CPTCCS48                  419-421   ///
      int    CPTCCS49                  422-424   ///
      int    CPTCCS50                  425-427   ///
      int    CPTDAY1                   428-430   ///
      int    CPTDAY2                   431-433   ///
      int    CPTDAY3                   434-436   ///
      int    CPTDAY4                   437-439   ///
      int    CPTDAY5                   440-442   ///
      int    CPTDAY6                   443-445   ///
      int    CPTDAY7                   446-448   ///
      int    CPTDAY8                   449-451   ///
      int    CPTDAY9                   452-454   ///
      int    CPTDAY10                  455-457   ///
      int    CPTDAY11                  458-460   ///
      int    CPTDAY12                  461-463   ///
      int    CPTDAY13                  464-466   ///
      int    CPTDAY14                  467-469   ///
      int    CPTDAY15                  470-472   ///
      int    CPTDAY16                  473-475   ///
      int    CPTDAY17                  476-478   ///
      int    CPTDAY18                  479-481   ///
      int    CPTDAY19                  482-484   ///
      int    CPTDAY20                  485-487   ///
      int    CPTDAY21                  488-490   ///
      int    CPTDAY22                  491-493   ///
      int    CPTDAY23                  494-496   ///
      int    CPTDAY24                  497-499   ///
      int    CPTDAY25                  500-502   ///
      int    CPTDAY26                  503-505   ///
      int    CPTDAY27                  506-508   ///
      int    CPTDAY28                  509-511   ///
      int    CPTDAY29                  512-514   ///
      int    CPTDAY30                  515-517   ///
      int    CPTDAY31                  518-520   ///
      int    CPTDAY32                  521-523   ///
      int    CPTDAY33                  524-526   ///
      int    CPTDAY34                  527-529   ///
      int    CPTDAY35                  530-532   ///
      int    CPTDAY36                  533-535   ///
      int    CPTDAY37                  536-538   ///
      int    CPTDAY38                  539-541   ///
      int    CPTDAY39                  542-544   ///
      int    CPTDAY40                  545-547   ///
      int    CPTDAY41                  548-550   ///
      int    CPTDAY42                  551-553   ///
      int    CPTDAY43                  554-556   ///
      int    CPTDAY44                  557-559   ///
      int    CPTDAY45                  560-562   ///
      int    CPTDAY46                  563-565   ///
      int    CPTDAY47                  566-568   ///
      int    CPTDAY48                  569-571   ///
      int    CPTDAY49                  572-574   ///
      int    CPTDAY50                  575-577   ///
      str    CPTM1_1                   578-579   ///
      str    CPTM1_2                   580-581   ///
      str    CPTM1_3                   582-583   ///
      str    CPTM1_4                   584-585   ///
      str    CPTM1_5                   586-587   ///
      str    CPTM1_6                   588-589   ///
      str    CPTM1_7                   590-591   ///
      str    CPTM1_8                   592-593   ///
      str    CPTM1_9                   594-595   ///
      str    CPTM1_10                  596-597   ///
      str    CPTM1_11                  598-599   ///
      str    CPTM1_12                  600-601   ///
      str    CPTM1_13                  602-603   ///
      str    CPTM1_14                  604-605   ///
      str    CPTM1_15                  606-607   ///
      str    CPTM1_16                  608-609   ///
      str    CPTM1_17                  610-611   ///
      str    CPTM1_18                  612-613   ///
      str    CPTM1_19                  614-615   ///
      str    CPTM1_20                  616-617   ///
      str    CPTM1_21                  618-619   ///
      str    CPTM1_22                  620-621   ///
      str    CPTM1_23                  622-623   ///
      str    CPTM1_24                  624-625   ///
      str    CPTM1_25                  626-627   ///
      str    CPTM1_26                  628-629   ///
      str    CPTM1_27                  630-631   ///
      str    CPTM1_28                  632-633   ///
      str    CPTM1_29                  634-635   ///
      str    CPTM1_30                  636-637   ///
      str    CPTM1_31                  638-639   ///
      str    CPTM1_32                  640-641   ///
      str    CPTM1_33                  642-643   ///
      str    CPTM1_34                  644-645   ///
      str    CPTM1_35                  646-647   ///
      str    CPTM1_36                  648-649   ///
      str    CPTM1_37                  650-651   ///
      str    CPTM1_38                  652-653   ///
      str    CPTM1_39                  654-655   ///
      str    CPTM1_40                  656-657   ///
      str    CPTM1_41                  658-659   ///
      str    CPTM1_42                  660-661   ///
      str    CPTM1_43                  662-663   ///
      str    CPTM1_44                  664-665   ///
      str    CPTM1_45                  666-667   ///
      str    CPTM1_46                  668-669   ///
      str    CPTM1_47                  670-671   ///
      str    CPTM1_48                  672-673   ///
      str    CPTM1_49                  674-675   ///
      str    CPTM1_50                  676-677   ///
      str    CPTM2_1                   678-679   ///
      str    CPTM2_2                   680-681   ///
      str    CPTM2_3                   682-683   ///
      str    CPTM2_4                   684-685   ///
      str    CPTM2_5                   686-687   ///
      str    CPTM2_6                   688-689   ///
      str    CPTM2_7                   690-691   ///
      str    CPTM2_8                   692-693   ///
      str    CPTM2_9                   694-695   ///
      str    CPTM2_10                  696-697   ///
      str    CPTM2_11                  698-699   ///
      str    CPTM2_12                  700-701   ///
      str    CPTM2_13                  702-703   ///
      str    CPTM2_14                  704-705   ///
      str    CPTM2_15                  706-707   ///
      str    CPTM2_16                  708-709   ///
      str    CPTM2_17                  710-711   ///
      str    CPTM2_18                  712-713   ///
      str    CPTM2_19                  714-715   ///
      str    CPTM2_20                  716-717   ///
      str    CPTM2_21                  718-719   ///
      str    CPTM2_22                  720-721   ///
      str    CPTM2_23                  722-723   ///
      str    CPTM2_24                  724-725   ///
      str    CPTM2_25                  726-727   ///
      str    CPTM2_26                  728-729   ///
      str    CPTM2_27                  730-731   ///
      str    CPTM2_28                  732-733   ///
      str    CPTM2_29                  734-735   ///
      str    CPTM2_30                  736-737   ///
      str    CPTM2_31                  738-739   ///
      str    CPTM2_32                  740-741   ///
      str    CPTM2_33                  742-743   ///
      str    CPTM2_34                  744-745   ///
      str    CPTM2_35                  746-747   ///
      str    CPTM2_36                  748-749   ///
      str    CPTM2_37                  750-751   ///
      str    CPTM2_38                  752-753   ///
      str    CPTM2_39                  754-755   ///
      str    CPTM2_40                  756-757   ///
      str    CPTM2_41                  758-759   ///
      str    CPTM2_42                  760-761   ///
      str    CPTM2_43                  762-763   ///
      str    CPTM2_44                  764-765   ///
      str    CPTM2_45                  766-767   ///
      str    CPTM2_46                  768-769   ///
      str    CPTM2_47                  770-771   ///
      str    CPTM2_48                  772-773   ///
      str    CPTM2_49                  774-775   ///
      str    CPTM2_50                  776-777   ///
      byte   DIED                      778-779   ///
      byte   DISPUB04                  780-781   ///
      byte   DISPUNIFORM               782-783   ///
      str    DISP_X                    784-785   ///
      byte   DMONTH                    786-787   ///
      byte   DQTR                      788-789   ///
      int    DRG                       790-792   ///
      int    DRG24                     793-795   ///
      byte   DRGVER                    796-797   ///
      int    DRG_NoPOA                 798-800   ///
      str    DSHOSPID                  801-817   ///
      str    DX1                       818-824   ///
      str    DX2                       825-831   ///
      str    DX3                       832-838   ///
      str    DX4                       839-845   ///
      str    DX5                       846-852   ///
      str    DX6                       853-859   ///
      str    DX7                       860-866   ///
      str    DX8                       867-873   ///
      str    DX9                       874-880   ///
      str    DX10                      881-887   ///
      str    DX11                      888-894   ///
      str    DX12                      895-901   ///
      str    DX13                      902-908   ///
      str    DX14                      909-915   ///
      str    DX15                      916-922   ///
      str    DX16                      923-929   ///
      str    DX17                      930-936   ///
      str    DX18                      937-943   ///
      str    DX19                      944-950   ///
      str    DX20                      951-957   ///
      int    DXCCS1                    958-961   ///
      int    DXCCS2                    962-965   ///
      int    DXCCS3                    966-969   ///
      int    DXCCS4                    970-973   ///
      int    DXCCS5                    974-977   ///
      int    DXCCS6                    978-981   ///
      int    DXCCS7                    982-985   ///
      int    DXCCS8                    986-989   ///
      int    DXCCS9                    990-993   ///
      int    DXCCS10                   994-997   ///
      int    DXCCS11                  998-1001   ///
      int    DXCCS12                 1002-1005   ///
      int    DXCCS13                 1006-1009   ///
      int    DXCCS14                 1010-1013   ///
      int    DXCCS15                 1014-1017   ///
      int    DXCCS16                 1018-1021   ///
      int    DXCCS17                 1022-1025   ///
      int    DXCCS18                 1026-1029   ///
      int    DXCCS19                 1030-1033   ///
      int    DXCCS20                 1034-1037   ///
      str    DXPOA1                  1038        ///
      str    DXPOA2                  1039        ///
      str    DXPOA3                  1040        ///
      str    DXPOA4                  1041        ///
      str    DXPOA5                  1042        ///
      str    DXPOA6                  1043        ///
      str    DXPOA7                  1044        ///
      str    DXPOA8                  1045        ///
      str    DXPOA9                  1046        ///
      str    DXPOA10                 1047        ///
      str    DXPOA11                 1048        ///
      str    DXPOA12                 1049        ///
      str    DXPOA13                 1050        ///
      str    DXPOA14                 1051        ///
      str    DXPOA15                 1052        ///
      str    DXPOA16                 1053        ///
      str    DXPOA17                 1054        ///
      str    DXPOA18                 1055        ///
      str    DXPOA19                 1056        ///
      str    DXPOA20                 1057        ///
      int    DXVER                   1058-1060   ///
      str    DX_Admitting            1061-1067   ///
      long   DaysToEvent             1068-1073   ///
      str    ECODE1                  1074-1080   ///
      str    ECODE2                  1081-1087   ///
      str    ECODE3                  1088-1094   ///
      str    ECODE4                  1095-1101   ///
      str    ECODE5                  1102-1108   ///
      str    ECODE6                  1109-1115   ///
      str    ECODE7                  1116-1122   ///
      str    ECODE8                  1123-1129   ///
      str    ECODE9                  1130-1136   ///
      int    E_CCS1                  1137-1140   ///
      int    E_CCS2                  1141-1144   ///
      int    E_CCS3                  1145-1148   ///
      int    E_CCS4                  1149-1152   ///
      int    E_CCS5                  1153-1156   ///
      int    E_CCS6                  1157-1160   ///
      int    E_CCS7                  1161-1164   ///
      int    E_CCS8                  1165-1168   ///
      int    E_CCS9                  1169-1172   ///
      str    E_POA1                  1173        ///
      str    E_POA2                  1174        ///
      str    E_POA3                  1175        ///
      str    E_POA4                  1176        ///
      str    E_POA5                  1177        ///
      str    E_POA6                  1178        ///
      str    E_POA7                  1179        ///
      str    E_POA8                  1180        ///
      str    E_POA9                  1181        ///
      byte   FEMALE                  1182-1183   ///
      byte   HCUP_ED                 1184-1185   ///
      byte   HCUP_OS                 1186-1187   ///
      str    HISPANIC_X              1188        ///
      int    HOSPBRTH                1189-1191   ///
      str    HOSPST                  1192-1193   ///
      str    HOSP_NPI                1194-1203   ///
      double KEY                     1204-1218   ///
      long   LOS                     1219-1223   ///
      long   LOS_X                   1224-1229   ///
      byte   MDC                     1230-1231   ///
      byte   MDC24                   1232-1233   ///
      byte   MDC_NoPOA               1234-1235   ///
      byte   MEDINCSTQ               1236-1237   ///
      long   MRN_R                   1238-1246   ///
      int    NCHRONIC                1247-1249   ///
      int    NCPT                    1250-1253   ///
      int    NDX                     1254-1256   ///
      byte   NECODE                  1257-1258   ///
      byte   NEOMAT                  1259-1260   ///
      int    NPR                     1261-1263   ///
      byte   ORPROC                  1264-1265   ///
      byte   PAY1                    1266-1267   ///
      str    PAY1_X                  1268-1269   ///
      byte   PAY2                    1270-1271   ///
      str    PAY2_X                  1272-1273   ///
      byte   PAY3                    1274-1275   ///
      str    PAY3_X                  1276-1277   ///
      str    PAYER1_X                1278-1283   ///
      str    PAYER2_X                1284-1289   ///
      int    PL_CBSA                 1290-1292   ///
      byte   PL_NCHS                 1293-1294   ///
      byte   PL_RUCC                 1295-1296   ///
      byte   PL_UIC                  1297-1298   ///
      byte   PL_UR_CAT4              1299-1300   ///
      byte   POA_Disch_Edit1         1301-1302   ///
      byte   POA_Disch_Edit2         1303-1304   ///
      byte   POA_Hosp_Edit1          1305-1306   ///
      byte   POA_Hosp_Edit2          1307-1308   ///
      byte   POA_Hosp_Edit3          1309-1310   ///
      double POA_Hosp_Edit3_Value    1311-1318   ///
      str    PR1                     1319-1325   ///
      str    PR2                     1326-1332   ///
      str    PR3                     1333-1339   ///
      str    PR4                     1340-1346   ///
      str    PR5                     1347-1353   ///
      str    PR6                     1354-1360   ///
      str    PR7                     1361-1367   ///
      str    PR8                     1368-1374   ///
      str    PR9                     1375-1381   ///
      str    PR10                    1382-1388   ///
      str    PR11                    1389-1395   ///
      str    PR12                    1396-1402   ///
      str    PR13                    1403-1409   ///
      str    PR14                    1410-1416   ///
      str    PR15                    1417-1423   ///
      str    PR16                    1424-1430   ///
      str    PR17                    1431-1437   ///
      str    PR18                    1438-1444   ///
      str    PR19                    1445-1451   ///
      str    PR20                    1452-1458   ///
      int    PRCCS1                  1459-1461   ///
      int    PRCCS2                  1462-1464   ///
      int    PRCCS3                  1465-1467   ///
      int    PRCCS4                  1468-1470   ///
      int    PRCCS5                  1471-1473   ///
      int    PRCCS6                  1474-1476   ///
      int    PRCCS7                  1477-1479   ///
      int    PRCCS8                  1480-1482   ///
      int    PRCCS9                  1483-1485   ///
      int    PRCCS10                 1486-1488   ///
      int    PRCCS11                 1489-1491   ///
      int    PRCCS12                 1492-1494   ///
      int    PRCCS13                 1495-1497   ///
      int    PRCCS14                 1498-1500   ///
      int    PRCCS15                 1501-1503   ///
      int    PRCCS16                 1504-1506   ///
      int    PRCCS17                 1507-1509   ///
      int    PRCCS18                 1510-1512   ///
      int    PRCCS19                 1513-1515   ///
      int    PRCCS20                 1516-1518   ///
      long   PRDAY1                  1519-1523   ///
      long   PRDAY2                  1524-1528   ///
      long   PRDAY3                  1529-1533   ///
      long   PRDAY4                  1534-1538   ///
      long   PRDAY5                  1539-1543   ///
      long   PRDAY6                  1544-1548   ///
      long   PRDAY7                  1549-1553   ///
      long   PRDAY8                  1554-1558   ///
      long   PRDAY9                  1559-1563   ///
      long   PRDAY10                 1564-1568   ///
      long   PRDAY11                 1569-1573   ///
      long   PRDAY12                 1574-1578   ///
      long   PRDAY13                 1579-1583   ///
      long   PRDAY14                 1584-1588   ///
      long   PRDAY15                 1589-1593   ///
      long   PRDAY16                 1594-1598   ///
      long   PRDAY17                 1599-1603   ///
      long   PRDAY18                 1604-1608   ///
      long   PRDAY19                 1609-1613   ///
      long   PRDAY20                 1614-1618   ///
      int    PROCTYPE                1619-1621   ///
      int    PRVER                   1622-1624   ///
      str    PSTATE                  1625-1626   ///
      long   PSTCO                   1627-1631   ///
      long   PSTCO2                  1632-1636   ///
      str    PointOfOriginUB04       1637        ///
      str    PointOfOrigin_X         1638        ///
      byte   RACE                    1639-1640   ///
      str    RACE_X                  1641        ///
      byte   READMIT                 1642-1643   ///
      byte   SERVICELINE             1644-1645   ///
      double TOTCHG                  1646-1655   ///
      double TOTCHG_X                1656-1670   ///
      byte   TRAN_IN                 1671-1672   ///
      byte   TRAN_OUT                1673-1674   ///
      long   VisitLink               1675-1683   ///
      int    YEAR                    1684-1687   ///
      str    ZIP                     1688-1692   ///
      str    ZIP3                    1693-1695   ///
      int    ZIPINC_QRTL             1696-1698   ///
      str    TOWN                    1699-1702   ///
      int    AYEAR                   1703-1706   ///
      byte   BMONTH                  1707-1708   ///
      int    BYEAR                   1709-1712   ///
      byte   PRMONTH1                1713-1714   ///
      byte   PRMONTH2                1715-1716   ///
      byte   PRMONTH3                1717-1718   ///
      byte   PRMONTH4                1719-1720   ///
      byte   PRMONTH5                1721-1722   ///
      byte   PRMONTH6                1723-1724   ///
      byte   PRMONTH7                1725-1726   ///
      byte   PRMONTH8                1727-1728   ///
      byte   PRMONTH9                1729-1730   ///
      byte   PRMONTH10               1731-1732   ///
      byte   PRMONTH11               1733-1734   ///
      byte   PRMONTH12               1735-1736   ///
      byte   PRMONTH13               1737-1738   ///
      byte   PRMONTH14               1739-1740   ///
      byte   PRMONTH15               1741-1742   ///
      byte   PRMONTH16               1743-1744   ///
      byte   PRMONTH17               1745-1746   ///
      byte   PRMONTH18               1747-1748   ///
      byte   PRMONTH19               1749-1750   ///
      byte   PRMONTH20               1751-1752   ///
      int    PRYEAR1                 1753-1756   ///
      int    PRYEAR2                 1757-1760   ///
      int    PRYEAR3                 1761-1764   ///
      int    PRYEAR4                 1765-1768   ///
      int    PRYEAR5                 1769-1772   ///
      int    PRYEAR6                 1773-1776   ///
      int    PRYEAR7                 1777-1780   ///
      int    PRYEAR8                 1781-1784   ///
      int    PRYEAR9                 1785-1788   ///
      int    PRYEAR10                1789-1792   ///
      int    PRYEAR11                1793-1796   ///
      int    PRYEAR12                1797-1800   ///
      int    PRYEAR13                1801-1804   ///
      int    PRYEAR14                1805-1808   ///
      int    PRYEAR15                1809-1812   ///
      int    PRYEAR16                1813-1816   ///
      int    PRYEAR17                1817-1820   ///
      int    PRYEAR18                1821-1824   ///
      int    PRYEAR19                1825-1828   ///
      int    PRYEAR20                1829-1832   ///
      using  "VT_SID_2014_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
label var BWT                      "Birth weight in grams"
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
label var CPT36                    "CPT/HCPCS procedure code 36"
label var CPT37                    "CPT/HCPCS procedure code 37"
label var CPT38                    "CPT/HCPCS procedure code 38"
label var CPT39                    "CPT/HCPCS procedure code 39"
label var CPT40                    "CPT/HCPCS procedure code 40"
label var CPT41                    "CPT/HCPCS procedure code 41"
label var CPT42                    "CPT/HCPCS procedure code 42"
label var CPT43                    "CPT/HCPCS procedure code 43"
label var CPT44                    "CPT/HCPCS procedure code 44"
label var CPT45                    "CPT/HCPCS procedure code 45"
label var CPT46                    "CPT/HCPCS procedure code 46"
label var CPT47                    "CPT/HCPCS procedure code 47"
label var CPT48                    "CPT/HCPCS procedure code 48"
label var CPT49                    "CPT/HCPCS procedure code 49"
label var CPT50                    "CPT/HCPCS procedure code 50"
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
label var CPTCCS36                 "CCS: CPT 36"
label var CPTCCS37                 "CCS: CPT 37"
label var CPTCCS38                 "CCS: CPT 38"
label var CPTCCS39                 "CCS: CPT 39"
label var CPTCCS40                 "CCS: CPT 40"
label var CPTCCS41                 "CCS: CPT 41"
label var CPTCCS42                 "CCS: CPT 42"
label var CPTCCS43                 "CCS: CPT 43"
label var CPTCCS44                 "CCS: CPT 44"
label var CPTCCS45                 "CCS: CPT 45"
label var CPTCCS46                 "CCS: CPT 46"
label var CPTCCS47                 "CCS: CPT 47"
label var CPTCCS48                 "CCS: CPT 48"
label var CPTCCS49                 "CCS: CPT 49"
label var CPTCCS50                 "CCS: CPT 50"
label var CPTDAY1                  "Number of days from admission to CPT1"
label var CPTDAY2                  "Number of days from admission to CPT2"
label var CPTDAY3                  "Number of days from admission to CPT3"
label var CPTDAY4                  "Number of days from admission to CPT4"
label var CPTDAY5                  "Number of days from admission to CPT5"
label var CPTDAY6                  "Number of days from admission to CPT6"
label var CPTDAY7                  "Number of days from admission to CPT7"
label var CPTDAY8                  "Number of days from admission to CPT8"
label var CPTDAY9                  "Number of days from admission to CPT9"
label var CPTDAY10                 "Number of days from admission to CPT10"
label var CPTDAY11                 "Number of days from admission to CPT11"
label var CPTDAY12                 "Number of days from admission to CPT12"
label var CPTDAY13                 "Number of days from admission to CPT13"
label var CPTDAY14                 "Number of days from admission to CPT14"
label var CPTDAY15                 "Number of days from admission to CPT15"
label var CPTDAY16                 "Number of days from admission to CPT16"
label var CPTDAY17                 "Number of days from admission to CPT17"
label var CPTDAY18                 "Number of days from admission to CPT18"
label var CPTDAY19                 "Number of days from admission to CPT19"
label var CPTDAY20                 "Number of days from admission to CPT20"
label var CPTDAY21                 "Number of days from admission to CPT21"
label var CPTDAY22                 "Number of days from admission to CPT22"
label var CPTDAY23                 "Number of days from admission to CPT23"
label var CPTDAY24                 "Number of days from admission to CPT24"
label var CPTDAY25                 "Number of days from admission to CPT25"
label var CPTDAY26                 "Number of days from admission to CPT26"
label var CPTDAY27                 "Number of days from admission to CPT27"
label var CPTDAY28                 "Number of days from admission to CPT28"
label var CPTDAY29                 "Number of days from admission to CPT29"
label var CPTDAY30                 "Number of days from admission to CPT30"
label var CPTDAY31                 "Number of days from admission to CPT31"
label var CPTDAY32                 "Number of days from admission to CPT32"
label var CPTDAY33                 "Number of days from admission to CPT33"
label var CPTDAY34                 "Number of days from admission to CPT34"
label var CPTDAY35                 "Number of days from admission to CPT35"
label var CPTDAY36                 "Number of days from admission to CPT36"
label var CPTDAY37                 "Number of days from admission to CPT37"
label var CPTDAY38                 "Number of days from admission to CPT38"
label var CPTDAY39                 "Number of days from admission to CPT39"
label var CPTDAY40                 "Number of days from admission to CPT40"
label var CPTDAY41                 "Number of days from admission to CPT41"
label var CPTDAY42                 "Number of days from admission to CPT42"
label var CPTDAY43                 "Number of days from admission to CPT43"
label var CPTDAY44                 "Number of days from admission to CPT44"
label var CPTDAY45                 "Number of days from admission to CPT45"
label var CPTDAY46                 "Number of days from admission to CPT46"
label var CPTDAY47                 "Number of days from admission to CPT47"
label var CPTDAY48                 "Number of days from admission to CPT48"
label var CPTDAY49                 "Number of days from admission to CPT49"
label var CPTDAY50                 "Number of days from admission to CPT50"
label var CPTM1_1                  "First CPT-4/HCPCS modifier 1"
label var CPTM1_2                  "First CPT-4/HCPCS modifier 2"
label var CPTM1_3                  "First CPT-4/HCPCS modifier 3"
label var CPTM1_4                  "First CPT-4/HCPCS modifier 4"
label var CPTM1_5                  "First CPT-4/HCPCS modifier 5"
label var CPTM1_6                  "First CPT-4/HCPCS modifier 6"
label var CPTM1_7                  "First CPT-4/HCPCS modifier 7"
label var CPTM1_8                  "First CPT-4/HCPCS modifier 8"
label var CPTM1_9                  "First CPT-4/HCPCS modifier 9"
label var CPTM1_10                 "First CPT-4/HCPCS modifier 10"
label var CPTM1_11                 "First CPT-4/HCPCS modifier 11"
label var CPTM1_12                 "First CPT-4/HCPCS modifier 12"
label var CPTM1_13                 "First CPT-4/HCPCS modifier 13"
label var CPTM1_14                 "First CPT-4/HCPCS modifier 14"
label var CPTM1_15                 "First CPT-4/HCPCS modifier 15"
label var CPTM1_16                 "First CPT-4/HCPCS modifier 16"
label var CPTM1_17                 "First CPT-4/HCPCS modifier 17"
label var CPTM1_18                 "First CPT-4/HCPCS modifier 18"
label var CPTM1_19                 "First CPT-4/HCPCS modifier 19"
label var CPTM1_20                 "First CPT-4/HCPCS modifier 20"
label var CPTM1_21                 "First CPT-4/HCPCS modifier 21"
label var CPTM1_22                 "First CPT-4/HCPCS modifier 22"
label var CPTM1_23                 "First CPT-4/HCPCS modifier 23"
label var CPTM1_24                 "First CPT-4/HCPCS modifier 24"
label var CPTM1_25                 "First CPT-4/HCPCS modifier 25"
label var CPTM1_26                 "First CPT-4/HCPCS modifier 26"
label var CPTM1_27                 "First CPT-4/HCPCS modifier 27"
label var CPTM1_28                 "First CPT-4/HCPCS modifier 28"
label var CPTM1_29                 "First CPT-4/HCPCS modifier 29"
label var CPTM1_30                 "First CPT-4/HCPCS modifier 30"
label var CPTM1_31                 "First CPT-4/HCPCS modifier 31"
label var CPTM1_32                 "First CPT-4/HCPCS modifier 32"
label var CPTM1_33                 "First CPT-4/HCPCS modifier 33"
label var CPTM1_34                 "First CPT-4/HCPCS modifier 34"
label var CPTM1_35                 "First CPT-4/HCPCS modifier 35"
label var CPTM1_36                 "First CPT-4/HCPCS modifier 36"
label var CPTM1_37                 "First CPT-4/HCPCS modifier 37"
label var CPTM1_38                 "First CPT-4/HCPCS modifier 38"
label var CPTM1_39                 "First CPT-4/HCPCS modifier 39"
label var CPTM1_40                 "First CPT-4/HCPCS modifier 40"
label var CPTM1_41                 "First CPT-4/HCPCS modifier 41"
label var CPTM1_42                 "First CPT-4/HCPCS modifier 42"
label var CPTM1_43                 "First CPT-4/HCPCS modifier 43"
label var CPTM1_44                 "First CPT-4/HCPCS modifier 44"
label var CPTM1_45                 "First CPT-4/HCPCS modifier 45"
label var CPTM1_46                 "First CPT-4/HCPCS modifier 46"
label var CPTM1_47                 "First CPT-4/HCPCS modifier 47"
label var CPTM1_48                 "First CPT-4/HCPCS modifier 48"
label var CPTM1_49                 "First CPT-4/HCPCS modifier 49"
label var CPTM1_50                 "First CPT-4/HCPCS modifier 50"
label var CPTM2_1                  "Second CPT-4/HCPCS modifier 1"
label var CPTM2_2                  "Second CPT-4/HCPCS modifier 2"
label var CPTM2_3                  "Second CPT-4/HCPCS modifier 3"
label var CPTM2_4                  "Second CPT-4/HCPCS modifier 4"
label var CPTM2_5                  "Second CPT-4/HCPCS modifier 5"
label var CPTM2_6                  "Second CPT-4/HCPCS modifier 6"
label var CPTM2_7                  "Second CPT-4/HCPCS modifier 7"
label var CPTM2_8                  "Second CPT-4/HCPCS modifier 8"
label var CPTM2_9                  "Second CPT-4/HCPCS modifier 9"
label var CPTM2_10                 "Second CPT-4/HCPCS modifier 10"
label var CPTM2_11                 "Second CPT-4/HCPCS modifier 11"
label var CPTM2_12                 "Second CPT-4/HCPCS modifier 12"
label var CPTM2_13                 "Second CPT-4/HCPCS modifier 13"
label var CPTM2_14                 "Second CPT-4/HCPCS modifier 14"
label var CPTM2_15                 "Second CPT-4/HCPCS modifier 15"
label var CPTM2_16                 "Second CPT-4/HCPCS modifier 16"
label var CPTM2_17                 "Second CPT-4/HCPCS modifier 17"
label var CPTM2_18                 "Second CPT-4/HCPCS modifier 18"
label var CPTM2_19                 "Second CPT-4/HCPCS modifier 19"
label var CPTM2_20                 "Second CPT-4/HCPCS modifier 20"
label var CPTM2_21                 "Second CPT-4/HCPCS modifier 21"
label var CPTM2_22                 "Second CPT-4/HCPCS modifier 22"
label var CPTM2_23                 "Second CPT-4/HCPCS modifier 23"
label var CPTM2_24                 "Second CPT-4/HCPCS modifier 24"
label var CPTM2_25                 "Second CPT-4/HCPCS modifier 25"
label var CPTM2_26                 "Second CPT-4/HCPCS modifier 26"
label var CPTM2_27                 "Second CPT-4/HCPCS modifier 27"
label var CPTM2_28                 "Second CPT-4/HCPCS modifier 28"
label var CPTM2_29                 "Second CPT-4/HCPCS modifier 29"
label var CPTM2_30                 "Second CPT-4/HCPCS modifier 30"
label var CPTM2_31                 "Second CPT-4/HCPCS modifier 31"
label var CPTM2_32                 "Second CPT-4/HCPCS modifier 32"
label var CPTM2_33                 "Second CPT-4/HCPCS modifier 33"
label var CPTM2_34                 "Second CPT-4/HCPCS modifier 34"
label var CPTM2_35                 "Second CPT-4/HCPCS modifier 35"
label var CPTM2_36                 "Second CPT-4/HCPCS modifier 36"
label var CPTM2_37                 "Second CPT-4/HCPCS modifier 37"
label var CPTM2_38                 "Second CPT-4/HCPCS modifier 38"
label var CPTM2_39                 "Second CPT-4/HCPCS modifier 39"
label var CPTM2_40                 "Second CPT-4/HCPCS modifier 40"
label var CPTM2_41                 "Second CPT-4/HCPCS modifier 41"
label var CPTM2_42                 "Second CPT-4/HCPCS modifier 42"
label var CPTM2_43                 "Second CPT-4/HCPCS modifier 43"
label var CPTM2_44                 "Second CPT-4/HCPCS modifier 44"
label var CPTM2_45                 "Second CPT-4/HCPCS modifier 45"
label var CPTM2_46                 "Second CPT-4/HCPCS modifier 46"
label var CPTM2_47                 "Second CPT-4/HCPCS modifier 47"
label var CPTM2_48                 "Second CPT-4/HCPCS modifier 48"
label var CPTM2_49                 "Second CPT-4/HCPCS modifier 49"
label var CPTM2_50                 "Second CPT-4/HCPCS modifier 50"
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
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_CCS7                   "CCS: E Code 7"
label var E_CCS8                   "CCS: E Code 8"
label var E_CCS9                   "CCS: E Code 9"
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var E_POA7                   "E Code 7, present on admission indicator"
label var E_POA8                   "E Code 8, present on admission indicator"
label var E_POA9                   "E Code 9, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var HOSP_NPI                 "Hospital NPI"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDC                      "MDC in effect on discharge date"
label var MDC24                    "MDC, version 24"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MRN_R                    "Medical record number (re-identified)"
label var NCHRONIC                 "Number of chronic conditions"
label var NCPT                     "Number of CPT/HCPCS procedures on this record"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var ORPROC                   "Major operating room procedure indicator"
label var PAY1                     "Primary expected payer (uniform)"
label var PAY1_X                   "Primary expected payer (as received from source)"
label var PAY2                     "Secondary expected payer (uniform)"
label var PAY2_X                   "Secondary expected payer (as received from source)"
label var PAY3                     "Tertiary expected payer (uniform)"
label var PAY3_X                   "Tertiary expected payer (as received from source)"
label var PAYER1_X                 "Primary expected payer plan identifier (as received from source)"
label var PAYER2_X                 "Secondary expected payer plan identifier (as received from source)"
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
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO                    "Patient state/county FIPS code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var READMIT                  "Readmission"
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

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
recode AHOUR                     (-999 -888 -666=.)
recode AMONTH                    (-9 -8 -6 -5=.)
recode ATYPE                     (-9 -8 -6 -5=.)
recode AWEEKEND                  (-9 -8 -6 -5=.)
recode BWT                       (-999 -888 -666=.)
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
recode CPTCCS36                  (-99 -88 -66=.)
recode CPTCCS37                  (-99 -88 -66=.)
recode CPTCCS38                  (-99 -88 -66=.)
recode CPTCCS39                  (-99 -88 -66=.)
recode CPTCCS40                  (-99 -88 -66=.)
recode CPTCCS41                  (-99 -88 -66=.)
recode CPTCCS42                  (-99 -88 -66=.)
recode CPTCCS43                  (-99 -88 -66=.)
recode CPTCCS44                  (-99 -88 -66=.)
recode CPTCCS45                  (-99 -88 -66=.)
recode CPTCCS46                  (-99 -88 -66=.)
recode CPTCCS47                  (-99 -88 -66=.)
recode CPTCCS48                  (-99 -88 -66=.)
recode CPTCCS49                  (-99 -88 -66=.)
recode CPTCCS50                  (-99 -88 -66=.)
recode CPTDAY1                   (-99 -88 -66=.)
recode CPTDAY2                   (-99 -88 -66=.)
recode CPTDAY3                   (-99 -88 -66=.)
recode CPTDAY4                   (-99 -88 -66=.)
recode CPTDAY5                   (-99 -88 -66=.)
recode CPTDAY6                   (-99 -88 -66=.)
recode CPTDAY7                   (-99 -88 -66=.)
recode CPTDAY8                   (-99 -88 -66=.)
recode CPTDAY9                   (-99 -88 -66=.)
recode CPTDAY10                  (-99 -88 -66=.)
recode CPTDAY11                  (-99 -88 -66=.)
recode CPTDAY12                  (-99 -88 -66=.)
recode CPTDAY13                  (-99 -88 -66=.)
recode CPTDAY14                  (-99 -88 -66=.)
recode CPTDAY15                  (-99 -88 -66=.)
recode CPTDAY16                  (-99 -88 -66=.)
recode CPTDAY17                  (-99 -88 -66=.)
recode CPTDAY18                  (-99 -88 -66=.)
recode CPTDAY19                  (-99 -88 -66=.)
recode CPTDAY20                  (-99 -88 -66=.)
recode CPTDAY21                  (-99 -88 -66=.)
recode CPTDAY22                  (-99 -88 -66=.)
recode CPTDAY23                  (-99 -88 -66=.)
recode CPTDAY24                  (-99 -88 -66=.)
recode CPTDAY25                  (-99 -88 -66=.)
recode CPTDAY26                  (-99 -88 -66=.)
recode CPTDAY27                  (-99 -88 -66=.)
recode CPTDAY28                  (-99 -88 -66=.)
recode CPTDAY29                  (-99 -88 -66=.)
recode CPTDAY30                  (-99 -88 -66=.)
recode CPTDAY31                  (-99 -88 -66=.)
recode CPTDAY32                  (-99 -88 -66=.)
recode CPTDAY33                  (-99 -88 -66=.)
recode CPTDAY34                  (-99 -88 -66=.)
recode CPTDAY35                  (-99 -88 -66=.)
recode CPTDAY36                  (-99 -88 -66=.)
recode CPTDAY37                  (-99 -88 -66=.)
recode CPTDAY38                  (-99 -88 -66=.)
recode CPTDAY39                  (-99 -88 -66=.)
recode CPTDAY40                  (-99 -88 -66=.)
recode CPTDAY41                  (-99 -88 -66=.)
recode CPTDAY42                  (-99 -88 -66=.)
recode CPTDAY43                  (-99 -88 -66=.)
recode CPTDAY44                  (-99 -88 -66=.)
recode CPTDAY45                  (-99 -88 -66=.)
recode CPTDAY46                  (-99 -88 -66=.)
recode CPTDAY47                  (-99 -88 -66=.)
recode CPTDAY48                  (-99 -88 -66=.)
recode CPTDAY49                  (-99 -88 -66=.)
recode CPTDAY50                  (-99 -88 -66=.)
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
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NCPT                      (-999 -888 -666=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
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
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO                     (-9999 -8888 -6666=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
recode READMIT                   (-9 -8 -6 -5=.)
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

save "VT_SID_2014_CORE.dta", replace
