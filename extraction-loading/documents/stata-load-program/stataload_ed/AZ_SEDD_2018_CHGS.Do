/*****************************************************************************
* Creation Date: 07/22/2019   
* AZ_SEDD_2018_CHGS.Do
* This program will load the 2018 AZ ASCII CHGS File into Stata.
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
      double CHG1                         1-  12   ///
      double CHG2                        13-  24   ///
      double CHG3                        25-  36   ///
      double CHG4                        37-  48   ///
      double CHG5                        49-  60   ///
      double CHG6                        61-  72   ///
      double CHG7                        73-  84   ///
      double CHG8                        85-  96   ///
      double CHG9                        97- 108   ///
      double CHG10                      109- 120   ///
      double CHG11                      121- 132   ///
      double CHG12                      133- 144   ///
      double CHG13                      145- 156   ///
      double CHG14                      157- 168   ///
      double CHG15                      169- 180   ///
      double CHG16                      181- 192   ///
      double CHG17                      193- 204   ///
      double CHG18                      205- 216   ///
      double CHG19                      217- 228   ///
      double CHG20                      229- 240   ///
      double CHG21                      241- 252   ///
      double CHG22                      253- 264   ///
      double CHG23                      265- 276   ///
      double CHG24                      277- 288   ///
      double CHG25                      289- 300   ///
      double CHG26                      301- 312   ///
      double CHG27                      313- 324   ///
      double CHG28                      325- 336   ///
      double CHG29                      337- 348   ///
      double CHG30                      349- 360   ///
      double CHG31                      361- 372   ///
      double CHG32                      373- 384   ///
      double CHG33                      385- 396   ///
      double CHG34                      397- 408   ///
      double CHG35                      409- 420   ///
      double CHG36                      421- 432   ///
      double CHG37                      433- 444   ///
      double CHG38                      445- 456   ///
      double CHG39                      457- 468   ///
      double CHG40                      469- 480   ///
      double CHG41                      481- 492   ///
      double CHG42                      493- 504   ///
      double CHG43                      505- 516   ///
      double CHG44                      517- 528   ///
      double CHG45                      529- 540   ///
      double CHG46                      541- 552   ///
      double CHG47                      553- 564   ///
      double CHG48                      565- 576   ///
      double CHG49                      577- 588   ///
      double CHG50                      589- 600   ///
      double CHG51                      601- 612   ///
      double CHG52                      613- 624   ///
      double CHG53                      625- 636   ///
      double CHG54                      637- 648   ///
      double CHG55                      649- 660   ///
      double CHG56                      661- 672   ///
      double CHG57                      673- 684   ///
      double CHG58                      685- 696   ///
      double CHG59                      697- 708   ///
      double CHG60                      709- 720   ///
      double CHG61                      721- 732   ///
      double CHG62                      733- 744   ///
      double CHG63                      745- 756   ///
      double CHG64                      757- 768   ///
      double CHG65                      769- 780   ///
      double CHG66                      781- 792   ///
      double CHG67                      793- 804   ///
      double CHG68                      805- 816   ///
      double CHG69                      817- 828   ///
      double CHG70                      829- 840   ///
      double CHG71                      841- 852   ///
      double CHG72                      853- 864   ///
      double CHG73                      865- 876   ///
      double CHG74                      877- 888   ///
      double KEY                        889- 903   ///
      using  "AZ_SEDD_2018_CHGS.ASC"

***  Assign labels to the data elements ***
label var CHG1                     "Detailed charges 1 (as received from source)"
label var CHG2                     "Detailed charges 2 (as received from source)"
label var CHG3                     "Detailed charges 3 (as received from source)"
label var CHG4                     "Detailed charges 4 (as received from source)"
label var CHG5                     "Detailed charges 5 (as received from source)"
label var CHG6                     "Detailed charges 6 (as received from source)"
label var CHG7                     "Detailed charges 7 (as received from source)"
label var CHG8                     "Detailed charges 8 (as received from source)"
label var CHG9                     "Detailed charges 9 (as received from source)"
label var CHG10                    "Detailed charges 10 (as received from source)"
label var CHG11                    "Detailed charges 11 (as received from source)"
label var CHG12                    "Detailed charges 12 (as received from source)"
label var CHG13                    "Detailed charges 13 (as received from source)"
label var CHG14                    "Detailed charges 14 (as received from source)"
label var CHG15                    "Detailed charges 15 (as received from source)"
label var CHG16                    "Detailed charges 16 (as received from source)"
label var CHG17                    "Detailed charges 17 (as received from source)"
label var CHG18                    "Detailed charges 18 (as received from source)"
label var CHG19                    "Detailed charges 19 (as received from source)"
label var CHG20                    "Detailed charges 20 (as received from source)"
label var CHG21                    "Detailed charges 21 (as received from source)"
label var CHG22                    "Detailed charges 22 (as received from source)"
label var CHG23                    "Detailed charges 23 (as received from source)"
label var CHG24                    "Detailed charges 24 (as received from source)"
label var CHG25                    "Detailed charges 25 (as received from source)"
label var CHG26                    "Detailed charges 26 (as received from source)"
label var CHG27                    "Detailed charges 27 (as received from source)"
label var CHG28                    "Detailed charges 28 (as received from source)"
label var CHG29                    "Detailed charges 29 (as received from source)"
label var CHG30                    "Detailed charges 30 (as received from source)"
label var CHG31                    "Detailed charges 31 (as received from source)"
label var CHG32                    "Detailed charges 32 (as received from source)"
label var CHG33                    "Detailed charges 33 (as received from source)"
label var CHG34                    "Detailed charges 34 (as received from source)"
label var CHG35                    "Detailed charges 35 (as received from source)"
label var CHG36                    "Detailed charges 36 (as received from source)"
label var CHG37                    "Detailed charges 37 (as received from source)"
label var CHG38                    "Detailed charges 38 (as received from source)"
label var CHG39                    "Detailed charges 39 (as received from source)"
label var CHG40                    "Detailed charges 40 (as received from source)"
label var CHG41                    "Detailed charges 41 (as received from source)"
label var CHG42                    "Detailed charges 42 (as received from source)"
label var CHG43                    "Detailed charges 43 (as received from source)"
label var CHG44                    "Detailed charges 44 (as received from source)"
label var CHG45                    "Detailed charges 45 (as received from source)"
label var CHG46                    "Detailed charges 46 (as received from source)"
label var CHG47                    "Detailed charges 47 (as received from source)"
label var CHG48                    "Detailed charges 48 (as received from source)"
label var CHG49                    "Detailed charges 49 (as received from source)"
label var CHG50                    "Detailed charges 50 (as received from source)"
label var CHG51                    "Detailed charges 51 (as received from source)"
label var CHG52                    "Detailed charges 52 (as received from source)"
label var CHG53                    "Detailed charges 53 (as received from source)"
label var CHG54                    "Detailed charges 54 (as received from source)"
label var CHG55                    "Detailed charges 55 (as received from source)"
label var CHG56                    "Detailed charges 56 (as received from source)"
label var CHG57                    "Detailed charges 57 (as received from source)"
label var CHG58                    "Detailed charges 58 (as received from source)"
label var CHG59                    "Detailed charges 59 (as received from source)"
label var CHG60                    "Detailed charges 60 (as received from source)"
label var CHG61                    "Detailed charges 61 (as received from source)"
label var CHG62                    "Detailed charges 62 (as received from source)"
label var CHG63                    "Detailed charges 63 (as received from source)"
label var CHG64                    "Detailed charges 64 (as received from source)"
label var CHG65                    "Detailed charges 65 (as received from source)"
label var CHG66                    "Detailed charges 66 (as received from source)"
label var CHG67                    "Detailed charges 67 (as received from source)"
label var CHG68                    "Detailed charges 68 (as received from source)"
label var CHG69                    "Detailed charges 69 (as received from source)"
label var CHG70                    "Detailed charges 70 (as received from source)"
label var CHG71                    "Detailed charges 71 (as received from source)"
label var CHG72                    "Detailed charges 72 (as received from source)"
label var CHG73                    "Detailed charges 73 (as received from source)"
label var CHG74                    "Detailed charges 74 (as received from source)"
label var KEY                      "HCUP record identifier"

*** Convert special values to missing values ***
recode CHG1                      (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG2                      (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG3                      (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG4                      (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG5                      (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG6                      (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG7                      (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG8                      (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG9                      (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG10                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG11                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG12                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG13                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG14                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG15                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG16                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG17                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG18                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG19                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG20                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG21                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG22                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG23                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG24                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG25                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG26                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG27                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG28                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG29                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG30                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG31                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG32                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG33                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG34                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG35                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG36                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG37                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG38                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG39                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG40                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG41                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG42                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG43                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG44                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG45                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG46                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG47                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG48                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG49                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG50                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG51                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG52                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG53                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG54                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG55                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG56                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG57                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG58                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG59                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG60                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG61                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG62                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG63                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG64                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG65                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG66                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG67                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG68                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG69                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG70                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG71                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG72                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG73                     (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG74                     (-99999999.99 -88888888.88 -66666666.66=.)

save "AZ_SEDD_2018_CHGS.dta", replace
