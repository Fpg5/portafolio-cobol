 //TSOZA32A JOB 3ES10G10000012,'FERNANDO',MSGCLASS=Q,MSGLEVEL=(1,1),
 //         NOTIFY=&SYSUID,CLASS=A,REGION=0M                       
 //******************************************************************
 //*                                                              ***
 //*   JOB  SUBMITTED FROM TSOZA32.ES10.CNTL(LAB5#11)             ***
 //*   DOC: COPY A SELECTED MEMBER OF A PDS                       ***
 //*                                                              ***
 //******************************************************************
 //S1       EXEC PGM=IEBCOPY                                       
 //SYSPRINT DD SYSOUT=*                                            
 //SYSUT1   DD DSN=D80WW.ES10V15.CNTL(JOBCARD),DISP=SHR            
 //SYSUT2   DD DSN=TSOZA32.ES10.CNTL(JOBCARD),DISP=SHR             
 //SYSIN    DD *                                                   
            COPY OUTDD=SYSUT2,INDD=SYSUT1                                   
            SELECT MEMBER=(JOBCARD)                                         
 /* 