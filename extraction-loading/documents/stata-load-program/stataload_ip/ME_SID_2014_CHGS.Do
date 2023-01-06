/*****************************************************************************
* Creation Date: 06/02/2017   
* ME_SID_2014_CHGS.Do
* This program will load the 2014 ME ASCII CHGS File into Stata.
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
      using  "ME_SID_2014_CHGS.ASC"

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

*** Convert special values to missing values ***
recode NREVCD                    (-99 -88 -66=.)

save "ME_SID_2014_CHGS.dta", replace
