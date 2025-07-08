 //TSOZA32A JOB 3ES10G10000012,'FERNANDO',MSGCLASS=Q,MSGLEVEL=(1,1),  
 //         NOTIFY=&SYSUID,CLASS=A,REGION=0M                         
 //******************************************************************
 //*   JOB  SUBMITTED FROM TSOZA32.ES10.CNTL(LAB5#23)             ***
 //*   DOC: PRINT A SEQUENTIAL DATA SET TO SYSOUT                 ***
 //*                                                              ***
 //******************************************************************
 //STEP1    EXEC PGM=IEBGENER                                        
 //SYSUT1   DD DSN=TSOZA32.GENER.COPY#1,DISP=SHR                     
 //SYSUT2   DD SYSOUT=*                                              
 //SYSPRINT DD SYSOUT=*                                              
 //SYSIN    DD DUMMY 
 /*