/*****************************************************************************
* Creation Date: 11/29/2017   
* DC_SID_2015q1q3_DX_PR_GRPS.Do
* This program will load the 2015 DC ASCII DX_PR_GRPS File into Stata.
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
      byte   BODYSYSTEM1                  1-   2   ///
      byte   BODYSYSTEM2                  3-   4   ///
      byte   BODYSYSTEM3                  5-   6   ///
      byte   BODYSYSTEM4                  7-   8   ///
      byte   BODYSYSTEM5                  9-  10   ///
      byte   BODYSYSTEM6                 11-  12   ///
      byte   BODYSYSTEM7                 13-  14   ///
      byte   BODYSYSTEM8                 15-  16   ///
      byte   BODYSYSTEM9                 17-  18   ///
      byte   BODYSYSTEM10                19-  20   ///
      byte   BODYSYSTEM11                21-  22   ///
      byte   BODYSYSTEM12                23-  24   ///
      byte   BODYSYSTEM13                25-  26   ///
      byte   BODYSYSTEM14                27-  28   ///
      byte   BODYSYSTEM15                29-  30   ///
      byte   BODYSYSTEM16                31-  32   ///
      byte   BODYSYSTEM17                33-  34   ///
      byte   BODYSYSTEM18                35-  36   ///
      byte   BODYSYSTEM19                37-  38   ///
      byte   BODYSYSTEM20                39-  40   ///
      byte   BODYSYSTEM21                41-  42   ///
      byte   BODYSYSTEM22                43-  44   ///
      byte   BODYSYSTEM23                45-  46   ///
      byte   BODYSYSTEM24                47-  48   ///
      byte   BODYSYSTEM25                49-  50   ///
      byte   BODYSYSTEM26                51-  52   ///
      byte   BODYSYSTEM27                53-  54   ///
      byte   BODYSYSTEM28                55-  56   ///
      byte   BODYSYSTEM29                57-  58   ///
      byte   BODYSYSTEM30                59-  60   ///
      byte   BODYSYSTEM31                61-  62   ///
      byte   BODYSYSTEM32                63-  64   ///
      byte   BODYSYSTEM33                65-  66   ///
      byte   BODYSYSTEM34                67-  68   ///
      byte   BODYSYSTEM35                69-  70   ///
      byte   BODYSYSTEM36                71-  72   ///
      byte   BODYSYSTEM37                73-  74   ///
      byte   BODYSYSTEM38                75-  76   ///
      byte   BODYSYSTEM39                77-  78   ///
      byte   BODYSYSTEM40                79-  80   ///
      byte   BODYSYSTEM41                81-  82   ///
      byte   BODYSYSTEM42                83-  84   ///
      byte   BODYSYSTEM43                85-  86   ///
      byte   BODYSYSTEM44                87-  88   ///
      byte   BODYSYSTEM45                89-  90   ///
      byte   BODYSYSTEM46                91-  92   ///
      byte   BODYSYSTEM47                93-  94   ///
      byte   BODYSYSTEM48                95-  96   ///
      byte   BODYSYSTEM49                97-  98   ///
      byte   BODYSYSTEM50                99- 100   ///
      byte   CHRON1                     101- 102   ///
      byte   CHRON2                     103- 104   ///
      byte   CHRON3                     105- 106   ///
      byte   CHRON4                     107- 108   ///
      byte   CHRON5                     109- 110   ///
      byte   CHRON6                     111- 112   ///
      byte   CHRON7                     113- 114   ///
      byte   CHRON8                     115- 116   ///
      byte   CHRON9                     117- 118   ///
      byte   CHRON10                    119- 120   ///
      byte   CHRON11                    121- 122   ///
      byte   CHRON12                    123- 124   ///
      byte   CHRON13                    125- 126   ///
      byte   CHRON14                    127- 128   ///
      byte   CHRON15                    129- 130   ///
      byte   CHRON16                    131- 132   ///
      byte   CHRON17                    133- 134   ///
      byte   CHRON18                    135- 136   ///
      byte   CHRON19                    137- 138   ///
      byte   CHRON20                    139- 140   ///
      byte   CHRON21                    141- 142   ///
      byte   CHRON22                    143- 144   ///
      byte   CHRON23                    145- 146   ///
      byte   CHRON24                    147- 148   ///
      byte   CHRON25                    149- 150   ///
      byte   CHRON26                    151- 152   ///
      byte   CHRON27                    153- 154   ///
      byte   CHRON28                    155- 156   ///
      byte   CHRON29                    157- 158   ///
      byte   CHRON30                    159- 160   ///
      byte   CHRON31                    161- 162   ///
      byte   CHRON32                    163- 164   ///
      byte   CHRON33                    165- 166   ///
      byte   CHRON34                    167- 168   ///
      byte   CHRON35                    169- 170   ///
      byte   CHRON36                    171- 172   ///
      byte   CHRON37                    173- 174   ///
      byte   CHRON38                    175- 176   ///
      byte   CHRON39                    177- 178   ///
      byte   CHRON40                    179- 180   ///
      byte   CHRON41                    181- 182   ///
      byte   CHRON42                    183- 184   ///
      byte   CHRON43                    185- 186   ///
      byte   CHRON44                    187- 188   ///
      byte   CHRON45                    189- 190   ///
      byte   CHRON46                    191- 192   ///
      byte   CHRON47                    193- 194   ///
      byte   CHRON48                    195- 196   ///
      byte   CHRON49                    197- 198   ///
      byte   CHRON50                    199- 200   ///
      str    DXMCCS1                    201- 211   ///
      str    DXMCCS2                    212- 222   ///
      str    DXMCCS3                    223- 233   ///
      str    DXMCCS4                    234- 244   ///
      str    DXMCCS5                    245- 255   ///
      str    DXMCCS6                    256- 266   ///
      str    DXMCCS7                    267- 277   ///
      str    DXMCCS8                    278- 288   ///
      str    DXMCCS9                    289- 299   ///
      str    DXMCCS10                   300- 310   ///
      str    DXMCCS11                   311- 321   ///
      str    DXMCCS12                   322- 332   ///
      str    DXMCCS13                   333- 343   ///
      str    DXMCCS14                   344- 354   ///
      str    DXMCCS15                   355- 365   ///
      str    DXMCCS16                   366- 376   ///
      str    DXMCCS17                   377- 387   ///
      str    DXMCCS18                   388- 398   ///
      str    DXMCCS19                   399- 409   ///
      str    DXMCCS20                   410- 420   ///
      str    DXMCCS21                   421- 431   ///
      str    DXMCCS22                   432- 442   ///
      str    DXMCCS23                   443- 453   ///
      str    DXMCCS24                   454- 464   ///
      str    DXMCCS25                   465- 475   ///
      str    DXMCCS26                   476- 486   ///
      str    DXMCCS27                   487- 497   ///
      str    DXMCCS28                   498- 508   ///
      str    DXMCCS29                   509- 519   ///
      str    DXMCCS30                   520- 530   ///
      str    DXMCCS31                   531- 541   ///
      str    DXMCCS32                   542- 552   ///
      str    DXMCCS33                   553- 563   ///
      str    DXMCCS34                   564- 574   ///
      str    DXMCCS35                   575- 585   ///
      str    DXMCCS36                   586- 596   ///
      str    DXMCCS37                   597- 607   ///
      str    DXMCCS38                   608- 618   ///
      str    DXMCCS39                   619- 629   ///
      str    DXMCCS40                   630- 640   ///
      str    DXMCCS41                   641- 651   ///
      str    DXMCCS42                   652- 662   ///
      str    DXMCCS43                   663- 673   ///
      str    DXMCCS44                   674- 684   ///
      str    DXMCCS45                   685- 695   ///
      str    DXMCCS46                   696- 706   ///
      str    DXMCCS47                   707- 717   ///
      str    DXMCCS48                   718- 728   ///
      str    DXMCCS49                   729- 739   ///
      str    DXMCCS50                   740- 750   ///
      str    E_MCCS1                    751- 761   ///
      str    E_MCCS2                    762- 772   ///
      str    E_MCCS3                    773- 783   ///
      str    E_MCCS4                    784- 794   ///
      str    E_MCCS5                    795- 805   ///
      str    E_MCCS6                    806- 816   ///
      str    E_MCCS7                    817- 827   ///
      byte   INJURY                     828- 829   ///
      byte   INJURY_CUT                 830- 831   ///
      byte   INJURY_DROWN               832- 833   ///
      byte   INJURY_FALL                834- 835   ///
      byte   INJURY_FIRE                836- 837   ///
      byte   INJURY_FIREARM             838- 839   ///
      byte   INJURY_MACHINERY           840- 841   ///
      byte   INJURY_MVT                 842- 843   ///
      byte   INJURY_NATURE              844- 845   ///
      byte   INJURY_POISON              846- 847   ///
      byte   INJURY_STRUCK              848- 849   ///
      byte   INJURY_SUFFOCATION         850- 851   ///
      byte   INTENT_ASSAULT             852- 853   ///
      byte   INTENT_SELF_HARM           854- 855   ///
      byte   INTENT_UNINTENTIONAL       856- 857   ///
      double KEY                        858- 872   ///
      byte   MULTINJURY                 873- 874   ///
      byte   PCLASS1                    875- 876   ///
      byte   PCLASS2                    877- 878   ///
      byte   PCLASS3                    879- 880   ///
      byte   PCLASS4                    881- 882   ///
      byte   PCLASS5                    883- 884   ///
      byte   PCLASS6                    885- 886   ///
      byte   PCLASS7                    887- 888   ///
      byte   PCLASS8                    889- 890   ///
      byte   PCLASS9                    891- 892   ///
      byte   PCLASS10                   893- 894   ///
      byte   PCLASS11                   895- 896   ///
      byte   PCLASS12                   897- 898   ///
      byte   PCLASS13                   899- 900   ///
      byte   PCLASS14                   901- 902   ///
      byte   PCLASS15                   903- 904   ///
      byte   PCLASS16                   905- 906   ///
      byte   PCLASS17                   907- 908   ///
      byte   PCLASS18                   909- 910   ///
      byte   PCLASS19                   911- 912   ///
      byte   PCLASS20                   913- 914   ///
      byte   PCLASS21                   915- 916   ///
      byte   PCLASS22                   917- 918   ///
      byte   PCLASS23                   919- 920   ///
      byte   PCLASS24                   921- 922   ///
      byte   PCLASS25                   923- 924   ///
      byte   PCLASS26                   925- 926   ///
      byte   PCLASS27                   927- 928   ///
      byte   PCLASS28                   929- 930   ///
      byte   PCLASS29                   931- 932   ///
      byte   PCLASS30                   933- 934   ///
      byte   PCLASS31                   935- 936   ///
      byte   PCLASS32                   937- 938   ///
      byte   PCLASS33                   939- 940   ///
      byte   PCLASS34                   941- 942   ///
      byte   PCLASS35                   943- 944   ///
      byte   PCLASS36                   945- 946   ///
      byte   PCLASS37                   947- 948   ///
      byte   PCLASS38                   949- 950   ///
      byte   PCLASS39                   951- 952   ///
      byte   PCLASS40                   953- 954   ///
      byte   PCLASS41                   955- 956   ///
      byte   PCLASS42                   957- 958   ///
      byte   PCLASS43                   959- 960   ///
      byte   PCLASS44                   961- 962   ///
      byte   PCLASS45                   963- 964   ///
      byte   PCLASS46                   965- 966   ///
      byte   PCLASS47                   967- 968   ///
      byte   PCLASS48                   969- 970   ///
      byte   PCLASS49                   971- 972   ///
      byte   PCLASS50                   973- 974   ///
      str    PRMCCS1                    975- 982   ///
      str    PRMCCS2                    983- 990   ///
      str    PRMCCS3                    991- 998   ///
      str    PRMCCS4                    999-1006   ///
      str    PRMCCS5                   1007-1014   ///
      str    PRMCCS6                   1015-1022   ///
      str    PRMCCS7                   1023-1030   ///
      str    PRMCCS8                   1031-1038   ///
      str    PRMCCS9                   1039-1046   ///
      str    PRMCCS10                  1047-1054   ///
      str    PRMCCS11                  1055-1062   ///
      str    PRMCCS12                  1063-1070   ///
      str    PRMCCS13                  1071-1078   ///
      str    PRMCCS14                  1079-1086   ///
      str    PRMCCS15                  1087-1094   ///
      str    PRMCCS16                  1095-1102   ///
      str    PRMCCS17                  1103-1110   ///
      str    PRMCCS18                  1111-1118   ///
      str    PRMCCS19                  1119-1126   ///
      str    PRMCCS20                  1127-1134   ///
      str    PRMCCS21                  1135-1142   ///
      str    PRMCCS22                  1143-1150   ///
      str    PRMCCS23                  1151-1158   ///
      str    PRMCCS24                  1159-1166   ///
      str    PRMCCS25                  1167-1174   ///
      str    PRMCCS26                  1175-1182   ///
      str    PRMCCS27                  1183-1190   ///
      str    PRMCCS28                  1191-1198   ///
      str    PRMCCS29                  1199-1206   ///
      str    PRMCCS30                  1207-1214   ///
      str    PRMCCS31                  1215-1222   ///
      str    PRMCCS32                  1223-1230   ///
      str    PRMCCS33                  1231-1238   ///
      str    PRMCCS34                  1239-1246   ///
      str    PRMCCS35                  1247-1254   ///
      str    PRMCCS36                  1255-1262   ///
      str    PRMCCS37                  1263-1270   ///
      str    PRMCCS38                  1271-1278   ///
      str    PRMCCS39                  1279-1286   ///
      str    PRMCCS40                  1287-1294   ///
      str    PRMCCS41                  1295-1302   ///
      str    PRMCCS42                  1303-1310   ///
      str    PRMCCS43                  1311-1318   ///
      str    PRMCCS44                  1319-1326   ///
      str    PRMCCS45                  1327-1334   ///
      str    PRMCCS46                  1335-1342   ///
      str    PRMCCS47                  1343-1350   ///
      str    PRMCCS48                  1351-1358   ///
      str    PRMCCS49                  1359-1366   ///
      str    PRMCCS50                  1367-1374   ///
      using  "DC_SID_2015q1q3_DX_PR_GRPS.ASC"

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
label var E_MCCS1                  "Multi-Level CCS:  E Code 1"
label var E_MCCS2                  "Multi-Level CCS:  E Code 2"
label var E_MCCS3                  "Multi-Level CCS:  E Code 3"
label var E_MCCS4                  "Multi-Level CCS:  E Code 4"
label var E_MCCS5                  "Multi-Level CCS:  E Code 5"
label var E_MCCS6                  "Multi-Level CCS:  E Code 6"
label var E_MCCS7                  "Multi-Level CCS:  E Code 7"
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

save "DC_SID_2015q1q3_DX_PR_GRPS.dta", replace
