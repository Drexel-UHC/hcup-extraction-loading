/*****************************************************************************
* Creation Date: 11/18/2015   
* Stataload_KY_SEDD_2014_DX_PR_GRPS.Do
* This program will load the 2014 KY ASCII DX_PR_GRPS File into Stata.
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
      byte   CHRON1                     51- 52   ///
      byte   CHRON2                     53- 54   ///
      byte   CHRON3                     55- 56   ///
      byte   CHRON4                     57- 58   ///
      byte   CHRON5                     59- 60   ///
      byte   CHRON6                     61- 62   ///
      byte   CHRON7                     63- 64   ///
      byte   CHRON8                     65- 66   ///
      byte   CHRON9                     67- 68   ///
      byte   CHRON10                    69- 70   ///
      byte   CHRON11                    71- 72   ///
      byte   CHRON12                    73- 74   ///
      byte   CHRON13                    75- 76   ///
      byte   CHRON14                    77- 78   ///
      byte   CHRON15                    79- 80   ///
      byte   CHRON16                    81- 82   ///
      byte   CHRON17                    83- 84   ///
      byte   CHRON18                    85- 86   ///
      byte   CHRON19                    87- 88   ///
      byte   CHRON20                    89- 90   ///
      byte   CHRON21                    91- 92   ///
      byte   CHRON22                    93- 94   ///
      byte   CHRON23                    95- 96   ///
      byte   CHRON24                    97- 98   ///
      byte   CHRON25                    99-100   ///
      str    DXMCCS1                   101-111   ///
      str    DXMCCS2                   112-122   ///
      str    DXMCCS3                   123-133   ///
      str    DXMCCS4                   134-144   ///
      str    DXMCCS5                   145-155   ///
      str    DXMCCS6                   156-166   ///
      str    DXMCCS7                   167-177   ///
      str    DXMCCS8                   178-188   ///
      str    DXMCCS9                   189-199   ///
      str    DXMCCS10                  200-210   ///
      str    DXMCCS11                  211-221   ///
      str    DXMCCS12                  222-232   ///
      str    DXMCCS13                  233-243   ///
      str    DXMCCS14                  244-254   ///
      str    DXMCCS15                  255-265   ///
      str    DXMCCS16                  266-276   ///
      str    DXMCCS17                  277-287   ///
      str    DXMCCS18                  288-298   ///
      str    DXMCCS19                  299-309   ///
      str    DXMCCS20                  310-320   ///
      str    DXMCCS21                  321-331   ///
      str    DXMCCS22                  332-342   ///
      str    DXMCCS23                  343-353   ///
      str    DXMCCS24                  354-364   ///
      str    DXMCCS25                  365-375   ///
      str    E_MCCS1                   376-386   ///
      str    E_MCCS2                   387-397   ///
      str    E_MCCS3                   398-408   ///
      str    E_MCCS4                   409-419   ///
      str    E_MCCS5                   420-430   ///
      str    E_MCCS6                   431-441   ///
      str    E_MCCS7                   442-452   ///
      str    E_MCCS8                   453-463   ///
      byte   INJURY                    464-465   ///
      byte   INJURY_CUT                466-467   ///
      byte   INJURY_DROWN              468-469   ///
      byte   INJURY_FALL               470-471   ///
      byte   INJURY_FIRE               472-473   ///
      byte   INJURY_FIREARM            474-475   ///
      byte   INJURY_MACHINERY          476-477   ///
      byte   INJURY_MVT                478-479   ///
      byte   INJURY_NATURE             480-481   ///
      byte   INJURY_POISON             482-483   ///
      byte   INJURY_STRUCK             484-485   ///
      byte   INJURY_SUFFOCATION        486-487   ///
      byte   INTENT_ASSAULT            488-489   ///
      byte   INTENT_SELF_HARM          490-491   ///
      byte   INTENT_UNINTENTIONAL      492-493   ///
      double KEY                       494-508   ///
      byte   MULTINJURY                509-510   ///
      byte   U_BLOOD                   511-512   ///
      byte   U_CATH                    513-514   ///
      byte   U_CCU                     515-516   ///
      byte   U_CHESTXRAY               517-518   ///
      byte   U_CTSCAN                  519-520   ///
      byte   U_DIALYSIS                521-522   ///
      byte   U_ECHO                    523-524   ///
      byte   U_ED                      525-526   ///
      byte   U_EEG                     527-528   ///
      byte   U_EKG                     529-530   ///
      byte   U_EPO                     531-532   ///
      byte   U_ICU                     533-534   ///
      byte   U_LITHOTRIPSY             535-536   ///
      byte   U_MHSA                    537-538   ///
      byte   U_MRT                     539-540   ///
      byte   U_NEWBN2L                 541-542   ///
      byte   U_NEWBN3L                 543-544   ///
      byte   U_NEWBN4L                 545-546   ///
      byte   U_NUCMED                  547-548   ///
      byte   U_OBSERVATION             549-550   ///
      byte   U_OCCTHERAPY              551-552   ///
      byte   U_ORGANACQ                553-554   ///
      byte   U_OTHIMPLANTS             555-556   ///
      byte   U_PACEMAKER               557-558   ///
      byte   U_PHYTHERAPY              559-560   ///
      byte   U_RADTHERAPY              561-562   ///
      byte   U_RESPTHERAPY             563-564   ///
      byte   U_SPEECHTHERAPY           565-566   ///
      byte   U_STRESS                  567-568   ///
      byte   U_ULTRASOUND              569-570   ///
      using  "KY_SEDD_2014_DX_PR_GRPS.ASC"

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

save "KY_SEDD_2014_DX_PR_GRPS.dta", replace
