/*****************************************************************************
* Creation Date: 10/28/2015   
* Stataload_NJ_SEDD_2014_CORE.Do
* This program will load the 2014 NJ ASCII CORE File into Stata.
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
      str    CPT1                       24- 28   ///
      str    CPT2                       29- 33   ///
      str    CPT3                       34- 38   ///
      str    CPT4                       39- 43   ///
      str    CPT5                       44- 48   ///
      str    CPT6                       49- 53   ///
      str    CPT7                       54- 58   ///
      str    CPT8                       59- 63   ///
      str    CPT9                       64- 68   ///
      str    CPT10                      69- 73   ///
      str    CPT11                      74- 78   ///
      str    CPT12                      79- 83   ///
      str    CPT13                      84- 88   ///
      str    CPT14                      89- 93   ///
      str    CPT15                      94- 98   ///
      str    CPT16                      99-103   ///
      str    CPT17                     104-108   ///
      str    CPT18                     109-113   ///
      str    CPT19                     114-118   ///
      str    CPT20                     119-123   ///
      str    CPT21                     124-128   ///
      str    CPT22                     129-133   ///
      str    CPT23                     134-138   ///
      str    CPT24                     139-143   ///
      str    CPT25                     144-148   ///
      str    CPT26                     149-153   ///
      str    CPT27                     154-158   ///
      str    CPT28                     159-163   ///
      str    CPT29                     164-168   ///
      str    CPT30                     169-173   ///
      str    CPT31                     174-178   ///
      str    CPT32                     179-183   ///
      str    CPT33                     184-188   ///
      str    CPT34                     189-193   ///
      str    CPT35                     194-198   ///
      str    CPT36                     199-203   ///
      str    CPT37                     204-208   ///
      str    CPT38                     209-213   ///
      str    CPT39                     214-218   ///
      str    CPT40                     219-223   ///
      str    CPT41                     224-228   ///
      str    CPT42                     229-233   ///
      str    CPT43                     234-238   ///
      str    CPT44                     239-243   ///
      str    CPT45                     244-248   ///
      str    CPT46                     249-253   ///
      str    CPT47                     254-258   ///
      str    CPT48                     259-263   ///
      str    CPT49                     264-268   ///
      str    CPT50                     269-273   ///
      int    CPTCCS1                   274-276   ///
      int    CPTCCS2                   277-279   ///
      int    CPTCCS3                   280-282   ///
      int    CPTCCS4                   283-285   ///
      int    CPTCCS5                   286-288   ///
      int    CPTCCS6                   289-291   ///
      int    CPTCCS7                   292-294   ///
      int    CPTCCS8                   295-297   ///
      int    CPTCCS9                   298-300   ///
      int    CPTCCS10                  301-303   ///
      int    CPTCCS11                  304-306   ///
      int    CPTCCS12                  307-309   ///
      int    CPTCCS13                  310-312   ///
      int    CPTCCS14                  313-315   ///
      int    CPTCCS15                  316-318   ///
      int    CPTCCS16                  319-321   ///
      int    CPTCCS17                  322-324   ///
      int    CPTCCS18                  325-327   ///
      int    CPTCCS19                  328-330   ///
      int    CPTCCS20                  331-333   ///
      int    CPTCCS21                  334-336   ///
      int    CPTCCS22                  337-339   ///
      int    CPTCCS23                  340-342   ///
      int    CPTCCS24                  343-345   ///
      int    CPTCCS25                  346-348   ///
      int    CPTCCS26                  349-351   ///
      int    CPTCCS27                  352-354   ///
      int    CPTCCS28                  355-357   ///
      int    CPTCCS29                  358-360   ///
      int    CPTCCS30                  361-363   ///
      int    CPTCCS31                  364-366   ///
      int    CPTCCS32                  367-369   ///
      int    CPTCCS33                  370-372   ///
      int    CPTCCS34                  373-375   ///
      int    CPTCCS35                  376-378   ///
      int    CPTCCS36                  379-381   ///
      int    CPTCCS37                  382-384   ///
      int    CPTCCS38                  385-387   ///
      int    CPTCCS39                  388-390   ///
      int    CPTCCS40                  391-393   ///
      int    CPTCCS41                  394-396   ///
      int    CPTCCS42                  397-399   ///
      int    CPTCCS43                  400-402   ///
      int    CPTCCS44                  403-405   ///
      int    CPTCCS45                  406-408   ///
      int    CPTCCS46                  409-411   ///
      int    CPTCCS47                  412-414   ///
      int    CPTCCS48                  415-417   ///
      int    CPTCCS49                  418-420   ///
      int    CPTCCS50                  421-423   ///
      str    CPTM1_1                   424-425   ///
      str    CPTM1_2                   426-427   ///
      str    CPTM1_3                   428-429   ///
      str    CPTM1_4                   430-431   ///
      str    CPTM1_5                   432-433   ///
      str    CPTM1_6                   434-435   ///
      str    CPTM1_7                   436-437   ///
      str    CPTM1_8                   438-439   ///
      str    CPTM1_9                   440-441   ///
      str    CPTM1_10                  442-443   ///
      str    CPTM1_11                  444-445   ///
      str    CPTM1_12                  446-447   ///
      str    CPTM1_13                  448-449   ///
      str    CPTM1_14                  450-451   ///
      str    CPTM1_15                  452-453   ///
      str    CPTM1_16                  454-455   ///
      str    CPTM1_17                  456-457   ///
      str    CPTM1_18                  458-459   ///
      str    CPTM1_19                  460-461   ///
      str    CPTM1_20                  462-463   ///
      str    CPTM1_21                  464-465   ///
      str    CPTM1_22                  466-467   ///
      str    CPTM1_23                  468-469   ///
      str    CPTM1_24                  470-471   ///
      str    CPTM1_25                  472-473   ///
      str    CPTM1_26                  474-475   ///
      str    CPTM1_27                  476-477   ///
      str    CPTM1_28                  478-479   ///
      str    CPTM1_29                  480-481   ///
      str    CPTM1_30                  482-483   ///
      str    CPTM1_31                  484-485   ///
      str    CPTM1_32                  486-487   ///
      str    CPTM1_33                  488-489   ///
      str    CPTM1_34                  490-491   ///
      str    CPTM1_35                  492-493   ///
      str    CPTM1_36                  494-495   ///
      str    CPTM1_37                  496-497   ///
      str    CPTM1_38                  498-499   ///
      str    CPTM1_39                  500-501   ///
      str    CPTM1_40                  502-503   ///
      str    CPTM1_41                  504-505   ///
      str    CPTM1_42                  506-507   ///
      str    CPTM1_43                  508-509   ///
      str    CPTM1_44                  510-511   ///
      str    CPTM1_45                  512-513   ///
      str    CPTM1_46                  514-515   ///
      str    CPTM1_47                  516-517   ///
      str    CPTM1_48                  518-519   ///
      str    CPTM1_49                  520-521   ///
      str    CPTM1_50                  522-523   ///
      str    CPTM2_1                   524-525   ///
      str    CPTM2_2                   526-527   ///
      str    CPTM2_3                   528-529   ///
      str    CPTM2_4                   530-531   ///
      str    CPTM2_5                   532-533   ///
      str    CPTM2_6                   534-535   ///
      str    CPTM2_7                   536-537   ///
      str    CPTM2_8                   538-539   ///
      str    CPTM2_9                   540-541   ///
      str    CPTM2_10                  542-543   ///
      str    CPTM2_11                  544-545   ///
      str    CPTM2_12                  546-547   ///
      str    CPTM2_13                  548-549   ///
      str    CPTM2_14                  550-551   ///
      str    CPTM2_15                  552-553   ///
      str    CPTM2_16                  554-555   ///
      str    CPTM2_17                  556-557   ///
      str    CPTM2_18                  558-559   ///
      str    CPTM2_19                  560-561   ///
      str    CPTM2_20                  562-563   ///
      str    CPTM2_21                  564-565   ///
      str    CPTM2_22                  566-567   ///
      str    CPTM2_23                  568-569   ///
      str    CPTM2_24                  570-571   ///
      str    CPTM2_25                  572-573   ///
      str    CPTM2_26                  574-575   ///
      str    CPTM2_27                  576-577   ///
      str    CPTM2_28                  578-579   ///
      str    CPTM2_29                  580-581   ///
      str    CPTM2_30                  582-583   ///
      str    CPTM2_31                  584-585   ///
      str    CPTM2_32                  586-587   ///
      str    CPTM2_33                  588-589   ///
      str    CPTM2_34                  590-591   ///
      str    CPTM2_35                  592-593   ///
      str    CPTM2_36                  594-595   ///
      str    CPTM2_37                  596-597   ///
      str    CPTM2_38                  598-599   ///
      str    CPTM2_39                  600-601   ///
      str    CPTM2_40                  602-603   ///
      str    CPTM2_41                  604-605   ///
      str    CPTM2_42                  606-607   ///
      str    CPTM2_43                  608-609   ///
      str    CPTM2_44                  610-611   ///
      str    CPTM2_45                  612-613   ///
      str    CPTM2_46                  614-615   ///
      str    CPTM2_47                  616-617   ///
      str    CPTM2_48                  618-619   ///
      str    CPTM2_49                  620-621   ///
      str    CPTM2_50                  622-623   ///
      int    DHOUR                     624-627   ///
      byte   DIED                      628-629   ///
      byte   DISPUB04                  630-631   ///
      byte   DISPUNIFORM               632-633   ///
      str    DISP_X                    634-635   ///
      byte   DMONTH                    636-637   ///
      byte   DQTR                      638-639   ///
      str    DSHOSPID                  640-656   ///
      long   DURATION                  657-662   ///
      str    DX1                       663-669   ///
      str    DX2                       670-676   ///
      str    DX3                       677-683   ///
      str    DX4                       684-690   ///
      str    DX5                       691-697   ///
      str    DX6                       698-704   ///
      str    DX7                       705-711   ///
      str    DX8                       712-718   ///
      str    DX9                       719-725   ///
      str    DX10                      726-732   ///
      str    DX11                      733-739   ///
      str    DX12                      740-746   ///
      str    DX13                      747-753   ///
      str    DX14                      754-760   ///
      str    DX15                      761-767   ///
      str    DX16                      768-774   ///
      str    DX17                      775-781   ///
      str    DX18                      782-788   ///
      str    DX19                      789-795   ///
      str    DX20                      796-802   ///
      str    DX21                      803-809   ///
      str    DX22                      810-816   ///
      str    DX23                      817-823   ///
      str    DX24                      824-830   ///
      int    DXCCS1                    831-834   ///
      int    DXCCS2                    835-838   ///
      int    DXCCS3                    839-842   ///
      int    DXCCS4                    843-846   ///
      int    DXCCS5                    847-850   ///
      int    DXCCS6                    851-854   ///
      int    DXCCS7                    855-858   ///
      int    DXCCS8                    859-862   ///
      int    DXCCS9                    863-866   ///
      int    DXCCS10                   867-870   ///
      int    DXCCS11                   871-874   ///
      int    DXCCS12                   875-878   ///
      int    DXCCS13                   879-882   ///
      int    DXCCS14                   883-886   ///
      int    DXCCS15                   887-890   ///
      int    DXCCS16                   891-894   ///
      int    DXCCS17                   895-898   ///
      int    DXCCS18                   899-902   ///
      int    DXCCS19                   903-906   ///
      int    DXCCS20                   907-910   ///
      int    DXCCS21                   911-914   ///
      int    DXCCS22                   915-918   ///
      int    DXCCS23                   919-922   ///
      int    DXCCS24                   923-926   ///
      str    DXPOA1                    927       ///
      str    DXPOA2                    928       ///
      str    DXPOA3                    929       ///
      str    DXPOA4                    930       ///
      str    DXPOA5                    931       ///
      str    DXPOA6                    932       ///
      str    DXPOA7                    933       ///
      str    DXPOA8                    934       ///
      str    DXPOA9                    935       ///
      str    DXPOA10                   936       ///
      str    DXPOA11                   937       ///
      str    DXPOA12                   938       ///
      str    DXPOA13                   939       ///
      str    DXPOA14                   940       ///
      str    DXPOA15                   941       ///
      str    DXPOA16                   942       ///
      str    DXPOA17                   943       ///
      str    DXPOA18                   944       ///
      str    DXPOA19                   945       ///
      str    DXPOA20                   946       ///
      str    DXPOA21                   947       ///
      str    DXPOA22                   948       ///
      str    DXPOA23                   949       ///
      str    DXPOA24                   950       ///
      int    DXVER                     951-953   ///
      str    DX_Visit_Reason1          954-960   ///
      str    DX_Visit_Reason2          961-967   ///
      str    DX_Visit_Reason3          968-974   ///
      str    ECODE1                    975-981   ///
      str    ECODE2                    982-988   ///
      str    ECODE3                    989-995   ///
      str    ECODE4                   996-1002   ///
      str    ECODE5                  1003-1009   ///
      str    ECODE6                  1010-1016   ///
      str    ECODE7                  1017-1023   ///
      str    ECODE8                  1024-1030   ///
      str    ECODE9                  1031-1037   ///
      str    ECODE10                 1038-1044   ///
      str    ECODE11                 1045-1051   ///
      str    ECODE12                 1052-1058   ///
      int    E_CCS1                  1059-1062   ///
      int    E_CCS2                  1063-1066   ///
      int    E_CCS3                  1067-1070   ///
      int    E_CCS4                  1071-1074   ///
      int    E_CCS5                  1075-1078   ///
      int    E_CCS6                  1079-1082   ///
      int    E_CCS7                  1083-1086   ///
      int    E_CCS8                  1087-1090   ///
      int    E_CCS9                  1091-1094   ///
      int    E_CCS10                 1095-1098   ///
      int    E_CCS11                 1099-1102   ///
      int    E_CCS12                 1103-1106   ///
      str    E_POA1                  1107        ///
      str    E_POA2                  1108        ///
      str    E_POA3                  1109        ///
      str    E_POA4                  1110        ///
      str    E_POA5                  1111        ///
      str    E_POA6                  1112        ///
      str    E_POA7                  1113        ///
      str    E_POA8                  1114        ///
      str    E_POA9                  1115        ///
      str    E_POA10                 1116        ///
      str    E_POA11                 1117        ///
      str    E_POA12                 1118        ///
      byte   FEMALE                  1119-1120   ///
      byte   HCUP_ED                 1121-1122   ///
      byte   HCUP_OS                 1123-1124   ///
      str    HISPANIC_X              1125-1129   ///
      int    HOSPBRTH                1130-1132   ///
      str    HOSPST                  1133-1134   ///
      double KEY                     1135-1149   ///
      long   LOS                     1150-1154   ///
      long   LOS_X                   1155-1160   ///
      str    MARITALSTATUSUB04       1161        ///
      long   MDNUM1_R                1162-1170   ///
      long   MDNUM2_R                1171-1179   ///
      byte   MEDINCSTQ               1180-1181   ///
      long   MOMNUM_R                1182-1190   ///
      long   MRN_R                   1191-1199   ///
      int    NCHRONIC                1200-1202   ///
      int    NCPT                    1203-1206   ///
      int    NDX                     1207-1209   ///
      byte   NECODE                  1210-1211   ///
      byte   NEOMAT                  1212-1213   ///
      int    NPR                     1214-1216   ///
      str    OPservice               1217        ///
      byte   ORPROC                  1218-1219   ///
      long   OS_TIME                 1220-1227   ///
      byte   PAY1                    1228-1229   ///
      str    PAY1_X                  1230-1232   ///
      byte   PAY2                    1233-1234   ///
      str    PAY2_X                  1235-1237   ///
      byte   PAY3                    1238-1239   ///
      str    PAY3_X                  1240-1242   ///
      int    PL_CBSA                 1243-1245   ///
      byte   PL_NCHS                 1246-1247   ///
      byte   PL_RUCC                 1248-1249   ///
      byte   PL_UIC                  1250-1251   ///
      byte   PL_UR_CAT4              1252-1253   ///
      byte   POA_Disch_Edit1         1254-1255   ///
      byte   POA_Disch_Edit2         1256-1257   ///
      byte   POA_Hosp_Edit1          1258-1259   ///
      byte   POA_Hosp_Edit2          1260-1261   ///
      byte   POA_Hosp_Edit3          1262-1263   ///
      double POA_Hosp_Edit3_Value    1264-1271   ///
      str    PR1                     1272-1278   ///
      str    PR2                     1279-1285   ///
      str    PR3                     1286-1292   ///
      str    PR4                     1293-1299   ///
      str    PR5                     1300-1306   ///
      str    PR6                     1307-1313   ///
      str    PR7                     1314-1320   ///
      str    PR8                     1321-1327   ///
      str    PR9                     1328-1334   ///
      str    PR10                    1335-1341   ///
      str    PR11                    1342-1348   ///
      str    PR12                    1349-1355   ///
      str    PR13                    1356-1362   ///
      str    PR14                    1363-1369   ///
      str    PR15                    1370-1376   ///
      str    PR16                    1377-1383   ///
      str    PR17                    1384-1390   ///
      str    PR18                    1391-1397   ///
      str    PR19                    1398-1404   ///
      str    PR20                    1405-1411   ///
      int    PRCCS1                  1412-1414   ///
      int    PRCCS2                  1415-1417   ///
      int    PRCCS3                  1418-1420   ///
      int    PRCCS4                  1421-1423   ///
      int    PRCCS5                  1424-1426   ///
      int    PRCCS6                  1427-1429   ///
      int    PRCCS7                  1430-1432   ///
      int    PRCCS8                  1433-1435   ///
      int    PRCCS9                  1436-1438   ///
      int    PRCCS10                 1439-1441   ///
      int    PRCCS11                 1442-1444   ///
      int    PRCCS12                 1445-1447   ///
      int    PRCCS13                 1448-1450   ///
      int    PRCCS14                 1451-1453   ///
      int    PRCCS15                 1454-1456   ///
      int    PRCCS16                 1457-1459   ///
      int    PRCCS17                 1460-1462   ///
      int    PRCCS18                 1463-1465   ///
      int    PRCCS19                 1466-1468   ///
      int    PRCCS20                 1469-1471   ///
      long   PRDAY1                  1472-1476   ///
      long   PRDAY2                  1477-1481   ///
      long   PRDAY3                  1482-1486   ///
      long   PRDAY4                  1487-1491   ///
      long   PRDAY5                  1492-1496   ///
      long   PRDAY6                  1497-1501   ///
      long   PRDAY7                  1502-1506   ///
      long   PRDAY8                  1507-1511   ///
      long   PRDAY9                  1512-1516   ///
      long   PRDAY10                 1517-1521   ///
      long   PRDAY11                 1522-1526   ///
      long   PRDAY12                 1527-1531   ///
      long   PRDAY13                 1532-1536   ///
      long   PRDAY14                 1537-1541   ///
      long   PRDAY15                 1542-1546   ///
      long   PRDAY16                 1547-1551   ///
      long   PRDAY17                 1552-1556   ///
      long   PRDAY18                 1557-1561   ///
      long   PRDAY19                 1562-1566   ///
      long   PRDAY20                 1567-1571   ///
      int    PROCTYPE                1572-1574   ///
      int    PRVER                   1575-1577   ///
      str    PSTATE                  1578-1579   ///
      long   PSTCO                   1580-1584   ///
      long   PSTCO2                  1585-1589   ///
      str    PointOfOriginUB04       1590        ///
      str    PointOfOrigin_X         1591        ///
      str    PrimLang                1592-1594   ///
      byte   RACE                    1595-1596   ///
      str    RACE_X                  1597-1601   ///
      byte   READMIT                 1602-1603   ///
      byte   STATE_AS                1604-1605   ///
      byte   STATE_ED                1606-1607   ///
      byte   STATE_OS                1608-1609   ///
      double TOTCHG                  1610-1619   ///
      double TOTCHG_X                1620-1634   ///
      int    YEAR                    1635-1638   ///
      str    ZIP                     1639-1643   ///
      str    ZIP3                    1644-1646   ///
      int    ZIPINC_QRTL             1647-1649   ///
      str    TOWN                    1650-1653   ///
      int    AYEAR                   1654-1657   ///
      byte   BMONTH                  1658-1659   ///
      int    BYEAR                   1660-1663   ///
      byte   PRMONTH1                1664-1665   ///
      byte   PRMONTH2                1666-1667   ///
      byte   PRMONTH3                1668-1669   ///
      byte   PRMONTH4                1670-1671   ///
      byte   PRMONTH5                1672-1673   ///
      byte   PRMONTH6                1674-1675   ///
      byte   PRMONTH7                1676-1677   ///
      byte   PRMONTH8                1678-1679   ///
      byte   PRMONTH9                1680-1681   ///
      byte   PRMONTH10               1682-1683   ///
      byte   PRMONTH11               1684-1685   ///
      byte   PRMONTH12               1686-1687   ///
      byte   PRMONTH13               1688-1689   ///
      byte   PRMONTH14               1690-1691   ///
      byte   PRMONTH15               1692-1693   ///
      byte   PRMONTH16               1694-1695   ///
      byte   PRMONTH17               1696-1697   ///
      byte   PRMONTH18               1698-1699   ///
      byte   PRMONTH19               1700-1701   ///
      byte   PRMONTH20               1702-1703   ///
      int    PRYEAR1                 1704-1707   ///
      int    PRYEAR2                 1708-1711   ///
      int    PRYEAR3                 1712-1715   ///
      int    PRYEAR4                 1716-1719   ///
      int    PRYEAR5                 1720-1723   ///
      int    PRYEAR6                 1724-1727   ///
      int    PRYEAR7                 1728-1731   ///
      int    PRYEAR8                 1732-1735   ///
      int    PRYEAR9                 1736-1739   ///
      int    PRYEAR10                1740-1743   ///
      int    PRYEAR11                1744-1747   ///
      int    PRYEAR12                1748-1751   ///
      int    PRYEAR13                1752-1755   ///
      int    PRYEAR14                1756-1759   ///
      int    PRYEAR15                1760-1763   ///
      int    PRYEAR16                1764-1767   ///
      int    PRYEAR17                1768-1771   ///
      int    PRYEAR18                1772-1775   ///
      int    PRYEAR19                1776-1779   ///
      int    PRYEAR20                1780-1783   ///
      using  "NJ_SEDD_2014_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
label var AHOUR                    "Admission Hour"
label var AMONTH                   "Admission month"
label var ATYPE                    "Admission type"
label var AWEEKEND                 "Admission day is a weekend"
label var BILLTYPE                 "Type of bill, UB-04 coding"
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
label var DHOUR                    "Discharge Hour"
label var DIED                     "Died during hospitalization"
label var DISPUB04                 "Disposition of patient (UB-04 standard coding)"
label var DISPUNIFORM              "Disposition of patient (uniform)"
label var DISP_X                   "Disposition of patient (as received from source)"
label var DMONTH                   "Discharge month"
label var DQTR                     "Discharge quarter"
label var DSHOSPID                 "Data source hospital identifier"
label var DURATION                 "Elapsed time for hospital care in hours and minutes"
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
label var DXVER                    "Diagnosis Version"
label var DX_Visit_Reason1         "Reason for visit diagnosis 1"
label var DX_Visit_Reason2         "Reason for visit diagnosis 2"
label var DX_Visit_Reason3         "Reason for visit diagnosis 3"
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
label var ECODE12                  "E code 12"
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
label var E_CCS12                  "CCS: E Code 12"
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
label var E_POA12                  "E Code 12, present on admission indicator"
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MARITALSTATUSUB04        "Patient's marital status, UB-04 standard coding"
label var MDNUM1_R                 "Physician 1 number (re-identified)"
label var MDNUM2_R                 "Physician 2 number (re-identified)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
label var MOMNUM_R                 "Mother's number (re-identified)"
label var MRN_R                    "Medical record number (re-identified)"
label var NCHRONIC                 "Number of chronic conditions"
label var NCPT                     "Number of CPT/HCPCS procedures on this record"
label var NDX                      "Number of diagnoses on this record"
label var NECODE                   "Number of E codes on this record"
label var NEOMAT                   "Neonatal and/or maternal DX and/or PR"
label var NPR                      "Number of procedures on this record"
label var OPservice                "Indicator of outpatient service (as received from source)"
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
label var POA_Hosp_Edit3
    "Indication that a hospital reported POA as missing on all nonexempt diagnoses for 15 percent or more of discharges"
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
label var PrimLang                 "Primary language of patient"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var READMIT                  "Readmission"
label var STATE_AS                 "State Ambulatory Surgery service indicator"
label var STATE_ED                 "State Emergency Department service indicator"
label var STATE_OS                 "State Observation Stay service indicator"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
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
recode DHOUR                     (-999 -888 -666=.)
recode DIED                      (-9 -8 -6 -5=.)
recode DISPUB04                  (-9 -8 -6 -5=.)
recode DISPUNIFORM               (-9 -8 -6 -5=.)
recode DMONTH                    (-9 -8 -6 -5=.)
recode DQTR                      (-9 -8 -6 -5=.)
recode DURATION                  (-99999 -88888 -66666=.)
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
recode E_CCS12                   (-999 -888 -666=.)
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MDNUM1_R                  (-99999999 -88888888 -66666666=.)
recode MDNUM2_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MOMNUM_R                  (-99999999 -88888888 -66666666=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NCPT                      (-999 -888 -666=.)
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
recode STATE_AS                  (-9 -8 -6 -5=.)
recode STATE_ED                  (-9 -8 -6 -5=.)
recode STATE_OS                  (-9 -8 -6 -5=.)
recode TOTCHG                    (-999999999 -888888888 -666666666=.)
recode TOTCHG_X                  (-99999999999.99 -88888888888.88 -66666666666.66=.)
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

save "NJ_SEDD_2014_CORE.dta", replace
