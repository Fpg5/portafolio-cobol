 //TSOZA32A JOB 3ES10G10000012,'FERNANDO',MSGCLASS=Q,MSGLEVEL=(1,1),
 //         NOTIFY=&SYSUID,CLASS=A,REGION=0M                       
 //******************************************************************
 //*   JOB  SUBMITTED FROM TSOZA32.ES10.CNTL(LAB5#14)             ***
 //*   DOC: PERFORM A SECURE COMPRESS                             ***
 //*                                                              ***
 //******************************************************************
 //STEP1    EXEC PGM=IEFBR14
 //DEST     DD DSN=TSOZA32.COMPRESS.DATA,DISP=(NEW,CATLG,DELETE),
 //	        LIKE=TSOZA32.COPY.CNTL
 //         IF (STEP1.RC = 0) THEN
 //STEP2    EXEC PGM=IEBCOPY
 //SYSUT1   DD DSN=TSOZA32.COPY.CNTL,DISP=SHR
 //SYSUT2   DD DSN=TSOZA32.COMPRESS.DATA,DISP=SHR
 //SYSPRINT DD SYSOUT=*
 //SYSIN    DD *
            COPY INDD=SYSUT1,OUTDD=SYSUT2
 /*			
 //         ENDIF