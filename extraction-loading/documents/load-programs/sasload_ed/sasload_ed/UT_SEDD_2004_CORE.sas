/*******************************************************************            
*   UT_SEDD_2004_CORE.SAS:                                                      
*      THE SAS CODE SHOWN BELOW WILL LOAD THE ASCII                             
*      INPATIENT STAY CORE FILE INTO SAS                                        
*******************************************************************/            
                                                                                
                                                                                
***********************************************;                                
*  Create SAS informats for missing values     ;                                
***********************************************;                                
PROC FORMAT;                                                                    
  INVALUE N2PF                                                                  
    '-9' = .                                                                    
    '-8' = .A                                                                   
    '-6' = .C                                                                   
    '-5' = .N                                                                   
    OTHER = (|2.|)                                                              
  ;                                                                             
  INVALUE N3PF                                                                  
    '-99' = .                                                                   
    '-88' = .A                                                                  
    '-66' = .C                                                                  
    OTHER = (|3.|)                                                              
  ;                                                                             
  INVALUE N4PF                                                                  
    '-999' = .                                                                  
    '-888' = .A                                                                 
    '-666' = .C                                                                 
    OTHER = (|4.|)                                                              
  ;                                                                             
  INVALUE N4P1F                                                                 
    '-9.9' = .                                                                  
    '-8.8' = .A                                                                 
    '-6.6' = .C                                                                 
    OTHER = (|4.1|)                                                             
  ;                                                                             
  INVALUE N5PF                                                                  
    '-9999' = .                                                                 
    '-8888' = .A                                                                
    '-6666' = .C                                                                
    OTHER = (|5.|)                                                              
  ;                                                                             
  INVALUE N5P2F                                                                 
    '-9.99' = .                                                                 
    '-8.88' = .A                                                                
    '-6.66' = .C                                                                
    OTHER = (|5.2|)                                                             
  ;                                                                             
  INVALUE N6PF                                                                  
    '-99999' = .                                                                
    '-88888' = .A                                                               
    '-66666' = .C                                                               
    OTHER = (|6.|)                                                              
  ;                                                                             
  INVALUE N6P2F                                                                 
    '-99.99' = .                                                                
    '-88.88' = .A                                                               
    '-66.66' = .C                                                               
    OTHER = (|6.2|)                                                             
  ;                                                                             
  INVALUE N7P2F                                                                 
    '-999.99' = .                                                               
    '-888.88' = .A                                                              
    '-666.66' = .C                                                              
    OTHER = (|7.2|)                                                             
  ;                                                                             
  INVALUE N7P4F                                                                 
    '-9.9999' = .                                                               
    '-8.8888' = .A                                                              
    '-6.6666' = .C                                                              
    OTHER = (|7.4|)                                                             
  ;                                                                             
  INVALUE N8PF                                                                  
    '-9999999' = .                                                              
    '-8888888' = .A                                                             
    '-6666666' = .C                                                             
    OTHER = (|8.|)                                                              
  ;                                                                             
  INVALUE N8P2F                                                                 
    '-9999.99' = .                                                              
    '-8888.88' = .A                                                             
    '-6666.66' = .C                                                             
    OTHER = (|8.2|)                                                             
  ;                                                                             
  INVALUE N9PF                                                                  
    '-99999999' = .                                                             
    '-88888888' = .A                                                            
    '-66666666' = .C                                                            
    OTHER = (|9.|)                                                              
  ;                                                                             
  INVALUE N10PF                                                                 
    '-999999999' = .                                                            
    '-888888888' = .A                                                           
    '-666666666' = .C                                                           
    OTHER = (|10.|)                                                             
  ;                                                                             
  INVALUE N10P4F                                                                
    '-9999.9999' = .                                                            
    '-8888.8888' = .A                                                           
    '-6666.6666' = .C                                                           
    OTHER = (|10.4|)                                                            
  ;                                                                             
  INVALUE N10P5F                                                                
    '-999.99999' = .                                                            
    '-888.88888' = .A                                                           
    '-666.66666' = .C                                                           
    OTHER = (|10.5|)                                                            
  ;                                                                             
  INVALUE DATE10F                                                               
    '-999999999' = .                                                            
    '-888888888' = .A                                                           
    '-666666666' = .C                                                           
    OTHER = (|MMDDYY10.|)                                                       
  ;                                                                             
  INVALUE N12P2F                                                                
    '-99999999.99' = .                                                          
    '-88888888.88' = .A                                                         
    '-66666666.66' = .C                                                         
    OTHER = (|12.2|)                                                            
  ;                                                                             
  INVALUE N12P5F                                                                
    '-99999.99999' = .                                                          
    '-88888.88888' = .A                                                         
    '-66666.66666' = .C                                                         
    OTHER = (|12.5|)                                                            
  ;                                                                             
  INVALUE N15P2F                                                                
    '-99999999999.99' = .                                                       
    '-88888888888.88' = .A                                                      
    '-66666666666.66' = .C                                                      
    OTHER = (|15.2|)                                                            
  ;                                                                             
  RUN;                                                                          
                                                                                
                                                                                
