DATA CO96CORE; 
INFILE EBCORE LRECL = 459; 

LENGTH 
       SEQ_SID  7
       PROCESS  6
       YEAR     3
       DSHOSPID $13
       DSNUM    3
       DSTYPE   3
       HOSPST   $2
       MDID_S   $16
       SURGID_S $16
       AGE      3
       AGEDAY   3
       SEX      3
       RACE     3
       ADAYWK   3
       AMONTH   3
       DQTR     3
       LOS      4
       LOS_X    4
       DISP     3
       DIED     3
       NEOMAT   3
       ATYPE    3
       ASOURCE  3
       DXSYS    3
       DSNDX    3
       NDX      3
       DX1      $5
       DX2      $5
       DX3      $5
       DX4      $5
       DX5      $5
       DX6      $5
       DX7      $5
       DX8      $5
       DX9      $5
       DX10     $5
       DX11     $5
       DX12     $5
       DX13     $5
       DX14     $5
       DX15     $5
       DXV1     3
       DXV2     3
       DXV3     3
       DXV4     3
       DXV5     3
       DXV6     3
       DXV7     3
       DXV8     3
       DXV9     3
       DXV10    3
       DXV11    3
       DXV12    3
       DXV13    3
       DXV14    3
       DXV15    3
       DCCHPR1  3
       DCCHPR2  3
       DCCHPR3  3
       DCCHPR4  3
       DCCHPR5  3
       DCCHPR6  3
       DCCHPR7  3
       DCCHPR8  3
       DCCHPR9  3
       DCCHPR10 3
       DCCHPR11 3
       DCCHPR12 3
       DCCHPR13 3
       DCCHPR14 3
       DCCHPR15 3
       PRSYS    3
       DSNPR    3
       NPR      3
       PR1      $4
       PR2      $4
       PR3      $4
       PR4      $4
       PR5      $4
       PR6      $4
       PR7      $4
       PR8      $4
       PR9      $4
       PR10     $4
       PR11     $4
       PR12     $4
       PR13     $4
       PR14     $4
       PR15     $4
       PRV1     3
       PRV2     3
       PRV3     3
       PRV4     3
       PRV5     3
       PRV6     3
       PRV7     3
       PRV8     3
       PRV9     3
       PRV10    3
       PRV11    3
       PRV12    3
       PRV13    3
       PRV14    3
       PRV15    3
       PCCHPR1  3
       PCCHPR2  3
       PCCHPR3  3
       PCCHPR4  3
       PCCHPR5  3
       PCCHPR6  3
       PCCHPR7  3
       PCCHPR8  3
       PCCHPR9  3
       PCCHPR10 3
       PCCHPR11 3
       PCCHPR12 3
       PCCHPR13 3
       PCCHPR14 3
       PCCHPR15 3
       PRDAY1   4
       DRG      3
       MDC      3
       DRGVER   3
       DRG10    3
       MDC10    3
       PAY1     3
       PAY1_N   3
       TOTCHG   6
       TOTCHG_X 7
       HOSPID   4
;


