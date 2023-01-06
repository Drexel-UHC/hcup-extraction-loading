/*****************************************************************************
* Creation Date: 03/28/2017   
* MN_SID_2015q4_DX_PR_GRPS.Do
* This program will load the 2015 MN ASCII DX_PR_GRPS File into Stata.
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
      byte   I10_CHRON1                 101- 102   ///
      byte   I10_CHRON2                 103- 104   ///
      byte   I10_CHRON3                 105- 106   ///
      byte   I10_CHRON4                 107- 108   ///
      byte   I10_CHRON5                 109- 110   ///
      byte   I10_CHRON6                 111- 112   ///
      byte   I10_CHRON7                 113- 114   ///
      byte   I10_CHRON8                 115- 116   ///
      byte   I10_CHRON9                 117- 118   ///
      byte   I10_CHRON10                119- 120   ///
      byte   I10_CHRON11                121- 122   ///
      byte   I10_CHRON12                123- 124   ///
      byte   I10_CHRON13                125- 126   ///
      byte   I10_CHRON14                127- 128   ///
      byte   I10_CHRON15                129- 130   ///
      byte   I10_CHRON16                131- 132   ///
      byte   I10_CHRON17                133- 134   ///
      byte   I10_CHRON18                135- 136   ///
      byte   I10_CHRON19                137- 138   ///
      byte   I10_CHRON20                139- 140   ///
      byte   I10_CHRON21                141- 142   ///
      byte   I10_CHRON22                143- 144   ///
      byte   I10_CHRON23                145- 146   ///
      byte   I10_CHRON24                147- 148   ///
      byte   I10_CHRON25                149- 150   ///
      byte   I10_CHRON26                151- 152   ///
      byte   I10_CHRON27                153- 154   ///
      byte   I10_CHRON28                155- 156   ///
      byte   I10_CHRON29                157- 158   ///
      byte   I10_CHRON30                159- 160   ///
      byte   I10_CHRON31                161- 162   ///
      byte   I10_CHRON32                163- 164   ///
      byte   I10_CHRON33                165- 166   ///
      byte   I10_CHRON34                167- 168   ///
      byte   I10_CHRON35                169- 170   ///
      byte   I10_CHRON36                171- 172   ///
      byte   I10_CHRON37                173- 174   ///
      byte   I10_CHRON38                175- 176   ///
      byte   I10_CHRON39                177- 178   ///
      byte   I10_CHRON40                179- 180   ///
      byte   I10_CHRON41                181- 182   ///
      byte   I10_CHRON42                183- 184   ///
      byte   I10_CHRON43                185- 186   ///
      byte   I10_CHRON44                187- 188   ///
      byte   I10_CHRON45                189- 190   ///
      byte   I10_CHRON46                191- 192   ///
      byte   I10_CHRON47                193- 194   ///
      byte   I10_CHRON48                195- 196   ///
      byte   I10_CHRON49                197- 198   ///
      byte   I10_CHRON50                199- 200   ///
      str    I10_DXMCCS1                201- 211   ///
      str    I10_DXMCCS2                212- 222   ///
      str    I10_DXMCCS3                223- 233   ///
      str    I10_DXMCCS4                234- 244   ///
      str    I10_DXMCCS5                245- 255   ///
      str    I10_DXMCCS6                256- 266   ///
      str    I10_DXMCCS7                267- 277   ///
      str    I10_DXMCCS8                278- 288   ///
      str    I10_DXMCCS9                289- 299   ///
      str    I10_DXMCCS10               300- 310   ///
      str    I10_DXMCCS11               311- 321   ///
      str    I10_DXMCCS12               322- 332   ///
      str    I10_DXMCCS13               333- 343   ///
      str    I10_DXMCCS14               344- 354   ///
      str    I10_DXMCCS15               355- 365   ///
      str    I10_DXMCCS16               366- 376   ///
      str    I10_DXMCCS17               377- 387   ///
      str    I10_DXMCCS18               388- 398   ///
      str    I10_DXMCCS19               399- 409   ///
      str    I10_DXMCCS20               410- 420   ///
      str    I10_DXMCCS21               421- 431   ///
      str    I10_DXMCCS22               432- 442   ///
      str    I10_DXMCCS23               443- 453   ///
      str    I10_DXMCCS24               454- 464   ///
      str    I10_DXMCCS25               465- 475   ///
      str    I10_DXMCCS26               476- 486   ///
      str    I10_DXMCCS27               487- 497   ///
      str    I10_DXMCCS28               498- 508   ///
      str    I10_DXMCCS29               509- 519   ///
      str    I10_DXMCCS30               520- 530   ///
      str    I10_DXMCCS31               531- 541   ///
      str    I10_DXMCCS32               542- 552   ///
      str    I10_DXMCCS33               553- 563   ///
      str    I10_DXMCCS34               564- 574   ///
      str    I10_DXMCCS35               575- 585   ///
      str    I10_DXMCCS36               586- 596   ///
      str    I10_DXMCCS37               597- 607   ///
      str    I10_DXMCCS38               608- 618   ///
      str    I10_DXMCCS39               619- 629   ///
      str    I10_DXMCCS40               630- 640   ///
      str    I10_DXMCCS41               641- 651   ///
      str    I10_DXMCCS42               652- 662   ///
      str    I10_DXMCCS43               663- 673   ///
      str    I10_DXMCCS44               674- 684   ///
      str    I10_DXMCCS45               685- 695   ///
      str    I10_DXMCCS46               696- 706   ///
      str    I10_DXMCCS47               707- 717   ///
      str    I10_DXMCCS48               718- 728   ///
      str    I10_DXMCCS49               729- 739   ///
      str    I10_DXMCCS50               740- 750   ///
      str    I10_ECauseMCCS1            751- 761   ///
      str    I10_ECauseMCCS2            762- 772   ///
      str    I10_ECauseMCCS3            773- 783   ///
      str    I10_ECauseMCCS4            784- 794   ///
      str    I10_ECauseMCCS5            795- 805   ///
      str    I10_ECauseMCCS6            806- 816   ///
      str    I10_ECauseMCCS7            817- 827   ///
      byte   I10_INJURY                 828- 829   ///
      byte   I10_MULTINJURY             830- 831   ///
      byte   I10_PCLASS1                832- 833   ///
      byte   I10_PCLASS2                834- 835   ///
      byte   I10_PCLASS3                836- 837   ///
      byte   I10_PCLASS4                838- 839   ///
      byte   I10_PCLASS5                840- 841   ///
      byte   I10_PCLASS6                842- 843   ///
      byte   I10_PCLASS7                844- 845   ///
      byte   I10_PCLASS8                846- 847   ///
      byte   I10_PCLASS9                848- 849   ///
      byte   I10_PCLASS10               850- 851   ///
      byte   I10_PCLASS11               852- 853   ///
      byte   I10_PCLASS12               854- 855   ///
      byte   I10_PCLASS13               856- 857   ///
      byte   I10_PCLASS14               858- 859   ///
      byte   I10_PCLASS15               860- 861   ///
      byte   I10_PCLASS16               862- 863   ///
      byte   I10_PCLASS17               864- 865   ///
      byte   I10_PCLASS18               866- 867   ///
      byte   I10_PCLASS19               868- 869   ///
      byte   I10_PCLASS20               870- 871   ///
      byte   I10_PCLASS21               872- 873   ///
      byte   I10_PCLASS22               874- 875   ///
      byte   I10_PCLASS23               876- 877   ///
      byte   I10_PCLASS24               878- 879   ///
      byte   I10_PCLASS25               880- 881   ///
      byte   I10_PCLASS26               882- 883   ///
      byte   I10_PCLASS27               884- 885   ///
      byte   I10_PCLASS28               886- 887   ///
      byte   I10_PCLASS29               888- 889   ///
      byte   I10_PCLASS30               890- 891   ///
      byte   I10_PCLASS31               892- 893   ///
      byte   I10_PCLASS32               894- 895   ///
      byte   I10_PCLASS33               896- 897   ///
      byte   I10_PCLASS34               898- 899   ///
      byte   I10_PCLASS35               900- 901   ///
      byte   I10_PCLASS36               902- 903   ///
      byte   I10_PCLASS37               904- 905   ///
      byte   I10_PCLASS38               906- 907   ///
      byte   I10_PCLASS39               908- 909   ///
      byte   I10_PCLASS40               910- 911   ///
      byte   I10_PCLASS41               912- 913   ///
      byte   I10_PCLASS42               914- 915   ///
      byte   I10_PCLASS43               916- 917   ///
      byte   I10_PCLASS44               918- 919   ///
      byte   I10_PCLASS45               920- 921   ///
      byte   I10_PCLASS46               922- 923   ///
      byte   I10_PCLASS47               924- 925   ///
      byte   I10_PCLASS48               926- 927   ///
      byte   I10_PCLASS49               928- 929   ///
      byte   I10_PCLASS50               930- 931   ///
      str    I10_PRMCCS1                932- 939   ///
      str    I10_PRMCCS2                940- 947   ///
      str    I10_PRMCCS3                948- 955   ///
      str    I10_PRMCCS4                956- 963   ///
      str    I10_PRMCCS5                964- 971   ///
      str    I10_PRMCCS6                972- 979   ///
      str    I10_PRMCCS7                980- 987   ///
      str    I10_PRMCCS8                988- 995   ///
      str    I10_PRMCCS9                996-1003   ///
      str    I10_PRMCCS10              1004-1011   ///
      str    I10_PRMCCS11              1012-1019   ///
      str    I10_PRMCCS12              1020-1027   ///
      str    I10_PRMCCS13              1028-1035   ///
      str    I10_PRMCCS14              1036-1043   ///
      str    I10_PRMCCS15              1044-1051   ///
      str    I10_PRMCCS16              1052-1059   ///
      str    I10_PRMCCS17              1060-1067   ///
      str    I10_PRMCCS18              1068-1075   ///
      str    I10_PRMCCS19              1076-1083   ///
      str    I10_PRMCCS20              1084-1091   ///
      str    I10_PRMCCS21              1092-1099   ///
      str    I10_PRMCCS22              1100-1107   ///
      str    I10_PRMCCS23              1108-1115   ///
      str    I10_PRMCCS24              1116-1123   ///
      str    I10_PRMCCS25              1124-1131   ///
      str    I10_PRMCCS26              1132-1139   ///
      str    I10_PRMCCS27              1140-1147   ///
      str    I10_PRMCCS28              1148-1155   ///
      str    I10_PRMCCS29              1156-1163   ///
      str    I10_PRMCCS30              1164-1171   ///
      str    I10_PRMCCS31              1172-1179   ///
      str    I10_PRMCCS32              1180-1187   ///
      str    I10_PRMCCS33              1188-1195   ///
      str    I10_PRMCCS34              1196-1203   ///
      str    I10_PRMCCS35              1204-1211   ///
      str    I10_PRMCCS36              1212-1219   ///
      str    I10_PRMCCS37              1220-1227   ///
      str    I10_PRMCCS38              1228-1235   ///
      str    I10_PRMCCS39              1236-1243   ///
      str    I10_PRMCCS40              1244-1251   ///
      str    I10_PRMCCS41              1252-1259   ///
      str    I10_PRMCCS42              1260-1267   ///
      str    I10_PRMCCS43              1268-1275   ///
      str    I10_PRMCCS44              1276-1283   ///
      str    I10_PRMCCS45              1284-1291   ///
      str    I10_PRMCCS46              1292-1299   ///
      str    I10_PRMCCS47              1300-1307   ///
      str    I10_PRMCCS48              1308-1315   ///
      str    I10_PRMCCS49              1316-1323   ///
      str    I10_PRMCCS50              1324-1331   ///
      byte   I10_U_BLOOD               1332-1333   ///
      byte   I10_U_CATH                1334-1335   ///
      byte   I10_U_CTSCAN              1336-1337   ///
      byte   I10_U_EKG                 1338-1339   ///
      byte   I10_U_MHSA                1340-1341   ///
      byte   I10_U_MRT                 1342-1343   ///
      byte   I10_U_PACEMAKER           1344-1345   ///
      byte   I10_U_PHYTHERAPY          1346-1347   ///
      byte   I10_U_RADTHERAPY          1348-1349   ///
      byte   I10_U_STRESS              1350-1351   ///
      double KEY                       1352-1366   ///
      byte   U_CCU                     1367-1368   ///
      byte   U_CHESTXRAY               1369-1370   ///
      byte   U_DIALYSIS                1371-1372   ///
      byte   U_ECHO                    1373-1374   ///
      byte   U_ED                      1375-1376   ///
      byte   U_EEG                     1377-1378   ///
      byte   U_EPO                     1379-1380   ///
      byte   U_ICU                     1381-1382   ///
      byte   U_LITHOTRIPSY             1383-1384   ///
      byte   U_NEWBN2L                 1385-1386   ///
      byte   U_NEWBN3L                 1387-1388   ///
      byte   U_NEWBN4L                 1389-1390   ///
      byte   U_NUCMED                  1391-1392   ///
      byte   U_OBSERVATION             1393-1394   ///
      byte   U_OCCTHERAPY              1395-1396   ///
      byte   U_ORGANACQ                1397-1398   ///
      byte   U_OTHIMPLANTS             1399-1400   ///
      byte   U_RESPTHERAPY             1401-1402   ///
      byte   U_SPEECHTHERAPY           1403-1404   ///
      byte   U_ULTRASOUND              1405-1406   ///
      using  "MN_SID_2015q4_DX_PR_GRPS.ASC"

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
label var I10_ECauseMCCS1          "ICD-10-CM Multi-Level CCS:  E Cause 1"
label var I10_ECauseMCCS2          "ICD-10-CM Multi-Level CCS:  E Cause 2"
label var I10_ECauseMCCS3          "ICD-10-CM Multi-Level CCS:  E Cause 3"
label var I10_ECauseMCCS4          "ICD-10-CM Multi-Level CCS:  E Cause 4"
label var I10_ECauseMCCS5          "ICD-10-CM Multi-Level CCS:  E Cause 5"
label var I10_ECauseMCCS6          "ICD-10-CM Multi-Level CCS:  E Cause 6"
label var I10_ECauseMCCS7          "ICD-10-CM Multi-Level CCS:  E Cause 7"
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

save "MN_SID_2015q4_DX_PR_GRPS.dta", replace
