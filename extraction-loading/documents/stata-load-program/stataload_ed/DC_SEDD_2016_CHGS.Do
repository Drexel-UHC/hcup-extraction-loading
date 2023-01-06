/*****************************************************************************
* Creation Date: 07/29/2020   
* DC_SEDD_2016_CHGS.Do
* This program will load the 2016 DC ASCII CHGS File into Stata.
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
      double KEY                        121- 135   ///
      using  "DC_SEDD_2016_CHGS.ASC"

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

save "DC_SEDD_2016_CHGS.dta", replace
