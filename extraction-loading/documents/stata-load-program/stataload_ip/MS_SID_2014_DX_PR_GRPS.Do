/*****************************************************************************
* Creation Date: 05/01/2018   
* MS_SID_2014_DX_PR_GRPS.Do
* This program will load the 2014 MS ASCII DX_PR_GRPS File into Stata.
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
      byte   CHRON1                      79-  80   ///
      byte   CHRON2                      81-  82   ///
      byte   CHRON3                      83-  84   ///
      byte   CHRON4                      85-  86   ///
      byte   CHRON5                      87-  88   ///
      byte   CHRON6                      89-  90   ///
      byte   CHRON7                      91-  92   ///
      byte   CHRON8                      93-  94   ///
      byte   CHRON9                      95-  96   ///
      byte   CHRON10                     97-  98   ///
      byte   CHRON11                     99- 100   ///
      byte   CHRON12                    101- 102   ///
      byte   CHRON13                    103- 104   ///
      byte   CHRON14                    105- 106   ///
      byte   CHRON15                    107- 108   ///
      byte   CHRON16                    109- 110   ///
      byte   CHRON17                    111- 112   ///
      byte   CHRON18                    113- 114   ///
      byte   CHRON19                    115- 116   ///
      byte   CHRON20                    117- 118   ///
      byte   CHRON21                    119- 120   ///
      byte   CHRON22                    121- 122   ///
      byte   CHRON23                    123- 124   ///
      byte   CHRON24                    125- 126   ///
      byte   CHRON25                    127- 128   ///
      byte   CHRON26                    129- 130   ///
      byte   CHRON27                    131- 132   ///
      byte   CHRON28                    133- 134   ///
      byte   CHRON29                    135- 136   ///
      byte   CHRON30                    137- 138   ///
      byte   CHRON31                    139- 140   ///
      byte   CHRON32                    141- 142   ///
      byte   CHRON33                    143- 144   ///
      byte   CHRON34                    145- 146   ///
      byte   CHRON35                    147- 148   ///
      byte   CHRON36                    149- 150   ///
      byte   CHRON37                    151- 152   ///
      byte   CHRON38                    153- 154   ///
      byte   CHRON39                    155- 156   ///
      str    DXMCCS1                    157- 167   ///
      str    DXMCCS2                    168- 178   ///
      str    DXMCCS3                    179- 189   ///
      str    DXMCCS4                    190- 200   ///
      str    DXMCCS5                    201- 211   ///
      str    DXMCCS6                    212- 222   ///
      str    DXMCCS7                    223- 233   ///
      str    DXMCCS8                    234- 244   ///
      str    DXMCCS9                    245- 255   ///
      str    DXMCCS10                   256- 266   ///
      str    DXMCCS11                   267- 277   ///
      str    DXMCCS12                   278- 288   ///
      str    DXMCCS13                   289- 299   ///
      str    DXMCCS14                   300- 310   ///
      str    DXMCCS15                   311- 321   ///
      str    DXMCCS16                   322- 332   ///
      str    DXMCCS17                   333- 343   ///
      str    DXMCCS18                   344- 354   ///
      str    DXMCCS19                   355- 365   ///
      str    DXMCCS20                   366- 376   ///
      str    DXMCCS21                   377- 387   ///
      str    DXMCCS22                   388- 398   ///
      str    DXMCCS23                   399- 409   ///
      str    DXMCCS24                   410- 420   ///
      str    DXMCCS25                   421- 431   ///
      str    DXMCCS26                   432- 442   ///
      str    DXMCCS27                   443- 453   ///
      str    DXMCCS28                   454- 464   ///
      str    DXMCCS29                   465- 475   ///
      str    DXMCCS30                   476- 486   ///
      str    DXMCCS31                   487- 497   ///
      str    DXMCCS32                   498- 508   ///
      str    DXMCCS33                   509- 519   ///
      str    DXMCCS34                   520- 530   ///
      str    DXMCCS35                   531- 541   ///
      str    DXMCCS36                   542- 552   ///
      str    DXMCCS37                   553- 563   ///
      str    DXMCCS38                   564- 574   ///
      str    DXMCCS39                   575- 585   ///
      str    E_MCCS1                    586- 596   ///
      str    E_MCCS2                    597- 607   ///
      str    E_MCCS3                    608- 618   ///
      str    E_MCCS4                    619- 629   ///
      str    E_MCCS5                    630- 640   ///
      str    E_MCCS6                    641- 651   ///
      str    E_MCCS7                    652- 662   ///
      str    E_MCCS8                    663- 673   ///
      byte   INJURY                     674- 675   ///
      byte   INJURY_CUT                 676- 677   ///
      byte   INJURY_DROWN               678- 679   ///
      byte   INJURY_FALL                680- 681   ///
      byte   INJURY_FIRE                682- 683   ///
      byte   INJURY_FIREARM             684- 685   ///
      byte   INJURY_MACHINERY           686- 687   ///
      byte   INJURY_MVT                 688- 689   ///
      byte   INJURY_NATURE              690- 691   ///
      byte   INJURY_POISON              692- 693   ///
      byte   INJURY_STRUCK              694- 695   ///
      byte   INJURY_SUFFOCATION         696- 697   ///
      byte   INTENT_ASSAULT             698- 699   ///
      byte   INTENT_SELF_HARM           700- 701   ///
      byte   INTENT_UNINTENTIONAL       702- 703   ///
      double KEY                        704- 718   ///
      byte   MULTINJURY                 719- 720   ///
      byte   PCLASS1                    721- 722   ///
      byte   PCLASS2                    723- 724   ///
      byte   PCLASS3                    725- 726   ///
      byte   PCLASS4                    727- 728   ///
      byte   PCLASS5                    729- 730   ///
      byte   PCLASS6                    731- 732   ///
      byte   PCLASS7                    733- 734   ///
      byte   PCLASS8                    735- 736   ///
      byte   PCLASS9                    737- 738   ///
      byte   PCLASS10                   739- 740   ///
      byte   PCLASS11                   741- 742   ///
      byte   PCLASS12                   743- 744   ///
      byte   PCLASS13                   745- 746   ///
      byte   PCLASS14                   747- 748   ///
      byte   PCLASS15                   749- 750   ///
      byte   PCLASS16                   751- 752   ///
      byte   PCLASS17                   753- 754   ///
      byte   PCLASS18                   755- 756   ///
      byte   PCLASS19                   757- 758   ///
      byte   PCLASS20                   759- 760   ///
      byte   PCLASS21                   761- 762   ///
      byte   PCLASS22                   763- 764   ///
      byte   PCLASS23                   765- 766   ///
      byte   PCLASS24                   767- 768   ///
      byte   PCLASS25                   769- 770   ///
      str    PRMCCS1                    771- 778   ///
      str    PRMCCS2                    779- 786   ///
      str    PRMCCS3                    787- 794   ///
      str    PRMCCS4                    795- 802   ///
      str    PRMCCS5                    803- 810   ///
      str    PRMCCS6                    811- 818   ///
      str    PRMCCS7                    819- 826   ///
      str    PRMCCS8                    827- 834   ///
      str    PRMCCS9                    835- 842   ///
      str    PRMCCS10                   843- 850   ///
      str    PRMCCS11                   851- 858   ///
      str    PRMCCS12                   859- 866   ///
      str    PRMCCS13                   867- 874   ///
      str    PRMCCS14                   875- 882   ///
      str    PRMCCS15                   883- 890   ///
      str    PRMCCS16                   891- 898   ///
      str    PRMCCS17                   899- 906   ///
      str    PRMCCS18                   907- 914   ///
      str    PRMCCS19                   915- 922   ///
      str    PRMCCS20                   923- 930   ///
      str    PRMCCS21                   931- 938   ///
      str    PRMCCS22                   939- 946   ///
      str    PRMCCS23                   947- 954   ///
      str    PRMCCS24                   955- 962   ///
      str    PRMCCS25                   963- 970   ///
      byte   U_BLOOD                    971- 972   ///
      byte   U_CATH                     973- 974   ///
      byte   U_CCU                      975- 976   ///
      byte   U_CHESTXRAY                977- 978   ///
      byte   U_CTSCAN                   979- 980   ///
      byte   U_DIALYSIS                 981- 982   ///
      byte   U_ECHO                     983- 984   ///
      byte   U_ED                       985- 986   ///
      byte   U_EEG                      987- 988   ///
      byte   U_EKG                      989- 990   ///
      byte   U_EPO                      991- 992   ///
      byte   U_ICU                      993- 994   ///
      byte   U_LITHOTRIPSY              995- 996   ///
      byte   U_MHSA                     997- 998   ///
      byte   U_MRT                      999-1000   ///
      byte   U_NEWBN2L                 1001-1002   ///
      byte   U_NEWBN3L                 1003-1004   ///
      byte   U_NEWBN4L                 1005-1006   ///
      byte   U_NUCMED                  1007-1008   ///
      byte   U_OBSERVATION             1009-1010   ///
      byte   U_OCCTHERAPY              1011-1012   ///
      byte   U_ORGANACQ                1013-1014   ///
      byte   U_OTHIMPLANTS             1015-1016   ///
      byte   U_PACEMAKER               1017-1018   ///
      byte   U_PHYTHERAPY              1019-1020   ///
      byte   U_RADTHERAPY              1021-1022   ///
      byte   U_RESPTHERAPY             1023-1024   ///
      byte   U_SPEECHTHERAPY           1025-1026   ///
      byte   U_STRESS                  1027-1028   ///
      byte   U_ULTRASOUND              1029-1030   ///
      using  "MS_SID_2014_DX_PR_GRPS.ASC"

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
label var E_MCCS1                  "Multi-Level CCS:  E Code 1"
label var E_MCCS2                  "Multi-Level CCS:  E Code 2"
label var E_MCCS3                  "Multi-Level CCS:  E Code 3"
label var E_MCCS4                  "Multi-Level CCS:  E Code 4"
label var E_MCCS5                  "Multi-Level CCS:  E Code 5"
label var E_MCCS6                  "Multi-Level CCS:  E Code 6"
label var E_MCCS7                  "Multi-Level CCS:  E Code 7"
label var E_MCCS8                  "Multi-Level CCS:  E Code 8"
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

save "MS_SID_2014_DX_PR_GRPS.dta", replace
