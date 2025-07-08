 //TSOZA32A JOB 3ES10G10000012,'FERNANDO',MSGCLASS=Q,MSGLEVEL=(1,1),
 //         NOTIFY=&SYSUID,CLASS=A,REGION=0M
 //******************************************************************
 //*   JOB  SUBMITTED FROM TSOZA32.ES10.CNTL(LAB5#41)             ***
 //*   DOC: CREATE PS FROM IN-STREAM                              ***
 //*                                                              ***
 //******************************************************************
 //STEP1    EXEC PGM=IEBGENER                                        
 //SYSUT1   DD DATA,DLM=$$                                           
 TEST1                                                               
 TEST2                                                               
 TEST3                                                               
 TEST4                                                               
 TEST5                                                               
 TEST6                                                               
 TEST7                                                               
 TEST8                                                               
 TEST9                                                               
 TEST10                                                              
 TEST11                                                              
 TEST12                                                              
 TEST13                                                              
 TEST14                                                              
 TEST15                                                              
 TEST16                                                              
 $$                                                                  
 //SYSUT2   DD DSN=TSOZA32.ES10.INPUT,DISP=(NEW,CATLG,DELETE),       
 //         SPACE=(TRK,(1,0)),RECFM=FB,LRECL=80,BLKSIZE=0            
 //SYSPRINT DD SYSOUT=*                                              
 //SYSIN    DD DUMMY                                                 
 /*  