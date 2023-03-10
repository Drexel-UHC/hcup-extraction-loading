/*******************************************************************            
*   NC_SID_2000_CORE.SAS:                                                       
*      THE SAS CODE SHOWN BELOW WILL CONVERT THE ASCII                          
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
  INVALUE N5PF                                                                  
    '-9999' = .                                                                 
    '-8888' = .A                                                                
    '-6666' = .C                                                                
    OTHER = (|5.|)                                                              
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
  INVALUE N8PF                                                                  
    '-9999999' = .                                                              
    '-8888888' = .A                                                             
    '-6666666' = .C                                                             
    OTHER = (|8.|)                                                              
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
DATA NC_SIDC_2000_CORE;                                                         
INFILE 'NC_SIDC_2000_CORE.ASC' LRECL = 452;                                     
                                                                                
*** Variable attribute ***;                                                     
ATTRIB                                                                          
  KEY                LENGTH=8                                                   
  LABEL="HCUP record identifier"                                   FORMAT=Z14.  
  AGE                LENGTH=3                                                   
  LABEL="Age in years at admission"                                             
  AGEDAY             LENGTH=3                                                   
  LABEL="Age in days (when age < 1 year)"                                       
  AGEMONTH           LENGTH=3                                                   
  LABEL="Age in months (when age < 11 years)"                                   
  AMONTH             LENGTH=3                                                   
  LABEL="Admission month"                                                       
  ASOURCE            LENGTH=3                                                   
  LABEL="Admission source (uniform)"                                            
  ASOURCE_X          LENGTH=$1                                                  
  LABEL="Admission source (as received from source)"                            
  ATYPE              LENGTH=3                                                   
  LABEL="Admission type"                                                        
  AWEEKEND           LENGTH=3                                                   
  LABEL="Admission day is a weekend"                                            
  BWT                LENGTH=4                                                   
  LABEL="Birth weight in grams"                                                 
  DIED               LENGTH=3                                                   
  LABEL="Died during hospitalization"                                           
  DISP_X             LENGTH=$2                                                  
  LABEL="Disposition of patient (as received from source)"                      
  DISPUB92           LENGTH=3                                                   
  LABEL="Disposition of patient (UB-92 standard coding)"                        
  DISPUNIFORM        LENGTH=3                                                   
  LABEL="Disposition of patient (uniform)"                                      
  DQTR               LENGTH=3                                                   
  LABEL="Discharge quarter"                                                     
  DRG                LENGTH=3                                                   
  LABEL="DRG in effect on discharge date"                                       
  DRG18              LENGTH=3                                                   
  LABEL="DRG, version 18"                                                       
  DRGVER             LENGTH=3                                                   
  LABEL="DRG grouper version used on discharge date"                            
  DSHOSPID           LENGTH=$13                                                 
  LABEL="Data source hospital identifier"                                       
  DX1                LENGTH=$5                                                  
  LABEL="Principal diagnosis"                                                   
  DX2                LENGTH=$5                                                  
  LABEL="Diagnosis 2"                                                           
  DX3                LENGTH=$5                                                  
  LABEL="Diagnosis 3"                                                           
  DX4                LENGTH=$5                                                  
  LABEL="Diagnosis 4"                                                           
  DX5                LENGTH=$5                                                  
  LABEL="Diagnosis 5"                                                           
  DX6                LENGTH=$5                                                  
  LABEL="Diagnosis 6"                                                           
  DX7                LENGTH=$5                                                  
  LABEL="Diagnosis 7"                                                           
  DX8                LENGTH=$5                                                  
  LABEL="Diagnosis 8"                                                           
  DX9                LENGTH=$5                                                  
  LABEL="Diagnosis 9"                                                           
  DX10               LENGTH=$5                                                  
  LABEL="Diagnosis 10"                                                          
  DX11               LENGTH=$5                                                  
  LABEL="Diagnosis 11"                                                          
  DX12               LENGTH=$5                                                  
  LABEL="Diagnosis 12"                                                          
  DX13               LENGTH=$5                                                  
  LABEL="Diagnosis 13"                                                          
  DX14               LENGTH=$5                                                  
  LABEL="Diagnosis 14"                                                          
  DX15               LENGTH=$5                                                  
  LABEL="Diagnosis 15"                                                          
  DXCCS1             LENGTH=4                                                   
  LABEL="CCS: principal diagnosis"                                              
  DXCCS2             LENGTH=4                                                   
  LABEL="CCS: diagnosis 2"                                                      
  DXCCS3             LENGTH=4                                                   
  LABEL="CCS: diagnosis 3"                                                      
  DXCCS4             LENGTH=4                                                   
  LABEL="CCS: diagnosis 4"                                                      
  DXCCS5             LENGTH=4                                                   
  LABEL="CCS: diagnosis 5"                                                      
  DXCCS6             LENGTH=4                                                   
  LABEL="CCS: diagnosis 6"                                                      
  DXCCS7             LENGTH=4                                                   
  LABEL="CCS: diagnosis 7"                                                      
  DXCCS8             LENGTH=4                                                   
  LABEL="CCS: diagnosis 8"                                                      
  DXCCS9             LENGTH=4                                                   
  LABEL="CCS: diagnosis 9"                                                      
  DXCCS10            LENGTH=4                                                   
  LABEL="CCS: diagnosis 10"                                                     
  DXCCS11            LENGTH=4                                                   
  LABEL="CCS: diagnosis 11"                                                     
  DXCCS12            LENGTH=4                                                   
  LABEL="CCS: diagnosis 12"                                                     
  DXCCS13            LENGTH=4                                                   
  LABEL="CCS: diagnosis 13"                                                     
  DXCCS14            LENGTH=4                                                   
  LABEL="CCS: diagnosis 14"                                                     
  DXCCS15            LENGTH=4                                                   
  LABEL="CCS: diagnosis 15"                                                     
  FEMALE             LENGTH=3                                                   
  LABEL="Indicator of sex"                                                      
  HOSPST             LENGTH=$2                                                  
  LABEL="Hospital state postal code"                                            
  LOS                LENGTH=4                                                   
  LABEL="Length of stay (cleaned)"                                              
  LOS_X              LENGTH=4                                                   
  LABEL="Length of stay (as received from source)"                              
  MDC                LENGTH=3                                                   
  LABEL="MDC in effect on discharge date"                                       
  MDC18              LENGTH=3                                                   
  LABEL="MDC, version 18"                                                       
  MDID_S             LENGTH=$16                                                 
  LABEL="Attending physician number (synthetic)"                                
  NDX                LENGTH=3                                                   
  LABEL="Number of diagnoses on this record"                                    
  NEOMAT             LENGTH=3                                                   
  LABEL="Neonatal and/or maternal DX and/or PR"                                 
  NPR                LENGTH=3                                                   
  LABEL="Number of procedures on this record"                                   
  MDNUM3_S           LENGTH=$16                                                 
  LABEL="Physician 3 number (synthetic)"                                        
  PAY1               LENGTH=3                                                   
  LABEL="Primary expected payer (uniform)"                                      
  PAY2               LENGTH=3                                                   
  LABEL="Secondary expected payer (uniform)"                                    
  PAY1_X             LENGTH=$1                                                  
  LABEL="Primary expected payer (as received from source)"                      
  PAY2_X             LENGTH=$1                                                  
  LABEL="Secondary expected payer (as received from source)"                    
  PAY3_X             LENGTH=$1                                                  
  LABEL="Tertiary expected payer (as received from source)"                     
  PNUM_S             LENGTH=$17                                                 
  LABEL="Person number (synthetic)"                                             
  PR1                LENGTH=$4                                                  
  LABEL="Principal procedure"                                                   
  PR2                LENGTH=$4                                                  
  LABEL="Procedure 2"                                                           
  PR3                LENGTH=$4                                                  
  LABEL="Procedure 3"                                                           
  PR4                LENGTH=$4                                                  
  LABEL="Procedure 4"                                                           
  PR5                LENGTH=$4                                                  
  LABEL="Procedure 5"                                                           
  PR6                LENGTH=$4                                                  
  LABEL="Procedure 6"                                                           
  PR7                LENGTH=$4                                                  
  LABEL="Procedure 7"                                                           
  PR8                LENGTH=$4                                                  
  LABEL="Procedure 8"                                                           
  PR9                LENGTH=$4                                                  
  LABEL="Procedure 9"                                                           
  PR10               LENGTH=$4                                                  
  LABEL="Procedure 10"                                                          
  PRCCS1             LENGTH=3                                                   
  LABEL="CCS: principal procedure"                                              
  PRCCS2             LENGTH=3                                                   
  LABEL="CCS: procedure 2"                                                      
  PRCCS3             LENGTH=3                                                   
  LABEL="CCS: procedure 3"                                                      
  PRCCS4             LENGTH=3                                                   
  LABEL="CCS: procedure 4"                                                      
  PRCCS5             LENGTH=3                                                   
  LABEL="CCS: procedure 5"                                                      
  PRCCS6             LENGTH=3                                                   
  LABEL="CCS: procedure 6"                                                      
  PRCCS7             LENGTH=3                                                   
  LABEL="CCS: procedure 7"                                                      
  PRCCS8             LENGTH=3                                                   
  LABEL="CCS: procedure 8"                                                      
  PRCCS9             LENGTH=3                                                   
  LABEL="CCS: procedure 9"                                                      
  PRCCS10            LENGTH=3                                                   
  LABEL="CCS: procedure 10"                                                     
  PRDAY1             LENGTH=4                                                   
  LABEL="Number of days from admission to PR1"                                  
  PRDAY2             LENGTH=4                                                   
  LABEL="Number of days from admission to PR2"                                  
  PRDAY3             LENGTH=4                                                   
  LABEL="Number of days from admission to PR3"                                  
  PRDAY4             LENGTH=4                                                   
  LABEL="Number of days from admission to PR4"                                  
  PRDAY5             LENGTH=4                                                   
  LABEL="Number of days from admission to PR5"                                  
  PRDAY6             LENGTH=4                                                   
  LABEL="Number of days from admission to PR6"                                  
  PRDAY7             LENGTH=4                                                   
  LABEL="Number of days from admission to PR7"                                  
  PRDAY8             LENGTH=4                                                   
  LABEL="Number of days from admission to PR8"                                  
  PRDAY9             LENGTH=4                                                   
  LABEL="Number of days from admission to PR9"                                  
  PRDAY10            LENGTH=4                                                   
  LABEL="Number of days from admission to PR10"                                 
  RACE               LENGTH=3                                                   
  LABEL="Race (uniform)"                                                        
  RACE_X             LENGTH=$1                                                  
  LABEL="Race (as received from source)"                                        
  RDRG               LENGTH=$4                                                  
  LABEL="Refined DRG"                                                           
  SURGID_S           LENGTH=$16                                                 
  LABEL="Primary surgeon number (synthetic)"                                    
  TOTCHG             LENGTH=6                                                   
  LABEL="Total charges (cleaned)"                                               
  TOTCHG_X           LENGTH=7                                                   
  LABEL="Total charges (as received from source)"                               
  YEAR               LENGTH=3                                                   
  LABEL="Calendar year"                                                         
  ZIP                LENGTH=$5                                                  
  LABEL="Patient zip code"                                                      
  AYEAR              LENGTH=3                                                   
  LABEL="Admission year"                                                        
  DMONTH             LENGTH=3                                                   
  LABEL="Discharge month"                                                       
  BMONTH             LENGTH=3                                                   
  LABEL="Birth month"                                                           
  BYEAR              LENGTH=3                                                   
  LABEL="Birth year"                                                            
;                                                                               
                                                                                
                                                                                
*** Input the variables from the ASCII file ***;                                
INPUT                                                                           
      @1      KEY                 14.                                           
      @15     AGE                 N3PF.                                         
      @18     AGEDAY              N3PF.                                         
      @21     AGEMONTH            N3PF.                                         
      @24     AMONTH              N2PF.                                         
      @26     ASOURCE             N2PF.                                         
      @28     ASOURCE_X           $CHAR1.                                       
      @29     ATYPE               N2PF.                                         
      @31     AWEEKEND            N2PF.                                         
      @33     BWT                 N4PF.                                         
      @37     DIED                N2PF.                                         
      @39     DISP_X              $CHAR2.                                       
      @41     DISPUB92            N2PF.                                         
      @43     DISPUNIFORM         N2PF.                                         
      @45     DQTR                N2PF.                                         
      @47     DRG                 N3PF.                                         
      @50     DRG18               N3PF.                                         
      @53     DRGVER              N2PF.                                         
      @55     DSHOSPID            $CHAR13.                                      
      @68     DX1                 $CHAR5.                                       
      @73     DX2                 $CHAR5.                                       
      @78     DX3                 $CHAR5.                                       
      @83     DX4                 $CHAR5.                                       
      @88     DX5                 $CHAR5.                                       
      @93     DX6                 $CHAR5.                                       
      @98     DX7                 $CHAR5.                                       
      @103    DX8                 $CHAR5.                                       
      @108    DX9                 $CHAR5.                                       
      @113    DX10                $CHAR5.                                       
      @118    DX11                $CHAR5.                                       
      @123    DX12                $CHAR5.                                       
      @128    DX13                $CHAR5.                                       
      @133    DX14                $CHAR5.                                       
      @138    DX15                $CHAR5.                                       
      @143    DXCCS1              N4PF.                                         
      @147    DXCCS2              N4PF.                                         
      @151    DXCCS3              N4PF.                                         
      @155    DXCCS4              N4PF.                                         
      @159    DXCCS5              N4PF.                                         
      @163    DXCCS6              N4PF.                                         
      @167    DXCCS7              N4PF.                                         
      @171    DXCCS8              N4PF.                                         
      @175    DXCCS9              N4PF.                                         
      @179    DXCCS10             N4PF.                                         
      @183    DXCCS11             N4PF.                                         
      @187    DXCCS12             N4PF.                                         
      @191    DXCCS13             N4PF.                                         
      @195    DXCCS14             N4PF.                                         
      @199    DXCCS15             N4PF.                                         
      @203    FEMALE              N2PF.                                         
      @205    HOSPST              $CHAR2.                                       
      @207    LOS                 N5PF.                                         
      @212    LOS_X               N6PF.                                         
      @218    MDC                 N2PF.                                         
      @220    MDC18               N2PF.                                         
      @222    MDID_S              $CHAR16.                                      
      @238    NDX                 N2PF.                                         
      @240    NEOMAT              N2PF.                                         
      @242    NPR                 N2PF.                                         
      @244    MDNUM3_S            $CHAR16.                                      
      @260    PAY1                N2PF.                                         
      @262    PAY2                N2PF.                                         
      @264    PAY1_X              $CHAR1.                                       
      @265    PAY2_X              $CHAR1.                                       
      @266    PAY3_X              $CHAR1.                                       
      @267    PNUM_S              $CHAR17.                                      
      @284    PR1                 $CHAR4.                                       
      @288    PR2                 $CHAR4.                                       
      @292    PR3                 $CHAR4.                                       
      @296    PR4                 $CHAR4.                                       
      @300    PR5                 $CHAR4.                                       
      @304    PR6                 $CHAR4.                                       
      @308    PR7                 $CHAR4.                                       
      @312    PR8                 $CHAR4.                                       
      @316    PR9                 $CHAR4.                                       
      @320    PR10                $CHAR4.                                       
      @324    PRCCS1              N3PF.                                         
      @327    PRCCS2              N3PF.                                         
      @330    PRCCS3              N3PF.                                         
      @333    PRCCS4              N3PF.                                         
      @336    PRCCS5              N3PF.                                         
      @339    PRCCS6              N3PF.                                         
      @342    PRCCS7              N3PF.                                         
      @345    PRCCS8              N3PF.                                         
      @348    PRCCS9              N3PF.                                         
      @351    PRCCS10             N3PF.                                         
      @354    PRDAY1              N3PF.                                         
      @357    PRDAY2              N3PF.                                         
      @360    PRDAY3              N3PF.                                         
      @363    PRDAY4              N3PF.                                         
      @366    PRDAY5              N3PF.                                         
      @369    PRDAY6              N3PF.                                         
      @372    PRDAY7              N3PF.                                         
      @375    PRDAY8              N3PF.                                         
      @378    PRDAY9              N3PF.                                         
      @381    PRDAY10             N3PF.                                         
      @384    RACE                N2PF.                                         
      @386    RACE_X              $CHAR1.                                       
      @387    RDRG                $CHAR4.                                       
      @391    SURGID_S            $CHAR16.                                      
      @407    TOTCHG              N10PF.                                        
      @417    TOTCHG_X            N15P2F.                                       
      @432    YEAR                N4PF.                                         
      @436    ZIP                 $CHAR5.                                       
      @441    AYEAR               N4PF.                                         
      @445    DMONTH              N2PF.                                         
      @447    BMONTH              N2PF.                                         
      @449    BYEAR               N4PF.                                         
;                                                                               
                                                                                
                                                                                
RUN;
