 //TSOZA32A JOB 3ES10G10000012,'FERNANDO',MSGCLASS=Q,MSGLEVEL=(1,1),     
 //         NOTIFY=&SYSUID,CLASS=A,REGION=0M                             
 //******************************************************************  
 //*   JOB  SUBMITTED FROM TSOZA32.ES10.CNTL(LAB5#12)             ***  
 //*   DOC: COPY AN ENTIRE DATA SET                               ***  
 //*                                                              ***  
 //******************************************************************  
 //STEP1    EXEC PGM=IEBCOPY                                             
 //SYSUT1   DD DSN=TSOZA32.ES10.CNTL,DISP=SHR
 //SYSUT2   DD DSN=TSOZA32.COPY.CNTL,DISP=(NEW,CATLG,KEEP),
			LIKE=TSOZA32.ES10.CNTL
 //SYSPRINT DD SYSOUT=*
 //SYSIN    D *
			COPY INDD=SYSUT1,OUTDD=SYSUT2
 /*