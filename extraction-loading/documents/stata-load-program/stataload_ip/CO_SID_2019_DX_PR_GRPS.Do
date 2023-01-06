/*****************************************************************************
* Creation Date: 04/17/2021   
* CO_SID_2019_DX_PR_GRPS.Do
* This program will load the 2019 CO ASCII DX_PR_GRPS File into Stata.
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
      byte   I10_INJURY                   1-   2   ///
      byte   I10_INJURY_CUT               3-   4   ///
      byte   I10_INJURY_DROWN             5-   6   ///
      byte   I10_INJURY_FALL              7-   8   ///
      byte   I10_INJURY_FIRE              9-  10   ///
      byte   I10_INJURY_FIREARM          11-  12   ///
      byte   I10_INJURY_MACHINERY        13-  14   ///
      byte   I10_INJURY_MVT              15-  16   ///
      byte   I10_INJURY_NATURE           17-  18   ///
      byte   I10_INJURY_OVEREXERTION     19-  20   ///
      byte   I10_INJURY_POISON           21-  22   ///
      byte   I10_INJURY_STRUCK           23-  24   ///
      byte   I10_INJURY_SUFFOCATION      25-  26   ///
      byte   I10_INTENT_ASSAULT          27-  28   ///
      byte   I10_INTENT_SELF_HARM        29-  30   ///
      byte   I10_INTENT_UNINTENTIONAL    31-  32   ///
      byte   I10_MULTINJURY              33-  34   ///
      double KEY                         35-  49   ///
      using  "CO_SID_2019_DX_PR_GRPS.ASC"

***  Assign labels to the data elements ***
label var I10_INJURY
    "Injury ICD-10-CM diagnosis reported on record (1: First-listed injury; 2: Other than first-listed injury; 0: No injury)"
label var I10_INJURY_CUT           "Mechanism of injury: cut or pierce"
label var I10_INJURY_DROWN         "Mechanism of injury: drowning or submersion"
label var I10_INJURY_FALL          "Mechanism of injury: fall"
label var I10_INJURY_FIRE          "Mechanism of injury: fire, flame, hot object, or hot substance"
label var I10_INJURY_FIREARM       "Mechanism of injury: firearm"
label var I10_INJURY_MACHINERY     "Mechanism of injury: machinery"
label var I10_INJURY_MVT

"Mechanism of injury: motor vehicle traffic, including the occupant of a car, motorcyclist, pedal cyclist, pedestrian, other, or uns
pecified"
label var I10_INJURY_NATURE
    "Mechanism of injury: natural or environmental, included venomous and nonvenomous bites and stings"
label var I10_INJURY_OVEREXERTION  "Mechanism of injury: overexertion"
label var I10_INJURY_POISON        "Mechanism of injury: poisoning, including drugs and nondrugs"
label var I10_INJURY_STRUCK        "Mechanism of injury: struck by or against"
label var I10_INJURY_SUFFOCATION   "Mechanism of injury: suffocation"
label var I10_INTENT_ASSAULT       "Intent of injury: assault"
label var I10_INTENT_SELF_HARM     "Intent of injury: intentional self-harm"
label var I10_INTENT_UNINTENTIONAL "Intent of injury: unintentional"
label var I10_MULTINJURY           "Multiple ICD-10-CM injuries reported on record"
label var KEY                      "HCUP record identifier"

*** Convert special values to missing values ***
recode I10_INJURY                (-9 -8 -6 -5=.)
recode I10_INJURY_CUT            (-9 -8 -6 -5=.)
recode I10_INJURY_DROWN          (-9 -8 -6 -5=.)
recode I10_INJURY_FALL           (-9 -8 -6 -5=.)
recode I10_INJURY_FIRE           (-9 -8 -6 -5=.)
recode I10_INJURY_FIREARM        (-9 -8 -6 -5=.)
recode I10_INJURY_MACHINERY      (-9 -8 -6 -5=.)
recode I10_INJURY_MVT            (-9 -8 -6 -5=.)
recode I10_INJURY_NATURE         (-9 -8 -6 -5=.)
recode I10_INJURY_OVEREXERTION   (-9 -8 -6 -5=.)
recode I10_INJURY_POISON         (-9 -8 -6 -5=.)
recode I10_INJURY_STRUCK         (-9 -8 -6 -5=.)
recode I10_INJURY_SUFFOCATION    (-9 -8 -6 -5=.)
recode I10_INTENT_ASSAULT        (-9 -8 -6 -5=.)
recode I10_INTENT_SELF_HARM      (-9 -8 -6 -5=.)
recode I10_INTENT_UNINTENTIONAL  (-9 -8 -6 -5=.)
recode I10_MULTINJURY            (-9 -8 -6 -5=.)

save "CO_SID_2019_DX_PR_GRPS.dta", replace
