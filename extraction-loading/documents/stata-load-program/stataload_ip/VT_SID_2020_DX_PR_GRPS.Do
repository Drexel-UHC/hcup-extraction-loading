/*****************************************************************************
* Creation Date: 04/12/2022   
* VT_SID_2020_DX_PR_GRPS.Do
* This program will load the 2020 VT ASCII DX_PR_GRPS File into Stata.
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
      str    DXCCSR_Default_DX1         178- 183   ///
      int    DXCCSR_BLD001              184- 186   ///
      int    DXCCSR_BLD002              187- 189   ///
      int    DXCCSR_BLD003              190- 192   ///
      int    DXCCSR_BLD004              193- 195   ///
      int    DXCCSR_BLD005              196- 198   ///
      int    DXCCSR_BLD006              199- 201   ///
      int    DXCCSR_BLD007              202- 204   ///
      int    DXCCSR_BLD008              205- 207   ///
      int    DXCCSR_BLD009              208- 210   ///
      int    DXCCSR_BLD010              211- 213   ///
      int    DXCCSR_CIR001              214- 216   ///
      int    DXCCSR_CIR002              217- 219   ///
      int    DXCCSR_CIR003              220- 222   ///
      int    DXCCSR_CIR004              223- 225   ///
      int    DXCCSR_CIR005              226- 228   ///
      int    DXCCSR_CIR006              229- 231   ///
      int    DXCCSR_CIR007              232- 234   ///
      int    DXCCSR_CIR008              235- 237   ///
      int    DXCCSR_CIR009              238- 240   ///
      int    DXCCSR_CIR010              241- 243   ///
      int    DXCCSR_CIR011              244- 246   ///
      int    DXCCSR_CIR012              247- 249   ///
      int    DXCCSR_CIR013              250- 252   ///
      int    DXCCSR_CIR014              253- 255   ///
      int    DXCCSR_CIR015              256- 258   ///
      int    DXCCSR_CIR016              259- 261   ///
      int    DXCCSR_CIR017              262- 264   ///
      int    DXCCSR_CIR018              265- 267   ///
      int    DXCCSR_CIR019              268- 270   ///
      int    DXCCSR_CIR020              271- 273   ///
      int    DXCCSR_CIR021              274- 276   ///
      int    DXCCSR_CIR022              277- 279   ///
      int    DXCCSR_CIR023              280- 282   ///
      int    DXCCSR_CIR024              283- 285   ///
      int    DXCCSR_CIR025              286- 288   ///
      int    DXCCSR_CIR026              289- 291   ///
      int    DXCCSR_CIR027              292- 294   ///
      int    DXCCSR_CIR028              295- 297   ///
      int    DXCCSR_CIR029              298- 300   ///
      int    DXCCSR_CIR030              301- 303   ///
      int    DXCCSR_CIR031              304- 306   ///
      int    DXCCSR_CIR032              307- 309   ///
      int    DXCCSR_CIR033              310- 312   ///
      int    DXCCSR_CIR034              313- 315   ///
      int    DXCCSR_CIR035              316- 318   ///
      int    DXCCSR_CIR036              319- 321   ///
      int    DXCCSR_CIR037              322- 324   ///
      int    DXCCSR_CIR038              325- 327   ///
      int    DXCCSR_CIR039              328- 330   ///
      int    DXCCSR_DIG001              331- 333   ///
      int    DXCCSR_DIG002              334- 336   ///
      int    DXCCSR_DIG003              337- 339   ///
      int    DXCCSR_DIG004              340- 342   ///
      int    DXCCSR_DIG005              343- 345   ///
      int    DXCCSR_DIG006              346- 348   ///
      int    DXCCSR_DIG007              349- 351   ///
      int    DXCCSR_DIG008              352- 354   ///
      int    DXCCSR_DIG009              355- 357   ///
      int    DXCCSR_DIG010              358- 360   ///
      int    DXCCSR_DIG011              361- 363   ///
      int    DXCCSR_DIG012              364- 366   ///
      int    DXCCSR_DIG013              367- 369   ///
      int    DXCCSR_DIG014              370- 372   ///
      int    DXCCSR_DIG015              373- 375   ///
      int    DXCCSR_DIG016              376- 378   ///
      int    DXCCSR_DIG017              379- 381   ///
      int    DXCCSR_DIG018              382- 384   ///
      int    DXCCSR_DIG019              385- 387   ///
      int    DXCCSR_DIG020              388- 390   ///
      int    DXCCSR_DIG021              391- 393   ///
      int    DXCCSR_DIG022              394- 396   ///
      int    DXCCSR_DIG023              397- 399   ///
      int    DXCCSR_DIG024              400- 402   ///
      int    DXCCSR_DIG025              403- 405   ///
      int    DXCCSR_EAR001              406- 408   ///
      int    DXCCSR_EAR002              409- 411   ///
      int    DXCCSR_EAR003              412- 414   ///
      int    DXCCSR_EAR004              415- 417   ///
      int    DXCCSR_EAR005              418- 420   ///
      int    DXCCSR_EAR006              421- 423   ///
      int    DXCCSR_END001              424- 426   ///
      int    DXCCSR_END002              427- 429   ///
      int    DXCCSR_END003              430- 432   ///
      int    DXCCSR_END004              433- 435   ///
      int    DXCCSR_END005              436- 438   ///
      int    DXCCSR_END006              439- 441   ///
      int    DXCCSR_END007              442- 444   ///
      int    DXCCSR_END008              445- 447   ///
      int    DXCCSR_END009              448- 450   ///
      int    DXCCSR_END010              451- 453   ///
      int    DXCCSR_END011              454- 456   ///
      int    DXCCSR_END012              457- 459   ///
      int    DXCCSR_END013              460- 462   ///
      int    DXCCSR_END014              463- 465   ///
      int    DXCCSR_END015              466- 468   ///
      int    DXCCSR_END016              469- 471   ///
      int    DXCCSR_END017              472- 474   ///
      int    DXCCSR_EXT001              475- 477   ///
      int    DXCCSR_EXT002              478- 480   ///
      int    DXCCSR_EXT003              481- 483   ///
      int    DXCCSR_EXT004              484- 486   ///
      int    DXCCSR_EXT005              487- 489   ///
      int    DXCCSR_EXT006              490- 492   ///
      int    DXCCSR_EXT007              493- 495   ///
      int    DXCCSR_EXT008              496- 498   ///
      int    DXCCSR_EXT009              499- 501   ///
      int    DXCCSR_EXT010              502- 504   ///
      int    DXCCSR_EXT011              505- 507   ///
      int    DXCCSR_EXT012              508- 510   ///
      int    DXCCSR_EXT013              511- 513   ///
      int    DXCCSR_EXT014              514- 516   ///
      int    DXCCSR_EXT015              517- 519   ///
      int    DXCCSR_EXT016              520- 522   ///
      int    DXCCSR_EXT017              523- 525   ///
      int    DXCCSR_EXT018              526- 528   ///
      int    DXCCSR_EXT019              529- 531   ///
      int    DXCCSR_EXT020              532- 534   ///
      int    DXCCSR_EXT021              535- 537   ///
      int    DXCCSR_EXT022              538- 540   ///
      int    DXCCSR_EXT023              541- 543   ///
      int    DXCCSR_EXT024              544- 546   ///
      int    DXCCSR_EXT025              547- 549   ///
      int    DXCCSR_EXT026              550- 552   ///
      int    DXCCSR_EXT027              553- 555   ///
      int    DXCCSR_EXT028              556- 558   ///
      int    DXCCSR_EXT029              559- 561   ///
      int    DXCCSR_EXT030              562- 564   ///
      int    DXCCSR_EYE001              565- 567   ///
      int    DXCCSR_EYE002              568- 570   ///
      int    DXCCSR_EYE003              571- 573   ///
      int    DXCCSR_EYE004              574- 576   ///
      int    DXCCSR_EYE005              577- 579   ///
      int    DXCCSR_EYE006              580- 582   ///
      int    DXCCSR_EYE007              583- 585   ///
      int    DXCCSR_EYE008              586- 588   ///
      int    DXCCSR_EYE009              589- 591   ///
      int    DXCCSR_EYE010              592- 594   ///
      int    DXCCSR_EYE011              595- 597   ///
      int    DXCCSR_EYE012              598- 600   ///
      int    DXCCSR_FAC001              601- 603   ///
      int    DXCCSR_FAC002              604- 606   ///
      int    DXCCSR_FAC003              607- 609   ///
      int    DXCCSR_FAC004              610- 612   ///
      int    DXCCSR_FAC005              613- 615   ///
      int    DXCCSR_FAC006              616- 618   ///
      int    DXCCSR_FAC007              619- 621   ///
      int    DXCCSR_FAC008              622- 624   ///
      int    DXCCSR_FAC009              625- 627   ///
      int    DXCCSR_FAC010              628- 630   ///
      int    DXCCSR_FAC011              631- 633   ///
      int    DXCCSR_FAC012              634- 636   ///
      int    DXCCSR_FAC013              637- 639   ///
      int    DXCCSR_FAC014              640- 642   ///
      int    DXCCSR_FAC015              643- 645   ///
      int    DXCCSR_FAC016              646- 648   ///
      int    DXCCSR_FAC017              649- 651   ///
      int    DXCCSR_FAC018              652- 654   ///
      int    DXCCSR_FAC019              655- 657   ///
      int    DXCCSR_FAC020              658- 660   ///
      int    DXCCSR_FAC021              661- 663   ///
      int    DXCCSR_FAC022              664- 666   ///
      int    DXCCSR_FAC023              667- 669   ///
      int    DXCCSR_FAC024              670- 672   ///
      int    DXCCSR_FAC025              673- 675   ///
      int    DXCCSR_GEN001              676- 678   ///
      int    DXCCSR_GEN002              679- 681   ///
      int    DXCCSR_GEN003              682- 684   ///
      int    DXCCSR_GEN004              685- 687   ///
      int    DXCCSR_GEN005              688- 690   ///
      int    DXCCSR_GEN006              691- 693   ///
      int    DXCCSR_GEN007              694- 696   ///
      int    DXCCSR_GEN008              697- 699   ///
      int    DXCCSR_GEN009              700- 702   ///
      int    DXCCSR_GEN010              703- 705   ///
      int    DXCCSR_GEN011              706- 708   ///
      int    DXCCSR_GEN012              709- 711   ///
      int    DXCCSR_GEN013              712- 714   ///
      int    DXCCSR_GEN014              715- 717   ///
      int    DXCCSR_GEN015              718- 720   ///
      int    DXCCSR_GEN016              721- 723   ///
      int    DXCCSR_GEN017              724- 726   ///
      int    DXCCSR_GEN018              727- 729   ///
      int    DXCCSR_GEN019              730- 732   ///
      int    DXCCSR_GEN020              733- 735   ///
      int    DXCCSR_GEN021              736- 738   ///
      int    DXCCSR_GEN022              739- 741   ///
      int    DXCCSR_GEN023              742- 744   ///
      int    DXCCSR_GEN024              745- 747   ///
      int    DXCCSR_GEN025              748- 750   ///
      int    DXCCSR_GEN026              751- 753   ///
      int    DXCCSR_INF001              754- 756   ///
      int    DXCCSR_INF002              757- 759   ///
      int    DXCCSR_INF003              760- 762   ///
      int    DXCCSR_INF004              763- 765   ///
      int    DXCCSR_INF005              766- 768   ///
      int    DXCCSR_INF006              769- 771   ///
      int    DXCCSR_INF007              772- 774   ///
      int    DXCCSR_INF008              775- 777   ///
      int    DXCCSR_INF009              778- 780   ///
      int    DXCCSR_INF010              781- 783   ///
      int    DXCCSR_INF011              784- 786   ///
      int    DXCCSR_INF012              787- 789   ///
      int    DXCCSR_INJ001              790- 792   ///
      int    DXCCSR_INJ002              793- 795   ///
      int    DXCCSR_INJ003              796- 798   ///
      int    DXCCSR_INJ004              799- 801   ///
      int    DXCCSR_INJ005              802- 804   ///
      int    DXCCSR_INJ006              805- 807   ///
      int    DXCCSR_INJ007              808- 810   ///
      int    DXCCSR_INJ008              811- 813   ///
      int    DXCCSR_INJ009              814- 816   ///
      int    DXCCSR_INJ010              817- 819   ///
      int    DXCCSR_INJ011              820- 822   ///
      int    DXCCSR_INJ012              823- 825   ///
      int    DXCCSR_INJ013              826- 828   ///
      int    DXCCSR_INJ014              829- 831   ///
      int    DXCCSR_INJ015              832- 834   ///
      int    DXCCSR_INJ016              835- 837   ///
      int    DXCCSR_INJ017              838- 840   ///
      int    DXCCSR_INJ018              841- 843   ///
      int    DXCCSR_INJ019              844- 846   ///
      int    DXCCSR_INJ020              847- 849   ///
      int    DXCCSR_INJ021              850- 852   ///
      int    DXCCSR_INJ022              853- 855   ///
      int    DXCCSR_INJ023              856- 858   ///
      int    DXCCSR_INJ024              859- 861   ///
      int    DXCCSR_INJ025              862- 864   ///
      int    DXCCSR_INJ026              865- 867   ///
      int    DXCCSR_INJ027              868- 870   ///
      int    DXCCSR_INJ028              871- 873   ///
      int    DXCCSR_INJ029              874- 876   ///
      int    DXCCSR_INJ030              877- 879   ///
      int    DXCCSR_INJ031              880- 882   ///
      int    DXCCSR_INJ032              883- 885   ///
      int    DXCCSR_INJ033              886- 888   ///
      int    DXCCSR_INJ034              889- 891   ///
      int    DXCCSR_INJ035              892- 894   ///
      int    DXCCSR_INJ036              895- 897   ///
      int    DXCCSR_INJ037              898- 900   ///
      int    DXCCSR_INJ038              901- 903   ///
      int    DXCCSR_INJ039              904- 906   ///
      int    DXCCSR_INJ040              907- 909   ///
      int    DXCCSR_INJ041              910- 912   ///
      int    DXCCSR_INJ042              913- 915   ///
      int    DXCCSR_INJ043              916- 918   ///
      int    DXCCSR_INJ044              919- 921   ///
      int    DXCCSR_INJ045              922- 924   ///
      int    DXCCSR_INJ046              925- 927   ///
      int    DXCCSR_INJ047              928- 930   ///
      int    DXCCSR_INJ048              931- 933   ///
      int    DXCCSR_INJ049              934- 936   ///
      int    DXCCSR_INJ050              937- 939   ///
      int    DXCCSR_INJ051              940- 942   ///
      int    DXCCSR_INJ052              943- 945   ///
      int    DXCCSR_INJ053              946- 948   ///
      int    DXCCSR_INJ054              949- 951   ///
      int    DXCCSR_INJ055              952- 954   ///
      int    DXCCSR_INJ056              955- 957   ///
      int    DXCCSR_INJ057              958- 960   ///
      int    DXCCSR_INJ058              961- 963   ///
      int    DXCCSR_INJ059              964- 966   ///
      int    DXCCSR_INJ060              967- 969   ///
      int    DXCCSR_INJ061              970- 972   ///
      int    DXCCSR_INJ062              973- 975   ///
      int    DXCCSR_INJ063              976- 978   ///
      int    DXCCSR_INJ064              979- 981   ///
      int    DXCCSR_INJ065              982- 984   ///
      int    DXCCSR_INJ066              985- 987   ///
      int    DXCCSR_INJ067              988- 990   ///
      int    DXCCSR_INJ068              991- 993   ///
      int    DXCCSR_INJ069              994- 996   ///
      int    DXCCSR_INJ070              997- 999   ///
      int    DXCCSR_INJ071             1000-1002   ///
      int    DXCCSR_INJ072             1003-1005   ///
      int    DXCCSR_INJ073             1006-1008   ///
      int    DXCCSR_INJ074             1009-1011   ///
      int    DXCCSR_INJ075             1012-1014   ///
      int    DXCCSR_INJ076             1015-1017   ///
      int    DXCCSR_MAL001             1018-1020   ///
      int    DXCCSR_MAL002             1021-1023   ///
      int    DXCCSR_MAL003             1024-1026   ///
      int    DXCCSR_MAL004             1027-1029   ///
      int    DXCCSR_MAL005             1030-1032   ///
      int    DXCCSR_MAL006             1033-1035   ///
      int    DXCCSR_MAL007             1036-1038   ///
      int    DXCCSR_MAL008             1039-1041   ///
      int    DXCCSR_MAL009             1042-1044   ///
      int    DXCCSR_MAL010             1045-1047   ///
      int    DXCCSR_MBD001             1048-1050   ///
      int    DXCCSR_MBD002             1051-1053   ///
      int    DXCCSR_MBD003             1054-1056   ///
      int    DXCCSR_MBD004             1057-1059   ///
      int    DXCCSR_MBD005             1060-1062   ///
      int    DXCCSR_MBD006             1063-1065   ///
      int    DXCCSR_MBD007             1066-1068   ///
      int    DXCCSR_MBD008             1069-1071   ///
      int    DXCCSR_MBD009             1072-1074   ///
      int    DXCCSR_MBD010             1075-1077   ///
      int    DXCCSR_MBD011             1078-1080   ///
      int    DXCCSR_MBD012             1081-1083   ///
      int    DXCCSR_MBD013             1084-1086   ///
      int    DXCCSR_MBD014             1087-1089   ///
      int    DXCCSR_MBD017             1090-1092   ///
      int    DXCCSR_MBD018             1093-1095   ///
      int    DXCCSR_MBD019             1096-1098   ///
      int    DXCCSR_MBD020             1099-1101   ///
      int    DXCCSR_MBD021             1102-1104   ///
      int    DXCCSR_MBD022             1105-1107   ///
      int    DXCCSR_MBD023             1108-1110   ///
      int    DXCCSR_MBD024             1111-1113   ///
      int    DXCCSR_MBD025             1114-1116   ///
      int    DXCCSR_MBD026             1117-1119   ///
      int    DXCCSR_MBD027             1120-1122   ///
      int    DXCCSR_MBD028             1123-1125   ///
      int    DXCCSR_MBD029             1126-1128   ///
      int    DXCCSR_MBD030             1129-1131   ///
      int    DXCCSR_MBD031             1132-1134   ///
      int    DXCCSR_MBD032             1135-1137   ///
      int    DXCCSR_MBD033             1138-1140   ///
      int    DXCCSR_MBD034             1141-1143   ///
      int    DXCCSR_MUS001             1144-1146   ///
      int    DXCCSR_MUS002             1147-1149   ///
      int    DXCCSR_MUS003             1150-1152   ///
      int    DXCCSR_MUS004             1153-1155   ///
      int    DXCCSR_MUS005             1156-1158   ///
      int    DXCCSR_MUS006             1159-1161   ///
      int    DXCCSR_MUS007             1162-1164   ///
      int    DXCCSR_MUS008             1165-1167   ///
      int    DXCCSR_MUS009             1168-1170   ///
      int    DXCCSR_MUS010             1171-1173   ///
      int    DXCCSR_MUS011             1174-1176   ///
      int    DXCCSR_MUS012             1177-1179   ///
      int    DXCCSR_MUS013             1180-1182   ///
      int    DXCCSR_MUS014             1183-1185   ///
      int    DXCCSR_MUS015             1186-1188   ///
      int    DXCCSR_MUS016             1189-1191   ///
      int    DXCCSR_MUS017             1192-1194   ///
      int    DXCCSR_MUS018             1195-1197   ///
      int    DXCCSR_MUS019             1198-1200   ///
      int    DXCCSR_MUS020             1201-1203   ///
      int    DXCCSR_MUS021             1204-1206   ///
      int    DXCCSR_MUS022             1207-1209   ///
      int    DXCCSR_MUS023             1210-1212   ///
      int    DXCCSR_MUS024             1213-1215   ///
      int    DXCCSR_MUS025             1216-1218   ///
      int    DXCCSR_MUS026             1219-1221   ///
      int    DXCCSR_MUS027             1222-1224   ///
      int    DXCCSR_MUS028             1225-1227   ///
      int    DXCCSR_MUS029             1228-1230   ///
      int    DXCCSR_MUS030             1231-1233   ///
      int    DXCCSR_MUS031             1234-1236   ///
      int    DXCCSR_MUS032             1237-1239   ///
      int    DXCCSR_MUS033             1240-1242   ///
      int    DXCCSR_MUS034             1243-1245   ///
      int    DXCCSR_MUS035             1246-1248   ///
      int    DXCCSR_MUS036             1249-1251   ///
      int    DXCCSR_MUS037             1252-1254   ///
      int    DXCCSR_MUS038             1255-1257   ///
      int    DXCCSR_NEO001             1258-1260   ///
      int    DXCCSR_NEO002             1261-1263   ///
      int    DXCCSR_NEO003             1264-1266   ///
      int    DXCCSR_NEO004             1267-1269   ///
      int    DXCCSR_NEO005             1270-1272   ///
      int    DXCCSR_NEO006             1273-1275   ///
      int    DXCCSR_NEO007             1276-1278   ///
      int    DXCCSR_NEO008             1279-1281   ///
      int    DXCCSR_NEO009             1282-1284   ///
      int    DXCCSR_NEO010             1285-1287   ///
      int    DXCCSR_NEO011             1288-1290   ///
      int    DXCCSR_NEO012             1291-1293   ///
      int    DXCCSR_NEO013             1294-1296   ///
      int    DXCCSR_NEO014             1297-1299   ///
      int    DXCCSR_NEO015             1300-1302   ///
      int    DXCCSR_NEO016             1303-1305   ///
      int    DXCCSR_NEO017             1306-1308   ///
      int    DXCCSR_NEO018             1309-1311   ///
      int    DXCCSR_NEO019             1312-1314   ///
      int    DXCCSR_NEO020             1315-1317   ///
      int    DXCCSR_NEO021             1318-1320   ///
      int    DXCCSR_NEO022             1321-1323   ///
      int    DXCCSR_NEO023             1324-1326   ///
      int    DXCCSR_NEO024             1327-1329   ///
      int    DXCCSR_NEO025             1330-1332   ///
      int    DXCCSR_NEO026             1333-1335   ///
      int    DXCCSR_NEO027             1336-1338   ///
      int    DXCCSR_NEO028             1339-1341   ///
      int    DXCCSR_NEO029             1342-1344   ///
      int    DXCCSR_NEO030             1345-1347   ///
      int    DXCCSR_NEO031             1348-1350   ///
      int    DXCCSR_NEO032             1351-1353   ///
      int    DXCCSR_NEO033             1354-1356   ///
      int    DXCCSR_NEO034             1357-1359   ///
      int    DXCCSR_NEO035             1360-1362   ///
      int    DXCCSR_NEO036             1363-1365   ///
      int    DXCCSR_NEO037             1366-1368   ///
      int    DXCCSR_NEO038             1369-1371   ///
      int    DXCCSR_NEO039             1372-1374   ///
      int    DXCCSR_NEO040             1375-1377   ///
      int    DXCCSR_NEO041             1378-1380   ///
      int    DXCCSR_NEO042             1381-1383   ///
      int    DXCCSR_NEO043             1384-1386   ///
      int    DXCCSR_NEO044             1387-1389   ///
      int    DXCCSR_NEO045             1390-1392   ///
      int    DXCCSR_NEO046             1393-1395   ///
      int    DXCCSR_NEO047             1396-1398   ///
      int    DXCCSR_NEO048             1399-1401   ///
      int    DXCCSR_NEO049             1402-1404   ///
      int    DXCCSR_NEO050             1405-1407   ///
      int    DXCCSR_NEO051             1408-1410   ///
      int    DXCCSR_NEO052             1411-1413   ///
      int    DXCCSR_NEO053             1414-1416   ///
      int    DXCCSR_NEO054             1417-1419   ///
      int    DXCCSR_NEO055             1420-1422   ///
      int    DXCCSR_NEO056             1423-1425   ///
      int    DXCCSR_NEO057             1426-1428   ///
      int    DXCCSR_NEO058             1429-1431   ///
      int    DXCCSR_NEO059             1432-1434   ///
      int    DXCCSR_NEO060             1435-1437   ///
      int    DXCCSR_NEO061             1438-1440   ///
      int    DXCCSR_NEO062             1441-1443   ///
      int    DXCCSR_NEO063             1444-1446   ///
      int    DXCCSR_NEO064             1447-1449   ///
      int    DXCCSR_NEO065             1450-1452   ///
      int    DXCCSR_NEO066             1453-1455   ///
      int    DXCCSR_NEO067             1456-1458   ///
      int    DXCCSR_NEO068             1459-1461   ///
      int    DXCCSR_NEO069             1462-1464   ///
      int    DXCCSR_NEO070             1465-1467   ///
      int    DXCCSR_NEO071             1468-1470   ///
      int    DXCCSR_NEO072             1471-1473   ///
      int    DXCCSR_NEO073             1474-1476   ///
      int    DXCCSR_NEO074             1477-1479   ///
      int    DXCCSR_NVS001             1480-1482   ///
      int    DXCCSR_NVS002             1483-1485   ///
      int    DXCCSR_NVS003             1486-1488   ///
      int    DXCCSR_NVS004             1489-1491   ///
      int    DXCCSR_NVS005             1492-1494   ///
      int    DXCCSR_NVS006             1495-1497   ///
      int    DXCCSR_NVS007             1498-1500   ///
      int    DXCCSR_NVS008             1501-1503   ///
      int    DXCCSR_NVS009             1504-1506   ///
      int    DXCCSR_NVS010             1507-1509   ///
      int    DXCCSR_NVS011             1510-1512   ///
      int    DXCCSR_NVS012             1513-1515   ///
      int    DXCCSR_NVS013             1516-1518   ///
      int    DXCCSR_NVS014             1519-1521   ///
      int    DXCCSR_NVS015             1522-1524   ///
      int    DXCCSR_NVS016             1525-1527   ///
      int    DXCCSR_NVS017             1528-1530   ///
      int    DXCCSR_NVS018             1531-1533   ///
      int    DXCCSR_NVS019             1534-1536   ///
      int    DXCCSR_NVS020             1537-1539   ///
      int    DXCCSR_NVS021             1540-1542   ///
      int    DXCCSR_NVS022             1543-1545   ///
      int    DXCCSR_PNL001             1546-1548   ///
      int    DXCCSR_PNL002             1549-1551   ///
      int    DXCCSR_PNL003             1552-1554   ///
      int    DXCCSR_PNL004             1555-1557   ///
      int    DXCCSR_PNL005             1558-1560   ///
      int    DXCCSR_PNL006             1561-1563   ///
      int    DXCCSR_PNL007             1564-1566   ///
      int    DXCCSR_PNL008             1567-1569   ///
      int    DXCCSR_PNL009             1570-1572   ///
      int    DXCCSR_PNL010             1573-1575   ///
      int    DXCCSR_PNL011             1576-1578   ///
      int    DXCCSR_PNL012             1579-1581   ///
      int    DXCCSR_PNL013             1582-1584   ///
      int    DXCCSR_PNL014             1585-1587   ///
      int    DXCCSR_PNL015             1588-1590   ///
      int    DXCCSR_PRG001             1591-1593   ///
      int    DXCCSR_PRG002             1594-1596   ///
      int    DXCCSR_PRG003             1597-1599   ///
      int    DXCCSR_PRG004             1600-1602   ///
      int    DXCCSR_PRG005             1603-1605   ///
      int    DXCCSR_PRG006             1606-1608   ///
      int    DXCCSR_PRG007             1609-1611   ///
      int    DXCCSR_PRG008             1612-1614   ///
      int    DXCCSR_PRG009             1615-1617   ///
      int    DXCCSR_PRG010             1618-1620   ///
      int    DXCCSR_PRG011             1621-1623   ///
      int    DXCCSR_PRG012             1624-1626   ///
      int    DXCCSR_PRG013             1627-1629   ///
      int    DXCCSR_PRG014             1630-1632   ///
      int    DXCCSR_PRG015             1633-1635   ///
      int    DXCCSR_PRG016             1636-1638   ///
      int    DXCCSR_PRG017             1639-1641   ///
      int    DXCCSR_PRG018             1642-1644   ///
      int    DXCCSR_PRG019             1645-1647   ///
      int    DXCCSR_PRG020             1648-1650   ///
      int    DXCCSR_PRG021             1651-1653   ///
      int    DXCCSR_PRG022             1654-1656   ///
      int    DXCCSR_PRG023             1657-1659   ///
      int    DXCCSR_PRG024             1660-1662   ///
      int    DXCCSR_PRG025             1663-1665   ///
      int    DXCCSR_PRG026             1666-1668   ///
      int    DXCCSR_PRG027             1669-1671   ///
      int    DXCCSR_PRG028             1672-1674   ///
      int    DXCCSR_PRG029             1675-1677   ///
      int    DXCCSR_PRG030             1678-1680   ///
      int    DXCCSR_RSP001             1681-1683   ///
      int    DXCCSR_RSP002             1684-1686   ///
      int    DXCCSR_RSP003             1687-1689   ///
      int    DXCCSR_RSP004             1690-1692   ///
      int    DXCCSR_RSP005             1693-1695   ///
      int    DXCCSR_RSP006             1696-1698   ///
      int    DXCCSR_RSP007             1699-1701   ///
      int    DXCCSR_RSP008             1702-1704   ///
      int    DXCCSR_RSP009             1705-1707   ///
      int    DXCCSR_RSP010             1708-1710   ///
      int    DXCCSR_RSP011             1711-1713   ///
      int    DXCCSR_RSP012             1714-1716   ///
      int    DXCCSR_RSP013             1717-1719   ///
      int    DXCCSR_RSP014             1720-1722   ///
      int    DXCCSR_RSP015             1723-1725   ///
      int    DXCCSR_RSP016             1726-1728   ///
      int    DXCCSR_RSP017             1729-1731   ///
      int    DXCCSR_SKN001             1732-1734   ///
      int    DXCCSR_SKN002             1735-1737   ///
      int    DXCCSR_SKN003             1738-1740   ///
      int    DXCCSR_SKN004             1741-1743   ///
      int    DXCCSR_SKN005             1744-1746   ///
      int    DXCCSR_SKN006             1747-1749   ///
      int    DXCCSR_SKN007             1750-1752   ///
      int    DXCCSR_SYM001             1753-1755   ///
      int    DXCCSR_SYM002             1756-1758   ///
      int    DXCCSR_SYM003             1759-1761   ///
      int    DXCCSR_SYM004             1762-1764   ///
      int    DXCCSR_SYM005             1765-1767   ///
      int    DXCCSR_SYM006             1768-1770   ///
      int    DXCCSR_SYM007             1771-1773   ///
      int    DXCCSR_SYM008             1774-1776   ///
      int    DXCCSR_SYM009             1777-1779   ///
      int    DXCCSR_SYM010             1780-1782   ///
      int    DXCCSR_SYM011             1783-1785   ///
      int    DXCCSR_SYM012             1786-1788   ///
      int    DXCCSR_SYM013             1789-1791   ///
      int    DXCCSR_SYM014             1792-1794   ///
      int    DXCCSR_SYM015             1795-1797   ///
      int    DXCCSR_SYM016             1798-1800   ///
      int    DXCCSR_SYM017             1801-1803   ///
      str    DXCCSR_VERSION            1804-1809   ///
      int    PRCCSR_ADM001             1810-1812   ///
      int    PRCCSR_ADM002             1813-1815   ///
      int    PRCCSR_ADM003             1816-1818   ///
      int    PRCCSR_ADM004             1819-1821   ///
      int    PRCCSR_ADM005             1822-1824   ///
      int    PRCCSR_ADM006             1825-1827   ///
      int    PRCCSR_ADM007             1828-1830   ///
      int    PRCCSR_ADM008             1831-1833   ///
      int    PRCCSR_ADM009             1834-1836   ///
      int    PRCCSR_ADM010             1837-1839   ///
      int    PRCCSR_ADM011             1840-1842   ///
      int    PRCCSR_ADM012             1843-1845   ///
      int    PRCCSR_ADM013             1846-1848   ///
      int    PRCCSR_ADM014             1849-1851   ///
      int    PRCCSR_ADM015             1852-1854   ///
      int    PRCCSR_ADM016             1855-1857   ///
      int    PRCCSR_ADM017             1858-1860   ///
      int    PRCCSR_ADM018             1861-1863   ///
      int    PRCCSR_ADM019             1864-1866   ///
      int    PRCCSR_ADM020             1867-1869   ///
      int    PRCCSR_ADM021             1870-1872   ///
      int    PRCCSR_CAR001             1873-1875   ///
      int    PRCCSR_CAR002             1876-1878   ///
      int    PRCCSR_CAR003             1879-1881   ///
      int    PRCCSR_CAR004             1882-1884   ///
      int    PRCCSR_CAR005             1885-1887   ///
      int    PRCCSR_CAR006             1888-1890   ///
      int    PRCCSR_CAR007             1891-1893   ///
      int    PRCCSR_CAR008             1894-1896   ///
      int    PRCCSR_CAR009             1897-1899   ///
      int    PRCCSR_CAR010             1900-1902   ///
      int    PRCCSR_CAR011             1903-1905   ///
      int    PRCCSR_CAR012             1906-1908   ///
      int    PRCCSR_CAR013             1909-1911   ///
      int    PRCCSR_CAR014             1912-1914   ///
      int    PRCCSR_CAR015             1915-1917   ///
      int    PRCCSR_CAR016             1918-1920   ///
      int    PRCCSR_CAR017             1921-1923   ///
      int    PRCCSR_CAR018             1924-1926   ///
      int    PRCCSR_CAR019             1927-1929   ///
      int    PRCCSR_CAR020             1930-1932   ///
      int    PRCCSR_CAR021             1933-1935   ///
      int    PRCCSR_CAR022             1936-1938   ///
      int    PRCCSR_CAR023             1939-1941   ///
      int    PRCCSR_CAR024             1942-1944   ///
      int    PRCCSR_CAR025             1945-1947   ///
      int    PRCCSR_CAR026             1948-1950   ///
      int    PRCCSR_CAR027             1951-1953   ///
      int    PRCCSR_CAR028             1954-1956   ///
      int    PRCCSR_CAR029             1957-1959   ///
      int    PRCCSR_CHP001             1960-1962   ///
      int    PRCCSR_CNS001             1963-1965   ///
      int    PRCCSR_CNS002             1966-1968   ///
      int    PRCCSR_CNS003             1969-1971   ///
      int    PRCCSR_CNS004             1972-1974   ///
      int    PRCCSR_CNS005             1975-1977   ///
      int    PRCCSR_CNS006             1978-1980   ///
      int    PRCCSR_CNS007             1981-1983   ///
      int    PRCCSR_CNS008             1984-1986   ///
      int    PRCCSR_CNS009             1987-1989   ///
      int    PRCCSR_CNS010             1990-1992   ///
      int    PRCCSR_CNS011             1993-1995   ///
      int    PRCCSR_CNS012             1996-1998   ///
      int    PRCCSR_CNS013             1999-2001   ///
      int    PRCCSR_CNS014             2002-2004   ///
      int    PRCCSR_ENP001             2005-2007   ///
      int    PRCCSR_ENP002             2008-2010   ///
      int    PRCCSR_ENP003             2011-2013   ///
      int    PRCCSR_ENP004             2014-2016   ///
      int    PRCCSR_ENP005             2017-2019   ///
      int    PRCCSR_ENP006             2020-2022   ///
      int    PRCCSR_ENT001             2023-2025   ///
      int    PRCCSR_ENT002             2026-2028   ///
      int    PRCCSR_ENT003             2029-2031   ///
      int    PRCCSR_ENT004             2032-2034   ///
      int    PRCCSR_ENT005             2035-2037   ///
      int    PRCCSR_ENT006             2038-2040   ///
      int    PRCCSR_ENT007             2041-2043   ///
      int    PRCCSR_ENT008             2044-2046   ///
      int    PRCCSR_ENT009             2047-2049   ///
      int    PRCCSR_ENT010             2050-2052   ///
      int    PRCCSR_ENT011             2053-2055   ///
      int    PRCCSR_ENT012             2056-2058   ///
      int    PRCCSR_ENT013             2059-2061   ///
      int    PRCCSR_ENT014             2062-2064   ///
      int    PRCCSR_ENT015             2065-2067   ///
      int    PRCCSR_ENT016             2068-2070   ///
      int    PRCCSR_ENT017             2071-2073   ///
      int    PRCCSR_ESA001             2074-2076   ///
      int    PRCCSR_ESA002             2077-2079   ///
      int    PRCCSR_ESA003             2080-2082   ///
      int    PRCCSR_ESA004             2083-2085   ///
      int    PRCCSR_ESA005             2086-2088   ///
      int    PRCCSR_ESA006             2089-2091   ///
      int    PRCCSR_ESA007             2092-2094   ///
      int    PRCCSR_ESA008             2095-2097   ///
      int    PRCCSR_ESA009             2098-2100   ///
      int    PRCCSR_ESA010             2101-2103   ///
      int    PRCCSR_ESA011             2104-2106   ///
      int    PRCCSR_EST001             2107-2109   ///
      int    PRCCSR_EST002             2110-2112   ///
      int    PRCCSR_EST003             2113-2115   ///
      int    PRCCSR_EST004             2116-2118   ///
      int    PRCCSR_EST005             2119-2121   ///
      int    PRCCSR_EYP001             2122-2124   ///
      int    PRCCSR_EYP002             2125-2127   ///
      int    PRCCSR_FRS001             2128-2130   ///
      int    PRCCSR_FRS002             2131-2133   ///
      int    PRCCSR_FRS003             2134-2136   ///
      int    PRCCSR_FRS004             2137-2139   ///
      int    PRCCSR_FRS005             2140-2142   ///
      int    PRCCSR_FRS006             2143-2145   ///
      int    PRCCSR_FRS007             2146-2148   ///
      int    PRCCSR_FRS008             2149-2151   ///
      int    PRCCSR_FRS009             2152-2154   ///
      int    PRCCSR_FRS010             2155-2157   ///
      int    PRCCSR_FRS011             2158-2160   ///
      int    PRCCSR_FRS012             2161-2163   ///
      int    PRCCSR_FRS013             2164-2166   ///
      int    PRCCSR_FRS014             2167-2169   ///
      int    PRCCSR_FRS015             2170-2172   ///
      int    PRCCSR_GIS001             2173-2175   ///
      int    PRCCSR_GIS002             2176-2178   ///
      int    PRCCSR_GIS003             2179-2181   ///
      int    PRCCSR_GIS004             2182-2184   ///
      int    PRCCSR_GIS005             2185-2187   ///
      int    PRCCSR_GIS006             2188-2190   ///
      int    PRCCSR_GIS007             2191-2193   ///
      int    PRCCSR_GIS008             2194-2196   ///
      int    PRCCSR_GIS009             2197-2199   ///
      int    PRCCSR_GIS010             2200-2202   ///
      int    PRCCSR_GIS011             2203-2205   ///
      int    PRCCSR_GIS012             2206-2208   ///
      int    PRCCSR_GIS013             2209-2211   ///
      int    PRCCSR_GIS014             2212-2214   ///
      int    PRCCSR_GIS015             2215-2217   ///
      int    PRCCSR_GIS016             2218-2220   ///
      int    PRCCSR_GIS017             2221-2223   ///
      int    PRCCSR_GIS018             2224-2226   ///
      int    PRCCSR_GIS019             2227-2229   ///
      int    PRCCSR_GIS020             2230-2232   ///
      int    PRCCSR_GIS021             2233-2235   ///
      int    PRCCSR_GIS022             2236-2238   ///
      int    PRCCSR_GIS023             2239-2241   ///
      int    PRCCSR_GIS024             2242-2244   ///
      int    PRCCSR_GIS025             2245-2247   ///
      int    PRCCSR_GIS026             2248-2250   ///
      int    PRCCSR_GIS027             2251-2253   ///
      int    PRCCSR_GIS028             2254-2256   ///
      int    PRCCSR_GIS029             2257-2259   ///
      int    PRCCSR_GNR001             2260-2262   ///
      int    PRCCSR_GNR002             2263-2265   ///
      int    PRCCSR_GNR003             2266-2268   ///
      int    PRCCSR_GNR004             2269-2271   ///
      int    PRCCSR_GNR005             2272-2274   ///
      int    PRCCSR_GNR006             2275-2277   ///
      int    PRCCSR_GNR007             2278-2280   ///
      int    PRCCSR_GNR008             2281-2283   ///
      int    PRCCSR_GNR009             2284-2286   ///
      int    PRCCSR_GNR010             2287-2289   ///
      int    PRCCSR_HEP001             2290-2292   ///
      int    PRCCSR_HEP002             2293-2295   ///
      int    PRCCSR_HEP003             2296-2298   ///
      int    PRCCSR_HEP004             2299-2301   ///
      int    PRCCSR_HEP005             2302-2304   ///
      int    PRCCSR_HEP006             2305-2307   ///
      int    PRCCSR_HEP007             2308-2310   ///
      int    PRCCSR_HEP008             2311-2313   ///
      int    PRCCSR_HEP009             2314-2316   ///
      int    PRCCSR_HEP010             2317-2319   ///
      int    PRCCSR_HEP011             2320-2322   ///
      int    PRCCSR_HEP012             2323-2325   ///
      int    PRCCSR_HEP013             2326-2328   ///
      int    PRCCSR_IMG001             2329-2331   ///
      int    PRCCSR_IMG002             2332-2334   ///
      int    PRCCSR_IMG003             2335-2337   ///
      int    PRCCSR_IMG004             2338-2340   ///
      int    PRCCSR_IMG005             2341-2343   ///
      int    PRCCSR_IMG006             2344-2346   ///
      int    PRCCSR_IMG007             2347-2349   ///
      int    PRCCSR_IMG008             2350-2352   ///
      int    PRCCSR_IMG009             2353-2355   ///
      int    PRCCSR_IMG010             2356-2358   ///
      int    PRCCSR_LYM001             2359-2361   ///
      int    PRCCSR_LYM002             2362-2364   ///
      int    PRCCSR_LYM003             2365-2367   ///
      int    PRCCSR_LYM004             2368-2370   ///
      int    PRCCSR_LYM005             2371-2373   ///
      int    PRCCSR_LYM006             2374-2376   ///
      int    PRCCSR_LYM007             2377-2379   ///
      int    PRCCSR_LYM008             2380-2382   ///
      int    PRCCSR_LYM009             2383-2385   ///
      int    PRCCSR_LYM010             2386-2388   ///
      int    PRCCSR_LYM011             2389-2391   ///
      int    PRCCSR_MAM001             2392-2394   ///
      int    PRCCSR_MAM002             2395-2397   ///
      int    PRCCSR_MAM003             2398-2400   ///
      int    PRCCSR_MAM004             2401-2403   ///
      int    PRCCSR_MAM005             2404-2406   ///
      int    PRCCSR_MAM006             2407-2409   ///
      int    PRCCSR_MAM007             2410-2412   ///
      int    PRCCSR_MAM008             2413-2415   ///
      int    PRCCSR_MAM009             2416-2418   ///
      int    PRCCSR_MAM010             2419-2421   ///
      int    PRCCSR_MAM011             2422-2424   ///
      int    PRCCSR_MAM012             2425-2427   ///
      int    PRCCSR_MAM013             2428-2430   ///
      int    PRCCSR_MAM014             2431-2433   ///
      int    PRCCSR_MAM015             2434-2436   ///
      int    PRCCSR_MHT001             2437-2439   ///
      int    PRCCSR_MHT002             2440-2442   ///
      int    PRCCSR_MHT003             2443-2445   ///
      int    PRCCSR_MHT004             2446-2448   ///
      int    PRCCSR_MHT005             2449-2451   ///
      int    PRCCSR_MRS001             2452-2454   ///
      int    PRCCSR_MRS002             2455-2457   ///
      int    PRCCSR_MRS003             2458-2460   ///
      int    PRCCSR_MRS004             2461-2463   ///
      int    PRCCSR_MRS005             2464-2466   ///
      int    PRCCSR_MRS006             2467-2469   ///
      int    PRCCSR_MRS007             2470-2472   ///
      int    PRCCSR_MST001             2473-2475   ///
      int    PRCCSR_MST002             2476-2478   ///
      int    PRCCSR_MST003             2479-2481   ///
      int    PRCCSR_MST004             2482-2484   ///
      int    PRCCSR_MST005             2485-2487   ///
      int    PRCCSR_MST006             2488-2490   ///
      int    PRCCSR_MST007             2491-2493   ///
      int    PRCCSR_MST008             2494-2496   ///
      int    PRCCSR_MST009             2497-2499   ///
      int    PRCCSR_MST010             2500-2502   ///
      int    PRCCSR_MST011             2503-2505   ///
      int    PRCCSR_MST012             2506-2508   ///
      int    PRCCSR_MST013             2509-2511   ///
      int    PRCCSR_MST014             2512-2514   ///
      int    PRCCSR_MST015             2515-2517   ///
      int    PRCCSR_MST016             2518-2520   ///
      int    PRCCSR_MST017             2521-2523   ///
      int    PRCCSR_MST018             2524-2526   ///
      int    PRCCSR_MST019             2527-2529   ///
      int    PRCCSR_MST020             2530-2532   ///
      int    PRCCSR_MST021             2533-2535   ///
      int    PRCCSR_MST022             2536-2538   ///
      int    PRCCSR_MST023             2539-2541   ///
      int    PRCCSR_MST024             2542-2544   ///
      int    PRCCSR_MST025             2545-2547   ///
      int    PRCCSR_MST026             2548-2550   ///
      int    PRCCSR_MST027             2551-2553   ///
      int    PRCCSR_MST028             2554-2556   ///
      int    PRCCSR_MST029             2557-2559   ///
      int    PRCCSR_MST030             2560-2562   ///
      int    PRCCSR_NCM001             2563-2565   ///
      int    PRCCSR_NCM002             2566-2568   ///
      int    PRCCSR_NCM003             2569-2571   ///
      int    PRCCSR_NCM004             2572-2574   ///
      int    PRCCSR_OST001             2575-2577   ///
      int    PRCCSR_OTR001             2578-2580   ///
      int    PRCCSR_OTR002             2581-2583   ///
      int    PRCCSR_OTR003             2584-2586   ///
      int    PRCCSR_OTR004             2587-2589   ///
      int    PRCCSR_OTR005             2590-2592   ///
      int    PRCCSR_PGN001             2593-2595   ///
      int    PRCCSR_PGN002             2596-2598   ///
      int    PRCCSR_PGN003             2599-2601   ///
      int    PRCCSR_PGN004             2602-2604   ///
      int    PRCCSR_PGN005             2605-2607   ///
      int    PRCCSR_PGN006             2608-2610   ///
      int    PRCCSR_PGN007             2611-2613   ///
      int    PRCCSR_PGN008             2614-2616   ///
      int    PRCCSR_PGN009             2617-2619   ///
      int    PRCCSR_PLC001             2620-2622   ///
      int    PRCCSR_PLC002             2623-2625   ///
      int    PRCCSR_PNS001             2626-2628   ///
      int    PRCCSR_PNS002             2629-2631   ///
      int    PRCCSR_PNS003             2632-2634   ///
      int    PRCCSR_PNS004             2635-2637   ///
      int    PRCCSR_PNS005             2638-2640   ///
      int    PRCCSR_PNS006             2641-2643   ///
      int    PRCCSR_RAD001             2644-2646   ///
      int    PRCCSR_RAD002             2647-2649   ///
      int    PRCCSR_RAD003             2650-2652   ///
      int    PRCCSR_RAD004             2653-2655   ///
      int    PRCCSR_RES001             2656-2658   ///
      int    PRCCSR_RES002             2659-2661   ///
      int    PRCCSR_RES003             2662-2664   ///
      int    PRCCSR_RES004             2665-2667   ///
      int    PRCCSR_RES005             2668-2670   ///
      int    PRCCSR_RES006             2671-2673   ///
      int    PRCCSR_RES007             2674-2676   ///
      int    PRCCSR_RES008             2677-2679   ///
      int    PRCCSR_RES009             2680-2682   ///
      int    PRCCSR_RES010             2683-2685   ///
      int    PRCCSR_RES011             2686-2688   ///
      int    PRCCSR_RES012             2689-2691   ///
      int    PRCCSR_RES013             2692-2694   ///
      int    PRCCSR_RES014             2695-2697   ///
      int    PRCCSR_RHB001             2698-2700   ///
      int    PRCCSR_RHB002             2701-2703   ///
      int    PRCCSR_RHB003             2704-2706   ///
      int    PRCCSR_RHB004             2707-2709   ///
      int    PRCCSR_SKB001             2710-2712   ///
      int    PRCCSR_SKB002             2713-2715   ///
      int    PRCCSR_SKB003             2716-2718   ///
      int    PRCCSR_SKB004             2719-2721   ///
      int    PRCCSR_SKB005             2722-2724   ///
      int    PRCCSR_SKB006             2725-2727   ///
      int    PRCCSR_SKB007             2728-2730   ///
      int    PRCCSR_SKB008             2731-2733   ///
      int    PRCCSR_SKB009             2734-2736   ///
      int    PRCCSR_SKB010             2737-2739   ///
      int    PRCCSR_SUD001             2740-2742   ///
      int    PRCCSR_SUD002             2743-2745   ///
      int    PRCCSR_SUD003             2746-2748   ///
      int    PRCCSR_SUD004             2749-2751   ///
      int    PRCCSR_URN001             2752-2754   ///
      int    PRCCSR_URN002             2755-2757   ///
      int    PRCCSR_URN003             2758-2760   ///
      int    PRCCSR_URN004             2761-2763   ///
      int    PRCCSR_URN005             2764-2766   ///
      int    PRCCSR_URN006             2767-2769   ///
      int    PRCCSR_URN007             2770-2772   ///
      int    PRCCSR_URN008             2773-2775   ///
      int    PRCCSR_URN009             2776-2778   ///
      int    PRCCSR_URN010             2779-2781   ///
      int    PRCCSR_URN011             2782-2784   ///
      int    PRCCSR_URN012             2785-2787   ///
      str    PRCCSR_VERSION            2788-2793   ///
      using  "VT_SID_2020_DX_PR_GRPS.ASC"

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

save "VT_SID_2020_DX_PR_GRPS.dta", replace
