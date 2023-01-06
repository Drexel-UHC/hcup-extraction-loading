/*****************************************************************************
* Creation Date: 12/01/2017   
* NV_SEDD_2015q4_DX_PR_GRPS.Do
* This program will load the 2015 NV ASCII DX_PR_GRPS File into Stata.
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
      byte   I10_CHRON1                  67-  68   ///
      byte   I10_CHRON2                  69-  70   ///
      byte   I10_CHRON3                  71-  72   ///
      byte   I10_CHRON4                  73-  74   ///
      byte   I10_CHRON5                  75-  76   ///
      byte   I10_CHRON6                  77-  78   ///
      byte   I10_CHRON7                  79-  80   ///
      byte   I10_CHRON8                  81-  82   ///
      byte   I10_CHRON9                  83-  84   ///
      byte   I10_CHRON10                 85-  86   ///
      byte   I10_CHRON11                 87-  88   ///
      byte   I10_CHRON12                 89-  90   ///
      byte   I10_CHRON13                 91-  92   ///
      byte   I10_CHRON14                 93-  94   ///
      byte   I10_CHRON15                 95-  96   ///
      byte   I10_CHRON16                 97-  98   ///
      byte   I10_CHRON17                 99- 100   ///
      byte   I10_CHRON18                101- 102   ///
      byte   I10_CHRON19                103- 104   ///
      byte   I10_CHRON20                105- 106   ///
      byte   I10_CHRON21                107- 108   ///
      byte   I10_CHRON22                109- 110   ///
      byte   I10_CHRON23                111- 112   ///
      byte   I10_CHRON24                113- 114   ///
      byte   I10_CHRON25                115- 116   ///
      byte   I10_CHRON26                117- 118   ///
      byte   I10_CHRON27                119- 120   ///
      byte   I10_CHRON28                121- 122   ///
      byte   I10_CHRON29                123- 124   ///
      byte   I10_CHRON30                125- 126   ///
      byte   I10_CHRON31                127- 128   ///
      byte   I10_CHRON32                129- 130   ///
      byte   I10_CHRON33                131- 132   ///
      str    I10_DXMCCS1                133- 143   ///
      str    I10_DXMCCS2                144- 154   ///
      str    I10_DXMCCS3                155- 165   ///
      str    I10_DXMCCS4                166- 176   ///
      str    I10_DXMCCS5                177- 187   ///
      str    I10_DXMCCS6                188- 198   ///
      str    I10_DXMCCS7                199- 209   ///
      str    I10_DXMCCS8                210- 220   ///
      str    I10_DXMCCS9                221- 231   ///
      str    I10_DXMCCS10               232- 242   ///
      str    I10_DXMCCS11               243- 253   ///
      str    I10_DXMCCS12               254- 264   ///
      str    I10_DXMCCS13               265- 275   ///
      str    I10_DXMCCS14               276- 286   ///
      str    I10_DXMCCS15               287- 297   ///
      str    I10_DXMCCS16               298- 308   ///
      str    I10_DXMCCS17               309- 319   ///
      str    I10_DXMCCS18               320- 330   ///
      str    I10_DXMCCS19               331- 341   ///
      str    I10_DXMCCS20               342- 352   ///
      str    I10_DXMCCS21               353- 363   ///
      str    I10_DXMCCS22               364- 374   ///
      str    I10_DXMCCS23               375- 385   ///
      str    I10_DXMCCS24               386- 396   ///
      str    I10_DXMCCS25               397- 407   ///
      str    I10_DXMCCS26               408- 418   ///
      str    I10_DXMCCS27               419- 429   ///
      str    I10_DXMCCS28               430- 440   ///
      str    I10_DXMCCS29               441- 451   ///
      str    I10_DXMCCS30               452- 462   ///
      str    I10_DXMCCS31               463- 473   ///
      str    I10_DXMCCS32               474- 484   ///
      str    I10_DXMCCS33               485- 495   ///
      str    I10_ECauseMCCS1            496- 506   ///
      str    I10_ECauseMCCS2            507- 517   ///
      str    I10_ECauseMCCS3            518- 528   ///
      str    I10_ECauseMCCS4            529- 539   ///
      str    I10_ECauseMCCS5            540- 550   ///
      str    I10_ECauseMCCS6            551- 561   ///
      str    I10_ECauseMCCS7            562- 572   ///
      str    I10_ECauseMCCS8            573- 583   ///
      str    I10_ECauseMCCS9            584- 594   ///
      byte   I10_INJURY                 595- 596   ///
      byte   I10_MULTINJURY             597- 598   ///
      byte   I10_U_BLOOD                599- 600   ///
      byte   I10_U_CATH                 601- 602   ///
      byte   I10_U_CTSCAN               603- 604   ///
      byte   I10_U_EKG                  605- 606   ///
      byte   I10_U_MHSA                 607- 608   ///
      byte   I10_U_MRT                  609- 610   ///
      byte   I10_U_PACEMAKER            611- 612   ///
      byte   I10_U_PHYTHERAPY           613- 614   ///
      byte   I10_U_RADTHERAPY           615- 616   ///
      byte   I10_U_STRESS               617- 618   ///
      double KEY                        619- 633   ///
      byte   U_CCU                      634- 635   ///
      byte   U_CHESTXRAY                636- 637   ///
      byte   U_DIALYSIS                 638- 639   ///
      byte   U_ECHO                     640- 641   ///
      byte   U_ED                       642- 643   ///
      byte   U_EEG                      644- 645   ///
      byte   U_EPO                      646- 647   ///
      byte   U_ICU                      648- 649   ///
      byte   U_LITHOTRIPSY              650- 651   ///
      byte   U_NEWBN2L                  652- 653   ///
      byte   U_NEWBN3L                  654- 655   ///
      byte   U_NEWBN4L                  656- 657   ///
      byte   U_NUCMED                   658- 659   ///
      byte   U_OBSERVATION              660- 661   ///
      byte   U_OCCTHERAPY               662- 663   ///
      byte   U_ORGANACQ                 664- 665   ///
      byte   U_OTHIMPLANTS              666- 667   ///
      byte   U_RESPTHERAPY              668- 669   ///
      byte   U_SPEECHTHERAPY            670- 671   ///
      byte   U_ULTRASOUND               672- 673   ///
      using  "NV_SEDD_2015q4_DX_PR_GRPS.ASC"

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
recode I10_INJURY                (-9 -8 -6 -5=.)
recode I10_MULTINJURY            (-9 -8 -6 -5=.)
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

save "NV_SEDD_2015q4_DX_PR_GRPS.dta", replace
