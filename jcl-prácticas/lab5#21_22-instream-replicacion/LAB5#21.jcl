 //TSOZA32A JOB 3ES10G10000012,'FERNANDO',MSGCLASS=Q,MSGLEVEL=(1,1),  
 //         NOTIFY=&SYSUID,CLASS=A,REGION=0M                         
 //******************************************************************
 //*   JOB  SUBMITTED FROM TSOZA32.ES10.CNTL(LAB5#21)             ***
 //*   DOC: COPY IN-STREAM DATA TO PS 1/2                         ***
 //*                                                              ***
 //******************************************************************
 //STEP1    EXEC PGM=IEBGENER
 //SYSUT1   DD *
 TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST
 AAAA AAAA AAAA AAAA AAAA AAAA AAAA AAAA AAAA AAAA
 BBBB BBBB BBBB BBBB BBBB BBBB BBBB BBBB BBBB BBBB
 /* 
 //SYSUT2   DD DSN=TSOZA32.GENER.COPY#1,
 //         DISP=(NEW,CATLG,DELETE),
 //         UNIT=SYSDA,
 //         SPACE=(TRK,(1,1)),
 //         DCB=(RECFM=FB,LRECL=80,BLKSIZE=0)
 //SYSPRINT DD SYSOUT=*
 //SYSIN    DD DUMMY
 /*