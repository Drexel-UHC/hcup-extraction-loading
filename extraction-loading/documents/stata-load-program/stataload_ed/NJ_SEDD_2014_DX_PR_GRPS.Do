/*****************************************************************************
* Creation Date: 10/28/2015   
* Stataload_NJ_SEDD_2014_DX_PR_GRPS.Do
* This program will load the 2014 NJ ASCII DX_PR_GRPS File into Stata.
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
      byte   CHRON1                     49- 50   ///
      byte   CHRON2                     51- 52   ///
      byte   CHRON3                     53- 54   ///
      byte   CHRON4                     55- 56   ///
      byte   CHRON5                     57- 58   ///
      byte   CHRON6                     59- 60   ///
      byte   CHRON7                     61- 62   ///
      byte   CHRON8                     63- 64   ///
      byte   CHRON9                     65- 66   ///
      byte   CHRON10                    67- 68   ///
      byte   CHRON11                    69- 70   ///
      byte   CHRON12                    71- 72   ///
      byte   CHRON13                    73- 74   ///
      byte   CHRON14                    75- 76   ///
      byte   CHRON15                    77- 78   ///
      byte   CHRON16                    79- 80   ///
      byte   CHRON17                    81- 82   ///
      byte   CHRON18                    83- 84   ///
      byte   CHRON19                    85- 86   ///
      byte   CHRON20                    87- 88   ///
      byte   CHRON21                    89- 90   ///
      byte   CHRON22                    91- 92   ///
      byte   CHRON23                    93- 94   ///
      byte   CHRON24                    95- 96   ///
      str    DXMCCS1                    97-107   ///
      str    DXMCCS2                   108-118   ///
      str    DXMCCS3                   119-129   ///
      str    DXMCCS4                   130-140   ///
      str    DXMCCS5                   141-151   ///
      str    DXMCCS6                   152-162   ///
      str    DXMCCS7                   163-173   ///
      str    DXMCCS8                   174-184   ///
      str    DXMCCS9                   185-195   ///
      str    DXMCCS10                  196-206   ///
      str    DXMCCS11                  207-217   ///
      str    DXMCCS12                  218-228   ///
      str    DXMCCS13                  229-239   ///
      str    DXMCCS14                  240-250   ///
      str    DXMCCS15                  251-261   ///
      str    DXMCCS16                  262-272   ///
      str    DXMCCS17                  273-283   ///
      str    DXMCCS18                  284-294   ///
      str    DXMCCS19                  295-305   ///
      str    DXMCCS20                  306-316   ///
      str    DXMCCS21                  317-327   ///
      str    DXMCCS22                  328-338   ///
      str    DXMCCS23                  339-349   ///
      str    DXMCCS24                  350-360   ///
      str    E_MCCS1                   361-371   ///
      str    E_MCCS2                   372-382   ///
      str    E_MCCS3                   383-393   ///
      str    E_MCCS4                   394-404   ///
      str    E_MCCS5                   405-415   ///
      str    E_MCCS6                   416-426   ///
      str    E_MCCS7                   427-437   ///
      str    E_MCCS8                   438-448   ///
      str    E_MCCS9                   449-459   ///
      str    E_MCCS10                  460-470   ///
      str    E_MCCS11                  471-481   ///
      str    E_MCCS12                  482-492   ///
      byte   INJURY                    493-494   ///
      byte   INJURY_CUT                495-496   ///
      byte   INJURY_DROWN              497-498   ///
      byte   INJURY_FALL               499-500   ///
      byte   INJURY_FIRE               501-502   ///
      byte   INJURY_FIREARM            503-504   ///
      byte   INJURY_MACHINERY          505-506   ///
      byte   INJURY_MVT                507-508   ///
      byte   INJURY_NATURE             509-510   ///
      byte   INJURY_POISON             511-512   ///
      byte   INJURY_STRUCK             513-514   ///
      byte   INJURY_SUFFOCATION        515-516   ///
      byte   INTENT_ASSAULT            517-518   ///
      byte   INTENT_SELF_HARM          519-520   ///
      byte   INTENT_UNINTENTIONAL      521-522   ///
      double KEY                       523-537   ///
      byte   MULTINJURY                538-539   ///
      byte   PCLASS1                   540-541   ///
      byte   PCLASS2                   542-543   ///
      byte   PCLASS3                   544-545   ///
      byte   PCLASS4                   546-547   ///
      byte   PCLASS5                   548-549   ///
      byte   PCLASS6                   550-551   ///
      byte   PCLASS7                   552-553   ///
      byte   PCLASS8                   554-555   ///
      byte   PCLASS9                   556-557   ///
      byte   PCLASS10                  558-559   ///
      byte   PCLASS11                  560-561   ///
      byte   PCLASS12                  562-563   ///
      byte   PCLASS13                  564-565   ///
      byte   PCLASS14                  566-567   ///
      byte   PCLASS15                  568-569   ///
      byte   PCLASS16                  570-571   ///
      byte   PCLASS17                  572-573   ///
      byte   PCLASS18                  574-575   ///
      byte   PCLASS19                  576-577   ///
      byte   PCLASS20                  578-579   ///
      str    PRMCCS1                   580-587   ///
      str    PRMCCS2                   588-595   ///
      str    PRMCCS3                   596-603   ///
      str    PRMCCS4                   604-611   ///
      str    PRMCCS5                   612-619   ///
      str    PRMCCS6                   620-627   ///
      str    PRMCCS7                   628-635   ///
      str    PRMCCS8                   636-643   ///
      str    PRMCCS9                   644-651   ///
      str    PRMCCS10                  652-659   ///
      str    PRMCCS11                  660-667   ///
      str    PRMCCS12                  668-675   ///
      str    PRMCCS13                  676-683   ///
      str    PRMCCS14                  684-691   ///
      str    PRMCCS15                  692-699   ///
      str    PRMCCS16                  700-707   ///
      str    PRMCCS17                  708-715   ///
      str    PRMCCS18                  716-723   ///
      str    PRMCCS19                  724-731   ///
      str    PRMCCS20                  732-739   ///
      byte   U_BLOOD                   740-741   ///
      byte   U_CATH                    742-743   ///
      byte   U_CCU                     744-745   ///
      byte   U_CHESTXRAY               746-747   ///
      byte   U_CTSCAN                  748-749   ///
      byte   U_DIALYSIS                750-751   ///
      byte   U_ECHO                    752-753   ///
      byte   U_ED                      754-755   ///
      byte   U_EEG                     756-757   ///
      byte   U_EKG                     758-759   ///
      byte   U_EPO                     760-761   ///
      byte   U_ICU                     762-763   ///
      byte   U_LITHOTRIPSY             764-765   ///
      byte   U_MHSA                    766-767   ///
      byte   U_MRT                     768-769   ///
      byte   U_NEWBN2L                 770-771   ///
      byte   U_NEWBN3L                 772-773   ///
      byte   U_NEWBN4L                 774-775   ///
      byte   U_NUCMED                  776-777   ///
      byte   U_OBSERVATION             778-779   ///
      byte   U_OCCTHERAPY              780-781   ///
      byte   U_ORGANACQ                782-783   ///
      byte   U_OTHIMPLANTS             784-785   ///
      byte   U_PACEMAKER               786-787   ///
      byte   U_PHYTHERAPY              788-789   ///
      byte   U_RADTHERAPY              790-791   ///
      byte   U_RESPTHERAPY             792-793   ///
      byte   U_SPEECHTHERAPY           794-795   ///
      byte   U_STRESS                  796-797   ///
      byte   U_ULTRASOUND              798-799   ///
      using  "NJ_SEDD_2014_DX_PR_GRPS.ASC"

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

save "NJ_SEDD_2014_DX_PR_GRPS.dta", replace
