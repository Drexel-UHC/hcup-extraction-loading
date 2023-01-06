/*****************************************************************************
* Creation Date: 11/17/2016   
* UT_SID_2014_CHGS.Do
* This program will load the 2014 UT ASCII CHGS File into Stata.
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
      double KEY                         49-  63   ///
      using  "UT_SID_2014_CHGS.ASC"

***  Assign labels to the data elements ***
label var CHG1                     "Detailed charges 1 (as received from source)"
label var CHG2                     "Detailed charges 2 (as received from source)"
label var CHG3                     "Detailed charges 3 (as received from source)"
label var CHG4                     "Detailed charges 4 (as received from source)"
label var KEY                      "HCUP record identifier"

*** Convert special values to missing values ***
recode CHG1                      (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG2                      (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG3                      (-99999999.99 -88888888.88 -66666666.66=.)
recode CHG4                      (-99999999.99 -88888888.88 -66666666.66=.)

save "UT_SID_2014_CHGS.dta", replace
