/*****************************************************************************
* Creation Date: 05/17/2016   
* MD_SID_2014_DX_PR_GRPS.Do
* This program will load the 2014 MD ASCII DX_PR_GRPS File into Stata.
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
      byte   CHRON1                      61-  62   ///
      byte   CHRON2                      63-  64   ///
      byte   CHRON3                      65-  66   ///
      byte   CHRON4                      67-  68   ///
      byte   CHRON5                      69-  70   ///
      byte   CHRON6                      71-  72   ///
      byte   CHRON7                      73-  74   ///
      byte   CHRON8                      75-  76   ///
      byte   CHRON9                      77-  78   ///
      byte   CHRON10                     79-  80   ///
      byte   CHRON11                     81-  82   ///
      byte   CHRON12                     83-  84   ///
      byte   CHRON13                     85-  86   ///
      byte   CHRON14                     87-  88   ///
      byte   CHRON15                     89-  90   ///
      byte   CHRON16                     91-  92   ///
      byte   CHRON17                     93-  94   ///
      byte   CHRON18                     95-  96   ///
      byte   CHRON19                     97-  98   ///
      byte   CHRON20                     99- 100   ///
      byte   CHRON21                    101- 102   ///
      byte   CHRON22                    103- 104   ///
      byte   CHRON23                    105- 106   ///
      byte   CHRON24                    107- 108   ///
      byte   CHRON25                    109- 110   ///
      byte   CHRON26                    111- 112   ///
      byte   CHRON27                    113- 114   ///
      byte   CHRON28                    115- 116   ///
      byte   CHRON29                    117- 118   ///
      byte   CHRON30                    119- 120   ///
      str    DXMCCS1                    121- 131   ///
      str    DXMCCS2                    132- 142   ///
      str    DXMCCS3                    143- 153   ///
      str    DXMCCS4                    154- 164   ///
      str    DXMCCS5                    165- 175   ///
      str    DXMCCS6                    176- 186   ///
      str    DXMCCS7                    187- 197   ///
      str    DXMCCS8                    198- 208   ///
      str    DXMCCS9                    209- 219   ///
      str    DXMCCS10                   220- 230   ///
      str    DXMCCS11                   231- 241   ///
      str    DXMCCS12                   242- 252   ///
      str    DXMCCS13                   253- 263   ///
      str    DXMCCS14                   264- 274   ///
      str    DXMCCS15                   275- 285   ///
      str    DXMCCS16                   286- 296   ///
      str    DXMCCS17                   297- 307   ///
      str    DXMCCS18                   308- 318   ///
      str    DXMCCS19                   319- 329   ///
      str    DXMCCS20                   330- 340   ///
      str    DXMCCS21                   341- 351   ///
      str    DXMCCS22                   352- 362   ///
      str    DXMCCS23                   363- 373   ///
      str    DXMCCS24                   374- 384   ///
      str    DXMCCS25                   385- 395   ///
      str    DXMCCS26                   396- 406   ///
      str    DXMCCS27                   407- 417   ///
      str    DXMCCS28                   418- 428   ///
      str    DXMCCS29                   429- 439   ///
      str    DXMCCS30                   440- 450   ///
      str    E_MCCS1                    451- 461   ///
      str    E_MCCS2                    462- 472   ///
      str    E_MCCS3                    473- 483   ///
      str    E_MCCS4                    484- 494   ///
      str    E_MCCS5                    495- 505   ///
      str    E_MCCS6                    506- 516   ///
      str    E_MCCS7                    517- 527   ///
      str    E_MCCS8                    528- 538   ///
      byte   INJURY                     539- 540   ///
      byte   INJURY_CUT                 541- 542   ///
      byte   INJURY_DROWN               543- 544   ///
      byte   INJURY_FALL                545- 546   ///
      byte   INJURY_FIRE                547- 548   ///
      byte   INJURY_FIREARM             549- 550   ///
      byte   INJURY_MACHINERY           551- 552   ///
      byte   INJURY_MVT                 553- 554   ///
      byte   INJURY_NATURE              555- 556   ///
      byte   INJURY_POISON              557- 558   ///
      byte   INJURY_STRUCK              559- 560   ///
      byte   INJURY_SUFFOCATION         561- 562   ///
      byte   INTENT_ASSAULT             563- 564   ///
      byte   INTENT_SELF_HARM           565- 566   ///
      byte   INTENT_UNINTENTIONAL       567- 568   ///
      double KEY                        569- 583   ///
      byte   MULTINJURY                 584- 585   ///
      byte   PCLASS1                    586- 587   ///
      byte   PCLASS2                    588- 589   ///
      byte   PCLASS3                    590- 591   ///
      byte   PCLASS4                    592- 593   ///
      byte   PCLASS5                    594- 595   ///
      byte   PCLASS6                    596- 597   ///
      byte   PCLASS7                    598- 599   ///
      byte   PCLASS8                    600- 601   ///
      byte   PCLASS9                    602- 603   ///
      byte   PCLASS10                   604- 605   ///
      byte   PCLASS11                   606- 607   ///
      byte   PCLASS12                   608- 609   ///
      byte   PCLASS13                   610- 611   ///
      byte   PCLASS14                   612- 613   ///
      byte   PCLASS15                   614- 615   ///
      byte   PCLASS16                   616- 617   ///
      byte   PCLASS17                   618- 619   ///
      byte   PCLASS18                   620- 621   ///
      byte   PCLASS19                   622- 623   ///
      byte   PCLASS20                   624- 625   ///
      byte   PCLASS21                   626- 627   ///
      byte   PCLASS22                   628- 629   ///
      byte   PCLASS23                   630- 631   ///
      byte   PCLASS24                   632- 633   ///
      byte   PCLASS25                   634- 635   ///
      byte   PCLASS26                   636- 637   ///
      byte   PCLASS27                   638- 639   ///
      byte   PCLASS28                   640- 641   ///
      byte   PCLASS29                   642- 643   ///
      byte   PCLASS30                   644- 645   ///
      str    PRMCCS1                    646- 653   ///
      str    PRMCCS2                    654- 661   ///
      str    PRMCCS3                    662- 669   ///
      str    PRMCCS4                    670- 677   ///
      str    PRMCCS5                    678- 685   ///
      str    PRMCCS6                    686- 693   ///
      str    PRMCCS7                    694- 701   ///
      str    PRMCCS8                    702- 709   ///
      str    PRMCCS9                    710- 717   ///
      str    PRMCCS10                   718- 725   ///
      str    PRMCCS11                   726- 733   ///
      str    PRMCCS12                   734- 741   ///
      str    PRMCCS13                   742- 749   ///
      str    PRMCCS14                   750- 757   ///
      str    PRMCCS15                   758- 765   ///
      str    PRMCCS16                   766- 773   ///
      str    PRMCCS17                   774- 781   ///
      str    PRMCCS18                   782- 789   ///
      str    PRMCCS19                   790- 797   ///
      str    PRMCCS20                   798- 805   ///
      str    PRMCCS21                   806- 813   ///
      str    PRMCCS22                   814- 821   ///
      str    PRMCCS23                   822- 829   ///
      str    PRMCCS24                   830- 837   ///
      str    PRMCCS25                   838- 845   ///
      str    PRMCCS26                   846- 853   ///
      str    PRMCCS27                   854- 861   ///
      str    PRMCCS28                   862- 869   ///
      str    PRMCCS29                   870- 877   ///
      str    PRMCCS30                   878- 885   ///
      byte   U_BLOOD                    886- 887   ///
      byte   U_CATH                     888- 889   ///
      byte   U_CCU                      890- 891   ///
      byte   U_CHESTXRAY                892- 893   ///
      byte   U_CTSCAN                   894- 895   ///
      byte   U_DIALYSIS                 896- 897   ///
      byte   U_ECHO                     898- 899   ///
      byte   U_ED                       900- 901   ///
      byte   U_EEG                      902- 903   ///
      byte   U_EKG                      904- 905   ///
      byte   U_EPO                      906- 907   ///
      byte   U_ICU                      908- 909   ///
      byte   U_LITHOTRIPSY              910- 911   ///
      byte   U_MHSA                     912- 913   ///
      byte   U_MRT                      914- 915   ///
      byte   U_NEWBN2L                  916- 917   ///
      byte   U_NEWBN3L                  918- 919   ///
      byte   U_NEWBN4L                  920- 921   ///
      byte   U_NUCMED                   922- 923   ///
      byte   U_OBSERVATION              924- 925   ///
      byte   U_OCCTHERAPY               926- 927   ///
      byte   U_ORGANACQ                 928- 929   ///
      byte   U_OTHIMPLANTS              930- 931   ///
      byte   U_PACEMAKER                932- 933   ///
      byte   U_PHYTHERAPY               934- 935   ///
      byte   U_RADTHERAPY               936- 937   ///
      byte   U_RESPTHERAPY              938- 939   ///
      byte   U_SPEECHTHERAPY            940- 941   ///
      byte   U_STRESS                   942- 943   ///
      byte   U_ULTRASOUND               944- 945   ///
      using  "MD_SID_2014_DX_PR_GRPS.ASC"

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
label var PCLASS26                 "Procedure class 26"
label var PCLASS27                 "Procedure class 27"
label var PCLASS28                 "Procedure class 28"
label var PCLASS29                 "Procedure class 29"
label var PCLASS30                 "Procedure class 30"
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

save "MD_SID_2014_DX_PR_GRPS.dta", replace
