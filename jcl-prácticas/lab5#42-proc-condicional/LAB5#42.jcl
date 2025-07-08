 //TSOZA32A JOB 3ES10G10000012,'FERNANDO',MSGCLASS=Q,MSGLEVEL=(1,1),
 //         NOTIFY=&SYSUID,CLASS=A,REGION=0M
 //******************************************************************
 //*   JOB  SUBMITTED FROM TSOZA32.ES10.CNTL(LAB5#42)             ***
 //*   DOC: CONDITIONAL PROCESSING                                ***
 //*                                                              ***
 //******************************************************************
 //STEP1    EXEC PGM=IEBGENER                                         
 //SYSUT1   DD DATA,DLM=$$                                            
 TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST
 TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST
 TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST
 TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST
 TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST
 TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST
 $$                                                                   
 //SYSUT2   DD DSN=TSOZA32.ES10.DATA(TEXT1),DISP=(NEW,CATLG,DELETE),  
 //         LIKE=TSOZA32.ES10.CNTL                                    
 //SYSPRINT DD SYSOUT=*                                               
 //SYSIN    DD DUMMY                                                  
 //COND1    IF (STEP1.RC = 0) THEN                                    
 //STEP2    EXEC PGM=IEBCOPY                                          
 //SYSUT1   DD DSN=TSOZA32.ES10.DATA,DISP=SHR                         
 //SYSUT2   DD DSN=TSOZA32.ES10.OUT,DISP=(NEW,CATLG,DELETE),          
 //         SPACE=(TRK,(1,0)),RECFM=FB,LRECL=80,BLKSIZE=0             
 //SYSPRINT DD SYSOUT=*                                               
 //SYSIN    DD *                                                      
            COPY INDD=SYSUT1,OUTDD=SYSUT2                             
            SELECT MEMBER=(TEXT1)                                     
 /*                                                                   
 //COND2    IF (STEP2.RC = 0) THEN                                    
 //STEP3    EXEC PGM=IEBGENER                                         
 //SYSUT1   DD DSN=TSOZA32.ES10.OUT,DISP=SHR                          
 //SYSUT2   DD SYSOUT=*                                               
 //SYSPRINT DD SYSOUT=*                                               
 //SYSIN    DD DUMMY                                                  
 //COND3    IF (STEP3.RC = 0) THEN                                    
 //STEP4    EXEC PGM=IEFBR14                                          
 //DELETE   DD DSN=TSOZA32.ES10.OUT,DISP=(OLD,DELETE)                 
 //         ENDIF                                                     
 //         ENDIF                                                     
 //         ENDIF  