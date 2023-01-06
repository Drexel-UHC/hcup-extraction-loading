/*****************************************************************************
* Creation Date: 07/20/2021   
* MO_SID_2018_CHGS.Do
* This program will load the 2018 MO ASCII CHGS File into Stata.
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
      str    REVCODE                     16-  19   ///
      double UNITS                       20-  30   ///
      using  "MO_SID_2018_CHGS.ASC"

***  Assign labels to the data elements ***
label var KEY                      "HCUP record identifier"
label var REVCODE                  "Line item revenue code (as received from source)"
label var UNITS                    "Line item units (as received from source)"

*** Convert special values to missing values ***
recode UNITS                     (-9999999.99 -8888888.88 -6666666.66=.)

save "MO_SID_2018_CHGS.dta", replace