*******************************;                                                
*  Data Step                  *;                                                
*******************************;                                                
DATA UT_SEDDC_2004_CORE;                                                        
INFILE 'UT_SEDD_2004_CORE.ASC' LRECL = 404;                                     
                                                                                
*** Variable attribute ***;                                                     
ATTRIB                                                                          
  KEY                        LENGTH=8                 FORMAT=Z14.               
  LABEL="HCUP record identifier"                                                
                                                                                
  AGE                        LENGTH=3                                           
  LABEL="Age in years at admission"                                             
                                                                                
  AGEDAY                     LENGTH=3                                           
  LABEL="Age in days (when age < 1 year)"                                       
                                                                                
  AGEMONTH                   LENGTH=3                                           
  LABEL="Age in months (when age < 11 years)"                                   
                                                                                
  AHOUR                      LENGTH=3                 FORMAT=Z4.                
  LABEL="Admission Hour"                                                        
                                                                                
  AMONTH                     LENGTH=3                                           
  LABEL="Admission month"                                                       
                                                                                
  ASOURCE                    LENGTH=3                                           
  LABEL="Admission source (uniform)"                                            
                                                                                
  ASOURCE_X                  LENGTH=$1                                          
  LABEL="Admission source (as received from source)"                            
                                                                                
  ASOURCEUB92                LENGTH=$1                                          
  LABEL="Admission source (UB-92 standard coding)"                              
                                                                                
  ATYPE                      LENGTH=3                                           
  LABEL="Admission type"                                                        
                                                                                
  AWEEKEND                   LENGTH=3                                           
  LABEL="Admission day is a weekend"                                            
                                                                                
  BILLTYPE                   LENGTH=$3                                          
  LABEL="UB-92 bill type"                                                       
                                                                                
  DHOUR                      LENGTH=3                 FORMAT=Z4.                
  LABEL="Discharge Hour"                                                        
                                                                                
  DIED                       LENGTH=3                                           
  LABEL="Died during hospitalization"                                           
                                                                                
  DISP_X                     LENGTH=$2                                          
  LABEL="Disposition of patient (as received from source)"                      
                                                                                
  DISPUB92                   LENGTH=3                                           
  LABEL="Disposition of patient (UB-92 standard coding)"                        
                                                                                
  DISPUNIFORM                LENGTH=3                                           
  LABEL="Disposition of patient (uniform)"                                      
                                                                                
  DQTR                       LENGTH=3                                           
  LABEL="Discharge quarter"                                                     
                                                                                
  DSHOSPID                   LENGTH=$13                                         
  LABEL="Data source hospital identifier"                                       
                                                                                
  DX1                        LENGTH=$5                                          
  LABEL="Principal diagnosis"                                                   
                                                                                
  DX2                        LENGTH=$5                                          
  LABEL="Diagnosis 2"                                                           
                                                                                
  DX3                        LENGTH=$5                                          
  LABEL="Diagnosis 3"                                                           
                                                                                
  DX4                        LENGTH=$5                                          
  LABEL="Diagnosis 4"                                                           
                                                                                
  DX5                        LENGTH=$5                                          
  LABEL="Diagnosis 5"                                                           
                                                                                
  DX6                        LENGTH=$5                                          
  LABEL="Diagnosis 6"                                                           
                                                                                
  DX7                        LENGTH=$5                                          
  LABEL="Diagnosis 7"                                                           
                                                                                
  DX8                        LENGTH=$5                                          
  LABEL="Diagnosis 8"                                                           
                                                                                
  DX9                        LENGTH=$5                                          
  LABEL="Diagnosis 9"                                                           
                                                                                
  DXCCS1                     LENGTH=4                                           
  LABEL="CCS: principal diagnosis"                                              
                                                                                
  DXCCS2                     LENGTH=4                                           
  LABEL="CCS: diagnosis 2"                                                      
                                                                                
  DXCCS3                     LENGTH=4                                           
  LABEL="CCS: diagnosis 3"                                                      
                                                                                
  DXCCS4                     LENGTH=4                                           
  LABEL="CCS: diagnosis 4"                                                      
                                                                                
  DXCCS5                     LENGTH=4                                           
  LABEL="CCS: diagnosis 5"                                                      
                                                                                
  DXCCS6                     LENGTH=4                                           
  LABEL="CCS: diagnosis 6"                                                      
                                                                                
  DXCCS7                     LENGTH=4                                           
  LABEL="CCS: diagnosis 7"                                                      
                                                                                
  DXCCS8                     LENGTH=4                                           
  LABEL="CCS: diagnosis 8"                                                      
                                                                                
  DXCCS9                     LENGTH=4                                           
  LABEL="CCS: diagnosis 9"                                                      
                                                                                
  ECODE1                     LENGTH=$5                                          
  LABEL="E code 1"                                                              
                                                                                
  ECODE2                     LENGTH=$5                                          
  LABEL="E code 2"                                                              
                                                                                
  ECODE3                     LENGTH=$5                                          
  LABEL="E code 3"                                                              
                                                                                
  ECODE4                     LENGTH=$5                                          
  LABEL="E code 4"                                                              
                                                                                
  ECODE5                     LENGTH=$5                                          
  LABEL="E code 5"                                                              
                                                                                
  ECODE6                     LENGTH=$5                                          
  LABEL="E code 6"                                                              
                                                                                
  ECODE7                     LENGTH=$5                                          
  LABEL="E code 7"                                                              
                                                                                
  E_CCS1                     LENGTH=3                                           
  LABEL="CCS: E Code 1"                                                         
                                                                                
  E_CCS2                     LENGTH=3                                           
  LABEL="CCS: E Code 2"                                                         
                                                                                
  E_CCS3                     LENGTH=3                                           
  LABEL="CCS: E Code 3"                                                         
                                                                                
  E_CCS4                     LENGTH=3                                           
  LABEL="CCS: E Code 4"                                                         
                                                                                
  E_CCS5                     LENGTH=3                                           
  LABEL="CCS: E Code 5"                                                         
                                                                                
  E_CCS6                     LENGTH=3                                           
  LABEL="CCS: E Code 6"                                                         
                                                                                
  E_CCS7                     LENGTH=3                                           
  LABEL="CCS: E Code 7"                                                         
                                                                                
  FEMALE                     LENGTH=3                                           
  LABEL="Indicator of sex"                                                      
                                                                                
  HCUP_AS                    LENGTH=3                                           
  LABEL="HCUP Ambulatory Surgery service indicator"                             
                                                                                
  HCUP_ED                    LENGTH=3                                           
  LABEL="HCUP Emergency Department service indicator"                           
                                                                                
  HCUP_OS                    LENGTH=3                                           
  LABEL="HCUP Observation Stay service indicator"                               
                                                                                
  HISPANIC_X                 LENGTH=$1                                          
  LABEL="Hispanic ethnicity (as received from source)"                          
                                                                                
  HOSPST                     LENGTH=$2                                          
  LABEL="Hospital state postal code"                                            
                                                                                
  LOS                        LENGTH=4                                           
  LABEL="Length of stay (cleaned)"                                              
                                                                                
  LOS_X                      LENGTH=4                                           
  LABEL="Length of stay (as received from source)"                              
                                                                                
  MDNUM1_R                   LENGTH=5                                           
  LABEL="Physician 1 number (re-identified)"                                    
                                                                                
  MRN_R                      LENGTH=5                                           
  LABEL="Medical record number (re-identified)"                                 
                                                                                
  NDX                        LENGTH=3                                           
  LABEL="Number of diagnoses on this record"                                    
                                                                                
  NECODE                     LENGTH=3                                           
  LABEL="Number of E codes on this record"                                      
                                                                                
  NEOMAT                     LENGTH=3                                           
  LABEL="Neonatal and/or maternal DX and/or PR"                                 
                                                                                
  NPR                        LENGTH=3                                           
  LABEL="Number of procedures on this record"                                   
                                                                                
  PAY1                       LENGTH=3                                           
  LABEL="Primary expected payer (uniform)"                                      
                                                                                
  PAY2                       LENGTH=3                                           
  LABEL="Secondary expected payer (uniform)"                                    
                                                                                
  PAY1_X                     LENGTH=$2                                          
  LABEL="Primary expected payer (as received from source)"                      
                                                                                
  PAY2_X                     LENGTH=$2                                          
  LABEL="Secondary expected payer (as received from source)"                    
                                                                                
  PAY3_X                     LENGTH=$2                                          
  LABEL="Tertiary expected payer (as received from source)"                     
                                                                                
  PL_CBSA                    LENGTH=3                                           
  LABEL="Patient location: Core Based Statistical Area (CBSA)"                  
                                                                                
  PL_MSA1993                 LENGTH=3                                           
  LABEL="Patient location: Metropolitan Statistical Area (MSA), 1993"           
                                                                                
  PL_RUCA                    LENGTH=4                 FORMAT=4.1                
  LABEL="Patient location: Rural-Urban Commuting Area (RUCA) Codes"             
                                                                                
  PL_RUCA10                  LENGTH=3                                           
  LABEL="Patient location: Rural-Urban Commuting Area (RUCA) Codes, ten levels" 
                                                                                
  PL_RUCA4                   LENGTH=3                                           
  LABEL="Patient location: Rural-Urban Commuting Area (RUCA) Codes, four levels"
                                                                                
  PL_RUCC2003                LENGTH=3                                           
  LABEL="Patient location: Rural-Urban Continuum Codes(RUCC), 2003"             
                                                                                
  PL_UIC2003                 LENGTH=3                                           
  LABEL="Patient location: Urban Influence Codes, 2003"                         
                                                                                
  PL_UR_CAT4                 LENGTH=3                                           
  LABEL="Patient Location: Urban-Rural 4 Categories"                            
                                                                                
  PL_UR_CAT5                 LENGTH=3                                           
  LABEL="Patient Location: Urban-Rural 5 Categories"                            
                                                                                
  PNUM_R                     LENGTH=5                                           
  LABEL="Person number (re-identified)"                                         
                                                                                
  PR1                        LENGTH=$4                                          
  LABEL="Principal procedure"                                                   
                                                                                
  PR2                        LENGTH=$4                                          
  LABEL="Procedure 2"                                                           
                                                                                
  PR3                        LENGTH=$4                                          
  LABEL="Procedure 3"                                                           
                                                                                
  PR4                        LENGTH=$4                                          
  LABEL="Procedure 4"                                                           
                                                                                
  PR5                        LENGTH=$4                                          
  LABEL="Procedure 5"                                                           
                                                                                
  PR6                        LENGTH=$4                                          
  LABEL="Procedure 6"                                                           
                                                                                
  PRCCS1                     LENGTH=3                                           
  LABEL="CCS: principal procedure"                                              
                                                                                
  PRCCS2                     LENGTH=3                                           
  LABEL="CCS: procedure 2"                                                      
                                                                                
  PRCCS3                     LENGTH=3                                           
  LABEL="CCS: procedure 3"                                                      
                                                                                
  PRCCS4                     LENGTH=3                                           
  LABEL="CCS: procedure 4"                                                      
                                                                                
  PRCCS5                     LENGTH=3                                           
  LABEL="CCS: procedure 5"                                                      
                                                                                
  PRCCS6                     LENGTH=3                                           
  LABEL="CCS: procedure 6"                                                      
                                                                                
  PSTATE                     LENGTH=$2                                          
  LABEL="Patient State postal code"                                             
                                                                                
  PSTCO2                     LENGTH=4                                           
  LABEL="Patient state/county FIPS code, possibly derived from ZIP Code"        
                                                                                
  RACE                       LENGTH=3                                           
  LABEL="Race (uniform)"                                                        
                                                                                
  RACE_X                     LENGTH=$1                                          
  LABEL="Race (as received from source)"                                        
                                                                                
  STATE_AS                   LENGTH=3                                           
  LABEL="State Ambulatory Surgery service indicator"                            
                                                                                
  STATE_ED                   LENGTH=3                                           
  LABEL="State Emergency Department service indicator"                          
                                                                                
  STATE_OS                   LENGTH=3                                           
  LABEL="State Observation Stay service indicator"                              
                                                                                
  TOTCHG                     LENGTH=6                                           
  LABEL="Total charges (cleaned)"                                               
                                                                                
  TOTCHG_X                   LENGTH=7                                           
  LABEL="Total charges (as received from source)"                               
                                                                                
  YEAR                       LENGTH=3                                           
  LABEL="Calendar year"                                                         
                                                                                
  ZIP                        LENGTH=$5                                          
  LABEL="Patient ZIP Code"                                                      
                                                                                
  AYEAR                      LENGTH=3                                           
  LABEL="Admission year"                                                        
                                                                                
  DMONTH                     LENGTH=3                                           
  LABEL="Discharge month"                                                       
                                                                                
  BMONTH                     LENGTH=3                                           
  LABEL="Birth month"                                                           
                                                                                
  BYEAR                      LENGTH=3                                           
  LABEL="Birth year"                                                            
  ;                                                                             
                                                                                
                                                                                
