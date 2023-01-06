/*****************************************************************************
* Creation Date: 10/03/2017   
* NM_SID_2015q4_DX_PR_GRPS.Do
* This program will load the 2015 NM ASCII DX_PR_GRPS File into Stata.
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
      byte   I10_CHRON1                  37-  38   ///
      byte   I10_CHRON2                  39-  40   ///
      byte   I10_CHRON3                  41-  42   ///
      byte   I10_CHRON4                  43-  44   ///
      byte   I10_CHRON5                  45-  46   ///
      byte   I10_CHRON6                  47-  48   ///
      byte   I10_CHRON7                  49-  50   ///
      byte   I10_CHRON8                  51-  52   ///
      byte   I10_CHRON9                  53-  54   ///
      byte   I10_CHRON10                 55-  56   ///
      byte   I10_CHRON11                 57-  58   ///
      byte   I10_CHRON12                 59-  60   ///
      byte   I10_CHRON13                 61-  62   ///
      byte   I10_CHRON14                 63-  64   ///
      byte   I10_CHRON15                 65-  66   ///
      byte   I10_CHRON16                 67-  68   ///
      byte   I10_CHRON17                 69-  70   ///
      byte   I10_CHRON18                 71-  72   ///
      str    I10_DXMCCS1                 73-  83   ///
      str    I10_DXMCCS2                 84-  94   ///
      str    I10_DXMCCS3                 95- 105   ///
      str    I10_DXMCCS4                106- 116   ///
      str    I10_DXMCCS5                117- 127   ///
      str    I10_DXMCCS6                128- 138   ///
      str    I10_DXMCCS7                139- 149   ///
      str    I10_DXMCCS8                150- 160   ///
      str    I10_DXMCCS9                161- 171   ///
      str    I10_DXMCCS10               172- 182   ///
      str    I10_DXMCCS11               183- 193   ///
      str    I10_DXMCCS12               194- 204   ///
      str    I10_DXMCCS13               205- 215   ///
      str    I10_DXMCCS14               216- 226   ///
      str    I10_DXMCCS15               227- 237   ///
      str    I10_DXMCCS16               238- 248   ///
      str    I10_DXMCCS17               249- 259   ///
      str    I10_DXMCCS18               260- 270   ///
      str    I10_ECauseMCCS1            271- 281   ///
      str    I10_ECauseMCCS2            282- 292   ///
      str    I10_ECauseMCCS3            293- 303   ///
      str    I10_ECauseMCCS4            304- 314   ///
      str    I10_ECauseMCCS5            315- 325   ///
      str    I10_ECauseMCCS6            326- 336   ///
      str    I10_ECauseMCCS7            337- 347   ///
      str    I10_ECauseMCCS8            348- 358   ///
      str    I10_ECauseMCCS9            359- 369   ///
      byte   I10_INJURY                 370- 371   ///
      byte   I10_MULTINJURY             372- 373   ///
      byte   I10_PCLASS1                374- 375   ///
      byte   I10_PCLASS2                376- 377   ///
      byte   I10_PCLASS3                378- 379   ///
      byte   I10_PCLASS4                380- 381   ///
      byte   I10_PCLASS5                382- 383   ///
      byte   I10_PCLASS6                384- 385   ///
      str    I10_PRMCCS1                386- 393   ///
      str    I10_PRMCCS2                394- 401   ///
      str    I10_PRMCCS3                402- 409   ///
      str    I10_PRMCCS4                410- 417   ///
      str    I10_PRMCCS5                418- 425   ///
      str    I10_PRMCCS6                426- 433   ///
      byte   I10_U_BLOOD                434- 435   ///
      byte   I10_U_CATH                 436- 437   ///
      byte   I10_U_CTSCAN               438- 439   ///
      byte   I10_U_EKG                  440- 441   ///
      byte   I10_U_MHSA                 442- 443   ///
      byte   I10_U_MRT                  444- 445   ///
      byte   I10_U_PACEMAKER            446- 447   ///
      byte   I10_U_PHYTHERAPY           448- 449   ///
      byte   I10_U_RADTHERAPY           450- 451   ///
      byte   I10_U_STRESS               452- 453   ///
      double KEY                        454- 468   ///
      byte   U_CCU                      469- 470   ///
      byte   U_CHESTXRAY                471- 472   ///
      byte   U_DIALYSIS                 473- 474   ///
      byte   U_ECHO                     475- 476   ///
      byte   U_ED                       477- 478   ///
      byte   U_EEG                      479- 480   ///
      byte   U_EPO                      481- 482   ///
      byte   U_ICU                      483- 484   ///
      byte   U_LITHOTRIPSY              485- 486   ///
      byte   U_NEWBN2L                  487- 488   ///
      byte   U_NEWBN3L                  489- 490   ///
      byte   U_NEWBN4L                  491- 492   ///
      byte   U_NUCMED                   493- 494   ///
      byte   U_OBSERVATION              495- 496   ///
      byte   U_OCCTHERAPY               497- 498   ///
      byte   U_ORGANACQ                 499- 500   ///
      byte   U_OTHIMPLANTS              501- 502   ///
      byte   U_RESPTHERAPY              503- 504   ///
      byte   U_SPEECHTHERAPY            505- 506   ///
      byte   U_ULTRASOUND               507- 508   ///
      using  "NM_SID_2015q4_DX_PR_GRPS.ASC"

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
label var I10_PRMCCS1              "ICD-10-PCS Multi-Level CCS:  Procedure 1"
label var I10_PRMCCS2              "ICD-10-PCS Multi-Level CCS:  Procedure 2"
label var I10_PRMCCS3              "ICD-10-PCS Multi-Level CCS:  Procedure 3"
label var I10_PRMCCS4              "ICD-10-PCS Multi-Level CCS:  Procedure 4"
label var I10_PRMCCS5              "ICD-10-PCS Multi-Level CCS:  Procedure 5"
label var I10_PRMCCS6              "ICD-10-PCS Multi-Level CCS:  Procedure 6"
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
recode I10_INJURY                (-9 -8 -6 -5=.)
recode I10_MULTINJURY            (-9 -8 -6 -5=.)
recode I10_PCLASS1               (-9 -8 -6 -5=.)
recode I10_PCLASS2               (-9 -8 -6 -5=.)
recode I10_PCLASS3               (-9 -8 -6 -5=.)
recode I10_PCLASS4               (-9 -8 -6 -5=.)
recode I10_PCLASS5               (-9 -8 -6 -5=.)
recode I10_PCLASS6               (-9 -8 -6 -5=.)
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

save "NM_SID_2015q4_DX_PR_GRPS.dta", replace
