/*****************************************************************************
* Creation Date: 04/14/2021   
* FL_SEDD_2019_CHGS.Do
* This program will load the 2019 FL ASCII CHGS File into Stata.
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
      double KEY                        169- 183   ///
      using  "FL_SEDD_2019_CHGS.ASC"

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

save "FL_SEDD_2019_CHGS.dta", replace
