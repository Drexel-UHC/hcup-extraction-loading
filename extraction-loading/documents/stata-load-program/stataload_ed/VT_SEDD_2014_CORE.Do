/*****************************************************************************
* Creation Date: 01/11/2016   
* Stataload_VT_SEDD_2014_CORE.Do
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
      int    CPTDAY1                   424-426   ///
      int    CPTDAY2                   427-429   ///
      int    CPTDAY3                   430-432   ///
      int    CPTDAY4                   433-435   ///
      int    CPTDAY5                   436-438   ///
      int    CPTDAY6                   439-441   ///
      int    CPTDAY7                   442-444   ///
      int    CPTDAY8                   445-447   ///
      int    CPTDAY9                   448-450   ///
      int    CPTDAY10                  451-453   ///
      int    CPTDAY11                  454-456   ///
      int    CPTDAY12                  457-459   ///
      int    CPTDAY13                  460-462   ///
      int    CPTDAY14                  463-465   ///
      int    CPTDAY15                  466-468   ///
      int    CPTDAY16                  469-471   ///
      int    CPTDAY17                  472-474   ///
      int    CPTDAY18                  475-477   ///
      int    CPTDAY19                  478-480   ///
      int    CPTDAY20                  481-483   ///
      int    CPTDAY21                  484-486   ///
      int    CPTDAY22                  487-489   ///
      int    CPTDAY23                  490-492   ///
      int    CPTDAY24                  493-495   ///
      int    CPTDAY25                  496-498   ///
      int    CPTDAY26                  499-501   ///
      int    CPTDAY27                  502-504   ///
      int    CPTDAY28                  505-507   ///
      int    CPTDAY29                  508-510   ///
      int    CPTDAY30                  511-513   ///
      int    CPTDAY31                  514-516   ///
      int    CPTDAY32                  517-519   ///
      int    CPTDAY33                  520-522   ///
      int    CPTDAY34                  523-525   ///
      int    CPTDAY35                  526-528   ///
      int    CPTDAY36                  529-531   ///
      int    CPTDAY37                  532-534   ///
      int    CPTDAY38                  535-537   ///
      int    CPTDAY39                  538-540   ///
      int    CPTDAY40                  541-543   ///
      int    CPTDAY41                  544-546   ///
      int    CPTDAY42                  547-549   ///
      int    CPTDAY43                  550-552   ///
      int    CPTDAY44                  553-555   ///
      int    CPTDAY45                  556-558   ///
      int    CPTDAY46                  559-561   ///
      int    CPTDAY47                  562-564   ///
      int    CPTDAY48                  565-567   ///
      int    CPTDAY49                  568-570   ///
      int    CPTDAY50                  571-573   ///
      str    CPTM1_1                   574-575   ///
      str    CPTM1_2                   576-577   ///
      str    CPTM1_3                   578-579   ///
      str    CPTM1_4                   580-581   ///
      str    CPTM1_5                   582-583   ///
      str    CPTM1_6                   584-585   ///
      str    CPTM1_7                   586-587   ///
      str    CPTM1_8                   588-589   ///
      str    CPTM1_9                   590-591   ///
      str    CPTM1_10                  592-593   ///
      str    CPTM1_11                  594-595   ///
      str    CPTM1_12                  596-597   ///
      str    CPTM1_13                  598-599   ///
      str    CPTM1_14                  600-601   ///
      str    CPTM1_15                  602-603   ///
      str    CPTM1_16                  604-605   ///
      str    CPTM1_17                  606-607   ///
      str    CPTM1_18                  608-609   ///
      str    CPTM1_19                  610-611   ///
      str    CPTM1_20                  612-613   ///
      str    CPTM1_21                  614-615   ///
      str    CPTM1_22                  616-617   ///
      str    CPTM1_23                  618-619   ///
      str    CPTM1_24                  620-621   ///
      str    CPTM1_25                  622-623   ///
      str    CPTM1_26                  624-625   ///
      str    CPTM1_27                  626-627   ///
      str    CPTM1_28                  628-629   ///
      str    CPTM1_29                  630-631   ///
      str    CPTM1_30                  632-633   ///
      str    CPTM1_31                  634-635   ///
      str    CPTM1_32                  636-637   ///
      str    CPTM1_33                  638-639   ///
      str    CPTM1_34                  640-641   ///
      str    CPTM1_35                  642-643   ///
      str    CPTM1_36                  644-645   ///
      str    CPTM1_37                  646-647   ///
      str    CPTM1_38                  648-649   ///
      str    CPTM1_39                  650-651   ///
      str    CPTM1_40                  652-653   ///
      str    CPTM1_41                  654-655   ///
      str    CPTM1_42                  656-657   ///
      str    CPTM1_43                  658-659   ///
      str    CPTM1_44                  660-661   ///
      str    CPTM1_45                  662-663   ///
      str    CPTM1_46                  664-665   ///
      str    CPTM1_47                  666-667   ///
      str    CPTM1_48                  668-669   ///
      str    CPTM1_49                  670-671   ///
      str    CPTM1_50                  672-673   ///
      str    CPTM2_1                   674-675   ///
      str    CPTM2_2                   676-677   ///
      str    CPTM2_3                   678-679   ///
      str    CPTM2_4                   680-681   ///
      str    CPTM2_5                   682-683   ///
      str    CPTM2_6                   684-685   ///
      str    CPTM2_7                   686-687   ///
      str    CPTM2_8                   688-689   ///
      str    CPTM2_9                   690-691   ///
      str    CPTM2_10                  692-693   ///
      str    CPTM2_11                  694-695   ///
      str    CPTM2_12                  696-697   ///
      str    CPTM2_13                  698-699   ///
      str    CPTM2_14                  700-701   ///
      str    CPTM2_15                  702-703   ///
      str    CPTM2_16                  704-705   ///
      str    CPTM2_17                  706-707   ///
      str    CPTM2_18                  708-709   ///
      str    CPTM2_19                  710-711   ///
      str    CPTM2_20                  712-713   ///
      str    CPTM2_21                  714-715   ///
      str    CPTM2_22                  716-717   ///
      str    CPTM2_23                  718-719   ///
      str    CPTM2_24                  720-721   ///
      str    CPTM2_25                  722-723   ///
      str    CPTM2_26                  724-725   ///
      str    CPTM2_27                  726-727   ///
      str    CPTM2_28                  728-729   ///
      str    CPTM2_29                  730-731   ///
      str    CPTM2_30                  732-733   ///
      str    CPTM2_31                  734-735   ///
      str    CPTM2_32                  736-737   ///
      str    CPTM2_33                  738-739   ///
      str    CPTM2_34                  740-741   ///
      str    CPTM2_35                  742-743   ///
      str    CPTM2_36                  744-745   ///
      str    CPTM2_37                  746-747   ///
      str    CPTM2_38                  748-749   ///
      str    CPTM2_39                  750-751   ///
      str    CPTM2_40                  752-753   ///
      str    CPTM2_41                  754-755   ///
      str    CPTM2_42                  756-757   ///
      str    CPTM2_43                  758-759   ///
      str    CPTM2_44                  760-761   ///
      str    CPTM2_45                  762-763   ///
      str    CPTM2_46                  764-765   ///
      str    CPTM2_47                  766-767   ///
      str    CPTM2_48                  768-769   ///
      str    CPTM2_49                  770-771   ///
      str    CPTM2_50                  772-773   ///
      byte   DIED                      774-775   ///
      byte   DISPUB04                  776-777   ///
      byte   DISPUNIFORM               778-779   ///
      str    DISP_X                    780-781   ///
      byte   DMONTH                    782-783   ///
      byte   DQTR                      784-785   ///
      str    DSHOSPID                  786-802   ///
      str    DX1                       803-809   ///
      str    DX2                       810-816   ///
      str    DX3                       817-823   ///
      str    DX4                       824-830   ///
      str    DX5                       831-837   ///
      str    DX6                       838-844   ///
      str    DX7                       845-851   ///
      str    DX8                       852-858   ///
      str    DX9                       859-865   ///
      str    DX10                      866-872   ///
      str    DX11                      873-879   ///
      str    DX12                      880-886   ///
      str    DX13                      887-893   ///
      str    DX14                      894-900   ///
      str    DX15                      901-907   ///
      str    DX16                      908-914   ///
      str    DX17                      915-921   ///
      str    DX18                      922-928   ///
      str    DX19                      929-935   ///
      str    DX20                      936-942   ///
      int    DXCCS1                    943-946   ///
      int    DXCCS2                    947-950   ///
      int    DXCCS3                    951-954   ///
      int    DXCCS4                    955-958   ///
      int    DXCCS5                    959-962   ///
      int    DXCCS6                    963-966   ///
      int    DXCCS7                    967-970   ///
      int    DXCCS8                    971-974   ///
      int    DXCCS9                    975-978   ///
      int    DXCCS10                   979-982   ///
      int    DXCCS11                   983-986   ///
      int    DXCCS12                   987-990   ///
      int    DXCCS13                   991-994   ///
      int    DXCCS14                   995-998   ///
      int    DXCCS15                  999-1002   ///
      int    DXCCS16                 1003-1006   ///
      int    DXCCS17                 1007-1010   ///
      int    DXCCS18                 1011-1014   ///
      int    DXCCS19                 1015-1018   ///
      int    DXCCS20                 1019-1022   ///
      int    DXVER                   1023-1025   ///
      str    DX_Visit_Reason1        1026-1032   ///
      str    DX_Visit_Reason2        1033-1039   ///
      long   DaysToEvent             1040-1045   ///
      str    ECODE1                  1046-1052   ///
      str    ECODE2                  1053-1059   ///
      str    ECODE3                  1060-1066   ///
      str    ECODE4                  1067-1073   ///
      str    ECODE5                  1074-1080   ///
      str    ECODE6                  1081-1087   ///
      str    ECODE7                  1088-1094   ///
      str    ECODE8                  1095-1101   ///
      int    E_CCS1                  1102-1105   ///
      int    E_CCS2                  1106-1109   ///
      int    E_CCS3                  1110-1113   ///
      int    E_CCS4                  1114-1117   ///
      int    E_CCS5                  1118-1121   ///
      int    E_CCS6                  1122-1125   ///
      int    E_CCS7                  1126-1129   ///
      int    E_CCS8                  1130-1133   ///
      byte   FEMALE                  1134-1135   ///
      byte   HCUP_ED                 1136-1137   ///
      byte   HCUP_OS                 1138-1139   ///
      str    HISPANIC_X              1140        ///
      int    HOSPBRTH                1141-1143   ///
      str    HOSPST                  1144-1145   ///
      str    HOSP_NPI                1146-1155   ///
      double KEY                     1156-1170   ///
      long   LOS                     1171-1175   ///
      long   LOS_X                   1176-1181   ///
      byte   MEDINCSTQ               1182-1183   ///
      long   MRN_R                   1184-1192   ///
      int    NCHRONIC                1193-1195   ///
      int    NCPT                    1196-1199   ///
      int    NDX                     1200-1202   ///
      byte   NECODE                  1203-1204   ///
      byte   NEOMAT                  1205-1206   ///
      int    NPR                     1207-1209   ///
      byte   ORPROC                  1210-1211   ///
      byte   PAY1                    1212-1213   ///
      str    PAY1_X                  1214-1215   ///
      byte   PAY2                    1216-1217   ///
      str    PAY2_X                  1218-1219   ///
      byte   PAY3                    1220-1221   ///
      str    PAY3_X                  1222-1223   ///
      str    PAYER1_X                1224-1229   ///
      str    PAYER2_X                1230-1235   ///
      int    PL_CBSA                 1236-1238   ///
      byte   PL_NCHS                 1239-1240   ///
      byte   PL_RUCC                 1241-1242   ///
      byte   PL_UIC                  1243-1244   ///
      byte   PL_UR_CAT4              1245-1246   ///
      str    PR1                     1247-1253   ///
      str    PR2                     1254-1260   ///
      str    PR3                     1261-1267   ///
      str    PR4                     1268-1274   ///
      str    PR5                     1275-1281   ///
      str    PR6                     1282-1288   ///
      str    PR7                     1289-1295   ///
      str    PR8                     1296-1302   ///
      str    PR9                     1303-1309   ///
      str    PR10                    1310-1316   ///
      str    PR11                    1317-1323   ///
      str    PR12                    1324-1330   ///
      str    PR13                    1331-1337   ///
      str    PR14                    1338-1344   ///
      str    PR15                    1345-1351   ///
      str    PR16                    1352-1358   ///
      str    PR17                    1359-1365   ///
      str    PR18                    1366-1372   ///
      str    PR19                    1373-1379   ///
      str    PR20                    1380-1386   ///
      int    PRCCS1                  1387-1389   ///
      int    PRCCS2                  1390-1392   ///
      int    PRCCS3                  1393-1395   ///
      int    PRCCS4                  1396-1398   ///
      int    PRCCS5                  1399-1401   ///
      int    PRCCS6                  1402-1404   ///
      int    PRCCS7                  1405-1407   ///
      int    PRCCS8                  1408-1410   ///
      int    PRCCS9                  1411-1413   ///
      int    PRCCS10                 1414-1416   ///
      int    PRCCS11                 1417-1419   ///
      int    PRCCS12                 1420-1422   ///
      int    PRCCS13                 1423-1425   ///
      int    PRCCS14                 1426-1428   ///
      int    PRCCS15                 1429-1431   ///
      int    PRCCS16                 1432-1434   ///
      int    PRCCS17                 1435-1437   ///
      int    PRCCS18                 1438-1440   ///
      int    PRCCS19                 1441-1443   ///
      int    PRCCS20                 1444-1446   ///
      long   PRDAY1                  1447-1451   ///
      long   PRDAY2                  1452-1456   ///
      long   PRDAY3                  1457-1461   ///
      long   PRDAY4                  1462-1466   ///
      long   PRDAY5                  1467-1471   ///
      long   PRDAY6                  1472-1476   ///
      long   PRDAY7                  1477-1481   ///
      long   PRDAY8                  1482-1486   ///
      long   PRDAY9                  1487-1491   ///
      long   PRDAY10                 1492-1496   ///
      long   PRDAY11                 1497-1501   ///
      long   PRDAY12                 1502-1506   ///
      long   PRDAY13                 1507-1511   ///
      long   PRDAY14                 1512-1516   ///
      long   PRDAY15                 1517-1521   ///
      long   PRDAY16                 1522-1526   ///
      long   PRDAY17                 1527-1531   ///
      long   PRDAY18                 1532-1536   ///
      long   PRDAY19                 1537-1541   ///
      long   PRDAY20                 1542-1546   ///
      int    PROCTYPE                1547-1549   ///
      int    PRVER                   1550-1552   ///
      str    PSTATE                  1553-1554   ///
      long   PSTCO                   1555-1559   ///
      long   PSTCO2                  1560-1564   ///
      str    PointOfOriginUB04       1565        ///
      str    PointOfOrigin_X         1566        ///
      byte   RACE                    1567-1568   ///
      str    RACE_X                  1569        ///
      byte   READMIT                 1570-1571   ///
      byte   STATE_AS                1572-1573   ///
      byte   STATE_ED                1574-1575   ///
      byte   STATE_OS                1576-1577   ///
      double TOTCHG                  1578-1587   ///
      double TOTCHG_X                1588-1602   ///
      long   VisitLink               1603-1611   ///
      int    YEAR                    1612-1615   ///
      str    ZIP                     1616-1620   ///
      str    ZIP3                    1621-1623   ///
      int    ZIPINC_QRTL             1624-1626   ///
      str    TOWN                    1627-1630   ///
      int    AYEAR                   1631-1634   ///
      byte   BMONTH                  1635-1636   ///
      int    BYEAR                   1637-1640   ///
      byte   PRMONTH1                1641-1642   ///
      byte   PRMONTH2                1643-1644   ///
      byte   PRMONTH3                1645-1646   ///
      byte   PRMONTH4                1647-1648   ///
      byte   PRMONTH5                1649-1650   ///
      byte   PRMONTH6                1651-1652   ///
      byte   PRMONTH7                1653-1654   ///
      byte   PRMONTH8                1655-1656   ///
      byte   PRMONTH9                1657-1658   ///
      byte   PRMONTH10               1659-1660   ///
      byte   PRMONTH11               1661-1662   ///
      byte   PRMONTH12               1663-1664   ///
      byte   PRMONTH13               1665-1666   ///
      byte   PRMONTH14               1667-1668   ///
      byte   PRMONTH15               1669-1670   ///
      byte   PRMONTH16               1671-1672   ///
      byte   PRMONTH17               1673-1674   ///
      byte   PRMONTH18               1675-1676   ///
      byte   PRMONTH19               1677-1678   ///
      byte   PRMONTH20               1679-1680   ///
      int    PRYEAR1                 1681-1684   ///
      int    PRYEAR2                 1685-1688   ///
      int    PRYEAR3                 1689-1692   ///
      int    PRYEAR4                 1693-1696   ///
      int    PRYEAR5                 1697-1700   ///
      int    PRYEAR6                 1701-1704   ///
      int    PRYEAR7                 1705-1708   ///
      int    PRYEAR8                 1709-1712   ///
      int    PRYEAR9                 1713-1716   ///
      int    PRYEAR10                1717-1720   ///
      int    PRYEAR11                1721-1724   ///
      int    PRYEAR12                1725-1728   ///
      int    PRYEAR13                1729-1732   ///
      int    PRYEAR14                1733-1736   ///
      int    PRYEAR15                1737-1740   ///
      int    PRYEAR16                1741-1744   ///
      int    PRYEAR17                1745-1748   ///
      int    PRYEAR18                1749-1752   ///
      int    PRYEAR19                1753-1756   ///
      int    PRYEAR20                1757-1760   ///
      using  "VT_SEDD_2014_CORE.ASC"

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
label var DXVER                    "Diagnosis Version"
label var DX_Visit_Reason1         "Reason for visit diagnosis 1"
label var DX_Visit_Reason2         "Reason for visit diagnosis 2"
label var DaysToEvent              "Days from 'start date' to admission"
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
label var STATE_AS                 "State Ambulatory Surgery service indicator"
label var STATE_ED                 "State Emergency Department service indicator"
label var STATE_OS                 "State Observation Stay service indicator"
label var TOTCHG                   "Total charges (cleaned)"
label var TOTCHG_X                 "Total charges (as received from source)"
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
recode FEMALE                    (-9 -8 -6 -5=.)
recode HCUP_ED                   (-9 -8 -6 -5=.)
recode HCUP_OS                   (-9 -8 -6 -5=.)
recode HOSPBRTH                  (-99 -88 -66=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
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

save "VT_SEDD_2014_CORE.dta", replace
