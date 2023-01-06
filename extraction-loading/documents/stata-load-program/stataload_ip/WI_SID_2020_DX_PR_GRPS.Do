/*****************************************************************************
* Creation Date: 07/28/2021   
* WI_SID_2020_DX_PR_GRPS.Do
* This program will load the 2020 WI ASCII DX_PR_GRPS File into Stata.
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
      byte   CMR_AIDS                     1-   2   ///
      byte   CMR_ALCOHOL                  3-   4   ///
      byte   CMR_ANEMDEF                  5-   6   ///
      byte   CMR_ARTH                     7-   8   ///
      byte   CMR_BLDLOSS                  9-  10   ///
      byte   CMR_CANCER_LEUK             11-  12   ///
      byte   CMR_CANCER_LYMPH            13-  14   ///
      byte   CMR_CANCER_METS             15-  16   ///
      byte   CMR_CANCER_NSITU            17-  18   ///
      byte   CMR_CANCER_SOLID            19-  20   ///
      byte   CMR_CBVD                    21-  22   ///
      byte   CMR_CHF                     23-  24   ///
      byte   CMR_COAG                    25-  26   ///
      byte   CMR_DEMENTIA                27-  28   ///
      byte   CMR_DEPRESS                 29-  30   ///
      byte   CMR_DIAB_CX                 31-  32   ///
      byte   CMR_DIAB_UNCX               33-  34   ///
      byte   CMR_DRUG_ABUSE              35-  36   ///
      byte   CMR_HTN_CX                  37-  38   ///
      byte   CMR_HTN_UNCX                39-  40   ///
      byte   CMR_LIVER_MLD               41-  42   ///
      byte   CMR_LIVER_SEV               43-  44   ///
      byte   CMR_LUNG_CHRONIC            45-  46   ///
      byte   CMR_NEURO_MOVT              47-  48   ///
      byte   CMR_NEURO_OTH               49-  50   ///
      byte   CMR_NEURO_SEIZ              51-  52   ///
      byte   CMR_OBESE                   53-  54   ///
      byte   CMR_PARALYSIS               55-  56   ///
      byte   CMR_PERIVASC                57-  58   ///
      byte   CMR_PSYCHOSES               59-  60   ///
      byte   CMR_PULMCIRC                61-  62   ///
      byte   CMR_RENLFL_MOD              63-  64   ///
      byte   CMR_RENLFL_SEV              65-  66   ///
      byte   CMR_THYROID_HYPO            67-  68   ///
      byte   CMR_THYROID_OTH             69-  70   ///
      byte   CMR_ULCER_PEPTIC            71-  72   ///
      byte   CMR_VALVE                   73-  74   ///
      str    CMR_VERSION                 75-  80   ///
      byte   CMR_WGHTLOSS                81-  82   ///
      byte   I10_INJURY                  83-  84   ///
      byte   I10_INJURY_CUT              85-  86   ///
      byte   I10_INJURY_DROWN            87-  88   ///
      byte   I10_INJURY_FALL             89-  90   ///
      byte   I10_INJURY_FIRE             91-  92   ///
      byte   I10_INJURY_FIREARM          93-  94   ///
      byte   I10_INJURY_MACHINERY        95-  96   ///
      byte   I10_INJURY_MVT              97-  98   ///
      byte   I10_INJURY_NATURE           99- 100   ///
      byte   I10_INJURY_OVEREXERTION    101- 102   ///
      byte   I10_INJURY_POISON          103- 104   ///
      byte   I10_INJURY_STRUCK          105- 106   ///
      byte   I10_INJURY_SUFFOCATION     107- 108   ///
      byte   I10_INTENT_ASSAULT         109- 110   ///
      byte   I10_INTENT_SELF_HARM       111- 112   ///
      byte   I10_INTENT_UNINTENTIONAL   113- 114   ///
      byte   I10_MULTINJURY             115- 116   ///
      double KEY                        117- 131   ///
      str    PCLASS_VERSION             132- 137   ///
      byte   PCLASS1                    138- 139   ///
      byte   PCLASS2                    140- 141   ///
      byte   PCLASS3                    142- 143   ///
      byte   PCLASS4                    144- 145   ///
      byte   PCLASS5                    146- 147   ///
      byte   PCLASS6                    148- 149   ///
      byte   PCLASS7                    150- 151   ///
      byte   PCLASS8                    152- 153   ///
      byte   PCLASS9                    154- 155   ///
      byte   PCLASS10                   156- 157   ///
      byte   PCLASS11                   158- 159   ///
      byte   PCLASS12                   160- 161   ///
      byte   PCLASS13                   162- 163   ///
      byte   PCLASS14                   164- 165   ///
      byte   PCLASS15                   166- 167   ///
      byte   PCLASS16                   168- 169   ///
      byte   PCLASS17                   170- 171   ///
      byte   PCLASS18                   172- 173   ///
      byte   PCLASS19                   174- 175   ///
      byte   PCLASS20                   176- 177   ///
      byte   PCLASS21                   178- 179   ///
      byte   PCLASS22                   180- 181   ///
      byte   PCLASS23                   182- 183   ///
      byte   PCLASS24                   184- 185   ///
      byte   PCLASS25                   186- 187   ///
      str    DXCCSR_Default_DX1         188- 193   ///
      int    DXCCSR_BLD001              194- 196   ///
      int    DXCCSR_BLD002              197- 199   ///
      int    DXCCSR_BLD003              200- 202   ///
      int    DXCCSR_BLD004              203- 205   ///
      int    DXCCSR_BLD005              206- 208   ///
      int    DXCCSR_BLD006              209- 211   ///
      int    DXCCSR_BLD007              212- 214   ///
      int    DXCCSR_BLD008              215- 217   ///
      int    DXCCSR_BLD009              218- 220   ///
      int    DXCCSR_BLD010              221- 223   ///
      int    DXCCSR_CIR001              224- 226   ///
      int    DXCCSR_CIR002              227- 229   ///
      int    DXCCSR_CIR003              230- 232   ///
      int    DXCCSR_CIR004              233- 235   ///
      int    DXCCSR_CIR005              236- 238   ///
      int    DXCCSR_CIR006              239- 241   ///
      int    DXCCSR_CIR007              242- 244   ///
      int    DXCCSR_CIR008              245- 247   ///
      int    DXCCSR_CIR009              248- 250   ///
      int    DXCCSR_CIR010              251- 253   ///
      int    DXCCSR_CIR011              254- 256   ///
      int    DXCCSR_CIR012              257- 259   ///
      int    DXCCSR_CIR013              260- 262   ///
      int    DXCCSR_CIR014              263- 265   ///
      int    DXCCSR_CIR015              266- 268   ///
      int    DXCCSR_CIR016              269- 271   ///
      int    DXCCSR_CIR017              272- 274   ///
      int    DXCCSR_CIR018              275- 277   ///
      int    DXCCSR_CIR019              278- 280   ///
      int    DXCCSR_CIR020              281- 283   ///
      int    DXCCSR_CIR021              284- 286   ///
      int    DXCCSR_CIR022              287- 289   ///
      int    DXCCSR_CIR023              290- 292   ///
      int    DXCCSR_CIR024              293- 295   ///
      int    DXCCSR_CIR025              296- 298   ///
      int    DXCCSR_CIR026              299- 301   ///
      int    DXCCSR_CIR027              302- 304   ///
      int    DXCCSR_CIR028              305- 307   ///
      int    DXCCSR_CIR029              308- 310   ///
      int    DXCCSR_CIR030              311- 313   ///
      int    DXCCSR_CIR031              314- 316   ///
      int    DXCCSR_CIR032              317- 319   ///
      int    DXCCSR_CIR033              320- 322   ///
      int    DXCCSR_CIR034              323- 325   ///
      int    DXCCSR_CIR035              326- 328   ///
      int    DXCCSR_CIR036              329- 331   ///
      int    DXCCSR_CIR037              332- 334   ///
      int    DXCCSR_CIR038              335- 337   ///
      int    DXCCSR_CIR039              338- 340   ///
      int    DXCCSR_DIG001              341- 343   ///
      int    DXCCSR_DIG002              344- 346   ///
      int    DXCCSR_DIG003              347- 349   ///
      int    DXCCSR_DIG004              350- 352   ///
      int    DXCCSR_DIG005              353- 355   ///
      int    DXCCSR_DIG006              356- 358   ///
      int    DXCCSR_DIG007              359- 361   ///
      int    DXCCSR_DIG008              362- 364   ///
      int    DXCCSR_DIG009              365- 367   ///
      int    DXCCSR_DIG010              368- 370   ///
      int    DXCCSR_DIG011              371- 373   ///
      int    DXCCSR_DIG012              374- 376   ///
      int    DXCCSR_DIG013              377- 379   ///
      int    DXCCSR_DIG014              380- 382   ///
      int    DXCCSR_DIG015              383- 385   ///
      int    DXCCSR_DIG016              386- 388   ///
      int    DXCCSR_DIG017              389- 391   ///
      int    DXCCSR_DIG018              392- 394   ///
      int    DXCCSR_DIG019              395- 397   ///
      int    DXCCSR_DIG020              398- 400   ///
      int    DXCCSR_DIG021              401- 403   ///
      int    DXCCSR_DIG022              404- 406   ///
      int    DXCCSR_DIG023              407- 409   ///
      int    DXCCSR_DIG024              410- 412   ///
      int    DXCCSR_DIG025              413- 415   ///
      int    DXCCSR_EAR001              416- 418   ///
      int    DXCCSR_EAR002              419- 421   ///
      int    DXCCSR_EAR003              422- 424   ///
      int    DXCCSR_EAR004              425- 427   ///
      int    DXCCSR_EAR005              428- 430   ///
      int    DXCCSR_EAR006              431- 433   ///
      int    DXCCSR_END001              434- 436   ///
      int    DXCCSR_END002              437- 439   ///
      int    DXCCSR_END003              440- 442   ///
      int    DXCCSR_END004              443- 445   ///
      int    DXCCSR_END005              446- 448   ///
      int    DXCCSR_END006              449- 451   ///
      int    DXCCSR_END007              452- 454   ///
      int    DXCCSR_END008              455- 457   ///
      int    DXCCSR_END009              458- 460   ///
      int    DXCCSR_END010              461- 463   ///
      int    DXCCSR_END011              464- 466   ///
      int    DXCCSR_END012              467- 469   ///
      int    DXCCSR_END013              470- 472   ///
      int    DXCCSR_END014              473- 475   ///
      int    DXCCSR_END015              476- 478   ///
      int    DXCCSR_END016              479- 481   ///
      int    DXCCSR_END017              482- 484   ///
      int    DXCCSR_EXT001              485- 487   ///
      int    DXCCSR_EXT002              488- 490   ///
      int    DXCCSR_EXT003              491- 493   ///
      int    DXCCSR_EXT004              494- 496   ///
      int    DXCCSR_EXT005              497- 499   ///
      int    DXCCSR_EXT006              500- 502   ///
      int    DXCCSR_EXT007              503- 505   ///
      int    DXCCSR_EXT008              506- 508   ///
      int    DXCCSR_EXT009              509- 511   ///
      int    DXCCSR_EXT010              512- 514   ///
      int    DXCCSR_EXT011              515- 517   ///
      int    DXCCSR_EXT012              518- 520   ///
      int    DXCCSR_EXT013              521- 523   ///
      int    DXCCSR_EXT014              524- 526   ///
      int    DXCCSR_EXT015              527- 529   ///
      int    DXCCSR_EXT016              530- 532   ///
      int    DXCCSR_EXT017              533- 535   ///
      int    DXCCSR_EXT018              536- 538   ///
      int    DXCCSR_EXT019              539- 541   ///
      int    DXCCSR_EXT020              542- 544   ///
      int    DXCCSR_EXT021              545- 547   ///
      int    DXCCSR_EXT022              548- 550   ///
      int    DXCCSR_EXT023              551- 553   ///
      int    DXCCSR_EXT024              554- 556   ///
      int    DXCCSR_EXT025              557- 559   ///
      int    DXCCSR_EXT026              560- 562   ///
      int    DXCCSR_EXT027              563- 565   ///
      int    DXCCSR_EXT028              566- 568   ///
      int    DXCCSR_EXT029              569- 571   ///
      int    DXCCSR_EXT030              572- 574   ///
      int    DXCCSR_EYE001              575- 577   ///
      int    DXCCSR_EYE002              578- 580   ///
      int    DXCCSR_EYE003              581- 583   ///
      int    DXCCSR_EYE004              584- 586   ///
      int    DXCCSR_EYE005              587- 589   ///
      int    DXCCSR_EYE006              590- 592   ///
      int    DXCCSR_EYE007              593- 595   ///
      int    DXCCSR_EYE008              596- 598   ///
      int    DXCCSR_EYE009              599- 601   ///
      int    DXCCSR_EYE010              602- 604   ///
      int    DXCCSR_EYE011              605- 607   ///
      int    DXCCSR_EYE012              608- 610   ///
      int    DXCCSR_FAC001              611- 613   ///
      int    DXCCSR_FAC002              614- 616   ///
      int    DXCCSR_FAC003              617- 619   ///
      int    DXCCSR_FAC004              620- 622   ///
      int    DXCCSR_FAC005              623- 625   ///
      int    DXCCSR_FAC006              626- 628   ///
      int    DXCCSR_FAC007              629- 631   ///
      int    DXCCSR_FAC008              632- 634   ///
      int    DXCCSR_FAC009              635- 637   ///
      int    DXCCSR_FAC010              638- 640   ///
      int    DXCCSR_FAC011              641- 643   ///
      int    DXCCSR_FAC012              644- 646   ///
      int    DXCCSR_FAC013              647- 649   ///
      int    DXCCSR_FAC014              650- 652   ///
      int    DXCCSR_FAC015              653- 655   ///
      int    DXCCSR_FAC016              656- 658   ///
      int    DXCCSR_FAC017              659- 661   ///
      int    DXCCSR_FAC018              662- 664   ///
      int    DXCCSR_FAC019              665- 667   ///
      int    DXCCSR_FAC020              668- 670   ///
      int    DXCCSR_FAC021              671- 673   ///
      int    DXCCSR_FAC022              674- 676   ///
      int    DXCCSR_FAC023              677- 679   ///
      int    DXCCSR_FAC024              680- 682   ///
      int    DXCCSR_FAC025              683- 685   ///
      int    DXCCSR_GEN001              686- 688   ///
      int    DXCCSR_GEN002              689- 691   ///
      int    DXCCSR_GEN003              692- 694   ///
      int    DXCCSR_GEN004              695- 697   ///
      int    DXCCSR_GEN005              698- 700   ///
      int    DXCCSR_GEN006              701- 703   ///
      int    DXCCSR_GEN007              704- 706   ///
      int    DXCCSR_GEN008              707- 709   ///
      int    DXCCSR_GEN009              710- 712   ///
      int    DXCCSR_GEN010              713- 715   ///
      int    DXCCSR_GEN011              716- 718   ///
      int    DXCCSR_GEN012              719- 721   ///
      int    DXCCSR_GEN013              722- 724   ///
      int    DXCCSR_GEN014              725- 727   ///
      int    DXCCSR_GEN015              728- 730   ///
      int    DXCCSR_GEN016              731- 733   ///
      int    DXCCSR_GEN017              734- 736   ///
      int    DXCCSR_GEN018              737- 739   ///
      int    DXCCSR_GEN019              740- 742   ///
      int    DXCCSR_GEN020              743- 745   ///
      int    DXCCSR_GEN021              746- 748   ///
      int    DXCCSR_GEN022              749- 751   ///
      int    DXCCSR_GEN023              752- 754   ///
      int    DXCCSR_GEN024              755- 757   ///
      int    DXCCSR_GEN025              758- 760   ///
      int    DXCCSR_GEN026              761- 763   ///
      int    DXCCSR_INF001              764- 766   ///
      int    DXCCSR_INF002              767- 769   ///
      int    DXCCSR_INF003              770- 772   ///
      int    DXCCSR_INF004              773- 775   ///
      int    DXCCSR_INF005              776- 778   ///
      int    DXCCSR_INF006              779- 781   ///
      int    DXCCSR_INF007              782- 784   ///
      int    DXCCSR_INF008              785- 787   ///
      int    DXCCSR_INF009              788- 790   ///
      int    DXCCSR_INF010              791- 793   ///
      int    DXCCSR_INF011              794- 796   ///
      int    DXCCSR_INF012              797- 799   ///
      int    DXCCSR_INJ001              800- 802   ///
      int    DXCCSR_INJ002              803- 805   ///
      int    DXCCSR_INJ003              806- 808   ///
      int    DXCCSR_INJ004              809- 811   ///
      int    DXCCSR_INJ005              812- 814   ///
      int    DXCCSR_INJ006              815- 817   ///
      int    DXCCSR_INJ007              818- 820   ///
      int    DXCCSR_INJ008              821- 823   ///
      int    DXCCSR_INJ009              824- 826   ///
      int    DXCCSR_INJ010              827- 829   ///
      int    DXCCSR_INJ011              830- 832   ///
      int    DXCCSR_INJ012              833- 835   ///
      int    DXCCSR_INJ013              836- 838   ///
      int    DXCCSR_INJ014              839- 841   ///
      int    DXCCSR_INJ015              842- 844   ///
      int    DXCCSR_INJ016              845- 847   ///
      int    DXCCSR_INJ017              848- 850   ///
      int    DXCCSR_INJ018              851- 853   ///
      int    DXCCSR_INJ019              854- 856   ///
      int    DXCCSR_INJ020              857- 859   ///
      int    DXCCSR_INJ021              860- 862   ///
      int    DXCCSR_INJ022              863- 865   ///
      int    DXCCSR_INJ023              866- 868   ///
      int    DXCCSR_INJ024              869- 871   ///
      int    DXCCSR_INJ025              872- 874   ///
      int    DXCCSR_INJ026              875- 877   ///
      int    DXCCSR_INJ027              878- 880   ///
      int    DXCCSR_INJ028              881- 883   ///
      int    DXCCSR_INJ029              884- 886   ///
      int    DXCCSR_INJ030              887- 889   ///
      int    DXCCSR_INJ031              890- 892   ///
      int    DXCCSR_INJ032              893- 895   ///
      int    DXCCSR_INJ033              896- 898   ///
      int    DXCCSR_INJ034              899- 901   ///
      int    DXCCSR_INJ035              902- 904   ///
      int    DXCCSR_INJ036              905- 907   ///
      int    DXCCSR_INJ037              908- 910   ///
      int    DXCCSR_INJ038              911- 913   ///
      int    DXCCSR_INJ039              914- 916   ///
      int    DXCCSR_INJ040              917- 919   ///
      int    DXCCSR_INJ041              920- 922   ///
      int    DXCCSR_INJ042              923- 925   ///
      int    DXCCSR_INJ043              926- 928   ///
      int    DXCCSR_INJ044              929- 931   ///
      int    DXCCSR_INJ045              932- 934   ///
      int    DXCCSR_INJ046              935- 937   ///
      int    DXCCSR_INJ047              938- 940   ///
      int    DXCCSR_INJ048              941- 943   ///
      int    DXCCSR_INJ049              944- 946   ///
      int    DXCCSR_INJ050              947- 949   ///
      int    DXCCSR_INJ051              950- 952   ///
      int    DXCCSR_INJ052              953- 955   ///
      int    DXCCSR_INJ053              956- 958   ///
      int    DXCCSR_INJ054              959- 961   ///
      int    DXCCSR_INJ055              962- 964   ///
      int    DXCCSR_INJ056              965- 967   ///
      int    DXCCSR_INJ057              968- 970   ///
      int    DXCCSR_INJ058              971- 973   ///
      int    DXCCSR_INJ059              974- 976   ///
      int    DXCCSR_INJ060              977- 979   ///
      int    DXCCSR_INJ061              980- 982   ///
      int    DXCCSR_INJ062              983- 985   ///
      int    DXCCSR_INJ063              986- 988   ///
      int    DXCCSR_INJ064              989- 991   ///
      int    DXCCSR_INJ065              992- 994   ///
      int    DXCCSR_INJ066              995- 997   ///
      int    DXCCSR_INJ067              998-1000   ///
      int    DXCCSR_INJ068             1001-1003   ///
      int    DXCCSR_INJ069             1004-1006   ///
      int    DXCCSR_INJ070             1007-1009   ///
      int    DXCCSR_INJ071             1010-1012   ///
      int    DXCCSR_INJ072             1013-1015   ///
      int    DXCCSR_INJ073             1016-1018   ///
      int    DXCCSR_INJ074             1019-1021   ///
      int    DXCCSR_INJ075             1022-1024   ///
      int    DXCCSR_INJ076             1025-1027   ///
      int    DXCCSR_MAL001             1028-1030   ///
      int    DXCCSR_MAL002             1031-1033   ///
      int    DXCCSR_MAL003             1034-1036   ///
      int    DXCCSR_MAL004             1037-1039   ///
      int    DXCCSR_MAL005             1040-1042   ///
      int    DXCCSR_MAL006             1043-1045   ///
      int    DXCCSR_MAL007             1046-1048   ///
      int    DXCCSR_MAL008             1049-1051   ///
      int    DXCCSR_MAL009             1052-1054   ///
      int    DXCCSR_MAL010             1055-1057   ///
      int    DXCCSR_MBD001             1058-1060   ///
      int    DXCCSR_MBD002             1061-1063   ///
      int    DXCCSR_MBD003             1064-1066   ///
      int    DXCCSR_MBD004             1067-1069   ///
      int    DXCCSR_MBD005             1070-1072   ///
      int    DXCCSR_MBD006             1073-1075   ///
      int    DXCCSR_MBD007             1076-1078   ///
      int    DXCCSR_MBD008             1079-1081   ///
      int    DXCCSR_MBD009             1082-1084   ///
      int    DXCCSR_MBD010             1085-1087   ///
      int    DXCCSR_MBD011             1088-1090   ///
      int    DXCCSR_MBD012             1091-1093   ///
      int    DXCCSR_MBD013             1094-1096   ///
      int    DXCCSR_MBD014             1097-1099   ///
      int    DXCCSR_MBD017             1100-1102   ///
      int    DXCCSR_MBD018             1103-1105   ///
      int    DXCCSR_MBD019             1106-1108   ///
      int    DXCCSR_MBD020             1109-1111   ///
      int    DXCCSR_MBD021             1112-1114   ///
      int    DXCCSR_MBD022             1115-1117   ///
      int    DXCCSR_MBD023             1118-1120   ///
      int    DXCCSR_MBD024             1121-1123   ///
      int    DXCCSR_MBD025             1124-1126   ///
      int    DXCCSR_MBD026             1127-1129   ///
      int    DXCCSR_MBD027             1130-1132   ///
      int    DXCCSR_MBD028             1133-1135   ///
      int    DXCCSR_MBD029             1136-1138   ///
      int    DXCCSR_MBD030             1139-1141   ///
      int    DXCCSR_MBD031             1142-1144   ///
      int    DXCCSR_MBD032             1145-1147   ///
      int    DXCCSR_MBD033             1148-1150   ///
      int    DXCCSR_MBD034             1151-1153   ///
      int    DXCCSR_MUS001             1154-1156   ///
      int    DXCCSR_MUS002             1157-1159   ///
      int    DXCCSR_MUS003             1160-1162   ///
      int    DXCCSR_MUS004             1163-1165   ///
      int    DXCCSR_MUS005             1166-1168   ///
      int    DXCCSR_MUS006             1169-1171   ///
      int    DXCCSR_MUS007             1172-1174   ///
      int    DXCCSR_MUS008             1175-1177   ///
      int    DXCCSR_MUS009             1178-1180   ///
      int    DXCCSR_MUS010             1181-1183   ///
      int    DXCCSR_MUS011             1184-1186   ///
      int    DXCCSR_MUS012             1187-1189   ///
      int    DXCCSR_MUS013             1190-1192   ///
      int    DXCCSR_MUS014             1193-1195   ///
      int    DXCCSR_MUS015             1196-1198   ///
      int    DXCCSR_MUS016             1199-1201   ///
      int    DXCCSR_MUS017             1202-1204   ///
      int    DXCCSR_MUS018             1205-1207   ///
      int    DXCCSR_MUS019             1208-1210   ///
      int    DXCCSR_MUS020             1211-1213   ///
      int    DXCCSR_MUS021             1214-1216   ///
      int    DXCCSR_MUS022             1217-1219   ///
      int    DXCCSR_MUS023             1220-1222   ///
      int    DXCCSR_MUS024             1223-1225   ///
      int    DXCCSR_MUS025             1226-1228   ///
      int    DXCCSR_MUS026             1229-1231   ///
      int    DXCCSR_MUS027             1232-1234   ///
      int    DXCCSR_MUS028             1235-1237   ///
      int    DXCCSR_MUS029             1238-1240   ///
      int    DXCCSR_MUS030             1241-1243   ///
      int    DXCCSR_MUS031             1244-1246   ///
      int    DXCCSR_MUS032             1247-1249   ///
      int    DXCCSR_MUS033             1250-1252   ///
      int    DXCCSR_MUS034             1253-1255   ///
      int    DXCCSR_MUS035             1256-1258   ///
      int    DXCCSR_MUS036             1259-1261   ///
      int    DXCCSR_MUS037             1262-1264   ///
      int    DXCCSR_MUS038             1265-1267   ///
      int    DXCCSR_NEO001             1268-1270   ///
      int    DXCCSR_NEO002             1271-1273   ///
      int    DXCCSR_NEO003             1274-1276   ///
      int    DXCCSR_NEO004             1277-1279   ///
      int    DXCCSR_NEO005             1280-1282   ///
      int    DXCCSR_NEO006             1283-1285   ///
      int    DXCCSR_NEO007             1286-1288   ///
      int    DXCCSR_NEO008             1289-1291   ///
      int    DXCCSR_NEO009             1292-1294   ///
      int    DXCCSR_NEO010             1295-1297   ///
      int    DXCCSR_NEO011             1298-1300   ///
      int    DXCCSR_NEO012             1301-1303   ///
      int    DXCCSR_NEO013             1304-1306   ///
      int    DXCCSR_NEO014             1307-1309   ///
      int    DXCCSR_NEO015             1310-1312   ///
      int    DXCCSR_NEO016             1313-1315   ///
      int    DXCCSR_NEO017             1316-1318   ///
      int    DXCCSR_NEO018             1319-1321   ///
      int    DXCCSR_NEO019             1322-1324   ///
      int    DXCCSR_NEO020             1325-1327   ///
      int    DXCCSR_NEO021             1328-1330   ///
      int    DXCCSR_NEO022             1331-1333   ///
      int    DXCCSR_NEO023             1334-1336   ///
      int    DXCCSR_NEO024             1337-1339   ///
      int    DXCCSR_NEO025             1340-1342   ///
      int    DXCCSR_NEO026             1343-1345   ///
      int    DXCCSR_NEO027             1346-1348   ///
      int    DXCCSR_NEO028             1349-1351   ///
      int    DXCCSR_NEO029             1352-1354   ///
      int    DXCCSR_NEO030             1355-1357   ///
      int    DXCCSR_NEO031             1358-1360   ///
      int    DXCCSR_NEO032             1361-1363   ///
      int    DXCCSR_NEO033             1364-1366   ///
      int    DXCCSR_NEO034             1367-1369   ///
      int    DXCCSR_NEO035             1370-1372   ///
      int    DXCCSR_NEO036             1373-1375   ///
      int    DXCCSR_NEO037             1376-1378   ///
      int    DXCCSR_NEO038             1379-1381   ///
      int    DXCCSR_NEO039             1382-1384   ///
      int    DXCCSR_NEO040             1385-1387   ///
      int    DXCCSR_NEO041             1388-1390   ///
      int    DXCCSR_NEO042             1391-1393   ///
      int    DXCCSR_NEO043             1394-1396   ///
      int    DXCCSR_NEO044             1397-1399   ///
      int    DXCCSR_NEO045             1400-1402   ///
      int    DXCCSR_NEO046             1403-1405   ///
      int    DXCCSR_NEO047             1406-1408   ///
      int    DXCCSR_NEO048             1409-1411   ///
      int    DXCCSR_NEO049             1412-1414   ///
      int    DXCCSR_NEO050             1415-1417   ///
      int    DXCCSR_NEO051             1418-1420   ///
      int    DXCCSR_NEO052             1421-1423   ///
      int    DXCCSR_NEO053             1424-1426   ///
      int    DXCCSR_NEO054             1427-1429   ///
      int    DXCCSR_NEO055             1430-1432   ///
      int    DXCCSR_NEO056             1433-1435   ///
      int    DXCCSR_NEO057             1436-1438   ///
      int    DXCCSR_NEO058             1439-1441   ///
      int    DXCCSR_NEO059             1442-1444   ///
      int    DXCCSR_NEO060             1445-1447   ///
      int    DXCCSR_NEO061             1448-1450   ///
      int    DXCCSR_NEO062             1451-1453   ///
      int    DXCCSR_NEO063             1454-1456   ///
      int    DXCCSR_NEO064             1457-1459   ///
      int    DXCCSR_NEO065             1460-1462   ///
      int    DXCCSR_NEO066             1463-1465   ///
      int    DXCCSR_NEO067             1466-1468   ///
      int    DXCCSR_NEO068             1469-1471   ///
      int    DXCCSR_NEO069             1472-1474   ///
      int    DXCCSR_NEO070             1475-1477   ///
      int    DXCCSR_NEO071             1478-1480   ///
      int    DXCCSR_NEO072             1481-1483   ///
      int    DXCCSR_NEO073             1484-1486   ///
      int    DXCCSR_NEO074             1487-1489   ///
      int    DXCCSR_NVS001             1490-1492   ///
      int    DXCCSR_NVS002             1493-1495   ///
      int    DXCCSR_NVS003             1496-1498   ///
      int    DXCCSR_NVS004             1499-1501   ///
      int    DXCCSR_NVS005             1502-1504   ///
      int    DXCCSR_NVS006             1505-1507   ///
      int    DXCCSR_NVS007             1508-1510   ///
      int    DXCCSR_NVS008             1511-1513   ///
      int    DXCCSR_NVS009             1514-1516   ///
      int    DXCCSR_NVS010             1517-1519   ///
      int    DXCCSR_NVS011             1520-1522   ///
      int    DXCCSR_NVS012             1523-1525   ///
      int    DXCCSR_NVS013             1526-1528   ///
      int    DXCCSR_NVS014             1529-1531   ///
      int    DXCCSR_NVS015             1532-1534   ///
      int    DXCCSR_NVS016             1535-1537   ///
      int    DXCCSR_NVS017             1538-1540   ///
      int    DXCCSR_NVS018             1541-1543   ///
      int    DXCCSR_NVS019             1544-1546   ///
      int    DXCCSR_NVS020             1547-1549   ///
      int    DXCCSR_NVS021             1550-1552   ///
      int    DXCCSR_NVS022             1553-1555   ///
      int    DXCCSR_PNL001             1556-1558   ///
      int    DXCCSR_PNL002             1559-1561   ///
      int    DXCCSR_PNL003             1562-1564   ///
      int    DXCCSR_PNL004             1565-1567   ///
      int    DXCCSR_PNL005             1568-1570   ///
      int    DXCCSR_PNL006             1571-1573   ///
      int    DXCCSR_PNL007             1574-1576   ///
      int    DXCCSR_PNL008             1577-1579   ///
      int    DXCCSR_PNL009             1580-1582   ///
      int    DXCCSR_PNL010             1583-1585   ///
      int    DXCCSR_PNL011             1586-1588   ///
      int    DXCCSR_PNL012             1589-1591   ///
      int    DXCCSR_PNL013             1592-1594   ///
      int    DXCCSR_PNL014             1595-1597   ///
      int    DXCCSR_PNL015             1598-1600   ///
      int    DXCCSR_PRG001             1601-1603   ///
      int    DXCCSR_PRG002             1604-1606   ///
      int    DXCCSR_PRG003             1607-1609   ///
      int    DXCCSR_PRG004             1610-1612   ///
      int    DXCCSR_PRG005             1613-1615   ///
      int    DXCCSR_PRG006             1616-1618   ///
      int    DXCCSR_PRG007             1619-1621   ///
      int    DXCCSR_PRG008             1622-1624   ///
      int    DXCCSR_PRG009             1625-1627   ///
      int    DXCCSR_PRG010             1628-1630   ///
      int    DXCCSR_PRG011             1631-1633   ///
      int    DXCCSR_PRG012             1634-1636   ///
      int    DXCCSR_PRG013             1637-1639   ///
      int    DXCCSR_PRG014             1640-1642   ///
      int    DXCCSR_PRG015             1643-1645   ///
      int    DXCCSR_PRG016             1646-1648   ///
      int    DXCCSR_PRG017             1649-1651   ///
      int    DXCCSR_PRG018             1652-1654   ///
      int    DXCCSR_PRG019             1655-1657   ///
      int    DXCCSR_PRG020             1658-1660   ///
      int    DXCCSR_PRG021             1661-1663   ///
      int    DXCCSR_PRG022             1664-1666   ///
      int    DXCCSR_PRG023             1667-1669   ///
      int    DXCCSR_PRG024             1670-1672   ///
      int    DXCCSR_PRG025             1673-1675   ///
      int    DXCCSR_PRG026             1676-1678   ///
      int    DXCCSR_PRG027             1679-1681   ///
      int    DXCCSR_PRG028             1682-1684   ///
      int    DXCCSR_PRG029             1685-1687   ///
      int    DXCCSR_PRG030             1688-1690   ///
      int    DXCCSR_RSP001             1691-1693   ///
      int    DXCCSR_RSP002             1694-1696   ///
      int    DXCCSR_RSP003             1697-1699   ///
      int    DXCCSR_RSP004             1700-1702   ///
      int    DXCCSR_RSP005             1703-1705   ///
      int    DXCCSR_RSP006             1706-1708   ///
      int    DXCCSR_RSP007             1709-1711   ///
      int    DXCCSR_RSP008             1712-1714   ///
      int    DXCCSR_RSP009             1715-1717   ///
      int    DXCCSR_RSP010             1718-1720   ///
      int    DXCCSR_RSP011             1721-1723   ///
      int    DXCCSR_RSP012             1724-1726   ///
      int    DXCCSR_RSP013             1727-1729   ///
      int    DXCCSR_RSP014             1730-1732   ///
      int    DXCCSR_RSP015             1733-1735   ///
      int    DXCCSR_RSP016             1736-1738   ///
      int    DXCCSR_RSP017             1739-1741   ///
      int    DXCCSR_SKN001             1742-1744   ///
      int    DXCCSR_SKN002             1745-1747   ///
      int    DXCCSR_SKN003             1748-1750   ///
      int    DXCCSR_SKN004             1751-1753   ///
      int    DXCCSR_SKN005             1754-1756   ///
      int    DXCCSR_SKN006             1757-1759   ///
      int    DXCCSR_SKN007             1760-1762   ///
      int    DXCCSR_SYM001             1763-1765   ///
      int    DXCCSR_SYM002             1766-1768   ///
      int    DXCCSR_SYM003             1769-1771   ///
      int    DXCCSR_SYM004             1772-1774   ///
      int    DXCCSR_SYM005             1775-1777   ///
      int    DXCCSR_SYM006             1778-1780   ///
      int    DXCCSR_SYM007             1781-1783   ///
      int    DXCCSR_SYM008             1784-1786   ///
      int    DXCCSR_SYM009             1787-1789   ///
      int    DXCCSR_SYM010             1790-1792   ///
      int    DXCCSR_SYM011             1793-1795   ///
      int    DXCCSR_SYM012             1796-1798   ///
      int    DXCCSR_SYM013             1799-1801   ///
      int    DXCCSR_SYM014             1802-1804   ///
      int    DXCCSR_SYM015             1805-1807   ///
      int    DXCCSR_SYM016             1808-1810   ///
      int    DXCCSR_SYM017             1811-1813   ///
      str    DXCCSR_VERSION            1814-1819   ///
      int    PRCCSR_ADM001             1820-1822   ///
      int    PRCCSR_ADM002             1823-1825   ///
      int    PRCCSR_ADM003             1826-1828   ///
      int    PRCCSR_ADM004             1829-1831   ///
      int    PRCCSR_ADM005             1832-1834   ///
      int    PRCCSR_ADM006             1835-1837   ///
      int    PRCCSR_ADM007             1838-1840   ///
      int    PRCCSR_ADM008             1841-1843   ///
      int    PRCCSR_ADM009             1844-1846   ///
      int    PRCCSR_ADM010             1847-1849   ///
      int    PRCCSR_ADM011             1850-1852   ///
      int    PRCCSR_ADM012             1853-1855   ///
      int    PRCCSR_ADM013             1856-1858   ///
      int    PRCCSR_ADM014             1859-1861   ///
      int    PRCCSR_ADM015             1862-1864   ///
      int    PRCCSR_ADM016             1865-1867   ///
      int    PRCCSR_ADM017             1868-1870   ///
      int    PRCCSR_ADM018             1871-1873   ///
      int    PRCCSR_ADM019             1874-1876   ///
      int    PRCCSR_ADM020             1877-1879   ///
      int    PRCCSR_ADM021             1880-1882   ///
      int    PRCCSR_CAR001             1883-1885   ///
      int    PRCCSR_CAR002             1886-1888   ///
      int    PRCCSR_CAR003             1889-1891   ///
      int    PRCCSR_CAR004             1892-1894   ///
      int    PRCCSR_CAR005             1895-1897   ///
      int    PRCCSR_CAR006             1898-1900   ///
      int    PRCCSR_CAR007             1901-1903   ///
      int    PRCCSR_CAR008             1904-1906   ///
      int    PRCCSR_CAR009             1907-1909   ///
      int    PRCCSR_CAR010             1910-1912   ///
      int    PRCCSR_CAR011             1913-1915   ///
      int    PRCCSR_CAR012             1916-1918   ///
      int    PRCCSR_CAR013             1919-1921   ///
      int    PRCCSR_CAR014             1922-1924   ///
      int    PRCCSR_CAR015             1925-1927   ///
      int    PRCCSR_CAR016             1928-1930   ///
      int    PRCCSR_CAR017             1931-1933   ///
      int    PRCCSR_CAR018             1934-1936   ///
      int    PRCCSR_CAR019             1937-1939   ///
      int    PRCCSR_CAR020             1940-1942   ///
      int    PRCCSR_CAR021             1943-1945   ///
      int    PRCCSR_CAR022             1946-1948   ///
      int    PRCCSR_CAR023             1949-1951   ///
      int    PRCCSR_CAR024             1952-1954   ///
      int    PRCCSR_CAR025             1955-1957   ///
      int    PRCCSR_CAR026             1958-1960   ///
      int    PRCCSR_CAR027             1961-1963   ///
      int    PRCCSR_CAR028             1964-1966   ///
      int    PRCCSR_CAR029             1967-1969   ///
      int    PRCCSR_CHP001             1970-1972   ///
      int    PRCCSR_CNS001             1973-1975   ///
      int    PRCCSR_CNS002             1976-1978   ///
      int    PRCCSR_CNS003             1979-1981   ///
      int    PRCCSR_CNS004             1982-1984   ///
      int    PRCCSR_CNS005             1985-1987   ///
      int    PRCCSR_CNS006             1988-1990   ///
      int    PRCCSR_CNS007             1991-1993   ///
      int    PRCCSR_CNS008             1994-1996   ///
      int    PRCCSR_CNS009             1997-1999   ///
      int    PRCCSR_CNS010             2000-2002   ///
      int    PRCCSR_CNS011             2003-2005   ///
      int    PRCCSR_CNS012             2006-2008   ///
      int    PRCCSR_CNS013             2009-2011   ///
      int    PRCCSR_CNS014             2012-2014   ///
      int    PRCCSR_ENP001             2015-2017   ///
      int    PRCCSR_ENP002             2018-2020   ///
      int    PRCCSR_ENP003             2021-2023   ///
      int    PRCCSR_ENP004             2024-2026   ///
      int    PRCCSR_ENP005             2027-2029   ///
      int    PRCCSR_ENP006             2030-2032   ///
      int    PRCCSR_ENT001             2033-2035   ///
      int    PRCCSR_ENT002             2036-2038   ///
      int    PRCCSR_ENT003             2039-2041   ///
      int    PRCCSR_ENT004             2042-2044   ///
      int    PRCCSR_ENT005             2045-2047   ///
      int    PRCCSR_ENT006             2048-2050   ///
      int    PRCCSR_ENT007             2051-2053   ///
      int    PRCCSR_ENT008             2054-2056   ///
      int    PRCCSR_ENT009             2057-2059   ///
      int    PRCCSR_ENT010             2060-2062   ///
      int    PRCCSR_ENT011             2063-2065   ///
      int    PRCCSR_ENT012             2066-2068   ///
      int    PRCCSR_ENT013             2069-2071   ///
      int    PRCCSR_ENT014             2072-2074   ///
      int    PRCCSR_ENT015             2075-2077   ///
      int    PRCCSR_ENT016             2078-2080   ///
      int    PRCCSR_ENT017             2081-2083   ///
      int    PRCCSR_ESA001             2084-2086   ///
      int    PRCCSR_ESA002             2087-2089   ///
      int    PRCCSR_ESA003             2090-2092   ///
      int    PRCCSR_ESA004             2093-2095   ///
      int    PRCCSR_ESA005             2096-2098   ///
      int    PRCCSR_ESA006             2099-2101   ///
      int    PRCCSR_ESA007             2102-2104   ///
      int    PRCCSR_ESA008             2105-2107   ///
      int    PRCCSR_ESA009             2108-2110   ///
      int    PRCCSR_ESA010             2111-2113   ///
      int    PRCCSR_ESA011             2114-2116   ///
      int    PRCCSR_EST001             2117-2119   ///
      int    PRCCSR_EST002             2120-2122   ///
      int    PRCCSR_EST003             2123-2125   ///
      int    PRCCSR_EST004             2126-2128   ///
      int    PRCCSR_EST005             2129-2131   ///
      int    PRCCSR_EYP001             2132-2134   ///
      int    PRCCSR_EYP002             2135-2137   ///
      int    PRCCSR_FRS001             2138-2140   ///
      int    PRCCSR_FRS002             2141-2143   ///
      int    PRCCSR_FRS003             2144-2146   ///
      int    PRCCSR_FRS004             2147-2149   ///
      int    PRCCSR_FRS005             2150-2152   ///
      int    PRCCSR_FRS006             2153-2155   ///
      int    PRCCSR_FRS007             2156-2158   ///
      int    PRCCSR_FRS008             2159-2161   ///
      int    PRCCSR_FRS009             2162-2164   ///
      int    PRCCSR_FRS010             2165-2167   ///
      int    PRCCSR_FRS011             2168-2170   ///
      int    PRCCSR_FRS012             2171-2173   ///
      int    PRCCSR_FRS013             2174-2176   ///
      int    PRCCSR_FRS014             2177-2179   ///
      int    PRCCSR_FRS015             2180-2182   ///
      int    PRCCSR_GIS001             2183-2185   ///
      int    PRCCSR_GIS002             2186-2188   ///
      int    PRCCSR_GIS003             2189-2191   ///
      int    PRCCSR_GIS004             2192-2194   ///
      int    PRCCSR_GIS005             2195-2197   ///
      int    PRCCSR_GIS006             2198-2200   ///
      int    PRCCSR_GIS007             2201-2203   ///
      int    PRCCSR_GIS008             2204-2206   ///
      int    PRCCSR_GIS009             2207-2209   ///
      int    PRCCSR_GIS010             2210-2212   ///
      int    PRCCSR_GIS011             2213-2215   ///
      int    PRCCSR_GIS012             2216-2218   ///
      int    PRCCSR_GIS013             2219-2221   ///
      int    PRCCSR_GIS014             2222-2224   ///
      int    PRCCSR_GIS015             2225-2227   ///
      int    PRCCSR_GIS016             2228-2230   ///
      int    PRCCSR_GIS017             2231-2233   ///
      int    PRCCSR_GIS018             2234-2236   ///
      int    PRCCSR_GIS019             2237-2239   ///
      int    PRCCSR_GIS020             2240-2242   ///
      int    PRCCSR_GIS021             2243-2245   ///
      int    PRCCSR_GIS022             2246-2248   ///
      int    PRCCSR_GIS023             2249-2251   ///
      int    PRCCSR_GIS024             2252-2254   ///
      int    PRCCSR_GIS025             2255-2257   ///
      int    PRCCSR_GIS026             2258-2260   ///
      int    PRCCSR_GIS027             2261-2263   ///
      int    PRCCSR_GIS028             2264-2266   ///
      int    PRCCSR_GIS029             2267-2269   ///
      int    PRCCSR_GNR001             2270-2272   ///
      int    PRCCSR_GNR002             2273-2275   ///
      int    PRCCSR_GNR003             2276-2278   ///
      int    PRCCSR_GNR004             2279-2281   ///
      int    PRCCSR_GNR005             2282-2284   ///
      int    PRCCSR_GNR006             2285-2287   ///
      int    PRCCSR_GNR007             2288-2290   ///
      int    PRCCSR_GNR008             2291-2293   ///
      int    PRCCSR_GNR009             2294-2296   ///
      int    PRCCSR_GNR010             2297-2299   ///
      int    PRCCSR_HEP001             2300-2302   ///
      int    PRCCSR_HEP002             2303-2305   ///
      int    PRCCSR_HEP003             2306-2308   ///
      int    PRCCSR_HEP004             2309-2311   ///
      int    PRCCSR_HEP005             2312-2314   ///
      int    PRCCSR_HEP006             2315-2317   ///
      int    PRCCSR_HEP007             2318-2320   ///
      int    PRCCSR_HEP008             2321-2323   ///
      int    PRCCSR_HEP009             2324-2326   ///
      int    PRCCSR_HEP010             2327-2329   ///
      int    PRCCSR_HEP011             2330-2332   ///
      int    PRCCSR_HEP012             2333-2335   ///
      int    PRCCSR_HEP013             2336-2338   ///
      int    PRCCSR_IMG001             2339-2341   ///
      int    PRCCSR_IMG002             2342-2344   ///
      int    PRCCSR_IMG003             2345-2347   ///
      int    PRCCSR_IMG004             2348-2350   ///
      int    PRCCSR_IMG005             2351-2353   ///
      int    PRCCSR_IMG006             2354-2356   ///
      int    PRCCSR_IMG007             2357-2359   ///
      int    PRCCSR_IMG008             2360-2362   ///
      int    PRCCSR_IMG009             2363-2365   ///
      int    PRCCSR_IMG010             2366-2368   ///
      int    PRCCSR_LYM001             2369-2371   ///
      int    PRCCSR_LYM002             2372-2374   ///
      int    PRCCSR_LYM003             2375-2377   ///
      int    PRCCSR_LYM004             2378-2380   ///
      int    PRCCSR_LYM005             2381-2383   ///
      int    PRCCSR_LYM006             2384-2386   ///
      int    PRCCSR_LYM007             2387-2389   ///
      int    PRCCSR_LYM008             2390-2392   ///
      int    PRCCSR_LYM009             2393-2395   ///
      int    PRCCSR_LYM010             2396-2398   ///
      int    PRCCSR_LYM011             2399-2401   ///
      int    PRCCSR_MAM001             2402-2404   ///
      int    PRCCSR_MAM002             2405-2407   ///
      int    PRCCSR_MAM003             2408-2410   ///
      int    PRCCSR_MAM004             2411-2413   ///
      int    PRCCSR_MAM005             2414-2416   ///
      int    PRCCSR_MAM006             2417-2419   ///
      int    PRCCSR_MAM007             2420-2422   ///
      int    PRCCSR_MAM008             2423-2425   ///
      int    PRCCSR_MAM009             2426-2428   ///
      int    PRCCSR_MAM010             2429-2431   ///
      int    PRCCSR_MAM011             2432-2434   ///
      int    PRCCSR_MAM012             2435-2437   ///
      int    PRCCSR_MAM013             2438-2440   ///
      int    PRCCSR_MAM014             2441-2443   ///
      int    PRCCSR_MAM015             2444-2446   ///
      int    PRCCSR_MHT001             2447-2449   ///
      int    PRCCSR_MHT002             2450-2452   ///
      int    PRCCSR_MHT003             2453-2455   ///
      int    PRCCSR_MHT004             2456-2458   ///
      int    PRCCSR_MHT005             2459-2461   ///
      int    PRCCSR_MRS001             2462-2464   ///
      int    PRCCSR_MRS002             2465-2467   ///
      int    PRCCSR_MRS003             2468-2470   ///
      int    PRCCSR_MRS004             2471-2473   ///
      int    PRCCSR_MRS005             2474-2476   ///
      int    PRCCSR_MRS006             2477-2479   ///
      int    PRCCSR_MRS007             2480-2482   ///
      int    PRCCSR_MST001             2483-2485   ///
      int    PRCCSR_MST002             2486-2488   ///
      int    PRCCSR_MST003             2489-2491   ///
      int    PRCCSR_MST004             2492-2494   ///
      int    PRCCSR_MST005             2495-2497   ///
      int    PRCCSR_MST006             2498-2500   ///
      int    PRCCSR_MST007             2501-2503   ///
      int    PRCCSR_MST008             2504-2506   ///
      int    PRCCSR_MST009             2507-2509   ///
      int    PRCCSR_MST010             2510-2512   ///
      int    PRCCSR_MST011             2513-2515   ///
      int    PRCCSR_MST012             2516-2518   ///
      int    PRCCSR_MST013             2519-2521   ///
      int    PRCCSR_MST014             2522-2524   ///
      int    PRCCSR_MST015             2525-2527   ///
      int    PRCCSR_MST016             2528-2530   ///
      int    PRCCSR_MST017             2531-2533   ///
      int    PRCCSR_MST018             2534-2536   ///
      int    PRCCSR_MST019             2537-2539   ///
      int    PRCCSR_MST020             2540-2542   ///
      int    PRCCSR_MST021             2543-2545   ///
      int    PRCCSR_MST022             2546-2548   ///
      int    PRCCSR_MST023             2549-2551   ///
      int    PRCCSR_MST024             2552-2554   ///
      int    PRCCSR_MST025             2555-2557   ///
      int    PRCCSR_MST026             2558-2560   ///
      int    PRCCSR_MST027             2561-2563   ///
      int    PRCCSR_MST028             2564-2566   ///
      int    PRCCSR_MST029             2567-2569   ///
      int    PRCCSR_MST030             2570-2572   ///
      int    PRCCSR_NCM001             2573-2575   ///
      int    PRCCSR_NCM002             2576-2578   ///
      int    PRCCSR_NCM003             2579-2581   ///
      int    PRCCSR_NCM004             2582-2584   ///
      int    PRCCSR_OST001             2585-2587   ///
      int    PRCCSR_OTR001             2588-2590   ///
      int    PRCCSR_OTR002             2591-2593   ///
      int    PRCCSR_OTR003             2594-2596   ///
      int    PRCCSR_OTR004             2597-2599   ///
      int    PRCCSR_OTR005             2600-2602   ///
      int    PRCCSR_PGN001             2603-2605   ///
      int    PRCCSR_PGN002             2606-2608   ///
      int    PRCCSR_PGN003             2609-2611   ///
      int    PRCCSR_PGN004             2612-2614   ///
      int    PRCCSR_PGN005             2615-2617   ///
      int    PRCCSR_PGN006             2618-2620   ///
      int    PRCCSR_PGN007             2621-2623   ///
      int    PRCCSR_PGN008             2624-2626   ///
      int    PRCCSR_PGN009             2627-2629   ///
      int    PRCCSR_PLC001             2630-2632   ///
      int    PRCCSR_PLC002             2633-2635   ///
      int    PRCCSR_PNS001             2636-2638   ///
      int    PRCCSR_PNS002             2639-2641   ///
      int    PRCCSR_PNS003             2642-2644   ///
      int    PRCCSR_PNS004             2645-2647   ///
      int    PRCCSR_PNS005             2648-2650   ///
      int    PRCCSR_PNS006             2651-2653   ///
      int    PRCCSR_RAD001             2654-2656   ///
      int    PRCCSR_RAD002             2657-2659   ///
      int    PRCCSR_RAD003             2660-2662   ///
      int    PRCCSR_RAD004             2663-2665   ///
      int    PRCCSR_RES001             2666-2668   ///
      int    PRCCSR_RES002             2669-2671   ///
      int    PRCCSR_RES003             2672-2674   ///
      int    PRCCSR_RES004             2675-2677   ///
      int    PRCCSR_RES005             2678-2680   ///
      int    PRCCSR_RES006             2681-2683   ///
      int    PRCCSR_RES007             2684-2686   ///
      int    PRCCSR_RES008             2687-2689   ///
      int    PRCCSR_RES009             2690-2692   ///
      int    PRCCSR_RES010             2693-2695   ///
      int    PRCCSR_RES011             2696-2698   ///
      int    PRCCSR_RES012             2699-2701   ///
      int    PRCCSR_RES013             2702-2704   ///
      int    PRCCSR_RES014             2705-2707   ///
      int    PRCCSR_RHB001             2708-2710   ///
      int    PRCCSR_RHB002             2711-2713   ///
      int    PRCCSR_RHB003             2714-2716   ///
      int    PRCCSR_RHB004             2717-2719   ///
      int    PRCCSR_SKB001             2720-2722   ///
      int    PRCCSR_SKB002             2723-2725   ///
      int    PRCCSR_SKB003             2726-2728   ///
      int    PRCCSR_SKB004             2729-2731   ///
      int    PRCCSR_SKB005             2732-2734   ///
      int    PRCCSR_SKB006             2735-2737   ///
      int    PRCCSR_SKB007             2738-2740   ///
      int    PRCCSR_SKB008             2741-2743   ///
      int    PRCCSR_SKB009             2744-2746   ///
      int    PRCCSR_SKB010             2747-2749   ///
      int    PRCCSR_SUD001             2750-2752   ///
      int    PRCCSR_SUD002             2753-2755   ///
      int    PRCCSR_SUD003             2756-2758   ///
      int    PRCCSR_SUD004             2759-2761   ///
      int    PRCCSR_URN001             2762-2764   ///
      int    PRCCSR_URN002             2765-2767   ///
      int    PRCCSR_URN003             2768-2770   ///
      int    PRCCSR_URN004             2771-2773   ///
      int    PRCCSR_URN005             2774-2776   ///
      int    PRCCSR_URN006             2777-2779   ///
      int    PRCCSR_URN007             2780-2782   ///
      int    PRCCSR_URN008             2783-2785   ///
      int    PRCCSR_URN009             2786-2788   ///
      int    PRCCSR_URN010             2789-2791   ///
      int    PRCCSR_URN011             2792-2794   ///
      int    PRCCSR_URN012             2795-2797   ///
      str    PRCCSR_VERSION            2798-2803   ///
      using  "WI_SID_2020_DX_PR_GRPS.ASC"

***  Assign labels to the data elements ***
label var CMR_AIDS                 "Acquired immune deficiency syndrome"
label var CMR_ALCOHOL              "Alcohol abuse"
label var CMR_ANEMDEF              "Deficiency anemias"
label var CMR_ARTH                 "Arthropathies"
label var CMR_BLDLOSS              "Chronic blood loss anemia"
label var CMR_CANCER_LEUK          "Leukemia"
label var CMR_CANCER_LYMPH         "Lymphoma"
label var CMR_CANCER_METS          "Metastatic cancer"
label var CMR_CANCER_NSITU         "Solid tumor without metastasis, in situ"
label var CMR_CANCER_SOLID         "Solid tumor without metastasis, malignant"
label var CMR_CBVD                 "Cerebrovascular disease"
label var CMR_CHF                  "Congestive heart failure"
label var CMR_COAG                 "Coagulopathy"
label var CMR_DEMENTIA             "Dementia"
label var CMR_DEPRESS              "Depression"
label var CMR_DIAB_CX              "Diabetes with chronic complications"
label var CMR_DIAB_UNCX            "Diabetes without chronic complications"
label var CMR_DRUG_ABUSE           "Drug abuse"
label var CMR_HTN_CX               "Hypertension, complicated"
label var CMR_HTN_UNCX             "Hypertension, uncomplicated"
label var CMR_LIVER_MLD            "Liver disease, mild"
label var CMR_LIVER_SEV            "Liver disease, moderate to severe"
label var CMR_LUNG_CHRONIC         "Chronic pulmonary disease"
label var CMR_NEURO_MOVT           "Neurological disorders affecting movement"
label var CMR_NEURO_OTH            "Other neurological disorders"
label var CMR_NEURO_SEIZ           "Seizures and epilepsy"
label var CMR_OBESE                "Obesity"
label var CMR_PARALYSIS            "Paralysis"
label var CMR_PERIVASC             "Peripheral vascular disease"
label var CMR_PSYCHOSES            "Psychoses"
label var CMR_PULMCIRC             "Pulmonary circulation disease"
label var CMR_RENLFL_MOD           "Renal failure, moderate"
label var CMR_RENLFL_SEV           "Renal failure, severe"
label var CMR_THYROID_HYPO         "Hypothyroidism"
label var CMR_THYROID_OTH          "Other thyroid disorders"
label var CMR_ULCER_PEPTIC         "Peptic ulcer disease x bleeding"
label var CMR_VALVE                "Valvular disease"
label var CMR_VERSION              "Version of Elixhauser Comorbidity Software Refined for ICD-10-CM"
label var CMR_WGHTLOSS             "Weight loss"
label var I10_INJURY
    "Injury ICD-10-CM diagnosis reported on record (1: First-listed injury; 2: Other than first-listed injury; 0: No injury)"
label var I10_INJURY_CUT           "Mechanism of injury: cut or pierce"
label var I10_INJURY_DROWN         "Mechanism of injury: drowning or submersion"
label var I10_INJURY_FALL          "Mechanism of injury: fall"
label var I10_INJURY_FIRE          "Mechanism of injury: fire, flame, hot object, or hot substance"
label var I10_INJURY_FIREARM       "Mechanism of injury: firearm"
label var I10_INJURY_MACHINERY     "Mechanism of injury: machinery"
label var I10_INJURY_MVT

"Mechanism of injury: motor vehicle traffic, including the occupant of a car, motorcyclist, pedal cyclist, pedestrian, other, or uns
pecified"
label var I10_INJURY_NATURE
    "Mechanism of injury: natural or environmental, included venomous and nonvenomous bites and stings"
label var I10_INJURY_OVEREXERTION  "Mechanism of injury: overexertion"
label var I10_INJURY_POISON        "Mechanism of injury: poisoning, including drugs and nondrugs"
label var I10_INJURY_STRUCK        "Mechanism of injury: struck by or against"
label var I10_INJURY_SUFFOCATION   "Mechanism of injury: suffocation"
label var I10_INTENT_ASSAULT       "Intent of injury: assault"
label var I10_INTENT_SELF_HARM     "Intent of injury: intentional self-harm"
label var I10_INTENT_UNINTENTIONAL "Intent of injury: unintentional"
label var I10_MULTINJURY           "Multiple ICD-10-CM injuries reported on record"
label var KEY                      "HCUP record identifier"
label var PCLASS_VERSION           "Version of ICD-10-PCS Procedure class"
label var PCLASS1                  "ICD-10-PCS Procedure class 1"
label var PCLASS2                  "ICD-10-PCS Procedure class 2"
label var PCLASS3                  "ICD-10-PCS Procedure class 3"
label var PCLASS4                  "ICD-10-PCS Procedure class 4"
label var PCLASS5                  "ICD-10-PCS Procedure class 5"
label var PCLASS6                  "ICD-10-PCS Procedure class 6"
label var PCLASS7                  "ICD-10-PCS Procedure class 7"
label var PCLASS8                  "ICD-10-PCS Procedure class 8"
label var PCLASS9                  "ICD-10-PCS Procedure class 9"
label var PCLASS10                 "ICD-10-PCS Procedure class 10"
label var PCLASS11                 "ICD-10-PCS Procedure class 11"
label var PCLASS12                 "ICD-10-PCS Procedure class 12"
label var PCLASS13                 "ICD-10-PCS Procedure class 13"
label var PCLASS14                 "ICD-10-PCS Procedure class 14"
label var PCLASS15                 "ICD-10-PCS Procedure class 15"
label var PCLASS16                 "ICD-10-PCS Procedure class 16"
label var PCLASS17                 "ICD-10-PCS Procedure class 17"
label var PCLASS18                 "ICD-10-PCS Procedure class 18"
label var PCLASS19                 "ICD-10-PCS Procedure class 19"
label var PCLASS20                 "ICD-10-PCS Procedure class 20"
label var PCLASS21                 "ICD-10-PCS Procedure class 21"
label var PCLASS22                 "ICD-10-PCS Procedure class 22"
label var PCLASS23                 "ICD-10-PCS Procedure class 23"
label var PCLASS24                 "ICD-10-PCS Procedure class 24"
label var PCLASS25                 "ICD-10-PCS Procedure class 25"
label var DXCCSR_Default_DX1       "Default CCSR for principal/first-listed ICD-10-CM diagnosis"
label var DXCCSR_BLD001            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR BLD001"
label var DXCCSR_BLD002            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR BLD002"
label var DXCCSR_BLD003            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR BLD003"
label var DXCCSR_BLD004            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR BLD004"
label var DXCCSR_BLD005            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR BLD005"
label var DXCCSR_BLD006            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR BLD006"
label var DXCCSR_BLD007            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR BLD007"
label var DXCCSR_BLD008            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR BLD008"
label var DXCCSR_BLD009            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR BLD009"
label var DXCCSR_BLD010            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR BLD010"
label var DXCCSR_CIR001            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR001"
label var DXCCSR_CIR002            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR002"
label var DXCCSR_CIR003            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR003"
label var DXCCSR_CIR004            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR004"
label var DXCCSR_CIR005            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR005"
label var DXCCSR_CIR006            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR006"
label var DXCCSR_CIR007            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR007"
label var DXCCSR_CIR008            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR008"
label var DXCCSR_CIR009            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR009"
label var DXCCSR_CIR010            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR010"
label var DXCCSR_CIR011            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR011"
label var DXCCSR_CIR012            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR012"
label var DXCCSR_CIR013            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR013"
label var DXCCSR_CIR014            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR014"
label var DXCCSR_CIR015            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR015"
label var DXCCSR_CIR016            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR016"
label var DXCCSR_CIR017            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR017"
label var DXCCSR_CIR018            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR018"
label var DXCCSR_CIR019            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR019"
label var DXCCSR_CIR020            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR020"
label var DXCCSR_CIR021            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR021"
label var DXCCSR_CIR022            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR022"
label var DXCCSR_CIR023            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR023"
label var DXCCSR_CIR024            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR024"
label var DXCCSR_CIR025            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR025"
label var DXCCSR_CIR026            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR026"
label var DXCCSR_CIR027            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR027"
label var DXCCSR_CIR028            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR028"
label var DXCCSR_CIR029            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR029"
label var DXCCSR_CIR030            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR030"
label var DXCCSR_CIR031            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR031"
label var DXCCSR_CIR032            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR032"
label var DXCCSR_CIR033            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR033"
label var DXCCSR_CIR034            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR034"
label var DXCCSR_CIR035            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR035"
label var DXCCSR_CIR036            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR036"
label var DXCCSR_CIR037            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR037"
label var DXCCSR_CIR038            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR038"
label var DXCCSR_CIR039            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR CIR039"
label var DXCCSR_DIG001            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG001"
label var DXCCSR_DIG002            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG002"
label var DXCCSR_DIG003            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG003"
label var DXCCSR_DIG004            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG004"
label var DXCCSR_DIG005            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG005"
label var DXCCSR_DIG006            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG006"
label var DXCCSR_DIG007            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG007"
label var DXCCSR_DIG008            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG008"
label var DXCCSR_DIG009            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG009"
label var DXCCSR_DIG010            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG010"
label var DXCCSR_DIG011            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG011"
label var DXCCSR_DIG012            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG012"
label var DXCCSR_DIG013            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG013"
label var DXCCSR_DIG014            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG014"
label var DXCCSR_DIG015            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG015"
label var DXCCSR_DIG016            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG016"
label var DXCCSR_DIG017            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG017"
label var DXCCSR_DIG018            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG018"
label var DXCCSR_DIG019            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG019"
label var DXCCSR_DIG020            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG020"
label var DXCCSR_DIG021            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG021"
label var DXCCSR_DIG022            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG022"
label var DXCCSR_DIG023            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG023"
label var DXCCSR_DIG024            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG024"
label var DXCCSR_DIG025            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR DIG025"
label var DXCCSR_EAR001            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EAR001"
label var DXCCSR_EAR002            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EAR002"
label var DXCCSR_EAR003            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EAR003"
label var DXCCSR_EAR004            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EAR004"
label var DXCCSR_EAR005            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EAR005"
label var DXCCSR_EAR006            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EAR006"
label var DXCCSR_END001            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR END001"
label var DXCCSR_END002            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR END002"
label var DXCCSR_END003            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR END003"
label var DXCCSR_END004            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR END004"
label var DXCCSR_END005            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR END005"
label var DXCCSR_END006            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR END006"
label var DXCCSR_END007            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR END007"
label var DXCCSR_END008            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR END008"
label var DXCCSR_END009            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR END009"
label var DXCCSR_END010            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR END010"
label var DXCCSR_END011            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR END011"
label var DXCCSR_END012            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR END012"
label var DXCCSR_END013            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR END013"
label var DXCCSR_END014            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR END014"
label var DXCCSR_END015            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR END015"
label var DXCCSR_END016            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR END016"
label var DXCCSR_END017            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR END017"
label var DXCCSR_EXT001            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT001"
label var DXCCSR_EXT002            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT002"
label var DXCCSR_EXT003            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT003"
label var DXCCSR_EXT004            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT004"
label var DXCCSR_EXT005            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT005"
label var DXCCSR_EXT006            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT006"
label var DXCCSR_EXT007            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT007"
label var DXCCSR_EXT008            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT008"
label var DXCCSR_EXT009            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT009"
label var DXCCSR_EXT010            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT010"
label var DXCCSR_EXT011            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT011"
label var DXCCSR_EXT012            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT012"
label var DXCCSR_EXT013            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT013"
label var DXCCSR_EXT014            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT014"
label var DXCCSR_EXT015            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT015"
label var DXCCSR_EXT016            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT016"
label var DXCCSR_EXT017            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT017"
label var DXCCSR_EXT018            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT018"
label var DXCCSR_EXT019            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT019"
label var DXCCSR_EXT020            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT020"
label var DXCCSR_EXT021            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT021"
label var DXCCSR_EXT022            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT022"
label var DXCCSR_EXT023            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT023"
label var DXCCSR_EXT024            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT024"
label var DXCCSR_EXT025            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT025"
label var DXCCSR_EXT026            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT026"
label var DXCCSR_EXT027            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT027"
label var DXCCSR_EXT028            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT028"
label var DXCCSR_EXT029            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT029"
label var DXCCSR_EXT030            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EXT030"
label var DXCCSR_EYE001            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EYE001"
label var DXCCSR_EYE002            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EYE002"
label var DXCCSR_EYE003            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EYE003"
label var DXCCSR_EYE004            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EYE004"
label var DXCCSR_EYE005            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EYE005"
label var DXCCSR_EYE006            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EYE006"
label var DXCCSR_EYE007            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EYE007"
label var DXCCSR_EYE008            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EYE008"
label var DXCCSR_EYE009            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EYE009"
label var DXCCSR_EYE010            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EYE010"
label var DXCCSR_EYE011            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EYE011"
label var DXCCSR_EYE012            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR EYE012"
label var DXCCSR_FAC001            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC001"
label var DXCCSR_FAC002            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC002"
label var DXCCSR_FAC003            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC003"
label var DXCCSR_FAC004            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC004"
label var DXCCSR_FAC005            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC005"
label var DXCCSR_FAC006            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC006"
label var DXCCSR_FAC007            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC007"
label var DXCCSR_FAC008            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC008"
label var DXCCSR_FAC009            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC009"
label var DXCCSR_FAC010            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC010"
label var DXCCSR_FAC011            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC011"
label var DXCCSR_FAC012            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC012"
label var DXCCSR_FAC013            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC013"
label var DXCCSR_FAC014            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC014"
label var DXCCSR_FAC015            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC015"
label var DXCCSR_FAC016            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC016"
label var DXCCSR_FAC017            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC017"
label var DXCCSR_FAC018            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC018"
label var DXCCSR_FAC019            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC019"
label var DXCCSR_FAC020            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC020"
label var DXCCSR_FAC021            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC021"
label var DXCCSR_FAC022            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC022"
label var DXCCSR_FAC023            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC023"
label var DXCCSR_FAC024            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC024"
label var DXCCSR_FAC025            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR FAC025"
label var DXCCSR_GEN001            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN001"
label var DXCCSR_GEN002            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN002"
label var DXCCSR_GEN003            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN003"
label var DXCCSR_GEN004            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN004"
label var DXCCSR_GEN005            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN005"
label var DXCCSR_GEN006            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN006"
label var DXCCSR_GEN007            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN007"
label var DXCCSR_GEN008            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN008"
label var DXCCSR_GEN009            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN009"
label var DXCCSR_GEN010            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN010"
label var DXCCSR_GEN011            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN011"
label var DXCCSR_GEN012            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN012"
label var DXCCSR_GEN013            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN013"
label var DXCCSR_GEN014            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN014"
label var DXCCSR_GEN015            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN015"
label var DXCCSR_GEN016            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN016"
label var DXCCSR_GEN017            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN017"
label var DXCCSR_GEN018            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN018"
label var DXCCSR_GEN019            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN019"
label var DXCCSR_GEN020            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN020"
label var DXCCSR_GEN021            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN021"
label var DXCCSR_GEN022            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN022"
label var DXCCSR_GEN023            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN023"
label var DXCCSR_GEN024            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN024"
label var DXCCSR_GEN025            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN025"
label var DXCCSR_GEN026            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR GEN026"
label var DXCCSR_INF001            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INF001"
label var DXCCSR_INF002            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INF002"
label var DXCCSR_INF003            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INF003"
label var DXCCSR_INF004            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INF004"
label var DXCCSR_INF005            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INF005"
label var DXCCSR_INF006            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INF006"
label var DXCCSR_INF007            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INF007"
label var DXCCSR_INF008            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INF008"
label var DXCCSR_INF009            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INF009"
label var DXCCSR_INF010            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INF010"
label var DXCCSR_INF011            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INF011"
label var DXCCSR_INF012            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INF012"
label var DXCCSR_INJ001            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ001"
label var DXCCSR_INJ002            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ002"
label var DXCCSR_INJ003            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ003"
label var DXCCSR_INJ004            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ004"
label var DXCCSR_INJ005            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ005"
label var DXCCSR_INJ006            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ006"
label var DXCCSR_INJ007            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ007"
label var DXCCSR_INJ008            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ008"
label var DXCCSR_INJ009            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ009"
label var DXCCSR_INJ010            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ010"
label var DXCCSR_INJ011            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ011"
label var DXCCSR_INJ012            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ012"
label var DXCCSR_INJ013            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ013"
label var DXCCSR_INJ014            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ014"
label var DXCCSR_INJ015            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ015"
label var DXCCSR_INJ016            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ016"
label var DXCCSR_INJ017            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ017"
label var DXCCSR_INJ018            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ018"
label var DXCCSR_INJ019            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ019"
label var DXCCSR_INJ020            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ020"
label var DXCCSR_INJ021            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ021"
label var DXCCSR_INJ022            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ022"
label var DXCCSR_INJ023            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ023"
label var DXCCSR_INJ024            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ024"
label var DXCCSR_INJ025            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ025"
label var DXCCSR_INJ026            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ026"
label var DXCCSR_INJ027            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ027"
label var DXCCSR_INJ028            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ028"
label var DXCCSR_INJ029            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ029"
label var DXCCSR_INJ030            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ030"
label var DXCCSR_INJ031            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ031"
label var DXCCSR_INJ032            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ032"
label var DXCCSR_INJ033            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ033"
label var DXCCSR_INJ034            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ034"
label var DXCCSR_INJ035            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ035"
label var DXCCSR_INJ036            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ036"
label var DXCCSR_INJ037            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ037"
label var DXCCSR_INJ038            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ038"
label var DXCCSR_INJ039            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ039"
label var DXCCSR_INJ040            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ040"
label var DXCCSR_INJ041            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ041"
label var DXCCSR_INJ042            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ042"
label var DXCCSR_INJ043            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ043"
label var DXCCSR_INJ044            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ044"
label var DXCCSR_INJ045            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ045"
label var DXCCSR_INJ046            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ046"
label var DXCCSR_INJ047            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ047"
label var DXCCSR_INJ048            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ048"
label var DXCCSR_INJ049            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ049"
label var DXCCSR_INJ050            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ050"
label var DXCCSR_INJ051            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ051"
label var DXCCSR_INJ052            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ052"
label var DXCCSR_INJ053            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ053"
label var DXCCSR_INJ054            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ054"
label var DXCCSR_INJ055            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ055"
label var DXCCSR_INJ056            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ056"
label var DXCCSR_INJ057            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ057"
label var DXCCSR_INJ058            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ058"
label var DXCCSR_INJ059            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ059"
label var DXCCSR_INJ060            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ060"
label var DXCCSR_INJ061            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ061"
label var DXCCSR_INJ062            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ062"
label var DXCCSR_INJ063            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ063"
label var DXCCSR_INJ064            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ064"
label var DXCCSR_INJ065            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ065"
label var DXCCSR_INJ066            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ066"
label var DXCCSR_INJ067            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ067"
label var DXCCSR_INJ068            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ068"
label var DXCCSR_INJ069            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ069"
label var DXCCSR_INJ070            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ070"
label var DXCCSR_INJ071            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ071"
label var DXCCSR_INJ072            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ072"
label var DXCCSR_INJ073            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ073"
label var DXCCSR_INJ074            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ074"
label var DXCCSR_INJ075            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ075"
label var DXCCSR_INJ076            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR INJ076"
label var DXCCSR_MAL001            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MAL001"
label var DXCCSR_MAL002            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MAL002"
label var DXCCSR_MAL003            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MAL003"
label var DXCCSR_MAL004            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MAL004"
label var DXCCSR_MAL005            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MAL005"
label var DXCCSR_MAL006            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MAL006"
label var DXCCSR_MAL007            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MAL007"
label var DXCCSR_MAL008            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MAL008"
label var DXCCSR_MAL009            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MAL009"
label var DXCCSR_MAL010            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MAL010"
label var DXCCSR_MBD001            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD001"
label var DXCCSR_MBD002            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD002"
label var DXCCSR_MBD003            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD003"
label var DXCCSR_MBD004            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD004"
label var DXCCSR_MBD005            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD005"
label var DXCCSR_MBD006            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD006"
label var DXCCSR_MBD007            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD007"
label var DXCCSR_MBD008            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD008"
label var DXCCSR_MBD009            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD009"
label var DXCCSR_MBD010            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD010"
label var DXCCSR_MBD011            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD011"
label var DXCCSR_MBD012            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD012"
label var DXCCSR_MBD013            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD013"
label var DXCCSR_MBD014            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD014"
label var DXCCSR_MBD017            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD017"
label var DXCCSR_MBD018            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD018"
label var DXCCSR_MBD019            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD019"
label var DXCCSR_MBD020            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD020"
label var DXCCSR_MBD021            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD021"
label var DXCCSR_MBD022            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD022"
label var DXCCSR_MBD023            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD023"
label var DXCCSR_MBD024            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD024"
label var DXCCSR_MBD025            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD025"
label var DXCCSR_MBD026            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD026"
label var DXCCSR_MBD027            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD027"
label var DXCCSR_MBD028            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD028"
label var DXCCSR_MBD029            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD029"
label var DXCCSR_MBD030            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD030"
label var DXCCSR_MBD031            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD031"
label var DXCCSR_MBD032            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD032"
label var DXCCSR_MBD033            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD033"
label var DXCCSR_MBD034            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MBD034"
label var DXCCSR_MUS001            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS001"
label var DXCCSR_MUS002            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS002"
label var DXCCSR_MUS003            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS003"
label var DXCCSR_MUS004            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS004"
label var DXCCSR_MUS005            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS005"
label var DXCCSR_MUS006            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS006"
label var DXCCSR_MUS007            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS007"
label var DXCCSR_MUS008            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS008"
label var DXCCSR_MUS009            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS009"
label var DXCCSR_MUS010            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS010"
label var DXCCSR_MUS011            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS011"
label var DXCCSR_MUS012            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS012"
label var DXCCSR_MUS013            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS013"
label var DXCCSR_MUS014            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS014"
label var DXCCSR_MUS015            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS015"
label var DXCCSR_MUS016            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS016"
label var DXCCSR_MUS017            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS017"
label var DXCCSR_MUS018            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS018"
label var DXCCSR_MUS019            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS019"
label var DXCCSR_MUS020            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS020"
label var DXCCSR_MUS021            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS021"
label var DXCCSR_MUS022            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS022"
label var DXCCSR_MUS023            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS023"
label var DXCCSR_MUS024            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS024"
label var DXCCSR_MUS025            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS025"
label var DXCCSR_MUS026            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS026"
label var DXCCSR_MUS027            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS027"
label var DXCCSR_MUS028            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS028"
label var DXCCSR_MUS029            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS029"
label var DXCCSR_MUS030            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS030"
label var DXCCSR_MUS031            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS031"
label var DXCCSR_MUS032            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS032"
label var DXCCSR_MUS033            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS033"
label var DXCCSR_MUS034            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS034"
label var DXCCSR_MUS035            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS035"
label var DXCCSR_MUS036            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS036"
label var DXCCSR_MUS037            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS037"
label var DXCCSR_MUS038            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR MUS038"
label var DXCCSR_NEO001            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO001"
label var DXCCSR_NEO002            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO002"
label var DXCCSR_NEO003            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO003"
label var DXCCSR_NEO004            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO004"
label var DXCCSR_NEO005            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO005"
label var DXCCSR_NEO006            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO006"
label var DXCCSR_NEO007            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO007"
label var DXCCSR_NEO008            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO008"
label var DXCCSR_NEO009            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO009"
label var DXCCSR_NEO010            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO010"
label var DXCCSR_NEO011            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO011"
label var DXCCSR_NEO012            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO012"
label var DXCCSR_NEO013            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO013"
label var DXCCSR_NEO014            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO014"
label var DXCCSR_NEO015            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO015"
label var DXCCSR_NEO016            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO016"
label var DXCCSR_NEO017            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO017"
label var DXCCSR_NEO018            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO018"
label var DXCCSR_NEO019            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO019"
label var DXCCSR_NEO020            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO020"
label var DXCCSR_NEO021            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO021"
label var DXCCSR_NEO022            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO022"
label var DXCCSR_NEO023            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO023"
label var DXCCSR_NEO024            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO024"
label var DXCCSR_NEO025            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO025"
label var DXCCSR_NEO026            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO026"
label var DXCCSR_NEO027            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO027"
label var DXCCSR_NEO028            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO028"
label var DXCCSR_NEO029            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO029"
label var DXCCSR_NEO030            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO030"
label var DXCCSR_NEO031            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO031"
label var DXCCSR_NEO032            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO032"
label var DXCCSR_NEO033            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO033"
label var DXCCSR_NEO034            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO034"
label var DXCCSR_NEO035            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO035"
label var DXCCSR_NEO036            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO036"
label var DXCCSR_NEO037            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO037"
label var DXCCSR_NEO038            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO038"
label var DXCCSR_NEO039            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO039"
label var DXCCSR_NEO040            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO040"
label var DXCCSR_NEO041            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO041"
label var DXCCSR_NEO042            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO042"
label var DXCCSR_NEO043            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO043"
label var DXCCSR_NEO044            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO044"
label var DXCCSR_NEO045            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO045"
label var DXCCSR_NEO046            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO046"
label var DXCCSR_NEO047            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO047"
label var DXCCSR_NEO048            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO048"
label var DXCCSR_NEO049            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO049"
label var DXCCSR_NEO050            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO050"
label var DXCCSR_NEO051            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO051"
label var DXCCSR_NEO052            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO052"
label var DXCCSR_NEO053            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO053"
label var DXCCSR_NEO054            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO054"
label var DXCCSR_NEO055            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO055"
label var DXCCSR_NEO056            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO056"
label var DXCCSR_NEO057            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO057"
label var DXCCSR_NEO058            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO058"
label var DXCCSR_NEO059            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO059"
label var DXCCSR_NEO060            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO060"
label var DXCCSR_NEO061            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO061"
label var DXCCSR_NEO062            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO062"
label var DXCCSR_NEO063            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO063"
label var DXCCSR_NEO064            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO064"
label var DXCCSR_NEO065            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO065"
label var DXCCSR_NEO066            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO066"
label var DXCCSR_NEO067            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO067"
label var DXCCSR_NEO068            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO068"
label var DXCCSR_NEO069            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO069"
label var DXCCSR_NEO070            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO070"
label var DXCCSR_NEO071            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO071"
label var DXCCSR_NEO072            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO072"
label var DXCCSR_NEO073            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO073"
label var DXCCSR_NEO074            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NEO074"
label var DXCCSR_NVS001            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NVS001"
label var DXCCSR_NVS002            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NVS002"
label var DXCCSR_NVS003            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NVS003"
label var DXCCSR_NVS004            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NVS004"
label var DXCCSR_NVS005            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NVS005"
label var DXCCSR_NVS006            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NVS006"
label var DXCCSR_NVS007            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NVS007"
label var DXCCSR_NVS008            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NVS008"
label var DXCCSR_NVS009            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NVS009"
label var DXCCSR_NVS010            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NVS010"
label var DXCCSR_NVS011            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NVS011"
label var DXCCSR_NVS012            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NVS012"
label var DXCCSR_NVS013            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NVS013"
label var DXCCSR_NVS014            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NVS014"
label var DXCCSR_NVS015            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NVS015"
label var DXCCSR_NVS016            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NVS016"
label var DXCCSR_NVS017            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NVS017"
label var DXCCSR_NVS018            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NVS018"
label var DXCCSR_NVS019            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NVS019"
label var DXCCSR_NVS020            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NVS020"
label var DXCCSR_NVS021            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NVS021"
label var DXCCSR_NVS022            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR NVS022"
label var DXCCSR_PNL001            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PNL001"
label var DXCCSR_PNL002            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PNL002"
label var DXCCSR_PNL003            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PNL003"
label var DXCCSR_PNL004            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PNL004"
label var DXCCSR_PNL005            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PNL005"
label var DXCCSR_PNL006            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PNL006"
label var DXCCSR_PNL007            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PNL007"
label var DXCCSR_PNL008            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PNL008"
label var DXCCSR_PNL009            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PNL009"
label var DXCCSR_PNL010            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PNL010"
label var DXCCSR_PNL011            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PNL011"
label var DXCCSR_PNL012            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PNL012"
label var DXCCSR_PNL013            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PNL013"
label var DXCCSR_PNL014            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PNL014"
label var DXCCSR_PNL015            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PNL015"
label var DXCCSR_PRG001            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG001"
label var DXCCSR_PRG002            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG002"
label var DXCCSR_PRG003            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG003"
label var DXCCSR_PRG004            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG004"
label var DXCCSR_PRG005            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG005"
label var DXCCSR_PRG006            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG006"
label var DXCCSR_PRG007            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG007"
label var DXCCSR_PRG008            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG008"
label var DXCCSR_PRG009            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG009"
label var DXCCSR_PRG010            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG010"
label var DXCCSR_PRG011            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG011"
label var DXCCSR_PRG012            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG012"
label var DXCCSR_PRG013            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG013"
label var DXCCSR_PRG014            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG014"
label var DXCCSR_PRG015            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG015"
label var DXCCSR_PRG016            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG016"
label var DXCCSR_PRG017            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG017"
label var DXCCSR_PRG018            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG018"
label var DXCCSR_PRG019            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG019"
label var DXCCSR_PRG020            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG020"
label var DXCCSR_PRG021            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG021"
label var DXCCSR_PRG022            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG022"
label var DXCCSR_PRG023            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG023"
label var DXCCSR_PRG024            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG024"
label var DXCCSR_PRG025            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG025"
label var DXCCSR_PRG026            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG026"
label var DXCCSR_PRG027            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG027"
label var DXCCSR_PRG028            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG028"
label var DXCCSR_PRG029            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG029"
label var DXCCSR_PRG030            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR PRG030"
label var DXCCSR_RSP001            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR RSP001"
label var DXCCSR_RSP002            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR RSP002"
label var DXCCSR_RSP003            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR RSP003"
label var DXCCSR_RSP004            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR RSP004"
label var DXCCSR_RSP005            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR RSP005"
label var DXCCSR_RSP006            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR RSP006"
label var DXCCSR_RSP007            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR RSP007"
label var DXCCSR_RSP008            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR RSP008"
label var DXCCSR_RSP009            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR RSP009"
label var DXCCSR_RSP010            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR RSP010"
label var DXCCSR_RSP011            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR RSP011"
label var DXCCSR_RSP012            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR RSP012"
label var DXCCSR_RSP013            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR RSP013"
label var DXCCSR_RSP014            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR RSP014"
label var DXCCSR_RSP015            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR RSP015"
label var DXCCSR_RSP016            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR RSP016"
label var DXCCSR_RSP017            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR RSP017"
label var DXCCSR_SKN001            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR SKN001"
label var DXCCSR_SKN002            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR SKN002"
label var DXCCSR_SKN003            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR SKN003"
label var DXCCSR_SKN004            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR SKN004"
label var DXCCSR_SKN005            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR SKN005"
label var DXCCSR_SKN006            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR SKN006"
label var DXCCSR_SKN007            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR SKN007"
label var DXCCSR_SYM001            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR SYM001"
label var DXCCSR_SYM002            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR SYM002"
label var DXCCSR_SYM003            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR SYM003"
label var DXCCSR_SYM004            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR SYM004"
label var DXCCSR_SYM005            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR SYM005"
label var DXCCSR_SYM006            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR SYM006"
label var DXCCSR_SYM007            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR SYM007"
label var DXCCSR_SYM008            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR SYM008"
label var DXCCSR_SYM009            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR SYM009"
label var DXCCSR_SYM010            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR SYM010"
label var DXCCSR_SYM011            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR SYM011"
label var DXCCSR_SYM012            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR SYM012"
label var DXCCSR_SYM013            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR SYM013"
label var DXCCSR_SYM014            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR SYM014"
label var DXCCSR_SYM015            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR SYM015"
label var DXCCSR_SYM016            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR SYM016"
label var DXCCSR_SYM017            "Indication that at least one ICD-10-CM diagnosis on the record is included in CCSR SYM017"
label var DXCCSR_VERSION           "Version of CCSR for ICD-10-CM diagnoses"
label var PRCCSR_ADM001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ADM001"
label var PRCCSR_ADM002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ADM002"
label var PRCCSR_ADM003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ADM003"
label var PRCCSR_ADM004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ADM004"
label var PRCCSR_ADM005            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ADM005"
label var PRCCSR_ADM006            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ADM006"
label var PRCCSR_ADM007            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ADM007"
label var PRCCSR_ADM008            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ADM008"
label var PRCCSR_ADM009            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ADM009"
label var PRCCSR_ADM010            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ADM010"
label var PRCCSR_ADM011            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ADM011"
label var PRCCSR_ADM012            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ADM012"
label var PRCCSR_ADM013            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ADM013"
label var PRCCSR_ADM014            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ADM014"
label var PRCCSR_ADM015            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ADM015"
label var PRCCSR_ADM016            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ADM016"
label var PRCCSR_ADM017            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ADM017"
label var PRCCSR_ADM018            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ADM018"
label var PRCCSR_ADM019            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ADM019"
label var PRCCSR_ADM020            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ADM020"
label var PRCCSR_ADM021            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ADM021"
label var PRCCSR_CAR001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR001"
label var PRCCSR_CAR002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR002"
label var PRCCSR_CAR003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR003"
label var PRCCSR_CAR004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR004"
label var PRCCSR_CAR005            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR005"
label var PRCCSR_CAR006            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR006"
label var PRCCSR_CAR007            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR007"
label var PRCCSR_CAR008            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR008"
label var PRCCSR_CAR009            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR009"
label var PRCCSR_CAR010            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR010"
label var PRCCSR_CAR011            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR011"
label var PRCCSR_CAR012            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR012"
label var PRCCSR_CAR013            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR013"
label var PRCCSR_CAR014            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR014"
label var PRCCSR_CAR015            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR015"
label var PRCCSR_CAR016            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR016"
label var PRCCSR_CAR017            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR017"
label var PRCCSR_CAR018            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR018"
label var PRCCSR_CAR019            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR019"
label var PRCCSR_CAR020            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR020"
label var PRCCSR_CAR021            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR021"
label var PRCCSR_CAR022            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR022"
label var PRCCSR_CAR023            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR023"
label var PRCCSR_CAR024            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR024"
label var PRCCSR_CAR025            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR025"
label var PRCCSR_CAR026            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR026"
label var PRCCSR_CAR027            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR027"
label var PRCCSR_CAR028            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR028"
label var PRCCSR_CAR029            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CAR029"
label var PRCCSR_CHP001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CHP001"
label var PRCCSR_CNS001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CNS001"
label var PRCCSR_CNS002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CNS002"
label var PRCCSR_CNS003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CNS003"
label var PRCCSR_CNS004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CNS004"
label var PRCCSR_CNS005            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CNS005"
label var PRCCSR_CNS006            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CNS006"
label var PRCCSR_CNS007            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CNS007"
label var PRCCSR_CNS008            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CNS008"
label var PRCCSR_CNS009            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CNS009"
label var PRCCSR_CNS010            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CNS010"
label var PRCCSR_CNS011            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CNS011"
label var PRCCSR_CNS012            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CNS012"
label var PRCCSR_CNS013            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CNS013"
label var PRCCSR_CNS014            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR CNS014"
label var PRCCSR_ENP001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ENP001"
label var PRCCSR_ENP002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ENP002"
label var PRCCSR_ENP003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ENP003"
label var PRCCSR_ENP004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ENP004"
label var PRCCSR_ENP005            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ENP005"
label var PRCCSR_ENP006            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ENP006"
label var PRCCSR_ENT001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ENT001"
label var PRCCSR_ENT002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ENT002"
label var PRCCSR_ENT003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ENT003"
label var PRCCSR_ENT004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ENT004"
label var PRCCSR_ENT005            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ENT005"
label var PRCCSR_ENT006            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ENT006"
label var PRCCSR_ENT007            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ENT007"
label var PRCCSR_ENT008            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ENT008"
label var PRCCSR_ENT009            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ENT009"
label var PRCCSR_ENT010            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ENT010"
label var PRCCSR_ENT011            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ENT011"
label var PRCCSR_ENT012            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ENT012"
label var PRCCSR_ENT013            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ENT013"
label var PRCCSR_ENT014            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ENT014"
label var PRCCSR_ENT015            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ENT015"
label var PRCCSR_ENT016            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ENT016"
label var PRCCSR_ENT017            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ENT017"
label var PRCCSR_ESA001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ESA001"
label var PRCCSR_ESA002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ESA002"
label var PRCCSR_ESA003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ESA003"
label var PRCCSR_ESA004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ESA004"
label var PRCCSR_ESA005            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ESA005"
label var PRCCSR_ESA006            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ESA006"
label var PRCCSR_ESA007            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ESA007"
label var PRCCSR_ESA008            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ESA008"
label var PRCCSR_ESA009            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ESA009"
label var PRCCSR_ESA010            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ESA010"
label var PRCCSR_ESA011            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR ESA011"
label var PRCCSR_EST001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR EST001"
label var PRCCSR_EST002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR EST002"
label var PRCCSR_EST003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR EST003"
label var PRCCSR_EST004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR EST004"
label var PRCCSR_EST005            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR EST005"
label var PRCCSR_EYP001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR EYP001"
label var PRCCSR_EYP002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR EYP002"
label var PRCCSR_FRS001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR FRS001"
label var PRCCSR_FRS002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR FRS002"
label var PRCCSR_FRS003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR FRS003"
label var PRCCSR_FRS004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR FRS004"
label var PRCCSR_FRS005            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR FRS005"
label var PRCCSR_FRS006            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR FRS006"
label var PRCCSR_FRS007            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR FRS007"
label var PRCCSR_FRS008            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR FRS008"
label var PRCCSR_FRS009            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR FRS009"
label var PRCCSR_FRS010            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR FRS010"
label var PRCCSR_FRS011            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR FRS011"
label var PRCCSR_FRS012            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR FRS012"
label var PRCCSR_FRS013            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR FRS013"
label var PRCCSR_FRS014            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR FRS014"
label var PRCCSR_FRS015            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR FRS015"
label var PRCCSR_GIS001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS001"
label var PRCCSR_GIS002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS002"
label var PRCCSR_GIS003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS003"
label var PRCCSR_GIS004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS004"
label var PRCCSR_GIS005            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS005"
label var PRCCSR_GIS006            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS006"
label var PRCCSR_GIS007            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS007"
label var PRCCSR_GIS008            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS008"
label var PRCCSR_GIS009            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS009"
label var PRCCSR_GIS010            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS010"
label var PRCCSR_GIS011            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS011"
label var PRCCSR_GIS012            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS012"
label var PRCCSR_GIS013            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS013"
label var PRCCSR_GIS014            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS014"
label var PRCCSR_GIS015            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS015"
label var PRCCSR_GIS016            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS016"
label var PRCCSR_GIS017            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS017"
label var PRCCSR_GIS018            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS018"
label var PRCCSR_GIS019            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS019"
label var PRCCSR_GIS020            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS020"
label var PRCCSR_GIS021            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS021"
label var PRCCSR_GIS022            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS022"
label var PRCCSR_GIS023            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS023"
label var PRCCSR_GIS024            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS024"
label var PRCCSR_GIS025            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS025"
label var PRCCSR_GIS026            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS026"
label var PRCCSR_GIS027            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS027"
label var PRCCSR_GIS028            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS028"
label var PRCCSR_GIS029            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GIS029"
label var PRCCSR_GNR001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GNR001"
label var PRCCSR_GNR002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GNR002"
label var PRCCSR_GNR003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GNR003"
label var PRCCSR_GNR004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GNR004"
label var PRCCSR_GNR005            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GNR005"
label var PRCCSR_GNR006            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GNR006"
label var PRCCSR_GNR007            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GNR007"
label var PRCCSR_GNR008            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GNR008"
label var PRCCSR_GNR009            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GNR009"
label var PRCCSR_GNR010            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR GNR010"
label var PRCCSR_HEP001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR HEP001"
label var PRCCSR_HEP002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR HEP002"
label var PRCCSR_HEP003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR HEP003"
label var PRCCSR_HEP004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR HEP004"
label var PRCCSR_HEP005            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR HEP005"
label var PRCCSR_HEP006            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR HEP006"
label var PRCCSR_HEP007            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR HEP007"
label var PRCCSR_HEP008            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR HEP008"
label var PRCCSR_HEP009            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR HEP009"
label var PRCCSR_HEP010            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR HEP010"
label var PRCCSR_HEP011            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR HEP011"
label var PRCCSR_HEP012            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR HEP012"
label var PRCCSR_HEP013            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR HEP013"
label var PRCCSR_IMG001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR IMG001"
label var PRCCSR_IMG002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR IMG002"
label var PRCCSR_IMG003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR IMG003"
label var PRCCSR_IMG004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR IMG004"
label var PRCCSR_IMG005            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR IMG005"
label var PRCCSR_IMG006            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR IMG006"
label var PRCCSR_IMG007            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR IMG007"
label var PRCCSR_IMG008            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR IMG008"
label var PRCCSR_IMG009            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR IMG009"
label var PRCCSR_IMG010            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR IMG010"
label var PRCCSR_LYM001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR LYM001"
label var PRCCSR_LYM002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR LYM002"
label var PRCCSR_LYM003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR LYM003"
label var PRCCSR_LYM004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR LYM004"
label var PRCCSR_LYM005            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR LYM005"
label var PRCCSR_LYM006            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR LYM006"
label var PRCCSR_LYM007            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR LYM007"
label var PRCCSR_LYM008            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR LYM008"
label var PRCCSR_LYM009            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR LYM009"
label var PRCCSR_LYM010            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR LYM010"
label var PRCCSR_LYM011            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR LYM011"
label var PRCCSR_MAM001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MAM001"
label var PRCCSR_MAM002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MAM002"
label var PRCCSR_MAM003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MAM003"
label var PRCCSR_MAM004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MAM004"
label var PRCCSR_MAM005            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MAM005"
label var PRCCSR_MAM006            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MAM006"
label var PRCCSR_MAM007            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MAM007"
label var PRCCSR_MAM008            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MAM008"
label var PRCCSR_MAM009            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MAM009"
label var PRCCSR_MAM010            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MAM010"
label var PRCCSR_MAM011            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MAM011"
label var PRCCSR_MAM012            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MAM012"
label var PRCCSR_MAM013            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MAM013"
label var PRCCSR_MAM014            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MAM014"
label var PRCCSR_MAM015            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MAM015"
label var PRCCSR_MHT001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MHT001"
label var PRCCSR_MHT002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MHT002"
label var PRCCSR_MHT003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MHT003"
label var PRCCSR_MHT004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MHT004"
label var PRCCSR_MHT005            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MHT005"
label var PRCCSR_MRS001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MRS001"
label var PRCCSR_MRS002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MRS002"
label var PRCCSR_MRS003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MRS003"
label var PRCCSR_MRS004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MRS004"
label var PRCCSR_MRS005            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MRS005"
label var PRCCSR_MRS006            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MRS006"
label var PRCCSR_MRS007            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MRS007"
label var PRCCSR_MST001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST001"
label var PRCCSR_MST002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST002"
label var PRCCSR_MST003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST003"
label var PRCCSR_MST004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST004"
label var PRCCSR_MST005            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST005"
label var PRCCSR_MST006            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST006"
label var PRCCSR_MST007            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST007"
label var PRCCSR_MST008            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST008"
label var PRCCSR_MST009            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST009"
label var PRCCSR_MST010            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST010"
label var PRCCSR_MST011            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST011"
label var PRCCSR_MST012            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST012"
label var PRCCSR_MST013            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST013"
label var PRCCSR_MST014            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST014"
label var PRCCSR_MST015            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST015"
label var PRCCSR_MST016            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST016"
label var PRCCSR_MST017            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST017"
label var PRCCSR_MST018            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST018"
label var PRCCSR_MST019            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST019"
label var PRCCSR_MST020            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST020"
label var PRCCSR_MST021            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST021"
label var PRCCSR_MST022            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST022"
label var PRCCSR_MST023            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST023"
label var PRCCSR_MST024            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST024"
label var PRCCSR_MST025            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST025"
label var PRCCSR_MST026            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST026"
label var PRCCSR_MST027            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST027"
label var PRCCSR_MST028            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST028"
label var PRCCSR_MST029            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST029"
label var PRCCSR_MST030            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR MST030"
label var PRCCSR_NCM001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR NCM001"
label var PRCCSR_NCM002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR NCM002"
label var PRCCSR_NCM003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR NCM003"
label var PRCCSR_NCM004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR NCM004"
label var PRCCSR_OST001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR OST001"
label var PRCCSR_OTR001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR OTR001"
label var PRCCSR_OTR002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR OTR002"
label var PRCCSR_OTR003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR OTR003"
label var PRCCSR_OTR004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR OTR004"
label var PRCCSR_OTR005            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR OTR005"
label var PRCCSR_PGN001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR PGN001"
label var PRCCSR_PGN002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR PGN002"
label var PRCCSR_PGN003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR PGN003"
label var PRCCSR_PGN004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR PGN004"
label var PRCCSR_PGN005            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR PGN005"
label var PRCCSR_PGN006            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR PGN006"
label var PRCCSR_PGN007            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR PGN007"
label var PRCCSR_PGN008            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR PGN008"
label var PRCCSR_PGN009            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR PGN009"
label var PRCCSR_PLC001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR PLC001"
label var PRCCSR_PLC002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR PLC002"
label var PRCCSR_PNS001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR PNS001"
label var PRCCSR_PNS002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR PNS002"
label var PRCCSR_PNS003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR PNS003"
label var PRCCSR_PNS004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR PNS004"
label var PRCCSR_PNS005            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR PNS005"
label var PRCCSR_PNS006            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR PNS006"
label var PRCCSR_RAD001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR RAD001"
label var PRCCSR_RAD002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR RAD002"
label var PRCCSR_RAD003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR RAD003"
label var PRCCSR_RAD004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR RAD004"
label var PRCCSR_RES001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR RES001"
label var PRCCSR_RES002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR RES002"
label var PRCCSR_RES003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR RES003"
label var PRCCSR_RES004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR RES004"
label var PRCCSR_RES005            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR RES005"
label var PRCCSR_RES006            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR RES006"
label var PRCCSR_RES007            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR RES007"
label var PRCCSR_RES008            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR RES008"
label var PRCCSR_RES009            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR RES009"
label var PRCCSR_RES010            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR RES010"
label var PRCCSR_RES011            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR RES011"
label var PRCCSR_RES012            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR RES012"
label var PRCCSR_RES013            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR RES013"
label var PRCCSR_RES014            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR RES014"
label var PRCCSR_RHB001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR RHB001"
label var PRCCSR_RHB002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR RHB002"
label var PRCCSR_RHB003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR RHB003"
label var PRCCSR_RHB004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR RHB004"
label var PRCCSR_SKB001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR SKB001"
label var PRCCSR_SKB002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR SKB002"
label var PRCCSR_SKB003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR SKB003"
label var PRCCSR_SKB004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR SKB004"
label var PRCCSR_SKB005            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR SKB005"
label var PRCCSR_SKB006            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR SKB006"
label var PRCCSR_SKB007            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR SKB007"
label var PRCCSR_SKB008            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR SKB008"
label var PRCCSR_SKB009            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR SKB009"
label var PRCCSR_SKB010            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR SKB010"
label var PRCCSR_SUD001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR SUD001"
label var PRCCSR_SUD002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR SUD002"
label var PRCCSR_SUD003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR SUD003"
label var PRCCSR_SUD004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR SUD004"
label var PRCCSR_URN001            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR URN001"
label var PRCCSR_URN002            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR URN002"
label var PRCCSR_URN003            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR URN003"
label var PRCCSR_URN004            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR URN004"
label var PRCCSR_URN005            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR URN005"
label var PRCCSR_URN006            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR URN006"
label var PRCCSR_URN007            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR URN007"
label var PRCCSR_URN008            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR URN008"
label var PRCCSR_URN009            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR URN009"
label var PRCCSR_URN010            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR URN010"
label var PRCCSR_URN011            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR URN011"
label var PRCCSR_URN012            "Indication that at least one ICD-10-PCS procedure on the record is included in CCSR URN012"
label var PRCCSR_VERSION           "Version of CCSR for ICD-10-PCS procedures"

*** Convert special values to missing values ***
recode CMR_AIDS                  (-9 -8 -6 -5=.)
recode CMR_ALCOHOL               (-9 -8 -6 -5=.)
recode CMR_ANEMDEF               (-9 -8 -6 -5=.)
recode CMR_ARTH                  (-9 -8 -6 -5=.)
recode CMR_BLDLOSS               (-9 -8 -6 -5=.)
recode CMR_CANCER_LEUK           (-9 -8 -6 -5=.)
recode CMR_CANCER_LYMPH          (-9 -8 -6 -5=.)
recode CMR_CANCER_METS           (-9 -8 -6 -5=.)
recode CMR_CANCER_NSITU          (-9 -8 -6 -5=.)
recode CMR_CANCER_SOLID          (-9 -8 -6 -5=.)
recode CMR_CBVD                  (-9 -8 -6 -5=.)
recode CMR_CHF                   (-9 -8 -6 -5=.)
recode CMR_COAG                  (-9 -8 -6 -5=.)
recode CMR_DEMENTIA              (-9 -8 -6 -5=.)
recode CMR_DEPRESS               (-9 -8 -6 -5=.)
recode CMR_DIAB_CX               (-9 -8 -6 -5=.)
recode CMR_DIAB_UNCX             (-9 -8 -6 -5=.)
recode CMR_DRUG_ABUSE            (-9 -8 -6 -5=.)
recode CMR_HTN_CX                (-9 -8 -6 -5=.)
recode CMR_HTN_UNCX              (-9 -8 -6 -5=.)
recode CMR_LIVER_MLD             (-9 -8 -6 -5=.)
recode CMR_LIVER_SEV             (-9 -8 -6 -5=.)
recode CMR_LUNG_CHRONIC          (-9 -8 -6 -5=.)
recode CMR_NEURO_MOVT            (-9 -8 -6 -5=.)
recode CMR_NEURO_OTH             (-9 -8 -6 -5=.)
recode CMR_NEURO_SEIZ            (-9 -8 -6 -5=.)
recode CMR_OBESE                 (-9 -8 -6 -5=.)
recode CMR_PARALYSIS             (-9 -8 -6 -5=.)
recode CMR_PERIVASC              (-9 -8 -6 -5=.)
recode CMR_PSYCHOSES             (-9 -8 -6 -5=.)
recode CMR_PULMCIRC              (-9 -8 -6 -5=.)
recode CMR_RENLFL_MOD            (-9 -8 -6 -5=.)
recode CMR_RENLFL_SEV            (-9 -8 -6 -5=.)
recode CMR_THYROID_HYPO          (-9 -8 -6 -5=.)
recode CMR_THYROID_OTH           (-9 -8 -6 -5=.)
recode CMR_ULCER_PEPTIC          (-9 -8 -6 -5=.)
recode CMR_VALVE                 (-9 -8 -6 -5=.)
recode CMR_WGHTLOSS              (-9 -8 -6 -5=.)
recode I10_INJURY                (-9 -8 -6 -5=.)
recode I10_INJURY_CUT            (-9 -8 -6 -5=.)
recode I10_INJURY_DROWN          (-9 -8 -6 -5=.)
recode I10_INJURY_FALL           (-9 -8 -6 -5=.)
recode I10_INJURY_FIRE           (-9 -8 -6 -5=.)
recode I10_INJURY_FIREARM        (-9 -8 -6 -5=.)
recode I10_INJURY_MACHINERY      (-9 -8 -6 -5=.)
recode I10_INJURY_MVT            (-9 -8 -6 -5=.)
recode I10_INJURY_NATURE         (-9 -8 -6 -5=.)
recode I10_INJURY_OVEREXERTION   (-9 -8 -6 -5=.)
recode I10_INJURY_POISON         (-9 -8 -6 -5=.)
recode I10_INJURY_STRUCK         (-9 -8 -6 -5=.)
recode I10_INJURY_SUFFOCATION    (-9 -8 -6 -5=.)
recode I10_INTENT_ASSAULT        (-9 -8 -6 -5=.)
recode I10_INTENT_SELF_HARM      (-9 -8 -6 -5=.)
recode I10_INTENT_UNINTENTIONAL  (-9 -8 -6 -5=.)
recode I10_MULTINJURY            (-9 -8 -6 -5=.)
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
recode DXCCSR_BLD001             (-99 -88 -66=.)
recode DXCCSR_BLD002             (-99 -88 -66=.)
recode DXCCSR_BLD003             (-99 -88 -66=.)
recode DXCCSR_BLD004             (-99 -88 -66=.)
recode DXCCSR_BLD005             (-99 -88 -66=.)
recode DXCCSR_BLD006             (-99 -88 -66=.)
recode DXCCSR_BLD007             (-99 -88 -66=.)
recode DXCCSR_BLD008             (-99 -88 -66=.)
recode DXCCSR_BLD009             (-99 -88 -66=.)
recode DXCCSR_BLD010             (-99 -88 -66=.)
recode DXCCSR_CIR001             (-99 -88 -66=.)
recode DXCCSR_CIR002             (-99 -88 -66=.)
recode DXCCSR_CIR003             (-99 -88 -66=.)
recode DXCCSR_CIR004             (-99 -88 -66=.)
recode DXCCSR_CIR005             (-99 -88 -66=.)
recode DXCCSR_CIR006             (-99 -88 -66=.)
recode DXCCSR_CIR007             (-99 -88 -66=.)
recode DXCCSR_CIR008             (-99 -88 -66=.)
recode DXCCSR_CIR009             (-99 -88 -66=.)
recode DXCCSR_CIR010             (-99 -88 -66=.)
recode DXCCSR_CIR011             (-99 -88 -66=.)
recode DXCCSR_CIR012             (-99 -88 -66=.)
recode DXCCSR_CIR013             (-99 -88 -66=.)
recode DXCCSR_CIR014             (-99 -88 -66=.)
recode DXCCSR_CIR015             (-99 -88 -66=.)
recode DXCCSR_CIR016             (-99 -88 -66=.)
recode DXCCSR_CIR017             (-99 -88 -66=.)
recode DXCCSR_CIR018             (-99 -88 -66=.)
recode DXCCSR_CIR019             (-99 -88 -66=.)
recode DXCCSR_CIR020             (-99 -88 -66=.)
recode DXCCSR_CIR021             (-99 -88 -66=.)
recode DXCCSR_CIR022             (-99 -88 -66=.)
recode DXCCSR_CIR023             (-99 -88 -66=.)
recode DXCCSR_CIR024             (-99 -88 -66=.)
recode DXCCSR_CIR025             (-99 -88 -66=.)
recode DXCCSR_CIR026             (-99 -88 -66=.)
recode DXCCSR_CIR027             (-99 -88 -66=.)
recode DXCCSR_CIR028             (-99 -88 -66=.)
recode DXCCSR_CIR029             (-99 -88 -66=.)
recode DXCCSR_CIR030             (-99 -88 -66=.)
recode DXCCSR_CIR031             (-99 -88 -66=.)
recode DXCCSR_CIR032             (-99 -88 -66=.)
recode DXCCSR_CIR033             (-99 -88 -66=.)
recode DXCCSR_CIR034             (-99 -88 -66=.)
recode DXCCSR_CIR035             (-99 -88 -66=.)
recode DXCCSR_CIR036             (-99 -88 -66=.)
recode DXCCSR_CIR037             (-99 -88 -66=.)
recode DXCCSR_CIR038             (-99 -88 -66=.)
recode DXCCSR_CIR039             (-99 -88 -66=.)
recode DXCCSR_DIG001             (-99 -88 -66=.)
recode DXCCSR_DIG002             (-99 -88 -66=.)
recode DXCCSR_DIG003             (-99 -88 -66=.)
recode DXCCSR_DIG004             (-99 -88 -66=.)
recode DXCCSR_DIG005             (-99 -88 -66=.)
recode DXCCSR_DIG006             (-99 -88 -66=.)
recode DXCCSR_DIG007             (-99 -88 -66=.)
recode DXCCSR_DIG008             (-99 -88 -66=.)
recode DXCCSR_DIG009             (-99 -88 -66=.)
recode DXCCSR_DIG010             (-99 -88 -66=.)
recode DXCCSR_DIG011             (-99 -88 -66=.)
recode DXCCSR_DIG012             (-99 -88 -66=.)
recode DXCCSR_DIG013             (-99 -88 -66=.)
recode DXCCSR_DIG014             (-99 -88 -66=.)
recode DXCCSR_DIG015             (-99 -88 -66=.)
recode DXCCSR_DIG016             (-99 -88 -66=.)
recode DXCCSR_DIG017             (-99 -88 -66=.)
recode DXCCSR_DIG018             (-99 -88 -66=.)
recode DXCCSR_DIG019             (-99 -88 -66=.)
recode DXCCSR_DIG020             (-99 -88 -66=.)
recode DXCCSR_DIG021             (-99 -88 -66=.)
recode DXCCSR_DIG022             (-99 -88 -66=.)
recode DXCCSR_DIG023             (-99 -88 -66=.)
recode DXCCSR_DIG024             (-99 -88 -66=.)
recode DXCCSR_DIG025             (-99 -88 -66=.)
recode DXCCSR_EAR001             (-99 -88 -66=.)
recode DXCCSR_EAR002             (-99 -88 -66=.)
recode DXCCSR_EAR003             (-99 -88 -66=.)
recode DXCCSR_EAR004             (-99 -88 -66=.)
recode DXCCSR_EAR005             (-99 -88 -66=.)
recode DXCCSR_EAR006             (-99 -88 -66=.)
recode DXCCSR_END001             (-99 -88 -66=.)
recode DXCCSR_END002             (-99 -88 -66=.)
recode DXCCSR_END003             (-99 -88 -66=.)
recode DXCCSR_END004             (-99 -88 -66=.)
recode DXCCSR_END005             (-99 -88 -66=.)
recode DXCCSR_END006             (-99 -88 -66=.)
recode DXCCSR_END007             (-99 -88 -66=.)
recode DXCCSR_END008             (-99 -88 -66=.)
recode DXCCSR_END009             (-99 -88 -66=.)
recode DXCCSR_END010             (-99 -88 -66=.)
recode DXCCSR_END011             (-99 -88 -66=.)
recode DXCCSR_END012             (-99 -88 -66=.)
recode DXCCSR_END013             (-99 -88 -66=.)
recode DXCCSR_END014             (-99 -88 -66=.)
recode DXCCSR_END015             (-99 -88 -66=.)
recode DXCCSR_END016             (-99 -88 -66=.)
recode DXCCSR_END017             (-99 -88 -66=.)
recode DXCCSR_EXT001             (-99 -88 -66=.)
recode DXCCSR_EXT002             (-99 -88 -66=.)
recode DXCCSR_EXT003             (-99 -88 -66=.)
recode DXCCSR_EXT004             (-99 -88 -66=.)
recode DXCCSR_EXT005             (-99 -88 -66=.)
recode DXCCSR_EXT006             (-99 -88 -66=.)
recode DXCCSR_EXT007             (-99 -88 -66=.)
recode DXCCSR_EXT008             (-99 -88 -66=.)
recode DXCCSR_EXT009             (-99 -88 -66=.)
recode DXCCSR_EXT010             (-99 -88 -66=.)
recode DXCCSR_EXT011             (-99 -88 -66=.)
recode DXCCSR_EXT012             (-99 -88 -66=.)
recode DXCCSR_EXT013             (-99 -88 -66=.)
recode DXCCSR_EXT014             (-99 -88 -66=.)
recode DXCCSR_EXT015             (-99 -88 -66=.)
recode DXCCSR_EXT016             (-99 -88 -66=.)
recode DXCCSR_EXT017             (-99 -88 -66=.)
recode DXCCSR_EXT018             (-99 -88 -66=.)
recode DXCCSR_EXT019             (-99 -88 -66=.)
recode DXCCSR_EXT020             (-99 -88 -66=.)
recode DXCCSR_EXT021             (-99 -88 -66=.)
recode DXCCSR_EXT022             (-99 -88 -66=.)
recode DXCCSR_EXT023             (-99 -88 -66=.)
recode DXCCSR_EXT024             (-99 -88 -66=.)
recode DXCCSR_EXT025             (-99 -88 -66=.)
recode DXCCSR_EXT026             (-99 -88 -66=.)
recode DXCCSR_EXT027             (-99 -88 -66=.)
recode DXCCSR_EXT028             (-99 -88 -66=.)
recode DXCCSR_EXT029             (-99 -88 -66=.)
recode DXCCSR_EXT030             (-99 -88 -66=.)
recode DXCCSR_EYE001             (-99 -88 -66=.)
recode DXCCSR_EYE002             (-99 -88 -66=.)
recode DXCCSR_EYE003             (-99 -88 -66=.)
recode DXCCSR_EYE004             (-99 -88 -66=.)
recode DXCCSR_EYE005             (-99 -88 -66=.)
recode DXCCSR_EYE006             (-99 -88 -66=.)
recode DXCCSR_EYE007             (-99 -88 -66=.)
recode DXCCSR_EYE008             (-99 -88 -66=.)
recode DXCCSR_EYE009             (-99 -88 -66=.)
recode DXCCSR_EYE010             (-99 -88 -66=.)
recode DXCCSR_EYE011             (-99 -88 -66=.)
recode DXCCSR_EYE012             (-99 -88 -66=.)
recode DXCCSR_FAC001             (-99 -88 -66=.)
recode DXCCSR_FAC002             (-99 -88 -66=.)
recode DXCCSR_FAC003             (-99 -88 -66=.)
recode DXCCSR_FAC004             (-99 -88 -66=.)
recode DXCCSR_FAC005             (-99 -88 -66=.)
recode DXCCSR_FAC006             (-99 -88 -66=.)
recode DXCCSR_FAC007             (-99 -88 -66=.)
recode DXCCSR_FAC008             (-99 -88 -66=.)
recode DXCCSR_FAC009             (-99 -88 -66=.)
recode DXCCSR_FAC010             (-99 -88 -66=.)
recode DXCCSR_FAC011             (-99 -88 -66=.)
recode DXCCSR_FAC012             (-99 -88 -66=.)
recode DXCCSR_FAC013             (-99 -88 -66=.)
recode DXCCSR_FAC014             (-99 -88 -66=.)
recode DXCCSR_FAC015             (-99 -88 -66=.)
recode DXCCSR_FAC016             (-99 -88 -66=.)
recode DXCCSR_FAC017             (-99 -88 -66=.)
recode DXCCSR_FAC018             (-99 -88 -66=.)
recode DXCCSR_FAC019             (-99 -88 -66=.)
recode DXCCSR_FAC020             (-99 -88 -66=.)
recode DXCCSR_FAC021             (-99 -88 -66=.)
recode DXCCSR_FAC022             (-99 -88 -66=.)
recode DXCCSR_FAC023             (-99 -88 -66=.)
recode DXCCSR_FAC024             (-99 -88 -66=.)
recode DXCCSR_FAC025             (-99 -88 -66=.)
recode DXCCSR_GEN001             (-99 -88 -66=.)
recode DXCCSR_GEN002             (-99 -88 -66=.)
recode DXCCSR_GEN003             (-99 -88 -66=.)
recode DXCCSR_GEN004             (-99 -88 -66=.)
recode DXCCSR_GEN005             (-99 -88 -66=.)
recode DXCCSR_GEN006             (-99 -88 -66=.)
recode DXCCSR_GEN007             (-99 -88 -66=.)
recode DXCCSR_GEN008             (-99 -88 -66=.)
recode DXCCSR_GEN009             (-99 -88 -66=.)
recode DXCCSR_GEN010             (-99 -88 -66=.)
recode DXCCSR_GEN011             (-99 -88 -66=.)
recode DXCCSR_GEN012             (-99 -88 -66=.)
recode DXCCSR_GEN013             (-99 -88 -66=.)
recode DXCCSR_GEN014             (-99 -88 -66=.)
recode DXCCSR_GEN015             (-99 -88 -66=.)
recode DXCCSR_GEN016             (-99 -88 -66=.)
recode DXCCSR_GEN017             (-99 -88 -66=.)
recode DXCCSR_GEN018             (-99 -88 -66=.)
recode DXCCSR_GEN019             (-99 -88 -66=.)
recode DXCCSR_GEN020             (-99 -88 -66=.)
recode DXCCSR_GEN021             (-99 -88 -66=.)
recode DXCCSR_GEN022             (-99 -88 -66=.)
recode DXCCSR_GEN023             (-99 -88 -66=.)
recode DXCCSR_GEN024             (-99 -88 -66=.)
recode DXCCSR_GEN025             (-99 -88 -66=.)
recode DXCCSR_GEN026             (-99 -88 -66=.)
recode DXCCSR_INF001             (-99 -88 -66=.)
recode DXCCSR_INF002             (-99 -88 -66=.)
recode DXCCSR_INF003             (-99 -88 -66=.)
recode DXCCSR_INF004             (-99 -88 -66=.)
recode DXCCSR_INF005             (-99 -88 -66=.)
recode DXCCSR_INF006             (-99 -88 -66=.)
recode DXCCSR_INF007             (-99 -88 -66=.)
recode DXCCSR_INF008             (-99 -88 -66=.)
recode DXCCSR_INF009             (-99 -88 -66=.)
recode DXCCSR_INF010             (-99 -88 -66=.)
recode DXCCSR_INF011             (-99 -88 -66=.)
recode DXCCSR_INF012             (-99 -88 -66=.)
recode DXCCSR_INJ001             (-99 -88 -66=.)
recode DXCCSR_INJ002             (-99 -88 -66=.)
recode DXCCSR_INJ003             (-99 -88 -66=.)
recode DXCCSR_INJ004             (-99 -88 -66=.)
recode DXCCSR_INJ005             (-99 -88 -66=.)
recode DXCCSR_INJ006             (-99 -88 -66=.)
recode DXCCSR_INJ007             (-99 -88 -66=.)
recode DXCCSR_INJ008             (-99 -88 -66=.)
recode DXCCSR_INJ009             (-99 -88 -66=.)
recode DXCCSR_INJ010             (-99 -88 -66=.)
recode DXCCSR_INJ011             (-99 -88 -66=.)
recode DXCCSR_INJ012             (-99 -88 -66=.)
recode DXCCSR_INJ013             (-99 -88 -66=.)
recode DXCCSR_INJ014             (-99 -88 -66=.)
recode DXCCSR_INJ015             (-99 -88 -66=.)
recode DXCCSR_INJ016             (-99 -88 -66=.)
recode DXCCSR_INJ017             (-99 -88 -66=.)
recode DXCCSR_INJ018             (-99 -88 -66=.)
recode DXCCSR_INJ019             (-99 -88 -66=.)
recode DXCCSR_INJ020             (-99 -88 -66=.)
recode DXCCSR_INJ021             (-99 -88 -66=.)
recode DXCCSR_INJ022             (-99 -88 -66=.)
recode DXCCSR_INJ023             (-99 -88 -66=.)
recode DXCCSR_INJ024             (-99 -88 -66=.)
recode DXCCSR_INJ025             (-99 -88 -66=.)
recode DXCCSR_INJ026             (-99 -88 -66=.)
recode DXCCSR_INJ027             (-99 -88 -66=.)
recode DXCCSR_INJ028             (-99 -88 -66=.)
recode DXCCSR_INJ029             (-99 -88 -66=.)
recode DXCCSR_INJ030             (-99 -88 -66=.)
recode DXCCSR_INJ031             (-99 -88 -66=.)
recode DXCCSR_INJ032             (-99 -88 -66=.)
recode DXCCSR_INJ033             (-99 -88 -66=.)
recode DXCCSR_INJ034             (-99 -88 -66=.)
recode DXCCSR_INJ035             (-99 -88 -66=.)
recode DXCCSR_INJ036             (-99 -88 -66=.)
recode DXCCSR_INJ037             (-99 -88 -66=.)
recode DXCCSR_INJ038             (-99 -88 -66=.)
recode DXCCSR_INJ039             (-99 -88 -66=.)
recode DXCCSR_INJ040             (-99 -88 -66=.)
recode DXCCSR_INJ041             (-99 -88 -66=.)
recode DXCCSR_INJ042             (-99 -88 -66=.)
recode DXCCSR_INJ043             (-99 -88 -66=.)
recode DXCCSR_INJ044             (-99 -88 -66=.)
recode DXCCSR_INJ045             (-99 -88 -66=.)
recode DXCCSR_INJ046             (-99 -88 -66=.)
recode DXCCSR_INJ047             (-99 -88 -66=.)
recode DXCCSR_INJ048             (-99 -88 -66=.)
recode DXCCSR_INJ049             (-99 -88 -66=.)
recode DXCCSR_INJ050             (-99 -88 -66=.)
recode DXCCSR_INJ051             (-99 -88 -66=.)
recode DXCCSR_INJ052             (-99 -88 -66=.)
recode DXCCSR_INJ053             (-99 -88 -66=.)
recode DXCCSR_INJ054             (-99 -88 -66=.)
recode DXCCSR_INJ055             (-99 -88 -66=.)
recode DXCCSR_INJ056             (-99 -88 -66=.)
recode DXCCSR_INJ057             (-99 -88 -66=.)
recode DXCCSR_INJ058             (-99 -88 -66=.)
recode DXCCSR_INJ059             (-99 -88 -66=.)
recode DXCCSR_INJ060             (-99 -88 -66=.)
recode DXCCSR_INJ061             (-99 -88 -66=.)
recode DXCCSR_INJ062             (-99 -88 -66=.)
recode DXCCSR_INJ063             (-99 -88 -66=.)
recode DXCCSR_INJ064             (-99 -88 -66=.)
recode DXCCSR_INJ065             (-99 -88 -66=.)
recode DXCCSR_INJ066             (-99 -88 -66=.)
recode DXCCSR_INJ067             (-99 -88 -66=.)
recode DXCCSR_INJ068             (-99 -88 -66=.)
recode DXCCSR_INJ069             (-99 -88 -66=.)
recode DXCCSR_INJ070             (-99 -88 -66=.)
recode DXCCSR_INJ071             (-99 -88 -66=.)
recode DXCCSR_INJ072             (-99 -88 -66=.)
recode DXCCSR_INJ073             (-99 -88 -66=.)
recode DXCCSR_INJ074             (-99 -88 -66=.)
recode DXCCSR_INJ075             (-99 -88 -66=.)
recode DXCCSR_INJ076             (-99 -88 -66=.)
recode DXCCSR_MAL001             (-99 -88 -66=.)
recode DXCCSR_MAL002             (-99 -88 -66=.)
recode DXCCSR_MAL003             (-99 -88 -66=.)
recode DXCCSR_MAL004             (-99 -88 -66=.)
recode DXCCSR_MAL005             (-99 -88 -66=.)
recode DXCCSR_MAL006             (-99 -88 -66=.)
recode DXCCSR_MAL007             (-99 -88 -66=.)
recode DXCCSR_MAL008             (-99 -88 -66=.)
recode DXCCSR_MAL009             (-99 -88 -66=.)
recode DXCCSR_MAL010             (-99 -88 -66=.)
recode DXCCSR_MBD001             (-99 -88 -66=.)
recode DXCCSR_MBD002             (-99 -88 -66=.)
recode DXCCSR_MBD003             (-99 -88 -66=.)
recode DXCCSR_MBD004             (-99 -88 -66=.)
recode DXCCSR_MBD005             (-99 -88 -66=.)
recode DXCCSR_MBD006             (-99 -88 -66=.)
recode DXCCSR_MBD007             (-99 -88 -66=.)
recode DXCCSR_MBD008             (-99 -88 -66=.)
recode DXCCSR_MBD009             (-99 -88 -66=.)
recode DXCCSR_MBD010             (-99 -88 -66=.)
recode DXCCSR_MBD011             (-99 -88 -66=.)
recode DXCCSR_MBD012             (-99 -88 -66=.)
recode DXCCSR_MBD013             (-99 -88 -66=.)
recode DXCCSR_MBD014             (-99 -88 -66=.)
recode DXCCSR_MBD017             (-99 -88 -66=.)
recode DXCCSR_MBD018             (-99 -88 -66=.)
recode DXCCSR_MBD019             (-99 -88 -66=.)
recode DXCCSR_MBD020             (-99 -88 -66=.)
recode DXCCSR_MBD021             (-99 -88 -66=.)
recode DXCCSR_MBD022             (-99 -88 -66=.)
recode DXCCSR_MBD023             (-99 -88 -66=.)
recode DXCCSR_MBD024             (-99 -88 -66=.)
recode DXCCSR_MBD025             (-99 -88 -66=.)
recode DXCCSR_MBD026             (-99 -88 -66=.)
recode DXCCSR_MBD027             (-99 -88 -66=.)
recode DXCCSR_MBD028             (-99 -88 -66=.)
recode DXCCSR_MBD029             (-99 -88 -66=.)
recode DXCCSR_MBD030             (-99 -88 -66=.)
recode DXCCSR_MBD031             (-99 -88 -66=.)
recode DXCCSR_MBD032             (-99 -88 -66=.)
recode DXCCSR_MBD033             (-99 -88 -66=.)
recode DXCCSR_MBD034             (-99 -88 -66=.)
recode DXCCSR_MUS001             (-99 -88 -66=.)
recode DXCCSR_MUS002             (-99 -88 -66=.)
recode DXCCSR_MUS003             (-99 -88 -66=.)
recode DXCCSR_MUS004             (-99 -88 -66=.)
recode DXCCSR_MUS005             (-99 -88 -66=.)
recode DXCCSR_MUS006             (-99 -88 -66=.)
recode DXCCSR_MUS007             (-99 -88 -66=.)
recode DXCCSR_MUS008             (-99 -88 -66=.)
recode DXCCSR_MUS009             (-99 -88 -66=.)
recode DXCCSR_MUS010             (-99 -88 -66=.)
recode DXCCSR_MUS011             (-99 -88 -66=.)
recode DXCCSR_MUS012             (-99 -88 -66=.)
recode DXCCSR_MUS013             (-99 -88 -66=.)
recode DXCCSR_MUS014             (-99 -88 -66=.)
recode DXCCSR_MUS015             (-99 -88 -66=.)
recode DXCCSR_MUS016             (-99 -88 -66=.)
recode DXCCSR_MUS017             (-99 -88 -66=.)
recode DXCCSR_MUS018             (-99 -88 -66=.)
recode DXCCSR_MUS019             (-99 -88 -66=.)
recode DXCCSR_MUS020             (-99 -88 -66=.)
recode DXCCSR_MUS021             (-99 -88 -66=.)
recode DXCCSR_MUS022             (-99 -88 -66=.)
recode DXCCSR_MUS023             (-99 -88 -66=.)
recode DXCCSR_MUS024             (-99 -88 -66=.)
recode DXCCSR_MUS025             (-99 -88 -66=.)
recode DXCCSR_MUS026             (-99 -88 -66=.)
recode DXCCSR_MUS027             (-99 -88 -66=.)
recode DXCCSR_MUS028             (-99 -88 -66=.)
recode DXCCSR_MUS029             (-99 -88 -66=.)
recode DXCCSR_MUS030             (-99 -88 -66=.)
recode DXCCSR_MUS031             (-99 -88 -66=.)
recode DXCCSR_MUS032             (-99 -88 -66=.)
recode DXCCSR_MUS033             (-99 -88 -66=.)
recode DXCCSR_MUS034             (-99 -88 -66=.)
recode DXCCSR_MUS035             (-99 -88 -66=.)
recode DXCCSR_MUS036             (-99 -88 -66=.)
recode DXCCSR_MUS037             (-99 -88 -66=.)
recode DXCCSR_MUS038             (-99 -88 -66=.)
recode DXCCSR_NEO001             (-99 -88 -66=.)
recode DXCCSR_NEO002             (-99 -88 -66=.)
recode DXCCSR_NEO003             (-99 -88 -66=.)
recode DXCCSR_NEO004             (-99 -88 -66=.)
recode DXCCSR_NEO005             (-99 -88 -66=.)
recode DXCCSR_NEO006             (-99 -88 -66=.)
recode DXCCSR_NEO007             (-99 -88 -66=.)
recode DXCCSR_NEO008             (-99 -88 -66=.)
recode DXCCSR_NEO009             (-99 -88 -66=.)
recode DXCCSR_NEO010             (-99 -88 -66=.)
recode DXCCSR_NEO011             (-99 -88 -66=.)
recode DXCCSR_NEO012             (-99 -88 -66=.)
recode DXCCSR_NEO013             (-99 -88 -66=.)
recode DXCCSR_NEO014             (-99 -88 -66=.)
recode DXCCSR_NEO015             (-99 -88 -66=.)
recode DXCCSR_NEO016             (-99 -88 -66=.)
recode DXCCSR_NEO017             (-99 -88 -66=.)
recode DXCCSR_NEO018             (-99 -88 -66=.)
recode DXCCSR_NEO019             (-99 -88 -66=.)
recode DXCCSR_NEO020             (-99 -88 -66=.)
recode DXCCSR_NEO021             (-99 -88 -66=.)
recode DXCCSR_NEO022             (-99 -88 -66=.)
recode DXCCSR_NEO023             (-99 -88 -66=.)
recode DXCCSR_NEO024             (-99 -88 -66=.)
recode DXCCSR_NEO025             (-99 -88 -66=.)
recode DXCCSR_NEO026             (-99 -88 -66=.)
recode DXCCSR_NEO027             (-99 -88 -66=.)
recode DXCCSR_NEO028             (-99 -88 -66=.)
recode DXCCSR_NEO029             (-99 -88 -66=.)
recode DXCCSR_NEO030             (-99 -88 -66=.)
recode DXCCSR_NEO031             (-99 -88 -66=.)
recode DXCCSR_NEO032             (-99 -88 -66=.)
recode DXCCSR_NEO033             (-99 -88 -66=.)
recode DXCCSR_NEO034             (-99 -88 -66=.)
recode DXCCSR_NEO035             (-99 -88 -66=.)
recode DXCCSR_NEO036             (-99 -88 -66=.)
recode DXCCSR_NEO037             (-99 -88 -66=.)
recode DXCCSR_NEO038             (-99 -88 -66=.)
recode DXCCSR_NEO039             (-99 -88 -66=.)
recode DXCCSR_NEO040             (-99 -88 -66=.)
recode DXCCSR_NEO041             (-99 -88 -66=.)
recode DXCCSR_NEO042             (-99 -88 -66=.)
recode DXCCSR_NEO043             (-99 -88 -66=.)
recode DXCCSR_NEO044             (-99 -88 -66=.)
recode DXCCSR_NEO045             (-99 -88 -66=.)
recode DXCCSR_NEO046             (-99 -88 -66=.)
recode DXCCSR_NEO047             (-99 -88 -66=.)
recode DXCCSR_NEO048             (-99 -88 -66=.)
recode DXCCSR_NEO049             (-99 -88 -66=.)
recode DXCCSR_NEO050             (-99 -88 -66=.)
recode DXCCSR_NEO051             (-99 -88 -66=.)
recode DXCCSR_NEO052             (-99 -88 -66=.)
recode DXCCSR_NEO053             (-99 -88 -66=.)
recode DXCCSR_NEO054             (-99 -88 -66=.)
recode DXCCSR_NEO055             (-99 -88 -66=.)
recode DXCCSR_NEO056             (-99 -88 -66=.)
recode DXCCSR_NEO057             (-99 -88 -66=.)
recode DXCCSR_NEO058             (-99 -88 -66=.)
recode DXCCSR_NEO059             (-99 -88 -66=.)
recode DXCCSR_NEO060             (-99 -88 -66=.)
recode DXCCSR_NEO061             (-99 -88 -66=.)
recode DXCCSR_NEO062             (-99 -88 -66=.)
recode DXCCSR_NEO063             (-99 -88 -66=.)
recode DXCCSR_NEO064             (-99 -88 -66=.)
recode DXCCSR_NEO065             (-99 -88 -66=.)
recode DXCCSR_NEO066             (-99 -88 -66=.)
recode DXCCSR_NEO067             (-99 -88 -66=.)
recode DXCCSR_NEO068             (-99 -88 -66=.)
recode DXCCSR_NEO069             (-99 -88 -66=.)
recode DXCCSR_NEO070             (-99 -88 -66=.)
recode DXCCSR_NEO071             (-99 -88 -66=.)
recode DXCCSR_NEO072             (-99 -88 -66=.)
recode DXCCSR_NEO073             (-99 -88 -66=.)
recode DXCCSR_NEO074             (-99 -88 -66=.)
recode DXCCSR_NVS001             (-99 -88 -66=.)
recode DXCCSR_NVS002             (-99 -88 -66=.)
recode DXCCSR_NVS003             (-99 -88 -66=.)
recode DXCCSR_NVS004             (-99 -88 -66=.)
recode DXCCSR_NVS005             (-99 -88 -66=.)
recode DXCCSR_NVS006             (-99 -88 -66=.)
recode DXCCSR_NVS007             (-99 -88 -66=.)
recode DXCCSR_NVS008             (-99 -88 -66=.)
recode DXCCSR_NVS009             (-99 -88 -66=.)
recode DXCCSR_NVS010             (-99 -88 -66=.)
recode DXCCSR_NVS011             (-99 -88 -66=.)
recode DXCCSR_NVS012             (-99 -88 -66=.)
recode DXCCSR_NVS013             (-99 -88 -66=.)
recode DXCCSR_NVS014             (-99 -88 -66=.)
recode DXCCSR_NVS015             (-99 -88 -66=.)
recode DXCCSR_NVS016             (-99 -88 -66=.)
recode DXCCSR_NVS017             (-99 -88 -66=.)
recode DXCCSR_NVS018             (-99 -88 -66=.)
recode DXCCSR_NVS019             (-99 -88 -66=.)
recode DXCCSR_NVS020             (-99 -88 -66=.)
recode DXCCSR_NVS021             (-99 -88 -66=.)
recode DXCCSR_NVS022             (-99 -88 -66=.)
recode DXCCSR_PNL001             (-99 -88 -66=.)
recode DXCCSR_PNL002             (-99 -88 -66=.)
recode DXCCSR_PNL003             (-99 -88 -66=.)
recode DXCCSR_PNL004             (-99 -88 -66=.)
recode DXCCSR_PNL005             (-99 -88 -66=.)
recode DXCCSR_PNL006             (-99 -88 -66=.)
recode DXCCSR_PNL007             (-99 -88 -66=.)
recode DXCCSR_PNL008             (-99 -88 -66=.)
recode DXCCSR_PNL009             (-99 -88 -66=.)
recode DXCCSR_PNL010             (-99 -88 -66=.)
recode DXCCSR_PNL011             (-99 -88 -66=.)
recode DXCCSR_PNL012             (-99 -88 -66=.)
recode DXCCSR_PNL013             (-99 -88 -66=.)
recode DXCCSR_PNL014             (-99 -88 -66=.)
recode DXCCSR_PNL015             (-99 -88 -66=.)
recode DXCCSR_PRG001             (-99 -88 -66=.)
recode DXCCSR_PRG002             (-99 -88 -66=.)
recode DXCCSR_PRG003             (-99 -88 -66=.)
recode DXCCSR_PRG004             (-99 -88 -66=.)
recode DXCCSR_PRG005             (-99 -88 -66=.)
recode DXCCSR_PRG006             (-99 -88 -66=.)
recode DXCCSR_PRG007             (-99 -88 -66=.)
recode DXCCSR_PRG008             (-99 -88 -66=.)
recode DXCCSR_PRG009             (-99 -88 -66=.)
recode DXCCSR_PRG010             (-99 -88 -66=.)
recode DXCCSR_PRG011             (-99 -88 -66=.)
recode DXCCSR_PRG012             (-99 -88 -66=.)
recode DXCCSR_PRG013             (-99 -88 -66=.)
recode DXCCSR_PRG014             (-99 -88 -66=.)
recode DXCCSR_PRG015             (-99 -88 -66=.)
recode DXCCSR_PRG016             (-99 -88 -66=.)
recode DXCCSR_PRG017             (-99 -88 -66=.)
recode DXCCSR_PRG018             (-99 -88 -66=.)
recode DXCCSR_PRG019             (-99 -88 -66=.)
recode DXCCSR_PRG020             (-99 -88 -66=.)
recode DXCCSR_PRG021             (-99 -88 -66=.)
recode DXCCSR_PRG022             (-99 -88 -66=.)
recode DXCCSR_PRG023             (-99 -88 -66=.)
recode DXCCSR_PRG024             (-99 -88 -66=.)
recode DXCCSR_PRG025             (-99 -88 -66=.)
recode DXCCSR_PRG026             (-99 -88 -66=.)
recode DXCCSR_PRG027             (-99 -88 -66=.)
recode DXCCSR_PRG028             (-99 -88 -66=.)
recode DXCCSR_PRG029             (-99 -88 -66=.)
recode DXCCSR_PRG030             (-99 -88 -66=.)
recode DXCCSR_RSP001             (-99 -88 -66=.)
recode DXCCSR_RSP002             (-99 -88 -66=.)
recode DXCCSR_RSP003             (-99 -88 -66=.)
recode DXCCSR_RSP004             (-99 -88 -66=.)
recode DXCCSR_RSP005             (-99 -88 -66=.)
recode DXCCSR_RSP006             (-99 -88 -66=.)
recode DXCCSR_RSP007             (-99 -88 -66=.)
recode DXCCSR_RSP008             (-99 -88 -66=.)
recode DXCCSR_RSP009             (-99 -88 -66=.)
recode DXCCSR_RSP010             (-99 -88 -66=.)
recode DXCCSR_RSP011             (-99 -88 -66=.)
recode DXCCSR_RSP012             (-99 -88 -66=.)
recode DXCCSR_RSP013             (-99 -88 -66=.)
recode DXCCSR_RSP014             (-99 -88 -66=.)
recode DXCCSR_RSP015             (-99 -88 -66=.)
recode DXCCSR_RSP016             (-99 -88 -66=.)
recode DXCCSR_RSP017             (-99 -88 -66=.)
recode DXCCSR_SKN001             (-99 -88 -66=.)
recode DXCCSR_SKN002             (-99 -88 -66=.)
recode DXCCSR_SKN003             (-99 -88 -66=.)
recode DXCCSR_SKN004             (-99 -88 -66=.)
recode DXCCSR_SKN005             (-99 -88 -66=.)
recode DXCCSR_SKN006             (-99 -88 -66=.)
recode DXCCSR_SKN007             (-99 -88 -66=.)
recode DXCCSR_SYM001             (-99 -88 -66=.)
recode DXCCSR_SYM002             (-99 -88 -66=.)
recode DXCCSR_SYM003             (-99 -88 -66=.)
recode DXCCSR_SYM004             (-99 -88 -66=.)
recode DXCCSR_SYM005             (-99 -88 -66=.)
recode DXCCSR_SYM006             (-99 -88 -66=.)
recode DXCCSR_SYM007             (-99 -88 -66=.)
recode DXCCSR_SYM008             (-99 -88 -66=.)
recode DXCCSR_SYM009             (-99 -88 -66=.)
recode DXCCSR_SYM010             (-99 -88 -66=.)
recode DXCCSR_SYM011             (-99 -88 -66=.)
recode DXCCSR_SYM012             (-99 -88 -66=.)
recode DXCCSR_SYM013             (-99 -88 -66=.)
recode DXCCSR_SYM014             (-99 -88 -66=.)
recode DXCCSR_SYM015             (-99 -88 -66=.)
recode DXCCSR_SYM016             (-99 -88 -66=.)
recode DXCCSR_SYM017             (-99 -88 -66=.)
recode PRCCSR_ADM001             (-99 -88 -66=.)
recode PRCCSR_ADM002             (-99 -88 -66=.)
recode PRCCSR_ADM003             (-99 -88 -66=.)
recode PRCCSR_ADM004             (-99 -88 -66=.)
recode PRCCSR_ADM005             (-99 -88 -66=.)
recode PRCCSR_ADM006             (-99 -88 -66=.)
recode PRCCSR_ADM007             (-99 -88 -66=.)
recode PRCCSR_ADM008             (-99 -88 -66=.)
recode PRCCSR_ADM009             (-99 -88 -66=.)
recode PRCCSR_ADM010             (-99 -88 -66=.)
recode PRCCSR_ADM011             (-99 -88 -66=.)
recode PRCCSR_ADM012             (-99 -88 -66=.)
recode PRCCSR_ADM013             (-99 -88 -66=.)
recode PRCCSR_ADM014             (-99 -88 -66=.)
recode PRCCSR_ADM015             (-99 -88 -66=.)
recode PRCCSR_ADM016             (-99 -88 -66=.)
recode PRCCSR_ADM017             (-99 -88 -66=.)
recode PRCCSR_ADM018             (-99 -88 -66=.)
recode PRCCSR_ADM019             (-99 -88 -66=.)
recode PRCCSR_ADM020             (-99 -88 -66=.)
recode PRCCSR_ADM021             (-99 -88 -66=.)
recode PRCCSR_CAR001             (-99 -88 -66=.)
recode PRCCSR_CAR002             (-99 -88 -66=.)
recode PRCCSR_CAR003             (-99 -88 -66=.)
recode PRCCSR_CAR004             (-99 -88 -66=.)
recode PRCCSR_CAR005             (-99 -88 -66=.)
recode PRCCSR_CAR006             (-99 -88 -66=.)
recode PRCCSR_CAR007             (-99 -88 -66=.)
recode PRCCSR_CAR008             (-99 -88 -66=.)
recode PRCCSR_CAR009             (-99 -88 -66=.)
recode PRCCSR_CAR010             (-99 -88 -66=.)
recode PRCCSR_CAR011             (-99 -88 -66=.)
recode PRCCSR_CAR012             (-99 -88 -66=.)
recode PRCCSR_CAR013             (-99 -88 -66=.)
recode PRCCSR_CAR014             (-99 -88 -66=.)
recode PRCCSR_CAR015             (-99 -88 -66=.)
recode PRCCSR_CAR016             (-99 -88 -66=.)
recode PRCCSR_CAR017             (-99 -88 -66=.)
recode PRCCSR_CAR018             (-99 -88 -66=.)
recode PRCCSR_CAR019             (-99 -88 -66=.)
recode PRCCSR_CAR020             (-99 -88 -66=.)
recode PRCCSR_CAR021             (-99 -88 -66=.)
recode PRCCSR_CAR022             (-99 -88 -66=.)
recode PRCCSR_CAR023             (-99 -88 -66=.)
recode PRCCSR_CAR024             (-99 -88 -66=.)
recode PRCCSR_CAR025             (-99 -88 -66=.)
recode PRCCSR_CAR026             (-99 -88 -66=.)
recode PRCCSR_CAR027             (-99 -88 -66=.)
recode PRCCSR_CAR028             (-99 -88 -66=.)
recode PRCCSR_CAR029             (-99 -88 -66=.)
recode PRCCSR_CHP001             (-99 -88 -66=.)
recode PRCCSR_CNS001             (-99 -88 -66=.)
recode PRCCSR_CNS002             (-99 -88 -66=.)
recode PRCCSR_CNS003             (-99 -88 -66=.)
recode PRCCSR_CNS004             (-99 -88 -66=.)
recode PRCCSR_CNS005             (-99 -88 -66=.)
recode PRCCSR_CNS006             (-99 -88 -66=.)
recode PRCCSR_CNS007             (-99 -88 -66=.)
recode PRCCSR_CNS008             (-99 -88 -66=.)
recode PRCCSR_CNS009             (-99 -88 -66=.)
recode PRCCSR_CNS010             (-99 -88 -66=.)
recode PRCCSR_CNS011             (-99 -88 -66=.)
recode PRCCSR_CNS012             (-99 -88 -66=.)
recode PRCCSR_CNS013             (-99 -88 -66=.)
recode PRCCSR_CNS014             (-99 -88 -66=.)
recode PRCCSR_ENP001             (-99 -88 -66=.)
recode PRCCSR_ENP002             (-99 -88 -66=.)
recode PRCCSR_ENP003             (-99 -88 -66=.)
recode PRCCSR_ENP004             (-99 -88 -66=.)
recode PRCCSR_ENP005             (-99 -88 -66=.)
recode PRCCSR_ENP006             (-99 -88 -66=.)
recode PRCCSR_ENT001             (-99 -88 -66=.)
recode PRCCSR_ENT002             (-99 -88 -66=.)
recode PRCCSR_ENT003             (-99 -88 -66=.)
recode PRCCSR_ENT004             (-99 -88 -66=.)
recode PRCCSR_ENT005             (-99 -88 -66=.)
recode PRCCSR_ENT006             (-99 -88 -66=.)
recode PRCCSR_ENT007             (-99 -88 -66=.)
recode PRCCSR_ENT008             (-99 -88 -66=.)
recode PRCCSR_ENT009             (-99 -88 -66=.)
recode PRCCSR_ENT010             (-99 -88 -66=.)
recode PRCCSR_ENT011             (-99 -88 -66=.)
recode PRCCSR_ENT012             (-99 -88 -66=.)
recode PRCCSR_ENT013             (-99 -88 -66=.)
recode PRCCSR_ENT014             (-99 -88 -66=.)
recode PRCCSR_ENT015             (-99 -88 -66=.)
recode PRCCSR_ENT016             (-99 -88 -66=.)
recode PRCCSR_ENT017             (-99 -88 -66=.)
recode PRCCSR_ESA001             (-99 -88 -66=.)
recode PRCCSR_ESA002             (-99 -88 -66=.)
recode PRCCSR_ESA003             (-99 -88 -66=.)
recode PRCCSR_ESA004             (-99 -88 -66=.)
recode PRCCSR_ESA005             (-99 -88 -66=.)
recode PRCCSR_ESA006             (-99 -88 -66=.)
recode PRCCSR_ESA007             (-99 -88 -66=.)
recode PRCCSR_ESA008             (-99 -88 -66=.)
recode PRCCSR_ESA009             (-99 -88 -66=.)
recode PRCCSR_ESA010             (-99 -88 -66=.)
recode PRCCSR_ESA011             (-99 -88 -66=.)
recode PRCCSR_EST001             (-99 -88 -66=.)
recode PRCCSR_EST002             (-99 -88 -66=.)
recode PRCCSR_EST003             (-99 -88 -66=.)
recode PRCCSR_EST004             (-99 -88 -66=.)
recode PRCCSR_EST005             (-99 -88 -66=.)
recode PRCCSR_EYP001             (-99 -88 -66=.)
recode PRCCSR_EYP002             (-99 -88 -66=.)
recode PRCCSR_FRS001             (-99 -88 -66=.)
recode PRCCSR_FRS002             (-99 -88 -66=.)
recode PRCCSR_FRS003             (-99 -88 -66=.)
recode PRCCSR_FRS004             (-99 -88 -66=.)
recode PRCCSR_FRS005             (-99 -88 -66=.)
recode PRCCSR_FRS006             (-99 -88 -66=.)
recode PRCCSR_FRS007             (-99 -88 -66=.)
recode PRCCSR_FRS008             (-99 -88 -66=.)
recode PRCCSR_FRS009             (-99 -88 -66=.)
recode PRCCSR_FRS010             (-99 -88 -66=.)
recode PRCCSR_FRS011             (-99 -88 -66=.)
recode PRCCSR_FRS012             (-99 -88 -66=.)
recode PRCCSR_FRS013             (-99 -88 -66=.)
recode PRCCSR_FRS014             (-99 -88 -66=.)
recode PRCCSR_FRS015             (-99 -88 -66=.)
recode PRCCSR_GIS001             (-99 -88 -66=.)
recode PRCCSR_GIS002             (-99 -88 -66=.)
recode PRCCSR_GIS003             (-99 -88 -66=.)
recode PRCCSR_GIS004             (-99 -88 -66=.)
recode PRCCSR_GIS005             (-99 -88 -66=.)
recode PRCCSR_GIS006             (-99 -88 -66=.)
recode PRCCSR_GIS007             (-99 -88 -66=.)
recode PRCCSR_GIS008             (-99 -88 -66=.)
recode PRCCSR_GIS009             (-99 -88 -66=.)
recode PRCCSR_GIS010             (-99 -88 -66=.)
recode PRCCSR_GIS011             (-99 -88 -66=.)
recode PRCCSR_GIS012             (-99 -88 -66=.)
recode PRCCSR_GIS013             (-99 -88 -66=.)
recode PRCCSR_GIS014             (-99 -88 -66=.)
recode PRCCSR_GIS015             (-99 -88 -66=.)
recode PRCCSR_GIS016             (-99 -88 -66=.)
recode PRCCSR_GIS017             (-99 -88 -66=.)
recode PRCCSR_GIS018             (-99 -88 -66=.)
recode PRCCSR_GIS019             (-99 -88 -66=.)
recode PRCCSR_GIS020             (-99 -88 -66=.)
recode PRCCSR_GIS021             (-99 -88 -66=.)
recode PRCCSR_GIS022             (-99 -88 -66=.)
recode PRCCSR_GIS023             (-99 -88 -66=.)
recode PRCCSR_GIS024             (-99 -88 -66=.)
recode PRCCSR_GIS025             (-99 -88 -66=.)
recode PRCCSR_GIS026             (-99 -88 -66=.)
recode PRCCSR_GIS027             (-99 -88 -66=.)
recode PRCCSR_GIS028             (-99 -88 -66=.)
recode PRCCSR_GIS029             (-99 -88 -66=.)
recode PRCCSR_GNR001             (-99 -88 -66=.)
recode PRCCSR_GNR002             (-99 -88 -66=.)
recode PRCCSR_GNR003             (-99 -88 -66=.)
recode PRCCSR_GNR004             (-99 -88 -66=.)
recode PRCCSR_GNR005             (-99 -88 -66=.)
recode PRCCSR_GNR006             (-99 -88 -66=.)
recode PRCCSR_GNR007             (-99 -88 -66=.)
recode PRCCSR_GNR008             (-99 -88 -66=.)
recode PRCCSR_GNR009             (-99 -88 -66=.)
recode PRCCSR_GNR010             (-99 -88 -66=.)
recode PRCCSR_HEP001             (-99 -88 -66=.)
recode PRCCSR_HEP002             (-99 -88 -66=.)
recode PRCCSR_HEP003             (-99 -88 -66=.)
recode PRCCSR_HEP004             (-99 -88 -66=.)
recode PRCCSR_HEP005             (-99 -88 -66=.)
recode PRCCSR_HEP006             (-99 -88 -66=.)
recode PRCCSR_HEP007             (-99 -88 -66=.)
recode PRCCSR_HEP008             (-99 -88 -66=.)
recode PRCCSR_HEP009             (-99 -88 -66=.)
recode PRCCSR_HEP010             (-99 -88 -66=.)
recode PRCCSR_HEP011             (-99 -88 -66=.)
recode PRCCSR_HEP012             (-99 -88 -66=.)
recode PRCCSR_HEP013             (-99 -88 -66=.)
recode PRCCSR_IMG001             (-99 -88 -66=.)
recode PRCCSR_IMG002             (-99 -88 -66=.)
recode PRCCSR_IMG003             (-99 -88 -66=.)
recode PRCCSR_IMG004             (-99 -88 -66=.)
recode PRCCSR_IMG005             (-99 -88 -66=.)
recode PRCCSR_IMG006             (-99 -88 -66=.)
recode PRCCSR_IMG007             (-99 -88 -66=.)
recode PRCCSR_IMG008             (-99 -88 -66=.)
recode PRCCSR_IMG009             (-99 -88 -66=.)
recode PRCCSR_IMG010             (-99 -88 -66=.)
recode PRCCSR_LYM001             (-99 -88 -66=.)
recode PRCCSR_LYM002             (-99 -88 -66=.)
recode PRCCSR_LYM003             (-99 -88 -66=.)
recode PRCCSR_LYM004             (-99 -88 -66=.)
recode PRCCSR_LYM005             (-99 -88 -66=.)
recode PRCCSR_LYM006             (-99 -88 -66=.)
recode PRCCSR_LYM007             (-99 -88 -66=.)
recode PRCCSR_LYM008             (-99 -88 -66=.)
recode PRCCSR_LYM009             (-99 -88 -66=.)
recode PRCCSR_LYM010             (-99 -88 -66=.)
recode PRCCSR_LYM011             (-99 -88 -66=.)
recode PRCCSR_MAM001             (-99 -88 -66=.)
recode PRCCSR_MAM002             (-99 -88 -66=.)
recode PRCCSR_MAM003             (-99 -88 -66=.)
recode PRCCSR_MAM004             (-99 -88 -66=.)
recode PRCCSR_MAM005             (-99 -88 -66=.)
recode PRCCSR_MAM006             (-99 -88 -66=.)
recode PRCCSR_MAM007             (-99 -88 -66=.)
recode PRCCSR_MAM008             (-99 -88 -66=.)
recode PRCCSR_MAM009             (-99 -88 -66=.)
recode PRCCSR_MAM010             (-99 -88 -66=.)
recode PRCCSR_MAM011             (-99 -88 -66=.)
recode PRCCSR_MAM012             (-99 -88 -66=.)
recode PRCCSR_MAM013             (-99 -88 -66=.)
recode PRCCSR_MAM014             (-99 -88 -66=.)
recode PRCCSR_MAM015             (-99 -88 -66=.)
recode PRCCSR_MHT001             (-99 -88 -66=.)
recode PRCCSR_MHT002             (-99 -88 -66=.)
recode PRCCSR_MHT003             (-99 -88 -66=.)
recode PRCCSR_MHT004             (-99 -88 -66=.)
recode PRCCSR_MHT005             (-99 -88 -66=.)
recode PRCCSR_MRS001             (-99 -88 -66=.)
recode PRCCSR_MRS002             (-99 -88 -66=.)
recode PRCCSR_MRS003             (-99 -88 -66=.)
recode PRCCSR_MRS004             (-99 -88 -66=.)
recode PRCCSR_MRS005             (-99 -88 -66=.)
recode PRCCSR_MRS006             (-99 -88 -66=.)
recode PRCCSR_MRS007             (-99 -88 -66=.)
recode PRCCSR_MST001             (-99 -88 -66=.)
recode PRCCSR_MST002             (-99 -88 -66=.)
recode PRCCSR_MST003             (-99 -88 -66=.)
recode PRCCSR_MST004             (-99 -88 -66=.)
recode PRCCSR_MST005             (-99 -88 -66=.)
recode PRCCSR_MST006             (-99 -88 -66=.)
recode PRCCSR_MST007             (-99 -88 -66=.)
recode PRCCSR_MST008             (-99 -88 -66=.)
recode PRCCSR_MST009             (-99 -88 -66=.)
recode PRCCSR_MST010             (-99 -88 -66=.)
recode PRCCSR_MST011             (-99 -88 -66=.)
recode PRCCSR_MST012             (-99 -88 -66=.)
recode PRCCSR_MST013             (-99 -88 -66=.)
recode PRCCSR_MST014             (-99 -88 -66=.)
recode PRCCSR_MST015             (-99 -88 -66=.)
recode PRCCSR_MST016             (-99 -88 -66=.)
recode PRCCSR_MST017             (-99 -88 -66=.)
recode PRCCSR_MST018             (-99 -88 -66=.)
recode PRCCSR_MST019             (-99 -88 -66=.)
recode PRCCSR_MST020             (-99 -88 -66=.)
recode PRCCSR_MST021             (-99 -88 -66=.)
recode PRCCSR_MST022             (-99 -88 -66=.)
recode PRCCSR_MST023             (-99 -88 -66=.)
recode PRCCSR_MST024             (-99 -88 -66=.)
recode PRCCSR_MST025             (-99 -88 -66=.)
recode PRCCSR_MST026             (-99 -88 -66=.)
recode PRCCSR_MST027             (-99 -88 -66=.)
recode PRCCSR_MST028             (-99 -88 -66=.)
recode PRCCSR_MST029             (-99 -88 -66=.)
recode PRCCSR_MST030             (-99 -88 -66=.)
recode PRCCSR_NCM001             (-99 -88 -66=.)
recode PRCCSR_NCM002             (-99 -88 -66=.)
recode PRCCSR_NCM003             (-99 -88 -66=.)
recode PRCCSR_NCM004             (-99 -88 -66=.)
recode PRCCSR_OST001             (-99 -88 -66=.)
recode PRCCSR_OTR001             (-99 -88 -66=.)
recode PRCCSR_OTR002             (-99 -88 -66=.)
recode PRCCSR_OTR003             (-99 -88 -66=.)
recode PRCCSR_OTR004             (-99 -88 -66=.)
recode PRCCSR_OTR005             (-99 -88 -66=.)
recode PRCCSR_PGN001             (-99 -88 -66=.)
recode PRCCSR_PGN002             (-99 -88 -66=.)
recode PRCCSR_PGN003             (-99 -88 -66=.)
recode PRCCSR_PGN004             (-99 -88 -66=.)
recode PRCCSR_PGN005             (-99 -88 -66=.)
recode PRCCSR_PGN006             (-99 -88 -66=.)
recode PRCCSR_PGN007             (-99 -88 -66=.)
recode PRCCSR_PGN008             (-99 -88 -66=.)
recode PRCCSR_PGN009             (-99 -88 -66=.)
recode PRCCSR_PLC001             (-99 -88 -66=.)
recode PRCCSR_PLC002             (-99 -88 -66=.)
recode PRCCSR_PNS001             (-99 -88 -66=.)
recode PRCCSR_PNS002             (-99 -88 -66=.)
recode PRCCSR_PNS003             (-99 -88 -66=.)
recode PRCCSR_PNS004             (-99 -88 -66=.)
recode PRCCSR_PNS005             (-99 -88 -66=.)
recode PRCCSR_PNS006             (-99 -88 -66=.)
recode PRCCSR_RAD001             (-99 -88 -66=.)
recode PRCCSR_RAD002             (-99 -88 -66=.)
recode PRCCSR_RAD003             (-99 -88 -66=.)
recode PRCCSR_RAD004             (-99 -88 -66=.)
recode PRCCSR_RES001             (-99 -88 -66=.)
recode PRCCSR_RES002             (-99 -88 -66=.)
recode PRCCSR_RES003             (-99 -88 -66=.)
recode PRCCSR_RES004             (-99 -88 -66=.)
recode PRCCSR_RES005             (-99 -88 -66=.)
recode PRCCSR_RES006             (-99 -88 -66=.)
recode PRCCSR_RES007             (-99 -88 -66=.)
recode PRCCSR_RES008             (-99 -88 -66=.)
recode PRCCSR_RES009             (-99 -88 -66=.)
recode PRCCSR_RES010             (-99 -88 -66=.)
recode PRCCSR_RES011             (-99 -88 -66=.)
recode PRCCSR_RES012             (-99 -88 -66=.)
recode PRCCSR_RES013             (-99 -88 -66=.)
recode PRCCSR_RES014             (-99 -88 -66=.)
recode PRCCSR_RHB001             (-99 -88 -66=.)
recode PRCCSR_RHB002             (-99 -88 -66=.)
recode PRCCSR_RHB003             (-99 -88 -66=.)
recode PRCCSR_RHB004             (-99 -88 -66=.)
recode PRCCSR_SKB001             (-99 -88 -66=.)
recode PRCCSR_SKB002             (-99 -88 -66=.)
recode PRCCSR_SKB003             (-99 -88 -66=.)
recode PRCCSR_SKB004             (-99 -88 -66=.)
recode PRCCSR_SKB005             (-99 -88 -66=.)
recode PRCCSR_SKB006             (-99 -88 -66=.)
recode PRCCSR_SKB007             (-99 -88 -66=.)
recode PRCCSR_SKB008             (-99 -88 -66=.)
recode PRCCSR_SKB009             (-99 -88 -66=.)
recode PRCCSR_SKB010             (-99 -88 -66=.)
recode PRCCSR_SUD001             (-99 -88 -66=.)
recode PRCCSR_SUD002             (-99 -88 -66=.)
recode PRCCSR_SUD003             (-99 -88 -66=.)
recode PRCCSR_SUD004             (-99 -88 -66=.)
recode PRCCSR_URN001             (-99 -88 -66=.)
recode PRCCSR_URN002             (-99 -88 -66=.)
recode PRCCSR_URN003             (-99 -88 -66=.)
recode PRCCSR_URN004             (-99 -88 -66=.)
recode PRCCSR_URN005             (-99 -88 -66=.)
recode PRCCSR_URN006             (-99 -88 -66=.)
recode PRCCSR_URN007             (-99 -88 -66=.)
recode PRCCSR_URN008             (-99 -88 -66=.)
recode PRCCSR_URN009             (-99 -88 -66=.)
recode PRCCSR_URN010             (-99 -88 -66=.)
recode PRCCSR_URN011             (-99 -88 -66=.)
recode PRCCSR_URN012             (-99 -88 -66=.)

save "WI_SID_2020_DX_PR_GRPS.dta", replace
