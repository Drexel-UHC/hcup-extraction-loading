/*****************************************************************************
* Creation Date: 07/05/2017   
* HI_SID_2015q4_DX_PR_GRPS.Do
* This program will load the 2015 HI ASCII DX_PR_GRPS File into Stata.
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
      byte   I10_CHRON1                  77-  78   ///
      byte   I10_CHRON2                  79-  80   ///
      byte   I10_CHRON3                  81-  82   ///
      byte   I10_CHRON4                  83-  84   ///
      byte   I10_CHRON5                  85-  86   ///
      byte   I10_CHRON6                  87-  88   ///
      byte   I10_CHRON7                  89-  90   ///
      byte   I10_CHRON8                  91-  92   ///
      byte   I10_CHRON9                  93-  94   ///
      byte   I10_CHRON10                 95-  96   ///
      byte   I10_CHRON11                 97-  98   ///
      byte   I10_CHRON12                 99- 100   ///
      byte   I10_CHRON13                101- 102   ///
      byte   I10_CHRON14                103- 104   ///
      byte   I10_CHRON15                105- 106   ///
      byte   I10_CHRON16                107- 108   ///
      byte   I10_CHRON17                109- 110   ///
      byte   I10_CHRON18                111- 112   ///
      byte   I10_CHRON19                113- 114   ///
      byte   I10_CHRON20                115- 116   ///
      byte   I10_CHRON21                117- 118   ///
      byte   I10_CHRON22                119- 120   ///
      byte   I10_CHRON23                121- 122   ///
      byte   I10_CHRON24                123- 124   ///
      byte   I10_CHRON25                125- 126   ///
      byte   I10_CHRON26                127- 128   ///
      byte   I10_CHRON27                129- 130   ///
      byte   I10_CHRON28                131- 132   ///
      byte   I10_CHRON29                133- 134   ///
      byte   I10_CHRON30                135- 136   ///
      byte   I10_CHRON31                137- 138   ///
      byte   I10_CHRON32                139- 140   ///
      byte   I10_CHRON33                141- 142   ///
      byte   I10_CHRON34                143- 144   ///
      byte   I10_CHRON35                145- 146   ///
      byte   I10_CHRON36                147- 148   ///
      byte   I10_CHRON37                149- 150   ///
      byte   I10_CHRON38                151- 152   ///
      str    I10_DXMCCS1                153- 163   ///
      str    I10_DXMCCS2                164- 174   ///
      str    I10_DXMCCS3                175- 185   ///
      str    I10_DXMCCS4                186- 196   ///
      str    I10_DXMCCS5                197- 207   ///
      str    I10_DXMCCS6                208- 218   ///
      str    I10_DXMCCS7                219- 229   ///
      str    I10_DXMCCS8                230- 240   ///
      str    I10_DXMCCS9                241- 251   ///
      str    I10_DXMCCS10               252- 262   ///
      str    I10_DXMCCS11               263- 273   ///
      str    I10_DXMCCS12               274- 284   ///
      str    I10_DXMCCS13               285- 295   ///
      str    I10_DXMCCS14               296- 306   ///
      str    I10_DXMCCS15               307- 317   ///
      str    I10_DXMCCS16               318- 328   ///
      str    I10_DXMCCS17               329- 339   ///
      str    I10_DXMCCS18               340- 350   ///
      str    I10_DXMCCS19               351- 361   ///
      str    I10_DXMCCS20               362- 372   ///
      str    I10_DXMCCS21               373- 383   ///
      str    I10_DXMCCS22               384- 394   ///
      str    I10_DXMCCS23               395- 405   ///
      str    I10_DXMCCS24               406- 416   ///
      str    I10_DXMCCS25               417- 427   ///
      str    I10_DXMCCS26               428- 438   ///
      str    I10_DXMCCS27               439- 449   ///
      str    I10_DXMCCS28               450- 460   ///
      str    I10_DXMCCS29               461- 471   ///
      str    I10_DXMCCS30               472- 482   ///
      str    I10_DXMCCS31               483- 493   ///
      str    I10_DXMCCS32               494- 504   ///
      str    I10_DXMCCS33               505- 515   ///
      str    I10_DXMCCS34               516- 526   ///
      str    I10_DXMCCS35               527- 537   ///
      str    I10_DXMCCS36               538- 548   ///
      str    I10_DXMCCS37               549- 559   ///
      str    I10_DXMCCS38               560- 570   ///
      str    I10_ECauseMCCS1            571- 581   ///
      str    I10_ECauseMCCS2            582- 592   ///
      str    I10_ECauseMCCS3            593- 603   ///
      str    I10_ECauseMCCS4            604- 614   ///
      str    I10_ECauseMCCS5            615- 625   ///
      str    I10_ECauseMCCS6            626- 636   ///
      str    I10_ECauseMCCS7            637- 647   ///
      str    I10_ECauseMCCS8            648- 658   ///
      str    I10_ECauseMCCS9            659- 669   ///
      byte   I10_INJURY                 670- 671   ///
      byte   I10_MULTINJURY             672- 673   ///
      byte   I10_PCLASS1                674- 675   ///
      byte   I10_PCLASS2                676- 677   ///
      byte   I10_PCLASS3                678- 679   ///
      byte   I10_PCLASS4                680- 681   ///
      byte   I10_PCLASS5                682- 683   ///
      byte   I10_PCLASS6                684- 685   ///
      byte   I10_PCLASS7                686- 687   ///
      byte   I10_PCLASS8                688- 689   ///
      byte   I10_PCLASS9                690- 691   ///
      byte   I10_PCLASS10               692- 693   ///
      byte   I10_PCLASS11               694- 695   ///
      byte   I10_PCLASS12               696- 697   ///
      byte   I10_PCLASS13               698- 699   ///
      byte   I10_PCLASS14               700- 701   ///
      byte   I10_PCLASS15               702- 703   ///
      byte   I10_PCLASS16               704- 705   ///
      byte   I10_PCLASS17               706- 707   ///
      byte   I10_PCLASS18               708- 709   ///
      byte   I10_PCLASS19               710- 711   ///
      byte   I10_PCLASS20               712- 713   ///
      byte   I10_PCLASS21               714- 715   ///
      byte   I10_PCLASS22               716- 717   ///
      byte   I10_PCLASS23               718- 719   ///
      byte   I10_PCLASS24               720- 721   ///
      byte   I10_PCLASS25               722- 723   ///
      byte   I10_PCLASS26               724- 725   ///
      byte   I10_PCLASS27               726- 727   ///
      byte   I10_PCLASS28               728- 729   ///
      byte   I10_PCLASS29               730- 731   ///
      byte   I10_PCLASS30               732- 733   ///
      byte   I10_PCLASS31               734- 735   ///
      byte   I10_PCLASS32               736- 737   ///
      byte   I10_PCLASS33               738- 739   ///
      byte   I10_PCLASS34               740- 741   ///
      byte   I10_PCLASS35               742- 743   ///
      str    I10_PRMCCS1                744- 751   ///
      str    I10_PRMCCS2                752- 759   ///
      str    I10_PRMCCS3                760- 767   ///
      str    I10_PRMCCS4                768- 775   ///
      str    I10_PRMCCS5                776- 783   ///
      str    I10_PRMCCS6                784- 791   ///
      str    I10_PRMCCS7                792- 799   ///
      str    I10_PRMCCS8                800- 807   ///
      str    I10_PRMCCS9                808- 815   ///
      str    I10_PRMCCS10               816- 823   ///
      str    I10_PRMCCS11               824- 831   ///
      str    I10_PRMCCS12               832- 839   ///
      str    I10_PRMCCS13               840- 847   ///
      str    I10_PRMCCS14               848- 855   ///
      str    I10_PRMCCS15               856- 863   ///
      str    I10_PRMCCS16               864- 871   ///
      str    I10_PRMCCS17               872- 879   ///
      str    I10_PRMCCS18               880- 887   ///
      str    I10_PRMCCS19               888- 895   ///
      str    I10_PRMCCS20               896- 903   ///
      str    I10_PRMCCS21               904- 911   ///
      str    I10_PRMCCS22               912- 919   ///
      str    I10_PRMCCS23               920- 927   ///
      str    I10_PRMCCS24               928- 935   ///
      str    I10_PRMCCS25               936- 943   ///
      str    I10_PRMCCS26               944- 951   ///
      str    I10_PRMCCS27               952- 959   ///
      str    I10_PRMCCS28               960- 967   ///
      str    I10_PRMCCS29               968- 975   ///
      str    I10_PRMCCS30               976- 983   ///
      str    I10_PRMCCS31               984- 991   ///
      str    I10_PRMCCS32               992- 999   ///
      str    I10_PRMCCS33              1000-1007   ///
      str    I10_PRMCCS34              1008-1015   ///
      str    I10_PRMCCS35              1016-1023   ///
      byte   I10_U_BLOOD               1024-1025   ///
      byte   I10_U_CATH                1026-1027   ///
      byte   I10_U_CTSCAN              1028-1029   ///
      byte   I10_U_EKG                 1030-1031   ///
      byte   I10_U_MHSA                1032-1033   ///
      byte   I10_U_MRT                 1034-1035   ///
      byte   I10_U_PACEMAKER           1036-1037   ///
      byte   I10_U_PHYTHERAPY          1038-1039   ///
      byte   I10_U_RADTHERAPY          1040-1041   ///
      byte   I10_U_STRESS              1042-1043   ///
      double KEY                       1044-1058   ///
      byte   U_CCU                     1059-1060   ///
      byte   U_CHESTXRAY               1061-1062   ///
      byte   U_DIALYSIS                1063-1064   ///
      byte   U_ECHO                    1065-1066   ///
      byte   U_ED                      1067-1068   ///
      byte   U_EEG                     1069-1070   ///
      byte   U_EPO                     1071-1072   ///
      byte   U_ICU                     1073-1074   ///
      byte   U_LITHOTRIPSY             1075-1076   ///
      byte   U_NEWBN2L                 1077-1078   ///
      byte   U_NEWBN3L                 1079-1080   ///
      byte   U_NEWBN4L                 1081-1082   ///
      byte   U_NUCMED                  1083-1084   ///
      byte   U_OBSERVATION             1085-1086   ///
      byte   U_OCCTHERAPY              1087-1088   ///
      byte   U_ORGANACQ                1089-1090   ///
      byte   U_OTHIMPLANTS             1091-1092   ///
      byte   U_RESPTHERAPY             1093-1094   ///
      byte   U_SPEECHTHERAPY           1095-1096   ///
      byte   U_ULTRASOUND              1097-1098   ///
      using  "HI_SID_2015q4_DX_PR_GRPS.ASC"

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

save "HI_SID_2015q4_DX_PR_GRPS.dta", replace
