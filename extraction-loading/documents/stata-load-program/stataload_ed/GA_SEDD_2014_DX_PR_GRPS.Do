/*****************************************************************************
* Creation Date: 11/30/2017   
* GA_SEDD_2014_DX_PR_GRPS.Do
* This program will load the 2014 GA ASCII DX_PR_GRPS File into Stata.
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
      byte   CHRON1                      89-  90   ///
      byte   CHRON2                      91-  92   ///
      byte   CHRON3                      93-  94   ///
      byte   CHRON4                      95-  96   ///
      byte   CHRON5                      97-  98   ///
      byte   CHRON6                      99- 100   ///
      byte   CHRON7                     101- 102   ///
      byte   CHRON8                     103- 104   ///
      byte   CHRON9                     105- 106   ///
      byte   CHRON10                    107- 108   ///
      byte   CHRON11                    109- 110   ///
      byte   CHRON12                    111- 112   ///
      byte   CHRON13                    113- 114   ///
      byte   CHRON14                    115- 116   ///
      byte   CHRON15                    117- 118   ///
      byte   CHRON16                    119- 120   ///
      byte   CHRON17                    121- 122   ///
      byte   CHRON18                    123- 124   ///
      byte   CHRON19                    125- 126   ///
      byte   CHRON20                    127- 128   ///
      byte   CHRON21                    129- 130   ///
      byte   CHRON22                    131- 132   ///
      byte   CHRON23                    133- 134   ///
      byte   CHRON24                    135- 136   ///
      byte   CHRON25                    137- 138   ///
      byte   CHRON26                    139- 140   ///
      byte   CHRON27                    141- 142   ///
      byte   CHRON28                    143- 144   ///
      byte   CHRON29                    145- 146   ///
      byte   CHRON30                    147- 148   ///
      byte   CHRON31                    149- 150   ///
      byte   CHRON32                    151- 152   ///
      byte   CHRON33                    153- 154   ///
      byte   CHRON34                    155- 156   ///
      byte   CHRON35                    157- 158   ///
      byte   CHRON36                    159- 160   ///
      byte   CHRON37                    161- 162   ///
      byte   CHRON38                    163- 164   ///
      byte   CHRON39                    165- 166   ///
      byte   CHRON40                    167- 168   ///
      byte   CHRON41                    169- 170   ///
      byte   CHRON42                    171- 172   ///
      byte   CHRON43                    173- 174   ///
      byte   CHRON44                    175- 176   ///
      str    DXMCCS1                    177- 187   ///
      str    DXMCCS2                    188- 198   ///
      str    DXMCCS3                    199- 209   ///
      str    DXMCCS4                    210- 220   ///
      str    DXMCCS5                    221- 231   ///
      str    DXMCCS6                    232- 242   ///
      str    DXMCCS7                    243- 253   ///
      str    DXMCCS8                    254- 264   ///
      str    DXMCCS9                    265- 275   ///
      str    DXMCCS10                   276- 286   ///
      str    DXMCCS11                   287- 297   ///
      str    DXMCCS12                   298- 308   ///
      str    DXMCCS13                   309- 319   ///
      str    DXMCCS14                   320- 330   ///
      str    DXMCCS15                   331- 341   ///
      str    DXMCCS16                   342- 352   ///
      str    DXMCCS17                   353- 363   ///
      str    DXMCCS18                   364- 374   ///
      str    DXMCCS19                   375- 385   ///
      str    DXMCCS20                   386- 396   ///
      str    DXMCCS21                   397- 407   ///
      str    DXMCCS22                   408- 418   ///
      str    DXMCCS23                   419- 429   ///
      str    DXMCCS24                   430- 440   ///
      str    DXMCCS25                   441- 451   ///
      str    DXMCCS26                   452- 462   ///
      str    DXMCCS27                   463- 473   ///
      str    DXMCCS28                   474- 484   ///
      str    DXMCCS29                   485- 495   ///
      str    DXMCCS30                   496- 506   ///
      str    DXMCCS31                   507- 517   ///
      str    DXMCCS32                   518- 528   ///
      str    DXMCCS33                   529- 539   ///
      str    DXMCCS34                   540- 550   ///
      str    DXMCCS35                   551- 561   ///
      str    DXMCCS36                   562- 572   ///
      str    DXMCCS37                   573- 583   ///
      str    DXMCCS38                   584- 594   ///
      str    DXMCCS39                   595- 605   ///
      str    DXMCCS40                   606- 616   ///
      str    DXMCCS41                   617- 627   ///
      str    DXMCCS42                   628- 638   ///
      str    DXMCCS43                   639- 649   ///
      str    DXMCCS44                   650- 660   ///
      str    E_MCCS1                    661- 671   ///
      str    E_MCCS2                    672- 682   ///
      str    E_MCCS3                    683- 693   ///
      str    E_MCCS4                    694- 704   ///
      str    E_MCCS5                    705- 715   ///
      str    E_MCCS6                    716- 726   ///
      str    E_MCCS7                    727- 737   ///
      byte   INJURY                     738- 739   ///
      byte   INJURY_CUT                 740- 741   ///
      byte   INJURY_DROWN               742- 743   ///
      byte   INJURY_FALL                744- 745   ///
      byte   INJURY_FIRE                746- 747   ///
      byte   INJURY_FIREARM             748- 749   ///
      byte   INJURY_MACHINERY           750- 751   ///
      byte   INJURY_MVT                 752- 753   ///
      byte   INJURY_NATURE              754- 755   ///
      byte   INJURY_POISON              756- 757   ///
      byte   INJURY_STRUCK              758- 759   ///
      byte   INJURY_SUFFOCATION         760- 761   ///
      byte   INTENT_ASSAULT             762- 763   ///
      byte   INTENT_SELF_HARM           764- 765   ///
      byte   INTENT_UNINTENTIONAL       766- 767   ///
      double KEY                        768- 782   ///
      byte   MULTINJURY                 783- 784   ///
      byte   PCLASS1                    785- 786   ///
      byte   PCLASS2                    787- 788   ///
      byte   PCLASS3                    789- 790   ///
      byte   PCLASS4                    791- 792   ///
      byte   PCLASS5                    793- 794   ///
      byte   PCLASS6                    795- 796   ///
      byte   PCLASS7                    797- 798   ///
      byte   PCLASS8                    799- 800   ///
      byte   PCLASS9                    801- 802   ///
      byte   PCLASS10                   803- 804   ///
      byte   PCLASS11                   805- 806   ///
      byte   PCLASS12                   807- 808   ///
      byte   PCLASS13                   809- 810   ///
      byte   PCLASS14                   811- 812   ///
      byte   PCLASS15                   813- 814   ///
      byte   PCLASS16                   815- 816   ///
      byte   PCLASS17                   817- 818   ///
      byte   PCLASS18                   819- 820   ///
      byte   PCLASS19                   821- 822   ///
      byte   PCLASS20                   823- 824   ///
      byte   PCLASS21                   825- 826   ///
      byte   PCLASS22                   827- 828   ///
      byte   PCLASS23                   829- 830   ///
      byte   PCLASS24                   831- 832   ///
      byte   PCLASS25                   833- 834   ///
      byte   PCLASS26                   835- 836   ///
      byte   PCLASS27                   837- 838   ///
      byte   PCLASS28                   839- 840   ///
      byte   PCLASS29                   841- 842   ///
      byte   PCLASS30                   843- 844   ///
      byte   PCLASS31                   845- 846   ///
      byte   PCLASS32                   847- 848   ///
      byte   PCLASS33                   849- 850   ///
      byte   PCLASS34                   851- 852   ///
      byte   PCLASS35                   853- 854   ///
      byte   PCLASS36                   855- 856   ///
      byte   PCLASS37                   857- 858   ///
      byte   PCLASS38                   859- 860   ///
      byte   PCLASS39                   861- 862   ///
      byte   PCLASS40                   863- 864   ///
      byte   PCLASS41                   865- 866   ///
      str    PRMCCS1                    867- 874   ///
      str    PRMCCS2                    875- 882   ///
      str    PRMCCS3                    883- 890   ///
      str    PRMCCS4                    891- 898   ///
      str    PRMCCS5                    899- 906   ///
      str    PRMCCS6                    907- 914   ///
      str    PRMCCS7                    915- 922   ///
      str    PRMCCS8                    923- 930   ///
      str    PRMCCS9                    931- 938   ///
      str    PRMCCS10                   939- 946   ///
      str    PRMCCS11                   947- 954   ///
      str    PRMCCS12                   955- 962   ///
      str    PRMCCS13                   963- 970   ///
      str    PRMCCS14                   971- 978   ///
      str    PRMCCS15                   979- 986   ///
      str    PRMCCS16                   987- 994   ///
      str    PRMCCS17                   995-1002   ///
      str    PRMCCS18                  1003-1010   ///
      str    PRMCCS19                  1011-1018   ///
      str    PRMCCS20                  1019-1026   ///
      str    PRMCCS21                  1027-1034   ///
      str    PRMCCS22                  1035-1042   ///
      str    PRMCCS23                  1043-1050   ///
      str    PRMCCS24                  1051-1058   ///
      str    PRMCCS25                  1059-1066   ///
      str    PRMCCS26                  1067-1074   ///
      str    PRMCCS27                  1075-1082   ///
      str    PRMCCS28                  1083-1090   ///
      str    PRMCCS29                  1091-1098   ///
      str    PRMCCS30                  1099-1106   ///
      str    PRMCCS31                  1107-1114   ///
      str    PRMCCS32                  1115-1122   ///
      str    PRMCCS33                  1123-1130   ///
      str    PRMCCS34                  1131-1138   ///
      str    PRMCCS35                  1139-1146   ///
      str    PRMCCS36                  1147-1154   ///
      str    PRMCCS37                  1155-1162   ///
      str    PRMCCS38                  1163-1170   ///
      str    PRMCCS39                  1171-1178   ///
      str    PRMCCS40                  1179-1186   ///
      str    PRMCCS41                  1187-1194   ///
      byte   U_BLOOD                   1195-1196   ///
      byte   U_CATH                    1197-1198   ///
      byte   U_CCU                     1199-1200   ///
      byte   U_CHESTXRAY               1201-1202   ///
      byte   U_CTSCAN                  1203-1204   ///
      byte   U_DIALYSIS                1205-1206   ///
      byte   U_ECHO                    1207-1208   ///
      byte   U_ED                      1209-1210   ///
      byte   U_EEG                     1211-1212   ///
      byte   U_EKG                     1213-1214   ///
      byte   U_EPO                     1215-1216   ///
      byte   U_ICU                     1217-1218   ///
      byte   U_LITHOTRIPSY             1219-1220   ///
      byte   U_MHSA                    1221-1222   ///
      byte   U_MRT                     1223-1224   ///
      byte   U_NEWBN2L                 1225-1226   ///
      byte   U_NEWBN3L                 1227-1228   ///
      byte   U_NEWBN4L                 1229-1230   ///
      byte   U_NUCMED                  1231-1232   ///
      byte   U_OBSERVATION             1233-1234   ///
      byte   U_OCCTHERAPY              1235-1236   ///
      byte   U_ORGANACQ                1237-1238   ///
      byte   U_OTHIMPLANTS             1239-1240   ///
      byte   U_PACEMAKER               1241-1242   ///
      byte   U_PHYTHERAPY              1243-1244   ///
      byte   U_RADTHERAPY              1245-1246   ///
      byte   U_RESPTHERAPY             1247-1248   ///
      byte   U_SPEECHTHERAPY           1249-1250   ///
      byte   U_STRESS                  1251-1252   ///
      byte   U_ULTRASOUND              1253-1254   ///
      using  "GA_SEDD_2014_DX_PR_GRPS.ASC"

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
label var U_MRT                    "Utilization Flag: Magnetic Resonance Technology"
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

save "GA_SEDD_2014_DX_PR_GRPS.dta", replace
