/*****************************************************************************
* Creation Date: 01/11/2018   
* MA_SEDD_2015q4_DX_PR_GRPS.Do
* This program will load the 2015 MA ASCII DX_PR_GRPS File into Stata.
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
      byte   I10_CHRON1                  65-  66   ///
      byte   I10_CHRON2                  67-  68   ///
      byte   I10_CHRON3                  69-  70   ///
      byte   I10_CHRON4                  71-  72   ///
      byte   I10_CHRON5                  73-  74   ///
      byte   I10_CHRON6                  75-  76   ///
      byte   I10_CHRON7                  77-  78   ///
      byte   I10_CHRON8                  79-  80   ///
      byte   I10_CHRON9                  81-  82   ///
      byte   I10_CHRON10                 83-  84   ///
      byte   I10_CHRON11                 85-  86   ///
      byte   I10_CHRON12                 87-  88   ///
      byte   I10_CHRON13                 89-  90   ///
      byte   I10_CHRON14                 91-  92   ///
      byte   I10_CHRON15                 93-  94   ///
      byte   I10_CHRON16                 95-  96   ///
      byte   I10_CHRON17                 97-  98   ///
      byte   I10_CHRON18                 99- 100   ///
      byte   I10_CHRON19                101- 102   ///
      byte   I10_CHRON20                103- 104   ///
      byte   I10_CHRON21                105- 106   ///
      byte   I10_CHRON22                107- 108   ///
      byte   I10_CHRON23                109- 110   ///
      byte   I10_CHRON24                111- 112   ///
      byte   I10_CHRON25                113- 114   ///
      byte   I10_CHRON26                115- 116   ///
      byte   I10_CHRON27                117- 118   ///
      byte   I10_CHRON28                119- 120   ///
      byte   I10_CHRON29                121- 122   ///
      byte   I10_CHRON30                123- 124   ///
      byte   I10_CHRON31                125- 126   ///
      byte   I10_CHRON32                127- 128   ///
      str    I10_DXMCCS1                129- 139   ///
      str    I10_DXMCCS2                140- 150   ///
      str    I10_DXMCCS3                151- 161   ///
      str    I10_DXMCCS4                162- 172   ///
      str    I10_DXMCCS5                173- 183   ///
      str    I10_DXMCCS6                184- 194   ///
      str    I10_DXMCCS7                195- 205   ///
      str    I10_DXMCCS8                206- 216   ///
      str    I10_DXMCCS9                217- 227   ///
      str    I10_DXMCCS10               228- 238   ///
      str    I10_DXMCCS11               239- 249   ///
      str    I10_DXMCCS12               250- 260   ///
      str    I10_DXMCCS13               261- 271   ///
      str    I10_DXMCCS14               272- 282   ///
      str    I10_DXMCCS15               283- 293   ///
      str    I10_DXMCCS16               294- 304   ///
      str    I10_DXMCCS17               305- 315   ///
      str    I10_DXMCCS18               316- 326   ///
      str    I10_DXMCCS19               327- 337   ///
      str    I10_DXMCCS20               338- 348   ///
      str    I10_DXMCCS21               349- 359   ///
      str    I10_DXMCCS22               360- 370   ///
      str    I10_DXMCCS23               371- 381   ///
      str    I10_DXMCCS24               382- 392   ///
      str    I10_DXMCCS25               393- 403   ///
      str    I10_DXMCCS26               404- 414   ///
      str    I10_DXMCCS27               415- 425   ///
      str    I10_DXMCCS28               426- 436   ///
      str    I10_DXMCCS29               437- 447   ///
      str    I10_DXMCCS30               448- 458   ///
      str    I10_DXMCCS31               459- 469   ///
      str    I10_DXMCCS32               470- 480   ///
      str    I10_ECauseMCCS1            481- 491   ///
      str    I10_ECauseMCCS2            492- 502   ///
      str    I10_ECauseMCCS3            503- 513   ///
      str    I10_ECauseMCCS4            514- 524   ///
      str    I10_ECauseMCCS5            525- 535   ///
      str    I10_ECauseMCCS6            536- 546   ///
      str    I10_ECauseMCCS7            547- 557   ///
      str    I10_ECauseMCCS8            558- 568   ///
      str    I10_ECauseMCCS9            569- 579   ///
      byte   I10_INJURY                 580- 581   ///
      byte   I10_MULTINJURY             582- 583   ///
      byte   I10_PCLASS1                584- 585   ///
      byte   I10_PCLASS2                586- 587   ///
      byte   I10_PCLASS3                588- 589   ///
      byte   I10_PCLASS4                590- 591   ///
      byte   I10_PCLASS5                592- 593   ///
      byte   I10_PCLASS6                594- 595   ///
      byte   I10_PCLASS7                596- 597   ///
      byte   I10_PCLASS8                598- 599   ///
      byte   I10_PCLASS9                600- 601   ///
      byte   I10_PCLASS10               602- 603   ///
      byte   I10_PCLASS11               604- 605   ///
      byte   I10_PCLASS12               606- 607   ///
      byte   I10_PCLASS13               608- 609   ///
      byte   I10_PCLASS14               610- 611   ///
      byte   I10_PCLASS15               612- 613   ///
      byte   I10_PCLASS16               614- 615   ///
      byte   I10_PCLASS17               616- 617   ///
      byte   I10_PCLASS18               618- 619   ///
      byte   I10_PCLASS19               620- 621   ///
      byte   I10_PCLASS20               622- 623   ///
      byte   I10_PCLASS21               624- 625   ///
      byte   I10_PCLASS22               626- 627   ///
      byte   I10_PCLASS23               628- 629   ///
      str    I10_PRMCCS1                630- 637   ///
      str    I10_PRMCCS2                638- 645   ///
      str    I10_PRMCCS3                646- 653   ///
      str    I10_PRMCCS4                654- 661   ///
      str    I10_PRMCCS5                662- 669   ///
      str    I10_PRMCCS6                670- 677   ///
      str    I10_PRMCCS7                678- 685   ///
      str    I10_PRMCCS8                686- 693   ///
      str    I10_PRMCCS9                694- 701   ///
      str    I10_PRMCCS10               702- 709   ///
      str    I10_PRMCCS11               710- 717   ///
      str    I10_PRMCCS12               718- 725   ///
      str    I10_PRMCCS13               726- 733   ///
      str    I10_PRMCCS14               734- 741   ///
      str    I10_PRMCCS15               742- 749   ///
      str    I10_PRMCCS16               750- 757   ///
      str    I10_PRMCCS17               758- 765   ///
      str    I10_PRMCCS18               766- 773   ///
      str    I10_PRMCCS19               774- 781   ///
      str    I10_PRMCCS20               782- 789   ///
      str    I10_PRMCCS21               790- 797   ///
      str    I10_PRMCCS22               798- 805   ///
      str    I10_PRMCCS23               806- 813   ///
      double KEY                        814- 828   ///
      using  "MA_SEDD_2015q4_DX_PR_GRPS.ASC"

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
label var KEY                      "HCUP record identifier"

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

save "MA_SEDD_2015q4_DX_PR_GRPS.dta", replace
