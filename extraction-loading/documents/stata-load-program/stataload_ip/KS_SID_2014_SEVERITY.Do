/*****************************************************************************
* Creation Date: 02/21/2018   
* KS_SID_2014_SEVERITY.Do
* This program will load the 2014 KS ASCII SEVERITY File into Stata.
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
      byte   CM_AIDS                     16-  17   ///
      byte   CM_ALCOHOL                  18-  19   ///
      byte   CM_ANEMDEF                  20-  21   ///
      byte   CM_ARTH                     22-  23   ///
      byte   CM_BLDLOSS                  24-  25   ///
      byte   CM_CHF                      26-  27   ///
      byte   CM_CHRNLUNG                 28-  29   ///
      byte   CM_COAG                     30-  31   ///
      byte   CM_DEPRESS                  32-  33   ///
      byte   CM_DM                       34-  35   ///
      byte   CM_DMCX                     36-  37   ///
      byte   CM_DRUG                     38-  39   ///
      byte   CM_HTN_C                    40-  41   ///
      byte   CM_HYPOTHY                  42-  43   ///
      byte   CM_LIVER                    44-  45   ///
      byte   CM_LYMPH                    46-  47   ///
      byte   CM_LYTES                    48-  49   ///
      byte   CM_METS                     50-  51   ///
      byte   CM_NEURO                    52-  53   ///
      byte   CM_OBESE                    54-  55   ///
      byte   CM_PARA                     56-  57   ///
      byte   CM_PERIVASC                 58-  59   ///
      byte   CM_PSYCH                    60-  61   ///
      byte   CM_PULMCIRC                 62-  63   ///
      byte   CM_RENLFAIL                 64-  65   ///
      byte   CM_TUMOR                    66-  67   ///
      byte   CM_ULCER                    68-  69   ///
      byte   CM_VALVE                    70-  71   ///
      byte   CM_WGHTLOSS                 72-  73   ///
      using  "KS_SID_2014_SEVERITY.ASC"

***  Assign labels to the data elements ***
label var KEY                      "HCUP record identifier"
label var CM_AIDS                  "AHRQ comorbidity measure: Acquired immune deficiency syndrome"
label var CM_ALCOHOL               "AHRQ comorbidity measure: Alcohol abuse"
label var CM_ANEMDEF               "AHRQ comorbidity measure: Deficiency anemias"
label var CM_ARTH                  "AHRQ comorbidity measure: Rheumatoid arthritis/collagen vascular diseases"
label var CM_BLDLOSS               "AHRQ comorbidity measure: Chronic blood loss anemia"
label var CM_CHF                   "AHRQ comorbidity measure: Congestive heart failure"
label var CM_CHRNLUNG              "AHRQ comorbidity measure: Chronic pulmonary disease"
label var CM_COAG                  "AHRQ comorbidity measure: Coagulopathy"
label var CM_DEPRESS               "AHRQ comorbidity measure: Depression"
label var CM_DM                    "AHRQ comorbidity measure: Diabetes, uncomplicated"
label var CM_DMCX                  "AHRQ comorbidity measure: Diabetes with chronic complications"
label var CM_DRUG                  "AHRQ comorbidity measure: Drug abuse"
label var CM_HTN_C                 "AHRQ comorbidity measure: Hypertension (combine uncomplicated and complicated)"
label var CM_HYPOTHY               "AHRQ comorbidity measure: Hypothyroidism"
label var CM_LIVER                 "AHRQ comorbidity measure: Liver disease"
label var CM_LYMPH                 "AHRQ comorbidity measure: Lymphoma"
label var CM_LYTES                 "AHRQ comorbidity measure: Fluid and electrolyte disorders"
label var CM_METS                  "AHRQ comorbidity measure: Metastatic cancer"
label var CM_NEURO                 "AHRQ comorbidity measure: Other neurological disorders"
label var CM_OBESE                 "AHRQ comorbidity measure: Obesity"
label var CM_PARA                  "AHRQ comorbidity measure: Paralysis"
label var CM_PERIVASC              "AHRQ comorbidity measure: Peripheral vascular disorders"
label var CM_PSYCH                 "AHRQ comorbidity measure: Psychoses"
label var CM_PULMCIRC              "AHRQ comorbidity measure: Pulmonary circulation disorders"
label var CM_RENLFAIL              "AHRQ comorbidity measure: Renal failure"
label var CM_TUMOR                 "AHRQ comorbidity measure: Solid tumor without metastasis"
label var CM_ULCER                 "AHRQ comorbidity measure: Peptic ulcer disease excluding bleeding"
label var CM_VALVE                 "AHRQ comorbidity measure: Valvular disease"
label var CM_WGHTLOSS              "AHRQ comorbidity measure: Weight loss"

*** Convert special values to missing values ***
recode CM_AIDS                   (-9 -8 -6 -5=.)
recode CM_ALCOHOL                (-9 -8 -6 -5=.)
recode CM_ANEMDEF                (-9 -8 -6 -5=.)
recode CM_ARTH                   (-9 -8 -6 -5=.)
recode CM_BLDLOSS                (-9 -8 -6 -5=.)
recode CM_CHF                    (-9 -8 -6 -5=.)
recode CM_CHRNLUNG               (-9 -8 -6 -5=.)
recode CM_COAG                   (-9 -8 -6 -5=.)
recode CM_DEPRESS                (-9 -8 -6 -5=.)
recode CM_DM                     (-9 -8 -6 -5=.)
recode CM_DMCX                   (-9 -8 -6 -5=.)
recode CM_DRUG                   (-9 -8 -6 -5=.)
recode CM_HTN_C                  (-9 -8 -6 -5=.)
recode CM_HYPOTHY                (-9 -8 -6 -5=.)
recode CM_LIVER                  (-9 -8 -6 -5=.)
recode CM_LYMPH                  (-9 -8 -6 -5=.)
recode CM_LYTES                  (-9 -8 -6 -5=.)
recode CM_METS                   (-9 -8 -6 -5=.)
recode CM_NEURO                  (-9 -8 -6 -5=.)
recode CM_OBESE                  (-9 -8 -6 -5=.)
recode CM_PARA                   (-9 -8 -6 -5=.)
recode CM_PERIVASC               (-9 -8 -6 -5=.)
recode CM_PSYCH                  (-9 -8 -6 -5=.)
recode CM_PULMCIRC               (-9 -8 -6 -5=.)
recode CM_RENLFAIL               (-9 -8 -6 -5=.)
recode CM_TUMOR                  (-9 -8 -6 -5=.)
recode CM_ULCER                  (-9 -8 -6 -5=.)
recode CM_VALVE                  (-9 -8 -6 -5=.)
recode CM_WGHTLOSS               (-9 -8 -6 -5=.)

save "KS_SID_2014_SEVERITY.dta", replace
