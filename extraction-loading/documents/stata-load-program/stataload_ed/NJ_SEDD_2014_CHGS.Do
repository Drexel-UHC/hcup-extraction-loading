/*****************************************************************************
* Creation Date: 10/28/2015   
* Stataload_NJ_SEDD_2014_CHGS.Do
* This program will load the 2014 NJ ASCII CHGS File into Stata.
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
infix 3 firstlineoffile                          ///
      str    APC                         1-  5   ///
      double CHARGE                      6- 17   ///
      str    CPTHCPCS                   18- 22   ///
      str    CPTMod1                    23- 24   ///
      str    CPTMod2                    25- 26   ///
      double KEY                        27- 41   ///
      str    REVCODE                    42- 45   ///
      double UNITS                      46- 56   ///
      using  "NJ_SEDD_2014_CHGS.ASC"

***  Assign labels to the data elements ***
label var APC                      "Line item Ambulatory Payment Classification code (as received from source)"
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

save "NJ_SEDD_2014_CHGS.dta", replace
