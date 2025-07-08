 //TSOZA32A JOB 3ES10G10000012,'FERNANDO',MSGCLASS=Q,MSGLEVEL=(1,1),  
 //         NOTIFY=&SYSUID,CLASS=A,REGION=0M                         
 //******************************************************************
 //*   JOB  SUBMITTED FROM TSOZA32.ES10.CNTL(LAB5#25)             ***
 //*   DOC: CREATE A PDS MEMBER WITH IN-STREAM DATA               ***
 //*                                                              ***
 //******************************************************************            
 //STEP1    EXEC PGM=IEBGENER                          
 //SYSUT1   DD *                                       
 TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST
 AAAA AAAA AAAA AAAA AAAA AAAA AAAA AAAA AAAA AAAA AAAA
 BBBB BBBB BBBB BBBB BBBB BBBB BBBB BBBB BBBB BBBB BBBB
 TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST
 /*                                                    
 //SYSUT2   DD DSN=TSOZA32.COPY.CNTL(TEST),DISP=SHR    
 //SYSPRINT DD SYSOUT=*                                
 //SYSIN    DD DUMMY
 /*