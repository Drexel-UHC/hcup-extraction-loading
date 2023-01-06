/*****************************************************************************
* Creation Date: 05/25/2018   
* UT_SEDD_2015q4_CHGS.Do
* This program will load the 2015 UT ASCII CHGS File into Stata.
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
      double CHARGE                       1-  12   ///
      str    CPTHCPCS                    13-  17   ///
      str    CPTMod1                     18-  19   ///
      str    CPTMod2                     20-  21   ///
      double KEY                         22-  36   ///
      str    REVCODE                     37-  40   ///
      double UNITS                       41-  51   ///
      using  "UT_SEDD_2015q4_CHGS.ASC"

***  Assign labels to the data elements ***
label var CHARGE                   "Line item charges (as received from source)"
label var CPTHCPCS                 "Line item CPT-4/HCPCS procedure code (as received from source)"
label var CPTMod1                  "Line item CPT-4/HCPCS first modifier (as received from source)"
label var CPTMod2                  "Line item CPT-4/HCPCS second modifier (as received from source)"
label var KEY                      "HCUP record identifier"
label var REVCODE                  "Line item revenue code (as received from source)"
label var UNITS                    "Line item units (as received from source)"

*** Convert special values to missing values ***
recode CHARGE                    (-99999999.99 -88888888.88 -66666666.66=.)
recode UNITS                     (-9999999.99 -8888888.88 -6666666.66=.)

save "UT_SEDD_2015q4_CHGS.dta", replace
