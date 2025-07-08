 //TSOZA32A JOB 3ES10G10000012,'FERNANDO',MSGCLASS=Q,MSGLEVEL=(1,1),  
 //         NOTIFY=&SYSUID,CLASS=A,REGION=0M                         
 //******************************************************************
 //*   JOB  SUBMITTED FROM TSOZA32.ES10.CNTL(LAB5#33)             ***
 //*   DOC: CREATE CATALOGED PROCEDURE                            ***
 //*                                                              ***
 //******************************************************************
 //*  -- CATALOGED PROCEDURE "COPY": --                            **
 //* COPY     PROC PROG=IEBCOPY,DISPI=,INDS=,DISPO=,OUTDS=,LIKEDS= ** 
 //* S1       EXEC PGM=&PROG                                       **
 //* SYSUT1   DD DISP=&DISPI,DSN=&INDS                             **
 //* SYSUT2   DD DISP=&DISPO,DSN=&OUTDS,                           ** 
 //*          LIKE=&LIKEDS.                                        **
 //* SYSPRINT DD SYSOUT=*                                          **
 //* SYSIN    DD DUMMY                                             **
 //******************************************************************
 //PLIB     JCLLIB ORDER=(TSOZA32.ES10.PROC)                         
 //STEP1    EXEC COPY,                                               
 //         DISPI=SHR,                                               
 //         INDS=TSOZA32.ES10.CNTL,                                  
 //         DISPO=(NEW,CATLG,DELETE),                                
 //         OUTDS=TSOZA32.ES10.XXXX,                                 
 //         LIKEDS=TSOZA32.ES10.CNTL                                 
 //*                                                                 
 //STEP2    EXEC COPY,PROG=IEBGENER,                                 
 //         DISPI=SHR,                                               
 //         INDS=TSOZA32.GENER.COPY#1,                               
 //         DISPO=(NEW,CATLG,DELETE),                                
 //         OUTDS=TSOZA32.ES10.YYYY,                                 
 //         LIKEDS=TSOZA32.GENER.COPY#1                              
 //*