 //TSOZA32A JOB 3ES10G10000012,'FERNANDO',MSGCLASS=Q,MSGLEVEL=(1,1),      
 //         NOTIFY=&SYSUID,CLASS=A,REGION=0M                             
 //******************************************************************       
 //*   JOB  SUBMITTED FROM TSOZA32.ES10.CNTL(LAB5#16)             ***    
 //*   DOC: COPY A PDS DATA SET                                   ***      
 //*                                                              ***    
 //******************************************************************    
 //STEP1    EXEC PGM=IEBCOPY                                             
 //SYSUT1   DD DSN=TSOZA32.ES10.CNTL,DISP=SHR                            
 //SYSUT2   DD DSN=TSOZA32.COPY.PDS,DISP=SHR                             
 //SYSPRINT DD SYSOUT=*                                                  
 //SYSIN    DD *                                                         
            COPY INDD=SYSUT1,OUTDD=SYSUT2                                
 /*