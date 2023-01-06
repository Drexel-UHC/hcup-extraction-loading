/*****************************************************************************
* Creation Date: 10/22/2015   
* Stataload_WI_SEDD_2014_CORE.Do
* This program will load the 2014 WI ASCII CORE File into Stata.
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
      str    BILLTYPE                   16- 19   ///
      str    CPT1                       20- 24   ///
      str    CPT2                       25- 29   ///
      str    CPT3                       30- 34   ///
      str    CPT4                       35- 39   ///
      str    CPT5                       40- 44   ///
      str    CPT6                       45- 49   ///
      str    CPT7                       50- 54   ///
      str    CPT8                       55- 59   ///
      str    CPT9                       60- 64   ///
      str    CPT10                      65- 69   ///
      str    CPT11                      70- 74   ///
      str    CPT12                      75- 79   ///
      str    CPT13                      80- 84   ///
      str    CPT14                      85- 89   ///
      str    CPT15                      90- 94   ///
      str    CPT16                      95- 99   ///
      str    CPT17                     100-104   ///
      str    CPT18                     105-109   ///
      str    CPT19                     110-114   ///
      str    CPT20                     115-119   ///
      str    CPT21                     120-124   ///
      str    CPT22                     125-129   ///
      str    CPT23                     130-134   ///
      str    CPT24                     135-139   ///
      str    CPT25                     140-144   ///
      str    CPT26                     145-149   ///
      str    CPT27                     150-154   ///
      str    CPT28                     155-159   ///
      str    CPT29                     160-164   ///
      str    CPT30                     165-169   ///
      str    CPT31                     170-174   ///
      str    CPT32                     175-179   ///
      str    CPT33                     180-184   ///
      str    CPT34                     185-189   ///
      str    CPT35                     190-194   ///
      str    CPT36                     195-199   ///
      str    CPT37                     200-204   ///
      str    CPT38                     205-209   ///
      str    CPT39                     210-214   ///
      str    CPT40                     215-219   ///
      str    CPT41                     220-224   ///
      str    CPT42                     225-229   ///
      str    CPT43                     230-234   ///
      str    CPT44                     235-239   ///
      str    CPT45                     240-244   ///
      str    CPT46                     245-249   ///
      str    CPT47                     250-254   ///
      str    CPT48                     255-259   ///
      str    CPT49                     260-264   ///
      str    CPT50                     265-269   ///
      int    CPTCCS1                   270-272   ///
      int    CPTCCS2                   273-275   ///
      int    CPTCCS3                   276-278   ///
      int    CPTCCS4                   279-281   ///
      int    CPTCCS5                   282-284   ///
      int    CPTCCS6                   285-287   ///
      int    CPTCCS7                   288-290   ///
      int    CPTCCS8                   291-293   ///
      int    CPTCCS9                   294-296   ///
      int    CPTCCS10                  297-299   ///
      int    CPTCCS11                  300-302   ///
      int    CPTCCS12                  303-305   ///
      int    CPTCCS13                  306-308   ///
      int    CPTCCS14                  309-311   ///
      int    CPTCCS15                  312-314   ///
      int    CPTCCS16                  315-317   ///
      int    CPTCCS17                  318-320   ///
      int    CPTCCS18                  321-323   ///
      int    CPTCCS19                  324-326   ///
      int    CPTCCS20                  327-329   ///
      int    CPTCCS21                  330-332   ///
      int    CPTCCS22                  333-335   ///
      int    CPTCCS23                  336-338   ///
      int    CPTCCS24                  339-341   ///
      int    CPTCCS25                  342-344   ///
      int    CPTCCS26                  345-347   ///
      int    CPTCCS27                  348-350   ///
      int    CPTCCS28                  351-353   ///
      int    CPTCCS29                  354-356   ///
      int    CPTCCS30                  357-359   ///
      int    CPTCCS31                  360-362   ///
      int    CPTCCS32                  363-365   ///
      int    CPTCCS33                  366-368   ///
      int    CPTCCS34                  369-371   ///
      int    CPTCCS35                  372-374   ///
      int    CPTCCS36                  375-377   ///
      int    CPTCCS37                  378-380   ///
      int    CPTCCS38                  381-383   ///
      int    CPTCCS39                  384-386   ///
      int    CPTCCS40                  387-389   ///
      int    CPTCCS41                  390-392   ///
      int    CPTCCS42                  393-395   ///
      int    CPTCCS43                  396-398   ///
      int    CPTCCS44                  399-401   ///
      int    CPTCCS45                  402-404   ///
      int    CPTCCS46                  405-407   ///
      int    CPTCCS47                  408-410   ///
      int    CPTCCS48                  411-413   ///
      int    CPTCCS49                  414-416   ///
      int    CPTCCS50                  417-419   ///
      str    CPTM1_1                   420-421   ///
      str    CPTM1_2                   422-423   ///
      str    CPTM1_3                   424-425   ///
      str    CPTM1_4                   426-427   ///
      str    CPTM1_5                   428-429   ///
      str    CPTM1_6                   430-431   ///
      str    CPTM1_7                   432-433   ///
      str    CPTM1_8                   434-435   ///
      str    CPTM1_9                   436-437   ///
      str    CPTM1_10                  438-439   ///
      str    CPTM1_11                  440-441   ///
      str    CPTM1_12                  442-443   ///
      str    CPTM1_13                  444-445   ///
      str    CPTM1_14                  446-447   ///
      str    CPTM1_15                  448-449   ///
      str    CPTM1_16                  450-451   ///
      str    CPTM1_17                  452-453   ///
      str    CPTM1_18                  454-455   ///
      str    CPTM1_19                  456-457   ///
      str    CPTM1_20                  458-459   ///
      str    CPTM1_21                  460-461   ///
      str    CPTM1_22                  462-463   ///
      str    CPTM1_23                  464-465   ///
      str    CPTM1_24                  466-467   ///
      str    CPTM1_25                  468-469   ///
      str    CPTM1_26                  470-471   ///
      str    CPTM1_27                  472-473   ///
      str    CPTM1_28                  474-475   ///
      str    CPTM1_29                  476-477   ///
      str    CPTM1_30                  478-479   ///
      str    CPTM1_31                  480-481   ///
      str    CPTM1_32                  482-483   ///
      str    CPTM1_33                  484-485   ///
      str    CPTM1_34                  486-487   ///
      str    CPTM1_35                  488-489   ///
      str    CPTM1_36                  490-491   ///
      str    CPTM1_37                  492-493   ///
      str    CPTM1_38                  494-495   ///
      str    CPTM1_39                  496-497   ///
      str    CPTM1_40                  498-499   ///
      str    CPTM1_41                  500-501   ///
      str    CPTM1_42                  502-503   ///
      str    CPTM1_43                  504-505   ///
      str    CPTM1_44                  506-507   ///
      str    CPTM1_45                  508-509   ///
      str    CPTM1_46                  510-511   ///
      str    CPTM1_47                  512-513   ///
      str    CPTM1_48                  514-515   ///
      str    CPTM1_49                  516-517   ///
      str    CPTM1_50                  518-519   ///
      str    CPTM2_1                   520-521   ///
      str    CPTM2_2                   522-523   ///
      str    CPTM2_3                   524-525   ///
      str    CPTM2_4                   526-527   ///
      str    CPTM2_5                   528-529   ///
      str    CPTM2_6                   530-531   ///
      str    CPTM2_7                   532-533   ///
      str    CPTM2_8                   534-535   ///
      str    CPTM2_9                   536-537   ///
      str    CPTM2_10                  538-539   ///
      str    CPTM2_11                  540-541   ///
      str    CPTM2_12                  542-543   ///
      str    CPTM2_13                  544-545   ///
      str    CPTM2_14                  546-547   ///
      str    CPTM2_15                  548-549   ///
      str    CPTM2_16                  550-551   ///
      str    CPTM2_17                  552-553   ///
      str    CPTM2_18                  554-555   ///
      str    CPTM2_19                  556-557   ///
      str    CPTM2_20                  558-559   ///
      str    CPTM2_21                  560-561   ///
      str    CPTM2_22                  562-563   ///
      str    CPTM2_23                  564-565   ///
      str    CPTM2_24                  566-567   ///
      str    CPTM2_25                  568-569   ///
      str    CPTM2_26                  570-571   ///
      str    CPTM2_27                  572-573   ///
      str    CPTM2_28                  574-575   ///
      str    CPTM2_29                  576-577   ///
      str    CPTM2_30                  578-579   ///
      str    CPTM2_31                  580-581   ///
      str    CPTM2_32                  582-583   ///
      str    CPTM2_33                  584-585   ///
      str    CPTM2_34                  586-587   ///
      str    CPTM2_35                  588-589   ///
      str    CPTM2_36                  590-591   ///
      str    CPTM2_37                  592-593   ///
      str    CPTM2_38                  594-595   ///
      str    CPTM2_39                  596-597   ///
      str    CPTM2_40                  598-599   ///
      str    CPTM2_41                  600-601   ///
      str    CPTM2_42                  602-603   ///
      str    CPTM2_43                  604-605   ///
      str    CPTM2_44                  606-607   ///
      str    CPTM2_45                  608-609   ///
      str    CPTM2_46                  610-611   ///
      str    CPTM2_47                  612-613   ///
      str    CPTM2_48                  614-615   ///
      str    CPTM2_49                  616-617   ///
      str    CPTM2_50                  618-619   ///
      byte   DIED                      620-621   ///
      byte   DISPUB04                  622-623   ///
      byte   DISPUNIFORM               624-625   ///
      str    DISP_X                    626-627   ///
      byte   DMONTH                    628-629   ///
      byte   DQTR                      630-631   ///
      str    DSHOSPID                  632-648   ///
      str    DX1                       649-655   ///
      str    DX2                       656-662   ///
      str    DX3                       663-669   ///
      str    DX4                       670-676   ///
      str    DX5                       677-683   ///
      str    DX6                       684-690   ///
      str    DX7                       691-697   ///
      str    DX8                       698-704   ///
      str    DX9                       705-711   ///
      str    DX10                      712-718   ///
      str    DX11                      719-725   ///
      str    DX12                      726-732   ///
      str    DX13                      733-739   ///
      str    DX14                      740-746   ///
      str    DX15                      747-753   ///
      str    DX16                      754-760   ///
      str    DX17                      761-767   ///
      str    DX18                      768-774   ///
      str    DX19                      775-781   ///
      str    DX20                      782-788   ///
      str    DX21                      789-795   ///
      str    DX22                      796-802   ///
      str    DX23                      803-809   ///
      str    DX24                      810-816   ///
      str    DX25                      817-823   ///
      str    DX26                      824-830   ///
      str    DX27                      831-837   ///
      str    DX28                      838-844   ///
      str    DX29                      845-851   ///
      str    DX30                      852-858   ///
      str    DX31                      859-865   ///
      str    DX32                      866-872   ///
      str    DX33                      873-879   ///
      str    DX34                      880-886   ///
      str    DX35                      887-893   ///
      str    DX36                      894-900   ///
      str    DX37                      901-907   ///
      str    DX38                      908-914   ///
      str    DX39                      915-921   ///
      str    DX40                      922-928   ///
      str    DX41                      929-935   ///
      str    DX42                      936-942   ///
      str    DX43                      943-949   ///
      str    DX44                      950-956   ///
      str    DX45                      957-963   ///
      str    DX46                      964-970   ///
      str    DX47                      971-977   ///
      str    DX48                      978-984   ///
      str    DX49                      985-991   ///
      int    DXCCS1                    992-995   ///
      int    DXCCS2                    996-999   ///
      int    DXCCS3                  1000-1003   ///
      int    DXCCS4                  1004-1007   ///
      int    DXCCS5                  1008-1011   ///
      int    DXCCS6                  1012-1015   ///
      int    DXCCS7                  1016-1019   ///
      int    DXCCS8                  1020-1023   ///
      int    DXCCS9                  1024-1027   ///
      int    DXCCS10                 1028-1031   ///
      int    DXCCS11                 1032-1035   ///
      int    DXCCS12                 1036-1039   ///
      int    DXCCS13                 1040-1043   ///
      int    DXCCS14                 1044-1047   ///
      int    DXCCS15                 1048-1051   ///
      int    DXCCS16                 1052-1055   ///
      int    DXCCS17                 1056-1059   ///
      int    DXCCS18                 1060-1063   ///
      int    DXCCS19                 1064-1067   ///
      int    DXCCS20                 1068-1071   ///
      int    DXCCS21                 1072-1075   ///
      int    DXCCS22                 1076-1079   ///
      int    DXCCS23                 1080-1083   ///
      int    DXCCS24                 1084-1087   ///
      int    DXCCS25                 1088-1091   ///
      int    DXCCS26                 1092-1095   ///
      int    DXCCS27                 1096-1099   ///
      int    DXCCS28                 1100-1103   ///
      int    DXCCS29                 1104-1107   ///
      int    DXCCS30                 1108-1111   ///
      int    DXCCS31                 1112-1115   ///
      int    DXCCS32                 1116-1119   ///
      int    DXCCS33                 1120-1123   ///
      int    DXCCS34                 1124-1127   ///
      int    DXCCS35                 1128-1131   ///
      int    DXCCS36                 1132-1135   ///
      int    DXCCS37                 1136-1139   ///
      int    DXCCS38                 1140-1143   ///
      int    DXCCS39                 1144-1147   ///
      int    DXCCS40                 1148-1151   ///
      int    DXCCS41                 1152-1155   ///
      int    DXCCS42                 1156-1159   ///
      int    DXCCS43                 1160-1163   ///
      int    DXCCS44                 1164-1167   ///
      int    DXCCS45                 1168-1171   ///
      int    DXCCS46                 1172-1175   ///
      int    DXCCS47                 1176-1179   ///
      int    DXCCS48                 1180-1183   ///
      int    DXCCS49                 1184-1187   ///
      int    DXVER                   1188-1190   ///
      str    DX_Visit_Reason1        1191-1197   ///
      str    DX_Visit_Reason2        1198-1204   ///
      str    DX_Visit_Reason3        1205-1211   ///
      long   DaysToEvent             1212-1217   ///
      str    ECODE1                  1218-1224   ///
      str    ECODE2                  1225-1231   ///
      str    ECODE3                  1232-1238   ///
      str    ECODE4                  1239-1245   ///
      str    ECODE5                  1246-1252   ///
      str    ECODE6                  1253-1259   ///
      str    ECODE7                  1260-1266   ///
      str    ECODE8                  1267-1273   ///
      str    ECODE9                  1274-1280   ///
      int    E_CCS1                  1281-1284   ///
      int    E_CCS2                  1285-1288   ///
      int    E_CCS3                  1289-1292   ///
      int    E_CCS4                  1293-1296   ///
      int    E_CCS5                  1297-1300   ///
      int    E_CCS6                  1301-1304   ///
      int    E_CCS7                  1305-1308   ///
      int    E_CCS8                  1309-1312   ///
      int    E_CCS9                  1313-1316   ///
      byte   FEMALE                  1317-1318   ///
      byte   HCUP_ED                 1319-1320   ///
      byte   HCUP_OS                 1321-1322   ///
      str    HISPANIC_X              1323        ///
      int    HOSPBRTH                1324-1326   ///
      str    HOSPST                  1327-1328   ///
      str    HOSP_NPI                1329-1338   ///
      byte   Homeless                1339-1340   ///
      double KEY                     1341-1355   ///
      long   LOS                     1356-1360   ///
      long   LOS_X                   1361-1366   ///
      str    MDSPEC1                 1367-1369   ///
      str    MDSPEC2                 1370-1372   ///
      byte   MEDINCSTQ               1373-1374   ///
      long   MRN_R                   1375-1383   ///
      int    NCHRONIC                1384-1386   ///
      int    NCPT                    1387-1389   ///
      int    NDX                     1390-1392   ///
      byte   NECODE                  1393-1394   ///
      byte   NEOMAT                  1395-1396   ///
      int    NPR                     1397-1399   ///
      str    OPservice               1400        ///
      byte   ORPROC                  1401-1402   ///
      long   OS_TIME                 1403-1410   ///
      byte   PAY1                    1411-1412   ///
      str    PAY1_X                  1413-1417   ///
      byte   PAY2                    1418-1419   ///
      str    PAY2_X                  1420-1424   ///
      int    PL_CBSA                 1425-1427   ///
      byte   PL_NCHS                 1428-1429   ///
      byte   PL_RUCC                 1430-1431   ///
      byte   PL_UIC                  1432-1433   ///
      byte   PL_UR_CAT4              1434-1435   ///
      str    PR1                     1436-1442   ///
      str    PR2                     1443-1449   ///
      str    PR3                     1450-1456   ///
      str    PR4                     1457-1463   ///
      str    PR5                     1464-1470   ///
      str    PR6                     1471-1477   ///
      str    PR7                     1478-1484   ///
      str    PR8                     1485-1491   ///
      str    PR9                     1492-1498   ///
      str    PR10                    1499-1505   ///
      str    PR11                    1506-1512   ///
      str    PR12                    1513-1519   ///
      str    PR13                    1520-1526   ///
      str    PR14                    1527-1533   ///
      str    PR15                    1534-1540   ///
      str    PR16                    1541-1547   ///
      str    PR17                    1548-1554   ///
      str    PR18                    1555-1561   ///
      str    PR19                    1562-1568   ///
      str    PR20                    1569-1575   ///
      str    PR21                    1576-1582   ///
      str    PR22                    1583-1589   ///
      str    PR23                    1590-1596   ///
      str    PR24                    1597-1603   ///
      str    PR25                    1604-1610   ///
      str    PR26                    1611-1617   ///
      str    PR27                    1618-1624   ///
      str    PR28                    1625-1631   ///
      str    PR29                    1632-1638   ///
      str    PR30                    1639-1645   ///
      str    PR31                    1646-1652   ///
      str    PR32                    1653-1659   ///
      str    PR33                    1660-1666   ///
      str    PR34                    1667-1673   ///
      str    PR35                    1674-1680   ///
      str    PR36                    1681-1687   ///
      str    PR37                    1688-1694   ///
      str    PR38                    1695-1701   ///
      str    PR39                    1702-1708   ///
      str    PR40                    1709-1715   ///
      str    PR41                    1716-1722   ///
      str    PR42                    1723-1729   ///
      str    PR43                    1730-1736   ///
      str    PR44                    1737-1743   ///
      str    PR45                    1744-1750   ///
      str    PR46                    1751-1757   ///
      str    PR47                    1758-1764   ///
      str    PR48                    1765-1771   ///
      str    PR49                    1772-1778   ///
      str    PR50                    1779-1785   ///
      int    PRCCS1                  1786-1788   ///
      int    PRCCS2                  1789-1791   ///
      int    PRCCS3                  1792-1794   ///
      int    PRCCS4                  1795-1797   ///
      int    PRCCS5                  1798-1800   ///
      int    PRCCS6                  1801-1803   ///
      int    PRCCS7                  1804-1806   ///
      int    PRCCS8                  1807-1809   ///
      int    PRCCS9                  1810-1812   ///
      int    PRCCS10                 1813-1815   ///
      int    PRCCS11                 1816-1818   ///
      int    PRCCS12                 1819-1821   ///
      int    PRCCS13                 1822-1824   ///
      int    PRCCS14                 1825-1827   ///
      int    PRCCS15                 1828-1830   ///
      int    PRCCS16                 1831-1833   ///
      int    PRCCS17                 1834-1836   ///
      int    PRCCS18                 1837-1839   ///
      int    PRCCS19                 1840-1842   ///
      int    PRCCS20                 1843-1845   ///
      int    PRCCS21                 1846-1848   ///
      int    PRCCS22                 1849-1851   ///
      int    PRCCS23                 1852-1854   ///
      int    PRCCS24                 1855-1857   ///
      int    PRCCS25                 1858-1860   ///
      int    PRCCS26                 1861-1863   ///
      int    PRCCS27                 1864-1866   ///
      int    PRCCS28                 1867-1869   ///
      int    PRCCS29                 1870-1872   ///
      int    PRCCS30                 1873-1875   ///
      int    PRCCS31                 1876-1878   ///
      int    PRCCS32                 1879-1881   ///
      int    PRCCS33                 1882-1884   ///
      int    PRCCS34                 1885-1887   ///
      int    PRCCS35                 1888-1890   ///
      int    PRCCS36                 1891-1893   ///
      int    PRCCS37                 1894-1896   ///
      int    PRCCS38                 1897-1899   ///
      int    PRCCS39                 1900-1902   ///
      int    PRCCS40                 1903-1905   ///
      int    PRCCS41                 1906-1908   ///
      int    PRCCS42                 1909-1911   ///
      int    PRCCS43                 1912-1914   ///
      int    PRCCS44                 1915-1917   ///
      int    PRCCS45                 1918-1920   ///
      int    PRCCS46                 1921-1923   ///
      int    PRCCS47                 1924-1926   ///
      int    PRCCS48                 1927-1929   ///
      int    PRCCS49                 1930-1932   ///
      int    PRCCS50                 1933-1935   ///
      long   PRDAY1                  1936-1940   ///
      int    PROCTYPE                1941-1943   ///
      int    PRVER                   1944-1946   ///
      str    PSTATE                  1947-1948   ///
      long   PSTCO2                  1949-1953   ///
      str    PointOfOriginUB04       1954        ///
      str    PointOfOrigin_X         1955        ///
      byte   RACE                    1956-1957   ///
      str    RACE_X                  1958-1959   ///
      byte   STATE_AS                1960-1961   ///
      byte   STATE_ED                1962-1963   ///
      byte   STATE_OS                1964-1965   ///
      double TOTCHG                  1966-1975   ///
      double TOTCHG_X                1976-1990   ///
      long   VisitLink               1991-1999   ///
      int    YEAR                    2000-2003   ///
      str    ZIP                     2004-2008   ///
      str    ZIP3                    2009-2011   ///
      int    ZIPINC_QRTL             2012-2014   ///
      int    AYEAR                   2015-2018   ///
      byte   BMONTH                  2019-2020   ///
      int    BYEAR                   2021-2024   ///
      byte   PRMONTH1                2025-2026   ///
      int    PRYEAR1                 2027-2030   ///
      using  "WI_SEDD_2014_CORE.ASC"

***  Assign labels to the data elements ***
label var AGE                      "Age in years at admission"
label var AGEDAY                   "Age in days (when age < 1 year)"
label var AGEMONTH                 "Age in months (when age < 11 years)"
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
label var DX32                     "Diagnosis 32"
label var DX33                     "Diagnosis 33"
label var DX34                     "Diagnosis 34"
label var DX35                     "Diagnosis 35"
label var DX36                     "Diagnosis 36"
label var DX37                     "Diagnosis 37"
label var DX38                     "Diagnosis 38"
label var DX39                     "Diagnosis 39"
label var DX40                     "Diagnosis 40"
label var DX41                     "Diagnosis 41"
label var DX42                     "Diagnosis 42"
label var DX43                     "Diagnosis 43"
label var DX44                     "Diagnosis 44"
label var DX45                     "Diagnosis 45"
label var DX46                     "Diagnosis 46"
label var DX47                     "Diagnosis 47"
label var DX48                     "Diagnosis 48"
label var DX49                     "Diagnosis 49"
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
label var DXCCS32                  "CCS: diagnosis 32"
label var DXCCS33                  "CCS: diagnosis 33"
label var DXCCS34                  "CCS: diagnosis 34"
label var DXCCS35                  "CCS: diagnosis 35"
label var DXCCS36                  "CCS: diagnosis 36"
label var DXCCS37                  "CCS: diagnosis 37"
label var DXCCS38                  "CCS: diagnosis 38"
label var DXCCS39                  "CCS: diagnosis 39"
label var DXCCS40                  "CCS: diagnosis 40"
label var DXCCS41                  "CCS: diagnosis 41"
label var DXCCS42                  "CCS: diagnosis 42"
label var DXCCS43                  "CCS: diagnosis 43"
label var DXCCS44                  "CCS: diagnosis 44"
label var DXCCS45                  "CCS: diagnosis 45"
label var DXCCS46                  "CCS: diagnosis 46"
label var DXCCS47                  "CCS: diagnosis 47"
label var DXCCS48                  "CCS: diagnosis 48"
label var DXCCS49                  "CCS: diagnosis 49"
label var DXVER                    "Diagnosis Version"
label var DX_Visit_Reason1         "Reason for visit diagnosis 1"
label var DX_Visit_Reason2         "Reason for visit diagnosis 2"
label var DX_Visit_Reason3         "Reason for visit diagnosis 3"
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
label var FEMALE                   "Indicator of sex"
label var HCUP_ED                  "HCUP Emergency Department service indicator"
label var HCUP_OS                  "HCUP Observation Stay service indicator"
label var HISPANIC_X               "Hispanic ethnicity (as received from source)"
label var HOSPBRTH                 "Indicator of birth in this hospital"
label var HOSPST                   "Hospital state postal code"
label var HOSP_NPI                 "Hospital NPI"
label var Homeless                 "Indicator that patient is homeless"
label var KEY                      "HCUP record identifier"
label var LOS                      "Length of stay (cleaned)"
label var LOS_X                    "Length of stay (as received from source)"
label var MDSPEC1                  "Physician 1 specialty (as received from source)"
label var MDSPEC2                  "Physician 2 specialty (as received from source)"
label var MEDINCSTQ                "Median household income state quartile for patient ZIP Code"
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
label var PR31                     "Procedure 31"
label var PR32                     "Procedure 32"
label var PR33                     "Procedure 33"
label var PR34                     "Procedure 34"
label var PR35                     "Procedure 35"
label var PR36                     "Procedure 36"
label var PR37                     "Procedure 37"
label var PR38                     "Procedure 38"
label var PR39                     "Procedure 39"
label var PR40                     "Procedure 40"
label var PR41                     "Procedure 41"
label var PR42                     "Procedure 42"
label var PR43                     "Procedure 43"
label var PR44                     "Procedure 44"
label var PR45                     "Procedure 45"
label var PR46                     "Procedure 46"
label var PR47                     "Procedure 47"
label var PR48                     "Procedure 48"
label var PR49                     "Procedure 49"
label var PR50                     "Procedure 50"
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
label var PRCCS32                  "CCS: procedure 32"
label var PRCCS33                  "CCS: procedure 33"
label var PRCCS34                  "CCS: procedure 34"
label var PRCCS35                  "CCS: procedure 35"
label var PRCCS36                  "CCS: procedure 36"
label var PRCCS37                  "CCS: procedure 37"
label var PRCCS38                  "CCS: procedure 38"
label var PRCCS39                  "CCS: procedure 39"
label var PRCCS40                  "CCS: procedure 40"
label var PRCCS41                  "CCS: procedure 41"
label var PRCCS42                  "CCS: procedure 42"
label var PRCCS43                  "CCS: procedure 43"
label var PRCCS44                  "CCS: procedure 44"
label var PRCCS45                  "CCS: procedure 45"
label var PRCCS46                  "CCS: procedure 46"
label var PRCCS47                  "CCS: procedure 47"
label var PRCCS48                  "CCS: procedure 48"
label var PRCCS49                  "CCS: procedure 49"
label var PRCCS50                  "CCS: procedure 50"
label var PRDAY1                   "Number of days from admission to PR1"
label var PROCTYPE                 "Procedure type indicator"
label var PRVER                    "Procedure Version"
label var PSTATE                   "Patient State postal code"
label var PSTCO2                   "Patient state/county FIPS code, possibly derived from ZIP Code"
label var PointOfOriginUB04        "Point of origin for admission or visit, UB-04 standard coding"
label var PointOfOrigin_X          "Point of origin for admission or visit, as received from source"
label var RACE                     "Race (uniform)"
label var RACE_X                   "Race (as received from source)"
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
label var AYEAR                    "Admission year"
label var BMONTH                   "Birth month"
label var BYEAR                    "Birth year"
label var PRMONTH1                 "Month of procedure 1"
label var PRYEAR1                  "Year of procedure 1"

*** Convert special values to missing values ***
recode AGE                       (-99 -88 -66=.)
recode AGEDAY                    (-99 -88 -66=.)
recode AGEMONTH                  (-99 -88 -66=.)
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
recode DXCCS32                   (-999 -888 -666=.)
recode DXCCS33                   (-999 -888 -666=.)
recode DXCCS34                   (-999 -888 -666=.)
recode DXCCS35                   (-999 -888 -666=.)
recode DXCCS36                   (-999 -888 -666=.)
recode DXCCS37                   (-999 -888 -666=.)
recode DXCCS38                   (-999 -888 -666=.)
recode DXCCS39                   (-999 -888 -666=.)
recode DXCCS40                   (-999 -888 -666=.)
recode DXCCS41                   (-999 -888 -666=.)
recode DXCCS42                   (-999 -888 -666=.)
recode DXCCS43                   (-999 -888 -666=.)
recode DXCCS44                   (-999 -888 -666=.)
recode DXCCS45                   (-999 -888 -666=.)
recode DXCCS46                   (-999 -888 -666=.)
recode DXCCS47                   (-999 -888 -666=.)
recode DXCCS48                   (-999 -888 -666=.)
recode DXCCS49                   (-999 -888 -666=.)
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
recode Homeless                  (-9 -8 -6 -5=.)
recode LOS                       (-9999 -8888 -6666=.)
recode LOS_X                     (-99999 -88888 -66666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode NCHRONIC                  (-99 -88 -66=.)
recode NCPT                      (-99 -88 -66=.)
recode NDX                       (-99 -88 -66=.)
recode NECODE                    (-9 -8 -6 -5=.)
recode NEOMAT                    (-9 -8 -6 -5=.)
recode NPR                       (-99 -88 -66=.)
recode ORPROC                    (-9 -8 -6 -5=.)
recode OS_TIME                   (-9999999 -8888888 -6666666=.)
recode PAY1                      (-9 -8 -6 -5=.)
recode PAY2                      (-9 -8 -6 -5=.)
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
recode PRCCS31                   (-99 -88 -66=.)
recode PRCCS32                   (-99 -88 -66=.)
recode PRCCS33                   (-99 -88 -66=.)
recode PRCCS34                   (-99 -88 -66=.)
recode PRCCS35                   (-99 -88 -66=.)
recode PRCCS36                   (-99 -88 -66=.)
recode PRCCS37                   (-99 -88 -66=.)
recode PRCCS38                   (-99 -88 -66=.)
recode PRCCS39                   (-99 -88 -66=.)
recode PRCCS40                   (-99 -88 -66=.)
recode PRCCS41                   (-99 -88 -66=.)
recode PRCCS42                   (-99 -88 -66=.)
recode PRCCS43                   (-99 -88 -66=.)
recode PRCCS44                   (-99 -88 -66=.)
recode PRCCS45                   (-99 -88 -66=.)
recode PRCCS46                   (-99 -88 -66=.)
recode PRCCS47                   (-99 -88 -66=.)
recode PRCCS48                   (-99 -88 -66=.)
recode PRCCS49                   (-99 -88 -66=.)
recode PRCCS50                   (-99 -88 -66=.)
recode PRDAY1                    (-9999 -8888 -6666=.)
recode PROCTYPE                  (-99 -88 -66=.)
recode PRVER                     (-99 -88 -66=.)
recode PSTCO2                    (-9999 -8888 -6666=.)
recode RACE                      (-9 -8 -6 -5=.)
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
recode PRYEAR1                   (-999 -888 -666=.)

save "WI_SEDD_2014_CORE.dta", replace
