/*****************************************************************************
* Creation Date: 01/06/2022   
* UT_SEDD_2020_DX_PR_GRPS.Do
* This program will load the 2020 UT ASCII DX_PR_GRPS File into Stata.
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
      int    DXCCSR_BLD001               83-  85   ///
      int    DXCCSR_BLD002               86-  88   ///
      int    DXCCSR_BLD003               89-  91   ///
      int    DXCCSR_BLD004               92-  94   ///
      int    DXCCSR_BLD005               95-  97   ///
      int    DXCCSR_BLD006               98- 100   ///
      int    DXCCSR_BLD007              101- 103   ///
      int    DXCCSR_BLD008              104- 106   ///
      int    DXCCSR_BLD009              107- 109   ///
      int    DXCCSR_BLD010              110- 112   ///
      int    DXCCSR_CIR001              113- 115   ///
      int    DXCCSR_CIR002              116- 118   ///
      int    DXCCSR_CIR003              119- 121   ///
      int    DXCCSR_CIR004              122- 124   ///
      int    DXCCSR_CIR005              125- 127   ///
      int    DXCCSR_CIR006              128- 130   ///
      int    DXCCSR_CIR007              131- 133   ///
      int    DXCCSR_CIR008              134- 136   ///
      int    DXCCSR_CIR009              137- 139   ///
      int    DXCCSR_CIR010              140- 142   ///
      int    DXCCSR_CIR011              143- 145   ///
      int    DXCCSR_CIR012              146- 148   ///
      int    DXCCSR_CIR013              149- 151   ///
      int    DXCCSR_CIR014              152- 154   ///
      int    DXCCSR_CIR015              155- 157   ///
      int    DXCCSR_CIR016              158- 160   ///
      int    DXCCSR_CIR017              161- 163   ///
      int    DXCCSR_CIR018              164- 166   ///
      int    DXCCSR_CIR019              167- 169   ///
      int    DXCCSR_CIR020              170- 172   ///
      int    DXCCSR_CIR021              173- 175   ///
      int    DXCCSR_CIR022              176- 178   ///
      int    DXCCSR_CIR023              179- 181   ///
      int    DXCCSR_CIR024              182- 184   ///
      int    DXCCSR_CIR025              185- 187   ///
      int    DXCCSR_CIR026              188- 190   ///
      int    DXCCSR_CIR027              191- 193   ///
      int    DXCCSR_CIR028              194- 196   ///
      int    DXCCSR_CIR029              197- 199   ///
      int    DXCCSR_CIR030              200- 202   ///
      int    DXCCSR_CIR031              203- 205   ///
      int    DXCCSR_CIR032              206- 208   ///
      int    DXCCSR_CIR033              209- 211   ///
      int    DXCCSR_CIR034              212- 214   ///
      int    DXCCSR_CIR035              215- 217   ///
      int    DXCCSR_CIR036              218- 220   ///
      int    DXCCSR_CIR037              221- 223   ///
      int    DXCCSR_CIR038              224- 226   ///
      int    DXCCSR_CIR039              227- 229   ///
      str    DXCCSR_Default_DX1         230- 235   ///
      int    DXCCSR_DIG001              236- 238   ///
      int    DXCCSR_DIG002              239- 241   ///
      int    DXCCSR_DIG003              242- 244   ///
      int    DXCCSR_DIG004              245- 247   ///
      int    DXCCSR_DIG005              248- 250   ///
      int    DXCCSR_DIG006              251- 253   ///
      int    DXCCSR_DIG007              254- 256   ///
      int    DXCCSR_DIG008              257- 259   ///
      int    DXCCSR_DIG009              260- 262   ///
      int    DXCCSR_DIG010              263- 265   ///
      int    DXCCSR_DIG011              266- 268   ///
      int    DXCCSR_DIG012              269- 271   ///
      int    DXCCSR_DIG013              272- 274   ///
      int    DXCCSR_DIG014              275- 277   ///
      int    DXCCSR_DIG015              278- 280   ///
      int    DXCCSR_DIG016              281- 283   ///
      int    DXCCSR_DIG017              284- 286   ///
      int    DXCCSR_DIG018              287- 289   ///
      int    DXCCSR_DIG019              290- 292   ///
      int    DXCCSR_DIG020              293- 295   ///
      int    DXCCSR_DIG021              296- 298   ///
      int    DXCCSR_DIG022              299- 301   ///
      int    DXCCSR_DIG023              302- 304   ///
      int    DXCCSR_DIG024              305- 307   ///
      int    DXCCSR_DIG025              308- 310   ///
      int    DXCCSR_EAR001              311- 313   ///
      int    DXCCSR_EAR002              314- 316   ///
      int    DXCCSR_EAR003              317- 319   ///
      int    DXCCSR_EAR004              320- 322   ///
      int    DXCCSR_EAR005              323- 325   ///
      int    DXCCSR_EAR006              326- 328   ///
      int    DXCCSR_END001              329- 331   ///
      int    DXCCSR_END002              332- 334   ///
      int    DXCCSR_END003              335- 337   ///
      int    DXCCSR_END004              338- 340   ///
      int    DXCCSR_END005              341- 343   ///
      int    DXCCSR_END006              344- 346   ///
      int    DXCCSR_END007              347- 349   ///
      int    DXCCSR_END008              350- 352   ///
      int    DXCCSR_END009              353- 355   ///
      int    DXCCSR_END010              356- 358   ///
      int    DXCCSR_END011              359- 361   ///
      int    DXCCSR_END012              362- 364   ///
      int    DXCCSR_END013              365- 367   ///
      int    DXCCSR_END014              368- 370   ///
      int    DXCCSR_END015              371- 373   ///
      int    DXCCSR_END016              374- 376   ///
      int    DXCCSR_END017              377- 379   ///
      int    DXCCSR_EXT001              380- 382   ///
      int    DXCCSR_EXT002              383- 385   ///
      int    DXCCSR_EXT003              386- 388   ///
      int    DXCCSR_EXT004              389- 391   ///
      int    DXCCSR_EXT005              392- 394   ///
      int    DXCCSR_EXT006              395- 397   ///
      int    DXCCSR_EXT007              398- 400   ///
      int    DXCCSR_EXT008              401- 403   ///
      int    DXCCSR_EXT009              404- 406   ///
      int    DXCCSR_EXT010              407- 409   ///
      int    DXCCSR_EXT011              410- 412   ///
      int    DXCCSR_EXT012              413- 415   ///
      int    DXCCSR_EXT013              416- 418   ///
      int    DXCCSR_EXT014              419- 421   ///
      int    DXCCSR_EXT015              422- 424   ///
      int    DXCCSR_EXT016              425- 427   ///
      int    DXCCSR_EXT017              428- 430   ///
      int    DXCCSR_EXT018              431- 433   ///
      int    DXCCSR_EXT019              434- 436   ///
      int    DXCCSR_EXT020              437- 439   ///
      int    DXCCSR_EXT021              440- 442   ///
      int    DXCCSR_EXT022              443- 445   ///
      int    DXCCSR_EXT023              446- 448   ///
      int    DXCCSR_EXT024              449- 451   ///
      int    DXCCSR_EXT025              452- 454   ///
      int    DXCCSR_EXT026              455- 457   ///
      int    DXCCSR_EXT027              458- 460   ///
      int    DXCCSR_EXT028              461- 463   ///
      int    DXCCSR_EXT029              464- 466   ///
      int    DXCCSR_EXT030              467- 469   ///
      int    DXCCSR_EYE001              470- 472   ///
      int    DXCCSR_EYE002              473- 475   ///
      int    DXCCSR_EYE003              476- 478   ///
      int    DXCCSR_EYE004              479- 481   ///
      int    DXCCSR_EYE005              482- 484   ///
      int    DXCCSR_EYE006              485- 487   ///
      int    DXCCSR_EYE007              488- 490   ///
      int    DXCCSR_EYE008              491- 493   ///
      int    DXCCSR_EYE009              494- 496   ///
      int    DXCCSR_EYE010              497- 499   ///
      int    DXCCSR_EYE011              500- 502   ///
      int    DXCCSR_EYE012              503- 505   ///
      int    DXCCSR_FAC001              506- 508   ///
      int    DXCCSR_FAC002              509- 511   ///
      int    DXCCSR_FAC003              512- 514   ///
      int    DXCCSR_FAC004              515- 517   ///
      int    DXCCSR_FAC005              518- 520   ///
      int    DXCCSR_FAC006              521- 523   ///
      int    DXCCSR_FAC007              524- 526   ///
      int    DXCCSR_FAC008              527- 529   ///
      int    DXCCSR_FAC009              530- 532   ///
      int    DXCCSR_FAC010              533- 535   ///
      int    DXCCSR_FAC011              536- 538   ///
      int    DXCCSR_FAC012              539- 541   ///
      int    DXCCSR_FAC013              542- 544   ///
      int    DXCCSR_FAC014              545- 547   ///
      int    DXCCSR_FAC015              548- 550   ///
      int    DXCCSR_FAC016              551- 553   ///
      int    DXCCSR_FAC017              554- 556   ///
      int    DXCCSR_FAC018              557- 559   ///
      int    DXCCSR_FAC019              560- 562   ///
      int    DXCCSR_FAC020              563- 565   ///
      int    DXCCSR_FAC021              566- 568   ///
      int    DXCCSR_FAC022              569- 571   ///
      int    DXCCSR_FAC023              572- 574   ///
      int    DXCCSR_FAC024              575- 577   ///
      int    DXCCSR_FAC025              578- 580   ///
      int    DXCCSR_GEN001              581- 583   ///
      int    DXCCSR_GEN002              584- 586   ///
      int    DXCCSR_GEN003              587- 589   ///
      int    DXCCSR_GEN004              590- 592   ///
      int    DXCCSR_GEN005              593- 595   ///
      int    DXCCSR_GEN006              596- 598   ///
      int    DXCCSR_GEN007              599- 601   ///
      int    DXCCSR_GEN008              602- 604   ///
      int    DXCCSR_GEN009              605- 607   ///
      int    DXCCSR_GEN010              608- 610   ///
      int    DXCCSR_GEN011              611- 613   ///
      int    DXCCSR_GEN012              614- 616   ///
      int    DXCCSR_GEN013              617- 619   ///
      int    DXCCSR_GEN014              620- 622   ///
      int    DXCCSR_GEN015              623- 625   ///
      int    DXCCSR_GEN016              626- 628   ///
      int    DXCCSR_GEN017              629- 631   ///
      int    DXCCSR_GEN018              632- 634   ///
      int    DXCCSR_GEN019              635- 637   ///
      int    DXCCSR_GEN020              638- 640   ///
      int    DXCCSR_GEN021              641- 643   ///
      int    DXCCSR_GEN022              644- 646   ///
      int    DXCCSR_GEN023              647- 649   ///
      int    DXCCSR_GEN024              650- 652   ///
      int    DXCCSR_GEN025              653- 655   ///
      int    DXCCSR_GEN026              656- 658   ///
      int    DXCCSR_INF001              659- 661   ///
      int    DXCCSR_INF002              662- 664   ///
      int    DXCCSR_INF003              665- 667   ///
      int    DXCCSR_INF004              668- 670   ///
      int    DXCCSR_INF005              671- 673   ///
      int    DXCCSR_INF006              674- 676   ///
      int    DXCCSR_INF007              677- 679   ///
      int    DXCCSR_INF008              680- 682   ///
      int    DXCCSR_INF009              683- 685   ///
      int    DXCCSR_INF010              686- 688   ///
      int    DXCCSR_INF011              689- 691   ///
      int    DXCCSR_INF012              692- 694   ///
      int    DXCCSR_INJ001              695- 697   ///
      int    DXCCSR_INJ002              698- 700   ///
      int    DXCCSR_INJ003              701- 703   ///
      int    DXCCSR_INJ004              704- 706   ///
      int    DXCCSR_INJ005              707- 709   ///
      int    DXCCSR_INJ006              710- 712   ///
      int    DXCCSR_INJ007              713- 715   ///
      int    DXCCSR_INJ008              716- 718   ///
      int    DXCCSR_INJ009              719- 721   ///
      int    DXCCSR_INJ010              722- 724   ///
      int    DXCCSR_INJ011              725- 727   ///
      int    DXCCSR_INJ012              728- 730   ///
      int    DXCCSR_INJ013              731- 733   ///
      int    DXCCSR_INJ014              734- 736   ///
      int    DXCCSR_INJ015              737- 739   ///
      int    DXCCSR_INJ016              740- 742   ///
      int    DXCCSR_INJ017              743- 745   ///
      int    DXCCSR_INJ018              746- 748   ///
      int    DXCCSR_INJ019              749- 751   ///
      int    DXCCSR_INJ020              752- 754   ///
      int    DXCCSR_INJ021              755- 757   ///
      int    DXCCSR_INJ022              758- 760   ///
      int    DXCCSR_INJ023              761- 763   ///
      int    DXCCSR_INJ024              764- 766   ///
      int    DXCCSR_INJ025              767- 769   ///
      int    DXCCSR_INJ026              770- 772   ///
      int    DXCCSR_INJ027              773- 775   ///
      int    DXCCSR_INJ028              776- 778   ///
      int    DXCCSR_INJ029              779- 781   ///
      int    DXCCSR_INJ030              782- 784   ///
      int    DXCCSR_INJ031              785- 787   ///
      int    DXCCSR_INJ032              788- 790   ///
      int    DXCCSR_INJ033              791- 793   ///
      int    DXCCSR_INJ034              794- 796   ///
      int    DXCCSR_INJ035              797- 799   ///
      int    DXCCSR_INJ036              800- 802   ///
      int    DXCCSR_INJ037              803- 805   ///
      int    DXCCSR_INJ038              806- 808   ///
      int    DXCCSR_INJ039              809- 811   ///
      int    DXCCSR_INJ040              812- 814   ///
      int    DXCCSR_INJ041              815- 817   ///
      int    DXCCSR_INJ042              818- 820   ///
      int    DXCCSR_INJ043              821- 823   ///
      int    DXCCSR_INJ044              824- 826   ///
      int    DXCCSR_INJ045              827- 829   ///
      int    DXCCSR_INJ046              830- 832   ///
      int    DXCCSR_INJ047              833- 835   ///
      int    DXCCSR_INJ048              836- 838   ///
      int    DXCCSR_INJ049              839- 841   ///
      int    DXCCSR_INJ050              842- 844   ///
      int    DXCCSR_INJ051              845- 847   ///
      int    DXCCSR_INJ052              848- 850   ///
      int    DXCCSR_INJ053              851- 853   ///
      int    DXCCSR_INJ054              854- 856   ///
      int    DXCCSR_INJ055              857- 859   ///
      int    DXCCSR_INJ056              860- 862   ///
      int    DXCCSR_INJ057              863- 865   ///
      int    DXCCSR_INJ058              866- 868   ///
      int    DXCCSR_INJ059              869- 871   ///
      int    DXCCSR_INJ060              872- 874   ///
      int    DXCCSR_INJ061              875- 877   ///
      int    DXCCSR_INJ062              878- 880   ///
      int    DXCCSR_INJ063              881- 883   ///
      int    DXCCSR_INJ064              884- 886   ///
      int    DXCCSR_INJ065              887- 889   ///
      int    DXCCSR_INJ066              890- 892   ///
      int    DXCCSR_INJ067              893- 895   ///
      int    DXCCSR_INJ068              896- 898   ///
      int    DXCCSR_INJ069              899- 901   ///
      int    DXCCSR_INJ070              902- 904   ///
      int    DXCCSR_INJ071              905- 907   ///
      int    DXCCSR_INJ072              908- 910   ///
      int    DXCCSR_INJ073              911- 913   ///
      int    DXCCSR_INJ074              914- 916   ///
      int    DXCCSR_INJ075              917- 919   ///
      int    DXCCSR_INJ076              920- 922   ///
      int    DXCCSR_MAL001              923- 925   ///
      int    DXCCSR_MAL002              926- 928   ///
      int    DXCCSR_MAL003              929- 931   ///
      int    DXCCSR_MAL004              932- 934   ///
      int    DXCCSR_MAL005              935- 937   ///
      int    DXCCSR_MAL006              938- 940   ///
      int    DXCCSR_MAL007              941- 943   ///
      int    DXCCSR_MAL008              944- 946   ///
      int    DXCCSR_MAL009              947- 949   ///
      int    DXCCSR_MAL010              950- 952   ///
      int    DXCCSR_MBD001              953- 955   ///
      int    DXCCSR_MBD002              956- 958   ///
      int    DXCCSR_MBD003              959- 961   ///
      int    DXCCSR_MBD004              962- 964   ///
      int    DXCCSR_MBD005              965- 967   ///
      int    DXCCSR_MBD006              968- 970   ///
      int    DXCCSR_MBD007              971- 973   ///
      int    DXCCSR_MBD008              974- 976   ///
      int    DXCCSR_MBD009              977- 979   ///
      int    DXCCSR_MBD010              980- 982   ///
      int    DXCCSR_MBD011              983- 985   ///
      int    DXCCSR_MBD012              986- 988   ///
      int    DXCCSR_MBD013              989- 991   ///
      int    DXCCSR_MBD014              992- 994   ///
      int    DXCCSR_MBD017              995- 997   ///
      int    DXCCSR_MBD018              998-1000   ///
      int    DXCCSR_MBD019             1001-1003   ///
      int    DXCCSR_MBD020             1004-1006   ///
      int    DXCCSR_MBD021             1007-1009   ///
      int    DXCCSR_MBD022             1010-1012   ///
      int    DXCCSR_MBD023             1013-1015   ///
      int    DXCCSR_MBD024             1016-1018   ///
      int    DXCCSR_MBD025             1019-1021   ///
      int    DXCCSR_MBD026             1022-1024   ///
      int    DXCCSR_MBD027             1025-1027   ///
      int    DXCCSR_MBD028             1028-1030   ///
      int    DXCCSR_MBD029             1031-1033   ///
      int    DXCCSR_MBD030             1034-1036   ///
      int    DXCCSR_MBD031             1037-1039   ///
      int    DXCCSR_MBD032             1040-1042   ///
      int    DXCCSR_MBD033             1043-1045   ///
      int    DXCCSR_MBD034             1046-1048   ///
      int    DXCCSR_MUS001             1049-1051   ///
      int    DXCCSR_MUS002             1052-1054   ///
      int    DXCCSR_MUS003             1055-1057   ///
      int    DXCCSR_MUS004             1058-1060   ///
      int    DXCCSR_MUS005             1061-1063   ///
      int    DXCCSR_MUS006             1064-1066   ///
      int    DXCCSR_MUS007             1067-1069   ///
      int    DXCCSR_MUS008             1070-1072   ///
      int    DXCCSR_MUS009             1073-1075   ///
      int    DXCCSR_MUS010             1076-1078   ///
      int    DXCCSR_MUS011             1079-1081   ///
      int    DXCCSR_MUS012             1082-1084   ///
      int    DXCCSR_MUS013             1085-1087   ///
      int    DXCCSR_MUS014             1088-1090   ///
      int    DXCCSR_MUS015             1091-1093   ///
      int    DXCCSR_MUS016             1094-1096   ///
      int    DXCCSR_MUS017             1097-1099   ///
      int    DXCCSR_MUS018             1100-1102   ///
      int    DXCCSR_MUS019             1103-1105   ///
      int    DXCCSR_MUS020             1106-1108   ///
      int    DXCCSR_MUS021             1109-1111   ///
      int    DXCCSR_MUS022             1112-1114   ///
      int    DXCCSR_MUS023             1115-1117   ///
      int    DXCCSR_MUS024             1118-1120   ///
      int    DXCCSR_MUS025             1121-1123   ///
      int    DXCCSR_MUS026             1124-1126   ///
      int    DXCCSR_MUS027             1127-1129   ///
      int    DXCCSR_MUS028             1130-1132   ///
      int    DXCCSR_MUS029             1133-1135   ///
      int    DXCCSR_MUS030             1136-1138   ///
      int    DXCCSR_MUS031             1139-1141   ///
      int    DXCCSR_MUS032             1142-1144   ///
      int    DXCCSR_MUS033             1145-1147   ///
      int    DXCCSR_MUS034             1148-1150   ///
      int    DXCCSR_MUS035             1151-1153   ///
      int    DXCCSR_MUS036             1154-1156   ///
      int    DXCCSR_MUS037             1157-1159   ///
      int    DXCCSR_MUS038             1160-1162   ///
      int    DXCCSR_NEO001             1163-1165   ///
      int    DXCCSR_NEO002             1166-1168   ///
      int    DXCCSR_NEO003             1169-1171   ///
      int    DXCCSR_NEO004             1172-1174   ///
      int    DXCCSR_NEO005             1175-1177   ///
      int    DXCCSR_NEO006             1178-1180   ///
      int    DXCCSR_NEO007             1181-1183   ///
      int    DXCCSR_NEO008             1184-1186   ///
      int    DXCCSR_NEO009             1187-1189   ///
      int    DXCCSR_NEO010             1190-1192   ///
      int    DXCCSR_NEO011             1193-1195   ///
      int    DXCCSR_NEO012             1196-1198   ///
      int    DXCCSR_NEO013             1199-1201   ///
      int    DXCCSR_NEO014             1202-1204   ///
      int    DXCCSR_NEO015             1205-1207   ///
      int    DXCCSR_NEO016             1208-1210   ///
      int    DXCCSR_NEO017             1211-1213   ///
      int    DXCCSR_NEO018             1214-1216   ///
      int    DXCCSR_NEO019             1217-1219   ///
      int    DXCCSR_NEO020             1220-1222   ///
      int    DXCCSR_NEO021             1223-1225   ///
      int    DXCCSR_NEO022             1226-1228   ///
      int    DXCCSR_NEO023             1229-1231   ///
      int    DXCCSR_NEO024             1232-1234   ///
      int    DXCCSR_NEO025             1235-1237   ///
      int    DXCCSR_NEO026             1238-1240   ///
      int    DXCCSR_NEO027             1241-1243   ///
      int    DXCCSR_NEO028             1244-1246   ///
      int    DXCCSR_NEO029             1247-1249   ///
      int    DXCCSR_NEO030             1250-1252   ///
      int    DXCCSR_NEO031             1253-1255   ///
      int    DXCCSR_NEO032             1256-1258   ///
      int    DXCCSR_NEO033             1259-1261   ///
      int    DXCCSR_NEO034             1262-1264   ///
      int    DXCCSR_NEO035             1265-1267   ///
      int    DXCCSR_NEO036             1268-1270   ///
      int    DXCCSR_NEO037             1271-1273   ///
      int    DXCCSR_NEO038             1274-1276   ///
      int    DXCCSR_NEO039             1277-1279   ///
      int    DXCCSR_NEO040             1280-1282   ///
      int    DXCCSR_NEO041             1283-1285   ///
      int    DXCCSR_NEO042             1286-1288   ///
      int    DXCCSR_NEO043             1289-1291   ///
      int    DXCCSR_NEO044             1292-1294   ///
      int    DXCCSR_NEO045             1295-1297   ///
      int    DXCCSR_NEO046             1298-1300   ///
      int    DXCCSR_NEO047             1301-1303   ///
      int    DXCCSR_NEO048             1304-1306   ///
      int    DXCCSR_NEO049             1307-1309   ///
      int    DXCCSR_NEO050             1310-1312   ///
      int    DXCCSR_NEO051             1313-1315   ///
      int    DXCCSR_NEO052             1316-1318   ///
      int    DXCCSR_NEO053             1319-1321   ///
      int    DXCCSR_NEO054             1322-1324   ///
      int    DXCCSR_NEO055             1325-1327   ///
      int    DXCCSR_NEO056             1328-1330   ///
      int    DXCCSR_NEO057             1331-1333   ///
      int    DXCCSR_NEO058             1334-1336   ///
      int    DXCCSR_NEO059             1337-1339   ///
      int    DXCCSR_NEO060             1340-1342   ///
      int    DXCCSR_NEO061             1343-1345   ///
      int    DXCCSR_NEO062             1346-1348   ///
      int    DXCCSR_NEO063             1349-1351   ///
      int    DXCCSR_NEO064             1352-1354   ///
      int    DXCCSR_NEO065             1355-1357   ///
      int    DXCCSR_NEO066             1358-1360   ///
      int    DXCCSR_NEO067             1361-1363   ///
      int    DXCCSR_NEO068             1364-1366   ///
      int    DXCCSR_NEO069             1367-1369   ///
      int    DXCCSR_NEO070             1370-1372   ///
      int    DXCCSR_NEO071             1373-1375   ///
      int    DXCCSR_NEO072             1376-1378   ///
      int    DXCCSR_NEO073             1379-1381   ///
      int    DXCCSR_NEO074             1382-1384   ///
      int    DXCCSR_NVS001             1385-1387   ///
      int    DXCCSR_NVS002             1388-1390   ///
      int    DXCCSR_NVS003             1391-1393   ///
      int    DXCCSR_NVS004             1394-1396   ///
      int    DXCCSR_NVS005             1397-1399   ///
      int    DXCCSR_NVS006             1400-1402   ///
      int    DXCCSR_NVS007             1403-1405   ///
      int    DXCCSR_NVS008             1406-1408   ///
      int    DXCCSR_NVS009             1409-1411   ///
      int    DXCCSR_NVS010             1412-1414   ///
      int    DXCCSR_NVS011             1415-1417   ///
      int    DXCCSR_NVS012             1418-1420   ///
      int    DXCCSR_NVS013             1421-1423   ///
      int    DXCCSR_NVS014             1424-1426   ///
      int    DXCCSR_NVS015             1427-1429   ///
      int    DXCCSR_NVS016             1430-1432   ///
      int    DXCCSR_NVS017             1433-1435   ///
      int    DXCCSR_NVS018             1436-1438   ///
      int    DXCCSR_NVS019             1439-1441   ///
      int    DXCCSR_NVS020             1442-1444   ///
      int    DXCCSR_NVS021             1445-1447   ///
      int    DXCCSR_NVS022             1448-1450   ///
      int    DXCCSR_PNL001             1451-1453   ///
      int    DXCCSR_PNL002             1454-1456   ///
      int    DXCCSR_PNL003             1457-1459   ///
      int    DXCCSR_PNL004             1460-1462   ///
      int    DXCCSR_PNL005             1463-1465   ///
      int    DXCCSR_PNL006             1466-1468   ///
      int    DXCCSR_PNL007             1469-1471   ///
      int    DXCCSR_PNL008             1472-1474   ///
      int    DXCCSR_PNL009             1475-1477   ///
      int    DXCCSR_PNL010             1478-1480   ///
      int    DXCCSR_PNL011             1481-1483   ///
      int    DXCCSR_PNL012             1484-1486   ///
      int    DXCCSR_PNL013             1487-1489   ///
      int    DXCCSR_PNL014             1490-1492   ///
      int    DXCCSR_PNL015             1493-1495   ///
      int    DXCCSR_PRG001             1496-1498   ///
      int    DXCCSR_PRG002             1499-1501   ///
      int    DXCCSR_PRG003             1502-1504   ///
      int    DXCCSR_PRG004             1505-1507   ///
      int    DXCCSR_PRG005             1508-1510   ///
      int    DXCCSR_PRG006             1511-1513   ///
      int    DXCCSR_PRG007             1514-1516   ///
      int    DXCCSR_PRG008             1517-1519   ///
      int    DXCCSR_PRG009             1520-1522   ///
      int    DXCCSR_PRG010             1523-1525   ///
      int    DXCCSR_PRG011             1526-1528   ///
      int    DXCCSR_PRG012             1529-1531   ///
      int    DXCCSR_PRG013             1532-1534   ///
      int    DXCCSR_PRG014             1535-1537   ///
      int    DXCCSR_PRG015             1538-1540   ///
      int    DXCCSR_PRG016             1541-1543   ///
      int    DXCCSR_PRG017             1544-1546   ///
      int    DXCCSR_PRG018             1547-1549   ///
      int    DXCCSR_PRG019             1550-1552   ///
      int    DXCCSR_PRG020             1553-1555   ///
      int    DXCCSR_PRG021             1556-1558   ///
      int    DXCCSR_PRG022             1559-1561   ///
      int    DXCCSR_PRG023             1562-1564   ///
      int    DXCCSR_PRG024             1565-1567   ///
      int    DXCCSR_PRG025             1568-1570   ///
      int    DXCCSR_PRG026             1571-1573   ///
      int    DXCCSR_PRG027             1574-1576   ///
      int    DXCCSR_PRG028             1577-1579   ///
      int    DXCCSR_PRG029             1580-1582   ///
      int    DXCCSR_PRG030             1583-1585   ///
      int    DXCCSR_RSP001             1586-1588   ///
      int    DXCCSR_RSP002             1589-1591   ///
      int    DXCCSR_RSP003             1592-1594   ///
      int    DXCCSR_RSP004             1595-1597   ///
      int    DXCCSR_RSP005             1598-1600   ///
      int    DXCCSR_RSP006             1601-1603   ///
      int    DXCCSR_RSP007             1604-1606   ///
      int    DXCCSR_RSP008             1607-1609   ///
      int    DXCCSR_RSP009             1610-1612   ///
      int    DXCCSR_RSP010             1613-1615   ///
      int    DXCCSR_RSP011             1616-1618   ///
      int    DXCCSR_RSP012             1619-1621   ///
      int    DXCCSR_RSP013             1622-1624   ///
      int    DXCCSR_RSP014             1625-1627   ///
      int    DXCCSR_RSP015             1628-1630   ///
      int    DXCCSR_RSP016             1631-1633   ///
      int    DXCCSR_RSP017             1634-1636   ///
      int    DXCCSR_SKN001             1637-1639   ///
      int    DXCCSR_SKN002             1640-1642   ///
      int    DXCCSR_SKN003             1643-1645   ///
      int    DXCCSR_SKN004             1646-1648   ///
      int    DXCCSR_SKN005             1649-1651   ///
      int    DXCCSR_SKN006             1652-1654   ///
      int    DXCCSR_SKN007             1655-1657   ///
      int    DXCCSR_SYM001             1658-1660   ///
      int    DXCCSR_SYM002             1661-1663   ///
      int    DXCCSR_SYM003             1664-1666   ///
      int    DXCCSR_SYM004             1667-1669   ///
      int    DXCCSR_SYM005             1670-1672   ///
      int    DXCCSR_SYM006             1673-1675   ///
      int    DXCCSR_SYM007             1676-1678   ///
      int    DXCCSR_SYM008             1679-1681   ///
      int    DXCCSR_SYM009             1682-1684   ///
      int    DXCCSR_SYM010             1685-1687   ///
      int    DXCCSR_SYM011             1688-1690   ///
      int    DXCCSR_SYM012             1691-1693   ///
      int    DXCCSR_SYM013             1694-1696   ///
      int    DXCCSR_SYM014             1697-1699   ///
      int    DXCCSR_SYM015             1700-1702   ///
      int    DXCCSR_SYM016             1703-1705   ///
      int    DXCCSR_SYM017             1706-1708   ///
      str    DXCCSR_VERSION            1709-1714   ///
      byte   I10_INJURY                1715-1716   ///
      byte   I10_INJURY_CUT            1717-1718   ///
      byte   I10_INJURY_DROWN          1719-1720   ///
      byte   I10_INJURY_FALL           1721-1722   ///
      byte   I10_INJURY_FIRE           1723-1724   ///
      byte   I10_INJURY_FIREARM        1725-1726   ///
      byte   I10_INJURY_MACHINERY      1727-1728   ///
      byte   I10_INJURY_MVT            1729-1730   ///
      byte   I10_INJURY_NATURE         1731-1732   ///
      byte   I10_INJURY_OVEREXERTION   1733-1734   ///
      byte   I10_INJURY_POISON         1735-1736   ///
      byte   I10_INJURY_STRUCK         1737-1738   ///
      byte   I10_INJURY_SUFFOCATION    1739-1740   ///
      byte   I10_INTENT_ASSAULT        1741-1742   ///
      byte   I10_INTENT_SELF_HARM      1743-1744   ///
      byte   I10_INTENT_UNINTENTIONAL  1745-1746   ///
      byte   I10_MULTINJURY            1747-1748   ///
      double KEY                       1749-1763   ///
      using  "UT_SEDD_2020_DX_PR_GRPS.ASC"

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
label var DXCCSR_Default_DX1       "Default CCSR for principal/first-listed ICD-10-CM diagnosis"
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

save "UT_SEDD_2020_DX_PR_GRPS.dta", replace
