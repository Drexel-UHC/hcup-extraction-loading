/*****************************************************************************
* Creation Date: 10/26/2015   
* Stataload_WI_SID_2014_DX_PR_GRPS.Do
* This program will load the 2014 WI ASCII DX_PR_GRPS File into Stata.
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
      byte   BODYSYSTEM1                 1-  2   ///
      byte   BODYSYSTEM2                 3-  4   ///
      byte   BODYSYSTEM3                 5-  6   ///
      byte   BODYSYSTEM4                 7-  8   ///
      byte   BODYSYSTEM5                 9- 10   ///
      byte   BODYSYSTEM6                11- 12   ///
      byte   BODYSYSTEM7                13- 14   ///
      byte   BODYSYSTEM8                15- 16   ///
      byte   BODYSYSTEM9                17- 18   ///
      byte   BODYSYSTEM10               19- 20   ///
      byte   BODYSYSTEM11               21- 22   ///
      byte   BODYSYSTEM12               23- 24   ///
      byte   BODYSYSTEM13               25- 26   ///
      byte   BODYSYSTEM14               27- 28   ///
      byte   BODYSYSTEM15               29- 30   ///
      byte   BODYSYSTEM16               31- 32   ///
      byte   BODYSYSTEM17               33- 34   ///
      byte   BODYSYSTEM18               35- 36   ///
      byte   BODYSYSTEM19               37- 38   ///
      byte   BODYSYSTEM20               39- 40   ///
      byte   BODYSYSTEM21               41- 42   ///
      byte   BODYSYSTEM22               43- 44   ///
      byte   BODYSYSTEM23               45- 46   ///
      byte   BODYSYSTEM24               47- 48   ///
      byte   BODYSYSTEM25               49- 50   ///
      byte   BODYSYSTEM26               51- 52   ///
      byte   BODYSYSTEM27               53- 54   ///
      byte   BODYSYSTEM28               55- 56   ///
      byte   BODYSYSTEM29               57- 58   ///
      byte   BODYSYSTEM30               59- 60   ///
      byte   BODYSYSTEM31               61- 62   ///
      byte   BODYSYSTEM32               63- 64   ///
      byte   BODYSYSTEM33               65- 66   ///
      byte   BODYSYSTEM34               67- 68   ///
      byte   BODYSYSTEM35               69- 70   ///
      byte   BODYSYSTEM36               71- 72   ///
      byte   BODYSYSTEM37               73- 74   ///
      byte   BODYSYSTEM38               75- 76   ///
      byte   BODYSYSTEM39               77- 78   ///
      byte   BODYSYSTEM40               79- 80   ///
      byte   BODYSYSTEM41               81- 82   ///
      byte   BODYSYSTEM42               83- 84   ///
      byte   BODYSYSTEM43               85- 86   ///
      byte   BODYSYSTEM44               87- 88   ///
      byte   BODYSYSTEM45               89- 90   ///
      byte   BODYSYSTEM46               91- 92   ///
      byte   BODYSYSTEM47               93- 94   ///
      byte   BODYSYSTEM48               95- 96   ///
      byte   BODYSYSTEM49               97- 98   ///
      byte   BODYSYSTEM50               99-100   ///
      byte   BODYSYSTEM51              101-102   ///
      byte   BODYSYSTEM52              103-104   ///
      byte   BODYSYSTEM53              105-106   ///
      byte   BODYSYSTEM54              107-108   ///
      byte   BODYSYSTEM55              109-110   ///
      byte   BODYSYSTEM56              111-112   ///
      byte   BODYSYSTEM57              113-114   ///
      byte   BODYSYSTEM58              115-116   ///
      byte   BODYSYSTEM59              117-118   ///
      byte   BODYSYSTEM60              119-120   ///
      byte   BODYSYSTEM61              121-122   ///
      byte   BODYSYSTEM62              123-124   ///
      byte   BODYSYSTEM63              125-126   ///
      byte   BODYSYSTEM64              127-128   ///
      byte   BODYSYSTEM65              129-130   ///
      byte   BODYSYSTEM66              131-132   ///
      byte   CHRON1                    133-134   ///
      byte   CHRON2                    135-136   ///
      byte   CHRON3                    137-138   ///
      byte   CHRON4                    139-140   ///
      byte   CHRON5                    141-142   ///
      byte   CHRON6                    143-144   ///
      byte   CHRON7                    145-146   ///
      byte   CHRON8                    147-148   ///
      byte   CHRON9                    149-150   ///
      byte   CHRON10                   151-152   ///
      byte   CHRON11                   153-154   ///
      byte   CHRON12                   155-156   ///
      byte   CHRON13                   157-158   ///
      byte   CHRON14                   159-160   ///
      byte   CHRON15                   161-162   ///
      byte   CHRON16                   163-164   ///
      byte   CHRON17                   165-166   ///
      byte   CHRON18                   167-168   ///
      byte   CHRON19                   169-170   ///
      byte   CHRON20                   171-172   ///
      byte   CHRON21                   173-174   ///
      byte   CHRON22                   175-176   ///
      byte   CHRON23                   177-178   ///
      byte   CHRON24                   179-180   ///
      byte   CHRON25                   181-182   ///
      byte   CHRON26                   183-184   ///
      byte   CHRON27                   185-186   ///
      byte   CHRON28                   187-188   ///
      byte   CHRON29                   189-190   ///
      byte   CHRON30                   191-192   ///
      byte   CHRON31                   193-194   ///
      byte   CHRON32                   195-196   ///
      byte   CHRON33                   197-198   ///
      byte   CHRON34                   199-200   ///
      byte   CHRON35                   201-202   ///
      byte   CHRON36                   203-204   ///
      byte   CHRON37                   205-206   ///
      byte   CHRON38                   207-208   ///
      byte   CHRON39                   209-210   ///
      byte   CHRON40                   211-212   ///
      byte   CHRON41                   213-214   ///
      byte   CHRON42                   215-216   ///
      byte   CHRON43                   217-218   ///
      byte   CHRON44                   219-220   ///
      byte   CHRON45                   221-222   ///
      byte   CHRON46                   223-224   ///
      byte   CHRON47                   225-226   ///
      byte   CHRON48                   227-228   ///
      byte   CHRON49                   229-230   ///
      byte   CHRON50                   231-232   ///
      byte   CHRON51                   233-234   ///
      byte   CHRON52                   235-236   ///
      byte   CHRON53                   237-238   ///
      byte   CHRON54                   239-240   ///
      byte   CHRON55                   241-242   ///
      byte   CHRON56                   243-244   ///
      byte   CHRON57                   245-246   ///
      byte   CHRON58                   247-248   ///
      byte   CHRON59                   249-250   ///
      byte   CHRON60                   251-252   ///
      byte   CHRON61                   253-254   ///
      byte   CHRON62                   255-256   ///
      byte   CHRON63                   257-258   ///
      byte   CHRON64                   259-260   ///
      byte   CHRON65                   261-262   ///
      byte   CHRON66                   263-264   ///
      str    DXMCCS1                   265-275   ///
      str    DXMCCS2                   276-286   ///
      str    DXMCCS3                   287-297   ///
      str    DXMCCS4                   298-308   ///
      str    DXMCCS5                   309-319   ///
      str    DXMCCS6                   320-330   ///
      str    DXMCCS7                   331-341   ///
      str    DXMCCS8                   342-352   ///
      str    DXMCCS9                   353-363   ///
      str    DXMCCS10                  364-374   ///
      str    DXMCCS11                  375-385   ///
      str    DXMCCS12                  386-396   ///
      str    DXMCCS13                  397-407   ///
      str    DXMCCS14                  408-418   ///
      str    DXMCCS15                  419-429   ///
      str    DXMCCS16                  430-440   ///
      str    DXMCCS17                  441-451   ///
      str    DXMCCS18                  452-462   ///
      str    DXMCCS19                  463-473   ///
      str    DXMCCS20                  474-484   ///
      str    DXMCCS21                  485-495   ///
      str    DXMCCS22                  496-506   ///
      str    DXMCCS23                  507-517   ///
      str    DXMCCS24                  518-528   ///
      str    DXMCCS25                  529-539   ///
      str    DXMCCS26                  540-550   ///
      str    DXMCCS27                  551-561   ///
      str    DXMCCS28                  562-572   ///
      str    DXMCCS29                  573-583   ///
      str    DXMCCS30                  584-594   ///
      str    DXMCCS31                  595-605   ///
      str    DXMCCS32                  606-616   ///
      str    DXMCCS33                  617-627   ///
      str    DXMCCS34                  628-638   ///
      str    DXMCCS35                  639-649   ///
      str    DXMCCS36                  650-660   ///
      str    DXMCCS37                  661-671   ///
      str    DXMCCS38                  672-682   ///
      str    DXMCCS39                  683-693   ///
      str    DXMCCS40                  694-704   ///
      str    DXMCCS41                  705-715   ///
      str    DXMCCS42                  716-726   ///
      str    DXMCCS43                  727-737   ///
      str    DXMCCS44                  738-748   ///
      str    DXMCCS45                  749-759   ///
      str    DXMCCS46                  760-770   ///
      str    DXMCCS47                  771-781   ///
      str    DXMCCS48                  782-792   ///
      str    DXMCCS49                  793-803   ///
      str    DXMCCS50                  804-814   ///
      str    DXMCCS51                  815-825   ///
      str    DXMCCS52                  826-836   ///
      str    DXMCCS53                  837-847   ///
      str    DXMCCS54                  848-858   ///
      str    DXMCCS55                  859-869   ///
      str    DXMCCS56                  870-880   ///
      str    DXMCCS57                  881-891   ///
      str    DXMCCS58                  892-902   ///
      str    DXMCCS59                  903-913   ///
      str    DXMCCS60                  914-924   ///
      str    DXMCCS61                  925-935   ///
      str    DXMCCS62                  936-946   ///
      str    DXMCCS63                  947-957   ///
      str    DXMCCS64                  958-968   ///
      str    DXMCCS65                  969-979   ///
      str    DXMCCS66                  980-990   ///
      str    E_MCCS1                  991-1001   ///
      str    E_MCCS2                 1002-1012   ///
      str    E_MCCS3                 1013-1023   ///
      str    E_MCCS4                 1024-1034   ///
      str    E_MCCS5                 1035-1045   ///
      str    E_MCCS6                 1046-1056   ///
      str    E_MCCS7                 1057-1067   ///
      str    E_MCCS8                 1068-1078   ///
      str    E_MCCS9                 1079-1089   ///
      str    E_MCCS10                1090-1100   ///
      str    E_MCCS11                1101-1111   ///
      str    E_MCCS12                1112-1122   ///
      byte   INJURY                  1123-1124   ///
      byte   INJURY_CUT              1125-1126   ///
      byte   INJURY_DROWN            1127-1128   ///
      byte   INJURY_FALL             1129-1130   ///
      byte   INJURY_FIRE             1131-1132   ///
      byte   INJURY_FIREARM          1133-1134   ///
      byte   INJURY_MACHINERY        1135-1136   ///
      byte   INJURY_MVT              1137-1138   ///
      byte   INJURY_NATURE           1139-1140   ///
      byte   INJURY_POISON           1141-1142   ///
      byte   INJURY_STRUCK           1143-1144   ///
      byte   INJURY_SUFFOCATION      1145-1146   ///
      byte   INTENT_ASSAULT          1147-1148   ///
      byte   INTENT_SELF_HARM        1149-1150   ///
      byte   INTENT_UNINTENTIONAL    1151-1152   ///
      double KEY                     1153-1167   ///
      byte   MULTINJURY              1168-1169   ///
      byte   PCLASS1                 1170-1171   ///
      byte   PCLASS2                 1172-1173   ///
      byte   PCLASS3                 1174-1175   ///
      byte   PCLASS4                 1176-1177   ///
      byte   PCLASS5                 1178-1179   ///
      byte   PCLASS6                 1180-1181   ///
      byte   PCLASS7                 1182-1183   ///
      byte   PCLASS8                 1184-1185   ///
      byte   PCLASS9                 1186-1187   ///
      byte   PCLASS10                1188-1189   ///
      byte   PCLASS11                1190-1191   ///
      byte   PCLASS12                1192-1193   ///
      byte   PCLASS13                1194-1195   ///
      byte   PCLASS14                1196-1197   ///
      byte   PCLASS15                1198-1199   ///
      byte   PCLASS16                1200-1201   ///
      byte   PCLASS17                1202-1203   ///
      byte   PCLASS18                1204-1205   ///
      byte   PCLASS19                1206-1207   ///
      byte   PCLASS20                1208-1209   ///
      byte   PCLASS21                1210-1211   ///
      byte   PCLASS22                1212-1213   ///
      byte   PCLASS23                1214-1215   ///
      byte   PCLASS24                1216-1217   ///
      byte   PCLASS25                1218-1219   ///
      byte   PCLASS26                1220-1221   ///
      byte   PCLASS27                1222-1223   ///
      byte   PCLASS28                1224-1225   ///
      byte   PCLASS29                1226-1227   ///
      byte   PCLASS30                1228-1229   ///
      byte   PCLASS31                1230-1231   ///
      byte   PCLASS32                1232-1233   ///
      byte   PCLASS33                1234-1235   ///
      byte   PCLASS34                1236-1237   ///
      byte   PCLASS35                1238-1239   ///
      byte   PCLASS36                1240-1241   ///
      byte   PCLASS37                1242-1243   ///
      byte   PCLASS38                1244-1245   ///
      byte   PCLASS39                1246-1247   ///
      byte   PCLASS40                1248-1249   ///
      byte   PCLASS41                1250-1251   ///
      byte   PCLASS42                1252-1253   ///
      byte   PCLASS43                1254-1255   ///
      byte   PCLASS44                1256-1257   ///
      byte   PCLASS45                1258-1259   ///
      byte   PCLASS46                1260-1261   ///
      byte   PCLASS47                1262-1263   ///
      byte   PCLASS48                1264-1265   ///
      byte   PCLASS49                1266-1267   ///
      byte   PCLASS50                1268-1269   ///
      str    PRMCCS1                 1270-1277   ///
      str    PRMCCS2                 1278-1285   ///
      str    PRMCCS3                 1286-1293   ///
      str    PRMCCS4                 1294-1301   ///
      str    PRMCCS5                 1302-1309   ///
      str    PRMCCS6                 1310-1317   ///
      str    PRMCCS7                 1318-1325   ///
      str    PRMCCS8                 1326-1333   ///
      str    PRMCCS9                 1334-1341   ///
      str    PRMCCS10                1342-1349   ///
      str    PRMCCS11                1350-1357   ///
      str    PRMCCS12                1358-1365   ///
      str    PRMCCS13                1366-1373   ///
      str    PRMCCS14                1374-1381   ///
      str    PRMCCS15                1382-1389   ///
      str    PRMCCS16                1390-1397   ///
      str    PRMCCS17                1398-1405   ///
      str    PRMCCS18                1406-1413   ///
      str    PRMCCS19                1414-1421   ///
      str    PRMCCS20                1422-1429   ///
      str    PRMCCS21                1430-1437   ///
      str    PRMCCS22                1438-1445   ///
      str    PRMCCS23                1446-1453   ///
      str    PRMCCS24                1454-1461   ///
      str    PRMCCS25                1462-1469   ///
      str    PRMCCS26                1470-1477   ///
      str    PRMCCS27                1478-1485   ///
      str    PRMCCS28                1486-1493   ///
      str    PRMCCS29                1494-1501   ///
      str    PRMCCS30                1502-1509   ///
      str    PRMCCS31                1510-1517   ///
      str    PRMCCS32                1518-1525   ///
      str    PRMCCS33                1526-1533   ///
      str    PRMCCS34                1534-1541   ///
      str    PRMCCS35                1542-1549   ///
      str    PRMCCS36                1550-1557   ///
      str    PRMCCS37                1558-1565   ///
      str    PRMCCS38                1566-1573   ///
      str    PRMCCS39                1574-1581   ///
      str    PRMCCS40                1582-1589   ///
      str    PRMCCS41                1590-1597   ///
      str    PRMCCS42                1598-1605   ///
      str    PRMCCS43                1606-1613   ///
      str    PRMCCS44                1614-1621   ///
      str    PRMCCS45                1622-1629   ///
      str    PRMCCS46                1630-1637   ///
      str    PRMCCS47                1638-1645   ///
      str    PRMCCS48                1646-1653   ///
      str    PRMCCS49                1654-1661   ///
      str    PRMCCS50                1662-1669   ///
      byte   U_BLOOD                 1670-1671   ///
      byte   U_CATH                  1672-1673   ///
      byte   U_CCU                   1674-1675   ///
      byte   U_CHESTXRAY             1676-1677   ///
      byte   U_CTSCAN                1678-1679   ///
      byte   U_DIALYSIS              1680-1681   ///
      byte   U_ECHO                  1682-1683   ///
      byte   U_ED                    1684-1685   ///
      byte   U_EEG                   1686-1687   ///
      byte   U_EKG                   1688-1689   ///
      byte   U_EPO                   1690-1691   ///
      byte   U_ICU                   1692-1693   ///
      byte   U_LITHOTRIPSY           1694-1695   ///
      byte   U_MHSA                  1696-1697   ///
      byte   U_MRT                   1698-1699   ///
      byte   U_NEWBN2L               1700-1701   ///
      byte   U_NEWBN3L               1702-1703   ///
      byte   U_NEWBN4L               1704-1705   ///
      byte   U_NUCMED                1706-1707   ///
      byte   U_OBSERVATION           1708-1709   ///
      byte   U_OCCTHERAPY            1710-1711   ///
      byte   U_ORGANACQ              1712-1713   ///
      byte   U_OTHIMPLANTS           1714-1715   ///
      byte   U_PACEMAKER             1716-1717   ///
      byte   U_PHYTHERAPY            1718-1719   ///
      byte   U_RADTHERAPY            1720-1721   ///
      byte   U_RESPTHERAPY           1722-1723   ///
      byte   U_SPEECHTHERAPY         1724-1725   ///
      byte   U_STRESS                1726-1727   ///
      byte   U_ULTRASOUND            1728-1729   ///
      using  "WI_SID_2014_DX_PR_GRPS.ASC"

***  Assign labels to the data elements ***
label var BODYSYSTEM1              "Body system 1"
label var BODYSYSTEM2              "Body system 2"
label var BODYSYSTEM3              "Body system 3"
label var BODYSYSTEM4              "Body system 4"
label var BODYSYSTEM5              "Body system 5"
label var BODYSYSTEM6              "Body system 6"
label var BODYSYSTEM7              "Body system 7"
label var BODYSYSTEM8              "Body system 8"
label var BODYSYSTEM9              "Body system 9"
label var BODYSYSTEM10             "Body system 10"
label var BODYSYSTEM11             "Body system 11"
label var BODYSYSTEM12             "Body system 12"
label var BODYSYSTEM13             "Body system 13"
label var BODYSYSTEM14             "Body system 14"
label var BODYSYSTEM15             "Body system 15"
label var BODYSYSTEM16             "Body system 16"
label var BODYSYSTEM17             "Body system 17"
label var BODYSYSTEM18             "Body system 18"
label var BODYSYSTEM19             "Body system 19"
label var BODYSYSTEM20             "Body system 20"
label var BODYSYSTEM21             "Body system 21"
label var BODYSYSTEM22             "Body system 22"
label var BODYSYSTEM23             "Body system 23"
label var BODYSYSTEM24             "Body system 24"
label var BODYSYSTEM25             "Body system 25"
label var BODYSYSTEM26             "Body system 26"
label var BODYSYSTEM27             "Body system 27"
label var BODYSYSTEM28             "Body system 28"
label var BODYSYSTEM29             "Body system 29"
label var BODYSYSTEM30             "Body system 30"
label var BODYSYSTEM31             "Body system 31"
label var BODYSYSTEM32             "Body system 32"
label var BODYSYSTEM33             "Body system 33"
label var BODYSYSTEM34             "Body system 34"
label var BODYSYSTEM35             "Body system 35"
label var BODYSYSTEM36             "Body system 36"
label var BODYSYSTEM37             "Body system 37"
label var BODYSYSTEM38             "Body system 38"
label var BODYSYSTEM39             "Body system 39"
label var BODYSYSTEM40             "Body system 40"
label var BODYSYSTEM41             "Body system 41"
label var BODYSYSTEM42             "Body system 42"
label var BODYSYSTEM43             "Body system 43"
label var BODYSYSTEM44             "Body system 44"
label var BODYSYSTEM45             "Body system 45"
label var BODYSYSTEM46             "Body system 46"
label var BODYSYSTEM47             "Body system 47"
label var BODYSYSTEM48             "Body system 48"
label var BODYSYSTEM49             "Body system 49"
label var BODYSYSTEM50             "Body system 50"
label var BODYSYSTEM51             "Body system 51"
label var BODYSYSTEM52             "Body system 52"
label var BODYSYSTEM53             "Body system 53"
label var BODYSYSTEM54             "Body system 54"
label var BODYSYSTEM55             "Body system 55"
label var BODYSYSTEM56             "Body system 56"
label var BODYSYSTEM57             "Body system 57"
label var BODYSYSTEM58             "Body system 58"
label var BODYSYSTEM59             "Body system 59"
label var BODYSYSTEM60             "Body system 60"
label var BODYSYSTEM61             "Body system 61"
label var BODYSYSTEM62             "Body system 62"
label var BODYSYSTEM63             "Body system 63"
label var BODYSYSTEM64             "Body system 64"
label var BODYSYSTEM65             "Body system 65"
label var BODYSYSTEM66             "Body system 66"
label var CHRON1                   "Chronic condition indicator 1"
label var CHRON2                   "Chronic condition indicator 2"
label var CHRON3                   "Chronic condition indicator 3"
label var CHRON4                   "Chronic condition indicator 4"
label var CHRON5                   "Chronic condition indicator 5"
label var CHRON6                   "Chronic condition indicator 6"
label var CHRON7                   "Chronic condition indicator 7"
label var CHRON8                   "Chronic condition indicator 8"
label var CHRON9                   "Chronic condition indicator 9"
label var CHRON10                  "Chronic condition indicator 10"
label var CHRON11                  "Chronic condition indicator 11"
label var CHRON12                  "Chronic condition indicator 12"
label var CHRON13                  "Chronic condition indicator 13"
label var CHRON14                  "Chronic condition indicator 14"
label var CHRON15                  "Chronic condition indicator 15"
label var CHRON16                  "Chronic condition indicator 16"
label var CHRON17                  "Chronic condition indicator 17"
label var CHRON18                  "Chronic condition indicator 18"
label var CHRON19                  "Chronic condition indicator 19"
label var CHRON20                  "Chronic condition indicator 20"
label var CHRON21                  "Chronic condition indicator 21"
label var CHRON22                  "Chronic condition indicator 22"
label var CHRON23                  "Chronic condition indicator 23"
label var CHRON24                  "Chronic condition indicator 24"
label var CHRON25                  "Chronic condition indicator 25"
label var CHRON26                  "Chronic condition indicator 26"
label var CHRON27                  "Chronic condition indicator 27"
label var CHRON28                  "Chronic condition indicator 28"
label var CHRON29                  "Chronic condition indicator 29"
label var CHRON30                  "Chronic condition indicator 30"
label var CHRON31                  "Chronic condition indicator 31"
label var CHRON32                  "Chronic condition indicator 32"
label var CHRON33                  "Chronic condition indicator 33"
label var CHRON34                  "Chronic condition indicator 34"
label var CHRON35                  "Chronic condition indicator 35"
label var CHRON36                  "Chronic condition indicator 36"
label var CHRON37                  "Chronic condition indicator 37"
label var CHRON38                  "Chronic condition indicator 38"
label var CHRON39                  "Chronic condition indicator 39"
label var CHRON40                  "Chronic condition indicator 40"
label var CHRON41                  "Chronic condition indicator 41"
label var CHRON42                  "Chronic condition indicator 42"
label var CHRON43                  "Chronic condition indicator 43"
label var CHRON44                  "Chronic condition indicator 44"
label var CHRON45                  "Chronic condition indicator 45"
label var CHRON46                  "Chronic condition indicator 46"
label var CHRON47                  "Chronic condition indicator 47"
label var CHRON48                  "Chronic condition indicator 48"
label var CHRON49                  "Chronic condition indicator 49"
label var CHRON50                  "Chronic condition indicator 50"
label var CHRON51                  "Chronic condition indicator 51"
label var CHRON52                  "Chronic condition indicator 52"
label var CHRON53                  "Chronic condition indicator 53"
label var CHRON54                  "Chronic condition indicator 54"
label var CHRON55                  "Chronic condition indicator 55"
label var CHRON56                  "Chronic condition indicator 56"
label var CHRON57                  "Chronic condition indicator 57"
label var CHRON58                  "Chronic condition indicator 58"
label var CHRON59                  "Chronic condition indicator 59"
label var CHRON60                  "Chronic condition indicator 60"
label var CHRON61                  "Chronic condition indicator 61"
label var CHRON62                  "Chronic condition indicator 62"
label var CHRON63                  "Chronic condition indicator 63"
label var CHRON64                  "Chronic condition indicator 64"
label var CHRON65                  "Chronic condition indicator 65"
label var CHRON66                  "Chronic condition indicator 66"
label var DXMCCS1                  "Multi-Level CCS:  Diagnosis 1"
label var DXMCCS2                  "Multi-Level CCS:  Diagnosis 2"
label var DXMCCS3                  "Multi-Level CCS:  Diagnosis 3"
label var DXMCCS4                  "Multi-Level CCS:  Diagnosis 4"
label var DXMCCS5                  "Multi-Level CCS:  Diagnosis 5"
label var DXMCCS6                  "Multi-Level CCS:  Diagnosis 6"
label var DXMCCS7                  "Multi-Level CCS:  Diagnosis 7"
label var DXMCCS8                  "Multi-Level CCS:  Diagnosis 8"
label var DXMCCS9                  "Multi-Level CCS:  Diagnosis 9"
label var DXMCCS10                 "Multi-Level CCS:  Diagnosis 10"
label var DXMCCS11                 "Multi-Level CCS:  Diagnosis 11"
label var DXMCCS12                 "Multi-Level CCS:  Diagnosis 12"
label var DXMCCS13                 "Multi-Level CCS:  Diagnosis 13"
label var DXMCCS14                 "Multi-Level CCS:  Diagnosis 14"
label var DXMCCS15                 "Multi-Level CCS:  Diagnosis 15"
label var DXMCCS16                 "Multi-Level CCS:  Diagnosis 16"
label var DXMCCS17                 "Multi-Level CCS:  Diagnosis 17"
label var DXMCCS18                 "Multi-Level CCS:  Diagnosis 18"
label var DXMCCS19                 "Multi-Level CCS:  Diagnosis 19"
label var DXMCCS20                 "Multi-Level CCS:  Diagnosis 20"
label var DXMCCS21                 "Multi-Level CCS:  Diagnosis 21"
label var DXMCCS22                 "Multi-Level CCS:  Diagnosis 22"
label var DXMCCS23                 "Multi-Level CCS:  Diagnosis 23"
label var DXMCCS24                 "Multi-Level CCS:  Diagnosis 24"
label var DXMCCS25                 "Multi-Level CCS:  Diagnosis 25"
label var DXMCCS26                 "Multi-Level CCS:  Diagnosis 26"
label var DXMCCS27                 "Multi-Level CCS:  Diagnosis 27"
label var DXMCCS28                 "Multi-Level CCS:  Diagnosis 28"
label var DXMCCS29                 "Multi-Level CCS:  Diagnosis 29"
label var DXMCCS30                 "Multi-Level CCS:  Diagnosis 30"
label var DXMCCS31                 "Multi-Level CCS:  Diagnosis 31"
label var DXMCCS32                 "Multi-Level CCS:  Diagnosis 32"
label var DXMCCS33                 "Multi-Level CCS:  Diagnosis 33"
label var DXMCCS34                 "Multi-Level CCS:  Diagnosis 34"
label var DXMCCS35                 "Multi-Level CCS:  Diagnosis 35"
label var DXMCCS36                 "Multi-Level CCS:  Diagnosis 36"
label var DXMCCS37                 "Multi-Level CCS:  Diagnosis 37"
label var DXMCCS38                 "Multi-Level CCS:  Diagnosis 38"
label var DXMCCS39                 "Multi-Level CCS:  Diagnosis 39"
label var DXMCCS40                 "Multi-Level CCS:  Diagnosis 40"
label var DXMCCS41                 "Multi-Level CCS:  Diagnosis 41"
label var DXMCCS42                 "Multi-Level CCS:  Diagnosis 42"
label var DXMCCS43                 "Multi-Level CCS:  Diagnosis 43"
label var DXMCCS44                 "Multi-Level CCS:  Diagnosis 44"
label var DXMCCS45                 "Multi-Level CCS:  Diagnosis 45"
label var DXMCCS46                 "Multi-Level CCS:  Diagnosis 46"
label var DXMCCS47                 "Multi-Level CCS:  Diagnosis 47"
label var DXMCCS48                 "Multi-Level CCS:  Diagnosis 48"
label var DXMCCS49                 "Multi-Level CCS:  Diagnosis 49"
label var DXMCCS50                 "Multi-Level CCS:  Diagnosis 50"
label var DXMCCS51                 "Multi-Level CCS:  Diagnosis 51"
label var DXMCCS52                 "Multi-Level CCS:  Diagnosis 52"
label var DXMCCS53                 "Multi-Level CCS:  Diagnosis 53"
label var DXMCCS54                 "Multi-Level CCS:  Diagnosis 54"
label var DXMCCS55                 "Multi-Level CCS:  Diagnosis 55"
label var DXMCCS56                 "Multi-Level CCS:  Diagnosis 56"
label var DXMCCS57                 "Multi-Level CCS:  Diagnosis 57"
label var DXMCCS58                 "Multi-Level CCS:  Diagnosis 58"
label var DXMCCS59                 "Multi-Level CCS:  Diagnosis 59"
label var DXMCCS60                 "Multi-Level CCS:  Diagnosis 60"
label var DXMCCS61                 "Multi-Level CCS:  Diagnosis 61"
label var DXMCCS62                 "Multi-Level CCS:  Diagnosis 62"
label var DXMCCS63                 "Multi-Level CCS:  Diagnosis 63"
label var DXMCCS64                 "Multi-Level CCS:  Diagnosis 64"
label var DXMCCS65                 "Multi-Level CCS:  Diagnosis 65"
label var DXMCCS66                 "Multi-Level CCS:  Diagnosis 66"
label var E_MCCS1                  "Multi-Level CCS:  E Code 1"
label var E_MCCS2                  "Multi-Level CCS:  E Code 2"
label var E_MCCS3                  "Multi-Level CCS:  E Code 3"
label var E_MCCS4                  "Multi-Level CCS:  E Code 4"
label var E_MCCS5                  "Multi-Level CCS:  E Code 5"
label var E_MCCS6                  "Multi-Level CCS:  E Code 6"
label var E_MCCS7                  "Multi-Level CCS:  E Code 7"
label var E_MCCS8                  "Multi-Level CCS:  E Code 8"
label var E_MCCS9                  "Multi-Level CCS:  E Code 9"
label var E_MCCS10                 "Multi-Level CCS:  E Code 10"
label var E_MCCS11                 "Multi-Level CCS:  E Code 11"
label var E_MCCS12                 "Multi-Level CCS:  E Code 12"
label var INJURY                   "Injury diagnosis reported on record (1:DX1 is an injury; 2:DX2+ is an injury; 0:No injury)"
label var INJURY_CUT               "Injury by cutting or piercing (by E codes)"
label var INJURY_DROWN             "Injury by drowning or submersion (by E codes)"
label var INJURY_FALL              "Injury by falling (by E codes)"
label var INJURY_FIRE              "Injury by fire, flame or hot object (by E codes)"
label var INJURY_FIREARM           "Injury by firearm (by E codes)"
label var INJURY_MACHINERY         "Injury by machinery (by E codes)"
label var INJURY_MVT               "Injury involving motor vehicle traffic (by E codes)"
label var INJURY_NATURE            "Injury involving nature or environmental factors (by E codes)"
label var INJURY_POISON            "Injury by poison (by E codes)"
label var INJURY_STRUCK            "Injury from being struck by or against (by E codes)"
label var INJURY_SUFFOCATION       "Injury by suffocation (by E codes)"
label var INTENT_ASSAULT           "Injury by assault indicated on the record (by E codes)"
label var INTENT_SELF_HARM         "Intentional self harm indicated on the record (by diagnosis and/or E codes)"
label var INTENT_UNINTENTIONAL     "Unintentional injury indicated on the record (by E codes)"
label var KEY                      "HCUP record identifier"
label var MULTINJURY               "More than one injury diagnosis reported on record"
label var PCLASS1                  "Procedure class 1"
label var PCLASS2                  "Procedure class 2"
label var PCLASS3                  "Procedure class 3"
label var PCLASS4                  "Procedure class 4"
label var PCLASS5                  "Procedure class 5"
label var PCLASS6                  "Procedure class 6"
label var PCLASS7                  "Procedure class 7"
label var PCLASS8                  "Procedure class 8"
label var PCLASS9                  "Procedure class 9"
label var PCLASS10                 "Procedure class 10"
label var PCLASS11                 "Procedure class 11"
label var PCLASS12                 "Procedure class 12"
label var PCLASS13                 "Procedure class 13"
label var PCLASS14                 "Procedure class 14"
label var PCLASS15                 "Procedure class 15"
label var PCLASS16                 "Procedure class 16"
label var PCLASS17                 "Procedure class 17"
label var PCLASS18                 "Procedure class 18"
label var PCLASS19                 "Procedure class 19"
label var PCLASS20                 "Procedure class 20"
label var PCLASS21                 "Procedure class 21"
label var PCLASS22                 "Procedure class 22"
label var PCLASS23                 "Procedure class 23"
label var PCLASS24                 "Procedure class 24"
label var PCLASS25                 "Procedure class 25"
label var PCLASS26                 "Procedure class 26"
label var PCLASS27                 "Procedure class 27"
label var PCLASS28                 "Procedure class 28"
label var PCLASS29                 "Procedure class 29"
label var PCLASS30                 "Procedure class 30"
label var PCLASS31                 "Procedure class 31"
label var PCLASS32                 "Procedure class 32"
label var PCLASS33                 "Procedure class 33"
label var PCLASS34                 "Procedure class 34"
label var PCLASS35                 "Procedure class 35"
label var PCLASS36                 "Procedure class 36"
label var PCLASS37                 "Procedure class 37"
label var PCLASS38                 "Procedure class 38"
label var PCLASS39                 "Procedure class 39"
label var PCLASS40                 "Procedure class 40"
label var PCLASS41                 "Procedure class 41"
label var PCLASS42                 "Procedure class 42"
label var PCLASS43                 "Procedure class 43"
label var PCLASS44                 "Procedure class 44"
label var PCLASS45                 "Procedure class 45"
label var PCLASS46                 "Procedure class 46"
label var PCLASS47                 "Procedure class 47"
label var PCLASS48                 "Procedure class 48"
label var PCLASS49                 "Procedure class 49"
label var PCLASS50                 "Procedure class 50"
label var PRMCCS1                  "Multi-Level CCS:  Procedure 1"
label var PRMCCS2                  "Multi-Level CCS:  Procedure 2"
label var PRMCCS3                  "Multi-Level CCS:  Procedure 3"
label var PRMCCS4                  "Multi-Level CCS:  Procedure 4"
label var PRMCCS5                  "Multi-Level CCS:  Procedure 5"
label var PRMCCS6                  "Multi-Level CCS:  Procedure 6"
label var PRMCCS7                  "Multi-Level CCS:  Procedure 7"
label var PRMCCS8                  "Multi-Level CCS:  Procedure 8"
label var PRMCCS9                  "Multi-Level CCS:  Procedure 9"
label var PRMCCS10                 "Multi-Level CCS:  Procedure 10"
label var PRMCCS11                 "Multi-Level CCS:  Procedure 11"
label var PRMCCS12                 "Multi-Level CCS:  Procedure 12"
label var PRMCCS13                 "Multi-Level CCS:  Procedure 13"
label var PRMCCS14                 "Multi-Level CCS:  Procedure 14"
label var PRMCCS15                 "Multi-Level CCS:  Procedure 15"
label var PRMCCS16                 "Multi-Level CCS:  Procedure 16"
label var PRMCCS17                 "Multi-Level CCS:  Procedure 17"
label var PRMCCS18                 "Multi-Level CCS:  Procedure 18"
label var PRMCCS19                 "Multi-Level CCS:  Procedure 19"
label var PRMCCS20                 "Multi-Level CCS:  Procedure 20"
label var PRMCCS21                 "Multi-Level CCS:  Procedure 21"
label var PRMCCS22                 "Multi-Level CCS:  Procedure 22"
label var PRMCCS23                 "Multi-Level CCS:  Procedure 23"
label var PRMCCS24                 "Multi-Level CCS:  Procedure 24"
label var PRMCCS25                 "Multi-Level CCS:  Procedure 25"
label var PRMCCS26                 "Multi-Level CCS:  Procedure 26"
label var PRMCCS27                 "Multi-Level CCS:  Procedure 27"
label var PRMCCS28                 "Multi-Level CCS:  Procedure 28"
label var PRMCCS29                 "Multi-Level CCS:  Procedure 29"
label var PRMCCS30                 "Multi-Level CCS:  Procedure 30"
label var PRMCCS31                 "Multi-Level CCS:  Procedure 31"
label var PRMCCS32                 "Multi-Level CCS:  Procedure 32"
label var PRMCCS33                 "Multi-Level CCS:  Procedure 33"
label var PRMCCS34                 "Multi-Level CCS:  Procedure 34"
label var PRMCCS35                 "Multi-Level CCS:  Procedure 35"
label var PRMCCS36                 "Multi-Level CCS:  Procedure 36"
label var PRMCCS37                 "Multi-Level CCS:  Procedure 37"
label var PRMCCS38                 "Multi-Level CCS:  Procedure 38"
label var PRMCCS39                 "Multi-Level CCS:  Procedure 39"
label var PRMCCS40                 "Multi-Level CCS:  Procedure 40"
label var PRMCCS41                 "Multi-Level CCS:  Procedure 41"
label var PRMCCS42                 "Multi-Level CCS:  Procedure 42"
label var PRMCCS43                 "Multi-Level CCS:  Procedure 43"
label var PRMCCS44                 "Multi-Level CCS:  Procedure 44"
label var PRMCCS45                 "Multi-Level CCS:  Procedure 45"
label var PRMCCS46                 "Multi-Level CCS:  Procedure 46"
label var PRMCCS47                 "Multi-Level CCS:  Procedure 47"
label var PRMCCS48                 "Multi-Level CCS:  Procedure 48"
label var PRMCCS49                 "Multi-Level CCS:  Procedure 49"
label var PRMCCS50                 "Multi-Level CCS:  Procedure 50"
label var U_BLOOD                  "Utilization Flag: Blood"
label var U_CATH                   "Utilization Flag: Cardiac Catheterization Lab"
label var U_CCU                    "Utilization Flag: Coronary Care Unit (CCU)"
label var U_CHESTXRAY              "Utilization Flag: Chest X-Ray"
label var U_CTSCAN                 "Utilization Flag: Computed Tomography Scan"
label var U_DIALYSIS               "Utilization Flag: Renal Dialysis"
label var U_ECHO                   "Utilization Flag: Echocardiology"
label var U_ED                     "Utilization Flag: Emergency Room"
label var U_EEG                    "Utilization Flag: Electroencephalogram"
label var U_EKG                    "Utilization Flag: Electrocardiogram"
label var U_EPO                    "Utilization Flag: EPO"
label var U_ICU                    "Utilization Flag: Intensive Care Unit (ICU)"
label var U_LITHOTRIPSY            "Utilization Flag: Lithotripsy"
label var U_MHSA                   "Utilization Flag: Mental Health and Substance Abuse"
label var U_MRT                    "Utilization Flag: Medical Resonance Technology"
label var U_NEWBN2L                "Utilization Flag: Nursery Level II"
label var U_NEWBN3L                "Utilization Flag: Nursery Level III"
label var U_NEWBN4L                "Utilization Flag: Nursery Level IV"
label var U_NUCMED                 "Utilization Flag: Nuclear Medicine"
label var U_OBSERVATION            "Utilization Flag: Observation Room"
label var U_OCCTHERAPY             "Utilization Flag: Occupational Therapy"
label var U_ORGANACQ               "Utilization Flag: Organ Acquisition"
label var U_OTHIMPLANTS            "Utilization Flag: Other Implants"
label var U_PACEMAKER              "Utilization Flag: Pacemaker"
label var U_PHYTHERAPY             "Utilization Flag: Physical Therapy"
label var U_RADTHERAPY             "Utilization Flag: Radiology - Therapeutic and/or Chemotherapy Administration"
label var U_RESPTHERAPY            "Utilization Flag: Respiratory Services"
label var U_SPEECHTHERAPY          "Utilization Flag: Speech - Language Pathology"
label var U_STRESS                 "Utilization Flag: Cardiac Stress Test"
label var U_ULTRASOUND             "Utilization Flag: Ultrasound"

*** Convert special values to missing values ***
recode BODYSYSTEM1               (-9 -8 -6 -5=.)
recode BODYSYSTEM2               (-9 -8 -6 -5=.)
recode BODYSYSTEM3               (-9 -8 -6 -5=.)
recode BODYSYSTEM4               (-9 -8 -6 -5=.)
recode BODYSYSTEM5               (-9 -8 -6 -5=.)
recode BODYSYSTEM6               (-9 -8 -6 -5=.)
recode BODYSYSTEM7               (-9 -8 -6 -5=.)
recode BODYSYSTEM8               (-9 -8 -6 -5=.)
recode BODYSYSTEM9               (-9 -8 -6 -5=.)
recode BODYSYSTEM10              (-9 -8 -6 -5=.)
recode BODYSYSTEM11              (-9 -8 -6 -5=.)
recode BODYSYSTEM12              (-9 -8 -6 -5=.)
recode BODYSYSTEM13              (-9 -8 -6 -5=.)
recode BODYSYSTEM14              (-9 -8 -6 -5=.)
recode BODYSYSTEM15              (-9 -8 -6 -5=.)
recode BODYSYSTEM16              (-9 -8 -6 -5=.)
recode BODYSYSTEM17              (-9 -8 -6 -5=.)
recode BODYSYSTEM18              (-9 -8 -6 -5=.)
recode BODYSYSTEM19              (-9 -8 -6 -5=.)
recode BODYSYSTEM20              (-9 -8 -6 -5=.)
recode BODYSYSTEM21              (-9 -8 -6 -5=.)
recode BODYSYSTEM22              (-9 -8 -6 -5=.)
recode BODYSYSTEM23              (-9 -8 -6 -5=.)
recode BODYSYSTEM24              (-9 -8 -6 -5=.)
recode BODYSYSTEM25              (-9 -8 -6 -5=.)
recode BODYSYSTEM26              (-9 -8 -6 -5=.)
recode BODYSYSTEM27              (-9 -8 -6 -5=.)
recode BODYSYSTEM28              (-9 -8 -6 -5=.)
recode BODYSYSTEM29              (-9 -8 -6 -5=.)
recode BODYSYSTEM30              (-9 -8 -6 -5=.)
recode BODYSYSTEM31              (-9 -8 -6 -5=.)
recode BODYSYSTEM32              (-9 -8 -6 -5=.)
recode BODYSYSTEM33              (-9 -8 -6 -5=.)
recode BODYSYSTEM34              (-9 -8 -6 -5=.)
recode BODYSYSTEM35              (-9 -8 -6 -5=.)
recode BODYSYSTEM36              (-9 -8 -6 -5=.)
recode BODYSYSTEM37              (-9 -8 -6 -5=.)
recode BODYSYSTEM38              (-9 -8 -6 -5=.)
recode BODYSYSTEM39              (-9 -8 -6 -5=.)
recode BODYSYSTEM40              (-9 -8 -6 -5=.)
recode BODYSYSTEM41              (-9 -8 -6 -5=.)
recode BODYSYSTEM42              (-9 -8 -6 -5=.)
recode BODYSYSTEM43              (-9 -8 -6 -5=.)
recode BODYSYSTEM44              (-9 -8 -6 -5=.)
recode BODYSYSTEM45              (-9 -8 -6 -5=.)
recode BODYSYSTEM46              (-9 -8 -6 -5=.)
recode BODYSYSTEM47              (-9 -8 -6 -5=.)
recode BODYSYSTEM48              (-9 -8 -6 -5=.)
recode BODYSYSTEM49              (-9 -8 -6 -5=.)
recode BODYSYSTEM50              (-9 -8 -6 -5=.)
recode BODYSYSTEM51              (-9 -8 -6 -5=.)
recode BODYSYSTEM52              (-9 -8 -6 -5=.)
recode BODYSYSTEM53              (-9 -8 -6 -5=.)
recode BODYSYSTEM54              (-9 -8 -6 -5=.)
recode BODYSYSTEM55              (-9 -8 -6 -5=.)
recode BODYSYSTEM56              (-9 -8 -6 -5=.)
recode BODYSYSTEM57              (-9 -8 -6 -5=.)
recode BODYSYSTEM58              (-9 -8 -6 -5=.)
recode BODYSYSTEM59              (-9 -8 -6 -5=.)
recode BODYSYSTEM60              (-9 -8 -6 -5=.)
recode BODYSYSTEM61              (-9 -8 -6 -5=.)
recode BODYSYSTEM62              (-9 -8 -6 -5=.)
recode BODYSYSTEM63              (-9 -8 -6 -5=.)
recode BODYSYSTEM64              (-9 -8 -6 -5=.)
recode BODYSYSTEM65              (-9 -8 -6 -5=.)
recode BODYSYSTEM66              (-9 -8 -6 -5=.)
recode CHRON1                    (-9 -8 -6 -5=.)
recode CHRON2                    (-9 -8 -6 -5=.)
recode CHRON3                    (-9 -8 -6 -5=.)
recode CHRON4                    (-9 -8 -6 -5=.)
recode CHRON5                    (-9 -8 -6 -5=.)
recode CHRON6                    (-9 -8 -6 -5=.)
recode CHRON7                    (-9 -8 -6 -5=.)
recode CHRON8                    (-9 -8 -6 -5=.)
recode CHRON9                    (-9 -8 -6 -5=.)
recode CHRON10                   (-9 -8 -6 -5=.)
recode CHRON11                   (-9 -8 -6 -5=.)
recode CHRON12                   (-9 -8 -6 -5=.)
recode CHRON13                   (-9 -8 -6 -5=.)
recode CHRON14                   (-9 -8 -6 -5=.)
recode CHRON15                   (-9 -8 -6 -5=.)
recode CHRON16                   (-9 -8 -6 -5=.)
recode CHRON17                   (-9 -8 -6 -5=.)
recode CHRON18                   (-9 -8 -6 -5=.)
recode CHRON19                   (-9 -8 -6 -5=.)
recode CHRON20                   (-9 -8 -6 -5=.)
recode CHRON21                   (-9 -8 -6 -5=.)
recode CHRON22                   (-9 -8 -6 -5=.)
recode CHRON23                   (-9 -8 -6 -5=.)
recode CHRON24                   (-9 -8 -6 -5=.)
recode CHRON25                   (-9 -8 -6 -5=.)
recode CHRON26                   (-9 -8 -6 -5=.)
recode CHRON27                   (-9 -8 -6 -5=.)
recode CHRON28                   (-9 -8 -6 -5=.)
recode CHRON29                   (-9 -8 -6 -5=.)
recode CHRON30                   (-9 -8 -6 -5=.)
recode CHRON31                   (-9 -8 -6 -5=.)
recode CHRON32                   (-9 -8 -6 -5=.)
recode CHRON33                   (-9 -8 -6 -5=.)
recode CHRON34                   (-9 -8 -6 -5=.)
recode CHRON35                   (-9 -8 -6 -5=.)
recode CHRON36                   (-9 -8 -6 -5=.)
recode CHRON37                   (-9 -8 -6 -5=.)
recode CHRON38                   (-9 -8 -6 -5=.)
recode CHRON39                   (-9 -8 -6 -5=.)
recode CHRON40                   (-9 -8 -6 -5=.)
recode CHRON41                   (-9 -8 -6 -5=.)
recode CHRON42                   (-9 -8 -6 -5=.)
recode CHRON43                   (-9 -8 -6 -5=.)
recode CHRON44                   (-9 -8 -6 -5=.)
recode CHRON45                   (-9 -8 -6 -5=.)
recode CHRON46                   (-9 -8 -6 -5=.)
recode CHRON47                   (-9 -8 -6 -5=.)
recode CHRON48                   (-9 -8 -6 -5=.)
recode CHRON49                   (-9 -8 -6 -5=.)
recode CHRON50                   (-9 -8 -6 -5=.)
recode CHRON51                   (-9 -8 -6 -5=.)
recode CHRON52                   (-9 -8 -6 -5=.)
recode CHRON53                   (-9 -8 -6 -5=.)
recode CHRON54                   (-9 -8 -6 -5=.)
recode CHRON55                   (-9 -8 -6 -5=.)
recode CHRON56                   (-9 -8 -6 -5=.)
recode CHRON57                   (-9 -8 -6 -5=.)
recode CHRON58                   (-9 -8 -6 -5=.)
recode CHRON59                   (-9 -8 -6 -5=.)
recode CHRON60                   (-9 -8 -6 -5=.)
recode CHRON61                   (-9 -8 -6 -5=.)
recode CHRON62                   (-9 -8 -6 -5=.)
recode CHRON63                   (-9 -8 -6 -5=.)
recode CHRON64                   (-9 -8 -6 -5=.)
recode CHRON65                   (-9 -8 -6 -5=.)
recode CHRON66                   (-9 -8 -6 -5=.)
recode INJURY                    (-9 -8 -6 -5=.)
recode INJURY_CUT                (-9 -8 -6 -5=.)
recode INJURY_DROWN              (-9 -8 -6 -5=.)
recode INJURY_FALL               (-9 -8 -6 -5=.)
recode INJURY_FIRE               (-9 -8 -6 -5=.)
recode INJURY_FIREARM            (-9 -8 -6 -5=.)
recode INJURY_MACHINERY          (-9 -8 -6 -5=.)
recode INJURY_MVT                (-9 -8 -6 -5=.)
recode INJURY_NATURE             (-9 -8 -6 -5=.)
recode INJURY_POISON             (-9 -8 -6 -5=.)
recode INJURY_STRUCK             (-9 -8 -6 -5=.)
recode INJURY_SUFFOCATION        (-9 -8 -6 -5=.)
recode INTENT_ASSAULT            (-9 -8 -6 -5=.)
recode INTENT_SELF_HARM          (-9 -8 -6 -5=.)
recode INTENT_UNINTENTIONAL      (-9 -8 -6 -5=.)
recode MULTINJURY                (-9 -8 -6 -5=.)
recode PCLASS1                   (-9 -8 -6 -5=.)
recode PCLASS2                   (-9 -8 -6 -5=.)
recode PCLASS3                   (-9 -8 -6 -5=.)
recode PCLASS4                   (-9 -8 -6 -5=.)
recode PCLASS5                   (-9 -8 -6 -5=.)
recode PCLASS6                   (-9 -8 -6 -5=.)
recode PCLASS7                   (-9 -8 -6 -5=.)
recode PCLASS8                   (-9 -8 -6 -5=.)
recode PCLASS9                   (-9 -8 -6 -5=.)
recode PCLASS10                  (-9 -8 -6 -5=.)
recode PCLASS11                  (-9 -8 -6 -5=.)
recode PCLASS12                  (-9 -8 -6 -5=.)
recode PCLASS13                  (-9 -8 -6 -5=.)
recode PCLASS14                  (-9 -8 -6 -5=.)
recode PCLASS15                  (-9 -8 -6 -5=.)
recode PCLASS16                  (-9 -8 -6 -5=.)
recode PCLASS17                  (-9 -8 -6 -5=.)
recode PCLASS18                  (-9 -8 -6 -5=.)
recode PCLASS19                  (-9 -8 -6 -5=.)
recode PCLASS20                  (-9 -8 -6 -5=.)
recode PCLASS21                  (-9 -8 -6 -5=.)
recode PCLASS22                  (-9 -8 -6 -5=.)
recode PCLASS23                  (-9 -8 -6 -5=.)
recode PCLASS24                  (-9 -8 -6 -5=.)
recode PCLASS25                  (-9 -8 -6 -5=.)
recode PCLASS26                  (-9 -8 -6 -5=.)
recode PCLASS27                  (-9 -8 -6 -5=.)
recode PCLASS28                  (-9 -8 -6 -5=.)
recode PCLASS29                  (-9 -8 -6 -5=.)
recode PCLASS30                  (-9 -8 -6 -5=.)
recode PCLASS31                  (-9 -8 -6 -5=.)
recode PCLASS32                  (-9 -8 -6 -5=.)
recode PCLASS33                  (-9 -8 -6 -5=.)
recode PCLASS34                  (-9 -8 -6 -5=.)
recode PCLASS35                  (-9 -8 -6 -5=.)
recode PCLASS36                  (-9 -8 -6 -5=.)
recode PCLASS37                  (-9 -8 -6 -5=.)
recode PCLASS38                  (-9 -8 -6 -5=.)
recode PCLASS39                  (-9 -8 -6 -5=.)
recode PCLASS40                  (-9 -8 -6 -5=.)
recode PCLASS41                  (-9 -8 -6 -5=.)
recode PCLASS42                  (-9 -8 -6 -5=.)
recode PCLASS43                  (-9 -8 -6 -5=.)
recode PCLASS44                  (-9 -8 -6 -5=.)
recode PCLASS45                  (-9 -8 -6 -5=.)
recode PCLASS46                  (-9 -8 -6 -5=.)
recode PCLASS47                  (-9 -8 -6 -5=.)
recode PCLASS48                  (-9 -8 -6 -5=.)
recode PCLASS49                  (-9 -8 -6 -5=.)
recode PCLASS50                  (-9 -8 -6 -5=.)
recode U_BLOOD                   (-9 -8 -6 -5=.)
recode U_CATH                    (-9 -8 -6 -5=.)
recode U_CCU                     (-9 -8 -6 -5=.)
recode U_CHESTXRAY               (-9 -8 -6 -5=.)
recode U_CTSCAN                  (-9 -8 -6 -5=.)
recode U_DIALYSIS                (-9 -8 -6 -5=.)
recode U_ECHO                    (-9 -8 -6 -5=.)
recode U_ED                      (-9 -8 -6 -5=.)
recode U_EEG                     (-9 -8 -6 -5=.)
recode U_EKG                     (-9 -8 -6 -5=.)
recode U_EPO                     (-9 -8 -6 -5=.)
recode U_ICU                     (-9 -8 -6 -5=.)
recode U_LITHOTRIPSY             (-9 -8 -6 -5=.)
recode U_MHSA                    (-9 -8 -6 -5=.)
recode U_MRT                     (-9 -8 -6 -5=.)
recode U_NEWBN2L                 (-9 -8 -6 -5=.)
recode U_NEWBN3L                 (-9 -8 -6 -5=.)
recode U_NEWBN4L                 (-9 -8 -6 -5=.)
recode U_NUCMED                  (-9 -8 -6 -5=.)
recode U_OBSERVATION             (-9 -8 -6 -5=.)
recode U_OCCTHERAPY              (-9 -8 -6 -5=.)
recode U_ORGANACQ                (-9 -8 -6 -5=.)
recode U_OTHIMPLANTS             (-9 -8 -6 -5=.)
recode U_PACEMAKER               (-9 -8 -6 -5=.)
recode U_PHYTHERAPY              (-9 -8 -6 -5=.)
recode U_RADTHERAPY              (-9 -8 -6 -5=.)
recode U_RESPTHERAPY             (-9 -8 -6 -5=.)
recode U_SPEECHTHERAPY           (-9 -8 -6 -5=.)
recode U_STRESS                  (-9 -8 -6 -5=.)
recode U_ULTRASOUND              (-9 -8 -6 -5=.)

save "WI_SID_2014_DX_PR_GRPS.dta", replace
