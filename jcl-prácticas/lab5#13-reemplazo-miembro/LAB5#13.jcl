 //TSOZA32A JOB 3ES10G10000012,'FERNANDO',MSGCLASS=Q,MSGLEVEL=(1,1),  
 //         NOTIFY=&SYSUID,CLASS=A,REGION=0M                         
 //******************************************************************
 //*   JOB  SUBMITTED FROM TSOZA32.ES10.CNTL(LAB5#13)             ***
 //*   DOC: COPY AND REPLACE A SELECTED MEMBER                    ***
 //*                                                              ***
 //******************************************************************
 //STEP1    EXEC PGM=IEBCOPY                                         
 //SYSUT1   DD DSN=D80WW.ES10V15.CNTL,DISP=SHR                       
 //SYSUT2   DD DSN=TSOZA32.COPY.CNTL,DISP=OLD                        
 //SYSPRINT DD SYSOUT=*                                              
 //SYSIN    DD *                                                     
            COPY OUTDD=SYSUT2,INDD=SYSUT1                            
            SELECT MEMBER=((JOBCARD,,R))                             
 /*                  