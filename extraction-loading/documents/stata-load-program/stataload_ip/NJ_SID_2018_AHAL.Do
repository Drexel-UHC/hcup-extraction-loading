/*****************************************************************************
* Creation Date: 06/08/2020   
* NJ_SID_2018_AHAL.Do
* This program will load the 2018 NJ ASCII AHAL File into Stata.
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
      str    AHAID                        1-   7   ///
      str    DSHOSPID                     8-  24   ///
      long   HOSPID                      25-  29   ///
      long   HFIPSSTCO                   30-  34   ///
      str    HOSPST                      35-  36   ///
      int    YEAR                        37-  40   ///
      using  "NJ_SID_2018_AHAL.ASC"

***  Assign labels to the data elements ***
label var AHAID                    "AHA hospital identifier with the leading 6"
label var DSHOSPID                 "Data source hospital identifier"
label var HOSPID                   "HCUP hospital identification number"
label var HFIPSSTCO                "Hospital FIPS state/county code"
label var HOSPST                   "Hospital state postal code"
label var YEAR                     "Calendar year"

*** Convert special values to missing values ***
recode HFIPSSTCO                 (-9999 -8888 -6666=.)
recode YEAR                      (-999 -888 -666=.)

save "NJ_SID_2018_AHAL.dta", replace
