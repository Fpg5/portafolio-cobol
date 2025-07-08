 //TSOZA32A JOB 3ES10G10000012,'FERNANDO',MSGCLASS=Q,MSGLEVEL=(1,1),  
 //         NOTIFY=&SYSUID,CLASS=A,REGION=0M                         
 //******************************************************************
 //*   JOB  SUBMITTED FROM TSOZA32.ES10.CNTL(LAB5#24)             ***
 //*   DOC: PRINT A PDS MEMBER                                    ***
 //*                                                              ***
 //******************************************************************
 //STEP1    EXEC PGM=IEBGENER                                        
 //SYSUT1   DD DSN=TSOZA32.ES10.CNTL(JOBCARD),DISP=SHR               
 //SYSUT2   DD SYSOUT=*                                              
 //SYSPRINT DD SYSOUT=*                                              
 //SYSIN    DD DUMMY 
 /* 