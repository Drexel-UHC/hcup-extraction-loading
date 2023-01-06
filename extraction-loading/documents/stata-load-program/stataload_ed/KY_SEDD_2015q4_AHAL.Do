/*****************************************************************************
* Creation Date: 08/09/2017   
* KY_SEDD_2015q4_AHAL.Do
* This program will load the 2015 KY ASCII AHAL File into Stata.
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
      int    COMMUNITY_NONREHAB_NONLTAC  30-  33   ///
      long   HFIPSSTCO                   34-  38   ///
      str    HOSPST                      39-  40   ///
      int    YEAR                        41-  44   ///
      using  "KY_SEDD_2015q4_AHAL.ASC"

***  Assign labels to the data elements ***
label var AHAID                    "AHA hospital identifier with the leading 6"
label var DSHOSPID                 "Data source hospital identifier"
label var HOSPID                   "HCUP hospital identification number"
label var COMMUNITY_NONREHAB_NONLTAC
    "Indicator of U.S. community hospital that is not a rehabilitation or long-term acute care hospital (Z997)"
label var HFIPSSTCO                "Hospital FIPS state/county code"
label var HOSPST                   "Hospital state postal code"
label var YEAR                     "Calendar year"

*** Convert special values to missing values ***
recode COMMUNITY_NONREHAB_NONLTAC(-999 -888 -666=.)
recode HFIPSSTCO                 (-9999 -8888 -6666=.)
recode YEAR                      (-999 -888 -666=.)

save "KY_SEDD_2015q4_AHAL.dta", replace
