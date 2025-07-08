 //TSOZA32A JOB 3ES10G10000012,'FERNANDO',MSGCLASS=Q,MSGLEVEL=(1,1),  
 //         NOTIFY=&SYSUID,CLASS=A,REGION=0M                         
 //******************************************************************
 //*   JOB  SUBMITTED FROM TSOZA32.ES10.CNTL(LAB5#15)             ***
 //*   DOC: COMPRESS A DATA SET IN PLACE                          ***
 //*                                                              ***
 //******************************************************************
 //STEP1    EXEC PGM=IEBCOPY                                         
 //SYSUT1   DD DSN=TSOZA32.COPY.CNTL,DISP=SHR                        
 //SYSUT2   DD DSN=TSOZA32.COPY.CNTL,DISP=SHR                        
 //SYSPRINT DD SYSOUT=*                                              
 //SYSIN    DD *                                                     
            COPY INDD=SYSUT1,OUTDD=SYSUT2                            
 /*                                                                 
 //         IF (STEP1.RC = 0) THEN                                   
 //STEP2    EXEC PGM=IEFBR14                                         
 //DELET    DD DSN=TSOZA32.COMPRESS.DATA,DISP=(OLD,DELETE,KEEP)      
 //         ENDIF