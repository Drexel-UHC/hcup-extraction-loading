/*****************************************************************************
* Creation Date: 02/03/2017   
* WI_SID_2015q4_DX_PR_GRPS.Do
* This program will load the 2015 WI ASCII DX_PR_GRPS File into Stata.
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
infix 3 firstlineoffile                            ///
      byte   I10_BODYSYSTEM1              1-   2   ///
      byte   I10_BODYSYSTEM2              3-   4   ///
      byte   I10_BODYSYSTEM3              5-   6   ///
      byte   I10_BODYSYSTEM4              7-   8   ///
      byte   I10_BODYSYSTEM5              9-  10   ///
      byte   I10_BODYSYSTEM6             11-  12   ///
      byte   I10_BODYSYSTEM7             13-  14   ///
      byte   I10_BODYSYSTEM8             15-  16   ///
      byte   I10_BODYSYSTEM9             17-  18   ///
      byte   I10_BODYSYSTEM10            19-  20   ///
      byte   I10_BODYSYSTEM11            21-  22   ///
      byte   I10_BODYSYSTEM12            23-  24   ///
      byte   I10_BODYSYSTEM13            25-  26   ///
      byte   I10_BODYSYSTEM14            27-  28   ///
      byte   I10_BODYSYSTEM15            29-  30   ///
      byte   I10_BODYSYSTEM16            31-  32   ///
      byte   I10_BODYSYSTEM17            33-  34   ///
      byte   I10_BODYSYSTEM18            35-  36   ///
      byte   I10_BODYSYSTEM19            37-  38   ///
      byte   I10_BODYSYSTEM20            39-  40   ///
      byte   I10_BODYSYSTEM21            41-  42   ///
      byte   I10_BODYSYSTEM22            43-  44   ///
      byte   I10_BODYSYSTEM23            45-  46   ///
      byte   I10_BODYSYSTEM24            47-  48   ///
      byte   I10_BODYSYSTEM25            49-  50   ///
      byte   I10_BODYSYSTEM26            51-  52   ///
      byte   I10_BODYSYSTEM27            53-  54   ///
      byte   I10_BODYSYSTEM28            55-  56   ///
      byte   I10_BODYSYSTEM29            57-  58   ///
      byte   I10_BODYSYSTEM30            59-  60   ///
      byte   I10_BODYSYSTEM31            61-  62   ///
      byte   I10_BODYSYSTEM32            63-  64   ///
      byte   I10_BODYSYSTEM33            65-  66   ///
      byte   I10_BODYSYSTEM34            67-  68   ///
      byte   I10_BODYSYSTEM35            69-  70   ///
      byte   I10_BODYSYSTEM36            71-  72   ///
      byte   I10_BODYSYSTEM37            73-  74   ///
      byte   I10_BODYSYSTEM38            75-  76   ///
      byte   I10_BODYSYSTEM39            77-  78   ///
      byte   I10_BODYSYSTEM40            79-  80   ///
      byte   I10_BODYSYSTEM41            81-  82   ///
      byte   I10_BODYSYSTEM42            83-  84   ///
      byte   I10_BODYSYSTEM43            85-  86   ///
      byte   I10_BODYSYSTEM44            87-  88   ///
      byte   I10_BODYSYSTEM45            89-  90   ///
      byte   I10_BODYSYSTEM46            91-  92   ///
      byte   I10_BODYSYSTEM47            93-  94   ///
      byte   I10_BODYSYSTEM48            95-  96   ///
      byte   I10_BODYSYSTEM49            97-  98   ///
      byte   I10_BODYSYSTEM50            99- 100   ///
      byte   I10_BODYSYSTEM51           101- 102   ///
      byte   I10_BODYSYSTEM52           103- 104   ///
      byte   I10_BODYSYSTEM53           105- 106   ///
      byte   I10_BODYSYSTEM54           107- 108   ///
      byte   I10_BODYSYSTEM55           109- 110   ///
      byte   I10_BODYSYSTEM56           111- 112   ///
      byte   I10_BODYSYSTEM57           113- 114   ///
      byte   I10_BODYSYSTEM58           115- 116   ///
      byte   I10_BODYSYSTEM59           117- 118   ///
      byte   I10_BODYSYSTEM60           119- 120   ///
      byte   I10_BODYSYSTEM61           121- 122   ///
      byte   I10_BODYSYSTEM62           123- 124   ///
      byte   I10_BODYSYSTEM63           125- 126   ///
      byte   I10_BODYSYSTEM64           127- 128   ///
      byte   I10_BODYSYSTEM65           129- 130   ///
      byte   I10_BODYSYSTEM66           131- 132   ///
      byte   I10_BODYSYSTEM67           133- 134   ///
      byte   I10_CHRON1                 135- 136   ///
      byte   I10_CHRON2                 137- 138   ///
      byte   I10_CHRON3                 139- 140   ///
      byte   I10_CHRON4                 141- 142   ///
      byte   I10_CHRON5                 143- 144   ///
      byte   I10_CHRON6                 145- 146   ///
      byte   I10_CHRON7                 147- 148   ///
      byte   I10_CHRON8                 149- 150   ///
      byte   I10_CHRON9                 151- 152   ///
      byte   I10_CHRON10                153- 154   ///
      byte   I10_CHRON11                155- 156   ///
      byte   I10_CHRON12                157- 158   ///
      byte   I10_CHRON13                159- 160   ///
      byte   I10_CHRON14                161- 162   ///
      byte   I10_CHRON15                163- 164   ///
      byte   I10_CHRON16                165- 166   ///
      byte   I10_CHRON17                167- 168   ///
      byte   I10_CHRON18                169- 170   ///
      byte   I10_CHRON19                171- 172   ///
      byte   I10_CHRON20                173- 174   ///
      byte   I10_CHRON21                175- 176   ///
      byte   I10_CHRON22                177- 178   ///
      byte   I10_CHRON23                179- 180   ///
      byte   I10_CHRON24                181- 182   ///
      byte   I10_CHRON25                183- 184   ///
      byte   I10_CHRON26                185- 186   ///
      byte   I10_CHRON27                187- 188   ///
      byte   I10_CHRON28                189- 190   ///
      byte   I10_CHRON29                191- 192   ///
      byte   I10_CHRON30                193- 194   ///
      byte   I10_CHRON31                195- 196   ///
      byte   I10_CHRON32                197- 198   ///
      byte   I10_CHRON33                199- 200   ///
      byte   I10_CHRON34                201- 202   ///
      byte   I10_CHRON35                203- 204   ///
      byte   I10_CHRON36                205- 206   ///
      byte   I10_CHRON37                207- 208   ///
      byte   I10_CHRON38                209- 210   ///
      byte   I10_CHRON39                211- 212   ///
      byte   I10_CHRON40                213- 214   ///
      byte   I10_CHRON41                215- 216   ///
      byte   I10_CHRON42                217- 218   ///
      byte   I10_CHRON43                219- 220   ///
      byte   I10_CHRON44                221- 222   ///
      byte   I10_CHRON45                223- 224   ///
      byte   I10_CHRON46                225- 226   ///
      byte   I10_CHRON47                227- 228   ///
      byte   I10_CHRON48                229- 230   ///
      byte   I10_CHRON49                231- 232   ///
      byte   I10_CHRON50                233- 234   ///
      byte   I10_CHRON51                235- 236   ///
      byte   I10_CHRON52                237- 238   ///
      byte   I10_CHRON53                239- 240   ///
      byte   I10_CHRON54                241- 242   ///
      byte   I10_CHRON55                243- 244   ///
      byte   I10_CHRON56                245- 246   ///
      byte   I10_CHRON57                247- 248   ///
      byte   I10_CHRON58                249- 250   ///
      byte   I10_CHRON59                251- 252   ///
      byte   I10_CHRON60                253- 254   ///
      byte   I10_CHRON61                255- 256   ///
      byte   I10_CHRON62                257- 258   ///
      byte   I10_CHRON63                259- 260   ///
      byte   I10_CHRON64                261- 262   ///
      byte   I10_CHRON65                263- 264   ///
      byte   I10_CHRON66                265- 266   ///
      byte   I10_CHRON67                267- 268   ///
      str    I10_DXMCCS1                269- 279   ///
      str    I10_DXMCCS2                280- 290   ///
      str    I10_DXMCCS3                291- 301   ///
      str    I10_DXMCCS4                302- 312   ///
      str    I10_DXMCCS5                313- 323   ///
      str    I10_DXMCCS6                324- 334   ///
      str    I10_DXMCCS7                335- 345   ///
      str    I10_DXMCCS8                346- 356   ///
      str    I10_DXMCCS9                357- 367   ///
      str    I10_DXMCCS10               368- 378   ///
      str    I10_DXMCCS11               379- 389   ///
      str    I10_DXMCCS12               390- 400   ///
      str    I10_DXMCCS13               401- 411   ///
      str    I10_DXMCCS14               412- 422   ///
      str    I10_DXMCCS15               423- 433   ///
      str    I10_DXMCCS16               434- 444   ///
      str    I10_DXMCCS17               445- 455   ///
      str    I10_DXMCCS18               456- 466   ///
      str    I10_DXMCCS19               467- 477   ///
      str    I10_DXMCCS20               478- 488   ///
      str    I10_DXMCCS21               489- 499   ///
      str    I10_DXMCCS22               500- 510   ///
      str    I10_DXMCCS23               511- 521   ///
      str    I10_DXMCCS24               522- 532   ///
      str    I10_DXMCCS25               533- 543   ///
      str    I10_DXMCCS26               544- 554   ///
      str    I10_DXMCCS27               555- 565   ///
      str    I10_DXMCCS28               566- 576   ///
      str    I10_DXMCCS29               577- 587   ///
      str    I10_DXMCCS30               588- 598   ///
      str    I10_DXMCCS31               599- 609   ///
      str    I10_DXMCCS32               610- 620   ///
      str    I10_DXMCCS33               621- 631   ///
      str    I10_DXMCCS34               632- 642   ///
      str    I10_DXMCCS35               643- 653   ///
      str    I10_DXMCCS36               654- 664   ///
      str    I10_DXMCCS37               665- 675   ///
      str    I10_DXMCCS38               676- 686   ///
      str    I10_DXMCCS39               687- 697   ///
      str    I10_DXMCCS40               698- 708   ///
      str    I10_DXMCCS41               709- 719   ///
      str    I10_DXMCCS42               720- 730   ///
      str    I10_DXMCCS43               731- 741   ///
      str    I10_DXMCCS44               742- 752   ///
      str    I10_DXMCCS45               753- 763   ///
      str    I10_DXMCCS46               764- 774   ///
      str    I10_DXMCCS47               775- 785   ///
      str    I10_DXMCCS48               786- 796   ///
      str    I10_DXMCCS49               797- 807   ///
      str    I10_DXMCCS50               808- 818   ///
      str    I10_DXMCCS51               819- 829   ///
      str    I10_DXMCCS52               830- 840   ///
      str    I10_DXMCCS53               841- 851   ///
      str    I10_DXMCCS54               852- 862   ///
      str    I10_DXMCCS55               863- 873   ///
      str    I10_DXMCCS56               874- 884   ///
      str    I10_DXMCCS57               885- 895   ///
      str    I10_DXMCCS58               896- 906   ///
      str    I10_DXMCCS59               907- 917   ///
      str    I10_DXMCCS60               918- 928   ///
      str    I10_DXMCCS61               929- 939   ///
      str    I10_DXMCCS62               940- 950   ///
      str    I10_DXMCCS63               951- 961   ///
      str    I10_DXMCCS64               962- 972   ///
      str    I10_DXMCCS65               973- 983   ///
      str    I10_DXMCCS66               984- 994   ///
      str    I10_DXMCCS67               995-1005   ///
      str    I10_ECauseMCCS1           1006-1016   ///
      str    I10_ECauseMCCS2           1017-1027   ///
      str    I10_ECauseMCCS3           1028-1038   ///
      str    I10_ECauseMCCS4           1039-1049   ///
      str    I10_ECauseMCCS5           1050-1060   ///
      str    I10_ECauseMCCS6           1061-1071   ///
      str    I10_ECauseMCCS7           1072-1082   ///
      str    I10_ECauseMCCS8           1083-1093   ///
      str    I10_ECauseMCCS9           1094-1104   ///
      byte   I10_INJURY                1105-1106   ///
      byte   I10_MULTINJURY            1107-1108   ///
      byte   I10_PCLASS1               1109-1110   ///
      byte   I10_PCLASS2               1111-1112   ///
      byte   I10_PCLASS3               1113-1114   ///
      byte   I10_PCLASS4               1115-1116   ///
      byte   I10_PCLASS5               1117-1118   ///
      byte   I10_PCLASS6               1119-1120   ///
      byte   I10_PCLASS7               1121-1122   ///
      byte   I10_PCLASS8               1123-1124   ///
      byte   I10_PCLASS9               1125-1126   ///
      byte   I10_PCLASS10              1127-1128   ///
      byte   I10_PCLASS11              1129-1130   ///
      byte   I10_PCLASS12              1131-1132   ///
      byte   I10_PCLASS13              1133-1134   ///
      byte   I10_PCLASS14              1135-1136   ///
      byte   I10_PCLASS15              1137-1138   ///
      byte   I10_PCLASS16              1139-1140   ///
      byte   I10_PCLASS17              1141-1142   ///
      byte   I10_PCLASS18              1143-1144   ///
      byte   I10_PCLASS19              1145-1146   ///
      byte   I10_PCLASS20              1147-1148   ///
      byte   I10_PCLASS21              1149-1150   ///
      byte   I10_PCLASS22              1151-1152   ///
      byte   I10_PCLASS23              1153-1154   ///
      byte   I10_PCLASS24              1155-1156   ///
      byte   I10_PCLASS25              1157-1158   ///
      byte   I10_PCLASS26              1159-1160   ///
      byte   I10_PCLASS27              1161-1162   ///
      byte   I10_PCLASS28              1163-1164   ///
      byte   I10_PCLASS29              1165-1166   ///
      byte   I10_PCLASS30              1167-1168   ///
      byte   I10_PCLASS31              1169-1170   ///
      byte   I10_PCLASS32              1171-1172   ///
      byte   I10_PCLASS33              1173-1174   ///
      byte   I10_PCLASS34              1175-1176   ///
      byte   I10_PCLASS35              1177-1178   ///
      byte   I10_PCLASS36              1179-1180   ///
      byte   I10_PCLASS37              1181-1182   ///
      byte   I10_PCLASS38              1183-1184   ///
      byte   I10_PCLASS39              1185-1186   ///
      byte   I10_PCLASS40              1187-1188   ///
      byte   I10_PCLASS41              1189-1190   ///
      byte   I10_PCLASS42              1191-1192   ///
      byte   I10_PCLASS43              1193-1194   ///
      byte   I10_PCLASS44              1195-1196   ///
      byte   I10_PCLASS45              1197-1198   ///
      byte   I10_PCLASS46              1199-1200   ///
      byte   I10_PCLASS47              1201-1202   ///
      byte   I10_PCLASS48              1203-1204   ///
      byte   I10_PCLASS49              1205-1206   ///
      byte   I10_PCLASS50              1207-1208   ///
      str    I10_PRMCCS1               1209-1216   ///
      str    I10_PRMCCS2               1217-1224   ///
      str    I10_PRMCCS3               1225-1232   ///
      str    I10_PRMCCS4               1233-1240   ///
      str    I10_PRMCCS5               1241-1248   ///
      str    I10_PRMCCS6               1249-1256   ///
      str    I10_PRMCCS7               1257-1264   ///
      str    I10_PRMCCS8               1265-1272   ///
      str    I10_PRMCCS9               1273-1280   ///
      str    I10_PRMCCS10              1281-1288   ///
      str    I10_PRMCCS11              1289-1296   ///
      str    I10_PRMCCS12              1297-1304   ///
      str    I10_PRMCCS13              1305-1312   ///
      str    I10_PRMCCS14              1313-1320   ///
      str    I10_PRMCCS15              1321-1328   ///
      str    I10_PRMCCS16              1329-1336   ///
      str    I10_PRMCCS17              1337-1344   ///
      str    I10_PRMCCS18              1345-1352   ///
      str    I10_PRMCCS19              1353-1360   ///
      str    I10_PRMCCS20              1361-1368   ///
      str    I10_PRMCCS21              1369-1376   ///
      str    I10_PRMCCS22              1377-1384   ///
      str    I10_PRMCCS23              1385-1392   ///
      str    I10_PRMCCS24              1393-1400   ///
      str    I10_PRMCCS25              1401-1408   ///
      str    I10_PRMCCS26              1409-1416   ///
      str    I10_PRMCCS27              1417-1424   ///
      str    I10_PRMCCS28              1425-1432   ///
      str    I10_PRMCCS29              1433-1440   ///
      str    I10_PRMCCS30              1441-1448   ///
      str    I10_PRMCCS31              1449-1456   ///
      str    I10_PRMCCS32              1457-1464   ///
      str    I10_PRMCCS33              1465-1472   ///
      str    I10_PRMCCS34              1473-1480   ///
      str    I10_PRMCCS35              1481-1488   ///
      str    I10_PRMCCS36              1489-1496   ///
      str    I10_PRMCCS37              1497-1504   ///
      str    I10_PRMCCS38              1505-1512   ///
      str    I10_PRMCCS39              1513-1520   ///
      str    I10_PRMCCS40              1521-1528   ///
      str    I10_PRMCCS41              1529-1536   ///
      str    I10_PRMCCS42              1537-1544   ///
      str    I10_PRMCCS43              1545-1552   ///
      str    I10_PRMCCS44              1553-1560   ///
      str    I10_PRMCCS45              1561-1568   ///
      str    I10_PRMCCS46              1569-1576   ///
      str    I10_PRMCCS47              1577-1584   ///
      str    I10_PRMCCS48              1585-1592   ///
      str    I10_PRMCCS49              1593-1600   ///
      str    I10_PRMCCS50              1601-1608   ///
      byte   I10_U_BLOOD               1609-1610   ///
      byte   I10_U_CATH                1611-1612   ///
      byte   I10_U_CTSCAN              1613-1614   ///
      byte   I10_U_EKG                 1615-1616   ///
      byte   I10_U_MHSA                1617-1618   ///
      byte   I10_U_MRT                 1619-1620   ///
      byte   I10_U_PACEMAKER           1621-1622   ///
      byte   I10_U_PHYTHERAPY          1623-1624   ///
      byte   I10_U_RADTHERAPY          1625-1626   ///
      byte   I10_U_STRESS              1627-1628   ///
      double KEY                       1629-1643   ///
      byte   U_CCU                     1644-1645   ///
      byte   U_CHESTXRAY               1646-1647   ///
      byte   U_DIALYSIS                1648-1649   ///
      byte   U_ECHO                    1650-1651   ///
      byte   U_ED                      1652-1653   ///
      byte   U_EEG                     1654-1655   ///
      byte   U_EPO                     1656-1657   ///
      byte   U_ICU                     1658-1659   ///
      byte   U_LITHOTRIPSY             1660-1661   ///
      byte   U_NEWBN2L                 1662-1663   ///
      byte   U_NEWBN3L                 1664-1665   ///
      byte   U_NEWBN4L                 1666-1667   ///
      byte   U_NUCMED                  1668-1669   ///
      byte   U_OBSERVATION             1670-1671   ///
      byte   U_OCCTHERAPY              1672-1673   ///
      byte   U_ORGANACQ                1674-1675   ///
      byte   U_OTHIMPLANTS             1676-1677   ///
      byte   U_RESPTHERAPY             1678-1679   ///
      byte   U_SPEECHTHERAPY           1680-1681   ///
      byte   U_ULTRASOUND              1682-1683   ///
      using  "WI_SID_2015q4_DX_PR_GRPS.ASC"

***  Assign labels to the data elements ***
label var I10_BODYSYSTEM1          "ICD-10-CM Body system 1"
label var I10_BODYSYSTEM2          "ICD-10-CM Body system 2"
label var I10_BODYSYSTEM3          "ICD-10-CM Body system 3"
label var I10_BODYSYSTEM4          "ICD-10-CM Body system 4"
label var I10_BODYSYSTEM5          "ICD-10-CM Body system 5"
label var I10_BODYSYSTEM6          "ICD-10-CM Body system 6"
label var I10_BODYSYSTEM7          "ICD-10-CM Body system 7"
label var I10_BODYSYSTEM8          "ICD-10-CM Body system 8"
label var I10_BODYSYSTEM9          "ICD-10-CM Body system 9"
label var I10_BODYSYSTEM10         "ICD-10-CM Body system 10"
label var I10_BODYSYSTEM11         "ICD-10-CM Body system 11"
label var I10_BODYSYSTEM12         "ICD-10-CM Body system 12"
label var I10_BODYSYSTEM13         "ICD-10-CM Body system 13"
label var I10_BODYSYSTEM14         "ICD-10-CM Body system 14"
label var I10_BODYSYSTEM15         "ICD-10-CM Body system 15"
label var I10_BODYSYSTEM16         "ICD-10-CM Body system 16"
label var I10_BODYSYSTEM17         "ICD-10-CM Body system 17"
label var I10_BODYSYSTEM18         "ICD-10-CM Body system 18"
label var I10_BODYSYSTEM19         "ICD-10-CM Body system 19"
label var I10_BODYSYSTEM20         "ICD-10-CM Body system 20"
label var I10_BODYSYSTEM21         "ICD-10-CM Body system 21"
label var I10_BODYSYSTEM22         "ICD-10-CM Body system 22"
label var I10_BODYSYSTEM23         "ICD-10-CM Body system 23"
label var I10_BODYSYSTEM24         "ICD-10-CM Body system 24"
label var I10_BODYSYSTEM25         "ICD-10-CM Body system 25"
label var I10_BODYSYSTEM26         "ICD-10-CM Body system 26"
label var I10_BODYSYSTEM27         "ICD-10-CM Body system 27"
label var I10_BODYSYSTEM28         "ICD-10-CM Body system 28"
label var I10_BODYSYSTEM29         "ICD-10-CM Body system 29"
label var I10_BODYSYSTEM30         "ICD-10-CM Body system 30"
label var I10_BODYSYSTEM31         "ICD-10-CM Body system 31"
label var I10_BODYSYSTEM32         "ICD-10-CM Body system 32"
label var I10_BODYSYSTEM33         "ICD-10-CM Body system 33"
label var I10_BODYSYSTEM34         "ICD-10-CM Body system 34"
label var I10_BODYSYSTEM35         "ICD-10-CM Body system 35"
label var I10_BODYSYSTEM36         "ICD-10-CM Body system 36"
label var I10_BODYSYSTEM37         "ICD-10-CM Body system 37"
label var I10_BODYSYSTEM38         "ICD-10-CM Body system 38"
label var I10_BODYSYSTEM39         "ICD-10-CM Body system 39"
label var I10_BODYSYSTEM40         "ICD-10-CM Body system 40"
label var I10_BODYSYSTEM41         "ICD-10-CM Body system 41"
label var I10_BODYSYSTEM42         "ICD-10-CM Body system 42"
label var I10_BODYSYSTEM43         "ICD-10-CM Body system 43"
label var I10_BODYSYSTEM44         "ICD-10-CM Body system 44"
label var I10_BODYSYSTEM45         "ICD-10-CM Body system 45"
label var I10_BODYSYSTEM46         "ICD-10-CM Body system 46"
label var I10_BODYSYSTEM47         "ICD-10-CM Body system 47"
label var I10_BODYSYSTEM48         "ICD-10-CM Body system 48"
label var I10_BODYSYSTEM49         "ICD-10-CM Body system 49"
label var I10_BODYSYSTEM50         "ICD-10-CM Body system 50"
label var I10_BODYSYSTEM51         "ICD-10-CM Body system 51"
label var I10_BODYSYSTEM52         "ICD-10-CM Body system 52"
label var I10_BODYSYSTEM53         "ICD-10-CM Body system 53"
label var I10_BODYSYSTEM54         "ICD-10-CM Body system 54"
label var I10_BODYSYSTEM55         "ICD-10-CM Body system 55"
label var I10_BODYSYSTEM56         "ICD-10-CM Body system 56"
label var I10_BODYSYSTEM57         "ICD-10-CM Body system 57"
label var I10_BODYSYSTEM58         "ICD-10-CM Body system 58"
label var I10_BODYSYSTEM59         "ICD-10-CM Body system 59"
label var I10_BODYSYSTEM60         "ICD-10-CM Body system 60"
label var I10_BODYSYSTEM61         "ICD-10-CM Body system 61"
label var I10_BODYSYSTEM62         "ICD-10-CM Body system 62"
label var I10_BODYSYSTEM63         "ICD-10-CM Body system 63"
label var I10_BODYSYSTEM64         "ICD-10-CM Body system 64"
label var I10_BODYSYSTEM65         "ICD-10-CM Body system 65"
label var I10_BODYSYSTEM66         "ICD-10-CM Body system 66"
label var I10_BODYSYSTEM67         "ICD-10-CM Body system 67"
label var I10_CHRON1               "ICD-10-CM Chronic condition indicator 1"
label var I10_CHRON2               "ICD-10-CM Chronic condition indicator 2"
label var I10_CHRON3               "ICD-10-CM Chronic condition indicator 3"
label var I10_CHRON4               "ICD-10-CM Chronic condition indicator 4"
label var I10_CHRON5               "ICD-10-CM Chronic condition indicator 5"
label var I10_CHRON6               "ICD-10-CM Chronic condition indicator 6"
label var I10_CHRON7               "ICD-10-CM Chronic condition indicator 7"
label var I10_CHRON8               "ICD-10-CM Chronic condition indicator 8"
label var I10_CHRON9               "ICD-10-CM Chronic condition indicator 9"
label var I10_CHRON10              "ICD-10-CM Chronic condition indicator 10"
label var I10_CHRON11              "ICD-10-CM Chronic condition indicator 11"
label var I10_CHRON12              "ICD-10-CM Chronic condition indicator 12"
label var I10_CHRON13              "ICD-10-CM Chronic condition indicator 13"
label var I10_CHRON14              "ICD-10-CM Chronic condition indicator 14"
label var I10_CHRON15              "ICD-10-CM Chronic condition indicator 15"
label var I10_CHRON16              "ICD-10-CM Chronic condition indicator 16"
label var I10_CHRON17              "ICD-10-CM Chronic condition indicator 17"
label var I10_CHRON18              "ICD-10-CM Chronic condition indicator 18"
label var I10_CHRON19              "ICD-10-CM Chronic condition indicator 19"
label var I10_CHRON20              "ICD-10-CM Chronic condition indicator 20"
label var I10_CHRON21              "ICD-10-CM Chronic condition indicator 21"
label var I10_CHRON22              "ICD-10-CM Chronic condition indicator 22"
label var I10_CHRON23              "ICD-10-CM Chronic condition indicator 23"
label var I10_CHRON24              "ICD-10-CM Chronic condition indicator 24"
label var I10_CHRON25              "ICD-10-CM Chronic condition indicator 25"
label var I10_CHRON26              "ICD-10-CM Chronic condition indicator 26"
label var I10_CHRON27              "ICD-10-CM Chronic condition indicator 27"
label var I10_CHRON28              "ICD-10-CM Chronic condition indicator 28"
label var I10_CHRON29              "ICD-10-CM Chronic condition indicator 29"
label var I10_CHRON30              "ICD-10-CM Chronic condition indicator 30"
label var I10_CHRON31              "ICD-10-CM Chronic condition indicator 31"
label var I10_CHRON32              "ICD-10-CM Chronic condition indicator 32"
label var I10_CHRON33              "ICD-10-CM Chronic condition indicator 33"
label var I10_CHRON34              "ICD-10-CM Chronic condition indicator 34"
label var I10_CHRON35              "ICD-10-CM Chronic condition indicator 35"
label var I10_CHRON36              "ICD-10-CM Chronic condition indicator 36"
label var I10_CHRON37              "ICD-10-CM Chronic condition indicator 37"
label var I10_CHRON38              "ICD-10-CM Chronic condition indicator 38"
label var I10_CHRON39              "ICD-10-CM Chronic condition indicator 39"
label var I10_CHRON40              "ICD-10-CM Chronic condition indicator 40"
label var I10_CHRON41              "ICD-10-CM Chronic condition indicator 41"
label var I10_CHRON42              "ICD-10-CM Chronic condition indicator 42"
label var I10_CHRON43              "ICD-10-CM Chronic condition indicator 43"
label var I10_CHRON44              "ICD-10-CM Chronic condition indicator 44"
label var I10_CHRON45              "ICD-10-CM Chronic condition indicator 45"
label var I10_CHRON46              "ICD-10-CM Chronic condition indicator 46"
label var I10_CHRON47              "ICD-10-CM Chronic condition indicator 47"
label var I10_CHRON48              "ICD-10-CM Chronic condition indicator 48"
label var I10_CHRON49              "ICD-10-CM Chronic condition indicator 49"
label var I10_CHRON50              "ICD-10-CM Chronic condition indicator 50"
label var I10_CHRON51              "ICD-10-CM Chronic condition indicator 51"
label var I10_CHRON52              "ICD-10-CM Chronic condition indicator 52"
label var I10_CHRON53              "ICD-10-CM Chronic condition indicator 53"
label var I10_CHRON54              "ICD-10-CM Chronic condition indicator 54"
label var I10_CHRON55              "ICD-10-CM Chronic condition indicator 55"
label var I10_CHRON56              "ICD-10-CM Chronic condition indicator 56"
label var I10_CHRON57              "ICD-10-CM Chronic condition indicator 57"
label var I10_CHRON58              "ICD-10-CM Chronic condition indicator 58"
label var I10_CHRON59              "ICD-10-CM Chronic condition indicator 59"
label var I10_CHRON60              "ICD-10-CM Chronic condition indicator 60"
label var I10_CHRON61              "ICD-10-CM Chronic condition indicator 61"
label var I10_CHRON62              "ICD-10-CM Chronic condition indicator 62"
label var I10_CHRON63              "ICD-10-CM Chronic condition indicator 63"
label var I10_CHRON64              "ICD-10-CM Chronic condition indicator 64"
label var I10_CHRON65              "ICD-10-CM Chronic condition indicator 65"
label var I10_CHRON66              "ICD-10-CM Chronic condition indicator 66"
label var I10_CHRON67              "ICD-10-CM Chronic condition indicator 67"
label var I10_DXMCCS1              "ICD-10-CM Multi-Level CCS:  Diagnosis 1"
label var I10_DXMCCS2              "ICD-10-CM Multi-Level CCS:  Diagnosis 2"
label var I10_DXMCCS3              "ICD-10-CM Multi-Level CCS:  Diagnosis 3"
label var I10_DXMCCS4              "ICD-10-CM Multi-Level CCS:  Diagnosis 4"
label var I10_DXMCCS5              "ICD-10-CM Multi-Level CCS:  Diagnosis 5"
label var I10_DXMCCS6              "ICD-10-CM Multi-Level CCS:  Diagnosis 6"
label var I10_DXMCCS7              "ICD-10-CM Multi-Level CCS:  Diagnosis 7"
label var I10_DXMCCS8              "ICD-10-CM Multi-Level CCS:  Diagnosis 8"
label var I10_DXMCCS9              "ICD-10-CM Multi-Level CCS:  Diagnosis 9"
label var I10_DXMCCS10             "ICD-10-CM Multi-Level CCS:  Diagnosis 10"
label var I10_DXMCCS11             "ICD-10-CM Multi-Level CCS:  Diagnosis 11"
label var I10_DXMCCS12             "ICD-10-CM Multi-Level CCS:  Diagnosis 12"
label var I10_DXMCCS13             "ICD-10-CM Multi-Level CCS:  Diagnosis 13"
label var I10_DXMCCS14             "ICD-10-CM Multi-Level CCS:  Diagnosis 14"
label var I10_DXMCCS15             "ICD-10-CM Multi-Level CCS:  Diagnosis 15"
label var I10_DXMCCS16             "ICD-10-CM Multi-Level CCS:  Diagnosis 16"
label var I10_DXMCCS17             "ICD-10-CM Multi-Level CCS:  Diagnosis 17"
label var I10_DXMCCS18             "ICD-10-CM Multi-Level CCS:  Diagnosis 18"
label var I10_DXMCCS19             "ICD-10-CM Multi-Level CCS:  Diagnosis 19"
label var I10_DXMCCS20             "ICD-10-CM Multi-Level CCS:  Diagnosis 20"
label var I10_DXMCCS21             "ICD-10-CM Multi-Level CCS:  Diagnosis 21"
label var I10_DXMCCS22             "ICD-10-CM Multi-Level CCS:  Diagnosis 22"
label var I10_DXMCCS23             "ICD-10-CM Multi-Level CCS:  Diagnosis 23"
label var I10_DXMCCS24             "ICD-10-CM Multi-Level CCS:  Diagnosis 24"
label var I10_DXMCCS25             "ICD-10-CM Multi-Level CCS:  Diagnosis 25"
label var I10_DXMCCS26             "ICD-10-CM Multi-Level CCS:  Diagnosis 26"
label var I10_DXMCCS27             "ICD-10-CM Multi-Level CCS:  Diagnosis 27"
label var I10_DXMCCS28             "ICD-10-CM Multi-Level CCS:  Diagnosis 28"
label var I10_DXMCCS29             "ICD-10-CM Multi-Level CCS:  Diagnosis 29"
label var I10_DXMCCS30             "ICD-10-CM Multi-Level CCS:  Diagnosis 30"
label var I10_DXMCCS31             "ICD-10-CM Multi-Level CCS:  Diagnosis 31"
label var I10_DXMCCS32             "ICD-10-CM Multi-Level CCS:  Diagnosis 32"
label var I10_DXMCCS33             "ICD-10-CM Multi-Level CCS:  Diagnosis 33"
label var I10_DXMCCS34             "ICD-10-CM Multi-Level CCS:  Diagnosis 34"
label var I10_DXMCCS35             "ICD-10-CM Multi-Level CCS:  Diagnosis 35"
label var I10_DXMCCS36             "ICD-10-CM Multi-Level CCS:  Diagnosis 36"
label var I10_DXMCCS37             "ICD-10-CM Multi-Level CCS:  Diagnosis 37"
label var I10_DXMCCS38             "ICD-10-CM Multi-Level CCS:  Diagnosis 38"
label var I10_DXMCCS39             "ICD-10-CM Multi-Level CCS:  Diagnosis 39"
label var I10_DXMCCS40             "ICD-10-CM Multi-Level CCS:  Diagnosis 40"
label var I10_DXMCCS41             "ICD-10-CM Multi-Level CCS:  Diagnosis 41"
label var I10_DXMCCS42             "ICD-10-CM Multi-Level CCS:  Diagnosis 42"
label var I10_DXMCCS43             "ICD-10-CM Multi-Level CCS:  Diagnosis 43"
label var I10_DXMCCS44             "ICD-10-CM Multi-Level CCS:  Diagnosis 44"
label var I10_DXMCCS45             "ICD-10-CM Multi-Level CCS:  Diagnosis 45"
label var I10_DXMCCS46             "ICD-10-CM Multi-Level CCS:  Diagnosis 46"
label var I10_DXMCCS47             "ICD-10-CM Multi-Level CCS:  Diagnosis 47"
label var I10_DXMCCS48             "ICD-10-CM Multi-Level CCS:  Diagnosis 48"
label var I10_DXMCCS49             "ICD-10-CM Multi-Level CCS:  Diagnosis 49"
label var I10_DXMCCS50             "ICD-10-CM Multi-Level CCS:  Diagnosis 50"
label var I10_DXMCCS51             "ICD-10-CM Multi-Level CCS:  Diagnosis 51"
label var I10_DXMCCS52             "ICD-10-CM Multi-Level CCS:  Diagnosis 52"
label var I10_DXMCCS53             "ICD-10-CM Multi-Level CCS:  Diagnosis 53"
label var I10_DXMCCS54             "ICD-10-CM Multi-Level CCS:  Diagnosis 54"
label var I10_DXMCCS55             "ICD-10-CM Multi-Level CCS:  Diagnosis 55"
label var I10_DXMCCS56             "ICD-10-CM Multi-Level CCS:  Diagnosis 56"
label var I10_DXMCCS57             "ICD-10-CM Multi-Level CCS:  Diagnosis 57"
label var I10_DXMCCS58             "ICD-10-CM Multi-Level CCS:  Diagnosis 58"
label var I10_DXMCCS59             "ICD-10-CM Multi-Level CCS:  Diagnosis 59"
label var I10_DXMCCS60             "ICD-10-CM Multi-Level CCS:  Diagnosis 60"
label var I10_DXMCCS61             "ICD-10-CM Multi-Level CCS:  Diagnosis 61"
label var I10_DXMCCS62             "ICD-10-CM Multi-Level CCS:  Diagnosis 62"
label var I10_DXMCCS63             "ICD-10-CM Multi-Level CCS:  Diagnosis 63"
label var I10_DXMCCS64             "ICD-10-CM Multi-Level CCS:  Diagnosis 64"
label var I10_DXMCCS65             "ICD-10-CM Multi-Level CCS:  Diagnosis 65"
label var I10_DXMCCS66             "ICD-10-CM Multi-Level CCS:  Diagnosis 66"
label var I10_DXMCCS67             "ICD-10-CM Multi-Level CCS:  Diagnosis 67"
label var I10_ECauseMCCS1          "ICD-10-CM Multi-Level CCS:  E Cause 1"
label var I10_ECauseMCCS2          "ICD-10-CM Multi-Level CCS:  E Cause 2"
label var I10_ECauseMCCS3          "ICD-10-CM Multi-Level CCS:  E Cause 3"
label var I10_ECauseMCCS4          "ICD-10-CM Multi-Level CCS:  E Cause 4"
label var I10_ECauseMCCS5          "ICD-10-CM Multi-Level CCS:  E Cause 5"
label var I10_ECauseMCCS6          "ICD-10-CM Multi-Level CCS:  E Cause 6"
label var I10_ECauseMCCS7          "ICD-10-CM Multi-Level CCS:  E Cause 7"
label var I10_ECauseMCCS8          "ICD-10-CM Multi-Level CCS:  E Cause 8"
label var I10_ECauseMCCS9          "ICD-10-CM Multi-Level CCS:  E Cause 9"
label var I10_INJURY
    "ICD-10-CM Injury diagnosis reported on record (1:I10_DX1 is an injury; 2:I10_DX2+ is an injury; 0:No injury)"
label var I10_MULTINJURY           "ICD-10-CM More than one injury diagnosis reported on record"
label var I10_PCLASS1              "ICD-10-PCS Procedure class 1"
label var I10_PCLASS2              "ICD-10-PCS Procedure class 2"
label var I10_PCLASS3              "ICD-10-PCS Procedure class 3"
label var I10_PCLASS4              "ICD-10-PCS Procedure class 4"
label var I10_PCLASS5              "ICD-10-PCS Procedure class 5"
label var I10_PCLASS6              "ICD-10-PCS Procedure class 6"
label var I10_PCLASS7              "ICD-10-PCS Procedure class 7"
label var I10_PCLASS8              "ICD-10-PCS Procedure class 8"
label var I10_PCLASS9              "ICD-10-PCS Procedure class 9"
label var I10_PCLASS10             "ICD-10-PCS Procedure class 10"
label var I10_PCLASS11             "ICD-10-PCS Procedure class 11"
label var I10_PCLASS12             "ICD-10-PCS Procedure class 12"
label var I10_PCLASS13             "ICD-10-PCS Procedure class 13"
label var I10_PCLASS14             "ICD-10-PCS Procedure class 14"
label var I10_PCLASS15             "ICD-10-PCS Procedure class 15"
label var I10_PCLASS16             "ICD-10-PCS Procedure class 16"
label var I10_PCLASS17             "ICD-10-PCS Procedure class 17"
label var I10_PCLASS18             "ICD-10-PCS Procedure class 18"
label var I10_PCLASS19             "ICD-10-PCS Procedure class 19"
label var I10_PCLASS20             "ICD-10-PCS Procedure class 20"
label var I10_PCLASS21             "ICD-10-PCS Procedure class 21"
label var I10_PCLASS22             "ICD-10-PCS Procedure class 22"
label var I10_PCLASS23             "ICD-10-PCS Procedure class 23"
label var I10_PCLASS24             "ICD-10-PCS Procedure class 24"
label var I10_PCLASS25             "ICD-10-PCS Procedure class 25"
label var I10_PCLASS26             "ICD-10-PCS Procedure class 26"
label var I10_PCLASS27             "ICD-10-PCS Procedure class 27"
label var I10_PCLASS28             "ICD-10-PCS Procedure class 28"
label var I10_PCLASS29             "ICD-10-PCS Procedure class 29"
label var I10_PCLASS30             "ICD-10-PCS Procedure class 30"
label var I10_PCLASS31             "ICD-10-PCS Procedure class 31"
label var I10_PCLASS32             "ICD-10-PCS Procedure class 32"
label var I10_PCLASS33             "ICD-10-PCS Procedure class 33"
label var I10_PCLASS34             "ICD-10-PCS Procedure class 34"
label var I10_PCLASS35             "ICD-10-PCS Procedure class 35"
label var I10_PCLASS36             "ICD-10-PCS Procedure class 36"
label var I10_PCLASS37             "ICD-10-PCS Procedure class 37"
label var I10_PCLASS38             "ICD-10-PCS Procedure class 38"
label var I10_PCLASS39             "ICD-10-PCS Procedure class 39"
label var I10_PCLASS40             "ICD-10-PCS Procedure class 40"
label var I10_PCLASS41             "ICD-10-PCS Procedure class 41"
label var I10_PCLASS42             "ICD-10-PCS Procedure class 42"
label var I10_PCLASS43             "ICD-10-PCS Procedure class 43"
label var I10_PCLASS44             "ICD-10-PCS Procedure class 44"
label var I10_PCLASS45             "ICD-10-PCS Procedure class 45"
label var I10_PCLASS46             "ICD-10-PCS Procedure class 46"
label var I10_PCLASS47             "ICD-10-PCS Procedure class 47"
label var I10_PCLASS48             "ICD-10-PCS Procedure class 48"
label var I10_PCLASS49             "ICD-10-PCS Procedure class 49"
label var I10_PCLASS50             "ICD-10-PCS Procedure class 50"
label var I10_PRMCCS1              "ICD-10-PCS Multi-Level CCS:  Procedure 1"
label var I10_PRMCCS2              "ICD-10-PCS Multi-Level CCS:  Procedure 2"
label var I10_PRMCCS3              "ICD-10-PCS Multi-Level CCS:  Procedure 3"
label var I10_PRMCCS4              "ICD-10-PCS Multi-Level CCS:  Procedure 4"
label var I10_PRMCCS5              "ICD-10-PCS Multi-Level CCS:  Procedure 5"
label var I10_PRMCCS6              "ICD-10-PCS Multi-Level CCS:  Procedure 6"
label var I10_PRMCCS7              "ICD-10-PCS Multi-Level CCS:  Procedure 7"
label var I10_PRMCCS8              "ICD-10-PCS Multi-Level CCS:  Procedure 8"
label var I10_PRMCCS9              "ICD-10-PCS Multi-Level CCS:  Procedure 9"
label var I10_PRMCCS10             "ICD-10-PCS Multi-Level CCS:  Procedure 10"
label var I10_PRMCCS11             "ICD-10-PCS Multi-Level CCS:  Procedure 11"
label var I10_PRMCCS12             "ICD-10-PCS Multi-Level CCS:  Procedure 12"
label var I10_PRMCCS13             "ICD-10-PCS Multi-Level CCS:  Procedure 13"
label var I10_PRMCCS14             "ICD-10-PCS Multi-Level CCS:  Procedure 14"
label var I10_PRMCCS15             "ICD-10-PCS Multi-Level CCS:  Procedure 15"
label var I10_PRMCCS16             "ICD-10-PCS Multi-Level CCS:  Procedure 16"
label var I10_PRMCCS17             "ICD-10-PCS Multi-Level CCS:  Procedure 17"
label var I10_PRMCCS18             "ICD-10-PCS Multi-Level CCS:  Procedure 18"
label var I10_PRMCCS19             "ICD-10-PCS Multi-Level CCS:  Procedure 19"
label var I10_PRMCCS20             "ICD-10-PCS Multi-Level CCS:  Procedure 20"
label var I10_PRMCCS21             "ICD-10-PCS Multi-Level CCS:  Procedure 21"
label var I10_PRMCCS22             "ICD-10-PCS Multi-Level CCS:  Procedure 22"
label var I10_PRMCCS23             "ICD-10-PCS Multi-Level CCS:  Procedure 23"
label var I10_PRMCCS24             "ICD-10-PCS Multi-Level CCS:  Procedure 24"
label var I10_PRMCCS25             "ICD-10-PCS Multi-Level CCS:  Procedure 25"
label var I10_PRMCCS26             "ICD-10-PCS Multi-Level CCS:  Procedure 26"
label var I10_PRMCCS27             "ICD-10-PCS Multi-Level CCS:  Procedure 27"
label var I10_PRMCCS28             "ICD-10-PCS Multi-Level CCS:  Procedure 28"
label var I10_PRMCCS29             "ICD-10-PCS Multi-Level CCS:  Procedure 29"
label var I10_PRMCCS30             "ICD-10-PCS Multi-Level CCS:  Procedure 30"
label var I10_PRMCCS31             "ICD-10-PCS Multi-Level CCS:  Procedure 31"
label var I10_PRMCCS32             "ICD-10-PCS Multi-Level CCS:  Procedure 32"
label var I10_PRMCCS33             "ICD-10-PCS Multi-Level CCS:  Procedure 33"
label var I10_PRMCCS34             "ICD-10-PCS Multi-Level CCS:  Procedure 34"
label var I10_PRMCCS35             "ICD-10-PCS Multi-Level CCS:  Procedure 35"
label var I10_PRMCCS36             "ICD-10-PCS Multi-Level CCS:  Procedure 36"
label var I10_PRMCCS37             "ICD-10-PCS Multi-Level CCS:  Procedure 37"
label var I10_PRMCCS38             "ICD-10-PCS Multi-Level CCS:  Procedure 38"
label var I10_PRMCCS39             "ICD-10-PCS Multi-Level CCS:  Procedure 39"
label var I10_PRMCCS40             "ICD-10-PCS Multi-Level CCS:  Procedure 40"
label var I10_PRMCCS41             "ICD-10-PCS Multi-Level CCS:  Procedure 41"
label var I10_PRMCCS42             "ICD-10-PCS Multi-Level CCS:  Procedure 42"
label var I10_PRMCCS43             "ICD-10-PCS Multi-Level CCS:  Procedure 43"
label var I10_PRMCCS44             "ICD-10-PCS Multi-Level CCS:  Procedure 44"
label var I10_PRMCCS45             "ICD-10-PCS Multi-Level CCS:  Procedure 45"
label var I10_PRMCCS46             "ICD-10-PCS Multi-Level CCS:  Procedure 46"
label var I10_PRMCCS47             "ICD-10-PCS Multi-Level CCS:  Procedure 47"
label var I10_PRMCCS48             "ICD-10-PCS Multi-Level CCS:  Procedure 48"
label var I10_PRMCCS49             "ICD-10-PCS Multi-Level CCS:  Procedure 49"
label var I10_PRMCCS50             "ICD-10-PCS Multi-Level CCS:  Procedure 50"
label var I10_U_BLOOD              "ICD-10-PCS Utilization Flag: Blood"
label var I10_U_CATH               "ICD-10-PCS Utilization Flag: Cardiac Catheterization Lab"
label var I10_U_CTSCAN             "ICD-10-PCS Utilization Flag: Computed Tomography Scan"
label var I10_U_EKG                "ICD-10-PCS Utilization Flag: Electrocardiogram"
label var I10_U_MHSA               "ICD-10-PCS Utilization Flag: Mental Health and Substance Abuse"
label var I10_U_MRT                "ICD-10-PCS Utilization Flag: Magnetic Resonance Technology"
label var I10_U_PACEMAKER          "ICD-10-PCS Utilization Flag: Pacemaker"
label var I10_U_PHYTHERAPY         "ICD-10-PCS Utilization Flag: Physical Therapy"
label var I10_U_RADTHERAPY         "ICD-10-PCS Utilization Flag: Radiology - Therapeutic and/or Chemotherapy Administration"
label var I10_U_STRESS             "ICD-10-PCS Utilization Flag: Cardiac Stress Test"
label var KEY                      "HCUP record identifier"
label var U_CCU                    "Utilization Flag: Coronary Care Unit (CCU)"
label var U_CHESTXRAY              "Utilization Flag: Chest X-Ray"
label var U_DIALYSIS               "Utilization Flag: Renal Dialysis"
label var U_ECHO                   "Utilization Flag: Echocardiology"
label var U_ED                     "Utilization Flag: Emergency Room"
label var U_EEG                    "Utilization Flag: Electroencephalogram"
label var U_EPO                    "Utilization Flag: EPO"
label var U_ICU                    "Utilization Flag: Intensive Care Unit (ICU)"
label var U_LITHOTRIPSY            "Utilization Flag: Lithotripsy"
label var U_NEWBN2L                "Utilization Flag: Nursery Level II"
label var U_NEWBN3L                "Utilization Flag: Nursery Level III"
label var U_NEWBN4L                "Utilization Flag: Nursery Level IV"
label var U_NUCMED                 "Utilization Flag: Nuclear Medicine"
label var U_OBSERVATION            "Utilization Flag: Observation Room"
label var U_OCCTHERAPY             "Utilization Flag: Occupational Therapy"
label var U_ORGANACQ               "Utilization Flag: Organ Acquisition"
label var U_OTHIMPLANTS            "Utilization Flag: Other Implants"
label var U_RESPTHERAPY            "Utilization Flag: Respiratory Services"
label var U_SPEECHTHERAPY          "Utilization Flag: Speech - Language Pathology"
label var U_ULTRASOUND             "Utilization Flag: Ultrasound"

*** Convert special values to missing values ***
recode I10_BODYSYSTEM1           (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM2           (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM3           (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM4           (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM5           (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM6           (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM7           (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM8           (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM9           (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM10          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM11          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM12          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM13          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM14          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM15          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM16          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM17          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM18          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM19          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM20          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM21          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM22          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM23          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM24          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM25          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM26          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM27          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM28          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM29          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM30          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM31          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM32          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM33          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM34          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM35          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM36          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM37          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM38          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM39          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM40          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM41          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM42          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM43          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM44          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM45          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM46          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM47          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM48          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM49          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM50          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM51          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM52          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM53          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM54          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM55          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM56          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM57          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM58          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM59          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM60          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM61          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM62          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM63          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM64          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM65          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM66          (-9 -8 -6 -5=.)
recode I10_BODYSYSTEM67          (-9 -8 -6 -5=.)
recode I10_CHRON1                (-9 -8 -6 -5=.)
recode I10_CHRON2                (-9 -8 -6 -5=.)
recode I10_CHRON3                (-9 -8 -6 -5=.)
recode I10_CHRON4                (-9 -8 -6 -5=.)
recode I10_CHRON5                (-9 -8 -6 -5=.)
recode I10_CHRON6                (-9 -8 -6 -5=.)
recode I10_CHRON7                (-9 -8 -6 -5=.)
recode I10_CHRON8                (-9 -8 -6 -5=.)
recode I10_CHRON9                (-9 -8 -6 -5=.)
recode I10_CHRON10               (-9 -8 -6 -5=.)
recode I10_CHRON11               (-9 -8 -6 -5=.)
recode I10_CHRON12               (-9 -8 -6 -5=.)
recode I10_CHRON13               (-9 -8 -6 -5=.)
recode I10_CHRON14               (-9 -8 -6 -5=.)
recode I10_CHRON15               (-9 -8 -6 -5=.)
recode I10_CHRON16               (-9 -8 -6 -5=.)
recode I10_CHRON17               (-9 -8 -6 -5=.)
recode I10_CHRON18               (-9 -8 -6 -5=.)
recode I10_CHRON19               (-9 -8 -6 -5=.)
recode I10_CHRON20               (-9 -8 -6 -5=.)
recode I10_CHRON21               (-9 -8 -6 -5=.)
recode I10_CHRON22               (-9 -8 -6 -5=.)
recode I10_CHRON23               (-9 -8 -6 -5=.)
recode I10_CHRON24               (-9 -8 -6 -5=.)
recode I10_CHRON25               (-9 -8 -6 -5=.)
recode I10_CHRON26               (-9 -8 -6 -5=.)
recode I10_CHRON27               (-9 -8 -6 -5=.)
recode I10_CHRON28               (-9 -8 -6 -5=.)
recode I10_CHRON29               (-9 -8 -6 -5=.)
recode I10_CHRON30               (-9 -8 -6 -5=.)
recode I10_CHRON31               (-9 -8 -6 -5=.)
recode I10_CHRON32               (-9 -8 -6 -5=.)
recode I10_CHRON33               (-9 -8 -6 -5=.)
recode I10_CHRON34               (-9 -8 -6 -5=.)
recode I10_CHRON35               (-9 -8 -6 -5=.)
recode I10_CHRON36               (-9 -8 -6 -5=.)
recode I10_CHRON37               (-9 -8 -6 -5=.)
recode I10_CHRON38               (-9 -8 -6 -5=.)
recode I10_CHRON39               (-9 -8 -6 -5=.)
recode I10_CHRON40               (-9 -8 -6 -5=.)
recode I10_CHRON41               (-9 -8 -6 -5=.)
recode I10_CHRON42               (-9 -8 -6 -5=.)
recode I10_CHRON43               (-9 -8 -6 -5=.)
recode I10_CHRON44               (-9 -8 -6 -5=.)
recode I10_CHRON45               (-9 -8 -6 -5=.)
recode I10_CHRON46               (-9 -8 -6 -5=.)
recode I10_CHRON47               (-9 -8 -6 -5=.)
recode I10_CHRON48               (-9 -8 -6 -5=.)
recode I10_CHRON49               (-9 -8 -6 -5=.)
recode I10_CHRON50               (-9 -8 -6 -5=.)
recode I10_CHRON51               (-9 -8 -6 -5=.)
recode I10_CHRON52               (-9 -8 -6 -5=.)
recode I10_CHRON53               (-9 -8 -6 -5=.)
recode I10_CHRON54               (-9 -8 -6 -5=.)
recode I10_CHRON55               (-9 -8 -6 -5=.)
recode I10_CHRON56               (-9 -8 -6 -5=.)
recode I10_CHRON57               (-9 -8 -6 -5=.)
recode I10_CHRON58               (-9 -8 -6 -5=.)
recode I10_CHRON59               (-9 -8 -6 -5=.)
recode I10_CHRON60               (-9 -8 -6 -5=.)
recode I10_CHRON61               (-9 -8 -6 -5=.)
recode I10_CHRON62               (-9 -8 -6 -5=.)
recode I10_CHRON63               (-9 -8 -6 -5=.)
recode I10_CHRON64               (-9 -8 -6 -5=.)
recode I10_CHRON65               (-9 -8 -6 -5=.)
recode I10_CHRON66               (-9 -8 -6 -5=.)
recode I10_CHRON67               (-9 -8 -6 -5=.)
recode I10_INJURY                (-9 -8 -6 -5=.)
recode I10_MULTINJURY            (-9 -8 -6 -5=.)
recode I10_PCLASS1               (-9 -8 -6 -5=.)
recode I10_PCLASS2               (-9 -8 -6 -5=.)
recode I10_PCLASS3               (-9 -8 -6 -5=.)
recode I10_PCLASS4               (-9 -8 -6 -5=.)
recode I10_PCLASS5               (-9 -8 -6 -5=.)
recode I10_PCLASS6               (-9 -8 -6 -5=.)
recode I10_PCLASS7               (-9 -8 -6 -5=.)
recode I10_PCLASS8               (-9 -8 -6 -5=.)
recode I10_PCLASS9               (-9 -8 -6 -5=.)
recode I10_PCLASS10              (-9 -8 -6 -5=.)
recode I10_PCLASS11              (-9 -8 -6 -5=.)
recode I10_PCLASS12              (-9 -8 -6 -5=.)
recode I10_PCLASS13              (-9 -8 -6 -5=.)
recode I10_PCLASS14              (-9 -8 -6 -5=.)
recode I10_PCLASS15              (-9 -8 -6 -5=.)
recode I10_PCLASS16              (-9 -8 -6 -5=.)
recode I10_PCLASS17              (-9 -8 -6 -5=.)
recode I10_PCLASS18              (-9 -8 -6 -5=.)
recode I10_PCLASS19              (-9 -8 -6 -5=.)
recode I10_PCLASS20              (-9 -8 -6 -5=.)
recode I10_PCLASS21              (-9 -8 -6 -5=.)
recode I10_PCLASS22              (-9 -8 -6 -5=.)
recode I10_PCLASS23              (-9 -8 -6 -5=.)
recode I10_PCLASS24              (-9 -8 -6 -5=.)
recode I10_PCLASS25              (-9 -8 -6 -5=.)
recode I10_PCLASS26              (-9 -8 -6 -5=.)
recode I10_PCLASS27              (-9 -8 -6 -5=.)
recode I10_PCLASS28              (-9 -8 -6 -5=.)
recode I10_PCLASS29              (-9 -8 -6 -5=.)
recode I10_PCLASS30              (-9 -8 -6 -5=.)
recode I10_PCLASS31              (-9 -8 -6 -5=.)
recode I10_PCLASS32              (-9 -8 -6 -5=.)
recode I10_PCLASS33              (-9 -8 -6 -5=.)
recode I10_PCLASS34              (-9 -8 -6 -5=.)
recode I10_PCLASS35              (-9 -8 -6 -5=.)
recode I10_PCLASS36              (-9 -8 -6 -5=.)
recode I10_PCLASS37              (-9 -8 -6 -5=.)
recode I10_PCLASS38              (-9 -8 -6 -5=.)
recode I10_PCLASS39              (-9 -8 -6 -5=.)
recode I10_PCLASS40              (-9 -8 -6 -5=.)
recode I10_PCLASS41              (-9 -8 -6 -5=.)
recode I10_PCLASS42              (-9 -8 -6 -5=.)
recode I10_PCLASS43              (-9 -8 -6 -5=.)
recode I10_PCLASS44              (-9 -8 -6 -5=.)
recode I10_PCLASS45              (-9 -8 -6 -5=.)
recode I10_PCLASS46              (-9 -8 -6 -5=.)
recode I10_PCLASS47              (-9 -8 -6 -5=.)
recode I10_PCLASS48              (-9 -8 -6 -5=.)
recode I10_PCLASS49              (-9 -8 -6 -5=.)
recode I10_PCLASS50              (-9 -8 -6 -5=.)
recode I10_U_BLOOD               (-9 -8 -6 -5=.)
recode I10_U_CATH                (-9 -8 -6 -5=.)
recode I10_U_CTSCAN              (-9 -8 -6 -5=.)
recode I10_U_EKG                 (-9 -8 -6 -5=.)
recode I10_U_MHSA                (-9 -8 -6 -5=.)
recode I10_U_MRT                 (-9 -8 -6 -5=.)
recode I10_U_PACEMAKER           (-9 -8 -6 -5=.)
recode I10_U_PHYTHERAPY          (-9 -8 -6 -5=.)
recode I10_U_RADTHERAPY          (-9 -8 -6 -5=.)
recode I10_U_STRESS              (-9 -8 -6 -5=.)
recode U_CCU                     (-9 -8 -6 -5=.)
recode U_CHESTXRAY               (-9 -8 -6 -5=.)
recode U_DIALYSIS                (-9 -8 -6 -5=.)
recode U_ECHO                    (-9 -8 -6 -5=.)
recode U_ED                      (-9 -8 -6 -5=.)
recode U_EEG                     (-9 -8 -6 -5=.)
recode U_EPO                     (-9 -8 -6 -5=.)
recode U_ICU                     (-9 -8 -6 -5=.)
recode U_LITHOTRIPSY             (-9 -8 -6 -5=.)
recode U_NEWBN2L                 (-9 -8 -6 -5=.)
recode U_NEWBN3L                 (-9 -8 -6 -5=.)
recode U_NEWBN4L                 (-9 -8 -6 -5=.)
recode U_NUCMED                  (-9 -8 -6 -5=.)
recode U_OBSERVATION             (-9 -8 -6 -5=.)
recode U_OCCTHERAPY              (-9 -8 -6 -5=.)
recode U_ORGANACQ                (-9 -8 -6 -5=.)
recode U_OTHIMPLANTS             (-9 -8 -6 -5=.)
recode U_RESPTHERAPY             (-9 -8 -6 -5=.)
recode U_SPEECHTHERAPY           (-9 -8 -6 -5=.)
recode U_ULTRASOUND              (-9 -8 -6 -5=.)

save "WI_SID_2015q4_DX_PR_GRPS.dta", replace