LABEL 
      SEQ_SID ='I:HCUP SID record sequence number'
      PROCESS ='I:HCUP discharge processing ID number'
      YEAR    ='Calendar year'
      DSHOSPID='I:Data source hospital ID number'
      DSNUM   ='I:Data source ID number'
      DSTYPE  ='I:Data source type'
      HOSPST  ='Hospital state postal code'
      MDID_S  ='I:Attending physician number (synthetic)'
      SURGID_S='I:Primary surgeon number (synthetic)'
      AGE     ='I:Age in years at admission'
      AGEDAY  ='I:Age in days (when < 1 year)'
      SEX     ='I:Sex'
      RACE    ='I:Race'
      ADAYWK  ='I:Admission day of week'
      AMONTH  ='I:Admission month'
      DQTR    ='I:Discharge quarter'
      LOS     ='I:Length of stay (cleaned)'
      LOS_X   ='I:Length of stay (uncleaned)'
      DISP    ='I:Disposition of patient'
      DIED    ='I:Died during hospitalization'
      NEOMAT  ='I:Neonatal and/or maternal DX and/or PR'
      ATYPE   ='I:Admission type'
      ASOURCE ='I:Admission source'
      DXSYS   ='I:Diagnosis coding system'
      DSNDX   ='I:Max number of diagnoses from source'
      NDX     ='I:Number of diagnoses on this discharge'
      DX1     ='I:Principal diagnosis'
      DX2     ='I:Diagnosis 2'
      DX3     ='I:Diagnosis 3'
      DX4     ='I:Diagnosis 4'
      DX5     ='I:Diagnosis 5'
      DX6     ='I:Diagnosis 6'
      DX7     ='I:Diagnosis 7'
      DX8     ='I:Diagnosis 8'
      DX9     ='I:Diagnosis 9'
      DX10    ='I:Diagnosis 10'
      DX11    ='I:Diagnosis 11'
      DX12    ='I:Diagnosis 12'
      DX13    ='I:Diagnosis 13'
      DX14    ='I:Diagnosis 14'
      DX15    ='I:Diagnosis 15'
      DXV1    ='I:Validity flag: principal diagnosis'
      DXV2    ='I:Validity flag: diagnosis 2'
      DXV3    ='I:Validity flag: diagnosis 3'
      DXV4    ='I:Validity flag: diagnosis 4'
      DXV5    ='I:Validity flag: diagnosis 5'
      DXV6    ='I:Validity flag: diagnosis 6'
      DXV7    ='I:Validity flag: diagnosis 7'
      DXV8    ='I:Validity flag: diagnosis 8'
      DXV9    ='I:Validity flag: diagnosis 9'
      DXV10   ='I:Validity flag: diagnosis 10'
      DXV11   ='I:Validity flag: diagnosis 11'
      DXV12   ='I:Validity flag: diagnosis 12'
      DXV13   ='I:Validity flag: diagnosis 13'
      DXV14   ='I:Validity flag: diagnosis 14'
      DXV15   ='I:Validity flag: diagnosis 15'
      DCCHPR1 ='I:CCHPR: principal diagnosis'
      DCCHPR2 ='I:CCHPR: diagnosis 2'
      DCCHPR3 ='I:CCHPR: diagnosis 3'
      DCCHPR4 ='I:CCHPR: diagnosis 4'
      DCCHPR5 ='I:CCHPR: diagnosis 5'
      DCCHPR6 ='I:CCHPR: diagnosis 6'
      DCCHPR7 ='I:CCHPR: diagnosis 7'
      DCCHPR8 ='I:CCHPR: diagnosis 8'
      DCCHPR9 ='I:CCHPR: diagnosis 9'
      DCCHPR10='I:CCHPR: diagnosis 10'
      DCCHPR11='I:CCHPR: diagnosis 11'
      DCCHPR12='I:CCHPR: diagnosis 12'
      DCCHPR13='I:CCHPR: diagnosis 13'
      DCCHPR14='I:CCHPR: diagnosis 14'
      DCCHPR15='I:CCHPR: diagnosis 15'
      PRSYS   ='I:Procedure coding system'
      DSNPR   ='I:Max number of procedures from source'
      NPR     ='I:Number of procedures on this discharge'
      PR1     ='I:Principal procedure'
      PR2     ='I:Procedure 2'
      PR3     ='I:Procedure 3'
      PR4     ='I:Procedure 4'
      PR5     ='I:Procedure 5'
      PR6     ='I:Procedure 6'
      PR7     ='I:Procedure 7'
      PR8     ='I:Procedure 8'
      PR9     ='I:Procedure 9'
      PR10    ='I:Procedure 10'
      PR11    ='I:Procedure 11'
      PR12    ='I:Procedure 12'
      PR13    ='I:Procedure 13'
      PR14    ='I:Procedure 14'
      PR15    ='I:Procedure 15'
      PRV1    ='I:Validity flag: principal procedure'
      PRV2    ='I:Validity flag: procedure 2'
      PRV3    ='I:Validity flag: procedure 3'
      PRV4    ='I:Validity flag: procedure 4'
      PRV5    ='I:Validity flag: procedure 5'
      PRV6    ='I:Validity flag: procedure 6'
      PRV7    ='I:Validity flag: procedure 7'
      PRV8    ='I:Validity flag: procedure 8'
      PRV9    ='I:Validity flag: procedure 9'
      PRV10   ='I:Validity flag: procedure 10'
      PRV11   ='I:Validity flag: procedure 11'
      PRV12   ='I:Validity flag: procedure 12'
      PRV13   ='I:Validity flag: procedure 13'
      PRV14   ='I:Validity flag: procedure 14'
      PRV15   ='I:Validity flag: procedure 15'
      PCCHPR1 ='I:CCHPR: principal procedure'
      PCCHPR2 ='I:CCHPR: procedure 2'
      PCCHPR3 ='I:CCHPR: procedure 3'
      PCCHPR4 ='I:CCHPR: procedure 4'
      PCCHPR5 ='I:CCHPR: procedure 5'
      PCCHPR6 ='I:CCHPR: procedure 6'
      PCCHPR7 ='I:CCHPR: procedure 7'
      PCCHPR8 ='I:CCHPR: procedure 8'
      PCCHPR9 ='I:CCHPR: procedure 9'
      PCCHPR10='I:CCHPR: procedure 10'
      PCCHPR11='I:CCHPR: procedure 11'
      PCCHPR12='I:CCHPR: procedure 12'
      PCCHPR13='I:CCHPR: procedure 13'
      PCCHPR14='I:CCHPR: procedure 14'
      PCCHPR15='I:CCHPR: procedure 15'
      PRDAY1  ='I:No. of days from admission to PR1'
      DRG     ='I:DRG in effect on discharge date'
      MDC     ='I:MDC in effect on discharge date'
      DRGVER  ='I:DRG grouper version used on disch date'
      DRG10   ='I:DRG, Version 10'
      MDC10   ='I:MDC, Version 10'
      PAY1    ='I:Primary expected payer, uniform'
      PAY1_N  ='I:Primary expected payer, nonuniform'
      TOTCHG  ='I:Total charges (cleaned)'
      TOTCHG_X='I:Total charges (from data source)'
      HOSPID  ='HCUP hospital ID number (SSHHH)'
