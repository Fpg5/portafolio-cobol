 //TSOZA32A JOB 3ES10G10000012,'FERNANDO',MSGCLASS=Q,MSGLEVEL=(1,1),  
 //         NOTIFY=&SYSUID,CLASS=A,REGION=0M                         
 //******************************************************************
 //*   JOB  SUBMITTED FROM TSOZA32.ES10.CNTL(LAB5#22)             ***
 //*   DOC: COPY IN-STREAM DATA TO PS 2/2                         ***
 //*                                                              ***
 //******************************************************************
 //STEP1    EXEC PGM=IEBGENER                                        
 //SYSUT1   DD DSN=TSOZA32.GENER.COPY#1,DISP=SHR                     
 //SYSUT2   DD DSN=TSOZA32.GENER.COPY#2,DISP=(NEW,CATLG,DELETE),     
 //         LIKE=TSOZA32.GENER.COPY#1                                
 //SYSPRINT DD SYSOUT=*                                              
 //SYSIN    DD DUMMY
 /*