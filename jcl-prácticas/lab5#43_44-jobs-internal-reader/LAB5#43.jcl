 //TSOZA32A JOB 3ES10G10000012,'ES100',MSGCLASS=Q,MSGLEVEL=(1,1),       
 //         NOTIFY=&SYSUID,CLASS=A,REGION=1M                            
 //******************************************************************
 //*   JOB  SUBMITTED FROM TSOZA32.ES10.CNTL(LAB5#43)             ***
 //*   DOC: Route a job to INTRDR using IEBGENER 1/2              ***
 //*                                                              ***
 //****************************************************************** 
 //S1       EXEC PGM=IEFBR14                                            
 //DD1      DD   DISP=SHR,DSN=TSOZA32.ES10.CNTL 