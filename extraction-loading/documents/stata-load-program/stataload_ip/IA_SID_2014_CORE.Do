/*****************************************************************************
* Create Date:   04/05/2016
* Modify Date:   10/19/2017 - matches data created on date above.
* Stataload_IA_SID_2014_CORE.Do
* This program will load the 2014 IA ASCII CORE File into Stata.
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
      str    DX26                      216-222   ///
      str    DX27                      223-229   ///
      str    DX28                      230-236   ///
      str    DX29                      237-243   ///
      str    DX30                      244-250   ///
      str    DX31                      251-257   ///
      str    DX32                      258-264   ///
      str    DX33                      265-271   ///
      str    DX34                      272-278   ///
      str    DX35                      279-285   ///
      str    DX36                      286-292   ///
      str    DX37                      293-299   ///
      str    DX38                      300-306   ///
      str    DX39                      307-313   ///
      str    DX40                      314-320   ///
      str    DX41                      321-327   ///
      str    DX42                      328-334   ///
      str    DX43                      335-341   ///
      str    DX44                      342-348   ///
      str    DX45                      349-355   ///
      str    DX46                      356-362   ///
      str    DX47                      363-369   ///
      str    DX48                      370-376   ///
      str    DX49                      377-383   ///
      str    DX50                      384-390   ///
      int    DXCCS1                    391-394   ///
      int    DXCCS2                    395-398   ///
      int    DXCCS3                    399-402   ///
      int    DXCCS4                    403-406   ///
      int    DXCCS5                    407-410   ///
      int    DXCCS6                    411-414   ///
      int    DXCCS7                    415-418   ///
      int    DXCCS8                    419-422   ///
      int    DXCCS9                    423-426   ///
      int    DXCCS10                   427-430   ///
      int    DXCCS11                   431-434   ///
      int    DXCCS12                   435-438   ///
      int    DXCCS13                   439-442   ///
      int    DXCCS14                   443-446   ///
      int    DXCCS15                   447-450   ///
      int    DXCCS16                   451-454   ///
      int    DXCCS17                   455-458   ///
      int    DXCCS18                   459-462   ///
      int    DXCCS19                   463-466   ///
      int    DXCCS20                   467-470   ///
      int    DXCCS21                   471-474   ///
      int    DXCCS22                   475-478   ///
      int    DXCCS23                   479-482   ///
      int    DXCCS24                   483-486   ///
      int    DXCCS25                   487-490   ///
      int    DXCCS26                   491-494   ///
      int    DXCCS27                   495-498   ///
      int    DXCCS28                   499-502   ///
      int    DXCCS29                   503-506   ///
      int    DXCCS30                   507-510   ///
      int    DXCCS31                   511-514   ///
      int    DXCCS32                   515-518   ///
      int    DXCCS33                   519-522   ///
      int    DXCCS34                   523-526   ///
      int    DXCCS35                   527-530   ///
      int    DXCCS36                   531-534   ///
      int    DXCCS37                   535-538   ///
      int    DXCCS38                   539-542   ///
      int    DXCCS39                   543-546   ///
      int    DXCCS40                   547-550   ///
      int    DXCCS41                   551-554   ///
      int    DXCCS42                   555-558   ///
      int    DXCCS43                   559-562   ///
      int    DXCCS44                   563-566   ///
      int    DXCCS45                   567-570   ///
      int    DXCCS46                   571-574   ///
      int    DXCCS47                   575-578   ///
      int    DXCCS48                   579-582   ///
      int    DXCCS49                   583-586   ///
      int    DXCCS50                   587-590   ///
      str    DXPOA1                    591       ///
      str    DXPOA2                    592       ///
      str    DXPOA3                    593       ///
      str    DXPOA4                    594       ///
      str    DXPOA5                    595       ///
      str    DXPOA6                    596       ///
      str    DXPOA7                    597       ///
      str    DXPOA8                    598       ///
      str    DXPOA9                    599       ///
      str    DXPOA10                   600       ///
      str    DXPOA11                   601       ///
      str    DXPOA12                   602       ///
      str    DXPOA13                   603       ///
      str    DXPOA14                   604       ///
      str    DXPOA15                   605       ///
      str    DXPOA16                   606       ///
      str    DXPOA17                   607       ///
      str    DXPOA18                   608       ///
      str    DXPOA19                   609       ///
      str    DXPOA20                   610       ///
      str    DXPOA21                   611       ///
      str    DXPOA22                   612       ///
      str    DXPOA23                   613       ///
      str    DXPOA24                   614       ///
      str    DXPOA25                   615       ///
      str    DXPOA26                   616       ///
      str    DXPOA27                   617       ///
      str    DXPOA28                   618       ///
      str    DXPOA29                   619       ///
      str    DXPOA30                   620       ///
      str    DXPOA31                   621       ///
      str    DXPOA32                   622       ///
      str    DXPOA33                   623       ///
      str    DXPOA34                   624       ///
      str    DXPOA35                   625       ///
      str    DXPOA36                   626       ///
      str    DXPOA37                   627       ///
      str    DXPOA38                   628       ///
      str    DXPOA39                   629       ///
      str    DXPOA40                   630       ///
      str    DXPOA41                   631       ///
      str    DXPOA42                   632       ///
      str    DXPOA43                   633       ///
      str    DXPOA44                   634       ///
      str    DXPOA45                   635       ///
      str    DXPOA46                   636       ///
      str    DXPOA47                   637       ///
      str    DXPOA48                   638       ///
      str    DXPOA49                   639       ///
      str    DXPOA50                   640       ///
      int    DXVER                     641-643   ///
      str    DX_Admitting              644-650   ///
      long   DaysToEvent               651-656   ///
      str    ECODE1                    657-663   ///
      str    ECODE2                    664-670   ///
      str    ECODE3                    671-677   ///
      str    ECODE4                    678-684   ///
      str    ECODE5                    685-691   ///
      str    ECODE6                    692-698   ///
      str    ECODE7                    699-705   ///
      int    E_CCS1                    706-709   ///
      int    E_CCS2                    710-713   ///
      int    E_CCS3                    714-717   ///
      int    E_CCS4                    718-721   ///
      int    E_CCS5                    722-725   ///
      int    E_CCS6                    726-729   ///
      int    E_CCS7                    730-733   ///
      str    E_POA1                    734       ///
      str    E_POA2                    735       ///
      str    E_POA3                    736       ///
      str    E_POA4                    737       ///
      str    E_POA5                    738       ///
      str    E_POA6                    739       ///
      str    E_POA7                    740       ///
      byte   FEMALE                    741-742   ///
      byte   HCUP_ED                   743-744   ///
      byte   HCUP_OS                   745-746   ///
      str    HISPANIC_X                747       ///
      int    HOSPBRTH                  748-750   ///
      str    HOSPST                    751-752   ///
      byte   HospitalUnit              753-754   ///
      double KEY                       755-769   ///
      long   LOS                       770-774   ///
      long   LOS_X                     775-780   ///
      byte   MDC                       781-782   ///
      byte   MDC24                     783-784   ///
      byte   MDC_NoPOA                 785-786   ///
      long   MDNUM1_R                  787-795   ///
      long   MDNUM2_R                  796-804   ///
      long   MDNUM3_R                  805-813   ///
      byte   MEDINCSTQ                 814-815   ///
      long   MRN_R                     816-824   ///
      int    NCHRONIC                  825-827   ///
      int    NDX                       828-830   ///
      byte   NECODE                    831-832   ///
      byte   NEOMAT                    833-834   ///
      int    NPR                       835-837   ///
      byte   ORPROC                    838-839   ///
      str    P7EDSRC_X                 840-841   ///
      byte   PAY1                      842-843   ///
      str    PAY1_X                    844-847   ///
      byte   PAY2                      848-849   ///
      str    PAY2_X                    850-853   ///
      byte   PAY3                      854-855   ///
      str    PAY3_X                    856-859   ///
      int    PL_CBSA                   860-862   ///
      byte   PL_NCHS                   863-864   ///
      byte   PL_RUCC                   865-866   ///
      byte   PL_UIC                    867-868   ///
      byte   PL_UR_CAT4                869-870   ///
      byte   POA_Disch_Edit1           871-872   ///
      byte   POA_Disch_Edit2           873-874   ///
      byte   POA_Hosp_Edit1            875-876   ///
      byte   POA_Hosp_Edit2            877-878   ///
      byte   POA_Hosp_Edit3            879-880   ///
      double POA_Hosp_Edit3_Value      881-888   ///
      str    PR1                       889-895   ///
      str    PR2                       896-902   ///
      str    PR3                       903-909   ///
      str    PR4                       910-916   ///
      str    PR5                       917-923   ///
      str    PR6                       924-930   ///
      str    PR7                       931-937   ///
      str    PR8                       938-944   ///
      str    PR9                       945-951   ///
      str    PR10                      952-958   ///
      str    PR11                      959-965   ///
      str    PR12                      966-972   ///
      str    PR13                      973-979   ///
      str    PR14                      980-986   ///
      str    PR15                      987-993   ///
      str    PR16                     994-1000   ///
      str    PR17                    1001-1007   ///
      str    PR18                    1008-1014   ///
      str    PR19                    1015-1021   ///
      str    PR20                    1022-1028   ///
      str    PR21                    1029-1035   ///
      str    PR22                    1036-1042   ///
      str    PR23                    1043-1049   ///
      str    PR24                    1050-1056   ///
      str    PR25                    1057-1063   ///
      str    PR26                    1064-1070   ///
      str    PR27                    1071-1077   ///
      str    PR28                    1078-1084   ///
      str    PR29                    1085-1091   ///
      str    PR30                    1092-1098   ///
      str    PR31                    1099-1105   ///
      str    PR32                    1106-1112   ///
      str    PR33                    1113-1119   ///
      str    PR34                    1120-1126   ///
      str    PR35                    1127-1133   ///
      str    PR36                    1134-1140   ///
      str    PR37                    1141-1147   ///
      str    PR38                    1148-1154   ///
      str    PR39                    1155-1161   ///
      str    PR40                    1162-1168   ///
      str    PR41                    1169-1175   ///
      str    PR42                    1176-1182   ///
      str    PR43                    1183-1189   ///
      str    PR44                    1190-1196   ///
      str    PR45                    1197-1203   ///
      str    PR46                    1204-1210   ///
      str    PR47                    1211-1217   ///
      str    PR48                    1218-1224   ///
      str    PR49                    1225-1231   ///
      str    PR50                    1232-1238   ///
      int    PRCCS1                  1239-1241   ///
      int    PRCCS2                  1242-1244   ///
      int    PRCCS3                  1245-1247   ///
      int    PRCCS4                  1248-1250   ///
      int    PRCCS5                  1251-1253   ///
      int    PRCCS6                  1254-1256   ///
      int    PRCCS7                  1257-1259   ///
      int    PRCCS8                  1260-1262   ///
      int    PRCCS9                  1263-1265   ///
      int    PRCCS10                 1266-1268   ///
      int    PRCCS11                 1269-1271   ///
      int    PRCCS12                 1272-1274   ///
      int    PRCCS13                 1275-1277   ///
      int    PRCCS14                 1278-1280   ///
      int    PRCCS15                 1281-1283   ///
      int    PRCCS16                 1284-1286   ///
      int    PRCCS17                 1287-1289   ///
      int    PRCCS18                 1290-1292   ///
      int    PRCCS19                 1293-1295   ///
      int    PRCCS20                 1296-1298   ///
      int    PRCCS21                 1299-1301   ///
      int    PRCCS22                 1302-1304   ///
      int    PRCCS23                 1305-1307   ///
      int    PRCCS24                 1308-1310   ///
      int    PRCCS25                 1311-1313   ///
      int    PRCCS26                 1314-1316   ///
      int    PRCCS27                 1317-1319   ///
      int    PRCCS28                 1320-1322   ///
      int    PRCCS29                 1323-1325   ///
      int    PRCCS30                 1326-1328   ///
      int    PRCCS31                 1329-1331   ///
      int    PRCCS32                 1332-1334   ///
      int    PRCCS33                 1335-1337   ///
      int    PRCCS34                 1338-1340   ///
      int    PRCCS35                 1341-1343   ///
      int    PRCCS36                 1344-1346   ///
      int    PRCCS37                 1347-1349   ///
      int    PRCCS38                 1350-1352   ///
      int    PRCCS39                 1353-1355   ///
      int    PRCCS40                 1356-1358   ///
      int    PRCCS41                 1359-1361   ///
      int    PRCCS42                 1362-1364   ///
      int    PRCCS43                 1365-1367   ///
      int    PRCCS44                 1368-1370   ///
      int    PRCCS45                 1371-1373   ///
      int    PRCCS46                 1374-1376   ///
      int    PRCCS47                 1377-1379   ///
      int    PRCCS48                 1380-1382   ///
      int    PRCCS49                 1383-1385   ///
      int    PRCCS50                 1386-1388   ///
      long   PRDAY1                  1389-1393   ///
      long   PRDAY2                  1394-1398   ///
      long   PRDAY3                  1399-1403   ///
      long   PRDAY4                  1404-1408   ///
      long   PRDAY5                  1409-1413   ///
      long   PRDAY6                  1414-1418   ///
      long   PRDAY7                  1419-1423   ///
      long   PRDAY8                  1424-1428   ///
      long   PRDAY9                  1429-1433   ///
      long   PRDAY10                 1434-1438   ///
      long   PRDAY11                 1439-1443   ///
      long   PRDAY12                 1444-1448   ///
      long   PRDAY13                 1449-1453   ///
      long   PRDAY14                 1454-1458   ///
      long   PRDAY15                 1459-1463   ///
      long   PRDAY16                 1464-1468   ///
      long   PRDAY17                 1469-1473   ///
      long   PRDAY18                 1474-1478   ///
      long   PRDAY19                 1479-1483   ///
      long   PRDAY20                 1484-1488   ///
      long   PRDAY21                 1489-1493   ///
      long   PRDAY22                 1494-1498   ///
      long   PRDAY23                 1499-1503   ///
      long   PRDAY24                 1504-1508   ///
      long   PRDAY25                 1509-1513   ///
      long   PRDAY26                 1514-1518   ///
      long   PRDAY27                 1519-1523   ///
      long   PRDAY28                 1524-1528   ///
      long   PRDAY29                 1529-1533   ///
      long   PRDAY30                 1534-1538   ///
      long   PRDAY31                 1539-1543   ///
      long   PRDAY32                 1544-1548   ///
      long   PRDAY33                 1549-1553   ///
      long   PRDAY34                 1554-1558   ///
      long   PRDAY35                 1559-1563   ///
      long   PRDAY36                 1564-1568   ///
      long   PRDAY37                 1569-1573   ///
      long   PRDAY38                 1574-1578   ///
      long   PRDAY39                 1579-1583   ///
      long   PRDAY40                 1584-1588   ///
      long   PRDAY41                 1589-1593   ///
      long   PRDAY42                 1594-1598   ///
      long   PRDAY43                 1599-1603   ///
      long   PRDAY44                 1604-1608   ///
      long   PRDAY45                 1609-1613   ///
      long   PRDAY46                 1614-1618   ///
      long   PRDAY47                 1619-1623   ///
      long   PRDAY48                 1624-1628   ///
      long   PRDAY49                 1629-1633   ///
      long   PRDAY50                 1634-1638   ///
      int    PROCTYPE                1639-1641   ///
      int    PRVER                   1642-1644   ///
      str    PSTATE                  1645-1646   ///
      long   PSTCO                   1647-1651   ///
      long   PSTCO2                  1652-1656   ///
      str    PointOfOriginUB04       1657        ///
      str    PointOfOrigin_X         1658        ///
      byte   RACE                    1659-1660   ///
      str    RACE_X                  1661-1664   ///
      byte   SERVICELINE             1665-1666   ///
      double TOTCHG                  1667-1676   ///
      double TOTCHG_X                1677-1691   ///
      byte   TRAN_IN                 1692-1693   ///
      byte   TRAN_OUT                1694-1695   ///
      long   VisitLink               1696-1704   ///
      int    YEAR                    1705-1708   ///
      str    ZIP                     1709-1713   ///
      str    ZIP3                    1714-1716   ///
      int    ZIPINC_QRTL             1717-1719   ///
      int    AYEAR                   1720-1723   ///
      byte   BMONTH                  1724-1725   ///
      int    BYEAR                   1726-1729   ///
      byte   PRMONTH1                1730-1731   ///
      byte   PRMONTH2                1732-1733   ///
      byte   PRMONTH3                1734-1735   ///
      byte   PRMONTH4                1736-1737   ///
      byte   PRMONTH5                1738-1739   ///
      byte   PRMONTH6                1740-1741   ///
      byte   PRMONTH7                1742-1743   ///
      byte   PRMONTH8                1744-1745   ///
      byte   PRMONTH9                1746-1747   ///
      byte   PRMONTH10               1748-1749   ///
      byte   PRMONTH11               1750-1751   ///
      byte   PRMONTH12               1752-1753   ///
      byte   PRMONTH13               1754-1755   ///
      byte   PRMONTH14               1756-1757   ///
      byte   PRMONTH15               1758-1759   ///
      byte   PRMONTH16               1760-1761   ///
      byte   PRMONTH17               1762-1763   ///
      byte   PRMONTH18               1764-1765   ///
      byte   PRMONTH19               1766-1767   ///
      byte   PRMONTH20               1768-1769   ///
      byte   PRMONTH21               1770-1771   ///
      byte   PRMONTH22               1772-1773   ///
      byte   PRMONTH23               1774-1775   ///
      byte   PRMONTH24               1776-1777   ///
      byte   PRMONTH25               1778-1779   ///
      byte   PRMONTH26               1780-1781   ///
      byte   PRMONTH27               1782-1783   ///
      byte   PRMONTH28               1784-1785   ///
      byte   PRMONTH29               1786-1787   ///
      byte   PRMONTH30               1788-1789   ///
      byte   PRMONTH31               1790-1791   ///
      byte   PRMONTH32               1792-1793   ///
      byte   PRMONTH33               1794-1795   ///
      byte   PRMONTH34               1796-1797   ///
      byte   PRMONTH35               1798-1799   ///
      byte   PRMONTH36               1800-1801   ///
      byte   PRMONTH37               1802-1803   ///
      byte   PRMONTH38               1804-1805   ///
      byte   PRMONTH39               1806-1807   ///
      byte   PRMONTH40               1808-1809   ///
      byte   PRMONTH41               1810-1811   ///
      byte   PRMONTH42               1812-1813   ///
      byte   PRMONTH43               1814-1815   ///
      byte   PRMONTH44               1816-1817   ///
      byte   PRMONTH45               1818-1819   ///
      byte   PRMONTH46               1820-1821   ///
      byte   PRMONTH47               1822-1823   ///
      byte   PRMONTH48               1824-1825   ///
      byte   PRMONTH49               1826-1827   ///
      byte   PRMONTH50               1828-1829   ///
      int    PRYEAR1                 1830-1833   ///
      int    PRYEAR2                 1834-1837   ///
      int    PRYEAR3                 1838-1841   ///
      int    PRYEAR4                 1842-1845   ///
      int    PRYEAR5                 1846-1849   ///
      int    PRYEAR6                 1850-1853   ///
      int    PRYEAR7                 1854-1857   ///
      int    PRYEAR8                 1858-1861   ///
      int    PRYEAR9                 1862-1865   ///
      int    PRYEAR10                1866-1869   ///
      int    PRYEAR11                1870-1873   ///
      int    PRYEAR12                1874-1877   ///
      int    PRYEAR13                1878-1881   ///
      int    PRYEAR14                1882-1885   ///
      int    PRYEAR15                1886-1889   ///
      int    PRYEAR16                1890-1893   ///
      int    PRYEAR17                1894-1897   ///
      int    PRYEAR18                1898-1901   ///
      int    PRYEAR19                1902-1905   ///
      int    PRYEAR20                1906-1909   ///
      int    PRYEAR21                1910-1913   ///
      int    PRYEAR22                1914-1917   ///
      int    PRYEAR23                1918-1921   ///
      int    PRYEAR24                1922-1925   ///
      int    PRYEAR25                1926-1929   ///
      int    PRYEAR26                1930-1933   ///
      int    PRYEAR27                1934-1937   ///
      int    PRYEAR28                1938-1941   ///
      int    PRYEAR29                1942-1945   ///
      int    PRYEAR30                1946-1949   ///
      int    PRYEAR31                1950-1953   ///
      int    PRYEAR32                1954-1957   ///
      int    PRYEAR33                1958-1961   ///
      int    PRYEAR34                1962-1965   ///
      int    PRYEAR35                1966-1969   ///
      int    PRYEAR36                1970-1973   ///
      int    PRYEAR37                1974-1977   ///
      int    PRYEAR38                1978-1981   ///
      int    PRYEAR39                1982-1985   ///
      int    PRYEAR40                1986-1989   ///
      int    PRYEAR41                1990-1993   ///
      int    PRYEAR42                1994-1997   ///
      int    PRYEAR43                1998-2001   ///
      int    PRYEAR44                2002-2005   ///
      int    PRYEAR45                2006-2009   ///
      int    PRYEAR46                2010-2013   ///
      int    PRYEAR47                2014-2017   ///
      int    PRYEAR48                2018-2021   ///
      int    PRYEAR49                2022-2025   ///
      int    PRYEAR50                2026-2029   ///
      using  "IA_SID_2014_CORE.ASC"

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
label var DX50                     "Diagnosis 50"
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
label var DXCCS50                  "CCS: diagnosis 50"
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
label var DXPOA32                  "Diagnosis 32, present on admission indicator"
label var DXPOA33                  "Diagnosis 33, present on admission indicator"
label var DXPOA34                  "Diagnosis 34, present on admission indicator"
label var DXPOA35                  "Diagnosis 35, present on admission indicator"
label var DXPOA36                  "Diagnosis 36, present on admission indicator"
label var DXPOA37                  "Diagnosis 37, present on admission indicator"
label var DXPOA38                  "Diagnosis 38, present on admission indicator"
label var DXPOA39                  "Diagnosis 39, present on admission indicator"
label var DXPOA40                  "Diagnosis 40, present on admission indicator"
label var DXPOA41                  "Diagnosis 41, present on admission indicator"
label var DXPOA42                  "Diagnosis 42, present on admission indicator"
label var DXPOA43                  "Diagnosis 43, present on admission indicator"
label var DXPOA44                  "Diagnosis 44, present on admission indicator"
label var DXPOA45                  "Diagnosis 45, present on admission indicator"
label var DXPOA46                  "Diagnosis 46, present on admission indicator"
label var DXPOA47                  "Diagnosis 47, present on admission indicator"
label var DXPOA48                  "Diagnosis 48, present on admission indicator"
label var DXPOA49                  "Diagnosis 49, present on admission indicator"
label var DXPOA50                  "Diagnosis 50, present on admission indicator"
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
label var E_CCS1                   "CCS: E Code 1"
label var E_CCS2                   "CCS: E Code 2"
label var E_CCS3                   "CCS: E Code 3"
label var E_CCS4                   "CCS: E Code 4"
label var E_CCS5                   "CCS: E Code 5"
label var E_CCS6                   "CCS: E Code 6"
label var E_CCS7                   "CCS: E Code 7"
label var E_POA1                   "E Code 1, present on admission indicator"
label var E_POA2                   "E Code 2, present on admission indicator"
label var E_POA3                   "E Code 3, present on admission indicator"
label var E_POA4                   "E Code 4, present on admission indicator"
label var E_POA5                   "E Code 5, present on admission indicator"
label var E_POA6                   "E Code 6, present on admission indicator"
label var E_POA7                   "E Code 7, present on admission indicator"
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
label var MDNUM3_R                 "Physician 3 number (re-identified)"
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
label var PRDAY32                  "Number of days from admission to PR32"
label var PRDAY33                  "Number of days from admission to PR33"
label var PRDAY34                  "Number of days from admission to PR34"
label var PRDAY35                  "Number of days from admission to PR35"
label var PRDAY36                  "Number of days from admission to PR36"
label var PRDAY37                  "Number of days from admission to PR37"
label var PRDAY38                  "Number of days from admission to PR38"
label var PRDAY39                  "Number of days from admission to PR39"
label var PRDAY40                  "Number of days from admission to PR40"
label var PRDAY41                  "Number of days from admission to PR41"
label var PRDAY42                  "Number of days from admission to PR42"
label var PRDAY43                  "Number of days from admission to PR43"
label var PRDAY44                  "Number of days from admission to PR44"
label var PRDAY45                  "Number of days from admission to PR45"
label var PRDAY46                  "Number of days from admission to PR46"
label var PRDAY47                  "Number of days from admission to PR47"
label var PRDAY48                  "Number of days from admission to PR48"
label var PRDAY49                  "Number of days from admission to PR49"
label var PRDAY50                  "Number of days from admission to PR50"
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
label var VisitLink                "Visit linkage variable"
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
label var PRMONTH31                "Month of procedure 31"
label var PRMONTH32                "Month of procedure 32"
label var PRMONTH33                "Month of procedure 33"
label var PRMONTH34                "Month of procedure 34"
label var PRMONTH35                "Month of procedure 35"
label var PRMONTH36                "Month of procedure 36"
label var PRMONTH37                "Month of procedure 37"
label var PRMONTH38                "Month of procedure 38"
label var PRMONTH39                "Month of procedure 39"
label var PRMONTH40                "Month of procedure 40"
label var PRMONTH41                "Month of procedure 41"
label var PRMONTH42                "Month of procedure 42"
label var PRMONTH43                "Month of procedure 43"
label var PRMONTH44                "Month of procedure 44"
label var PRMONTH45                "Month of procedure 45"
label var PRMONTH46                "Month of procedure 46"
label var PRMONTH47                "Month of procedure 47"
label var PRMONTH48                "Month of procedure 48"
label var PRMONTH49                "Month of procedure 49"
label var PRMONTH50                "Month of procedure 50"
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
label var PRYEAR32                 "Year of procedure 32"
label var PRYEAR33                 "Year of procedure 33"
label var PRYEAR34                 "Year of procedure 34"
label var PRYEAR35                 "Year of procedure 35"
label var PRYEAR36                 "Year of procedure 36"
label var PRYEAR37                 "Year of procedure 37"
label var PRYEAR38                 "Year of procedure 38"
label var PRYEAR39                 "Year of procedure 39"
label var PRYEAR40                 "Year of procedure 40"
label var PRYEAR41                 "Year of procedure 41"
label var PRYEAR42                 "Year of procedure 42"
label var PRYEAR43                 "Year of procedure 43"
label var PRYEAR44                 "Year of procedure 44"
label var PRYEAR45                 "Year of procedure 45"
label var PRYEAR46                 "Year of procedure 46"
label var PRYEAR47                 "Year of procedure 47"
label var PRYEAR48                 "Year of procedure 48"
label var PRYEAR49                 "Year of procedure 49"
label var PRYEAR50                 "Year of procedure 50"

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
recode DXCCS50                   (-999 -888 -666=.)
recode DXVER                     (-99 -88 -66=.)
recode DaysToEvent               (-99999 -88888 -66666=.)
recode E_CCS1                    (-999 -888 -666=.)
recode E_CCS2                    (-999 -888 -666=.)
recode E_CCS3                    (-999 -888 -666=.)
recode E_CCS4                    (-999 -888 -666=.)
recode E_CCS5                    (-999 -888 -666=.)
recode E_CCS6                    (-999 -888 -666=.)
recode E_CCS7                    (-999 -888 -666=.)
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
recode MDNUM3_R                  (-99999999 -88888888 -66666666=.)
recode MEDINCSTQ                 (-9 -8 -6 -5=.)
recode MRN_R                     (-99999999 -88888888 -66666666=.)
recode NCHRONIC                  (-99 -88 -66=.)
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
recode PRDAY32                   (-9999 -8888 -6666=.)
recode PRDAY33                   (-9999 -8888 -6666=.)
recode PRDAY34                   (-9999 -8888 -6666=.)
recode PRDAY35                   (-9999 -8888 -6666=.)
recode PRDAY36                   (-9999 -8888 -6666=.)
recode PRDAY37                   (-9999 -8888 -6666=.)
recode PRDAY38                   (-9999 -8888 -6666=.)
recode PRDAY39                   (-9999 -8888 -6666=.)
recode PRDAY40                   (-9999 -8888 -6666=.)
recode PRDAY41                   (-9999 -8888 -6666=.)
recode PRDAY42                   (-9999 -8888 -6666=.)
recode PRDAY43                   (-9999 -8888 -6666=.)
recode PRDAY44                   (-9999 -8888 -6666=.)
recode PRDAY45                   (-9999 -8888 -6666=.)
recode PRDAY46                   (-9999 -8888 -6666=.)
recode PRDAY47                   (-9999 -8888 -6666=.)
recode PRDAY48                   (-9999 -8888 -6666=.)
recode PRDAY49                   (-9999 -8888 -6666=.)
recode PRDAY50                   (-9999 -8888 -6666=.)
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
recode PRMONTH31                 (-9 -8 -6 -5=.)
recode PRMONTH32                 (-9 -8 -6 -5=.)
recode PRMONTH33                 (-9 -8 -6 -5=.)
recode PRMONTH34                 (-9 -8 -6 -5=.)
recode PRMONTH35                 (-9 -8 -6 -5=.)
recode PRMONTH36                 (-9 -8 -6 -5=.)
recode PRMONTH37                 (-9 -8 -6 -5=.)
recode PRMONTH38                 (-9 -8 -6 -5=.)
recode PRMONTH39                 (-9 -8 -6 -5=.)
recode PRMONTH40                 (-9 -8 -6 -5=.)
recode PRMONTH41                 (-9 -8 -6 -5=.)
recode PRMONTH42                 (-9 -8 -6 -5=.)
recode PRMONTH43                 (-9 -8 -6 -5=.)
recode PRMONTH44                 (-9 -8 -6 -5=.)
recode PRMONTH45                 (-9 -8 -6 -5=.)
recode PRMONTH46                 (-9 -8 -6 -5=.)
recode PRMONTH47                 (-9 -8 -6 -5=.)
recode PRMONTH48                 (-9 -8 -6 -5=.)
recode PRMONTH49                 (-9 -8 -6 -5=.)
recode PRMONTH50                 (-9 -8 -6 -5=.)
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
recode PRYEAR32                  (-999 -888 -666=.)
recode PRYEAR33                  (-999 -888 -666=.)
recode PRYEAR34                  (-999 -888 -666=.)
recode PRYEAR35                  (-999 -888 -666=.)
recode PRYEAR36                  (-999 -888 -666=.)
recode PRYEAR37                  (-999 -888 -666=.)
recode PRYEAR38                  (-999 -888 -666=.)
recode PRYEAR39                  (-999 -888 -666=.)
recode PRYEAR40                  (-999 -888 -666=.)
recode PRYEAR41                  (-999 -888 -666=.)
recode PRYEAR42                  (-999 -888 -666=.)
recode PRYEAR43                  (-999 -888 -666=.)
recode PRYEAR44                  (-999 -888 -666=.)
recode PRYEAR45                  (-999 -888 -666=.)
recode PRYEAR46                  (-999 -888 -666=.)
recode PRYEAR47                  (-999 -888 -666=.)
recode PRYEAR48                  (-999 -888 -666=.)
recode PRYEAR49                  (-999 -888 -666=.)
recode PRYEAR50                  (-999 -888 -666=.)

save "IA_SID_2014_CORE.dta", replace
