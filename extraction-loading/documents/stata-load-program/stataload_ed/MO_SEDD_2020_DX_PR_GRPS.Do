/*****************************************************************************
* Creation Date: 08/18/2022   
* MO_SEDD_2020_DX_PR_GRPS.Do
* This program will load the 2020 MO ASCII DX_PR_GRPS File into Stata.
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
      str    DXCCSR_Default_DX1         132- 137   ///
      int    DXCCSR_BLD001              138- 140   ///
      int    DXCCSR_BLD002              141- 143   ///
      int    DXCCSR_BLD003              144- 146   ///
      int    DXCCSR_BLD004              147- 149   ///
      int    DXCCSR_BLD005              150- 152   ///
      int    DXCCSR_BLD006              153- 155   ///
      int    DXCCSR_BLD007              156- 158   ///
      int    DXCCSR_BLD008              159- 161   ///
      int    DXCCSR_BLD009              162- 164   ///
      int    DXCCSR_BLD010              165- 167   ///
      int    DXCCSR_CIR001              168- 170   ///
      int    DXCCSR_CIR002              171- 173   ///
      int    DXCCSR_CIR003              174- 176   ///
      int    DXCCSR_CIR004              177- 179   ///
      int    DXCCSR_CIR005              180- 182   ///
      int    DXCCSR_CIR006              183- 185   ///
      int    DXCCSR_CIR007              186- 188   ///
      int    DXCCSR_CIR008              189- 191   ///
      int    DXCCSR_CIR009              192- 194   ///
      int    DXCCSR_CIR010              195- 197   ///
      int    DXCCSR_CIR011              198- 200   ///
      int    DXCCSR_CIR012              201- 203   ///
      int    DXCCSR_CIR013              204- 206   ///
      int    DXCCSR_CIR014              207- 209   ///
      int    DXCCSR_CIR015              210- 212   ///
      int    DXCCSR_CIR016              213- 215   ///
      int    DXCCSR_CIR017              216- 218   ///
      int    DXCCSR_CIR018              219- 221   ///
      int    DXCCSR_CIR019              222- 224   ///
      int    DXCCSR_CIR020              225- 227   ///
      int    DXCCSR_CIR021              228- 230   ///
      int    DXCCSR_CIR022              231- 233   ///
      int    DXCCSR_CIR023              234- 236   ///
      int    DXCCSR_CIR024              237- 239   ///
      int    DXCCSR_CIR025              240- 242   ///
      int    DXCCSR_CIR026              243- 245   ///
      int    DXCCSR_CIR027              246- 248   ///
      int    DXCCSR_CIR028              249- 251   ///
      int    DXCCSR_CIR029              252- 254   ///
      int    DXCCSR_CIR030              255- 257   ///
      int    DXCCSR_CIR031              258- 260   ///
      int    DXCCSR_CIR032              261- 263   ///
      int    DXCCSR_CIR033              264- 266   ///
      int    DXCCSR_CIR034              267- 269   ///
      int    DXCCSR_CIR035              270- 272   ///
      int    DXCCSR_CIR036              273- 275   ///
      int    DXCCSR_CIR037              276- 278   ///
      int    DXCCSR_CIR038              279- 281   ///
      int    DXCCSR_CIR039              282- 284   ///
      int    DXCCSR_DIG001              285- 287   ///
      int    DXCCSR_DIG002              288- 290   ///
      int    DXCCSR_DIG003              291- 293   ///
      int    DXCCSR_DIG004              294- 296   ///
      int    DXCCSR_DIG005              297- 299   ///
      int    DXCCSR_DIG006              300- 302   ///
      int    DXCCSR_DIG007              303- 305   ///
      int    DXCCSR_DIG008              306- 308   ///
      int    DXCCSR_DIG009              309- 311   ///
      int    DXCCSR_DIG010              312- 314   ///
      int    DXCCSR_DIG011              315- 317   ///
      int    DXCCSR_DIG012              318- 320   ///
      int    DXCCSR_DIG013              321- 323   ///
      int    DXCCSR_DIG014              324- 326   ///
      int    DXCCSR_DIG015              327- 329   ///
      int    DXCCSR_DIG016              330- 332   ///
      int    DXCCSR_DIG017              333- 335   ///
      int    DXCCSR_DIG018              336- 338   ///
      int    DXCCSR_DIG019              339- 341   ///
      int    DXCCSR_DIG020              342- 344   ///
      int    DXCCSR_DIG021              345- 347   ///
      int    DXCCSR_DIG022              348- 350   ///
      int    DXCCSR_DIG023              351- 353   ///
      int    DXCCSR_DIG024              354- 356   ///
      int    DXCCSR_DIG025              357- 359   ///
      int    DXCCSR_EAR001              360- 362   ///
      int    DXCCSR_EAR002              363- 365   ///
      int    DXCCSR_EAR003              366- 368   ///
      int    DXCCSR_EAR004              369- 371   ///
      int    DXCCSR_EAR005              372- 374   ///
      int    DXCCSR_EAR006              375- 377   ///
      int    DXCCSR_END001              378- 380   ///
      int    DXCCSR_END002              381- 383   ///
      int    DXCCSR_END003              384- 386   ///
      int    DXCCSR_END004              387- 389   ///
      int    DXCCSR_END005              390- 392   ///
      int    DXCCSR_END006              393- 395   ///
      int    DXCCSR_END007              396- 398   ///
      int    DXCCSR_END008              399- 401   ///
      int    DXCCSR_END009              402- 404   ///
      int    DXCCSR_END010              405- 407   ///
      int    DXCCSR_END011              408- 410   ///
      int    DXCCSR_END012              411- 413   ///
      int    DXCCSR_END013              414- 416   ///
      int    DXCCSR_END014              417- 419   ///
      int    DXCCSR_END015              420- 422   ///
      int    DXCCSR_END016              423- 425   ///
      int    DXCCSR_END017              426- 428   ///
      int    DXCCSR_EXT001              429- 431   ///
      int    DXCCSR_EXT002              432- 434   ///
      int    DXCCSR_EXT003              435- 437   ///
      int    DXCCSR_EXT004              438- 440   ///
      int    DXCCSR_EXT005              441- 443   ///
      int    DXCCSR_EXT006              444- 446   ///
      int    DXCCSR_EXT007              447- 449   ///
      int    DXCCSR_EXT008              450- 452   ///
      int    DXCCSR_EXT009              453- 455   ///
      int    DXCCSR_EXT010              456- 458   ///
      int    DXCCSR_EXT011              459- 461   ///
      int    DXCCSR_EXT012              462- 464   ///
      int    DXCCSR_EXT013              465- 467   ///
      int    DXCCSR_EXT014              468- 470   ///
      int    DXCCSR_EXT015              471- 473   ///
      int    DXCCSR_EXT016              474- 476   ///
      int    DXCCSR_EXT017              477- 479   ///
      int    DXCCSR_EXT018              480- 482   ///
      int    DXCCSR_EXT019              483- 485   ///
      int    DXCCSR_EXT020              486- 488   ///
      int    DXCCSR_EXT021              489- 491   ///
      int    DXCCSR_EXT022              492- 494   ///
      int    DXCCSR_EXT023              495- 497   ///
      int    DXCCSR_EXT024              498- 500   ///
      int    DXCCSR_EXT025              501- 503   ///
      int    DXCCSR_EXT026              504- 506   ///
      int    DXCCSR_EXT027              507- 509   ///
      int    DXCCSR_EXT028              510- 512   ///
      int    DXCCSR_EXT029              513- 515   ///
      int    DXCCSR_EXT030              516- 518   ///
      int    DXCCSR_EYE001              519- 521   ///
      int    DXCCSR_EYE002              522- 524   ///
      int    DXCCSR_EYE003              525- 527   ///
      int    DXCCSR_EYE004              528- 530   ///
      int    DXCCSR_EYE005              531- 533   ///
      int    DXCCSR_EYE006              534- 536   ///
      int    DXCCSR_EYE007              537- 539   ///
      int    DXCCSR_EYE008              540- 542   ///
      int    DXCCSR_EYE009              543- 545   ///
      int    DXCCSR_EYE010              546- 548   ///
      int    DXCCSR_EYE011              549- 551   ///
      int    DXCCSR_EYE012              552- 554   ///
      int    DXCCSR_FAC001              555- 557   ///
      int    DXCCSR_FAC002              558- 560   ///
      int    DXCCSR_FAC003              561- 563   ///
      int    DXCCSR_FAC004              564- 566   ///
      int    DXCCSR_FAC005              567- 569   ///
      int    DXCCSR_FAC006              570- 572   ///
      int    DXCCSR_FAC007              573- 575   ///
      int    DXCCSR_FAC008              576- 578   ///
      int    DXCCSR_FAC009              579- 581   ///
      int    DXCCSR_FAC010              582- 584   ///
      int    DXCCSR_FAC011              585- 587   ///
      int    DXCCSR_FAC012              588- 590   ///
      int    DXCCSR_FAC013              591- 593   ///
      int    DXCCSR_FAC014              594- 596   ///
      int    DXCCSR_FAC015              597- 599   ///
      int    DXCCSR_FAC016              600- 602   ///
      int    DXCCSR_FAC017              603- 605   ///
      int    DXCCSR_FAC018              606- 608   ///
      int    DXCCSR_FAC019              609- 611   ///
      int    DXCCSR_FAC020              612- 614   ///
      int    DXCCSR_FAC021              615- 617   ///
      int    DXCCSR_FAC022              618- 620   ///
      int    DXCCSR_FAC023              621- 623   ///
      int    DXCCSR_FAC024              624- 626   ///
      int    DXCCSR_FAC025              627- 629   ///
      int    DXCCSR_GEN001              630- 632   ///
      int    DXCCSR_GEN002              633- 635   ///
      int    DXCCSR_GEN003              636- 638   ///
      int    DXCCSR_GEN004              639- 641   ///
      int    DXCCSR_GEN005              642- 644   ///
      int    DXCCSR_GEN006              645- 647   ///
      int    DXCCSR_GEN007              648- 650   ///
      int    DXCCSR_GEN008              651- 653   ///
      int    DXCCSR_GEN009              654- 656   ///
      int    DXCCSR_GEN010              657- 659   ///
      int    DXCCSR_GEN011              660- 662   ///
      int    DXCCSR_GEN012              663- 665   ///
      int    DXCCSR_GEN013              666- 668   ///
      int    DXCCSR_GEN014              669- 671   ///
      int    DXCCSR_GEN015              672- 674   ///
      int    DXCCSR_GEN016              675- 677   ///
      int    DXCCSR_GEN017              678- 680   ///
      int    DXCCSR_GEN018              681- 683   ///
      int    DXCCSR_GEN019              684- 686   ///
      int    DXCCSR_GEN020              687- 689   ///
      int    DXCCSR_GEN021              690- 692   ///
      int    DXCCSR_GEN022              693- 695   ///
      int    DXCCSR_GEN023              696- 698   ///
      int    DXCCSR_GEN024              699- 701   ///
      int    DXCCSR_GEN025              702- 704   ///
      int    DXCCSR_GEN026              705- 707   ///
      int    DXCCSR_INF001              708- 710   ///
      int    DXCCSR_INF002              711- 713   ///
      int    DXCCSR_INF003              714- 716   ///
      int    DXCCSR_INF004              717- 719   ///
      int    DXCCSR_INF005              720- 722   ///
      int    DXCCSR_INF006              723- 725   ///
      int    DXCCSR_INF007              726- 728   ///
      int    DXCCSR_INF008              729- 731   ///
      int    DXCCSR_INF009              732- 734   ///
      int    DXCCSR_INF010              735- 737   ///
      int    DXCCSR_INF011              738- 740   ///
      int    DXCCSR_INF012              741- 743   ///
      int    DXCCSR_INJ001              744- 746   ///
      int    DXCCSR_INJ002              747- 749   ///
      int    DXCCSR_INJ003              750- 752   ///
      int    DXCCSR_INJ004              753- 755   ///
      int    DXCCSR_INJ005              756- 758   ///
      int    DXCCSR_INJ006              759- 761   ///
      int    DXCCSR_INJ007              762- 764   ///
      int    DXCCSR_INJ008              765- 767   ///
      int    DXCCSR_INJ009              768- 770   ///
      int    DXCCSR_INJ010              771- 773   ///
      int    DXCCSR_INJ011              774- 776   ///
      int    DXCCSR_INJ012              777- 779   ///
      int    DXCCSR_INJ013              780- 782   ///
      int    DXCCSR_INJ014              783- 785   ///
      int    DXCCSR_INJ015              786- 788   ///
      int    DXCCSR_INJ016              789- 791   ///
      int    DXCCSR_INJ017              792- 794   ///
      int    DXCCSR_INJ018              795- 797   ///
      int    DXCCSR_INJ019              798- 800   ///
      int    DXCCSR_INJ020              801- 803   ///
      int    DXCCSR_INJ021              804- 806   ///
      int    DXCCSR_INJ022              807- 809   ///
      int    DXCCSR_INJ023              810- 812   ///
      int    DXCCSR_INJ024              813- 815   ///
      int    DXCCSR_INJ025              816- 818   ///
      int    DXCCSR_INJ026              819- 821   ///
      int    DXCCSR_INJ027              822- 824   ///
      int    DXCCSR_INJ028              825- 827   ///
      int    DXCCSR_INJ029              828- 830   ///
      int    DXCCSR_INJ030              831- 833   ///
      int    DXCCSR_INJ031              834- 836   ///
      int    DXCCSR_INJ032              837- 839   ///
      int    DXCCSR_INJ033              840- 842   ///
      int    DXCCSR_INJ034              843- 845   ///
      int    DXCCSR_INJ035              846- 848   ///
      int    DXCCSR_INJ036              849- 851   ///
      int    DXCCSR_INJ037              852- 854   ///
      int    DXCCSR_INJ038              855- 857   ///
      int    DXCCSR_INJ039              858- 860   ///
      int    DXCCSR_INJ040              861- 863   ///
      int    DXCCSR_INJ041              864- 866   ///
      int    DXCCSR_INJ042              867- 869   ///
      int    DXCCSR_INJ043              870- 872   ///
      int    DXCCSR_INJ044              873- 875   ///
      int    DXCCSR_INJ045              876- 878   ///
      int    DXCCSR_INJ046              879- 881   ///
      int    DXCCSR_INJ047              882- 884   ///
      int    DXCCSR_INJ048              885- 887   ///
      int    DXCCSR_INJ049              888- 890   ///
      int    DXCCSR_INJ050              891- 893   ///
      int    DXCCSR_INJ051              894- 896   ///
      int    DXCCSR_INJ052              897- 899   ///
      int    DXCCSR_INJ053              900- 902   ///
      int    DXCCSR_INJ054              903- 905   ///
      int    DXCCSR_INJ055              906- 908   ///
      int    DXCCSR_INJ056              909- 911   ///
      int    DXCCSR_INJ057              912- 914   ///
      int    DXCCSR_INJ058              915- 917   ///
      int    DXCCSR_INJ059              918- 920   ///
      int    DXCCSR_INJ060              921- 923   ///
      int    DXCCSR_INJ061              924- 926   ///
      int    DXCCSR_INJ062              927- 929   ///
      int    DXCCSR_INJ063              930- 932   ///
      int    DXCCSR_INJ064              933- 935   ///
      int    DXCCSR_INJ065              936- 938   ///
      int    DXCCSR_INJ066              939- 941   ///
      int    DXCCSR_INJ067              942- 944   ///
      int    DXCCSR_INJ068              945- 947   ///
      int    DXCCSR_INJ069              948- 950   ///
      int    DXCCSR_INJ070              951- 953   ///
      int    DXCCSR_INJ071              954- 956   ///
      int    DXCCSR_INJ072              957- 959   ///
      int    DXCCSR_INJ073              960- 962   ///
      int    DXCCSR_INJ074              963- 965   ///
      int    DXCCSR_INJ075              966- 968   ///
      int    DXCCSR_INJ076              969- 971   ///
      int    DXCCSR_MAL001              972- 974   ///
      int    DXCCSR_MAL002              975- 977   ///
      int    DXCCSR_MAL003              978- 980   ///
      int    DXCCSR_MAL004              981- 983   ///
      int    DXCCSR_MAL005              984- 986   ///
      int    DXCCSR_MAL006              987- 989   ///
      int    DXCCSR_MAL007              990- 992   ///
      int    DXCCSR_MAL008              993- 995   ///
      int    DXCCSR_MAL009              996- 998   ///
      int    DXCCSR_MAL010              999-1001   ///
      int    DXCCSR_MBD001             1002-1004   ///
      int    DXCCSR_MBD002             1005-1007   ///
      int    DXCCSR_MBD003             1008-1010   ///
      int    DXCCSR_MBD004             1011-1013   ///
      int    DXCCSR_MBD005             1014-1016   ///
      int    DXCCSR_MBD006             1017-1019   ///
      int    DXCCSR_MBD007             1020-1022   ///
      int    DXCCSR_MBD008             1023-1025   ///
      int    DXCCSR_MBD009             1026-1028   ///
      int    DXCCSR_MBD010             1029-1031   ///
      int    DXCCSR_MBD011             1032-1034   ///
      int    DXCCSR_MBD012             1035-1037   ///
      int    DXCCSR_MBD013             1038-1040   ///
      int    DXCCSR_MBD014             1041-1043   ///
      int    DXCCSR_MBD017             1044-1046   ///
      int    DXCCSR_MBD018             1047-1049   ///
      int    DXCCSR_MBD019             1050-1052   ///
      int    DXCCSR_MBD020             1053-1055   ///
      int    DXCCSR_MBD021             1056-1058   ///
      int    DXCCSR_MBD022             1059-1061   ///
      int    DXCCSR_MBD023             1062-1064   ///
      int    DXCCSR_MBD024             1065-1067   ///
      int    DXCCSR_MBD025             1068-1070   ///
      int    DXCCSR_MBD026             1071-1073   ///
      int    DXCCSR_MBD027             1074-1076   ///
      int    DXCCSR_MBD028             1077-1079   ///
      int    DXCCSR_MBD029             1080-1082   ///
      int    DXCCSR_MBD030             1083-1085   ///
      int    DXCCSR_MBD031             1086-1088   ///
      int    DXCCSR_MBD032             1089-1091   ///
      int    DXCCSR_MBD033             1092-1094   ///
      int    DXCCSR_MBD034             1095-1097   ///
      int    DXCCSR_MUS001             1098-1100   ///
      int    DXCCSR_MUS002             1101-1103   ///
      int    DXCCSR_MUS003             1104-1106   ///
      int    DXCCSR_MUS004             1107-1109   ///
      int    DXCCSR_MUS005             1110-1112   ///
      int    DXCCSR_MUS006             1113-1115   ///
      int    DXCCSR_MUS007             1116-1118   ///
      int    DXCCSR_MUS008             1119-1121   ///
      int    DXCCSR_MUS009             1122-1124   ///
      int    DXCCSR_MUS010             1125-1127   ///
      int    DXCCSR_MUS011             1128-1130   ///
      int    DXCCSR_MUS012             1131-1133   ///
      int    DXCCSR_MUS013             1134-1136   ///
      int    DXCCSR_MUS014             1137-1139   ///
      int    DXCCSR_MUS015             1140-1142   ///
      int    DXCCSR_MUS016             1143-1145   ///
      int    DXCCSR_MUS017             1146-1148   ///
      int    DXCCSR_MUS018             1149-1151   ///
      int    DXCCSR_MUS019             1152-1154   ///
      int    DXCCSR_MUS020             1155-1157   ///
      int    DXCCSR_MUS021             1158-1160   ///
      int    DXCCSR_MUS022             1161-1163   ///
      int    DXCCSR_MUS023             1164-1166   ///
      int    DXCCSR_MUS024             1167-1169   ///
      int    DXCCSR_MUS025             1170-1172   ///
      int    DXCCSR_MUS026             1173-1175   ///
      int    DXCCSR_MUS027             1176-1178   ///
      int    DXCCSR_MUS028             1179-1181   ///
      int    DXCCSR_MUS029             1182-1184   ///
      int    DXCCSR_MUS030             1185-1187   ///
      int    DXCCSR_MUS031             1188-1190   ///
      int    DXCCSR_MUS032             1191-1193   ///
      int    DXCCSR_MUS033             1194-1196   ///
      int    DXCCSR_MUS034             1197-1199   ///
      int    DXCCSR_MUS035             1200-1202   ///
      int    DXCCSR_MUS036             1203-1205   ///
      int    DXCCSR_MUS037             1206-1208   ///
      int    DXCCSR_MUS038             1209-1211   ///
      int    DXCCSR_NEO001             1212-1214   ///
      int    DXCCSR_NEO002             1215-1217   ///
      int    DXCCSR_NEO003             1218-1220   ///
      int    DXCCSR_NEO004             1221-1223   ///
      int    DXCCSR_NEO005             1224-1226   ///
      int    DXCCSR_NEO006             1227-1229   ///
      int    DXCCSR_NEO007             1230-1232   ///
      int    DXCCSR_NEO008             1233-1235   ///
      int    DXCCSR_NEO009             1236-1238   ///
      int    DXCCSR_NEO010             1239-1241   ///
      int    DXCCSR_NEO011             1242-1244   ///
      int    DXCCSR_NEO012             1245-1247   ///
      int    DXCCSR_NEO013             1248-1250   ///
      int    DXCCSR_NEO014             1251-1253   ///
      int    DXCCSR_NEO015             1254-1256   ///
      int    DXCCSR_NEO016             1257-1259   ///
      int    DXCCSR_NEO017             1260-1262   ///
      int    DXCCSR_NEO018             1263-1265   ///
      int    DXCCSR_NEO019             1266-1268   ///
      int    DXCCSR_NEO020             1269-1271   ///
      int    DXCCSR_NEO021             1272-1274   ///
      int    DXCCSR_NEO022             1275-1277   ///
      int    DXCCSR_NEO023             1278-1280   ///
      int    DXCCSR_NEO024             1281-1283   ///
      int    DXCCSR_NEO025             1284-1286   ///
      int    DXCCSR_NEO026             1287-1289   ///
      int    DXCCSR_NEO027             1290-1292   ///
      int    DXCCSR_NEO028             1293-1295   ///
      int    DXCCSR_NEO029             1296-1298   ///
      int    DXCCSR_NEO030             1299-1301   ///
      int    DXCCSR_NEO031             1302-1304   ///
      int    DXCCSR_NEO032             1305-1307   ///
      int    DXCCSR_NEO033             1308-1310   ///
      int    DXCCSR_NEO034             1311-1313   ///
      int    DXCCSR_NEO035             1314-1316   ///
      int    DXCCSR_NEO036             1317-1319   ///
      int    DXCCSR_NEO037             1320-1322   ///
      int    DXCCSR_NEO038             1323-1325   ///
      int    DXCCSR_NEO039             1326-1328   ///
      int    DXCCSR_NEO040             1329-1331   ///
      int    DXCCSR_NEO041             1332-1334   ///
      int    DXCCSR_NEO042             1335-1337   ///
      int    DXCCSR_NEO043             1338-1340   ///
      int    DXCCSR_NEO044             1341-1343   ///
      int    DXCCSR_NEO045             1344-1346   ///
      int    DXCCSR_NEO046             1347-1349   ///
      int    DXCCSR_NEO047             1350-1352   ///
      int    DXCCSR_NEO048             1353-1355   ///
      int    DXCCSR_NEO049             1356-1358   ///
      int    DXCCSR_NEO050             1359-1361   ///
      int    DXCCSR_NEO051             1362-1364   ///
      int    DXCCSR_NEO052             1365-1367   ///
      int    DXCCSR_NEO053             1368-1370   ///
      int    DXCCSR_NEO054             1371-1373   ///
      int    DXCCSR_NEO055             1374-1376   ///
      int    DXCCSR_NEO056             1377-1379   ///
      int    DXCCSR_NEO057             1380-1382   ///
      int    DXCCSR_NEO058             1383-1385   ///
      int    DXCCSR_NEO059             1386-1388   ///
      int    DXCCSR_NEO060             1389-1391   ///
      int    DXCCSR_NEO061             1392-1394   ///
      int    DXCCSR_NEO062             1395-1397   ///
      int    DXCCSR_NEO063             1398-1400   ///
      int    DXCCSR_NEO064             1401-1403   ///
      int    DXCCSR_NEO065             1404-1406   ///
      int    DXCCSR_NEO066             1407-1409   ///
      int    DXCCSR_NEO067             1410-1412   ///
      int    DXCCSR_NEO068             1413-1415   ///
      int    DXCCSR_NEO069             1416-1418   ///
      int    DXCCSR_NEO070             1419-1421   ///
      int    DXCCSR_NEO071             1422-1424   ///
      int    DXCCSR_NEO072             1425-1427   ///
      int    DXCCSR_NEO073             1428-1430   ///
      int    DXCCSR_NEO074             1431-1433   ///
      int    DXCCSR_NVS001             1434-1436   ///
      int    DXCCSR_NVS002             1437-1439   ///
      int    DXCCSR_NVS003             1440-1442   ///
      int    DXCCSR_NVS004             1443-1445   ///
      int    DXCCSR_NVS005             1446-1448   ///
      int    DXCCSR_NVS006             1449-1451   ///
      int    DXCCSR_NVS007             1452-1454   ///
      int    DXCCSR_NVS008             1455-1457   ///
      int    DXCCSR_NVS009             1458-1460   ///
      int    DXCCSR_NVS010             1461-1463   ///
      int    DXCCSR_NVS011             1464-1466   ///
      int    DXCCSR_NVS012             1467-1469   ///
      int    DXCCSR_NVS013             1470-1472   ///
      int    DXCCSR_NVS014             1473-1475   ///
      int    DXCCSR_NVS015             1476-1478   ///
      int    DXCCSR_NVS016             1479-1481   ///
      int    DXCCSR_NVS017             1482-1484   ///
      int    DXCCSR_NVS018             1485-1487   ///
      int    DXCCSR_NVS019             1488-1490   ///
      int    DXCCSR_NVS020             1491-1493   ///
      int    DXCCSR_NVS021             1494-1496   ///
      int    DXCCSR_NVS022             1497-1499   ///
      int    DXCCSR_PNL001             1500-1502   ///
      int    DXCCSR_PNL002             1503-1505   ///
      int    DXCCSR_PNL003             1506-1508   ///
      int    DXCCSR_PNL004             1509-1511   ///
      int    DXCCSR_PNL005             1512-1514   ///
      int    DXCCSR_PNL006             1515-1517   ///
      int    DXCCSR_PNL007             1518-1520   ///
      int    DXCCSR_PNL008             1521-1523   ///
      int    DXCCSR_PNL009             1524-1526   ///
      int    DXCCSR_PNL010             1527-1529   ///
      int    DXCCSR_PNL011             1530-1532   ///
      int    DXCCSR_PNL012             1533-1535   ///
      int    DXCCSR_PNL013             1536-1538   ///
      int    DXCCSR_PNL014             1539-1541   ///
      int    DXCCSR_PNL015             1542-1544   ///
      int    DXCCSR_PRG001             1545-1547   ///
      int    DXCCSR_PRG002             1548-1550   ///
      int    DXCCSR_PRG003             1551-1553   ///
      int    DXCCSR_PRG004             1554-1556   ///
      int    DXCCSR_PRG005             1557-1559   ///
      int    DXCCSR_PRG006             1560-1562   ///
      int    DXCCSR_PRG007             1563-1565   ///
      int    DXCCSR_PRG008             1566-1568   ///
      int    DXCCSR_PRG009             1569-1571   ///
      int    DXCCSR_PRG010             1572-1574   ///
      int    DXCCSR_PRG011             1575-1577   ///
      int    DXCCSR_PRG012             1578-1580   ///
      int    DXCCSR_PRG013             1581-1583   ///
      int    DXCCSR_PRG014             1584-1586   ///
      int    DXCCSR_PRG015             1587-1589   ///
      int    DXCCSR_PRG016             1590-1592   ///
      int    DXCCSR_PRG017             1593-1595   ///
      int    DXCCSR_PRG018             1596-1598   ///
      int    DXCCSR_PRG019             1599-1601   ///
      int    DXCCSR_PRG020             1602-1604   ///
      int    DXCCSR_PRG021             1605-1607   ///
      int    DXCCSR_PRG022             1608-1610   ///
      int    DXCCSR_PRG023             1611-1613   ///
      int    DXCCSR_PRG024             1614-1616   ///
      int    DXCCSR_PRG025             1617-1619   ///
      int    DXCCSR_PRG026             1620-1622   ///
      int    DXCCSR_PRG027             1623-1625   ///
      int    DXCCSR_PRG028             1626-1628   ///
      int    DXCCSR_PRG029             1629-1631   ///
      int    DXCCSR_PRG030             1632-1634   ///
      int    DXCCSR_RSP001             1635-1637   ///
      int    DXCCSR_RSP002             1638-1640   ///
      int    DXCCSR_RSP003             1641-1643   ///
      int    DXCCSR_RSP004             1644-1646   ///
      int    DXCCSR_RSP005             1647-1649   ///
      int    DXCCSR_RSP006             1650-1652   ///
      int    DXCCSR_RSP007             1653-1655   ///
      int    DXCCSR_RSP008             1656-1658   ///
      int    DXCCSR_RSP009             1659-1661   ///
      int    DXCCSR_RSP010             1662-1664   ///
      int    DXCCSR_RSP011             1665-1667   ///
      int    DXCCSR_RSP012             1668-1670   ///
      int    DXCCSR_RSP013             1671-1673   ///
      int    DXCCSR_RSP014             1674-1676   ///
      int    DXCCSR_RSP015             1677-1679   ///
      int    DXCCSR_RSP016             1680-1682   ///
      int    DXCCSR_RSP017             1683-1685   ///
      int    DXCCSR_SKN001             1686-1688   ///
      int    DXCCSR_SKN002             1689-1691   ///
      int    DXCCSR_SKN003             1692-1694   ///
      int    DXCCSR_SKN004             1695-1697   ///
      int    DXCCSR_SKN005             1698-1700   ///
      int    DXCCSR_SKN006             1701-1703   ///
      int    DXCCSR_SKN007             1704-1706   ///
      int    DXCCSR_SYM001             1707-1709   ///
      int    DXCCSR_SYM002             1710-1712   ///
      int    DXCCSR_SYM003             1713-1715   ///
      int    DXCCSR_SYM004             1716-1718   ///
      int    DXCCSR_SYM005             1719-1721   ///
      int    DXCCSR_SYM006             1722-1724   ///
      int    DXCCSR_SYM007             1725-1727   ///
      int    DXCCSR_SYM008             1728-1730   ///
      int    DXCCSR_SYM009             1731-1733   ///
      int    DXCCSR_SYM010             1734-1736   ///
      int    DXCCSR_SYM011             1737-1739   ///
      int    DXCCSR_SYM012             1740-1742   ///
      int    DXCCSR_SYM013             1743-1745   ///
      int    DXCCSR_SYM014             1746-1748   ///
      int    DXCCSR_SYM015             1749-1751   ///
      int    DXCCSR_SYM016             1752-1754   ///
      int    DXCCSR_SYM017             1755-1757   ///
      str    DXCCSR_VERSION            1758-1763   ///
      using  "MO_SEDD_2020_DX_PR_GRPS.ASC"

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

save "MO_SEDD_2020_DX_PR_GRPS.dta", replace