*** Input the variables from the ASCII file ***;                                
INPUT                                                                           
      @1      KEY                      14.                                      
      @15     AGE                      N3PF.                                    
      @18     AGEDAY                   N3PF.                                    
      @21     AGEMONTH                 N3PF.                                    
      @24     AHOUR                    N4PF.                                    
      @28     AMONTH                   N2PF.                                    
      @30     ASOURCE                  N2PF.                                    
      @32     ASOURCE_X                $CHAR1.                                  
      @33     ASOURCEUB92              $CHAR1.                                  
      @34     ATYPE                    N2PF.                                    
      @36     AWEEKEND                 N2PF.                                    
      @38     BILLTYPE                 $CHAR3.                                  
      @41     DHOUR                    N4PF.                                    
      @45     DIED                     N2PF.                                    
      @47     DISP_X                   $CHAR2.                                  
      @49     DISPUB92                 N2PF.                                    
      @51     DISPUNIFORM              N2PF.                                    
      @53     DQTR                     N2PF.                                    
      @55     DSHOSPID                 $CHAR13.                                 
      @68     DX1                      $CHAR5.                                  
      @73     DX2                      $CHAR5.                                  
      @78     DX3                      $CHAR5.                                  
      @83     DX4                      $CHAR5.                                  
      @88     DX5                      $CHAR5.                                  
      @93     DX6                      $CHAR5.                                  
      @98     DX7                      $CHAR5.                                  
      @103    DX8                      $CHAR5.                                  
      @108    DX9                      $CHAR5.                                  
      @113    DXCCS1                   N4PF.                                    
      @117    DXCCS2                   N4PF.                                    
      @121    DXCCS3                   N4PF.                                    
      @125    DXCCS4                   N4PF.                                    
      @129    DXCCS5                   N4PF.                                    
      @133    DXCCS6                   N4PF.                                    
      @137    DXCCS7                   N4PF.                                    
      @141    DXCCS8                   N4PF.                                    
      @145    DXCCS9                   N4PF.                                    
      @149    ECODE1                   $CHAR5.                                  
      @154    ECODE2                   $CHAR5.                                  
      @159    ECODE3                   $CHAR5.                                  
      @164    ECODE4                   $CHAR5.                                  
      @169    ECODE5                   $CHAR5.                                  
      @174    ECODE6                   $CHAR5.                                  
      @179    ECODE7                   $CHAR5.                                  
      @184    E_CCS1                   N4PF.                                    
      @188    E_CCS2                   N4PF.                                    
      @192    E_CCS3                   N4PF.                                    
      @196    E_CCS4                   N4PF.                                    
      @200    E_CCS5                   N4PF.                                    
      @204    E_CCS6                   N4PF.                                    
      @208    E_CCS7                   N4PF.                                    
      @212    FEMALE                   N2PF.                                    
      @214    HCUP_AS                  N2PF.                                    
      @216    HCUP_ED                  N2PF.                                    
      @218    HCUP_OS                  N2PF.                                    
      @220    HISPANIC_X               $CHAR1.                                  
      @221    HOSPST                   $CHAR2.                                  
      @223    LOS                      N5PF.                                    
      @228    LOS_X                    N6PF.                                    
      @234    MDNUM1_R                 N9PF.                                    
      @243    MRN_R                    N9PF.                                    
      @252    NDX                      N2PF.                                    
      @254    NECODE                   N2PF.                                    
      @256    NEOMAT                   N2PF.                                    
      @258    NPR                      N2PF.                                    
      @260    PAY1                     N2PF.                                    
      @262    PAY2                     N2PF.                                    
      @264    PAY1_X                   $CHAR2.                                  
      @266    PAY2_X                   $CHAR2.                                  
      @268    PAY3_X                   $CHAR2.                                  
      @270    PL_CBSA                  N3PF.                                    
      @273    PL_MSA1993               N3PF.                                    
      @276    PL_RUCA                  N4P1F.                                   
      @280    PL_RUCA10                N2PF.                                    
      @282    PL_RUCA4                 N2PF.                                    
      @284    PL_RUCC2003              N2PF.                                    
      @286    PL_UIC2003               N2PF.                                    
      @288    PL_UR_CAT4               N2PF.                                    
      @290    PL_UR_CAT5               N2PF.                                    
      @292    PNUM_R                   N9PF.                                    
      @301    PR1                      $CHAR4.                                  
      @305    PR2                      $CHAR4.                                  
      @309    PR3                      $CHAR4.                                  
      @313    PR4                      $CHAR4.                                  
      @317    PR5                      $CHAR4.                                  
      @321    PR6                      $CHAR4.                                  
      @325    PRCCS1                   N3PF.                                    
      @328    PRCCS2                   N3PF.                                    
      @331    PRCCS3                   N3PF.                                    
      @334    PRCCS4                   N3PF.                                    
      @337    PRCCS5                   N3PF.                                    
      @340    PRCCS6                   N3PF.                                    
      @343    PSTATE                   $CHAR2.                                  
      @345    PSTCO2                   N5PF.                                    
      @350    RACE                     N2PF.                                    
      @352    RACE_X                   $CHAR1.                                  
      @353    STATE_AS                 N2PF.                                    
      @355    STATE_ED                 N2PF.                                    
      @357    STATE_OS                 N2PF.                                    
      @359    TOTCHG                   N10PF.                                   
      @369    TOTCHG_X                 N15P2F.                                  
      @384    YEAR                     N4PF.                                    
      @388    ZIP                      $CHAR5.                                  
      @393    AYEAR                    N4PF.                                    
      @397    DMONTH                   N2PF.                                    
      @399    BMONTH                   N2PF.                                    
      @401    BYEAR                    N4PF.                                    
      ;                                                                         
                                                                                
                                                                                
RUN;