;


FORMAT
       SEQ_SID   Z13.
       HOSPID    Z5.
;


INPUT 
      @1      SEQ_SID   13.
      @14     PROCESS   11.
      @25     YEAR      N2PF.
      @27     DSHOSPID  $CHAR13.
      @40     DSNUM     N2PF.
      @42     DSTYPE    1.
      @43     HOSPST    $CHAR2.
      @45     MDID_S    $CHAR16.
      @61     SURGID_S  $CHAR16.
      @77     AGE       N3PF.
      @80     AGEDAY    N3PF.
      @83     SEX       N2PF.
      @85     RACE      N2PF.
      @87     ADAYWK    N2PF.
      @89     AMONTH    N2PF.
      @91     DQTR      1.
      @92     LOS       N5PF.
      @97     LOS_X     N6PF.
      @103    DISP      N2PF.
      @105    DIED      N2PF.
      @107    NEOMAT    1.
      @108    ATYPE     N2PF.
      @110    ASOURCE   N2PF.
      @112    DXSYS     N2PF.
      @114    DSNDX     N2PF.
      @116    NDX       N2PF.
      @118    DX1       $CHAR5.
      @123    DX2       $CHAR5.
      @128    DX3       $CHAR5.
      @133    DX4       $CHAR5.
      @138    DX5       $CHAR5.
      @143    DX6       $CHAR5.
      @148    DX7       $CHAR5.
      @153    DX8       $CHAR5.
      @158    DX9       $CHAR5.
      @163    DX10      $CHAR5.
      @168    DX11      $CHAR5.
      @173    DX12      $CHAR5.
      @178    DX13      $CHAR5.
      @183    DX14      $CHAR5.
      @188    DX15      $CHAR5.
      @193    DXV1      N2PF.
      @195    DXV2      N2PF.
      @197    DXV3      N2PF.
      @199    DXV4      N2PF.
      @201    DXV5      N2PF.
      @203    DXV6      N2PF.
      @205    DXV7      N2PF.
      @207    DXV8      N2PF.
      @209    DXV9      N2PF.
      @211    DXV10     N2PF.
      @213    DXV11     N2PF.
      @215    DXV12     N2PF.
      @217    DXV13     N2PF.
      @219    DXV14     N2PF.
      @221    DXV15     N2PF.
      @223    DCCHPR1   N3PF.
      @226    DCCHPR2   N3PF.
      @229    DCCHPR3   N3PF.
      @232    DCCHPR4   N3PF.
      @235    DCCHPR5   N3PF.
      @238    DCCHPR6   N3PF.
      @241    DCCHPR7   N3PF.
      @244    DCCHPR8   N3PF.
      @247    DCCHPR9   N3PF.
      @250    DCCHPR10  N3PF.
      @253    DCCHPR11  N3PF.
      @256    DCCHPR12  N3PF.
      @259    DCCHPR13  N3PF.
      @262    DCCHPR14  N3PF.
      @265    DCCHPR15  N3PF.
      @268    PRSYS     N2PF.
      @270    DSNPR     N2PF.
      @272    NPR       N2PF.
      @274    PR1       $CHAR4.
      @278    PR2       $CHAR4.
      @282    PR3       $CHAR4.
      @286    PR4       $CHAR4.
      @290    PR5       $CHAR4.
      @294    PR6       $CHAR4.
      @298    PR7       $CHAR4.
      @302    PR8       $CHAR4.
      @306    PR9       $CHAR4.
      @310    PR10      $CHAR4.
      @314    PR11      $CHAR4.
      @318    PR12      $CHAR4.
      @322    PR13      $CHAR4.
      @326    PR14      $CHAR4.
      @330    PR15      $CHAR4.
      @334    PRV1      N2PF.
      @336    PRV2      N2PF.
      @338    PRV3      N2PF.
      @340    PRV4      N2PF.
      @342    PRV5      N2PF.
      @344    PRV6      N2PF.
      @346    PRV7      N2PF.
      @348    PRV8      N2PF.
      @350    PRV9      N2PF.
      @352    PRV10     N2PF.
      @354    PRV11     N2PF.
      @356    PRV12     N2PF.
      @358    PRV13     N2PF.
      @360    PRV14     N2PF.
      @362    PRV15     N2PF.
      @364    PCCHPR1   N3PF.
      @367    PCCHPR2   N3PF.
      @370    PCCHPR3   N3PF.
      @373    PCCHPR4   N3PF.
      @376    PCCHPR5   N3PF.
      @379    PCCHPR6   N3PF.
      @382    PCCHPR7   N3PF.
      @385    PCCHPR8   N3PF.
      @388    PCCHPR9   N3PF.
      @391    PCCHPR10  N3PF.
      @394    PCCHPR11  N3PF.
      @397    PCCHPR12  N3PF.
      @400    PCCHPR13  N3PF.
      @403    PCCHPR14  N3PF.
      @406    PCCHPR15  N3PF.
      @409    PRDAY1    N5PF.
      @414    DRG       N3PF.
      @417    MDC       N2PF.
      @419    DRGVER    N2PF.
      @421    DRG10     N3PF.
      @424    MDC10     N2PF.
      @426    PAY1      N2PF.
      @428    PAY1_N    N2PF.
      @430    TOTCHG    N10PF.
      @440    TOTCHG_X  N15P2F.
      @455    HOSPID    N5PF.
;


