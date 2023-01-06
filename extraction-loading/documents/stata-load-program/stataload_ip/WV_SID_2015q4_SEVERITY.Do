/*****************************************************************************
* Creation Date: 05/10/2018   
* WV_SID_2015q4_SEVERITY.Do
* This program will load the 2015 WV ASCII SEVERITY File into Stata.
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
      byte   I10_CM_AIDS                 16-  17   ///
      byte   I10_CM_ALCOHOL              18-  19   ///
      byte   I10_CM_ANEMDEF              20-  21   ///
      byte   I10_CM_ARTH                 22-  23   ///
      byte   I10_CM_BLDLOSS              24-  25   ///
      byte   I10_CM_CHF                  26-  27   ///
      byte   I10_CM_CHRNLUNG             28-  29   ///
      byte   I10_CM_COAG                 30-  31   ///
      byte   I10_CM_DEPRESS              32-  33   ///
      byte   I10_CM_DM                   34-  35   ///
      byte   I10_CM_DMCX                 36-  37   ///
      byte   I10_CM_DRUG                 38-  39   ///
      byte   I10_CM_HTN_C                40-  41   ///
      byte   I10_CM_HYPOTHY              42-  43   ///
      byte   I10_CM_LIVER                44-  45   ///
      byte   I10_CM_LYMPH                46-  47   ///
      byte   I10_CM_LYTES                48-  49   ///
      byte   I10_CM_METS                 50-  51   ///
      byte   I10_CM_NEURO                52-  53   ///
      byte   I10_CM_OBESE                54-  55   ///
      byte   I10_CM_PARA                 56-  57   ///
      byte   I10_CM_PERIVASC             58-  59   ///
      byte   I10_CM_PSYCH                60-  61   ///
      byte   I10_CM_PULMCIRC             62-  63   ///
      byte   I10_CM_RENLFAIL             64-  65   ///
      byte   I10_CM_TUMOR                66-  67   ///
      byte   I10_CM_ULCER                68-  69   ///
      byte   I10_CM_VALVE                70-  71   ///
      byte   I10_CM_WGHTLOSS             72-  73   ///
      using  "WV_SID_2015q4_SEVERITY.ASC"

***  Assign labels to the data elements ***
label var KEY                      "HCUP record identifier"
label var I10_CM_AIDS              "ICD-10-CM AHRQ comorbidity measure: Acquired immune deficiency syndrome"
label var I10_CM_ALCOHOL           "ICD-10-CM AHRQ comorbidity measure: Alcohol abuse"
label var I10_CM_ANEMDEF           "ICD-10-CM AHRQ comorbidity measure: Deficiency anemias"
label var I10_CM_ARTH              "ICD-10-CM AHRQ comorbidity measure: Rheumatoid arthritis/collagen vascular diseases"
label var I10_CM_BLDLOSS           "ICD-10-CM AHRQ comorbidity measure: Chronic blood loss anemia"
label var I10_CM_CHF               "ICD-10-CM AHRQ comorbidity measure: Congestive heart failure"
label var I10_CM_CHRNLUNG          "ICD-10-CM AHRQ comorbidity measure: Chronic pulmonary disease"
label var I10_CM_COAG              "ICD-10-CM AHRQ comorbidity measure: Coagulopathy"
label var I10_CM_DEPRESS           "ICD-10-CM AHRQ comorbidity measure: Depression"
label var I10_CM_DM                "ICD-10-CM AHRQ comorbidity measure: Diabetes, uncomplicated"
label var I10_CM_DMCX              "ICD-10-CM AHRQ comorbidity measure: Diabetes with chronic complications"
label var I10_CM_DRUG              "ICD-10-CM AHRQ comorbidity measure: Drug abuse"
label var I10_CM_HTN_C             "ICD-10-CM AHRQ comorbidity measure: Hypertension (combine uncomplicated and complicated)"
label var I10_CM_HYPOTHY           "ICD-10-CM AHRQ comorbidity measure: Hypothyroidism"
label var I10_CM_LIVER             "ICD-10-CM AHRQ comorbidity measure: Liver disease"
label var I10_CM_LYMPH             "ICD-10-CM AHRQ comorbidity measure: Lymphoma"
label var I10_CM_LYTES             "ICD-10-CM AHRQ comorbidity measure: Fluid and electrolyte disorders"
label var I10_CM_METS              "ICD-10-CM AHRQ comorbidity measure: Metastatic cancer"
label var I10_CM_NEURO             "ICD-10-CM AHRQ comorbidity measure: Other neurological disorders"
label var I10_CM_OBESE             "ICD-10-CM AHRQ comorbidity measure: Obesity"
label var I10_CM_PARA              "ICD-10-CM AHRQ comorbidity measure: Paralysis"
label var I10_CM_PERIVASC          "ICD-10-CM AHRQ comorbidity measure: Peripheral vascular disorders"
label var I10_CM_PSYCH             "ICD-10-CM AHRQ comorbidity measure: Psychoses"
label var I10_CM_PULMCIRC          "ICD-10-CM AHRQ comorbidity measure: Pulmonary circulation disorders"
label var I10_CM_RENLFAIL          "ICD-10-CM AHRQ comorbidity measure: Renal failure"
label var I10_CM_TUMOR             "ICD-10-CM AHRQ comorbidity measure: Solid tumor without metastasis"
label var I10_CM_ULCER             "ICD-10-CM AHRQ comorbidity measure: Peptic ulcer disease excluding bleeding"
label var I10_CM_VALVE             "ICD-10-CM AHRQ comorbidity measure: Valvular disease"
label var I10_CM_WGHTLOSS          "ICD-10-CM AHRQ comorbidity measure: Weight loss"

*** Convert special values to missing values ***
recode I10_CM_AIDS               (-9 -8 -6 -5=.)
recode I10_CM_ALCOHOL            (-9 -8 -6 -5=.)
recode I10_CM_ANEMDEF            (-9 -8 -6 -5=.)
recode I10_CM_ARTH               (-9 -8 -6 -5=.)
recode I10_CM_BLDLOSS            (-9 -8 -6 -5=.)
recode I10_CM_CHF                (-9 -8 -6 -5=.)
recode I10_CM_CHRNLUNG           (-9 -8 -6 -5=.)
recode I10_CM_COAG               (-9 -8 -6 -5=.)
recode I10_CM_DEPRESS            (-9 -8 -6 -5=.)
recode I10_CM_DM                 (-9 -8 -6 -5=.)
recode I10_CM_DMCX               (-9 -8 -6 -5=.)
recode I10_CM_DRUG               (-9 -8 -6 -5=.)
recode I10_CM_HTN_C              (-9 -8 -6 -5=.)
recode I10_CM_HYPOTHY            (-9 -8 -6 -5=.)
recode I10_CM_LIVER              (-9 -8 -6 -5=.)
recode I10_CM_LYMPH              (-9 -8 -6 -5=.)
recode I10_CM_LYTES              (-9 -8 -6 -5=.)
recode I10_CM_METS               (-9 -8 -6 -5=.)
recode I10_CM_NEURO              (-9 -8 -6 -5=.)
recode I10_CM_OBESE              (-9 -8 -6 -5=.)
recode I10_CM_PARA               (-9 -8 -6 -5=.)
recode I10_CM_PERIVASC           (-9 -8 -6 -5=.)
recode I10_CM_PSYCH              (-9 -8 -6 -5=.)
recode I10_CM_PULMCIRC           (-9 -8 -6 -5=.)
recode I10_CM_RENLFAIL           (-9 -8 -6 -5=.)
recode I10_CM_TUMOR              (-9 -8 -6 -5=.)
recode I10_CM_ULCER              (-9 -8 -6 -5=.)
recode I10_CM_VALVE              (-9 -8 -6 -5=.)
recode I10_CM_WGHTLOSS           (-9 -8 -6 -5=.)

save "WV_SID_2015q4_SEVERITY.dta", replace
