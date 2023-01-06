/*****************************************************************************
* Creation Date: 02/09/2016   
* WV_SID_2014_CHGS.Do
* This program will load the 2014 WV ASCII CHGS File into Stata.
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
      double KEY                         1- 15   ///
      int    NREVCD                     16- 18   ///
      str    REVCD1                     19- 22   ///
      str    REVCD2                     23- 26   ///
      str    REVCD3                     27- 30   ///
      str    REVCD4                     31- 34   ///
      str    REVCD5                     35- 38   ///
      str    REVCD6                     39- 42   ///
      str    REVCD7                     43- 46   ///
      str    REVCD8                     47- 50   ///
      str    REVCD9                     51- 54   ///
      str    REVCD10                    55- 58   ///
      str    REVCD11                    59- 62   ///
      str    REVCD12                    63- 66   ///
      str    REVCD13                    67- 70   ///
      str    REVCD14                    71- 74   ///
      str    REVCD15                    75- 78   ///
      str    REVCD16                    79- 82   ///
      str    REVCD17                    83- 86   ///
      str    REVCD18                    87- 90   ///
      str    REVCD19                    91- 94   ///
      str    REVCD20                    95- 98   ///
      str    REVCD21                    99-102   ///
      str    REVCD22                   103-106   ///
      str    REVCD23                   107-110   ///
      str    REVCD24                   111-114   ///
      str    REVCD25                   115-118   ///
      str    REVCD26                   119-122   ///
      str    REVCD27                   123-126   ///
      str    REVCD28                   127-130   ///
      str    REVCD29                   131-134   ///
      str    REVCD30                   135-138   ///
      str    REVCD31                   139-142   ///
      str    REVCD32                   143-146   ///
      str    REVCD33                   147-150   ///
      str    REVCD34                   151-154   ///
      str    REVCD35                   155-158   ///
      str    REVCD36                   159-162   ///
      str    REVCD37                   163-166   ///
      str    REVCD38                   167-170   ///
      str    REVCD39                   171-174   ///
      str    REVCD40                   175-178   ///
      str    REVCD41                   179-182   ///
      str    REVCD42                   183-186   ///
      str    REVCD43                   187-190   ///
      str    REVCD44                   191-194   ///
      str    REVCD45                   195-198   ///
      str    REVCD46                   199-202   ///
      str    REVCD47                   203-206   ///
      str    REVCD48                   207-210   ///
      str    REVCD49                   211-214   ///
      str    REVCD50                   215-218   ///
      str    REVCD51                   219-222   ///
      str    REVCD52                   223-226   ///
      str    REVCD53                   227-230   ///
      str    REVCD54                   231-234   ///
      str    REVCD55                   235-238   ///
      str    REVCD56                   239-242   ///
      str    REVCD57                   243-246   ///
      str    REVCD58                   247-250   ///
      str    REVCD59                   251-254   ///
      str    REVCD60                   255-258   ///
      str    REVCD61                   259-262   ///
      str    REVCD62                   263-266   ///
      str    REVCD63                   267-270   ///
      str    REVCD64                   271-274   ///
      str    REVCD65                   275-278   ///
      str    REVCD66                   279-282   ///
      str    REVCD67                   283-286   ///
      str    REVCD68                   287-290   ///
      str    REVCD69                   291-294   ///
      str    REVCD70                   295-298   ///
      str    REVCD71                   299-302   ///
      str    REVCD72                   303-306   ///
      str    REVCD73                   307-310   ///
      str    REVCD74                   311-314   ///
      str    REVCD75                   315-318   ///
      str    REVCD76                   319-322   ///
      str    REVCD77                   323-326   ///
      str    REVCD78                   327-330   ///
      str    REVCD79                   331-334   ///
      str    REVCD80                   335-338   ///
      str    REVCD81                   339-342   ///
      str    REVCD82                   343-346   ///
      str    REVCD83                   347-350   ///
      str    REVCD84                   351-354   ///
      str    REVCD85                   355-358   ///
      str    REVCD86                   359-362   ///
      str    REVCD87                   363-366   ///
      str    REVCD88                   367-370   ///
      str    REVCD89                   371-374   ///
      str    REVCD90                   375-378   ///
      str    REVCD91                   379-382   ///
      str    REVCD92                   383-386   ///
      str    REVCD93                   387-390   ///
      str    REVCD94                   391-394   ///
      str    REVCD95                   395-398   ///
      str    REVCD96                   399-402   ///
      str    REVCD97                   403-406   ///
      str    REVCD98                   407-410   ///
      str    REVCD99                   411-414   ///
      str    REVCD100                  415-418   ///
      str    REVCD101                  419-422   ///
      str    REVCD102                  423-426   ///
      str    REVCD103                  427-430   ///
      double REVCHG1                   431-442   ///
      double REVCHG2                   443-454   ///
      double REVCHG3                   455-466   ///
      double REVCHG4                   467-478   ///
      double REVCHG5                   479-490   ///
      double REVCHG6                   491-502   ///
      double REVCHG7                   503-514   ///
      double REVCHG8                   515-526   ///
      double REVCHG9                   527-538   ///
      double REVCHG10                  539-550   ///
      double REVCHG11                  551-562   ///
      double REVCHG12                  563-574   ///
      double REVCHG13                  575-586   ///
      double REVCHG14                  587-598   ///
      double REVCHG15                  599-610   ///
      double REVCHG16                  611-622   ///
      double REVCHG17                  623-634   ///
      double REVCHG18                  635-646   ///
      double REVCHG19                  647-658   ///
      double REVCHG20                  659-670   ///
      double REVCHG21                  671-682   ///
      double REVCHG22                  683-694   ///
      double REVCHG23                  695-706   ///
      double REVCHG24                  707-718   ///
      double REVCHG25                  719-730   ///
      double REVCHG26                  731-742   ///
      double REVCHG27                  743-754   ///
      double REVCHG28                  755-766   ///
      double REVCHG29                  767-778   ///
      double REVCHG30                  779-790   ///
      double REVCHG31                  791-802   ///
      double REVCHG32                  803-814   ///
      double REVCHG33                  815-826   ///
      double REVCHG34                  827-838   ///
      double REVCHG35                  839-850   ///
      double REVCHG36                  851-862   ///
      double REVCHG37                  863-874   ///
      double REVCHG38                  875-886   ///
      double REVCHG39                  887-898   ///
      double REVCHG40                  899-910   ///
      double REVCHG41                  911-922   ///
      double REVCHG42                  923-934   ///
      double REVCHG43                  935-946   ///
      double REVCHG44                  947-958   ///
      double REVCHG45                  959-970   ///
      double REVCHG46                  971-982   ///
      double REVCHG47                  983-994   ///
      double REVCHG48                 995-1006   ///
      double REVCHG49                1007-1018   ///
      double REVCHG50                1019-1030   ///
      double REVCHG51                1031-1042   ///
      double REVCHG52                1043-1054   ///
      double REVCHG53                1055-1066   ///
      double REVCHG54                1067-1078   ///
      double REVCHG55                1079-1090   ///
      double REVCHG56                1091-1102   ///
      double REVCHG57                1103-1114   ///
      double REVCHG58                1115-1126   ///
      double REVCHG59                1127-1138   ///
      double REVCHG60                1139-1150   ///
      double REVCHG61                1151-1162   ///
      double REVCHG62                1163-1174   ///
      double REVCHG63                1175-1186   ///
      double REVCHG64                1187-1198   ///
      double REVCHG65                1199-1210   ///
      double REVCHG66                1211-1222   ///
      double REVCHG67                1223-1234   ///
      double REVCHG68                1235-1246   ///
      double REVCHG69                1247-1258   ///
      double REVCHG70                1259-1270   ///
      double REVCHG71                1271-1282   ///
      double REVCHG72                1283-1294   ///
      double REVCHG73                1295-1306   ///
      double REVCHG74                1307-1318   ///
      double REVCHG75                1319-1330   ///
      double REVCHG76                1331-1342   ///
      double REVCHG77                1343-1354   ///
      double REVCHG78                1355-1366   ///
      double REVCHG79                1367-1378   ///
      double REVCHG80                1379-1390   ///
      double REVCHG81                1391-1402   ///
      double REVCHG82                1403-1414   ///
      double REVCHG83                1415-1426   ///
      double REVCHG84                1427-1438   ///
      double REVCHG85                1439-1450   ///
      double REVCHG86                1451-1462   ///
      double REVCHG87                1463-1474   ///
      double REVCHG88                1475-1486   ///
      double REVCHG89                1487-1498   ///
      double REVCHG90                1499-1510   ///
      double REVCHG91                1511-1522   ///
      double REVCHG92                1523-1534   ///
      double REVCHG93                1535-1546   ///
      double REVCHG94                1547-1558   ///
      double REVCHG95                1559-1570   ///
      double REVCHG96                1571-1582   ///
      double REVCHG97                1583-1594   ///
      double REVCHG98                1595-1606   ///
      double REVCHG99                1607-1618   ///
      double REVCHG100               1619-1630   ///
      double REVCHG101               1631-1642   ///
      double REVCHG102               1643-1654   ///
      double REVCHG103               1655-1666   ///
      double UNIT1                   1667-1674   ///
      double UNIT2                   1675-1682   ///
      double UNIT3                   1683-1690   ///
      double UNIT4                   1691-1698   ///
      double UNIT5                   1699-1706   ///
      double UNIT6                   1707-1714   ///
      double UNIT7                   1715-1722   ///
      double UNIT8                   1723-1730   ///
      double UNIT9                   1731-1738   ///
      double UNIT10                  1739-1746   ///
      double UNIT11                  1747-1754   ///
      double UNIT12                  1755-1762   ///
      double UNIT13                  1763-1770   ///
      double UNIT14                  1771-1778   ///
      double UNIT15                  1779-1786   ///
      double UNIT16                  1787-1794   ///
      double UNIT17                  1795-1802   ///
      double UNIT18                  1803-1810   ///
      double UNIT19                  1811-1818   ///
      double UNIT20                  1819-1826   ///
      double UNIT21                  1827-1834   ///
      double UNIT22                  1835-1842   ///
      double UNIT23                  1843-1850   ///
      double UNIT24                  1851-1858   ///
      double UNIT25                  1859-1866   ///
      double UNIT26                  1867-1874   ///
      double UNIT27                  1875-1882   ///
      double UNIT28                  1883-1890   ///
      double UNIT29                  1891-1898   ///
      double UNIT30                  1899-1906   ///
      double UNIT31                  1907-1914   ///
      double UNIT32                  1915-1922   ///
      double UNIT33                  1923-1930   ///
      double UNIT34                  1931-1938   ///
      double UNIT35                  1939-1946   ///
      double UNIT36                  1947-1954   ///
      double UNIT37                  1955-1962   ///
      double UNIT38                  1963-1970   ///
      double UNIT39                  1971-1978   ///
      double UNIT40                  1979-1986   ///
      double UNIT41                  1987-1994   ///
      double UNIT42                  1995-2002   ///
      double UNIT43                  2003-2010   ///
      double UNIT44                  2011-2018   ///
      double UNIT45                  2019-2026   ///
      double UNIT46                  2027-2034   ///
      double UNIT47                  2035-2042   ///
      double UNIT48                  2043-2050   ///
      double UNIT49                  2051-2058   ///
      double UNIT50                  2059-2066   ///
      double UNIT51                  2067-2074   ///
      double UNIT52                  2075-2082   ///
      double UNIT53                  2083-2090   ///
      double UNIT54                  2091-2098   ///
      double UNIT55                  2099-2106   ///
      double UNIT56                  2107-2114   ///
      double UNIT57                  2115-2122   ///
      double UNIT58                  2123-2130   ///
      double UNIT59                  2131-2138   ///
      double UNIT60                  2139-2146   ///
      double UNIT61                  2147-2154   ///
      double UNIT62                  2155-2162   ///
      double UNIT63                  2163-2170   ///
      double UNIT64                  2171-2178   ///
      double UNIT65                  2179-2186   ///
      double UNIT66                  2187-2194   ///
      double UNIT67                  2195-2202   ///
      double UNIT68                  2203-2210   ///
      double UNIT69                  2211-2218   ///
      double UNIT70                  2219-2226   ///
      double UNIT71                  2227-2234   ///
      double UNIT72                  2235-2242   ///
      double UNIT73                  2243-2250   ///
      double UNIT74                  2251-2258   ///
      double UNIT75                  2259-2266   ///
      double UNIT76                  2267-2274   ///
      double UNIT77                  2275-2282   ///
      double UNIT78                  2283-2290   ///
      double UNIT79                  2291-2298   ///
      double UNIT80                  2299-2306   ///
      double UNIT81                  2307-2314   ///
      double UNIT82                  2315-2322   ///
      double UNIT83                  2323-2330   ///
      double UNIT84                  2331-2338   ///
      double UNIT85                  2339-2346   ///
      double UNIT86                  2347-2354   ///
      double UNIT87                  2355-2362   ///
      double UNIT88                  2363-2370   ///
      double UNIT89                  2371-2378   ///
      double UNIT90                  2379-2386   ///
      double UNIT91                  2387-2394   ///
      double UNIT92                  2395-2402   ///
      double UNIT93                  2403-2410   ///
      double UNIT94                  2411-2418   ///
      double UNIT95                  2419-2426   ///
      double UNIT96                  2427-2434   ///
      double UNIT97                  2435-2442   ///
      double UNIT98                  2443-2450   ///
      double UNIT99                  2451-2458   ///
      double UNIT100                 2459-2466   ///
      double UNIT101                 2467-2474   ///
      double UNIT102                 2475-2482   ///
      double UNIT103                 2483-2490   ///
      using  "WV_SID_2014_CHGS.ASC"

***  Assign labels to the data elements ***
label var KEY                      "HCUP record identifier"
label var NREVCD                   "Number of revenue codes for this discharge"
label var REVCD1                   "Revenue code 1 (as received from source)"
label var REVCD2                   "Revenue code 2 (as received from source)"
label var REVCD3                   "Revenue code 3 (as received from source)"
label var REVCD4                   "Revenue code 4 (as received from source)"
label var REVCD5                   "Revenue code 5 (as received from source)"
label var REVCD6                   "Revenue code 6 (as received from source)"
label var REVCD7                   "Revenue code 7 (as received from source)"
label var REVCD8                   "Revenue code 8 (as received from source)"
label var REVCD9                   "Revenue code 9 (as received from source)"
label var REVCD10                  "Revenue code 10 (as received from source)"
label var REVCD11                  "Revenue code 11 (as received from source)"
label var REVCD12                  "Revenue code 12 (as received from source)"
label var REVCD13                  "Revenue code 13 (as received from source)"
label var REVCD14                  "Revenue code 14 (as received from source)"
label var REVCD15                  "Revenue code 15 (as received from source)"
label var REVCD16                  "Revenue code 16 (as received from source)"
label var REVCD17                  "Revenue code 17 (as received from source)"
label var REVCD18                  "Revenue code 18 (as received from source)"
label var REVCD19                  "Revenue code 19 (as received from source)"
label var REVCD20                  "Revenue code 20 (as received from source)"
label var REVCD21                  "Revenue code 21 (as received from source)"
label var REVCD22                  "Revenue code 22 (as received from source)"
label var REVCD23                  "Revenue code 23 (as received from source)"
label var REVCD24                  "Revenue code 24 (as received from source)"
label var REVCD25                  "Revenue code 25 (as received from source)"
label var REVCD26                  "Revenue code 26 (as received from source)"
label var REVCD27                  "Revenue code 27 (as received from source)"
label var REVCD28                  "Revenue code 28 (as received from source)"
label var REVCD29                  "Revenue code 29 (as received from source)"
label var REVCD30                  "Revenue code 30 (as received from source)"
label var REVCD31                  "Revenue code 31 (as received from source)"
label var REVCD32                  "Revenue code 32 (as received from source)"
label var REVCD33                  "Revenue code 33 (as received from source)"
label var REVCD34                  "Revenue code 34 (as received from source)"
label var REVCD35                  "Revenue code 35 (as received from source)"
label var REVCD36                  "Revenue code 36 (as received from source)"
label var REVCD37                  "Revenue code 37 (as received from source)"
label var REVCD38                  "Revenue code 38 (as received from source)"
label var REVCD39                  "Revenue code 39 (as received from source)"
label var REVCD40                  "Revenue code 40 (as received from source)"
label var REVCD41                  "Revenue code 41 (as received from source)"
label var REVCD42                  "Revenue code 42 (as received from source)"
label var REVCD43                  "Revenue code 43 (as received from source)"
label var REVCD44                  "Revenue code 44 (as received from source)"
label var REVCD45                  "Revenue code 45 (as received from source)"
label var REVCD46                  "Revenue code 46 (as received from source)"
label var REVCD47                  "Revenue code 47 (as received from source)"
label var REVCD48                  "Revenue code 48 (as received from source)"
label var REVCD49                  "Revenue code 49 (as received from source)"
label var REVCD50                  "Revenue code 50 (as received from source)"
label var REVCD51                  "Revenue code 51 (as received from source)"
label var REVCD52                  "Revenue code 52 (as received from source)"
label var REVCD53                  "Revenue code 53 (as received from source)"
label var REVCD54                  "Revenue code 54 (as received from source)"
label var REVCD55                  "Revenue code 55 (as received from source)"
label var REVCD56                  "Revenue code 56 (as received from source)"
label var REVCD57                  "Revenue code 57 (as received from source)"
label var REVCD58                  "Revenue code 58 (as received from source)"
label var REVCD59                  "Revenue code 59 (as received from source)"
label var REVCD60                  "Revenue code 60 (as received from source)"
label var REVCD61                  "Revenue code 61 (as received from source)"
label var REVCD62                  "Revenue code 62 (as received from source)"
label var REVCD63                  "Revenue code 63 (as received from source)"
label var REVCD64                  "Revenue code 64 (as received from source)"
label var REVCD65                  "Revenue code 65 (as received from source)"
label var REVCD66                  "Revenue code 66 (as received from source)"
label var REVCD67                  "Revenue code 67 (as received from source)"
label var REVCD68                  "Revenue code 68 (as received from source)"
label var REVCD69                  "Revenue code 69 (as received from source)"
label var REVCD70                  "Revenue code 70 (as received from source)"
label var REVCD71                  "Revenue code 71 (as received from source)"
label var REVCD72                  "Revenue code 72 (as received from source)"
label var REVCD73                  "Revenue code 73 (as received from source)"
label var REVCD74                  "Revenue code 74 (as received from source)"
label var REVCD75                  "Revenue code 75 (as received from source)"
label var REVCD76                  "Revenue code 76 (as received from source)"
label var REVCD77                  "Revenue code 77 (as received from source)"
label var REVCD78                  "Revenue code 78 (as received from source)"
label var REVCD79                  "Revenue code 79 (as received from source)"
label var REVCD80                  "Revenue code 80 (as received from source)"
label var REVCD81                  "Revenue code 81 (as received from source)"
label var REVCD82                  "Revenue code 82 (as received from source)"
label var REVCD83                  "Revenue code 83 (as received from source)"
label var REVCD84                  "Revenue code 84 (as received from source)"
label var REVCD85                  "Revenue code 85 (as received from source)"
label var REVCD86                  "Revenue code 86 (as received from source)"
label var REVCD87                  "Revenue code 87 (as received from source)"
label var REVCD88                  "Revenue code 88 (as received from source)"
label var REVCD89                  "Revenue code 89 (as received from source)"
label var REVCD90                  "Revenue code 90 (as received from source)"
label var REVCD91                  "Revenue code 91 (as received from source)"
label var REVCD92                  "Revenue code 92 (as received from source)"
label var REVCD93                  "Revenue code 93 (as received from source)"
label var REVCD94                  "Revenue code 94 (as received from source)"
label var REVCD95                  "Revenue code 95 (as received from source)"
label var REVCD96                  "Revenue code 96 (as received from source)"
label var REVCD97                  "Revenue code 97 (as received from source)"
label var REVCD98                  "Revenue code 98 (as received from source)"
label var REVCD99                  "Revenue code 99 (as received from source)"
label var REVCD100                 "Revenue code 100 (as received from source)"
label var REVCD101                 "Revenue code 101 (as received from source)"
label var REVCD102                 "Revenue code 102 (as received from source)"
label var REVCD103                 "Revenue code 103 (as received from source)"
label var REVCHG1                  "Detailed charges for revenue code 1 (as received from source)"
label var REVCHG2                  "Detailed charges for revenue code 2 (as received from source)"
label var REVCHG3                  "Detailed charges for revenue code 3 (as received from source)"
label var REVCHG4                  "Detailed charges for revenue code 4 (as received from source)"
label var REVCHG5                  "Detailed charges for revenue code 5 (as received from source)"
label var REVCHG6                  "Detailed charges for revenue code 6 (as received from source)"
label var REVCHG7                  "Detailed charges for revenue code 7 (as received from source)"
label var REVCHG8                  "Detailed charges for revenue code 8 (as received from source)"
label var REVCHG9                  "Detailed charges for revenue code 9 (as received from source)"
label var REVCHG10                 "Detailed charges for revenue code 10 (as received from source)"
label var REVCHG11                 "Detailed charges for revenue code 11 (as received from source)"
label var REVCHG12                 "Detailed charges for revenue code 12 (as received from source)"
label var REVCHG13                 "Detailed charges for revenue code 13 (as received from source)"
label var REVCHG14                 "Detailed charges for revenue code 14 (as received from source)"
label var REVCHG15                 "Detailed charges for revenue code 15 (as received from source)"
label var REVCHG16                 "Detailed charges for revenue code 16 (as received from source)"
label var REVCHG17                 "Detailed charges for revenue code 17 (as received from source)"
label var REVCHG18                 "Detailed charges for revenue code 18 (as received from source)"
label var REVCHG19                 "Detailed charges for revenue code 19 (as received from source)"
label var REVCHG20                 "Detailed charges for revenue code 20 (as received from source)"
label var REVCHG21                 "Detailed charges for revenue code 21 (as received from source)"
label var REVCHG22                 "Detailed charges for revenue code 22 (as received from source)"
label var REVCHG23                 "Detailed charges for revenue code 23 (as received from source)"
label var REVCHG24                 "Detailed charges for revenue code 24 (as received from source)"
label var REVCHG25                 "Detailed charges for revenue code 25 (as received from source)"
label var REVCHG26                 "Detailed charges for revenue code 26 (as received from source)"
label var REVCHG27                 "Detailed charges for revenue code 27 (as received from source)"
label var REVCHG28                 "Detailed charges for revenue code 28 (as received from source)"
label var REVCHG29                 "Detailed charges for revenue code 29 (as received from source)"
label var REVCHG30                 "Detailed charges for revenue code 30 (as received from source)"
label var REVCHG31                 "Detailed charges for revenue code 31 (as received from source)"
label var REVCHG32                 "Detailed charges for revenue code 32 (as received from source)"
label var REVCHG33                 "Detailed charges for revenue code 33 (as received from source)"
label var REVCHG34                 "Detailed charges for revenue code 34 (as received from source)"
label var REVCHG35                 "Detailed charges for revenue code 35 (as received from source)"
label var REVCHG36                 "Detailed charges for revenue code 36 (as received from source)"
label var REVCHG37                 "Detailed charges for revenue code 37 (as received from source)"
label var REVCHG38                 "Detailed charges for revenue code 38 (as received from source)"
label var REVCHG39                 "Detailed charges for revenue code 39 (as received from source)"
label var REVCHG40                 "Detailed charges for revenue code 40 (as received from source)"
label var REVCHG41                 "Detailed charges for revenue code 41 (as received from source)"
label var REVCHG42                 "Detailed charges for revenue code 42 (as received from source)"
label var REVCHG43                 "Detailed charges for revenue code 43 (as received from source)"
label var REVCHG44                 "Detailed charges for revenue code 44 (as received from source)"
label var REVCHG45                 "Detailed charges for revenue code 45 (as received from source)"
label var REVCHG46                 "Detailed charges for revenue code 46 (as received from source)"
label var REVCHG47                 "Detailed charges for revenue code 47 (as received from source)"
label var REVCHG48                 "Detailed charges for revenue code 48 (as received from source)"
label var REVCHG49                 "Detailed charges for revenue code 49 (as received from source)"
label var REVCHG50                 "Detailed charges for revenue code 50 (as received from source)"
label var REVCHG51                 "Detailed charges for revenue code 51 (as received from source)"
label var REVCHG52                 "Detailed charges for revenue code 52 (as received from source)"
label var REVCHG53                 "Detailed charges for revenue code 53 (as received from source)"
label var REVCHG54                 "Detailed charges for revenue code 54 (as received from source)"
label var REVCHG55                 "Detailed charges for revenue code 55 (as received from source)"
label var REVCHG56                 "Detailed charges for revenue code 56 (as received from source)"
label var REVCHG57                 "Detailed charges for revenue code 57 (as received from source)"
label var REVCHG58                 "Detailed charges for revenue code 58 (as received from source)"
label var REVCHG59                 "Detailed charges for revenue code 59 (as received from source)"
label var REVCHG60                 "Detailed charges for revenue code 60 (as received from source)"
label var REVCHG61                 "Detailed charges for revenue code 61 (as received from source)"
label var REVCHG62                 "Detailed charges for revenue code 62 (as received from source)"
label var REVCHG63                 "Detailed charges for revenue code 63 (as received from source)"
label var REVCHG64                 "Detailed charges for revenue code 64 (as received from source)"
label var REVCHG65                 "Detailed charges for revenue code 65 (as received from source)"
label var REVCHG66                 "Detailed charges for revenue code 66 (as received from source)"
label var REVCHG67                 "Detailed charges for revenue code 67 (as received from source)"
label var REVCHG68                 "Detailed charges for revenue code 68 (as received from source)"
label var REVCHG69                 "Detailed charges for revenue code 69 (as received from source)"
label var REVCHG70                 "Detailed charges for revenue code 70 (as received from source)"
label var REVCHG71                 "Detailed charges for revenue code 71 (as received from source)"
label var REVCHG72                 "Detailed charges for revenue code 72 (as received from source)"
label var REVCHG73                 "Detailed charges for revenue code 73 (as received from source)"
label var REVCHG74                 "Detailed charges for revenue code 74 (as received from source)"
label var REVCHG75                 "Detailed charges for revenue code 75 (as received from source)"
label var REVCHG76                 "Detailed charges for revenue code 76 (as received from source)"
label var REVCHG77                 "Detailed charges for revenue code 77 (as received from source)"
label var REVCHG78                 "Detailed charges for revenue code 78 (as received from source)"
label var REVCHG79                 "Detailed charges for revenue code 79 (as received from source)"
label var REVCHG80                 "Detailed charges for revenue code 80 (as received from source)"
label var REVCHG81                 "Detailed charges for revenue code 81 (as received from source)"
label var REVCHG82                 "Detailed charges for revenue code 82 (as received from source)"
label var REVCHG83                 "Detailed charges for revenue code 83 (as received from source)"
label var REVCHG84                 "Detailed charges for revenue code 84 (as received from source)"
label var REVCHG85                 "Detailed charges for revenue code 85 (as received from source)"
label var REVCHG86                 "Detailed charges for revenue code 86 (as received from source)"
label var REVCHG87                 "Detailed charges for revenue code 87 (as received from source)"
label var REVCHG88                 "Detailed charges for revenue code 88 (as received from source)"
label var REVCHG89                 "Detailed charges for revenue code 89 (as received from source)"
label var REVCHG90                 "Detailed charges for revenue code 90 (as received from source)"
label var REVCHG91                 "Detailed charges for revenue code 91 (as received from source)"
label var REVCHG92                 "Detailed charges for revenue code 92 (as received from source)"
label var REVCHG93                 "Detailed charges for revenue code 93 (as received from source)"
label var REVCHG94                 "Detailed charges for revenue code 94 (as received from source)"
label var REVCHG95                 "Detailed charges for revenue code 95 (as received from source)"
label var REVCHG96                 "Detailed charges for revenue code 96 (as received from source)"
label var REVCHG97                 "Detailed charges for revenue code 97 (as received from source)"
label var REVCHG98                 "Detailed charges for revenue code 98 (as received from source)"
label var REVCHG99                 "Detailed charges for revenue code 99 (as received from source)"
label var REVCHG100                "Detailed charges for revenue code 100 (as received from source)"
label var REVCHG101                "Detailed charges for revenue code 101 (as received from source)"
label var REVCHG102                "Detailed charges for revenue code 102 (as received from source)"
label var REVCHG103                "Detailed charges for revenue code 103 (as received from source)"
label var UNIT1                    "Units of service 1 (as received from source)"
label var UNIT2                    "Units of service 2 (as received from source)"
label var UNIT3                    "Units of service 3 (as received from source)"
label var UNIT4                    "Units of service 4 (as received from source)"
label var UNIT5                    "Units of service 5 (as received from source)"
label var UNIT6                    "Units of service 6 (as received from source)"
label var UNIT7                    "Units of service 7 (as received from source)"
label var UNIT8                    "Units of service 8 (as received from source)"
label var UNIT9                    "Units of service 9 (as received from source)"
label var UNIT10                   "Units of service 10 (as received from source)"
label var UNIT11                   "Units of service 11 (as received from source)"
label var UNIT12                   "Units of service 12 (as received from source)"
label var UNIT13                   "Units of service 13 (as received from source)"
label var UNIT14                   "Units of service 14 (as received from source)"
label var UNIT15                   "Units of service 15 (as received from source)"
label var UNIT16                   "Units of service 16 (as received from source)"
label var UNIT17                   "Units of service 17 (as received from source)"
label var UNIT18                   "Units of service 18 (as received from source)"
label var UNIT19                   "Units of service 19 (as received from source)"
label var UNIT20                   "Units of service 20 (as received from source)"
label var UNIT21                   "Units of service 21 (as received from source)"
label var UNIT22                   "Units of service 22 (as received from source)"
label var UNIT23                   "Units of service 23 (as received from source)"
label var UNIT24                   "Units of service 24 (as received from source)"
label var UNIT25                   "Units of service 25 (as received from source)"
label var UNIT26                   "Units of service 26 (as received from source)"
label var UNIT27                   "Units of service 27 (as received from source)"
label var UNIT28                   "Units of service 28 (as received from source)"
label var UNIT29                   "Units of service 29 (as received from source)"
label var UNIT30                   "Units of service 30 (as received from source)"
label var UNIT31                   "Units of service 31 (as received from source)"
label var UNIT32                   "Units of service 32 (as received from source)"
label var UNIT33                   "Units of service 33 (as received from source)"
label var UNIT34                   "Units of service 34 (as received from source)"
label var UNIT35                   "Units of service 35 (as received from source)"
label var UNIT36                   "Units of service 36 (as received from source)"
label var UNIT37                   "Units of service 37 (as received from source)"
label var UNIT38                   "Units of service 38 (as received from source)"
label var UNIT39                   "Units of service 39 (as received from source)"
label var UNIT40                   "Units of service 40 (as received from source)"
label var UNIT41                   "Units of service 41 (as received from source)"
label var UNIT42                   "Units of service 42 (as received from source)"
label var UNIT43                   "Units of service 43 (as received from source)"
label var UNIT44                   "Units of service 44 (as received from source)"
label var UNIT45                   "Units of service 45 (as received from source)"
label var UNIT46                   "Units of service 46 (as received from source)"
label var UNIT47                   "Units of service 47 (as received from source)"
label var UNIT48                   "Units of service 48 (as received from source)"
label var UNIT49                   "Units of service 49 (as received from source)"
label var UNIT50                   "Units of service 50 (as received from source)"
label var UNIT51                   "Units of service 51 (as received from source)"
label var UNIT52                   "Units of service 52 (as received from source)"
label var UNIT53                   "Units of service 53 (as received from source)"
label var UNIT54                   "Units of service 54 (as received from source)"
label var UNIT55                   "Units of service 55 (as received from source)"
label var UNIT56                   "Units of service 56 (as received from source)"
label var UNIT57                   "Units of service 57 (as received from source)"
label var UNIT58                   "Units of service 58 (as received from source)"
label var UNIT59                   "Units of service 59 (as received from source)"
label var UNIT60                   "Units of service 60 (as received from source)"
label var UNIT61                   "Units of service 61 (as received from source)"
label var UNIT62                   "Units of service 62 (as received from source)"
label var UNIT63                   "Units of service 63 (as received from source)"
label var UNIT64                   "Units of service 64 (as received from source)"
label var UNIT65                   "Units of service 65 (as received from source)"
label var UNIT66                   "Units of service 66 (as received from source)"
label var UNIT67                   "Units of service 67 (as received from source)"
label var UNIT68                   "Units of service 68 (as received from source)"
label var UNIT69                   "Units of service 69 (as received from source)"
label var UNIT70                   "Units of service 70 (as received from source)"
label var UNIT71                   "Units of service 71 (as received from source)"
label var UNIT72                   "Units of service 72 (as received from source)"
label var UNIT73                   "Units of service 73 (as received from source)"
label var UNIT74                   "Units of service 74 (as received from source)"
label var UNIT75                   "Units of service 75 (as received from source)"
label var UNIT76                   "Units of service 76 (as received from source)"
label var UNIT77                   "Units of service 77 (as received from source)"
label var UNIT78                   "Units of service 78 (as received from source)"
label var UNIT79                   "Units of service 79 (as received from source)"
label var UNIT80                   "Units of service 80 (as received from source)"
label var UNIT81                   "Units of service 81 (as received from source)"
label var UNIT82                   "Units of service 82 (as received from source)"
label var UNIT83                   "Units of service 83 (as received from source)"
label var UNIT84                   "Units of service 84 (as received from source)"
label var UNIT85                   "Units of service 85 (as received from source)"
label var UNIT86                   "Units of service 86 (as received from source)"
label var UNIT87                   "Units of service 87 (as received from source)"
label var UNIT88                   "Units of service 88 (as received from source)"
label var UNIT89                   "Units of service 89 (as received from source)"
label var UNIT90                   "Units of service 90 (as received from source)"
label var UNIT91                   "Units of service 91 (as received from source)"
label var UNIT92                   "Units of service 92 (as received from source)"
label var UNIT93                   "Units of service 93 (as received from source)"
label var UNIT94                   "Units of service 94 (as received from source)"
label var UNIT95                   "Units of service 95 (as received from source)"
label var UNIT96                   "Units of service 96 (as received from source)"
label var UNIT97                   "Units of service 97 (as received from source)"
label var UNIT98                   "Units of service 98 (as received from source)"
label var UNIT99                   "Units of service 99 (as received from source)"
label var UNIT100                  "Units of service 100 (as received from source)"
label var UNIT101                  "Units of service 101 (as received from source)"
label var UNIT102                  "Units of service 102 (as received from source)"
label var UNIT103                  "Units of service 103 (as received from source)"

*** Convert special values to missing values ***
recode NREVCD                    (-99 -88 -66=.)
recode REVCHG1                   (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG2                   (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG3                   (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG4                   (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG5                   (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG6                   (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG7                   (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG8                   (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG9                   (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG10                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG11                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG12                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG13                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG14                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG15                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG16                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG17                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG18                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG19                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG20                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG21                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG22                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG23                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG24                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG25                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG26                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG27                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG28                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG29                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG30                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG31                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG32                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG33                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG34                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG35                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG36                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG37                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG38                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG39                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG40                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG41                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG42                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG43                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG44                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG45                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG46                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG47                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG48                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG49                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG50                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG51                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG52                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG53                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG54                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG55                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG56                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG57                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG58                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG59                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG60                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG61                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG62                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG63                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG64                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG65                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG66                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG67                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG68                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG69                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG70                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG71                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG72                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG73                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG74                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG75                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG76                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG77                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG78                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG79                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG80                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG81                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG82                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG83                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG84                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG85                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG86                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG87                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG88                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG89                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG90                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG91                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG92                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG93                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG94                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG95                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG96                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG97                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG98                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG99                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG100                 (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG101                 (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG102                 (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG103                 (-99999999.99 -88888888.88 -66666666.66=.)
recode UNIT1                     (-9999.99 -8888.88 -6666.66=.)
recode UNIT2                     (-9999.99 -8888.88 -6666.66=.)
recode UNIT3                     (-9999.99 -8888.88 -6666.66=.)
recode UNIT4                     (-9999.99 -8888.88 -6666.66=.)
recode UNIT5                     (-9999.99 -8888.88 -6666.66=.)
recode UNIT6                     (-9999.99 -8888.88 -6666.66=.)
recode UNIT7                     (-9999.99 -8888.88 -6666.66=.)
recode UNIT8                     (-9999.99 -8888.88 -6666.66=.)
recode UNIT9                     (-9999.99 -8888.88 -6666.66=.)
recode UNIT10                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT11                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT12                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT13                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT14                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT15                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT16                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT17                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT18                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT19                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT20                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT21                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT22                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT23                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT24                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT25                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT26                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT27                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT28                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT29                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT30                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT31                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT32                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT33                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT34                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT35                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT36                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT37                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT38                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT39                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT40                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT41                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT42                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT43                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT44                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT45                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT46                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT47                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT48                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT49                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT50                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT51                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT52                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT53                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT54                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT55                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT56                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT57                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT58                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT59                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT60                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT61                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT62                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT63                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT64                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT65                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT66                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT67                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT68                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT69                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT70                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT71                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT72                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT73                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT74                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT75                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT76                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT77                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT78                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT79                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT80                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT81                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT82                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT83                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT84                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT85                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT86                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT87                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT88                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT89                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT90                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT91                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT92                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT93                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT94                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT95                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT96                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT97                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT98                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT99                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT100                   (-9999.99 -8888.88 -6666.66=.)
recode UNIT101                   (-9999.99 -8888.88 -6666.66=.)
recode UNIT102                   (-9999.99 -8888.88 -6666.66=.)
recode UNIT103                   (-9999.99 -8888.88 -6666.66=.)

save "WV_SID_2014_CHGS.dta", replace
