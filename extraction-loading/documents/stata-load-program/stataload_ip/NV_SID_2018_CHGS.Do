/*****************************************************************************
* Creation Date: 12/30/2019   
* NV_SID_2018_CHGS.Do
* This program will load the 2018 NV ASCII CHGS File into Stata.
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
      double KEY                          1-  15   ///
      int    NREVCD                      16-  18   ///
      str    REVCD1                      19-  22   ///
      str    REVCD2                      23-  26   ///
      str    REVCD3                      27-  30   ///
      str    REVCD4                      31-  34   ///
      str    REVCD5                      35-  38   ///
      str    REVCD6                      39-  42   ///
      str    REVCD7                      43-  46   ///
      str    REVCD8                      47-  50   ///
      str    REVCD9                      51-  54   ///
      str    REVCD10                     55-  58   ///
      str    REVCD11                     59-  62   ///
      str    REVCD12                     63-  66   ///
      str    REVCD13                     67-  70   ///
      str    REVCD14                     71-  74   ///
      str    REVCD15                     75-  78   ///
      str    REVCD16                     79-  82   ///
      str    REVCD17                     83-  86   ///
      str    REVCD18                     87-  90   ///
      str    REVCD19                     91-  94   ///
      str    REVCD20                     95-  98   ///
      str    REVCD21                     99- 102   ///
      str    REVCD22                    103- 106   ///
      str    REVCD23                    107- 110   ///
      str    REVCD24                    111- 114   ///
      str    REVCD25                    115- 118   ///
      str    REVCD26                    119- 122   ///
      str    REVCD27                    123- 126   ///
      str    REVCD28                    127- 130   ///
      str    REVCD29                    131- 134   ///
      str    REVCD30                    135- 138   ///
      str    REVCD31                    139- 142   ///
      str    REVCD32                    143- 146   ///
      str    REVCD33                    147- 150   ///
      str    REVCD34                    151- 154   ///
      str    REVCD35                    155- 158   ///
      str    REVCD36                    159- 162   ///
      str    REVCD37                    163- 166   ///
      str    REVCD38                    167- 170   ///
      str    REVCD39                    171- 174   ///
      str    REVCD40                    175- 178   ///
      str    REVCD41                    179- 182   ///
      str    REVCD42                    183- 186   ///
      str    REVCD43                    187- 190   ///
      str    REVCD44                    191- 194   ///
      str    REVCD45                    195- 198   ///
      str    REVCD46                    199- 202   ///
      str    REVCD47                    203- 206   ///
      str    REVCD48                    207- 210   ///
      str    REVCD49                    211- 214   ///
      str    REVCD50                    215- 218   ///
      str    REVCD51                    219- 222   ///
      double REVCHG1                    223- 234   ///
      double REVCHG2                    235- 246   ///
      double REVCHG3                    247- 258   ///
      double REVCHG4                    259- 270   ///
      double REVCHG5                    271- 282   ///
      double REVCHG6                    283- 294   ///
      double REVCHG7                    295- 306   ///
      double REVCHG8                    307- 318   ///
      double REVCHG9                    319- 330   ///
      double REVCHG10                   331- 342   ///
      double REVCHG11                   343- 354   ///
      double REVCHG12                   355- 366   ///
      double REVCHG13                   367- 378   ///
      double REVCHG14                   379- 390   ///
      double REVCHG15                   391- 402   ///
      double REVCHG16                   403- 414   ///
      double REVCHG17                   415- 426   ///
      double REVCHG18                   427- 438   ///
      double REVCHG19                   439- 450   ///
      double REVCHG20                   451- 462   ///
      double REVCHG21                   463- 474   ///
      double REVCHG22                   475- 486   ///
      double REVCHG23                   487- 498   ///
      double REVCHG24                   499- 510   ///
      double REVCHG25                   511- 522   ///
      double REVCHG26                   523- 534   ///
      double REVCHG27                   535- 546   ///
      double REVCHG28                   547- 558   ///
      double REVCHG29                   559- 570   ///
      double REVCHG30                   571- 582   ///
      double REVCHG31                   583- 594   ///
      double REVCHG32                   595- 606   ///
      double REVCHG33                   607- 618   ///
      double REVCHG34                   619- 630   ///
      double REVCHG35                   631- 642   ///
      double REVCHG36                   643- 654   ///
      double REVCHG37                   655- 666   ///
      double REVCHG38                   667- 678   ///
      double REVCHG39                   679- 690   ///
      double REVCHG40                   691- 702   ///
      double REVCHG41                   703- 714   ///
      double REVCHG42                   715- 726   ///
      double REVCHG43                   727- 738   ///
      double REVCHG44                   739- 750   ///
      double REVCHG45                   751- 762   ///
      double REVCHG46                   763- 774   ///
      double REVCHG47                   775- 786   ///
      double REVCHG48                   787- 798   ///
      double REVCHG49                   799- 810   ///
      double REVCHG50                   811- 822   ///
      double REVCHG51                   823- 834   ///
      double UNIT1                      835- 842   ///
      double UNIT2                      843- 850   ///
      double UNIT3                      851- 858   ///
      double UNIT4                      859- 866   ///
      double UNIT5                      867- 874   ///
      double UNIT6                      875- 882   ///
      double UNIT7                      883- 890   ///
      double UNIT8                      891- 898   ///
      double UNIT9                      899- 906   ///
      double UNIT10                     907- 914   ///
      double UNIT11                     915- 922   ///
      double UNIT12                     923- 930   ///
      double UNIT13                     931- 938   ///
      double UNIT14                     939- 946   ///
      double UNIT15                     947- 954   ///
      double UNIT16                     955- 962   ///
      double UNIT17                     963- 970   ///
      double UNIT18                     971- 978   ///
      double UNIT19                     979- 986   ///
      double UNIT20                     987- 994   ///
      double UNIT21                     995-1002   ///
      double UNIT22                    1003-1010   ///
      double UNIT23                    1011-1018   ///
      double UNIT24                    1019-1026   ///
      double UNIT25                    1027-1034   ///
      double UNIT26                    1035-1042   ///
      double UNIT27                    1043-1050   ///
      double UNIT28                    1051-1058   ///
      double UNIT29                    1059-1066   ///
      double UNIT30                    1067-1074   ///
      double UNIT31                    1075-1082   ///
      double UNIT32                    1083-1090   ///
      double UNIT33                    1091-1098   ///
      double UNIT34                    1099-1106   ///
      double UNIT35                    1107-1114   ///
      double UNIT36                    1115-1122   ///
      double UNIT37                    1123-1130   ///
      double UNIT38                    1131-1138   ///
      double UNIT39                    1139-1146   ///
      double UNIT40                    1147-1154   ///
      double UNIT41                    1155-1162   ///
      double UNIT42                    1163-1170   ///
      double UNIT43                    1171-1178   ///
      double UNIT44                    1179-1186   ///
      double UNIT45                    1187-1194   ///
      double UNIT46                    1195-1202   ///
      double UNIT47                    1203-1210   ///
      double UNIT48                    1211-1218   ///
      double UNIT49                    1219-1226   ///
      double UNIT50                    1227-1234   ///
      double UNIT51                    1235-1242   ///
      using  "NV_SID_2018_CHGS.ASC"

***  Assign labels to the data elements ***
label var KEY                      "HCUP record identifier"
label var NREVCD                   "Number of revenue codes for this discharge"
label var REVCD1                   "Revenue code 1 (as received from source)"
label var REVCD2                   "Revenue code 2 (as received from source)"
label var REVCD3                   "Revenue code 3 (as received from source)"
label var REVCD4                   "Revenue code 4 (as received from source)"
label var REVCD5                   "Revenue code 5 (as received from source)"
label var REVCD6                   "Revenue code 6 (as received from source)"
label var REVCD7                   "Revenue code 7 (as received from source)"
label var REVCD8                   "Revenue code 8 (as received from source)"
label var REVCD9                   "Revenue code 9 (as received from source)"
label var REVCD10                  "Revenue code 10 (as received from source)"
label var REVCD11                  "Revenue code 11 (as received from source)"
label var REVCD12                  "Revenue code 12 (as received from source)"
label var REVCD13                  "Revenue code 13 (as received from source)"
label var REVCD14                  "Revenue code 14 (as received from source)"
label var REVCD15                  "Revenue code 15 (as received from source)"
label var REVCD16                  "Revenue code 16 (as received from source)"
label var REVCD17                  "Revenue code 17 (as received from source)"
label var REVCD18                  "Revenue code 18 (as received from source)"
label var REVCD19                  "Revenue code 19 (as received from source)"
label var REVCD20                  "Revenue code 20 (as received from source)"
label var REVCD21                  "Revenue code 21 (as received from source)"
label var REVCD22                  "Revenue code 22 (as received from source)"
label var REVCD23                  "Revenue code 23 (as received from source)"
label var REVCD24                  "Revenue code 24 (as received from source)"
label var REVCD25                  "Revenue code 25 (as received from source)"
label var REVCD26                  "Revenue code 26 (as received from source)"
label var REVCD27                  "Revenue code 27 (as received from source)"
label var REVCD28                  "Revenue code 28 (as received from source)"
label var REVCD29                  "Revenue code 29 (as received from source)"
label var REVCD30                  "Revenue code 30 (as received from source)"
label var REVCD31                  "Revenue code 31 (as received from source)"
label var REVCD32                  "Revenue code 32 (as received from source)"
label var REVCD33                  "Revenue code 33 (as received from source)"
label var REVCD34                  "Revenue code 34 (as received from source)"
label var REVCD35                  "Revenue code 35 (as received from source)"
label var REVCD36                  "Revenue code 36 (as received from source)"
label var REVCD37                  "Revenue code 37 (as received from source)"
label var REVCD38                  "Revenue code 38 (as received from source)"
label var REVCD39                  "Revenue code 39 (as received from source)"
label var REVCD40                  "Revenue code 40 (as received from source)"
label var REVCD41                  "Revenue code 41 (as received from source)"
label var REVCD42                  "Revenue code 42 (as received from source)"
label var REVCD43                  "Revenue code 43 (as received from source)"
label var REVCD44                  "Revenue code 44 (as received from source)"
label var REVCD45                  "Revenue code 45 (as received from source)"
label var REVCD46                  "Revenue code 46 (as received from source)"
label var REVCD47                  "Revenue code 47 (as received from source)"
label var REVCD48                  "Revenue code 48 (as received from source)"
label var REVCD49                  "Revenue code 49 (as received from source)"
label var REVCD50                  "Revenue code 50 (as received from source)"
label var REVCD51                  "Revenue code 51 (as received from source)"
label var REVCHG1                  "Detailed charges for revenue code 1 (as received from source)"
label var REVCHG2                  "Detailed charges for revenue code 2 (as received from source)"
label var REVCHG3                  "Detailed charges for revenue code 3 (as received from source)"
label var REVCHG4                  "Detailed charges for revenue code 4 (as received from source)"
label var REVCHG5                  "Detailed charges for revenue code 5 (as received from source)"
label var REVCHG6                  "Detailed charges for revenue code 6 (as received from source)"
label var REVCHG7                  "Detailed charges for revenue code 7 (as received from source)"
label var REVCHG8                  "Detailed charges for revenue code 8 (as received from source)"
label var REVCHG9                  "Detailed charges for revenue code 9 (as received from source)"
label var REVCHG10                 "Detailed charges for revenue code 10 (as received from source)"
label var REVCHG11                 "Detailed charges for revenue code 11 (as received from source)"
label var REVCHG12                 "Detailed charges for revenue code 12 (as received from source)"
label var REVCHG13                 "Detailed charges for revenue code 13 (as received from source)"
label var REVCHG14                 "Detailed charges for revenue code 14 (as received from source)"
label var REVCHG15                 "Detailed charges for revenue code 15 (as received from source)"
label var REVCHG16                 "Detailed charges for revenue code 16 (as received from source)"
label var REVCHG17                 "Detailed charges for revenue code 17 (as received from source)"
label var REVCHG18                 "Detailed charges for revenue code 18 (as received from source)"
label var REVCHG19                 "Detailed charges for revenue code 19 (as received from source)"
label var REVCHG20                 "Detailed charges for revenue code 20 (as received from source)"
label var REVCHG21                 "Detailed charges for revenue code 21 (as received from source)"
label var REVCHG22                 "Detailed charges for revenue code 22 (as received from source)"
label var REVCHG23                 "Detailed charges for revenue code 23 (as received from source)"
label var REVCHG24                 "Detailed charges for revenue code 24 (as received from source)"
label var REVCHG25                 "Detailed charges for revenue code 25 (as received from source)"
label var REVCHG26                 "Detailed charges for revenue code 26 (as received from source)"
label var REVCHG27                 "Detailed charges for revenue code 27 (as received from source)"
label var REVCHG28                 "Detailed charges for revenue code 28 (as received from source)"
label var REVCHG29                 "Detailed charges for revenue code 29 (as received from source)"
label var REVCHG30                 "Detailed charges for revenue code 30 (as received from source)"
label var REVCHG31                 "Detailed charges for revenue code 31 (as received from source)"
label var REVCHG32                 "Detailed charges for revenue code 32 (as received from source)"
label var REVCHG33                 "Detailed charges for revenue code 33 (as received from source)"
label var REVCHG34                 "Detailed charges for revenue code 34 (as received from source)"
label var REVCHG35                 "Detailed charges for revenue code 35 (as received from source)"
label var REVCHG36                 "Detailed charges for revenue code 36 (as received from source)"
label var REVCHG37                 "Detailed charges for revenue code 37 (as received from source)"
label var REVCHG38                 "Detailed charges for revenue code 38 (as received from source)"
label var REVCHG39                 "Detailed charges for revenue code 39 (as received from source)"
label var REVCHG40                 "Detailed charges for revenue code 40 (as received from source)"
label var REVCHG41                 "Detailed charges for revenue code 41 (as received from source)"
label var REVCHG42                 "Detailed charges for revenue code 42 (as received from source)"
label var REVCHG43                 "Detailed charges for revenue code 43 (as received from source)"
label var REVCHG44                 "Detailed charges for revenue code 44 (as received from source)"
label var REVCHG45                 "Detailed charges for revenue code 45 (as received from source)"
label var REVCHG46                 "Detailed charges for revenue code 46 (as received from source)"
label var REVCHG47                 "Detailed charges for revenue code 47 (as received from source)"
label var REVCHG48                 "Detailed charges for revenue code 48 (as received from source)"
label var REVCHG49                 "Detailed charges for revenue code 49 (as received from source)"
label var REVCHG50                 "Detailed charges for revenue code 50 (as received from source)"
label var REVCHG51                 "Detailed charges for revenue code 51 (as received from source)"
label var UNIT1                    "Units of service 1 (as received from source)"
label var UNIT2                    "Units of service 2 (as received from source)"
label var UNIT3                    "Units of service 3 (as received from source)"
label var UNIT4                    "Units of service 4 (as received from source)"
label var UNIT5                    "Units of service 5 (as received from source)"
label var UNIT6                    "Units of service 6 (as received from source)"
label var UNIT7                    "Units of service 7 (as received from source)"
label var UNIT8                    "Units of service 8 (as received from source)"
label var UNIT9                    "Units of service 9 (as received from source)"
label var UNIT10                   "Units of service 10 (as received from source)"
label var UNIT11                   "Units of service 11 (as received from source)"
label var UNIT12                   "Units of service 12 (as received from source)"
label var UNIT13                   "Units of service 13 (as received from source)"
label var UNIT14                   "Units of service 14 (as received from source)"
label var UNIT15                   "Units of service 15 (as received from source)"
label var UNIT16                   "Units of service 16 (as received from source)"
label var UNIT17                   "Units of service 17 (as received from source)"
label var UNIT18                   "Units of service 18 (as received from source)"
label var UNIT19                   "Units of service 19 (as received from source)"
label var UNIT20                   "Units of service 20 (as received from source)"
label var UNIT21                   "Units of service 21 (as received from source)"
label var UNIT22                   "Units of service 22 (as received from source)"
label var UNIT23                   "Units of service 23 (as received from source)"
label var UNIT24                   "Units of service 24 (as received from source)"
label var UNIT25                   "Units of service 25 (as received from source)"
label var UNIT26                   "Units of service 26 (as received from source)"
label var UNIT27                   "Units of service 27 (as received from source)"
label var UNIT28                   "Units of service 28 (as received from source)"
label var UNIT29                   "Units of service 29 (as received from source)"
label var UNIT30                   "Units of service 30 (as received from source)"
label var UNIT31                   "Units of service 31 (as received from source)"
label var UNIT32                   "Units of service 32 (as received from source)"
label var UNIT33                   "Units of service 33 (as received from source)"
label var UNIT34                   "Units of service 34 (as received from source)"
label var UNIT35                   "Units of service 35 (as received from source)"
label var UNIT36                   "Units of service 36 (as received from source)"
label var UNIT37                   "Units of service 37 (as received from source)"
label var UNIT38                   "Units of service 38 (as received from source)"
label var UNIT39                   "Units of service 39 (as received from source)"
label var UNIT40                   "Units of service 40 (as received from source)"
label var UNIT41                   "Units of service 41 (as received from source)"
label var UNIT42                   "Units of service 42 (as received from source)"
label var UNIT43                   "Units of service 43 (as received from source)"
label var UNIT44                   "Units of service 44 (as received from source)"
label var UNIT45                   "Units of service 45 (as received from source)"
label var UNIT46                   "Units of service 46 (as received from source)"
label var UNIT47                   "Units of service 47 (as received from source)"
label var UNIT48                   "Units of service 48 (as received from source)"
label var UNIT49                   "Units of service 49 (as received from source)"
label var UNIT50                   "Units of service 50 (as received from source)"
label var UNIT51                   "Units of service 51 (as received from source)"

*** Convert special values to missing values ***
recode NREVCD                    (-99 -88 -66=.)
recode REVCHG1                   (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG2                   (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG3                   (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG4                   (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG5                   (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG6                   (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG7                   (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG8                   (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG9                   (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG10                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG11                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG12                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG13                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG14                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG15                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG16                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG17                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG18                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG19                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG20                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG21                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG22                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG23                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG24                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG25                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG26                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG27                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG28                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG29                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG30                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG31                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG32                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG33                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG34                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG35                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG36                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG37                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG38                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG39                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG40                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG41                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG42                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG43                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG44                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG45                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG46                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG47                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG48                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG49                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG50                  (-99999999.99 -88888888.88 -66666666.66=.)
recode REVCHG51                  (-99999999.99 -88888888.88 -66666666.66=.)
recode UNIT1                     (-9999.99 -8888.88 -6666.66=.)
recode UNIT2                     (-9999.99 -8888.88 -6666.66=.)
recode UNIT3                     (-9999.99 -8888.88 -6666.66=.)
recode UNIT4                     (-9999.99 -8888.88 -6666.66=.)
recode UNIT5                     (-9999.99 -8888.88 -6666.66=.)
recode UNIT6                     (-9999.99 -8888.88 -6666.66=.)
recode UNIT7                     (-9999.99 -8888.88 -6666.66=.)
recode UNIT8                     (-9999.99 -8888.88 -6666.66=.)
recode UNIT9                     (-9999.99 -8888.88 -6666.66=.)
recode UNIT10                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT11                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT12                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT13                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT14                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT15                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT16                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT17                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT18                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT19                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT20                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT21                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT22                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT23                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT24                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT25                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT26                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT27                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT28                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT29                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT30                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT31                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT32                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT33                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT34                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT35                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT36                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT37                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT38                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT39                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT40                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT41                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT42                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT43                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT44                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT45                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT46                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT47                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT48                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT49                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT50                    (-9999.99 -8888.88 -6666.66=.)
recode UNIT51                    (-9999.99 -8888.88 -6666.66=.)

save "NV_SID_2018_CHGS.dta", replace
