/*****************************************************************************
* Creation Date: 10/28/2015   
* Modify Date:   10/19/2017 - matches data created on date above.
* Stataload_NJ_SID_2014_CORE.Do
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
      str    CPTM1_1                   428-429   ///
      str    CPTM1_2                   430-431   ///
      str    CPTM1_3                   432-433   ///
      str    CPTM1_4                   434-435   ///
      str    CPTM1_5                   436-437   ///
      str    CPTM1_6                   438-439   ///
      str    CPTM1_7                   440-441   ///
      str    CPTM1_8                   442-443   ///
      str    CPTM1_9                   444-445   ///
      str    CPTM1_10                  446-447   ///
      str    CPTM1_11                  448-449   ///
      str    CPTM1_12                  450-451   ///
      str    CPTM1_13                  452-453   ///
      str    CPTM1_14                  454-455   ///
      str    CPTM1_15                  456-457   ///
      str    CPTM1_16                  458-459   ///
      str    CPTM1_17                  460-461   ///
      str    CPTM1_18                  462-463   ///
      str    CPTM1_19                  464-465   ///
      str    CPTM1_20                  466-467   ///
      str    CPTM1_21                  468-469   ///
      str    CPTM1_22                  470-471   ///
      str    CPTM1_23                  472-473   ///
      str    CPTM1_24                  474-475   ///
      str    CPTM1_25                  476-477   ///
      str    CPTM1_26                  478-479   ///
      str    CPTM1_27                  480-481   ///
      str    CPTM1_28                  482-483   ///
      str    CPTM1_29                  484-485   ///
      str    CPTM1_30                  486-487   ///
      str    CPTM1_31                  488-489   ///
      str    CPTM1_32                  490-491   ///
      str    CPTM1_33                  492-493   ///
      str    CPTM1_34                  494-495   ///
      str    CPTM1_35                  496-497   ///
      str    CPTM1_36                  498-499   ///
      str    CPTM1_37                  500-501   ///
      str    CPTM1_38                  502-503   ///
      str    CPTM1_39                  504-505   ///
      str    CPTM1_40                  506-507   ///
      str    CPTM1_41                  508-509   ///
      str    CPTM1_42                  510-511   ///
      str    CPTM1_43                  512-513   ///
      str    CPTM1_44                  514-515   ///
      str    CPTM1_45                  516-517   ///
      str    CPTM1_46                  518-519   ///
      str    CPTM1_47                  520-521   ///
      str    CPTM1_48                  522-523   ///
      str    CPTM1_49                  524-525   ///
      str    CPTM1_50                  526-527   ///
      str    CPTM2_1                   528-529   ///
      str    CPTM2_2                   530-531   ///
      str    CPTM2_3                   532-533   ///
      str    CPTM2_4                   534-535   ///
      str    CPTM2_5                   536-537   ///
      str    CPTM2_6                   538-539   ///
      str    CPTM2_7                   540-541   ///
      str    CPTM2_8                   542-543   ///
      str    CPTM2_9                   544-545   ///
      str    CPTM2_10                  546-547   ///
      str    CPTM2_11                  548-549   ///
      str    CPTM2_12                  550-551   ///
      str    CPTM2_13                  552-553   ///
      str    CPTM2_14                  554-555   ///
      str    CPTM2_15                  556-557   ///
      str    CPTM2_16                  558-559   ///
      str    CPTM2_17                  560-561   ///
      str    CPTM2_18                  562-563   ///
      str    CPTM2_19                  564-565   ///
      str    CPTM2_20                  566-567   ///
      str    CPTM2_21                  568-569   ///
      str    CPTM2_22                  570-571   ///
      str    CPTM2_23                  572-573   ///
      str    CPTM2_24                  574-575   ///
      str    CPTM2_25                  576-577   ///
      str    CPTM2_26                  578-579   ///
      str    CPTM2_27                  580-581   ///
      str    CPTM2_28                  582-583   ///
      str    CPTM2_29                  584-585   ///
      str    CPTM2_30                  586-587   ///
      str    CPTM2_31                  588-589   ///
      str    CPTM2_32                  590-591   ///
      str    CPTM2_33                  592-593   ///
      str    CPTM2_34                  594-595   ///
      str    CPTM2_35                  596-597   ///
      str    CPTM2_36                  598-599   ///
      str    CPTM2_37                  600-601   ///
      str    CPTM2_38                  602-603   ///
      str    CPTM2_39                  604-605   ///
      str    CPTM2_40                  606-607   ///
      str    CPTM2_41                  608-609   ///
      str    CPTM2_42                  610-611   ///
      str    CPTM2_43                  612-613   ///
      str    CPTM2_44                  614-615   ///
      str    CPTM2_45                  616-617   ///
      str    CPTM2_46                  618-619   ///
      str    CPTM2_47                  620-621   ///
      str    CPTM2_48                  622-623   ///
      str    CPTM2_49                  624-625   ///
      str    CPTM2_50                  626-627   ///
      int    DHOUR                     628-631   ///
      byte   DIED                      632-633   ///
      byte   DISPUB04                  634-635   ///
      byte   DISPUNIFORM               636-637   ///
      str    DISP_X                    638-639   ///
      byte   DMONTH                    640-641   ///
      byte   DQTR                      642-643   ///
      int    DRG                       644-646   ///
      int    DRG24                     647-649   ///
      byte   DRGVER                    650-651   ///
      int    DRG_NoPOA                 652-654   ///
      str    DSHOSPID                  655-671   ///
      str    DX1                       672-678   ///
      str    DX2                       679-685   ///
      str    DX3                       686-692   ///
      str    DX4                       693-699   ///
      str    DX5                       700-706   ///
      str    DX6                       707-713   ///
      str    DX7                       714-720   ///
      str    DX8                       721-727   ///
      str    DX9                       728-734   ///
      str    DX10                      735-741   ///
      str    DX11                      742-748   ///
      str    DX12                      749-755   ///
      str    DX13                      756-762   ///
      str    DX14                      763-769   ///
      str    DX15                      770-776   ///
      str    DX16                      777-783   ///
      str    DX17                      784-790   ///
      str    DX18                      791-797   ///
      str    DX19                      798-804   ///
      str    DX20                      805-811   ///
      str    DX21                      812-818   ///
      str    DX22                      819-825   ///
      str    DX23                      826-832   ///
      str    DX24                      833-839   ///
      int    DXCCS1                    840-843   ///
      int    DXCCS2                    844-847   ///
      int    DXCCS3                    848-851   ///
      int    DXCCS4                    852-855   ///
      int    DXCCS5                    856-859   ///
      int    DXCCS6                    860-863   ///
      int    DXCCS7                    864-867   ///
      int    DXCCS8                    868-871   ///
      int    DXCCS9                    872-875   ///
      int    DXCCS10                   876-879   ///
      int    DXCCS11                   880-883   ///
      int    DXCCS12                   884-887   ///
      int    DXCCS13                   888-891   ///
      int    DXCCS14                   892-895   ///
      int    DXCCS15                   896-899   ///
      int    DXCCS16                   900-903   ///
      int    DXCCS17                   904-907   ///
      int    DXCCS18                   908-911   ///
      int    DXCCS19                   912-915   ///
      int    DXCCS20                   916-919   ///
      int    DXCCS21                   920-923   ///
      int    DXCCS22                   924-927   ///
      int    DXCCS23                   928-931   ///
      int    DXCCS24                   932-935   ///
      str    DXPOA1                    936       ///
      str    DXPOA2                    937       ///
      str    DXPOA3                    938       ///
      str    DXPOA4                    939       ///
      str    DXPOA5                    940       ///
      str    DXPOA6                    941       ///
      str    DXPOA7                    942       ///
      str    DXPOA8                    943       ///
      str    DXPOA9                    944       ///
      str    DXPOA10                   945       ///
      str    DXPOA11                   946       ///
      str    DXPOA12                   947       ///
      str    DXPOA13                   948       ///
      str    DXPOA14                   949       ///
      str    DXPOA15                   950       ///
      str    DXPOA16                   951       ///
      str    DXPOA17                   952       ///
      str    DXPOA18                   953       ///
      str    DXPOA19                   954       ///
      str    DXPOA20                   955       ///
      str    DXPOA21                   956       ///
      str    DXPOA22                   957       ///
      str    DXPOA23                   958       ///
      str    DXPOA24                   959       ///
      int    DXVER                     960-962   ///
      str    DX_Admitting              963-969   ///
      str    ECODE1                    970-976   ///
      str    ECODE2                    977-983   ///
      str    ECODE3                    984-990   ///
      str    ECODE4                    991-997   ///
      str    ECODE5                   998-1004   ///
      str    ECODE6                  1005-1011   ///
      str    ECODE7                  1012-1018   ///
      str    ECODE8                  1019-1025   ///
      str    ECODE9                  1026-1032   ///
      str    ECODE10                 1033-1039   ///
      int    E_CCS1                  1040-1043   ///
      int    E_CCS2                  1044-1047   ///
      int    E_CCS3                  1048-1051   ///
      int    E_CCS4                  1052-1055   ///
      int    E_CCS5                  1056-1059   ///
      int    E_CCS6                  1060-1063   ///
      int    E_CCS7                  1064-1067   ///
      int    E_CCS8                  1068-1071   ///
      int    E_CCS9                  1072-1075   ///
      int    E_CCS10                 1076-1079   ///
      str    E_POA1                  1080        ///
      str    E_POA2                  1081        ///
      str    E_POA3                  1082        ///
      str    E_POA4                  1083        ///
      str    E_POA5                  1084        ///
      str    E_POA6                  1085        ///
      str    E_POA7                  1086        ///
      str    E_POA8                  1087        ///
      str    E_POA9                  1088        ///
      str    E_POA10                 1089        ///
      byte   FEMALE                  1090-1091   ///
      byte   HCUP_ED                 1092-1093   ///
      byte   HCUP_OS                 1094-1095   ///
      str    HISPANIC_X              1096-1100   ///
      int    HOSPBRTH                1101-1103   ///
      str    HOSPST                  1104-1105   ///
      double KEY                     1106-1120   ///
      long   LOS                     1121-1125   ///
      long   LOS_X                   1126-1131   ///
      str    MARITALSTATUSUB04       1132        ///
      byte   MDC                     1133-1134   ///
      byte   MDC24                   1135-1136   ///
      byte   MDC_NoPOA               1137-1138   ///
      long   MDNUM1_R                1139-1147   ///
      long   MDNUM2_R                1148-1156   ///
      byte   MEDINCSTQ               1157-1158   ///
      long   MOMNUM_R                1159-1167   ///
      long   MRN_R                   1168-1176   ///
      int    NCHRONIC                1177-1179   ///
      int    NCPT                    1180-1183   ///
      int    NDX                     1184-1186   ///
      byte   NECODE                  1187-1188   ///
      byte   NEOMAT                  1189-1190   ///
      int    NPR                     1191-1193   ///
      byte   ORPROC                  1194-1195   ///
      long   OS_TIME                 1196-1203   ///
      str    P7EDSRC_X               1204-1205   ///
      byte   PAY1                    1206-1207   ///
      str    PAY1_X                  1208-1210   ///
      byte   PAY2                    1211-1212   ///
      str    PAY2_X                  1213-1215   ///
      byte   PAY3                    1216-1217   ///
      str    PAY3_X                  1218-1220   ///
      int    PL_CBSA                 1221-1223   ///
      byte   PL_NCHS                 1224-1225   ///
      byte   PL_RUCC                 1226-1227   ///
      byte   PL_UIC                  1228-1229   ///
      byte   PL_UR_CAT4              1230-1231   ///
      byte   POA_Disch_Edit1         1232-1233   ///
      byte   POA_Disch_Edit2         1234-1235   ///
      byte   POA_Hosp_Edit1          1236-1237   ///
      byte   POA_Hosp_Edit2          1238-1239   ///
      byte   POA_Hosp_Edit3          1240-1241   ///
      double POA_Hosp_Edit3_Value    1242-1249   ///
      str    PR1                     1250-1256   ///
      str    PR2                     1257-1263   ///
      str    PR3                     1264-1270   ///
      str    PR4                     1271-1277   ///
      str    PR5                     1278-1284   ///
      str    PR6                     1285-1291   ///
      str    PR7                     1292-1298   ///
      str    PR8                     1299-1305   ///
      str    PR9                     1306-1312   ///
      str    PR10                    1313-1319   ///
      str    PR11                    1320-1326   ///
      str    PR12                    1327-1333   ///
      str    PR13                    1334-1340   ///
      str    PR14                    1341-1347   ///
      str    PR15                    1348-1354   ///
      str    PR16                    1355-1361   ///
      str    PR17                    1362-1368   ///
      str    PR18                    1369-1375   ///
      str    PR19                    1376-1382   ///
      str    PR20                    1383-1389   ///
      str    PR21                    1390-1396   ///
      str    PR22                    1397-1403   ///
      str    PR23                    1404-1410   ///
      str    PR24                    1411-1417   ///
      str    PR25                    1418-1424   ///
      int    PRCCS1                  1425-1427   ///
      int    PRCCS2                  1428-1430   ///
      int    PRCCS3                  1431-1433   ///
      int    PRCCS4                  1434-1436   ///
      int    PRCCS5                  1437-1439   ///
      int    PRCCS6                  1440-1442   ///
      int    PRCCS7                  1443-1445   ///
      int    PRCCS8                  1446-1448   ///
      int    PRCCS9                  1449-1451   ///
      int    PRCCS10                 1452-1454   ///
      int    PRCCS11                 1455-1457   ///
      int    PRCCS12                 1458-1460   ///
      int    PRCCS13                 1461-1463   ///
      int    PRCCS14                 1464-1466   ///
      int    PRCCS15                 1467-1469   ///
      int    PRCCS16                 1470-1472   ///
      int    PRCCS17                 1473-1475   ///
      int    PRCCS18                 1476-1478   ///
      int    PRCCS19                 1479-1481   ///
      int    PRCCS20                 1482-1484   ///
      int    PRCCS21                 1485-1487   ///
      int    PRCCS22                 1488-1490   ///
      int    PRCCS23                 1491-1493   ///
      int    PRCCS24                 1494-1496   ///
      int    PRCCS25                 1497-1499   ///
      long   PRDAY1                  1500-1504   ///
      long   PRDAY2                  1505-1509   ///
      long   PRDAY3                  1510-1514   ///
      long   PRDAY4                  1515-1519   ///
      long   PRDAY5                  1520-1524   ///
      long   PRDAY6                  1525-1529   ///
      long   PRDAY7                  1530-1534   ///
      long   PRDAY8                  1535-1539   ///
      long   PRDAY9                  1540-1544   ///
      long   PRDAY10                 1545-1549   ///
      long   PRDAY11                 1550-1554   ///
      long   PRDAY12                 1555-1559   ///
      long   PRDAY13                 1560-1564   ///
      long   PRDAY14                 1565-1569   ///
      long   PRDAY15                 1570-1574   ///
      long   PRDAY16                 1575-1579   ///
      long   PRDAY17                 1580-1584   ///
      long   PRDAY18                 1585-1589   ///
      long   PRDAY19                 1590-1594   ///
      long   PRDAY20                 1595-1599   ///
      long   PRDAY21                 1600-1604   ///
      long   PRDAY22                 1605-1609   ///
      long   PRDAY23                 1610-1614   ///
      long   PRDAY24                 1615-1619   ///
      long   PRDAY25                 1620-1624   ///
      int    PROCTYPE                1625-1627   ///
      int    PRVER                   1628-1630   ///
      str    PSTATE                  1631-1632   ///
      long   PSTCO                   1633-1637   ///
      long   PSTCO2                  1638-1642   ///
      str    PointOfOriginUB04       1643        ///
      str    PointOfOrigin_X         1644        ///
      str    PrimLang                1645-1647   ///
      byte   RACE                    1648-1649   ///
      str    RACE_X                  1650-1654   ///
      byte   READMIT                 1655-1656   ///
      byte   SERVICELINE             1657-1658   ///
      double TOTCHG                  1659-1668   ///
      double TOTCHG_X                1669-1683   ///
      byte   TRAN_IN                 1684-1685   ///
      byte   TRAN_OUT                1686-1687   ///
      int    YEAR                    1688-1691   ///
      str    ZIP                     1692-1696   ///
      str    ZIP3                    1697-1699   ///
      int    ZIPINC_QRTL             1700-1702   ///
      str    TOWN                    1703-1706   ///
      int    AYEAR                   1707-1710   ///
      byte   BMONTH                  1711-1712   ///
      int    BYEAR                   1713-1716   ///
      byte   PRMONTH1                1717-1718   ///
      byte   PRMONTH2                1719-1720   ///
      byte   PRMONTH3                1721-1722   ///
      byte   PRMONTH4                1723-1724   ///
      byte   PRMONTH5                1725-1726   ///
      byte   PRMONTH6                1727-1728   ///
      byte   PRMONTH7                1729-1730   ///
      byte   PRMONTH8                1731-1732   ///
      byte   PRMONTH9                1733-1734   ///
      byte   PRMONTH10               1735-1736   ///
      byte   PRMONTH11               1737-1738   ///
      byte   PRMONTH12               1739-1740   ///
      byte   PRMONTH13               1741-1742   ///
      byte   PRMONTH14               1743-1744   ///
      byte   PRMONTH15               1745-1746   ///
      byte   PRMONTH16               1747-1748   ///
      byte   PRMONTH17               1749-1750   ///
      byte   PRMONTH18               1751-1752   ///
      byte   PRMONTH19               1753-1754   ///
      byte   PRMONTH20               1755-1756   ///
      byte   PRMONTH21               1757-1758   ///
      byte   PRMONTH22               1759-1760   ///
      byte   PRMONTH23               1761-1762   ///
      byte   PRMONTH24               1763-1764   ///
      byte   PRMONTH25               1765-1766   ///
      int    PRYEAR1                 1767-1770   ///
      int    PRYEAR2                 1771-1774   ///
      int    PRYEAR3                 1775-1778   ///
      int    PRYEAR4                 1779-1782   ///
      int    PRYEAR5                 1783-1786   ///
      int    PRYEAR6                 1787-1790   ///
      int    PRYEAR7                 1791-1794   ///
      int    PRYEAR8                 1795-1798   ///
      int    PRYEAR9                 1799-1802   ///
      int    PRYEAR10                1803-1806   ///
      int    PRYEAR11                1807-1810   ///
      int    PRYEAR12                1811-1814   ///
      int    PRYEAR13                1815-1818   ///
      int    PRYEAR14                1819-1822   ///
      int    PRYEAR15                1823-1826   ///
      int    PRYEAR16                1827-1830   ///
      int    PRYEAR17                1831-1834   ///
      int    PRYEAR18                1835-1838   ///
      int    PRYEAR19                1839-1842   ///
      int    PRYEAR20                1843-1846   ///
      int    PRYEAR21                1847-1850   ///
      int    PRYEAR22                1851-1854   ///
      int    PRYEAR23                1855-1858   ///
      int    PRYEAR24                1859-1862   ///
      int    PRYEAR25                1863-1866   ///
      using  "NJ_SID_2014_CORE.ASC"

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
label var DX_Admitting             "Admitting Diagnosis Code"
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
label var MDC                      "MDC in effect on discharge date"
label var MDC24                    "MDC, version 24"
label var MDC_NoPOA                "MDC in use on discharge date, calculated without POA"
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
label var PrimLang                 "Primary language of patient"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
label var READMIT                  "Readmission"
label var SERVICELINE              "Hospital Service Line"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
label var TRAN_IN                  "Transfer in indicator"
label var TRAN_OUT                 "Transfer out indicator"
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
recode READMIT                   (-9 -8 -6 -5=.)
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

save "NJ_SID_2014_CORE.dta", replace
