/*****************************************************************************
* Creation Date: 03/31/2022   
* NM_SID_2020_DX_PR_GRPS.Do
* This program will load the 2020 NM ASCII DX_PR_GRPS File into Stata.
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
      str    DXCCSR_Default_DX1         150- 155   ///
      int    DXCCSR_BLD001              156- 158   ///
      int    DXCCSR_BLD002              159- 161   ///
      int    DXCCSR_BLD003              162- 164   ///
      int    DXCCSR_BLD004              165- 167   ///
      int    DXCCSR_BLD005              168- 170   ///
      int    DXCCSR_BLD006              171- 173   ///
      int    DXCCSR_BLD007              174- 176   ///
      int    DXCCSR_BLD008              177- 179   ///
      int    DXCCSR_BLD009              180- 182   ///
      int    DXCCSR_BLD010              183- 185   ///
      int    DXCCSR_CIR001              186- 188   ///
      int    DXCCSR_CIR002              189- 191   ///
      int    DXCCSR_CIR003              192- 194   ///
      int    DXCCSR_CIR004              195- 197   ///
      int    DXCCSR_CIR005              198- 200   ///
      int    DXCCSR_CIR006              201- 203   ///
      int    DXCCSR_CIR007              204- 206   ///
      int    DXCCSR_CIR008              207- 209   ///
      int    DXCCSR_CIR009              210- 212   ///
      int    DXCCSR_CIR010              213- 215   ///
      int    DXCCSR_CIR011              216- 218   ///
      int    DXCCSR_CIR012              219- 221   ///
      int    DXCCSR_CIR013              222- 224   ///
      int    DXCCSR_CIR014              225- 227   ///
      int    DXCCSR_CIR015              228- 230   ///
      int    DXCCSR_CIR016              231- 233   ///
      int    DXCCSR_CIR017              234- 236   ///
      int    DXCCSR_CIR018              237- 239   ///
      int    DXCCSR_CIR019              240- 242   ///
      int    DXCCSR_CIR020              243- 245   ///
      int    DXCCSR_CIR021              246- 248   ///
      int    DXCCSR_CIR022              249- 251   ///
      int    DXCCSR_CIR023              252- 254   ///
      int    DXCCSR_CIR024              255- 257   ///
      int    DXCCSR_CIR025              258- 260   ///
      int    DXCCSR_CIR026              261- 263   ///
      int    DXCCSR_CIR027              264- 266   ///
      int    DXCCSR_CIR028              267- 269   ///
      int    DXCCSR_CIR029              270- 272   ///
      int    DXCCSR_CIR030              273- 275   ///
      int    DXCCSR_CIR031              276- 278   ///
      int    DXCCSR_CIR032              279- 281   ///
      int    DXCCSR_CIR033              282- 284   ///
      int    DXCCSR_CIR034              285- 287   ///
      int    DXCCSR_CIR035              288- 290   ///
      int    DXCCSR_CIR036              291- 293   ///
      int    DXCCSR_CIR037              294- 296   ///
      int    DXCCSR_CIR038              297- 299   ///
      int    DXCCSR_CIR039              300- 302   ///
      int    DXCCSR_DIG001              303- 305   ///
      int    DXCCSR_DIG002              306- 308   ///
      int    DXCCSR_DIG003              309- 311   ///
      int    DXCCSR_DIG004              312- 314   ///
      int    DXCCSR_DIG005              315- 317   ///
      int    DXCCSR_DIG006              318- 320   ///
      int    DXCCSR_DIG007              321- 323   ///
      int    DXCCSR_DIG008              324- 326   ///
      int    DXCCSR_DIG009              327- 329   ///
      int    DXCCSR_DIG010              330- 332   ///
      int    DXCCSR_DIG011              333- 335   ///
      int    DXCCSR_DIG012              336- 338   ///
      int    DXCCSR_DIG013              339- 341   ///
      int    DXCCSR_DIG014              342- 344   ///
      int    DXCCSR_DIG015              345- 347   ///
      int    DXCCSR_DIG016              348- 350   ///
      int    DXCCSR_DIG017              351- 353   ///
      int    DXCCSR_DIG018              354- 356   ///
      int    DXCCSR_DIG019              357- 359   ///
      int    DXCCSR_DIG020              360- 362   ///
      int    DXCCSR_DIG021              363- 365   ///
      int    DXCCSR_DIG022              366- 368   ///
      int    DXCCSR_DIG023              369- 371   ///
      int    DXCCSR_DIG024              372- 374   ///
      int    DXCCSR_DIG025              375- 377   ///
      int    DXCCSR_EAR001              378- 380   ///
      int    DXCCSR_EAR002              381- 383   ///
      int    DXCCSR_EAR003              384- 386   ///
      int    DXCCSR_EAR004              387- 389   ///
      int    DXCCSR_EAR005              390- 392   ///
      int    DXCCSR_EAR006              393- 395   ///
      int    DXCCSR_END001              396- 398   ///
      int    DXCCSR_END002              399- 401   ///
      int    DXCCSR_END003              402- 404   ///
      int    DXCCSR_END004              405- 407   ///
      int    DXCCSR_END005              408- 410   ///
      int    DXCCSR_END006              411- 413   ///
      int    DXCCSR_END007              414- 416   ///
      int    DXCCSR_END008              417- 419   ///
      int    DXCCSR_END009              420- 422   ///
      int    DXCCSR_END010              423- 425   ///
      int    DXCCSR_END011              426- 428   ///
      int    DXCCSR_END012              429- 431   ///
      int    DXCCSR_END013              432- 434   ///
      int    DXCCSR_END014              435- 437   ///
      int    DXCCSR_END015              438- 440   ///
      int    DXCCSR_END016              441- 443   ///
      int    DXCCSR_END017              444- 446   ///
      int    DXCCSR_EXT001              447- 449   ///
      int    DXCCSR_EXT002              450- 452   ///
      int    DXCCSR_EXT003              453- 455   ///
      int    DXCCSR_EXT004              456- 458   ///
      int    DXCCSR_EXT005              459- 461   ///
      int    DXCCSR_EXT006              462- 464   ///
      int    DXCCSR_EXT007              465- 467   ///
      int    DXCCSR_EXT008              468- 470   ///
      int    DXCCSR_EXT009              471- 473   ///
      int    DXCCSR_EXT010              474- 476   ///
      int    DXCCSR_EXT011              477- 479   ///
      int    DXCCSR_EXT012              480- 482   ///
      int    DXCCSR_EXT013              483- 485   ///
      int    DXCCSR_EXT014              486- 488   ///
      int    DXCCSR_EXT015              489- 491   ///
      int    DXCCSR_EXT016              492- 494   ///
      int    DXCCSR_EXT017              495- 497   ///
      int    DXCCSR_EXT018              498- 500   ///
      int    DXCCSR_EXT019              501- 503   ///
      int    DXCCSR_EXT020              504- 506   ///
      int    DXCCSR_EXT021              507- 509   ///
      int    DXCCSR_EXT022              510- 512   ///
      int    DXCCSR_EXT023              513- 515   ///
      int    DXCCSR_EXT024              516- 518   ///
      int    DXCCSR_EXT025              519- 521   ///
      int    DXCCSR_EXT026              522- 524   ///
      int    DXCCSR_EXT027              525- 527   ///
      int    DXCCSR_EXT028              528- 530   ///
      int    DXCCSR_EXT029              531- 533   ///
      int    DXCCSR_EXT030              534- 536   ///
      int    DXCCSR_EYE001              537- 539   ///
      int    DXCCSR_EYE002              540- 542   ///
      int    DXCCSR_EYE003              543- 545   ///
      int    DXCCSR_EYE004              546- 548   ///
      int    DXCCSR_EYE005              549- 551   ///
      int    DXCCSR_EYE006              552- 554   ///
      int    DXCCSR_EYE007              555- 557   ///
      int    DXCCSR_EYE008              558- 560   ///
      int    DXCCSR_EYE009              561- 563   ///
      int    DXCCSR_EYE010              564- 566   ///
      int    DXCCSR_EYE011              567- 569   ///
      int    DXCCSR_EYE012              570- 572   ///
      int    DXCCSR_FAC001              573- 575   ///
      int    DXCCSR_FAC002              576- 578   ///
      int    DXCCSR_FAC003              579- 581   ///
      int    DXCCSR_FAC004              582- 584   ///
      int    DXCCSR_FAC005              585- 587   ///
      int    DXCCSR_FAC006              588- 590   ///
      int    DXCCSR_FAC007              591- 593   ///
      int    DXCCSR_FAC008              594- 596   ///
      int    DXCCSR_FAC009              597- 599   ///
      int    DXCCSR_FAC010              600- 602   ///
      int    DXCCSR_FAC011              603- 605   ///
      int    DXCCSR_FAC012              606- 608   ///
      int    DXCCSR_FAC013              609- 611   ///
      int    DXCCSR_FAC014              612- 614   ///
      int    DXCCSR_FAC015              615- 617   ///
      int    DXCCSR_FAC016              618- 620   ///
      int    DXCCSR_FAC017              621- 623   ///
      int    DXCCSR_FAC018              624- 626   ///
      int    DXCCSR_FAC019              627- 629   ///
      int    DXCCSR_FAC020              630- 632   ///
      int    DXCCSR_FAC021              633- 635   ///
      int    DXCCSR_FAC022              636- 638   ///
      int    DXCCSR_FAC023              639- 641   ///
      int    DXCCSR_FAC024              642- 644   ///
      int    DXCCSR_FAC025              645- 647   ///
      int    DXCCSR_GEN001              648- 650   ///
      int    DXCCSR_GEN002              651- 653   ///
      int    DXCCSR_GEN003              654- 656   ///
      int    DXCCSR_GEN004              657- 659   ///
      int    DXCCSR_GEN005              660- 662   ///
      int    DXCCSR_GEN006              663- 665   ///
      int    DXCCSR_GEN007              666- 668   ///
      int    DXCCSR_GEN008              669- 671   ///
      int    DXCCSR_GEN009              672- 674   ///
      int    DXCCSR_GEN010              675- 677   ///
      int    DXCCSR_GEN011              678- 680   ///
      int    DXCCSR_GEN012              681- 683   ///
      int    DXCCSR_GEN013              684- 686   ///
      int    DXCCSR_GEN014              687- 689   ///
      int    DXCCSR_GEN015              690- 692   ///
      int    DXCCSR_GEN016              693- 695   ///
      int    DXCCSR_GEN017              696- 698   ///
      int    DXCCSR_GEN018              699- 701   ///
      int    DXCCSR_GEN019              702- 704   ///
      int    DXCCSR_GEN020              705- 707   ///
      int    DXCCSR_GEN021              708- 710   ///
      int    DXCCSR_GEN022              711- 713   ///
      int    DXCCSR_GEN023              714- 716   ///
      int    DXCCSR_GEN024              717- 719   ///
      int    DXCCSR_GEN025              720- 722   ///
      int    DXCCSR_GEN026              723- 725   ///
      int    DXCCSR_INF001              726- 728   ///
      int    DXCCSR_INF002              729- 731   ///
      int    DXCCSR_INF003              732- 734   ///
      int    DXCCSR_INF004              735- 737   ///
      int    DXCCSR_INF005              738- 740   ///
      int    DXCCSR_INF006              741- 743   ///
      int    DXCCSR_INF007              744- 746   ///
      int    DXCCSR_INF008              747- 749   ///
      int    DXCCSR_INF009              750- 752   ///
      int    DXCCSR_INF010              753- 755   ///
      int    DXCCSR_INF011              756- 758   ///
      int    DXCCSR_INF012              759- 761   ///
      int    DXCCSR_INJ001              762- 764   ///
      int    DXCCSR_INJ002              765- 767   ///
      int    DXCCSR_INJ003              768- 770   ///
      int    DXCCSR_INJ004              771- 773   ///
      int    DXCCSR_INJ005              774- 776   ///
      int    DXCCSR_INJ006              777- 779   ///
      int    DXCCSR_INJ007              780- 782   ///
      int    DXCCSR_INJ008              783- 785   ///
      int    DXCCSR_INJ009              786- 788   ///
      int    DXCCSR_INJ010              789- 791   ///
      int    DXCCSR_INJ011              792- 794   ///
      int    DXCCSR_INJ012              795- 797   ///
      int    DXCCSR_INJ013              798- 800   ///
      int    DXCCSR_INJ014              801- 803   ///
      int    DXCCSR_INJ015              804- 806   ///
      int    DXCCSR_INJ016              807- 809   ///
      int    DXCCSR_INJ017              810- 812   ///
      int    DXCCSR_INJ018              813- 815   ///
      int    DXCCSR_INJ019              816- 818   ///
      int    DXCCSR_INJ020              819- 821   ///
      int    DXCCSR_INJ021              822- 824   ///
      int    DXCCSR_INJ022              825- 827   ///
      int    DXCCSR_INJ023              828- 830   ///
      int    DXCCSR_INJ024              831- 833   ///
      int    DXCCSR_INJ025              834- 836   ///
      int    DXCCSR_INJ026              837- 839   ///
      int    DXCCSR_INJ027              840- 842   ///
      int    DXCCSR_INJ028              843- 845   ///
      int    DXCCSR_INJ029              846- 848   ///
      int    DXCCSR_INJ030              849- 851   ///
      int    DXCCSR_INJ031              852- 854   ///
      int    DXCCSR_INJ032              855- 857   ///
      int    DXCCSR_INJ033              858- 860   ///
      int    DXCCSR_INJ034              861- 863   ///
      int    DXCCSR_INJ035              864- 866   ///
      int    DXCCSR_INJ036              867- 869   ///
      int    DXCCSR_INJ037              870- 872   ///
      int    DXCCSR_INJ038              873- 875   ///
      int    DXCCSR_INJ039              876- 878   ///
      int    DXCCSR_INJ040              879- 881   ///
      int    DXCCSR_INJ041              882- 884   ///
      int    DXCCSR_INJ042              885- 887   ///
      int    DXCCSR_INJ043              888- 890   ///
      int    DXCCSR_INJ044              891- 893   ///
      int    DXCCSR_INJ045              894- 896   ///
      int    DXCCSR_INJ046              897- 899   ///
      int    DXCCSR_INJ047              900- 902   ///
      int    DXCCSR_INJ048              903- 905   ///
      int    DXCCSR_INJ049              906- 908   ///
      int    DXCCSR_INJ050              909- 911   ///
      int    DXCCSR_INJ051              912- 914   ///
      int    DXCCSR_INJ052              915- 917   ///
      int    DXCCSR_INJ053              918- 920   ///
      int    DXCCSR_INJ054              921- 923   ///
      int    DXCCSR_INJ055              924- 926   ///
      int    DXCCSR_INJ056              927- 929   ///
      int    DXCCSR_INJ057              930- 932   ///
      int    DXCCSR_INJ058              933- 935   ///
      int    DXCCSR_INJ059              936- 938   ///
      int    DXCCSR_INJ060              939- 941   ///
      int    DXCCSR_INJ061              942- 944   ///
      int    DXCCSR_INJ062              945- 947   ///
      int    DXCCSR_INJ063              948- 950   ///
      int    DXCCSR_INJ064              951- 953   ///
      int    DXCCSR_INJ065              954- 956   ///
      int    DXCCSR_INJ066              957- 959   ///
      int    DXCCSR_INJ067              960- 962   ///
      int    DXCCSR_INJ068              963- 965   ///
      int    DXCCSR_INJ069              966- 968   ///
      int    DXCCSR_INJ070              969- 971   ///
      int    DXCCSR_INJ071              972- 974   ///
      int    DXCCSR_INJ072              975- 977   ///
      int    DXCCSR_INJ073              978- 980   ///
      int    DXCCSR_INJ074              981- 983   ///
      int    DXCCSR_INJ075              984- 986   ///
      int    DXCCSR_INJ076              987- 989   ///
      int    DXCCSR_MAL001              990- 992   ///
      int    DXCCSR_MAL002              993- 995   ///
      int    DXCCSR_MAL003              996- 998   ///
      int    DXCCSR_MAL004              999-1001   ///
      int    DXCCSR_MAL005             1002-1004   ///
      int    DXCCSR_MAL006             1005-1007   ///
      int    DXCCSR_MAL007             1008-1010   ///
      int    DXCCSR_MAL008             1011-1013   ///
      int    DXCCSR_MAL009             1014-1016   ///
      int    DXCCSR_MAL010             1017-1019   ///
      int    DXCCSR_MBD001             1020-1022   ///
      int    DXCCSR_MBD002             1023-1025   ///
      int    DXCCSR_MBD003             1026-1028   ///
      int    DXCCSR_MBD004             1029-1031   ///
      int    DXCCSR_MBD005             1032-1034   ///
      int    DXCCSR_MBD006             1035-1037   ///
      int    DXCCSR_MBD007             1038-1040   ///
      int    DXCCSR_MBD008             1041-1043   ///
      int    DXCCSR_MBD009             1044-1046   ///
      int    DXCCSR_MBD010             1047-1049   ///
      int    DXCCSR_MBD011             1050-1052   ///
      int    DXCCSR_MBD012             1053-1055   ///
      int    DXCCSR_MBD013             1056-1058   ///
      int    DXCCSR_MBD014             1059-1061   ///
      int    DXCCSR_MBD017             1062-1064   ///
      int    DXCCSR_MBD018             1065-1067   ///
      int    DXCCSR_MBD019             1068-1070   ///
      int    DXCCSR_MBD020             1071-1073   ///
      int    DXCCSR_MBD021             1074-1076   ///
      int    DXCCSR_MBD022             1077-1079   ///
      int    DXCCSR_MBD023             1080-1082   ///
      int    DXCCSR_MBD024             1083-1085   ///
      int    DXCCSR_MBD025             1086-1088   ///
      int    DXCCSR_MBD026             1089-1091   ///
      int    DXCCSR_MBD027             1092-1094   ///
      int    DXCCSR_MBD028             1095-1097   ///
      int    DXCCSR_MBD029             1098-1100   ///
      int    DXCCSR_MBD030             1101-1103   ///
      int    DXCCSR_MBD031             1104-1106   ///
      int    DXCCSR_MBD032             1107-1109   ///
      int    DXCCSR_MBD033             1110-1112   ///
      int    DXCCSR_MBD034             1113-1115   ///
      int    DXCCSR_MUS001             1116-1118   ///
      int    DXCCSR_MUS002             1119-1121   ///
      int    DXCCSR_MUS003             1122-1124   ///
      int    DXCCSR_MUS004             1125-1127   ///
      int    DXCCSR_MUS005             1128-1130   ///
      int    DXCCSR_MUS006             1131-1133   ///
      int    DXCCSR_MUS007             1134-1136   ///
      int    DXCCSR_MUS008             1137-1139   ///
      int    DXCCSR_MUS009             1140-1142   ///
      int    DXCCSR_MUS010             1143-1145   ///
      int    DXCCSR_MUS011             1146-1148   ///
      int    DXCCSR_MUS012             1149-1151   ///
      int    DXCCSR_MUS013             1152-1154   ///
      int    DXCCSR_MUS014             1155-1157   ///
      int    DXCCSR_MUS015             1158-1160   ///
      int    DXCCSR_MUS016             1161-1163   ///
      int    DXCCSR_MUS017             1164-1166   ///
      int    DXCCSR_MUS018             1167-1169   ///
      int    DXCCSR_MUS019             1170-1172   ///
      int    DXCCSR_MUS020             1173-1175   ///
      int    DXCCSR_MUS021             1176-1178   ///
      int    DXCCSR_MUS022             1179-1181   ///
      int    DXCCSR_MUS023             1182-1184   ///
      int    DXCCSR_MUS024             1185-1187   ///
      int    DXCCSR_MUS025             1188-1190   ///
      int    DXCCSR_MUS026             1191-1193   ///
      int    DXCCSR_MUS027             1194-1196   ///
      int    DXCCSR_MUS028             1197-1199   ///
      int    DXCCSR_MUS029             1200-1202   ///
      int    DXCCSR_MUS030             1203-1205   ///
      int    DXCCSR_MUS031             1206-1208   ///
      int    DXCCSR_MUS032             1209-1211   ///
      int    DXCCSR_MUS033             1212-1214   ///
      int    DXCCSR_MUS034             1215-1217   ///
      int    DXCCSR_MUS035             1218-1220   ///
      int    DXCCSR_MUS036             1221-1223   ///
      int    DXCCSR_MUS037             1224-1226   ///
      int    DXCCSR_MUS038             1227-1229   ///
      int    DXCCSR_NEO001             1230-1232   ///
      int    DXCCSR_NEO002             1233-1235   ///
      int    DXCCSR_NEO003             1236-1238   ///
      int    DXCCSR_NEO004             1239-1241   ///
      int    DXCCSR_NEO005             1242-1244   ///
      int    DXCCSR_NEO006             1245-1247   ///
      int    DXCCSR_NEO007             1248-1250   ///
      int    DXCCSR_NEO008             1251-1253   ///
      int    DXCCSR_NEO009             1254-1256   ///
      int    DXCCSR_NEO010             1257-1259   ///
      int    DXCCSR_NEO011             1260-1262   ///
      int    DXCCSR_NEO012             1263-1265   ///
      int    DXCCSR_NEO013             1266-1268   ///
      int    DXCCSR_NEO014             1269-1271   ///
      int    DXCCSR_NEO015             1272-1274   ///
      int    DXCCSR_NEO016             1275-1277   ///
      int    DXCCSR_NEO017             1278-1280   ///
      int    DXCCSR_NEO018             1281-1283   ///
      int    DXCCSR_NEO019             1284-1286   ///
      int    DXCCSR_NEO020             1287-1289   ///
      int    DXCCSR_NEO021             1290-1292   ///
      int    DXCCSR_NEO022             1293-1295   ///
      int    DXCCSR_NEO023             1296-1298   ///
      int    DXCCSR_NEO024             1299-1301   ///
      int    DXCCSR_NEO025             1302-1304   ///
      int    DXCCSR_NEO026             1305-1307   ///
      int    DXCCSR_NEO027             1308-1310   ///
      int    DXCCSR_NEO028             1311-1313   ///
      int    DXCCSR_NEO029             1314-1316   ///
      int    DXCCSR_NEO030             1317-1319   ///
      int    DXCCSR_NEO031             1320-1322   ///
      int    DXCCSR_NEO032             1323-1325   ///
      int    DXCCSR_NEO033             1326-1328   ///
      int    DXCCSR_NEO034             1329-1331   ///
      int    DXCCSR_NEO035             1332-1334   ///
      int    DXCCSR_NEO036             1335-1337   ///
      int    DXCCSR_NEO037             1338-1340   ///
      int    DXCCSR_NEO038             1341-1343   ///
      int    DXCCSR_NEO039             1344-1346   ///
      int    DXCCSR_NEO040             1347-1349   ///
      int    DXCCSR_NEO041             1350-1352   ///
      int    DXCCSR_NEO042             1353-1355   ///
      int    DXCCSR_NEO043             1356-1358   ///
      int    DXCCSR_NEO044             1359-1361   ///
      int    DXCCSR_NEO045             1362-1364   ///
      int    DXCCSR_NEO046             1365-1367   ///
      int    DXCCSR_NEO047             1368-1370   ///
      int    DXCCSR_NEO048             1371-1373   ///
      int    DXCCSR_NEO049             1374-1376   ///
      int    DXCCSR_NEO050             1377-1379   ///
      int    DXCCSR_NEO051             1380-1382   ///
      int    DXCCSR_NEO052             1383-1385   ///
      int    DXCCSR_NEO053             1386-1388   ///
      int    DXCCSR_NEO054             1389-1391   ///
      int    DXCCSR_NEO055             1392-1394   ///
      int    DXCCSR_NEO056             1395-1397   ///
      int    DXCCSR_NEO057             1398-1400   ///
      int    DXCCSR_NEO058             1401-1403   ///
      int    DXCCSR_NEO059             1404-1406   ///
      int    DXCCSR_NEO060             1407-1409   ///
      int    DXCCSR_NEO061             1410-1412   ///
      int    DXCCSR_NEO062             1413-1415   ///
      int    DXCCSR_NEO063             1416-1418   ///
      int    DXCCSR_NEO064             1419-1421   ///
      int    DXCCSR_NEO065             1422-1424   ///
      int    DXCCSR_NEO066             1425-1427   ///
      int    DXCCSR_NEO067             1428-1430   ///
      int    DXCCSR_NEO068             1431-1433   ///
      int    DXCCSR_NEO069             1434-1436   ///
      int    DXCCSR_NEO070             1437-1439   ///
      int    DXCCSR_NEO071             1440-1442   ///
      int    DXCCSR_NEO072             1443-1445   ///
      int    DXCCSR_NEO073             1446-1448   ///
      int    DXCCSR_NEO074             1449-1451   ///
      int    DXCCSR_NVS001             1452-1454   ///
      int    DXCCSR_NVS002             1455-1457   ///
      int    DXCCSR_NVS003             1458-1460   ///
      int    DXCCSR_NVS004             1461-1463   ///
      int    DXCCSR_NVS005             1464-1466   ///
      int    DXCCSR_NVS006             1467-1469   ///
      int    DXCCSR_NVS007             1470-1472   ///
      int    DXCCSR_NVS008             1473-1475   ///
      int    DXCCSR_NVS009             1476-1478   ///
      int    DXCCSR_NVS010             1479-1481   ///
      int    DXCCSR_NVS011             1482-1484   ///
      int    DXCCSR_NVS012             1485-1487   ///
      int    DXCCSR_NVS013             1488-1490   ///
      int    DXCCSR_NVS014             1491-1493   ///
      int    DXCCSR_NVS015             1494-1496   ///
      int    DXCCSR_NVS016             1497-1499   ///
      int    DXCCSR_NVS017             1500-1502   ///
      int    DXCCSR_NVS018             1503-1505   ///
      int    DXCCSR_NVS019             1506-1508   ///
      int    DXCCSR_NVS020             1509-1511   ///
      int    DXCCSR_NVS021             1512-1514   ///
      int    DXCCSR_NVS022             1515-1517   ///
      int    DXCCSR_PNL001             1518-1520   ///
      int    DXCCSR_PNL002             1521-1523   ///
      int    DXCCSR_PNL003             1524-1526   ///
      int    DXCCSR_PNL004             1527-1529   ///
      int    DXCCSR_PNL005             1530-1532   ///
      int    DXCCSR_PNL006             1533-1535   ///
      int    DXCCSR_PNL007             1536-1538   ///
      int    DXCCSR_PNL008             1539-1541   ///
      int    DXCCSR_PNL009             1542-1544   ///
      int    DXCCSR_PNL010             1545-1547   ///
      int    DXCCSR_PNL011             1548-1550   ///
      int    DXCCSR_PNL012             1551-1553   ///
      int    DXCCSR_PNL013             1554-1556   ///
      int    DXCCSR_PNL014             1557-1559   ///
      int    DXCCSR_PNL015             1560-1562   ///
      int    DXCCSR_PRG001             1563-1565   ///
      int    DXCCSR_PRG002             1566-1568   ///
      int    DXCCSR_PRG003             1569-1571   ///
      int    DXCCSR_PRG004             1572-1574   ///
      int    DXCCSR_PRG005             1575-1577   ///
      int    DXCCSR_PRG006             1578-1580   ///
      int    DXCCSR_PRG007             1581-1583   ///
      int    DXCCSR_PRG008             1584-1586   ///
      int    DXCCSR_PRG009             1587-1589   ///
      int    DXCCSR_PRG010             1590-1592   ///
      int    DXCCSR_PRG011             1593-1595   ///
      int    DXCCSR_PRG012             1596-1598   ///
      int    DXCCSR_PRG013             1599-1601   ///
      int    DXCCSR_PRG014             1602-1604   ///
      int    DXCCSR_PRG015             1605-1607   ///
      int    DXCCSR_PRG016             1608-1610   ///
      int    DXCCSR_PRG017             1611-1613   ///
      int    DXCCSR_PRG018             1614-1616   ///
      int    DXCCSR_PRG019             1617-1619   ///
      int    DXCCSR_PRG020             1620-1622   ///
      int    DXCCSR_PRG021             1623-1625   ///
      int    DXCCSR_PRG022             1626-1628   ///
      int    DXCCSR_PRG023             1629-1631   ///
      int    DXCCSR_PRG024             1632-1634   ///
      int    DXCCSR_PRG025             1635-1637   ///
      int    DXCCSR_PRG026             1638-1640   ///
      int    DXCCSR_PRG027             1641-1643   ///
      int    DXCCSR_PRG028             1644-1646   ///
      int    DXCCSR_PRG029             1647-1649   ///
      int    DXCCSR_PRG030             1650-1652   ///
      int    DXCCSR_RSP001             1653-1655   ///
      int    DXCCSR_RSP002             1656-1658   ///
      int    DXCCSR_RSP003             1659-1661   ///
      int    DXCCSR_RSP004             1662-1664   ///
      int    DXCCSR_RSP005             1665-1667   ///
      int    DXCCSR_RSP006             1668-1670   ///
      int    DXCCSR_RSP007             1671-1673   ///
      int    DXCCSR_RSP008             1674-1676   ///
      int    DXCCSR_RSP009             1677-1679   ///
      int    DXCCSR_RSP010             1680-1682   ///
      int    DXCCSR_RSP011             1683-1685   ///
      int    DXCCSR_RSP012             1686-1688   ///
      int    DXCCSR_RSP013             1689-1691   ///
      int    DXCCSR_RSP014             1692-1694   ///
      int    DXCCSR_RSP015             1695-1697   ///
      int    DXCCSR_RSP016             1698-1700   ///
      int    DXCCSR_RSP017             1701-1703   ///
      int    DXCCSR_SKN001             1704-1706   ///
      int    DXCCSR_SKN002             1707-1709   ///
      int    DXCCSR_SKN003             1710-1712   ///
      int    DXCCSR_SKN004             1713-1715   ///
      int    DXCCSR_SKN005             1716-1718   ///
      int    DXCCSR_SKN006             1719-1721   ///
      int    DXCCSR_SKN007             1722-1724   ///
      int    DXCCSR_SYM001             1725-1727   ///
      int    DXCCSR_SYM002             1728-1730   ///
      int    DXCCSR_SYM003             1731-1733   ///
      int    DXCCSR_SYM004             1734-1736   ///
      int    DXCCSR_SYM005             1737-1739   ///
      int    DXCCSR_SYM006             1740-1742   ///
      int    DXCCSR_SYM007             1743-1745   ///
      int    DXCCSR_SYM008             1746-1748   ///
      int    DXCCSR_SYM009             1749-1751   ///
      int    DXCCSR_SYM010             1752-1754   ///
      int    DXCCSR_SYM011             1755-1757   ///
      int    DXCCSR_SYM012             1758-1760   ///
      int    DXCCSR_SYM013             1761-1763   ///
      int    DXCCSR_SYM014             1764-1766   ///
      int    DXCCSR_SYM015             1767-1769   ///
      int    DXCCSR_SYM016             1770-1772   ///
      int    DXCCSR_SYM017             1773-1775   ///
      str    DXCCSR_VERSION            1776-1781   ///
      int    PRCCSR_ADM001             1782-1784   ///
      int    PRCCSR_ADM002             1785-1787   ///
      int    PRCCSR_ADM003             1788-1790   ///
      int    PRCCSR_ADM004             1791-1793   ///
      int    PRCCSR_ADM005             1794-1796   ///
      int    PRCCSR_ADM006             1797-1799   ///
      int    PRCCSR_ADM007             1800-1802   ///
      int    PRCCSR_ADM008             1803-1805   ///
      int    PRCCSR_ADM009             1806-1808   ///
      int    PRCCSR_ADM010             1809-1811   ///
      int    PRCCSR_ADM011             1812-1814   ///
      int    PRCCSR_ADM012             1815-1817   ///
      int    PRCCSR_ADM013             1818-1820   ///
      int    PRCCSR_ADM014             1821-1823   ///
      int    PRCCSR_ADM015             1824-1826   ///
      int    PRCCSR_ADM016             1827-1829   ///
      int    PRCCSR_ADM017             1830-1832   ///
      int    PRCCSR_ADM018             1833-1835   ///
      int    PRCCSR_ADM019             1836-1838   ///
      int    PRCCSR_ADM020             1839-1841   ///
      int    PRCCSR_ADM021             1842-1844   ///
      int    PRCCSR_CAR001             1845-1847   ///
      int    PRCCSR_CAR002             1848-1850   ///
      int    PRCCSR_CAR003             1851-1853   ///
      int    PRCCSR_CAR004             1854-1856   ///
      int    PRCCSR_CAR005             1857-1859   ///
      int    PRCCSR_CAR006             1860-1862   ///
      int    PRCCSR_CAR007             1863-1865   ///
      int    PRCCSR_CAR008             1866-1868   ///
      int    PRCCSR_CAR009             1869-1871   ///
      int    PRCCSR_CAR010             1872-1874   ///
      int    PRCCSR_CAR011             1875-1877   ///
      int    PRCCSR_CAR012             1878-1880   ///
      int    PRCCSR_CAR013             1881-1883   ///
      int    PRCCSR_CAR014             1884-1886   ///
      int    PRCCSR_CAR015             1887-1889   ///
      int    PRCCSR_CAR016             1890-1892   ///
      int    PRCCSR_CAR017             1893-1895   ///
      int    PRCCSR_CAR018             1896-1898   ///
      int    PRCCSR_CAR019             1899-1901   ///
      int    PRCCSR_CAR020             1902-1904   ///
      int    PRCCSR_CAR021             1905-1907   ///
      int    PRCCSR_CAR022             1908-1910   ///
      int    PRCCSR_CAR023             1911-1913   ///
      int    PRCCSR_CAR024             1914-1916   ///
      int    PRCCSR_CAR025             1917-1919   ///
      int    PRCCSR_CAR026             1920-1922   ///
      int    PRCCSR_CAR027             1923-1925   ///
      int    PRCCSR_CAR028             1926-1928   ///
      int    PRCCSR_CAR029             1929-1931   ///
      int    PRCCSR_CHP001             1932-1934   ///
      int    PRCCSR_CNS001             1935-1937   ///
      int    PRCCSR_CNS002             1938-1940   ///
      int    PRCCSR_CNS003             1941-1943   ///
      int    PRCCSR_CNS004             1944-1946   ///
      int    PRCCSR_CNS005             1947-1949   ///
      int    PRCCSR_CNS006             1950-1952   ///
      int    PRCCSR_CNS007             1953-1955   ///
      int    PRCCSR_CNS008             1956-1958   ///
      int    PRCCSR_CNS009             1959-1961   ///
      int    PRCCSR_CNS010             1962-1964   ///
      int    PRCCSR_CNS011             1965-1967   ///
      int    PRCCSR_CNS012             1968-1970   ///
      int    PRCCSR_CNS013             1971-1973   ///
      int    PRCCSR_CNS014             1974-1976   ///
      int    PRCCSR_ENP001             1977-1979   ///
      int    PRCCSR_ENP002             1980-1982   ///
      int    PRCCSR_ENP003             1983-1985   ///
      int    PRCCSR_ENP004             1986-1988   ///
      int    PRCCSR_ENP005             1989-1991   ///
      int    PRCCSR_ENP006             1992-1994   ///
      int    PRCCSR_ENT001             1995-1997   ///
      int    PRCCSR_ENT002             1998-2000   ///
      int    PRCCSR_ENT003             2001-2003   ///
      int    PRCCSR_ENT004             2004-2006   ///
      int    PRCCSR_ENT005             2007-2009   ///
      int    PRCCSR_ENT006             2010-2012   ///
      int    PRCCSR_ENT007             2013-2015   ///
      int    PRCCSR_ENT008             2016-2018   ///
      int    PRCCSR_ENT009             2019-2021   ///
      int    PRCCSR_ENT010             2022-2024   ///
      int    PRCCSR_ENT011             2025-2027   ///
      int    PRCCSR_ENT012             2028-2030   ///
      int    PRCCSR_ENT013             2031-2033   ///
      int    PRCCSR_ENT014             2034-2036   ///
      int    PRCCSR_ENT015             2037-2039   ///
      int    PRCCSR_ENT016             2040-2042   ///
      int    PRCCSR_ENT017             2043-2045   ///
      int    PRCCSR_ESA001             2046-2048   ///
      int    PRCCSR_ESA002             2049-2051   ///
      int    PRCCSR_ESA003             2052-2054   ///
      int    PRCCSR_ESA004             2055-2057   ///
      int    PRCCSR_ESA005             2058-2060   ///
      int    PRCCSR_ESA006             2061-2063   ///
      int    PRCCSR_ESA007             2064-2066   ///
      int    PRCCSR_ESA008             2067-2069   ///
      int    PRCCSR_ESA009             2070-2072   ///
      int    PRCCSR_ESA010             2073-2075   ///
      int    PRCCSR_ESA011             2076-2078   ///
      int    PRCCSR_EST001             2079-2081   ///
      int    PRCCSR_EST002             2082-2084   ///
      int    PRCCSR_EST003             2085-2087   ///
      int    PRCCSR_EST004             2088-2090   ///
      int    PRCCSR_EST005             2091-2093   ///
      int    PRCCSR_EYP001             2094-2096   ///
      int    PRCCSR_EYP002             2097-2099   ///
      int    PRCCSR_FRS001             2100-2102   ///
      int    PRCCSR_FRS002             2103-2105   ///
      int    PRCCSR_FRS003             2106-2108   ///
      int    PRCCSR_FRS004             2109-2111   ///
      int    PRCCSR_FRS005             2112-2114   ///
      int    PRCCSR_FRS006             2115-2117   ///
      int    PRCCSR_FRS007             2118-2120   ///
      int    PRCCSR_FRS008             2121-2123   ///
      int    PRCCSR_FRS009             2124-2126   ///
      int    PRCCSR_FRS010             2127-2129   ///
      int    PRCCSR_FRS011             2130-2132   ///
      int    PRCCSR_FRS012             2133-2135   ///
      int    PRCCSR_FRS013             2136-2138   ///
      int    PRCCSR_FRS014             2139-2141   ///
      int    PRCCSR_FRS015             2142-2144   ///
      int    PRCCSR_GIS001             2145-2147   ///
      int    PRCCSR_GIS002             2148-2150   ///
      int    PRCCSR_GIS003             2151-2153   ///
      int    PRCCSR_GIS004             2154-2156   ///
      int    PRCCSR_GIS005             2157-2159   ///
      int    PRCCSR_GIS006             2160-2162   ///
      int    PRCCSR_GIS007             2163-2165   ///
      int    PRCCSR_GIS008             2166-2168   ///
      int    PRCCSR_GIS009             2169-2171   ///
      int    PRCCSR_GIS010             2172-2174   ///
      int    PRCCSR_GIS011             2175-2177   ///
      int    PRCCSR_GIS012             2178-2180   ///
      int    PRCCSR_GIS013             2181-2183   ///
      int    PRCCSR_GIS014             2184-2186   ///
      int    PRCCSR_GIS015             2187-2189   ///
      int    PRCCSR_GIS016             2190-2192   ///
      int    PRCCSR_GIS017             2193-2195   ///
      int    PRCCSR_GIS018             2196-2198   ///
      int    PRCCSR_GIS019             2199-2201   ///
      int    PRCCSR_GIS020             2202-2204   ///
      int    PRCCSR_GIS021             2205-2207   ///
      int    PRCCSR_GIS022             2208-2210   ///
      int    PRCCSR_GIS023             2211-2213   ///
      int    PRCCSR_GIS024             2214-2216   ///
      int    PRCCSR_GIS025             2217-2219   ///
      int    PRCCSR_GIS026             2220-2222   ///
      int    PRCCSR_GIS027             2223-2225   ///
      int    PRCCSR_GIS028             2226-2228   ///
      int    PRCCSR_GIS029             2229-2231   ///
      int    PRCCSR_GNR001             2232-2234   ///
      int    PRCCSR_GNR002             2235-2237   ///
      int    PRCCSR_GNR003             2238-2240   ///
      int    PRCCSR_GNR004             2241-2243   ///
      int    PRCCSR_GNR005             2244-2246   ///
      int    PRCCSR_GNR006             2247-2249   ///
      int    PRCCSR_GNR007             2250-2252   ///
      int    PRCCSR_GNR008             2253-2255   ///
      int    PRCCSR_GNR009             2256-2258   ///
      int    PRCCSR_GNR010             2259-2261   ///
      int    PRCCSR_HEP001             2262-2264   ///
      int    PRCCSR_HEP002             2265-2267   ///
      int    PRCCSR_HEP003             2268-2270   ///
      int    PRCCSR_HEP004             2271-2273   ///
      int    PRCCSR_HEP005             2274-2276   ///
      int    PRCCSR_HEP006             2277-2279   ///
      int    PRCCSR_HEP007             2280-2282   ///
      int    PRCCSR_HEP008             2283-2285   ///
      int    PRCCSR_HEP009             2286-2288   ///
      int    PRCCSR_HEP010             2289-2291   ///
      int    PRCCSR_HEP011             2292-2294   ///
      int    PRCCSR_HEP012             2295-2297   ///
      int    PRCCSR_HEP013             2298-2300   ///
      int    PRCCSR_IMG001             2301-2303   ///
      int    PRCCSR_IMG002             2304-2306   ///
      int    PRCCSR_IMG003             2307-2309   ///
      int    PRCCSR_IMG004             2310-2312   ///
      int    PRCCSR_IMG005             2313-2315   ///
      int    PRCCSR_IMG006             2316-2318   ///
      int    PRCCSR_IMG007             2319-2321   ///
      int    PRCCSR_IMG008             2322-2324   ///
      int    PRCCSR_IMG009             2325-2327   ///
      int    PRCCSR_IMG010             2328-2330   ///
      int    PRCCSR_LYM001             2331-2333   ///
      int    PRCCSR_LYM002             2334-2336   ///
      int    PRCCSR_LYM003             2337-2339   ///
      int    PRCCSR_LYM004             2340-2342   ///
      int    PRCCSR_LYM005             2343-2345   ///
      int    PRCCSR_LYM006             2346-2348   ///
      int    PRCCSR_LYM007             2349-2351   ///
      int    PRCCSR_LYM008             2352-2354   ///
      int    PRCCSR_LYM009             2355-2357   ///
      int    PRCCSR_LYM010             2358-2360   ///
      int    PRCCSR_LYM011             2361-2363   ///
      int    PRCCSR_MAM001             2364-2366   ///
      int    PRCCSR_MAM002             2367-2369   ///
      int    PRCCSR_MAM003             2370-2372   ///
      int    PRCCSR_MAM004             2373-2375   ///
      int    PRCCSR_MAM005             2376-2378   ///
      int    PRCCSR_MAM006             2379-2381   ///
      int    PRCCSR_MAM007             2382-2384   ///
      int    PRCCSR_MAM008             2385-2387   ///
      int    PRCCSR_MAM009             2388-2390   ///
      int    PRCCSR_MAM010             2391-2393   ///
      int    PRCCSR_MAM011             2394-2396   ///
      int    PRCCSR_MAM012             2397-2399   ///
      int    PRCCSR_MAM013             2400-2402   ///
      int    PRCCSR_MAM014             2403-2405   ///
      int    PRCCSR_MAM015             2406-2408   ///
      int    PRCCSR_MHT001             2409-2411   ///
      int    PRCCSR_MHT002             2412-2414   ///
      int    PRCCSR_MHT003             2415-2417   ///
      int    PRCCSR_MHT004             2418-2420   ///
      int    PRCCSR_MHT005             2421-2423   ///
      int    PRCCSR_MRS001             2424-2426   ///
      int    PRCCSR_MRS002             2427-2429   ///
      int    PRCCSR_MRS003             2430-2432   ///
      int    PRCCSR_MRS004             2433-2435   ///
      int    PRCCSR_MRS005             2436-2438   ///
      int    PRCCSR_MRS006             2439-2441   ///
      int    PRCCSR_MRS007             2442-2444   ///
      int    PRCCSR_MST001             2445-2447   ///
      int    PRCCSR_MST002             2448-2450   ///
      int    PRCCSR_MST003             2451-2453   ///
      int    PRCCSR_MST004             2454-2456   ///
      int    PRCCSR_MST005             2457-2459   ///
      int    PRCCSR_MST006             2460-2462   ///
      int    PRCCSR_MST007             2463-2465   ///
      int    PRCCSR_MST008             2466-2468   ///
      int    PRCCSR_MST009             2469-2471   ///
      int    PRCCSR_MST010             2472-2474   ///
      int    PRCCSR_MST011             2475-2477   ///
      int    PRCCSR_MST012             2478-2480   ///
      int    PRCCSR_MST013             2481-2483   ///
      int    PRCCSR_MST014             2484-2486   ///
      int    PRCCSR_MST015             2487-2489   ///
      int    PRCCSR_MST016             2490-2492   ///
      int    PRCCSR_MST017             2493-2495   ///
      int    PRCCSR_MST018             2496-2498   ///
      int    PRCCSR_MST019             2499-2501   ///
      int    PRCCSR_MST020             2502-2504   ///
      int    PRCCSR_MST021             2505-2507   ///
      int    PRCCSR_MST022             2508-2510   ///
      int    PRCCSR_MST023             2511-2513   ///
      int    PRCCSR_MST024             2514-2516   ///
      int    PRCCSR_MST025             2517-2519   ///
      int    PRCCSR_MST026             2520-2522   ///
      int    PRCCSR_MST027             2523-2525   ///
      int    PRCCSR_MST028             2526-2528   ///
      int    PRCCSR_MST029             2529-2531   ///
      int    PRCCSR_MST030             2532-2534   ///
      int    PRCCSR_NCM001             2535-2537   ///
      int    PRCCSR_NCM002             2538-2540   ///
      int    PRCCSR_NCM003             2541-2543   ///
      int    PRCCSR_NCM004             2544-2546   ///
      int    PRCCSR_OST001             2547-2549   ///
      int    PRCCSR_OTR001             2550-2552   ///
      int    PRCCSR_OTR002             2553-2555   ///
      int    PRCCSR_OTR003             2556-2558   ///
      int    PRCCSR_OTR004             2559-2561   ///
      int    PRCCSR_OTR005             2562-2564   ///
      int    PRCCSR_PGN001             2565-2567   ///
      int    PRCCSR_PGN002             2568-2570   ///
      int    PRCCSR_PGN003             2571-2573   ///
      int    PRCCSR_PGN004             2574-2576   ///
      int    PRCCSR_PGN005             2577-2579   ///
      int    PRCCSR_PGN006             2580-2582   ///
      int    PRCCSR_PGN007             2583-2585   ///
      int    PRCCSR_PGN008             2586-2588   ///
      int    PRCCSR_PGN009             2589-2591   ///
      int    PRCCSR_PLC001             2592-2594   ///
      int    PRCCSR_PLC002             2595-2597   ///
      int    PRCCSR_PNS001             2598-2600   ///
      int    PRCCSR_PNS002             2601-2603   ///
      int    PRCCSR_PNS003             2604-2606   ///
      int    PRCCSR_PNS004             2607-2609   ///
      int    PRCCSR_PNS005             2610-2612   ///
      int    PRCCSR_PNS006             2613-2615   ///
      int    PRCCSR_RAD001             2616-2618   ///
      int    PRCCSR_RAD002             2619-2621   ///
      int    PRCCSR_RAD003             2622-2624   ///
      int    PRCCSR_RAD004             2625-2627   ///
      int    PRCCSR_RES001             2628-2630   ///
      int    PRCCSR_RES002             2631-2633   ///
      int    PRCCSR_RES003             2634-2636   ///
      int    PRCCSR_RES004             2637-2639   ///
      int    PRCCSR_RES005             2640-2642   ///
      int    PRCCSR_RES006             2643-2645   ///
      int    PRCCSR_RES007             2646-2648   ///
      int    PRCCSR_RES008             2649-2651   ///
      int    PRCCSR_RES009             2652-2654   ///
      int    PRCCSR_RES010             2655-2657   ///
      int    PRCCSR_RES011             2658-2660   ///
      int    PRCCSR_RES012             2661-2663   ///
      int    PRCCSR_RES013             2664-2666   ///
      int    PRCCSR_RES014             2667-2669   ///
      int    PRCCSR_RHB001             2670-2672   ///
      int    PRCCSR_RHB002             2673-2675   ///
      int    PRCCSR_RHB003             2676-2678   ///
      int    PRCCSR_RHB004             2679-2681   ///
      int    PRCCSR_SKB001             2682-2684   ///
      int    PRCCSR_SKB002             2685-2687   ///
      int    PRCCSR_SKB003             2688-2690   ///
      int    PRCCSR_SKB004             2691-2693   ///
      int    PRCCSR_SKB005             2694-2696   ///
      int    PRCCSR_SKB006             2697-2699   ///
      int    PRCCSR_SKB007             2700-2702   ///
      int    PRCCSR_SKB008             2703-2705   ///
      int    PRCCSR_SKB009             2706-2708   ///
      int    PRCCSR_SKB010             2709-2711   ///
      int    PRCCSR_SUD001             2712-2714   ///
      int    PRCCSR_SUD002             2715-2717   ///
      int    PRCCSR_SUD003             2718-2720   ///
      int    PRCCSR_SUD004             2721-2723   ///
      int    PRCCSR_URN001             2724-2726   ///
      int    PRCCSR_URN002             2727-2729   ///
      int    PRCCSR_URN003             2730-2732   ///
      int    PRCCSR_URN004             2733-2735   ///
      int    PRCCSR_URN005             2736-2738   ///
      int    PRCCSR_URN006             2739-2741   ///
      int    PRCCSR_URN007             2742-2744   ///
      int    PRCCSR_URN008             2745-2747   ///
      int    PRCCSR_URN009             2748-2750   ///
      int    PRCCSR_URN010             2751-2753   ///
      int    PRCCSR_URN011             2754-2756   ///
      int    PRCCSR_URN012             2757-2759   ///
      str    PRCCSR_VERSION            2760-2765   ///
      using  "NM_SID_2020_DX_PR_GRPS.ASC"

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

save "NM_SID_2020_DX_PR_GRPS.dta", replace
